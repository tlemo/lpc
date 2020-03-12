
// Copyright 2020 LPC Authors
// 
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// 
//     https://www.apache.org/licenses/LICENSE-2.0
// 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// backend emitting MSIL code

#pragma once

#include <string>
#include <list>
#include <map>
#include <sstream>
#include <tuple>
#include <iomanip>

#include "symbols.h"
#include "ast.h"
#include "objects.h"
#include "types.h"
#include "compilationContext.h"
#include "backend.h"
#include "_parser.h"

using namespace std;


namespace llvm
{

class LlvmBackend;


///////////////////////////////////////////////////////////////////////////////
//
// backend specific information for various data structures
//
struct TypeExt
{
    // mangled version of the user-defined name
    //
    string genName;

    // the IL type name (this can be a IL built-in type or
    //  the same as genName for some defined types like structures and arrays)
    //
    string ilName;

    // built-in CTS types have a short name when used as an instruction suffix
    //
    string suffix;

    // the IL definition of the type
    // (can be empty if we map it to a built-in CLR type)
    //
    string def;

    // the size and alignment in bytes
    //
    int size;
    int alignment;

    // optional destructor/assignment helpers
    //
    string destructor;
    string assignment;

    TypeExt() : size(-1), alignment(-1) {}

    // "non-trivial" types require explicit assign/destroy calls 
    // 
    bool isTrivial() const
    {
        assert(destructor.empty() == assignment.empty());
        return destructor.empty();
    }
};

struct ConstExt
{
    string name;
};

struct VarExt
{
    string genName;
    string def;
};

struct ParamExt
{
    string genName;
    string def;
};

struct SubroutineExt
{
    string code;
    string genName;
    string frameName;
    string parentFrameName;
};

struct ScopeExt
{
    string genName;
};

struct LabelExt
{
    string genName;
};

struct StringLiteral
{
    ts::Type* pType;
    string literalName;
};


///////////////////////////////////////////////////////////////////////////////
//
// extension information helpers
//
template<class E, class T>
E* getExt(T* p)
{
    E* pExt = p->ext.get<E>();

    if(nullptr == pExt)
    {
        pExt = new E();
        p->ext = VarPtr(pExt);
    }

    return pExt;
}

inline TypeExt* ext(ts::Type* pType) { return getExt<TypeExt>(pType); }
inline ConstExt* ext(obj::Constant* pConst) { return getExt<ConstExt>(pConst); }
inline VarExt* ext(obj::Variable* pVar) { return getExt<VarExt>(pVar); }
inline ParamExt* ext(obj::Parameter* pParam) { return getExt<ParamExt>(pParam); }
inline SubroutineExt* ext(obj::Subroutine* pSubroutine) { return getExt<SubroutineExt>(pSubroutine); }
inline ScopeExt* ext(Scope* pScope) { return getExt<ScopeExt>(pScope); }
inline LabelExt* ext(obj::Label* pLabel) { return getExt<LabelExt>(pLabel); }


///////////////////////////////////////////////////////////////////////////////
//
// helper functions
//
inline
string genBlock(const string& str)
{
    return "{\n" + indentBlock(str) + "}";
}

inline
string labelName(const obj::Label* pLabel)
{
    assert(pLabel->labelId > 0);

    stringstream name;
    name << "L_" << pLabel->labelId;
    return name.str(); 
}

// this is the magic "hidden" line number used to mark non-user code
//
const auto HIDDEN_CODE = 0xfeefee;

// generates a .line directive
//
// CONSIDER: for all the backend-generated helpers map the line to the .il source file
//
inline
string genLine(int line, bool usePragma)
{
    if(line == -1)
        line = 0;

    stringstream code;
    
    code << (usePragma ? ".line " : "// line ");
    
    if(line == HIDDEN_CODE)
        code << "0x" << std::hex << line << "\n";
    else
        code << line << "\n";

    return code.str();
}

// generates a string literal (without the quotes)
// that escapes a set of characters to make it a legal C string literal
//
inline
string genStrLiteral(const string& str)
{
    string result = "";

    for(size_t i = 0; i < str.length(); ++i)
    {
        switch(str[i])
        {
        case '"':   result += "\\\""; break;
        case '\\':  result += "\\\\"; break;
        default:    result += str[i]; break;
        }
    }

    return result;
}

// generate a literal load instruction
//
inline
string genLiteralLoad(obj::Constant* pConst)
{
    const auto pExt = ext(pConst);

    stringstream comment;
    stringstream code;

    code << TAB;

    if(pConst->pType->isInteger())
    {
        code << "ldc.i4 " << pConst->intValue;
    }
    else if(pConst->pType->isReal())
    {
        code << "ldc.r8 " << std::showpoint << pConst->realValue;
    }
    else if(pConst->pType->isBool())
    {
        code << "ldc.i4 " << pConst->intValue;

        if(pExt->name.empty())
        {
            comment << (pConst->intValue ? "(true)" : "(false)");
        }
    }
    else if(pConst->pType->isChar())
    {
        code << "ldc.i4 " << pConst->intValue;
        comment << "'" << static_cast<char>(pConst->intValue) << "'";
    }
    else if(pConst->pType->isString())
    {
        code << "ldstr \"" << genStrLiteral(*pConst->strValue) << '"';
    }
    else if(pConst->pType->isPointer())
    {
        code << "ldnull";
    }
    else
        assert(!"unexpected constant type");

    // optionally append a nice comment
    //
    if(!pExt->name.empty() || !comment.str().empty())
    {
        code << " // ";
        
        if(!pExt->name.empty())
            code << pExt->name << " ";

        code << comment.str();
    }

    code << "\n";
    return code.str();
}


// generate an id that will not conflict with
// the reserved MSIL keywords
// (by capitalizing the first letter)
//
inline
string genSimpleName(string idName)
{
    assert(!idName.empty());
    
    // only do it for names longer than 1 character
    //
    if(idName.length() > 1)
        idName[0] = char(::toupper(idName[0]));

    return idName;
}


// generate a scope "path" name (ex. foo_bar_x)
//
inline
string genScopeName(Scope* pScope)
{
    assert(pScope->category != Scope::scRecord);

    auto pExt = ext(pScope);

    if(!pExt->genName.empty())
        return pExt->genName;

    if(pScope->category == Scope::scSubroutine)
    {
        pExt->genName = pScope->pSubroutine->pId->name;

        auto parentName = genScopeName(pScope->pParent);
        if(!parentName.empty())
        {
            pExt->genName = parentName + "_" + pExt->genName;
        }
    }
    else
    {
        pExt->genName = "";
    }

    return pExt->genName;
}


// generate a frame name
//
inline
string genFrameName(Scope* pScope)
{
    return "@" + genScopeName(pScope);
}


// generate a frame-qualified name
//
inline
string genQualifiedName(string id, Scope* pScope, bool variable = true)
{
    string name = genSimpleName(id);

    if(pScope->level > Scope::PROGRAM_SCOPE_LEVEL)
    {
        name = genFrameName(pScope) + "::" + name;
    }
    else if(variable)
    {
        name = "_G::" + name;
    }

    return name;
}


// generate a fully qualified subroutine name
//
inline
string genQualifiedName(const obj::Subroutine* pSubroutine)
{
    // NOTE: we may have a subroutine which is not yet generated,
    //  so we can't just use "pExt->genName"
    //
    return genQualifiedName(pSubroutine->pId->name, pSubroutine->pScope->pParent, false);
}


///////////////////////////////////////////////////////////////////////////////
//
// a type definition generator
//
// NOTE: this implementation of the ts::Visitor doesn't use the return value
//  from the "visit()" methods
//
class TypeGen : public ts::Visitor
{
    // the size/alignment of a managed reference
    // (we use 8 bytes to make thing run across 32/64bit platforms)
    //
    static const int REF_SIZE = 8;
    static const int REF_ALIGNMENT = 8;

    struct FieldsDef
    {
        string def;
        int size;
        int alignment;

        FieldsDef(const string& def, int size, int alignment) :
            def(def), size(size), alignment(alignment)
        {
        }
    };

public:
    TypeGen(LlvmBackend* pBackend) : m_pBackend(pBackend)
    {
    }

public:
    void gen(ts::Type* pType)
    {
        assert(!ext(pType)->genName.empty());
        assert(ext(pType)->ilName.empty());
        assert(ext(pType)->def.empty());
        
        pType->accept(this);
        
        assert(!ext(pType)->ilName.empty());
        assert(ext(pType)->size >= 0);
        assert(ext(pType)->alignment >= 0);
    }

private:
    VarPtr visit(ts::VoidType* pType) override
    {
        auto pExt = ext(pType);
        pExt->size = 0;
        pExt->alignment = 0;
        pExt->ilName = "void";
        return VarPtr();
    }

    VarPtr visit(ts::IntegerType* pType) override
    {
        auto pExt = ext(pType);
        pExt->size = 4;
        pExt->alignment = 4;
        pExt->ilName = "int32";
        pExt->suffix = "i4";
        return VarPtr();
    }

    VarPtr visit(ts::CharType* pType) override
    {
        auto pExt = ext(pType);
        pExt->size = 1;
        pExt->alignment = 1;
        pExt->ilName = "uint8";
        pExt->suffix = "u1";
        return VarPtr();
    }

    VarPtr visit(ts::BoolType* pType) override
    {
        auto pExt = ext(pType);
        pExt->size = 1;
        pExt->alignment = 1;
        pExt->ilName = "bool";
        pExt->suffix = "u1";
        return VarPtr();
    }

    VarPtr visit(ts::RealType* pType) override
    {
        auto pExt = ext(pType);
        pExt->size = 8;
        pExt->alignment = 8;
        pExt->ilName = "float64";
        pExt->suffix = "r8";
        return VarPtr();
    }

    VarPtr visit(ts::EnumType* pType) override
    {
        auto pExt = ext(pType);
        pExt->size = 4;
        pExt->alignment = 4;
        pExt->ilName = "int32";
        pExt->suffix = "i4";
        return VarPtr();
    }

    VarPtr visit(ts::SetType* pType) override;

    VarPtr visit(ts::RecordType* pType) override;

    VarPtr visit(ts::ArrayType* pType) override;

    VarPtr visit(ts::PointerType* pType) override
    {
        auto pExt = ext(pType);
        pExt->size = REF_SIZE;
        pExt->alignment = REF_ALIGNMENT;
        pExt->ilName = "void*";
        return VarPtr();
    }

    VarPtr visit(ts::FileType* pType) override
    {
        if(!pType->elemType()->isChar())
        {
            context()->warning(pType->line(), "only Text files are supported");
        }

        auto pExt = ext(pType);
        pExt->size = REF_SIZE;
        pExt->alignment = REF_ALIGNMENT;
        pExt->ilName = "valuetype [lpcRuntime]LPC.File";
        pExt->destructor = "File::Close()";
        pExt->assignment = "File::Assign(valuetype [lpcRuntime]LPC.File)";
        return VarPtr();
    }

    VarPtr visit(ts::SubroutineType* pType) override;
    VarPtr visit(ts::RangeType* pType) override;

private:
    FieldsDef _fieldsDef(const ts::RecordFields* pFields, int offset = 0);

private:
    LlvmBackend* m_pBackend = nullptr;
};


///////////////////////////////////////////////////////////////////////////////
//
// a backend generated temporary
//
struct TempVar
{
    string name;
    ts::Type* pType;
};


///////////////////////////////////////////////////////////////////////////////
//
// a backend generated temporary
//
struct TmpExpr : public ast::Expr
{
    TempVar* pTempVar;

    TmpExpr(TempVar* pTempVar) :
        ast::Expr(NO_LOCATION), pTempVar(pTempVar)
    {
        pType = pTempVar->pType;
    }

    bool isLValue() const override { return true; }
    VarPtr accept(ast::Visitor* pVisitor) const override;
};


///////////////////////////////////////////////////////////////////////////////
//
// dynamic allocation
//
struct NewObjExpr : public ast::Expr
{
    NewObjExpr(ts::Type* pType, int line) :
        ast::Expr(line)
    {
        this->pType = pType;
    }

    bool isLValue() const override { return false; }
    VarPtr accept(ast::Visitor* pVisitor) const override;
};


///////////////////////////////////////////////////////////////////////////////
//
class LlvmBackend : public Backend, public ast::Visitor
{
    friend class TypeGen;
    friend struct TmpExpr;
    friend struct NewObjExpr;

private:
    enum class AccessType { Load, Store, AddressOf, LoadByRef };

private:
    Scope* m_pCurrentScope = nullptr;

    // per scope state
    //
    ts::TypeList m_typeList;
    obj::VarList m_varList;
    obj::ParamList m_paramList;
    list<TempVar*> m_tempVarList;
    obj::LabelList m_nonLocalLabels;

    // global (per program) state
    //
    using ArrayKey = tuple<string, int, int>;
    map<ArrayKey, const TypeExt*> m_arrayImplMap;

    using SetKey = tuple<int, int>;
    map<SetKey, const TypeExt*> m_setImplMap;

    map<string, StringLiteral> m_stringLiterals;
    int m_stringLiteralGen = 0;

    map<string, string> m_deferredHelpers;

    // miscelanous state
    //
    list<string> m_hoistedCode;
    list<list<string>> m_stmHoistStack;

    int m_labelGen = 0;
    int m_tempVarGen = 0;

public:
    LlvmBackend() = default;

    const char* targetName() const override { return "llvm"; }

private:
    // sets the current scope name
    //
    void _setCurrentScope(Scope* pScope)
    {
        m_pCurrentScope = pScope;

        string friendlyName = genScopeName(m_pCurrentScope);

        if(pScope->category == Scope::scGlobal)
        {
            friendlyName = "global scope";
        }
        else if(pScope->category == Scope::scProgram)
        {
            friendlyName = "program scope";
        }

        context()->info("compiling scope: %s [%d]",
            friendlyName.c_str(), pScope->level);
        
        stringstream code;
        code << "\n" << genLine(m_pCurrentScope->line, emitDebugInfo());
        code << "//================================================================================\n";
        code << "// scope: " << friendlyName << " (level : " << m_pCurrentScope->level << ")\n";
        write(code);
    }

    // a friendly wrapper around the AST visitor pattern
    //
    const char* gen(const ast::Node* pNode)
    {
        return pNode->accept(this).get<const char>();
    }

    // the Stm* overload of gen()
    //
    const char* gen(const ast::Stm* pStm)
    {
        m_stmHoistStack.push_front(list<string>());

        std::stringstream code;

        // generate the statement "header"
        // (line number and optional label)
        //
        if(NO_LOCATION != pStm->line)
            code << TAB << genLine(pStm->line, emitDebugInfo());

        if(nullptr != pStm->pLabel)
        {
            auto pExt = ext(pStm->pLabel);
            assert(!pExt->genName.empty());
            code << pExt->genName << ":\n";
        }

        auto stmCode = pStm->accept(this).get<const char>();

        // any stm-level hoisted code?
        //
        for(auto hoistedCode : m_stmHoistStack.front())
            code << hoistedCode;

        // actual code
        //
        code << stmCode;

        m_stmHoistStack.pop_front();
        return allocStr(code).get<const char>();
    }

    // backend interface
    //
private:
    const char* _outputExt() const override { return ".ll"; }

    void _start() override
    {
        // reset per-program state
        //
        m_arrayImplMap.clear();
        m_setImplMap.clear();

        m_stringLiterals.clear();
        m_stringLiteralGen = 1;

        m_deferredHelpers.clear();

        stringstream code;

        // #include "commonDefs.il"
        //
        code << "\n#include \"commonDefs.il\"\n\n";

        // generate the command line mapping
        //
        code << ".field public static string[] _ProgramArgs\n\n";

        auto& args = context()->symbolTable()->programArgs();

        code << ".method static void .cctor()\n";
        code << "{\n";
        code << TAB << "ldc.i4 " << args.size() << "\n";
        code << TAB << "newarr string\n";

        int index = 0;

        for(auto argName : args)
        {
            code << TAB << "dup\n";
            code << TAB << "ldc.i4 " << index++ << "\n";
            code << TAB << "ldstr \"" << argName << "\"\n";
            code << TAB << "stelem string\n";
        }

        code << TAB << "stsfld string[] _ProgramArgs\n";
        code << TAB << "ret\n";
        code << "}\n";

        code << "\n" << (emitDebugInfo() ? ".line 0" : "//") << " \"";
        code << ::PathFindFileName(context()->commandLine()->getInputName());
        code << "\"\n";

        write(code);
    }

    void _end() override
    {
        stringstream code;

        // deferred helpers
        //
        if(!m_deferredHelpers.empty())
        {
            code << "\n" << genLine(HIDDEN_CODE, emitDebugInfo()) << "\n";
            code << "//================================================================================\n";
            code << "// internal helpers\n\n";

            for(auto& helper : m_deferredHelpers)
            {
                code << ".method static " << helper.first << "\n";
                code << helper.second << "\n";
            }

            code << "\n";
        }

        // generate the definition of the global string literals
        //
        if(!m_stringLiterals.empty())
        {
            code << "\n" << genLine(HIDDEN_CODE, emitDebugInfo()) << "\n";
            code << "//================================================================================\n";
            code << "// global string literals\n\n";

            for(auto& literal : m_stringLiterals)
            {
                string value = literal.first;
                string typeName = ext(literal.second.pType)->ilName;
                string name = literal.second.literalName;
                string dataName = name + "_DATA";

                code << "// \"" << genStrLiteral(value) << "\"\n";

                // .data <dataName> = bytearray( ... )
                //
                code << ".data " << dataName << " = bytearray( ";

                for(auto c : value)
                    code << hex << setw(2) << int(c) << " ";

                code << ")\n";

                // .field static <type> <name> at <dataName>
                //
                code << ".field static " << typeName << " " << name << " at " << dataName << "\n\n";
            }

            code << "\n";
        }

        write(code);
    }

    // this is the main entry point for generating code for a scope
    //
    void _generate(Scope* pScope, bool postOrder) override
    {
        assert(pScope->category != Scope::scRecord);

        // the CLR backend works post-order since it needs to emit 
        // the nested routines as members of the current "frame" class
        //
        if(!postOrder)
            return;
        
        _setCurrentScope(pScope);

        // reset per-function state
        //
        m_typeList.clear();
        m_varList.clear();
        m_paramList.clear();
        m_tempVarList.clear();
        m_nonLocalLabels.clear();
        m_hoistedCode.clear();
        m_stmHoistStack.clear();

        m_labelGen = 1;
        m_tempVarGen = 1;

        // generate symbols (types, consts, locals...)
        //
        for(auto it = pScope->symMap.begin(); it != pScope->symMap.end(); ++it)
        {
            const string& idName = it->second->pId->name;

            if(it->second->category == Symbol::scConst)
            {
                _generateConst(idName, it->second->pConstant);
            }
            else if(it->second->category == Symbol::scParameter)
            {
                _generateParam(idName, it->second->pParameter);
            }
            else if(it->second->category == Symbol::scVariable)
            {
                _generateVar(idName, it->second->pVariable);
            }
            else if(it->second->category == Symbol::scType)
            {
                _generateType(it->second->pType);
            }
            else if(it->second->category == Symbol::scLabel)
            {
                _generateLabel(it->second->pLabel);
            }
        }

        // set up the frame name for subroutines
        //
        if(_isSubroutine())
        {
            auto pSubroutine = m_pCurrentScope->pSubroutine;
            auto pExt = ext(pSubroutine);

            assert(pExt->frameName.empty());
            pExt->frameName = genFrameName(pSubroutine->pScope);

            if(pSubroutine->hasSlink())
            {
                assert(pExt->parentFrameName.empty());
                pExt->parentFrameName = genFrameName(pSubroutine->parent()->pScope);
            }
        }

        // generate the subroutine body
        //
        if(pScope->category == Scope::scProgram ||
            pScope->category == Scope::scSubroutine)
        {
            assert(pScope->pSubroutine->pScope == pScope);
            _genSubroutine(pScope->pSubroutine);
        }

        // finally output the symbols and the frame
        // (which for the CLR backend includes the directly nested subroutines too)
        //
        _outputSymbols();
        _outputFrame();
    }

    // helper function to hoist code outside the current statement
    //
    void _hoistCode(const string& str, bool stmHoist)
    {
        if(stmHoist)
        {
            // hoist at statement level
            //
            assert(!m_stmHoistStack.empty());
            m_stmHoistStack.front().push_back(str);
        }
        else
        {
            // hoist at function level
            //
            m_hoistedCode.push_back(str);
        }
    }

    void _outputSymbols()
    {
        stringstream code;

        // types
        //
        for(auto it = m_typeList.begin(); it != m_typeList.end(); ++it)
        {
            auto def = ext(*it)->def;
            assert(!def.empty());
            code << def;
        }

        write(code);
    }

    string _genFrameConstructor()
    {
        // CONSIDER: this is a compile time constant
        //
        stringstream code;
        code << ".method public void .ctor()\n";
        code << "{\n";
        code << TAB << "ldarg.0\n";
        code << TAB << "call instance void [mscorlib]System.Object::.ctor()\n";
        code << TAB << "ret\n";
        code << "}\n";
        return code.str();
    }

    void _outputFrame()
    {
        stringstream code;

        if(_isSubroutine())
        {
            auto pSubroutine = m_pCurrentScope->pSubroutine;

            auto pExt = ext(pSubroutine);

            assert(!pExt->frameName.empty());
            code << "\n.class " << pExt->frameName << "\n{\n";

            // slink
            //
            if(pSubroutine->hasSlink())
            {
                assert(!pExt->parentFrameName.empty());
                code << TAB << "// slink\n";
                code << TAB << ".field public class " << pExt->parentFrameName << " _slink\n\n";
            }

            // parameters
            //
            if(!m_paramList.empty())
            {
                code << TAB << "// parameters\n";
                for(auto it = m_paramList.begin(); it != m_paramList.end(); ++it)
                    code << TAB << ".field public " << ext(*it)->def;
                code << "\n";
            }

            // variables
            //
            if(!m_varList.empty())
            {
                code << TAB << "// local variables\n";
                for(auto it = m_varList.begin(); it != m_varList.end(); ++it)
                    code << TAB << ".field public " << ext(*it)->def;
                code << "\n";
            }

            // trivial constructor
            //
            code << indentBlock(_genFrameConstructor());

            // nested subroutines
            //
            for(auto pScope = m_pCurrentScope->pNested; pScope != nullptr; pScope = pScope->pNext)
            {
                assert(pScope->category != Scope::scGlobal);
                assert(pScope->category != Scope::scProgram);
                assert(pScope->pParent == m_pCurrentScope);

                if(pScope->category != Scope::scSubroutine)
                    continue;

                auto pNestedExt = ext(pScope->subroutine());
                assert(!pNestedExt->genName.empty());
                assert(!pNestedExt->code.empty());
                code << "\n" << genLine(pScope->subroutine()->defLine, emitDebugInfo()) << "\n";
                code << TAB << ".method public\n";
                code << indentBlock(pNestedExt->code);
            }

            code << "}\n\n";
        }
        else
        {
            assert(m_paramList.empty());

            // global variables
            //
            if(!m_varList.empty())
            {
                code << "\n// global variables\n";
                code << ".class _G\n";
                code << "{\n";

                for(auto it = m_varList.begin(); it != m_varList.end(); ++it)
                    code << TAB << ".field public static " << ext(*it)->def;

                code << "}\n";
            }

            // top level subroutines
            //
            for(auto pScope = m_pCurrentScope->pNested; pScope != nullptr; pScope = pScope->pNext)
            {
                assert(pScope->category != Scope::scGlobal);
                assert(pScope->pParent == m_pCurrentScope);

                if(pScope->category != Scope::scSubroutine &&
                    pScope->category != Scope::scProgram)
                {
                    continue;
                }

                auto pExt = ext(pScope->subroutine());
                assert(!pExt->genName.empty());
                assert(!pExt->code.empty());
                code << "\n" << genLine(pScope->subroutine()->defLine, emitDebugInfo()) << "\n";
                code << ".method static\n" << pExt->code;
            }
        }

        write(code);
    }

    string _genPrototype(const ts::SubroutineType* pType, string name)
    {
        stringstream proto;

        // return type
        //
        if(pType->isFunction())
        {
            _generateType(pType->returnType());
            proto << ext(pType->returnType())->ilName << " ";
        }
        else
            proto << "void ";

        // name
        //
        proto << name;

        // arguments
        //
        proto << "(";

        auto pParamList = pType->paramList();
        for(auto it = pParamList->begin(); it != pParamList->end(); ++it)
        {
            _generateType(it->pType);

            if(it != pParamList->begin())
                proto << ", ";

            proto << ext(it->pType)->ilName;
            if(it->byRef)
                proto << "&";
            proto << " " << genSimpleName(it->pId->name);
        }

        proto << ")";

        return proto.str();
    }

    // explicit variable initializers
    //
    // NOTE: right now this is very specific to File objects initialization
    // 
    string _genExplicitInitializers(obj::Subroutine* pSubroutine)
    {
        stringstream code;

        for(auto pVar : m_varList)
        {
            if(pVar->pInitializer == nullptr)
                continue;

            assert(pVar->pInitializer->isConst());

            auto pOverloadType = pVar->pInitializer->pType;
            _generateType(pOverloadType);

            string overload = ext(pOverloadType)->ilName;

            code << _genLValueAccess(new ast::VarExpr(pVar, pSubroutine->defLine));

            if(pOverloadType->isString())
            {
                code << _genArrayToString(pVar->pInitializer);
                overload = "string";
            }
            else
                code << gen(pVar->pInitializer);

            code << TAB << "call instance void [lpcRuntime]LPC.File::Init(" << overload << ")\n\n";
        }

        return code.str();
    }

    string _genActivationRecord(obj::Subroutine* pSubroutine)
    {
        stringstream code;
        auto pExt = ext(pSubroutine);

        // declare locals
        //
        code << ".locals init(";
        
        if(!pExt->frameName.empty())
        {
            if(!m_tempVarList.empty())
                code << "\n" << TAB << "class " << pExt->frameName << " _F,";
            else
                code << "class " << pExt->frameName << " _F";
        }

        for(auto it = m_tempVarList.begin(); it != m_tempVarList.end(); ++it)
        {
            if(it != m_tempVarList.begin())
                code << ",";

            code << "\n" << TAB << ext((*it)->pType)->ilName << " " << (*it)->name;
        }

        for(auto pParam : m_paramList)
        {
            if(pParam->byRef)
                code << ",\n" << TAB << ext(pParam->pType)->ilName << "& pinned $" << ext(pParam)->genName;
        }

        code << ")\n";

        // allocate and initialize the activation record
        //
        if(!pExt->frameName.empty())
        {
            code << "\n";
            code << "newobj instance void " << pExt->frameName << "::.ctor()\n";
            code << "stloc _F\n";

            // slink
            //
            if(pSubroutine->hasSlink())
            {
                assert(!pExt->parentFrameName.empty());

                code << "\n";
                code << "ldloc _F\n";
                code << "ldarg.0\n";
                code << "stfld class " << pExt->parentFrameName << " " << pExt->frameName << "::_slink\n";
            }

            // parameters
            //
            for(auto pParam : m_paramList)
            {
                // for "var" arguments we need to pin the objects to avoid
                // the GC from relocating it (which can happen even for static fields)
                //
                if(pParam->byRef)
                {
                    auto paramName = ext(pParam)->genName;
                    code << "\n";
                    code << "ldarg " << paramName << "\n";
                    code << "stloc $" << paramName << "\n";
                }

                // store the actual argument value into the local copy
                //
                code << "\n";
                code << "ldloc _F\n";

                auto pTypeExt = ext(pParam->pType);
                auto fieldName = pExt->frameName + "::" + ext(pParam)->genName;

                if(pTypeExt->isTrivial() || pParam->byRef)
                {
                    code << "ldarg " << ext(pParam)->genName << "\n";
                    code << "stfld " << pTypeExt->ilName << (pParam->byRef ? "* " : " ") << fieldName << "\n";
                }
                else
                {
                    code << "ldflda " << pTypeExt->ilName << " " << fieldName << "\n";
                    code << "ldarg " << ext(pParam)->genName << "\n";
                    code << "call instance void [lpcRuntime]LPC." << pTypeExt->assignment << "\n";
                }
            }
        }

        return code.str();
    }

    // procedure/function epilogue
    //
    string _genEpilogue(obj::Subroutine* pSubroutine)
    {
        stringstream code;

        if(pSubroutine->pType->isFunction())
        {
            auto id = new Identifier("_fnvalue");
            auto pReturnType = pSubroutine->pType->returnType();
            auto pFnValue = new obj::Variable(id, pReturnType, pSubroutine->pScope);
            auto pFnValueExpr = new ast::VarExpr(pFnValue, NO_LOCATION);
            code << gen(pFnValueExpr);
        }

        code << TAB << "ret\n";

        return code.str();
    }

    // generate cleanup code if any:
    //
    // .try L_Entry to L_Epilogue finally
    //  {
    //      [<call destructor>...]
    //      endfinally
    //  }
    //
    string _genCleanup(obj::Subroutine* pSubroutine)
    {
        bool anyDestructors = false;

        stringstream code;

        code << "\n.try L_Entry to L_Epilogue finally\n";
        code << "{\n";

        // local variables
        //
        for(auto pVar : m_varList)
        {
            // the function return value is special
            // (the ownership is passed to the callee, which is
            //  responsible for disposing it)
            //
            if(pVar->pId->name == "_fnvalue")
                continue;

            auto pExt = ext(pVar->pType);

            if(!pExt->isTrivial())
            {
                code << _genLValueAccess(new ast::VarExpr(pVar, pSubroutine->defLine));
                code << TAB << "call instance void [lpcRuntime]LPC." << pExt->destructor << "\n\n";
                anyDestructors = true;
            }
        }

        // parameters
        //
        for(auto pParam : m_paramList)
        {
            if(pParam->byRef)
                continue;

            auto pExt = ext(pParam->pType);

            if(!pExt->isTrivial())
            {
                code << _genLValueAccess(new ast::ParamExpr(pParam, pSubroutine->defLine));
                code << TAB << "call instance void [lpcRuntime]LPC." << pExt->destructor << "\n\n";
                anyDestructors = true;
            }
        }

        // temporaries
        //
        for(auto pTemp : m_tempVarList)
        {
            auto pExt = ext(pTemp->pType);

            if(!pExt->isTrivial())
            {
                code << TAB << "ldloca " << pTemp->name << "\n";
                code << TAB << "call instance void [lpcRuntime]LPC." << pExt->destructor << "\n\n";
                anyDestructors = true;
            }
        }

        code << TAB << "endfinally\n";
        code << "}\n\n";

        return anyDestructors ? code.str() : "";
    }

    // generate the optional non-local goto support:
    //
    //  .try
    //  {
    //      <function body>
    //      leave L_Epilogue
    //  }
    //  catch [lpcRuntime]LPC.NonLocalGoto
    //  {
    //      ldfld int32 [lpcRuntime]LPC.NonLocalGoto::label
    //      dup
    //      ldc.i4 1
    //      beq GOTO_<label1>
    //      dup
    //      ldc.i4 2
    //      beq GOTO_<label2>
    //      [...]
    //      rethrow
    //    
    //  GOTO_<label1>:  leave <label1>
    //  GOTO_<label2>:  leave <label2>
    //  [...]
    //  }
    //
    //  L_Epilogue:
    //      <epilogue>
    //
    // where <labelN> is a label inside the function body
    //
    string _nonLocalGotoWrapper(obj::Subroutine* pSubroutine, const string& body)
    {
        string cleanupCode = _genCleanup(pSubroutine);

        stringstream code;

        code << "L_Entry:\n";

        if(m_nonLocalLabels.empty())
        {
            code << body;

            if(!cleanupCode.empty())
                code << TAB << "leave L_Epilogue\n";
        }
        else
        {
            code << ".try\n";
            code << "{\n";
            code << body;
            code << TAB << "leave L_Epilogue\n";
            code << "}\n";

            code << "catch [lpcRuntime]LPC.NonLocalGoto\n";
            code << "{\n";
            code << TAB << "ldfld int32 [lpcRuntime]LPC.NonLocalGoto::label\n";
            
            for(auto pLabel : m_nonLocalLabels)
            {
                auto pExt = ext(pLabel);
                assert(!pExt->genName.empty());

                code << TAB << "dup\n";
                code << TAB << "ldc.i4 " << pLabel->nonLocalId << "\n";
                code << TAB << "beq GOTO_" << pExt->genName << "\n";
            }

            code << TAB << "rethrow\n";

            for(auto pLabel : m_nonLocalLabels)
            {
                auto pExt = ext(pLabel);
                assert(!pExt->genName.empty());

                code << "GOTO_" << pExt->genName << ":\n";
                code << TAB << "leave " << pExt->genName << "\n";
            }

            code << "}\n";
        }

        code << "\nL_Epilogue:\n";
        code << _genEpilogue(pSubroutine);
        code << cleanupCode;

        return code.str();
    }

    void _genSubroutine(obj::Subroutine* pSubroutine)
    {
        stringstream code;

        auto pExt = ext(pSubroutine);
        assert(pExt->genName.empty());
        assert(pExt->code.empty());

        if(pSubroutine->pScope->category == Scope::scProgram)
            pExt->genName = "_Program";
        else
            pExt->genName = genSimpleName(pSubroutine->pId->name);
        
        // generate the body, which may update
        // backend global state as well
        //
        auto body = gen(pSubroutine->pBody);

        // prototype
        //
        code << _genPrototype(pSubroutine->pType, pExt->genName) << "\n";

        // body
        //
        code << "{\n";

        // CONSIDER: calculate the exact max size
        //
        code << TAB << ".maxstack 32\n\n";

        // activation record
        //
        code << indentBlock(_genActivationRecord(pSubroutine)) << "\n";

        // explicit variable initializers
        //
        code << _genExplicitInitializers(pSubroutine);

        // hoisted code
        //
        if(!m_hoistedCode.empty())
        {
            for(auto hoistedFragment : m_hoistedCode)
            {
                code << hoistedFragment;
                code << "\n";
            }
        }

        code << _nonLocalGotoWrapper(pSubroutine, body);
        code << "}\n";

        pExt->code = code.str();

        assert(m_stmHoistStack.empty());
    }

    // generates a identifier annotated name for code generation
    // ( generic format is : [prefix][scopeName]idName )
    //
    string _genName(const string& idName, const string& prefix, Scope* pScope) const
    {
        string scopeName = genScopeName(pScope);

        return scopeName.empty() ?
            prefix + idName :
            prefix + scopeName + "_" + idName;
    }

    // generates a local label for code generation (flow) purposes
    //
    // L_<prefix>_<N>
    //
    string _genLabel(const char* prefix)
    {
        stringstream label;
        label << "L_" << prefix << "_" << m_labelGen++;
        return label.str();
    }

    // generates a name for a global string literal
    //
    // STRING_<N>
    //
    string _genStringLiteralName()
    {
        stringstream name;
        name << "STRING_" << m_stringLiteralGen++;
        return name.str();
    }

    // allocates a temporary variable
    //
    // $tmp<suffix>
    //
    TempVar* _genTempVar(string suffix, ts::Type* pType)
    {
        stringstream tempVarName;
        tempVarName << "$tmp" << suffix << m_tempVarGen++;

        auto pTmpVar = new TempVar{tempVarName.str(), pType};
        m_tempVarList.push_back(pTmpVar);

        return pTmpVar;
    }

    // generates a conversion helper for set types
    //
    string _genSetCast(ts::Type* pSrcType, ts::Type* pDstType)
    {
        auto pSrcExt = ext(pSrcType);
        auto pDstExt = ext(pDstType);

        assert(pDstExt->ilName != pSrcExt->ilName);

        // prototype
        //
        stringstream proto;
        proto << pDstExt->ilName << " _SetCastTo_" << pDstExt->genName << "(" << pSrcExt->ilName << " s)";

        // body
        //
        if(m_deferredHelpers.find(proto.str()) == m_deferredHelpers.end())
        {
            stringstream code;

            code << "{\n";
            code << TAB << ".locals init (" << ext(pDstType)->ilName << " result)\n\n";
            code << TAB << "ldloca result\n";
            code << TAB << "ldarga s\n";
            code << TAB << "ldc.i4 " << min(pSrcExt->size, pDstExt->size) << "\n";
            code << TAB << "cpblk\n";
            code << TAB << "ldloc result\n";
            code << TAB << "ret\n";
            code << "}\n";

            m_deferredHelpers[proto.str()] = code.str();
        }

        return proto.str();
    }

    // generates a helper for a binary set operation taking arguments of the same type
    // and returning a bool value (isPredicate == true) or the same type as the arguments 
    //
    string _genSetHelper(ts::Type* pType, string helper, bool isPredicate)
    {
        string setName = ext(pType)->ilName;
        string returnTypeName = isPredicate ? "bool" : setName;

        // prototype
        //
        stringstream proto;
        proto << returnTypeName << " _Set" << helper << "(" << setName << " a, " << setName << " b)";

        // body
        //
        if(m_deferredHelpers.find(proto.str()) == m_deferredHelpers.end())
        {
            stringstream code;

            code << "{\n";

            if(isPredicate)
            {
                code << TAB << "ldarga a\n";
                code << TAB << "ldarga b\n";
                code << TAB << "ldc.i4 " << ext(pType)->size << "\n";
                code << TAB << "call bool [lpcRuntime]LPC.Set::" << helper << "(uint8*, uint8*, int32)\n";
                code << TAB << "ret\n";
            }
            else
            {
                code << TAB << ".locals init (" << setName << " result)\n\n";
                code << TAB << "ldarga a\n";
                code << TAB << "ldarga b\n";
                code << TAB << "ldloca result\n";
                code << TAB << "ldc.i4 " << ext(pType)->size << "\n";
                code << TAB << "call void [lpcRuntime]LPC.Set::" << helper << "(uint8*, uint8*, uint8*, int32)\n";
                code << TAB << "ldloc result\n";
                code << TAB << "ret\n";
            }

            code << "}\n";

            m_deferredHelpers[proto.str()] = code.str();
        }

        return proto.str();
    }

    // generates a Set.Contains() wrapper
    //
    string _genSetContains(ts::Type* pType)
    {
        // prototype
        //
        stringstream proto;
        proto << "bool _SetContains(" << ext(pType)->ilName << " s, int32 val)";

        // body
        //
        if(m_deferredHelpers.find(proto.str()) == m_deferredHelpers.end())
        {
            stringstream code;

            code << "{\n";
            code << TAB << "ldarga s\n";
            code << TAB << "ldc.i4 " << ext(pType)->size << "\n";
            code << TAB << "ldarg val\n";
            code << TAB << "call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)\n";
            code << TAB << "ret\n";
            code << "}\n";

            m_deferredHelpers[proto.str()] = code.str();
        }

        return proto.str();
    }

    // generates a Set.RTCheck() wrapper
    //
    string _genSetCheck(ts::Type* pType)
    {
        // prototype
        //
        stringstream proto;
        proto << "void _SetCheck(" << ext(pType)->ilName << " s, int32 min, int32 max)";

        // body
        //
        if(m_deferredHelpers.find(proto.str()) == m_deferredHelpers.end())
        {
            stringstream code;

            code << "{\n";
            code << TAB << "ldarga s\n";
            code << TAB << "ldc.i4 " << ext(pType)->size << "\n";
            code << TAB << "ldarg min\n";
            code << TAB << "ldarg max\n";
            code << TAB << "call void [lpcRuntime]LPC.Set::RTCheck(uint8*, int32, int32, int32)\n";
            code << TAB << "ret\n";
            code << "}\n";

            m_deferredHelpers[proto.str()] = code.str();
        }

        return proto.str();
    }

    void _generateType(ts::Type* pType)
    {
        auto pExt = ext(pType);

        // if it has a name we can assume it's been generated
        //
        if(pExt->genName.empty())
        {
            pExt->genName = _genName(pType->typeId(), "T_", pType->scope());

            TypeGen(this).gen(pType);

            if(!pExt->def.empty())
                m_typeList.push_back(pType);
        }
    }

    const TypeExt* _findArrayType(string elemTypeName, int min, int max) const
    {
        auto arrayKey = make_tuple(elemTypeName, min, max);
        auto it = m_arrayImplMap.find(arrayKey);

        return it != m_arrayImplMap.end() ? it->second : nullptr;
    }

    void _cacheArrayType(string elemTypeName, int min, int max, const TypeExt* pExt)
    {
        auto arrayKey = make_tuple(elemTypeName, min, max);
        assert(m_arrayImplMap.find(arrayKey) == m_arrayImplMap.end());

        m_arrayImplMap[arrayKey] = pExt;
    }

    const TypeExt* _findSetType(int min, int max) const
    {
        auto it = m_setImplMap.find(make_tuple(min, max));
        return it != m_setImplMap.end() ? it->second : nullptr;
    }

    void _cacheSetType(int min, int max, const TypeExt* pExt)
    {
        auto key = make_tuple(min, max);
        assert(m_setImplMap.find(key) == m_setImplMap.end());

        m_setImplMap[key] = pExt;
    }

    void _generateLabel(obj::Label* pLabel)
    {
        auto pExt = ext(pLabel);
        assert(pExt->genName.empty());
        pExt->genName = labelName(pLabel);

        if(pLabel->isNonLocalTarget())
            m_nonLocalLabels.push_back(pLabel);
    }

    void _generateConst(const string& idName, obj::Constant* pConst)
    {
        _generateType(pConst->pType);

        auto pExt = ext(pConst);
        
        assert(pExt->name.empty());
        pExt->name = idName;
    }

    bool _isSubroutine() const
    {
        return m_pCurrentScope->category == Scope::scSubroutine;
    }

    void _generateParam(const string& idName, obj::Parameter* pParam)
    {
        assert(_isSubroutine());

        auto pExt = ext(pParam);

        _generateType(pParam->pType);

        assert(pExt->genName.empty());
        pExt->genName = genSimpleName(idName);

        std::stringstream def;

        def << ext(pParam->pType)->ilName;
        if(pParam->byRef)
            def << "*";
        def << " " << pExt->genName << "\n";
        
        assert(pExt->def.empty());
        pExt->def = def.str();

        m_paramList.push_back(pParam);
    }

    void _generateVar(const string& idName, obj::Variable* pVar)
    {
        auto pExt = ext(pVar);

        _generateType(pVar->pType);

        assert(pExt->genName.empty());
        pExt->genName = genSimpleName(idName);

        std::stringstream def;

        def << ext(pVar->pType)->ilName << " " << pExt->genName << "\n";

        assert(pExt->def.empty());
        pExt->def = def.str();

        m_varList.push_back(pVar);
    }

    // AST visitor interface
    //
private:
    VarPtr visit(const ast::ConstExpr* pConstExpr) override
    {
        _generateType(pConstExpr->pType);

        stringstream code;

        // to generate our valuetype "string arrays" we'll
        // use a global table of string literals
        //
        if(pConstExpr->pType->isString())
        {
            string value = *pConstExpr->pConstant->strValue;
            auto it = m_stringLiterals.find(value);

            string name;

            if(it != m_stringLiterals.end())
            {
                name = it->second.literalName;
            }
            else
            {
                name = _genStringLiteralName();
                m_stringLiterals.insert(make_pair(value, StringLiteral{ pConstExpr->pType, name }));
            }

            code << TAB << "ldsfld " << ext(pConstExpr->pType)->ilName << " " << name;
            code << TAB << "// \"" << genStrLiteral(value) << "\"\n";
        }
        else
            code << genLiteralLoad(pConstExpr->pConstant);

        return allocStr(code);
    }

    // ast::Intrinsic should only appear part of a intrinsic call
    //
    VarPtr visit(const ast::Intrinsic*) override
    {
        assert(!"not implemented");
        return VarPtr();
    }

    // loads the address of the specified activation record
    //
    //      ldloc _F
    //      [ldfld <parentFrameName> <frameName>::_slink ...]
    //
    string _genFrameAccess(const Scope* pTargetScope)
    {
        auto targetLevel = pTargetScope->level;

        assert(targetLevel > Scope::GLOBAL_SCOPE_LEVEL);
        assert(targetLevel <= m_pCurrentScope->level);

        stringstream code;

        // for program scope the "access code" will be empty
        //
        if (targetLevel > Scope::PROGRAM_SCOPE_LEVEL)
        {
            code << TAB << "ldloc _F\n";

            auto pScope = m_pCurrentScope;

            for (; pScope->level != targetLevel; pScope = pScope->pParent)
            {
                code << TAB << "ldfld class " << genFrameName(pScope->pParent) << " " <<
                    genFrameName(pScope) << "::_slink\n";
            }

            assert(pScope == pTargetScope);
        }

        return code.str();
    }

    // generates a load/store/address of a local (variable or parameter)
    //
    // for dynamic variables:
    //      [ldfld|stfld|ldflda] <type> <frameName>::<varName>
    //
    // for global variables:
    //      [ldsfld|stsfld|lsdflda] <type> <varName>
    //
    string _genLocalAccess(const string& id, Scope* pTargetScope, ts::Type* pType, AccessType accessType)
    {
        _generateType(pType);

        string typeName = ext(pType)->ilName;

        // since we're generating scopes in post-order
        // the variables from parents may not be generated yet
        // so we have to figure out the name manually
        // (instead of using it from the extension data)
        //
        string varName = genQualifiedName(id, pTargetScope);

        // is the variable part of a dynamic activation record?
        //
        bool isStatic = pTargetScope->level <= Scope::PROGRAM_SCOPE_LEVEL;

        string opcode;

        switch(accessType)
        {
        case AccessType::Load:
            opcode = isStatic ? "ldsfld" : "ldfld"; 
            break;

        case AccessType::AddressOf:
            opcode = isStatic ? "ldsflda" : "ldflda";
            break;

        case AccessType::Store:
            opcode = isStatic ? "stsfld" : "stfld";
            break;

        case AccessType::LoadByRef:
            assert(!isStatic);
            opcode = "ldfld";
            typeName += "*";
            break;

        default:
            assert(!"unexplected access type");
        }

        stringstream code;
        code << TAB << opcode << " " << typeName << " " << varName << "\n";
        return code.str();
    }

    VarPtr visit(const ast::VarExpr* pVarExpr) override
    {
        auto pVar = pVarExpr->pVariable;

        _generateType(pVar->pType);

        stringstream code;
        code << _genFrameAccess(pVar->pScope);
        code << _genLocalAccess(pVar->pId->name, pVar->pScope, pVar->pType, AccessType::Load);
        return allocStr(code);
    }

    VarPtr visit(const ast::ParamExpr* pParamExpr) override
    {
        auto pParam = pParamExpr->pParameter;

        _generateType(pParam->pType);

        stringstream code;

        code << _genFrameAccess(pParam->pScope);

        if(pParam->byRef)
        {
            code << _genLocalAccess(pParam->pId->name, pParam->pScope, pParam->pType, AccessType::LoadByRef);
            code << TAB << "ldobj " << ext(pParam->pType)->ilName << "\n";
        }
        else
        {
            code << _genLocalAccess(pParam->pId->name, pParam->pScope, pParam->pType, AccessType::Load);
        }

        return allocStr(code);
    }

    // generates a cast from a Pascal "string array" to System.String
    //
    string _genArrayToString(ast::Expr* pString)
    {
        assert(pString->pType->isString());

        stringstream code;

        if(auto pLiteral = pString->as<ast::ConstExpr>())
        {
            code << genLiteralLoad(pLiteral->pConstant);
        }
        else
        {
            code << gen(pString);

            auto name = ext(pString->pType)->genName;
            code << TAB << "call string " << name << "::arrayToString(valuetype " << name << ")\n";
        }

        return code.str();
    }

    // generates a "subroutine pointer object"
    //
    //      <slink | null>
    //      ldftn [instance] <funcname>
    //      newobj instance void <pfnType>::.ctor(object, native uint)
    //
    VarPtr visit(const ast::FuncPtr* pFuncPtr) override
    {
        auto pFunc = pFuncPtr->pFunc;
        auto pScope = pFunc->pScope;

        stringstream code;

        if(pFunc->hasSlink())
        {
            code << _genFrameAccess(pScope->pParent);
            code << TAB << "ldftn instance ";
        }
        else
        {
            code << TAB << "ldnull\n";
            code << TAB << "ldftn ";
        }

        code << _genPrototype(pFunc->pType, genQualifiedName(pFunc)) << "\n";

        _generateType(pFuncPtr->pType);

        code << TAB << "newobj instance void " <<
            ext(pFuncPtr->pType)->genName << "::.ctor(object, native uint)\n";

        return allocStr(code);
    }

    // generates the actual cast and value checks as needed
    //
    VarPtr visit(const ast::TypeCast* pTypeCast) override
    {
        auto pSrcType = pTypeCast->pExpr->pType;
        auto pDstType = pTypeCast->pType;

        _generateType(pSrcType);
        _generateType(pDstType);

        stringstream code;

        // child expression
        //
        code << gen(pTypeCast->pExpr);
        
        // value checks, if any
        //
        code << _genAssignmentChecks(pSrcType, pDstType);

        // actual cast code (if needed)
        //
        if(pDstType->isReal() && pSrcType->isInteger())
        {
            code << TAB << "conv.r8\n"; 
        }
        else if(pDstType->isSet())
        {
            assert(pSrcType->isSet());

            // no need for a cast if the underlaying implementation is the same
            //
            if(ext(pSrcType)->ilName != ext(pDstType)->ilName)
            {
                code << TAB << "call " << _genSetCast(pSrcType, pDstType) << "\n";
            }
        }
        
        return allocStr(code);
    }

    // generates the code for the right (op, T1, T2) operator overload
    //
    VarPtr visit(const ast::BinaryOp* pBinaryOp) override
    {
        auto pLeft = pBinaryOp->pLeft;
        auto pRight = pBinaryOp->pRight;
        auto pResultType = pBinaryOp->pType;
        auto token = pBinaryOp->pOperator->token;

        _generateType(pResultType);

        stringstream code;

        // strings?
        //
        if (pLeft->pType->isString())
        {
            assert(pResultType->isBool());
            assert(pRight->pType->isCompatible(pLeft->pType));

            string helper;

            switch (token)
            {
            case Parser::T_EQ:  helper = "StrcmpEQ"; break;
            case Parser::T_NE:  helper = "StrcmpNE"; break;
            case Parser::T_LT:  helper = "StrcmpLT"; break;
            case Parser::T_GT:  helper = "StrcmpGT"; break;
            case Parser::T_LE:  helper = "StrcmpLE"; break;
            case Parser::T_GE:  helper = "StrcmpGE"; break;

            default:
                assert(!"unexpected string operator");
            }

            code << _genArrayToString(pLeft);
            code << _genArrayToString(pRight);
            code << TAB << "call bool [lpcRuntime]LPC.Helpers::" << helper << "(string, string)\n";
        }
        // a IN b ?
        //
        else if(token == Parser::T_IN)
        {
            assert(pResultType->isBool());
            assert(pLeft->pType->isOrdinal());
            assert(pRight->pType->isSet());

            code << gen(pRight);
            code << gen(pLeft);
            code << TAB << "call " << _genSetContains(pRight->pType) << "\n";
        }
        // set operator overloads?
        //
        else if(pLeft->pType->isSet())
        {
            assert(pRight->pType->isSameType(pLeft->pType));
            assert(pResultType->isSet() || pResultType->isBool());

            string helper;
            bool logicalNot = false;

            switch (token)
            {
            case Parser::T_EQ:      helper = "Equal"; break;
            case Parser::T_LE:      helper = "IsSubset"; break;
            case Parser::T_PLUS:    helper = "Union"; break;
            case Parser::T_MINUS:   helper = "Difference"; break;
            case Parser::T_STAR:    helper = "Intersection"; break;

            case Parser::T_NE:
                logicalNot = true;
                helper = "Equal";
                break;
                 
            case Parser::T_GE:
                std::swap(pLeft, pRight);
                helper = "IsSubset";
                break;

            default:
                assert(!"unexpected operator");
            }

            code << gen(pLeft);
            code << gen(pRight);

            code << TAB << "call " << _genSetHelper(pLeft->pType, helper, !pResultType->isSet()) << "\n";

            if(logicalNot)
            {
                assert(pResultType->isBool());
                code << TAB << "ldc.i4.0\n";
                code << TAB << "ceq\n";
            }
        }
        // boolean and/or operators?
        //
        else if(token == Parser::T_AND || token == Parser::T_OR)
        {
            assert(pResultType->isBool());
            assert(pLeft->pType->isBool());
            assert(pRight->pType->isBool());

            bool logicalOr = token == Parser::T_OR;

            string label = _genLabel(logicalOr ? "OR_shortcut" : "AND_shortcut");

            // the Pascal specification doesn't guarantee short-circuit semantics
            // for logical AND/OR operators but some of the existing programs depend on it
            //
            code << gen(pLeft);
            code << TAB << "dup\n";
            code << TAB << (logicalOr ? "brtrue " : "brfalse ") << label << "\n";
            code << TAB << "pop\n";
            code << gen(pRight);
            code << label << ":\n";
        }
        // everything else...
        //
        else
        {
            // implicit conversion to "real"?
            //
            bool castToReal = 
                token == Parser::T_SLASH ||
                pLeft->pType->isReal() ||
                pRight->pType->isReal();

            code << gen(pLeft);

            if (castToReal && pLeft->pType->isInteger())
                code << TAB << "conv.r8\n";

            code << gen(pRight);

            if (castToReal && pRight->pType->isInteger())
                code << TAB << "conv.r8\n";

            // operator-specific code generation
            //
            switch (token)
            {
            case Parser::T_EQ:
                code << TAB << "ceq\n";
                break;

            case Parser::T_LT:
                code << TAB << "clt\n";
                break;

            case Parser::T_GT:
                code << TAB << "cgt\n";
                break;

            case Parser::T_NE:
                code << TAB << "ceq\n";
                code << TAB << "ldc.i4.0\n";
                code << TAB << "ceq\n";
                break;

            case Parser::T_LE:
                code << TAB << "cgt\n";
                code << TAB << "ldc.i4.0\n";
                code << TAB << "ceq\n";
                break;

            case Parser::T_GE:
                code << TAB << "clt\n";
                code << TAB << "ldc.i4.0\n";
                code << TAB << "ceq\n";
                break;

            case Parser::T_PLUS:
                code << TAB << "add\n";
                break;

            case Parser::T_MINUS:
                code << TAB << "sub\n";
                break;

            case Parser::T_STAR:
                code << TAB << "mul\n";
                break;

            case Parser::T_DIV:
            case Parser::T_SLASH:
                code << TAB << "div\n";
                break;

            case Parser::T_MOD:
                assert(pLeft->pType->isInteger());
                code << TAB << "call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)\n";
                break;

            default:
                assert(!"unexpected operator");
            }
        }

        return allocStr(code);
    }

    //      <expr>
    //      [<unary op>]
    //
    VarPtr visit(const ast::UnaryOp* pUnaryOp) override
    {
        _generateType(pUnaryOp->pType);

        stringstream code;

        code << gen(pUnaryOp->pExpr);

        switch (pUnaryOp->pOperator->token)
        {
        case Parser::T_PLUS:
            assert(pUnaryOp->pType->isNumber());
            // nop
            break;

        case Parser::T_MINUS:
            assert(pUnaryOp->pType->isNumber());
            code << TAB << "neg\n";
            break;

        case Parser::T_NOT:
            assert(pUnaryOp->pType->isBool());
            code << TAB << "ldc.i4.0\n";
            code << TAB << "ceq\n";
            break;

        default:
            assert(!"unexpected operator");
        }

        return allocStr(code);
    }

    //      <array expr>
    //      <index expr>
    //      call instance <elem type>& <Array>::ldadr(int32)
    //      ldobj <type>
    //
    VarPtr visit(const ast::ArrayIndex* pArrayIndex) override
    {
        auto pElemType = pArrayIndex->pType;
        auto pArrayType = pArrayIndex->pObject->pType;

        _generateType(pElemType);
        _generateType(pArrayType);

        stringstream code;

        code << _genLValueAccess(pArrayIndex->pObject);
        code << gen(pArrayIndex->pIndex);

        code << TAB << "call instance " <<
            ext(pElemType)->ilName << "& " <<
            ext(pArrayType)->genName << "::ldadr(int32)\n";

        code << TAB << "ldobj " << ext(pElemType)->ilName << "\n";

        return allocStr(code);
    }

    //      <record expr>
    //      ldfld <type> <record name>::<fieldname>
    //
    VarPtr visit(const ast::FieldExpr* pFieldUse) override
    {
        auto pFieldType = pFieldUse->pType;
        auto pRecordType = pFieldUse->pField->pRecord->pType;

        _generateType(pFieldType);
        _generateType(pRecordType);

        auto typeName = ext(pFieldType)->ilName;
        auto fieldId = genSimpleName(pFieldUse->pField->pId->name);
        auto fieldName = ext(pRecordType)->genName + "::" + fieldId;

        stringstream code;
        code << _genLValueAccess(pFieldUse->pField->pRecord);
        code << TAB << "ldfld " << typeName << " " << fieldName << "\n";
        return allocStr(code);
    }

    //      <ptr expr>
    //      ldobj <type>
    //
    VarPtr visit(const ast::Indirection* pIndirection) override
    {
        auto pType = pIndirection->pType;
        _generateType(pType);

        stringstream code;
        code << _genLValueAccess(pIndirection, nullptr);
        code << TAB << "ldobj " << ext(pType)->ilName << "\n";
        return allocStr(code);
    }

    string _expandRead(ast::ExprList* pArguments, bool readln)
    {
        stringstream code;
        auto it = pArguments->begin();

        // first argument is always the file
        //
        auto pFile = *it++;
        assert(pFile->pType->isFile());
        code << _genLValueAccess(pFile);

        // values
        //
        for(; it != pArguments->end(); ++it)
        {
            auto pLValue = *it;
            assert(pLValue->isLValue());

            code << TAB << "dup\n";
            code << _genLValueAccess(pLValue, nullptr);

            auto pType = pLValue->pType;
            auto pExt = ext(pType);
            string overload = pExt->ilName + "*";

            // string type?
            //
            if(pType->isString())
            {
                auto pStringType = pType->as<ts::ArrayType>();
                code << TAB << "ldc.i4 " << pStringType->strLength() << "\n";
                overload = "uint8*, int32";
            }
            // ordinal type? add range limits
            //
            else if(pType->isOrdinal())
            {
                code << TAB << "ldc.i4 " << pType->minValue() << "\n";
                code << TAB << "ldc.i4 " << pType->maxValue() << "\n";
                overload += ", int32, int32";
            }

            string helper = pType->isChar() ? "ReadChar" : "Read";

            code << TAB << "call instance void [lpcRuntime]LPC.File::" << helper << "(" << overload << ")\n";
        }

        // readln?
        //
        if(readln)
            code << TAB << "call instance void [lpcRuntime]LPC.File::ReadLn()\n";
        else
            code << TAB << "pop\n";

        return code.str();
    }

    string _expandWrite(ast::ExprList* pArguments, bool writeln)
    {
        stringstream code;
        auto it = pArguments->begin();

        // first argument is always the file
        //
        auto pFile = *it++;
        assert(pFile->pType->isFile());
        code << _genLValueAccess(pFile);

        // values
        //
        for(; it != pArguments->end(); ++it)
        {
            code << TAB << "dup\n";

            auto pValue = *it;
            string helper = "Write(";

            // formatted argument?
            //
            if(auto pWriteArgExpr = pValue->as<ast::WriteArgExpr>())
            {
                // width (optional)
                //
                if(pWriteArgExpr->pWidth != nullptr)
                    code << gen(pWriteArgExpr->pWidth);
                else
                    code << TAB << "ldc.i4.0\n";

                // precission (optional)
                //
                if(pWriteArgExpr->pPrecission != nullptr)
                    code << gen(pWriteArgExpr->pPrecission);
                else
                    code << TAB << "ldc.i4.0\n";

                helper = "Format(int32, int32, ";
                pValue = pWriteArgExpr->pValue;
            }

            auto pType = pValue->pType;
            string overload;

            if(pType->isBool())
            {
                string trueLabel = _genLabel("bool_to_string_true");
                string falseLabel = _genLabel("bool_to_string_false");

                //      <bool expr>
                //      brtrue L_bool_to_string_true
                //      ldstr "false"
                //      br L_bool_to_string_false
                // L_bool_to_string_true:
                //      ldstr "true"
                // L_bool_to_string_false:
                //
                code << gen(pValue);
                code << TAB << "brtrue " << trueLabel << "\n";
                code << TAB << "ldstr \"false\"\n";
                code << TAB << "br " << falseLabel << "\n";
                code << trueLabel << ":\n";
                code << TAB << "ldstr \"true\"\n";
                code << falseLabel << ":\n";

                overload = "string";
            }
            else if(pType->isChar())
            {
                code << gen(pValue);
                overload = "uint8";
            }
            else if(pType->isOrdinal())
            {
                code << gen(pValue);
                overload = "int32";
            }
            else if(pType->isReal())
            {
                code << gen(pValue);
                overload = "float64";
            }
            else if(pType->isString())
            {
                code << _genArrayToString(pValue);
                overload = "string";
            }
            else
            {
                assert(!"unexpected write argument type");
            }

            assert(!overload.empty());

            code << TAB << "call instance void [lpcRuntime]LPC.File::" << helper << overload << ")\n";
        }

        // writeln?
        //
        if(writeln)
            code << TAB << "call instance void [lpcRuntime]LPC.File::WriteLn()\n";
        else
            code << TAB << "pop\n";

        return code.str();
    }

    string _expandTranscendental(const char* name, ast::ExprList* pArguments)
    {
        assert(nullptr != pArguments);
        assert(pArguments->size() == 1);

        auto pArg = pArguments->front();

        stringstream code;
        
        code << gen(pArg);

        if(!pArg->pType->isReal())
            code << TAB << "conv.r8\n";

        code << TAB << "call float64 [lpcRuntime]LPC.Helpers::" << name << "(float64)\n";
        
        return code.str();
    }

    //      <expr>
    //      dup
    //      mul
    //
    string _expandSqr(ast::ExprList* pArguments)
    {
        assert(nullptr != pArguments);
        assert(pArguments->size() == 1);

        stringstream code;
        code << gen(pArguments->front());
        code << TAB << "dup\n";
        code << TAB << "mul\n";
        return code.str();
    }

    //      <expr>
    //      dup
    //      ldc.[i4|r8] 0
    //      bge.un L_abs_question_N
    //      neg
    // L_abs_question_N:
    //
    string _expandAbs(ast::ExprList* pArguments)
    {
        assert(nullptr != pArguments);
        assert(pArguments->size() == 1);

        auto pArg = pArguments->front();
        _generateType(pArg->pType);

        string label = _genLabel("abs_question");

        stringstream code;
        code << gen(pArg);
        code << TAB << "dup\n";
        code << TAB << "ldc." << (pArg->pType->isReal() ? "r8" : "i4") << " 0\n";
        code << TAB << "bge " << label << "\n";
        code << TAB << "neg\n";
        code << label << ":\n";
        return code.str();
    }

    string _expandFileIntrinsic(obj::IntrinsicId intrinsicId, ast::ExprList* pArguments)
    {
        const static map<obj::IntrinsicId, string> fileIntrinsics = 
        {
            { obj::IN_EOF,      "bool [lpcRuntime]LPC.File::Eof()" },
            { obj::IN_EOLN,     "bool [lpcRuntime]LPC.File::Eoln()" },
            { obj::IN_REWRITE,  "void [lpcRuntime]LPC.File::Rewrite()" },
            { obj::IN_RESET,    "void [lpcRuntime]LPC.File::Reset()" },
            { obj::IN_PUT,      "void [lpcRuntime]LPC.File::Put()" },
            { obj::IN_GET,      "void [lpcRuntime]LPC.File::Get()" },
            { obj::IN_PAGE,     "void [lpcRuntime]LPC.File::Page()" },
        };

        assert(nullptr != pArguments);
        assert(pArguments->size() == 1);
        assert(pArguments->front()->pType->isFile());

        stringstream code;
        code << _genLValueAccess(pArguments->front());
        code << TAB << "call instance " << fileIntrinsics.at(intrinsicId) << "\n";
        return code.str();
    }

    // pack(a, start, z) intrinsic
    //
    // a        = src array
    // start    = src start index
    // z        = dst array
    //
    // the expansion is equivalent to:
    //
    //  for(i = <z base index>; i <= <z max index>; ++i)
    //  {
    //      z[i] = a[start++];
    //  }
    //
    // which results in the following IL:
    //
    //      <src start expr>
    //      stloc <tmpSrcIndex>
    //      <z base index const>
    //      stloc <tmpDstIndex>
    //  L_pack_loop_N
    //      <... z[tmpDstIndex] := a[tmpSrcIndex] ...>
    //      ldloc <tmpSrcIndex>
    //      ldc.i4.1
    //      add
    //      stloc <tmpSrcIndex>
    //      ldloc <tmpDstIndex>
    //      ldc.i4.1
    //      add
    //      dup
    //      stloc <tmpDstIndex>
    //      <z max index const>
    //      ble L_pack_loop_N
    //
    string _expandPack(ast::ExprList* pArguments, int line)
    {
        assert(pArguments->size() == 3);

        auto it = pArguments->begin();
        auto pSrcArray = *it++;
        auto pSrcStart = *it++;
        auto pDstArray = *it++;

        assert(pSrcArray->pType->isArray());
        assert(pDstArray->pType->isArray());

        auto pSrcArrayType = pSrcArray->pType->as<ts::ArrayType>();
        auto pDstArrayType = pDstArray->pType->as<ts::ArrayType>();

        _generateType(pSrcArrayType->indexType());
        _generateType(pDstArrayType->indexType());

        // create the AST for "z[tmpDstIndex] := a[tmpSrcIndex]"
        //
        auto pTmpSrcIndex = _genTempVar("SrcIndex", pSrcArrayType->indexType());
        auto pTmpDstIndex = _genTempVar("DstIndex", pDstArrayType->indexType());
        
        const auto pSrcIndexExpr = new TmpExpr(pTmpSrcIndex);
        const auto pDstIndexExpr = new TmpExpr(pTmpDstIndex);

        auto pSrcIndexList = new ast::ExprList();
        pSrcIndexList->push_back(pSrcIndexExpr);

        auto pDstIndexList = new ast::ExprList();
        pDstIndexList->push_back(pDstIndexExpr);

        const auto pAssignmentStm = new ast::AssignStm(
            new ast::ArrayIndex(pDstArray, pDstIndexList, line),
            new ast::ArrayIndex(pSrcArray, pSrcIndexList, line),
            line);

        // generate the IL for the intrinsic expansion
        //
        stringstream code;

        string loopLabel = _genLabel("pack_loop");

        auto pDstArrayIndexType = pDstArrayType->indexType()->as<ts::RangeType>();
        auto baseDstIndex = pDstArrayIndexType->minValue();
        auto maxDstIndex = pDstArrayIndexType->maxValue();

        code << gen(pSrcStart);
        code << TAB << "stloc " << pTmpSrcIndex->name << "\n";
        code << TAB << "ldc.i4 " << baseDstIndex << "\n";
        code << TAB << "stloc " << pTmpDstIndex->name << "\n";

        code << loopLabel << ":\n";
        code << gen(pAssignmentStm);

        code << TAB << "ldloc " << pTmpSrcIndex->name << "\n";
        code << TAB << "ldc.i4.1\n";
        code << TAB << "add\n";
        code << TAB << "stloc " << pTmpSrcIndex->name << "\n"; 

        code << TAB << "ldloc " << pTmpDstIndex->name << "\n";
        code << TAB << "ldc.i4.1\n";
        code << TAB << "add\n";
        code << TAB << "dup\n";
        code << TAB << "stloc " << pTmpDstIndex->name << "\n";

        code << TAB << "ldc.i4 " << maxDstIndex << "\n";
        code << TAB << "ble " << loopLabel << "\n";

        return code.str();
    }

    // unpack(z, a, start) intrinsic
    //
    // z        = src array
    // a        = dst array
    // start    = dst start index
    //
    // the expansion is equivalent to:
    //
    //  for(i = <z base index>; i <= <z max index>; ++i)
    //  {
    //      a[start++] = z[i];
    //  }
    //
    // which results in the following IL:
    //
    //      <dst start expr>
    //      stloc <tmpDstIndex>
    //      <z base index const>
    //      stloc <tmpSrcIndex>
    //  L_unpack_loop_N
    //      <... a[tmpDstIndex] := z[tmpSrcIndex] ...>
    //      ldloc <tmpDstIndex>
    //      ldc.i4.1
    //      add
    //      stloc <tmpDstIndex>
    //      ldloc <tmpSrcIndex>
    //      ldc.i4.1
    //      add
    //      dup
    //      stloc <tmpSrcIndex>
    //      <z max index const>
    //      ble L_unpack_loop_N
    //
    string _expandUnpack(ast::ExprList* pArguments, int line)
    {
        assert(pArguments->size() == 3);

        auto it = pArguments->begin();
        auto pSrcArray = *it++;
        auto pDstArray = *it++;
        auto pDstStart = *it++;

        assert(pSrcArray->pType->isArray());
        assert(pDstArray->pType->isArray());

        auto pSrcArrayType = pSrcArray->pType->as<ts::ArrayType>();
        auto pDstArrayType = pDstArray->pType->as<ts::ArrayType>();

        _generateType(pSrcArrayType->indexType());
        _generateType(pDstArrayType->indexType());

        // create the AST for "a[tmpDstIndex] := z[tmpSrcIndex]"
        //
        auto pTmpSrcIndex = _genTempVar("SrcIndex", pSrcArrayType->indexType());
        auto pTmpDstIndex = _genTempVar("DstIndex", pDstArrayType->indexType());
        
        const auto pSrcIndexExpr = new TmpExpr(pTmpSrcIndex);
        const auto pDstIndexExpr = new TmpExpr(pTmpDstIndex);

        auto pSrcIndexList = new ast::ExprList();
        pSrcIndexList->push_back(pSrcIndexExpr);

        auto pDstIndexList = new ast::ExprList();
        pDstIndexList->push_back(pDstIndexExpr);

        const auto pAssignmentStm = new ast::AssignStm(
            new ast::ArrayIndex(pDstArray, pDstIndexList, line),
            new ast::ArrayIndex(pSrcArray, pSrcIndexList, line),
            line);

        // generate the IL for the intrinsic expansion
        //
        stringstream code;

        string loopLabel = _genLabel("unpack_loop");

        auto pSrcArrayIndexType = pSrcArrayType->indexType()->as<ts::RangeType>();
        auto baseSrcIndex = pSrcArrayIndexType->minValue();
        auto maxSrcIndex = pSrcArrayIndexType->maxValue();

        code << gen(pDstStart);
        code << TAB << "stloc " << pTmpDstIndex->name << "\n";
        code << TAB << "ldc.i4 " << baseSrcIndex << "\n";
        code << TAB << "stloc " << pTmpSrcIndex->name << "\n";

        code << loopLabel << ":\n";
        code << gen(pAssignmentStm);

        code << TAB << "ldloc " << pTmpDstIndex->name << "\n";
        code << TAB << "ldc.i4.1\n";
        code << TAB << "add\n";
        code << TAB << "stloc " << pTmpDstIndex->name << "\n"; 

        code << TAB << "ldloc " << pTmpSrcIndex->name << "\n";
        code << TAB << "ldc.i4.1\n";
        code << TAB << "add\n";
        code << TAB << "dup\n";
        code << TAB << "stloc " << pTmpSrcIndex->name << "\n";

        code << TAB << "ldc.i4 " << maxSrcIndex << "\n";
        code << TAB << "ble " << loopLabel << "\n";

        return code.str();
    }

    //      <expr>
    //      ldc.i4.1
    //      and
    //
    string _expandOdd(ast::ExprList* pArguments)
    {
        assert(nullptr != pArguments);
        assert(pArguments->size() == 1);

        stringstream code;
        code << gen(pArguments->front());
        code << TAB << "ldc.i4.1\n";
        code << TAB << "and\n";
        return code.str();
    }

    string _expandHalt()
    {
        stringstream code;
        code << TAB << "call void [lpcRuntime]LPC.Helpers::Halt()\n";
        return code.str();
    }

    //      <expr>
    //      ldc.i4.1
    //      [add|sub]
    //
    string _expandIncDec(ast::ExprList* pArguments, bool inc)
    {
        assert(nullptr != pArguments);
        assert(pArguments->size() == 1);

        stringstream code;
        code << gen(pArguments->front());
        code << TAB << "ldc.i4.1\n";
        code << TAB << (inc ? "add" : "sub") << "\n";
        return code.str();
    }

    string _expandTrivialCast(ast::ExprList* pArguments)
    {
        assert(nullptr != pArguments);
        assert(pArguments->size() == 1);

        stringstream code;
        code << gen(pArguments->front());
        return code.str();
    }

    string _expandTrunc(const char* name, ast::ExprList* pArguments)
    {
        assert(nullptr != pArguments);
        assert(pArguments->size() == 1);

        stringstream code;
        
        auto pArg = pArguments->front();

        code << gen(pArg);

        if(pArg->pType->isReal())
        {
            code << TAB << "call int32 [lpcRuntime]LPC.Helpers::" << name << "(float64)\n";
        }
        
        return code.str();
    }

    string _expandDispose(ast::ExprList* pArguments, int line)
    {
        assert(nullptr != pArguments);
        assert(pArguments->size() >= 1);

        auto it = pArguments->begin();

        auto pPtr = *it++;
        assert(pPtr->isLValue());
        assert(pPtr->pType->isPointer());

        stringstream code;

        // insert checks for variant selectors
        //
        if(it != pArguments->end())
        {
            auto pRecType = pPtr->pType->as<ts::PointerType>()->baseType()->as<ts::RecordType>();
            assert(pRecType != nullptr);

            auto pFields = pRecType->fields();

            for(; it != pArguments->end(); ++it)
            {
                auto pSelector = pFields->pVariableFields->pVariantSelector;

                if(nullptr != pSelector->pId)
                {
                    // "assert(ptr^.selector = value)"
                    //
                    auto pCheckExpr = new ast::BinaryOp(
                        new ast::FieldExpr(new ast::Indirection(pPtr, line), pSelector->pId, line),
                        new Token(Parser::T_EQ, line),
                        *it, line);

                    code << gen(pCheckExpr);
                    code << TAB << "ldstr \"invalid variant selector value\"\n";
                    code << TAB << "call void [lpcRuntime]LPC.Runtime::RTCheck(bool, string)\n";
                }

                pFields = pFields->getVariant((*it)->as<ast::ConstExpr>()->pConstant);
            }
        }

        // Helpers::Free(ptr)
        //
        code << gen(pPtr);
        code << TAB << "call void [lpcRuntime]LPC.Heap::Free(void*)\n";

        // "ptr := nil"
        //
        auto pNilConst = new ast::ConstExpr(new obj::Constant(PREDEFINED_LOCATION), line);
        auto pAssignStm = new ast::AssignStm(pPtr, pNilConst, line);
        code << gen(pAssignStm);

        return code.str();
    }

    string _expandNew(ast::ExprList* pArguments, int line)
    {
        assert(nullptr != pArguments);
        assert(pArguments->size() >= 1);

        auto it = pArguments->begin();

        auto pPtr = *it++;
        assert(pPtr->isLValue());
        assert(pPtr->pType->isPointer());

        auto pPtrType = pPtr->pType->as<ts::PointerType>();

        stringstream code;

        // "ptr := <new object>"
        //
        auto pAssignStm = new ast::AssignStm(pPtr, new NewObjExpr(pPtrType, line), line);
        code << gen(pAssignStm);

        // initialize variant selectors
        //
        if(it != pArguments->end())
        {
            auto pRecType = pPtrType->baseType()->as<ts::RecordType>();
            assert(pRecType != nullptr);

            auto pFields = pRecType->fields();

            for(; it != pArguments->end(); ++it)
            {
                auto pSelector = pFields->pVariableFields->pVariantSelector;

                if(nullptr != pSelector->pId)
                {
                    // "ptr^.selector := value"
                    //
                    auto pSelAssignStm = new ast::AssignStm(
                        new ast::FieldExpr(new ast::Indirection(pPtr, line), pSelector->pId, line),
                        *it, line);

                    code << gen(pSelAssignStm);
                }

                pFields = pFields->getVariant((*it)->as<ast::ConstExpr>()->pConstant);
            }
        }

        return code.str();
    }

    string _expandIntrinsic(const ast::Intrinsic* pIntrinsic, ast::ExprList* pArguments)
    {
        switch(pIntrinsic->intrinsicId)
        {
        case obj::IN_READ:
            return _expandRead(pArguments, false);

        case obj::IN_READLN:
            return _expandRead(pArguments, true);

        case obj::IN_WRITE:
            return _expandWrite(pArguments, false);

        case obj::IN_WRITELN:
            return _expandWrite(pArguments, true);

        case obj::IN_NEW:
            return _expandNew(pArguments, pIntrinsic->line);

        case obj::IN_DISPOSE:
            return _expandDispose(pArguments, pIntrinsic->line);

        case obj::IN_ABS:
            return _expandAbs(pArguments);

        case obj::IN_SQR:
            return _expandSqr(pArguments);

        case obj::IN_SIN:
            return _expandTranscendental("Sin", pArguments);

        case obj::IN_COS:
            return _expandTranscendental("Cos", pArguments);

        case obj::IN_EXP:
            return _expandTranscendental("Exp", pArguments);

        case obj::IN_LN:
            return _expandTranscendental("Ln", pArguments);

        case obj::IN_SQRT:
            return _expandTranscendental("Sqrt", pArguments);

        case obj::IN_ARCTAN:
            return _expandTranscendental("Arctan", pArguments);

        case obj::IN_TRUNC:
            return _expandTrunc("Trunc", pArguments);

        case obj::IN_ROUND:
            return _expandTrunc("Round", pArguments);

        case obj::IN_ORD:
            return _expandTrivialCast(pArguments);

        case obj::IN_CHR:
            return _expandTrivialCast(pArguments);

        case obj::IN_SUCC:
            return _expandIncDec(pArguments, true);

        case obj::IN_PRED:
            return _expandIncDec(pArguments, false);

        case obj::IN_ODD:
            return _expandOdd(pArguments);

        case obj::IN_HALT:
            return _expandHalt();

        case obj::IN_PACK:
            return _expandPack(pArguments, pIntrinsic->line);

        case obj::IN_UNPACK:
            return _expandUnpack(pArguments, pIntrinsic->line);

        case obj::IN_EOF:
        case obj::IN_EOLN:
        case obj::IN_REWRITE:
        case obj::IN_RESET:
        case obj::IN_PUT:
        case obj::IN_GET:
        case obj::IN_PAGE:
            return _expandFileIntrinsic(pIntrinsic->intrinsicId, pArguments);

        default:
            assert(!"unexpected intrinsic id");
            return "";
        }
    }

    // generate the appropriate checks (if any) for
    // the source value on top of the stack, then it leaves
    // the original value on the stack
    //
    // CONSIDER: it should be trivial to do compile-time checks for constant values
    //
    string _genAssignmentChecks(ts::Type* pFromType, ts::Type* pToType)
    {
        stringstream code;

        // integral range checks?
        //
        if(pToType->isRange() || pToType->isEnum())
        {
            assert(pFromType->isOrdinal());

            if(pFromType->minValue() < pToType->minValue() ||
                pFromType->maxValue() > pToType->maxValue())
            {
                code << TAB << "dup\n";
                code << TAB << "ldc.i4 " << pToType->minValue() << "\n";
                code << TAB << "ldc.i4 " << pToType->maxValue() << "\n";
                code << TAB << "call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)\n";
            }
        }
        // set checks?
        //
        if(pToType->isSet())
        {
            assert(pFromType->isSet());

            if(pFromType->minValue() < pToType->minValue() ||
                pFromType->maxValue() > pToType->maxValue())
            {
                code << TAB << "dup\n";
                code << TAB << "ldc.i4 " << pToType->minValue() << "\n";
                code << TAB << "ldc.i4 " << pToType->maxValue() << "\n";
                code << TAB << "call " << _genSetCheck(pFromType) << "\n";
            }
        }

        return code.str();
    }

    // generate a subroutine (func/proc) call, either a direct call
    // or an indirect call through a subroutine pointer
    //
    //      [slink | pfn]
    //      [actual arguments...]
    //      <call>
    //
    string _genCall(ast::Expr* pSubroutine, ast::ExprList* pArguments)
    {
        // intrinsic function/procedure?
        //
        if(auto pIntrinsic = pSubroutine->as<ast::Intrinsic>())
        {
            return _expandIntrinsic(pIntrinsic, pArguments);
        }

        stringstream code;

        // slink / pfn
        //
        auto pFuncPtr = pSubroutine->as<ast::FuncPtr>();

        if(pFuncPtr != nullptr)
        {
            // normal function call, generate the slink if needed
            //
            code << _genFrameAccess(pFuncPtr->pFunc->pScope->pParent);
        }
        else
        {
            // calling through a function pointer passed as argument
            //
            auto pParamExpr = pSubroutine->as<ast::ParamExpr>();
            assert(nullptr != pParamExpr);

            code << gen(pParamExpr);
        }

        // actual arguments
        //
        if (nullptr != pArguments)
        {
            auto pParamList = pSubroutine->pType->as<ts::SubroutineType>()->paramList();

            auto paramIt = pParamList->begin();
            auto argIt = pArguments->begin();

            // iterate the arguments/parameters lists in sync
            //
            for (; argIt != pArguments->end(); ++argIt, ++paramIt)
            {
                assert(paramIt != pParamList->end());

                if(paramIt->byRef)
                {
                    assert((*argIt)->pType->isSameType(paramIt->pType));
                    code << _genLValueAccess(*argIt, nullptr);
                }
                else
                {
                    code << gen(*argIt);
                }
            }

            assert(paramIt == pParamList->end());
        }

        // generate the call instruction
        //
        string name;
        const ts::SubroutineType* pType = nullptr;
        string opcode;

        if (pFuncPtr != nullptr)
        {
            name = genQualifiedName(pFuncPtr->pFunc);
            pType = pFuncPtr->pType->as<ts::SubroutineType>();
            opcode = pFuncPtr->pFunc->hasSlink() ? "call instance " : "call ";
        }
        else
        {
            auto pParamExpr = pSubroutine->as<ast::ParamExpr>();
            assert(nullptr != pParamExpr);

            name = ext(pParamExpr->pType)->genName + "::Invoke";
            pType = pParamExpr->pType->as<ts::SubroutineType>();
            opcode = "call instance ";
        }

        assert(!name.empty());
        assert(nullptr != pType);
        assert(!opcode.empty());

        code << TAB << opcode << _genPrototype(pType, name) << "\n";

        return code.str();
    }

    VarPtr visit(const ast::FuncCall* pFuncCall) override
    {
        _generateType(pFuncCall->pType);
        auto pExt = ext(pFuncCall->pType);

        stringstream code;

        if(pExt->isTrivial())
        {
            code << _genCall(pFuncCall->pFunc, pFuncCall->pArguments);
        }
        else
        {
            // for non-trivial types we need to assign the return
            // value to a temporary variable (so it will be correctly cleaned up)
            //
            //      ldloca <tmpReturnValue>
            //      <function call>
            //      call instance void [lpcRuntime]LPC.<assignment>()
            //      ldloc <tmpReturnValue>
            //
            auto pTemp = _genTempVar("ReturnValue", pFuncCall->pType);
            code << TAB << "ldloca " << pTemp->name << "\n";
            code << _genCall(pFuncCall->pFunc, pFuncCall->pArguments);
            code << TAB << "call instance void [lpcRuntime]LPC." << pExt->assignment << "\n";
            code << TAB << "ldloc " << pTemp->name << "\n";
        }

        return allocStr(code);
    }

    VarPtr visit(const ast::Set* pSet) override
    {
        auto pLiteralTmp = _genTempVar("SetLiteral", pSet->pType);

        _generateType(pSet->pType);

        string setName = ext(pSet->pType)->genName;

        // generate set literal init code
        // 
        // NOTE: this is going to be hoisted either at func level if
        //  the set literal only contains constant values, otherwise at
        //  statement level
        //
        stringstream initCode;

        if(!pSet->isConst())
        {
            initCode << TAB << "ldloca " << pLiteralTmp->name << "\n";
            initCode << TAB << "call instance void " << setName << "::clear()\n";
        }

        if(pSet->pValues != nullptr)
        {
            for(auto pVal : *pSet->pValues)
            {
                initCode << TAB << "ldloca " << pLiteralTmp->name << "\n";

                // handle the range (..) case
                //
                auto pBinaryOp = pVal->as<ast::BinaryOp>();
                if(nullptr != pBinaryOp && pBinaryOp->pOperator->token == Parser::T_DOTDOT)
                {
                    initCode << gen(pBinaryOp->pLeft);
                    initCode << gen(pBinaryOp->pRight);
                    initCode << TAB << "call instance void " << setName << "::addRange(int32, int32)\n";
                }
                else
                {
                    initCode << gen(pVal);
                    initCode << TAB << "call instance void " << setName << "::addValue(int32)\n";
                }
            }
        }

        _hoistCode(initCode.str(), !pSet->isConst());

        // generate the actual code for the literal expression
        //
        stringstream code;
        code << TAB << "ldloc " << pLiteralTmp->name << "\n";
        return allocStr(code);
    }

    // ast::WriteArgExpr should only appear as an argument to the write intrinsics
    //
    VarPtr visit(const ast::WriteArgExpr*) override
    {
        assert(!"not implemented");
        return VarPtr();
    }

    VarPtr visit(const ast::NopStm*) override
    {
        stringstream code;
        code << TAB << "/* nop */\n";
        return allocStr(code);
    }

    VarPtr visit(const ast::CompoundStm* pCompoundStm) override
    {
        stringstream code;

        auto& stmList = pCompoundStm->statements;
        for(auto it = stmList.begin(); it != stmList.end(); ++it)
            code << gen(*it);

        return allocStr(code);
    }

    //      <expr>
    //      brfalse L_else_N
    //      <then>
    //      br L_endif_N
    //  L_else_N:
    //      <else>
    //  L_endif_N:
    //
    VarPtr visit(const ast::IfStm* pIfStm) override
    {
        stringstream code;

        code << gen(pIfStm->pCondition);

        if(pIfStm->pElseStm == nullptr)
        {
            string ifEndLabel = _genLabel("if_end");

            code << TAB << "brfalse " << ifEndLabel << "\n";
            code << gen(pIfStm->pThenStm);
            code << ifEndLabel << ":\n";
        }
        else
        {
            string elseLabel = _genLabel("else");
            string ifEndLabel = _genLabel("if_end");

            code << TAB << "brfalse " << elseLabel << "\n";
            code << gen(pIfStm->pThenStm);
            code << TAB << "br " << ifEndLabel << "\n";
            code << elseLabel << ":\n";
            code << gen(pIfStm->pElseStm);
            code << ifEndLabel << ":\n";
        }

        return allocStr(code);
    }

    //      <switch expr>
    //      stloc <tmpSwitchValue>
    //      ldloc <tmpSwitchValue>      ; multiple const case
    //      <case_1a const>
    //      beq L_case_1
    //      ldloc <tmpSwitchValue>
    //      <case_1b const>
    //      beq L_case_1
    //      [...]
    //      br L_check_case_2
    // L_case_1:
    //      <case1 stm>
    //      br L_case_end_N
    // L_check_case_2:          ; single const case
    //      ldloc <tmpSwitchValue>
    //      <case_2 const>
    //      bne.un L_check_case_3
    //      <case2 stm>
    //      br L_case_end_N
    // L_check_case_3:
    //      [...]
    // L_case_end_N:
    //
    // CONSIDER: better code generation:
    //  - use a table based jump
    //  - use case range tests
    //
    VarPtr visit(const ast::CaseStm* pCaseStm) override
    {
        stringstream code;

        auto pSwitchValueTmp = _genTempVar("SwitchValue", pCaseStm->pValue->pType);

        code << gen(pCaseStm->pValue);
        code << TAB << "stloc " << pSwitchValueTmp->name << "\n";

        auto pList = pCaseStm->pCaseList;
        string nextCaseLabel = "";
        string caseEndLabel = _genLabel("case_end");

        // find the last (non-null) case
        //        
        auto lastCaseIt = std::find_if(pList->rbegin(), pList->rend(),
            [](ast::Case* pCase) { return pCase != nullptr; });

        auto pLastCase = (lastCaseIt != pList->rend()) ? *lastCaseIt : nullptr;

        // for each case...
        //
        for(auto pCase : *pList)
        {
            if(nullptr == pCase)
                continue;

            if (!nextCaseLabel.empty())
                code << nextCaseLabel << ":\n";

            nextCaseLabel = (pCase == pLastCase) ? caseEndLabel : _genLabel("check_case");

            auto pConstList = pCase->pConstList;
            assert(!pConstList->empty());

            // single const case?
            //
            if(pConstList->size() == 1)
            {
                code << TAB << "ldloc " << pSwitchValueTmp->name << "\n";
                code << genLiteralLoad(pConstList->front());
                code << TAB << "bne.un " << nextCaseLabel << "\n";
            }
            // multiple const case
            //
            else
            {
                string thisCaseLabel = _genLabel("case");

                for(auto pConst : *pConstList)
                {
                    code << TAB << "ldloc " << pSwitchValueTmp->name << "\n";
                    code << genLiteralLoad(pConst);
                    code << TAB << "beq " << thisCaseLabel << "\n";
                }

                code << TAB << "br " << nextCaseLabel << "\n";
                code << thisCaseLabel << ":\n";
            }

            code << gen(pCase->pStm);

            if(pCase != pLastCase)
                code << TAB << "br " << caseEndLabel << "\n";
        }

        if(!nextCaseLabel.empty())
        {
            assert(pLastCase != nullptr);
            assert(nextCaseLabel == caseEndLabel);
            code << caseEndLabel << ":\n";
        }

        return allocStr(code);
    }

    // generates the address of a lvalue expression or stores a value into a lvalue
    // (pRValue == nullptr means generate the address of the lvalue)
    //
    // the actual code generation is specific to the kind of lvalue:
    //  - variable
    //  - parameter
    //  - indirection
    //  - array element
    //  - field
    //
    string _genLValueAccess(const ast::Expr* pLValue, const ast::Expr* pRValue = nullptr)
    {
        assert(pLValue->isLValue());
        
        stringstream code;

        // variable?
        //
        if(auto pVarExpr = pLValue->as<ast::VarExpr>())
        {
            auto pVar = pVarExpr->pVariable;
            auto accessType = AccessType::AddressOf;

            code << _genFrameAccess(pVar->pScope);
            
            if(pRValue != nullptr)
            {
                code << gen(pRValue);
                accessType = AccessType::Store;
            }

            code << _genLocalAccess(pVar->pId->name, pVar->pScope, pVar->pType, accessType);
        }
        // parameter?
        //
        else if(auto pParamExpr = pLValue->as<ast::ParamExpr>())
        {
            auto pParam = pParamExpr->pParameter;

            code << _genFrameAccess(pParam->pScope);

            if(pParam->byRef)
            {
                code << _genLocalAccess(pParam->pId->name, pParam->pScope, pParam->pType, AccessType::LoadByRef);

                if(pRValue != nullptr)
                {
                    code << gen(pRValue);
                    code << TAB << "stobj " << ext(pParam->pType)->ilName << "\n";
                }
            }
            else
            {
                auto accessType = AccessType::AddressOf;

                if(pRValue != nullptr)
                {
                    code << gen(pRValue);
                    accessType = AccessType::Store;
                }

                code << _genLocalAccess(pParam->pId->name, pParam->pScope, pParam->pType, accessType);
            }
        }
        // indirection?
        //
        else if(auto pIndirection = pLValue->as<ast::Indirection>())
        {
            if(pIndirection->pObject->pType->isPointer())
            {
                code << gen(pIndirection->pObject);
            }
            else
            {
                assert(pIndirection->pObject->pType->isFile());

                code << _genLValueAccess(pIndirection->pObject);

                if(pRValue == nullptr)
                {
                    code << TAB << "dup\n";
                    code << TAB << "call instance void [lpcRuntime]LPC.File::VarRead()\n";
                }

                code << TAB << "ldflda uint8 [lpcRuntime]LPC.File::FileVar\n";
            }

            if(pRValue != nullptr)
            {
                auto pType = pLValue->pType;
                _generateType(pType);

                code << gen(pRValue);
                code << TAB << "stobj " << ext(pType)->ilName << "\n";
            }
        }
        // array element?
        //
        //      <array expr>
        //      <index expr>
        //      call instance <elem type>& <Array>::ldadr(int32)
        //      [<rvalue>]
        //      [stobj <type>]
        //
        else if(auto pArrayIndex = pLValue->as<ast::ArrayIndex>())
        {
            auto pElemType = pArrayIndex->pType;
            auto pArrayType = pArrayIndex->pObject->pType;

            _generateType(pElemType);
            _generateType(pArrayType);

            code << _genLValueAccess(pArrayIndex->pObject);
            code << gen(pArrayIndex->pIndex);

            code << TAB << "call instance " <<
                ext(pElemType)->ilName << "& " <<
                ext(pArrayType)->genName << "::ldadr(int32)\n";

            if(pRValue != nullptr)
            {
                code << gen(pRValue);
                code << TAB << "stobj " << ext(pElemType)->ilName << "\n";
            }
        }
        // field?
        //
        //      <record expr>
        //      [<rvalue>]
        //      [stfld|ldflda] <type> <record name>::<fieldname>
        //
        else if(auto pFieldDst = pLValue->as<ast::FieldExpr>())
        {
            auto pFieldType = pFieldDst->pType;
            auto pRecordType = pFieldDst->pField->pRecord->pType;

            _generateType(pFieldType);
            _generateType(pRecordType);

            auto typeName = ext(pFieldType)->ilName;
            auto fieldId = genSimpleName(pFieldDst->pField->pId->name);
            auto fieldName = ext(pRecordType)->genName + "::" + fieldId;

            code << _genLValueAccess(pFieldDst->pField->pRecord);

            if(pRValue != nullptr)
            {
                code << gen(pRValue);
                code << TAB << "stfld " << typeName << " " << fieldName << "\n";
            }
            else
            {
                code << TAB << "ldflda " << typeName << " " << fieldName << "\n";
            }
        }
        else
        {
            assert(pLValue->isA<ast::DummyValue>());
        }

        return code.str();
    }

    // generates the assignment to a "lvalue"
    //
    VarPtr visit(const ast::AssignStm* pAssignStm) override
    {
        stringstream code;

        auto pType = pAssignStm->pLValue->pType;
        assert(!pType->isFile());

        auto pExt = ext(pType);

        // trivial assignment?
        //
        if(pExt->isTrivial())
        {
            code << _genLValueAccess(pAssignStm->pLValue, pAssignStm->pRValue);
        }
        // non-trivial assignment
        // (calling a runtime helper)
        //
        else
        {
            code << _genLValueAccess(pAssignStm->pLValue);
            code << gen(pAssignStm->pRValue);
            code << TAB << "call instance void [lpcRuntime]LPC." << pExt->assignment << "\n";
        }

        return allocStr(code);
    }

    //      br L_while_test_N
    //  L_while_N:
    //      <stm>
    //  L_while_test_N:
    //      <expr>
    //      brtrue L_while_N
    //
    VarPtr visit(const ast::WhileStm* pWhileStm) override
    {
        stringstream code;
        
        string whileLabel = _genLabel("while");
        string whileTestLabel = _genLabel("while_test");

        code << TAB << "br " << whileTestLabel << "\n";
        code << whileLabel << ":\n";
        code << gen(pWhileStm->pStm);
        code << whileTestLabel << ":\n";
        code << gen(pWhileStm->pCondition);
        code << TAB << "brtrue " << whileLabel << "\n";

        return allocStr(code);
    }

    //  L_repeat_N:
    //      <stm>
    //      <expr>
    //      brfalse L_repeat_N
    //
    VarPtr visit(const ast::RepeatStm* pRepeatStm) override
    {
        stringstream code;
        
        string repeatLabel = _genLabel("repeat");
        
        code << repeatLabel << ":\n";
        code << gen(pRepeatStm->pStm);
        code << gen(pRepeatStm->pCondition);
        code << TAB << "brfalse " << repeatLabel << "\n";

        return allocStr(code);
    }

    // helper for the "for stm" code generation : 
    //  stores the value on top of the stack into the index variable
    //
    // CONSIDER: the code generation could look cleaner for "global"
    //  variables (we don't need a local temporary in that case)
    //
    string _genStoreIndex(const ast::Expr* pIndex)
    {
        assert(pIndex->pType->isOrdinal());

        _generateType(pIndex->pType);

        auto pIndexValueTmp = _genTempVar("Index", pIndex->pType);

        stringstream code;

        code << _genAssignmentChecks(ts::g_pIntegerType, pIndex->pType);
        code << TAB << "stloc " << pIndexValueTmp->name << "\n";

        // variable?
        //
        if (pIndex->isA<ast::VarExpr>())
        {
            auto pVar = pIndex->as<ast::VarExpr>()->pVariable;
            code << _genFrameAccess(pVar->pScope);
            code << TAB << "ldloc " << pIndexValueTmp->name << "\n";
            code << _genLocalAccess(pVar->pId->name, pVar->pScope, pVar->pType, AccessType::Store);
        }
        // parameter?
        //
        else if (pIndex->isA<ast::ParamExpr>())
        {
            auto pParam = pIndex->as<ast::ParamExpr>()->pParameter;
            
            code << _genFrameAccess(pParam->pScope);

            if(pParam->byRef)
            {
                code << _genLocalAccess(pParam->pId->name, pParam->pScope, pParam->pType, AccessType::LoadByRef);
                code << TAB << "ldloc " << pIndexValueTmp->name << "\n";
                code << TAB << "stobj " << ext(pParam->pType)->ilName << "\n";
            }
            else
            {
                code << TAB << "ldloc " << pIndexValueTmp->name << "\n";
                code << _genLocalAccess(pParam->pId->name, pParam->pScope, pParam->pType, AccessType::Store);
            }
        }
        else
        {
            assert(!"unexpected index expression");
        }

        return code.str();
    }

    //      <endValue expr>
    //      stloc <tmpEndValue>
    //      <startValue expr>
    //      dup
    //      ldloc <tmpEndValue>
    //      [bgt|blt] L_for_end_N
    //      <store indexVar>
    // L_for_loop_N:
    //      <for stm>
    //      <load indexVar>
    //      dup
    //      ldloc <tmpEndValue>
    //      beq L_for_end_N
    //      ldc.i4.1
    //      [add|sub]
    //      <store indexVar>
    //      br L_for_loop_N
    // L_for_end_N:
    //      pop
    //
    VarPtr visit(const ast::ForStm* pForStm) override
    {
        bool inc = (pForStm->pDirection->token == Parser::T_TO);

        stringstream code;
        
        string forLoopLabel = _genLabel("for_loop");
        string forEndLabel = _genLabel("for_end");

        auto pEndValueTmp = _genTempVar("EndValue", pForStm->pIndex->pType);

        code << gen(pForStm->pEndValue);
        code << TAB << "stloc " << pEndValueTmp->name << "\n";

        code << gen(pForStm->pStartValue);
        code << TAB << "dup\n";
        code << TAB << "ldloc " << pEndValueTmp->name << "\n";
        code << TAB << (inc ? "bgt " : "blt ") << forEndLabel << "\n";

        code << _genStoreIndex(pForStm->pIndex);

        code << forLoopLabel << ":\n";
        code << gen(pForStm->pStm);

        code << gen(pForStm->pIndex);

        code << TAB << "dup\n";
        code << TAB << "ldloc " << pEndValueTmp->name << "\n";
        code << TAB << "beq " << forEndLabel << "\n";
        code << TAB << "ldc.i4.1\n";
        code << TAB << (inc ? "add" : "sub") << "\n";

        code << _genStoreIndex(pForStm->pIndex);

        code << TAB << "br " << forLoopLabel << "\n";
        code << forEndLabel << ":\n";
        code << TAB << "pop\n";

        return allocStr(code);
    }

    // for local GOTOs:
    //
    //      br <label>
    //
    // non-local GOTOs:
    //
    //      ldc.i4 <non-local-id>
    //      newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
    //      throw
    //
    VarPtr visit(const ast::GotoStm* pGotoStm) override
    {
        std::stringstream code;
        
        if(pGotoStm->isNonLocal)
        {
            assert(pGotoStm->pTargetLabel->isNonLocalTarget());
            code << TAB << "ldc.i4 " << pGotoStm->pTargetLabel->nonLocalId << "\n";
            code << TAB << "newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)\n";
            code << TAB << "throw\n";
        }
        else
        {
            auto pExt = ext(pGotoStm->pTargetLabel);
            assert(!pExt->genName.empty());
            code << TAB << "br " << pExt->genName << "\n";
        }

        return allocStr(code);
    }

    VarPtr visit(const ast::ProcCallStm* pProcCallStm) override
    {
        return allocStr(_genCall(pProcCallStm->pProc, pProcCallStm->pArguments));
    }

    // this is specific to the CLR backend so it's intentionally not virtual
    //
    VarPtr visit(const TmpExpr* pTmpExpr)
    {
        _generateType(pTmpExpr->pTempVar->pType);

        stringstream code;
        code << TAB << "ldloc " << pTmpExpr->pTempVar->name << "\n";
        return allocStr(code);
    }

    // this is specific to the CLR backend so it's intentionally not virtual
    //
    VarPtr visit(const NewObjExpr* pNewObjExpr)
    {
        auto pType = pNewObjExpr->pType->as<ts::PointerType>()->baseType();
        _generateType(pType);

        stringstream code;
        code << TAB << "ldc.i4 " << ext(pType)->size << "\n";
        code << TAB << "call void* [lpcRuntime]LPC.Heap::Malloc(int32)\n";
        return allocStr(code);
    }
};


} // end namespace llvm

