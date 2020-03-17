
// Copyright 2018 LPC Authors
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

// backend emitting C++ code

#pragma once

#include <string>
#include <list>
#include <sstream>
#include <regex>
#include <shlwapi.h>

#include "symbols.h"
#include "ast.h"
#include "objects.h"
#include "types.h"
#include "compilationContext.h"
#include "backend.h"
#include "_parser.h"


namespace cpp
{

class CppBackend;


///////////////////////////////////////////////////////////////////////////////
//
// backend specific information for various data structures
//
struct TypeExt
{
    std::string genName;
    std::string code;
    std::string decl;
};

struct ConstExt
{
    std::string genName;
    std::string code;
};

struct VarExt
{
    std::string genName;
    std::string code;
};

struct ParamExt
{
    std::string genName;
    std::string code;
};

struct SubroutineExt
{
    std::string genName;
    std::string frameName;
    std::string prototype;
};

struct ScopeExt
{
    std::string genName;
};

struct LabelExt
{
    std::string genName;
    std::string nonLocalId;
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

inline TypeExt* typeExt(ts::Type* pType) { return getExt<TypeExt>(pType); }
inline ConstExt* constExt(obj::Constant* pConst) { return getExt<ConstExt>(pConst); }
inline VarExt* varExt(obj::Variable* pVar) { return getExt<VarExt>(pVar); }
inline ParamExt* paramExt(obj::Parameter* pParam) { return getExt<ParamExt>(pParam); }
inline SubroutineExt* subroutineExt(obj::Subroutine* pSubroutine) { return getExt<SubroutineExt>(pSubroutine); }
inline ScopeExt* scopeExt(Scope* pScope) { return getExt<ScopeExt>(pScope); }
inline LabelExt* labelExt(obj::Label* pLabel) { return getExt<LabelExt>(pLabel); }


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

    std::stringstream name;
    name << "L_" << pLabel->labelId;
    return name.str(); 
}

// generates a #line directive
//
inline
string genLine(int line, bool usePragma)
{
    if(line == -1)
        line = 0;

    std::stringstream code;
    code << (usePragma ? "#line " : "// line ") << line << "\n";
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

// escapes a single character (if required)
//
inline
string genCharLiteral(char c)
{
    switch(c)
    {
    case '\'': return "\\\'";
    case '\\': return "\\\\";
    default : return string(1, c);
    }
}

inline
string genConst(obj::Constant* pConst, bool symbolic = true)
{
    std::stringstream code;

    if(symbolic && !constExt(pConst)->genName.empty())
    {
        code << constExt(pConst)->genName;
    }
    else if(pConst->pType->isInteger())
    {
        code << pConst->intValue;
    }
    else if(pConst->pType->isReal())
    {
        code << std::showpoint << pConst->realValue;
    }
    else if(pConst->pType->isBool())
    {
        code << pConst->intValue;
    }
    else if(pConst->pType->isChar())
    {
        code << "'" << genCharLiteral(static_cast<char>(pConst->intValue)) << "'";
    }
    else if(pConst->pType->isString())
    {
        code << '"' << genStrLiteral(*pConst->strValue) << '"';
    }
    else if(pConst->pType->isPointer())
    {
        code << "nullptr";
    }
    else
        assert(!"unexpected constant type");

    return code.str();
}

inline
string genScopeName(Scope* pScope)
{
    assert(pScope->category != Scope::scRecord);

    auto pExt = scopeExt(pScope);

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

// generate an id that will not conflict with
// the reserved C++ keywords
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


///////////////////////////////////////////////////////////////////////////////
//
// a type definition generator
//
class TypeGen : public ts::Visitor
{
public:
    TypeGen(CppBackend* pBackend) : m_pBackend(pBackend)
    {
    }

public:
    const char* gen(ts::Type* pType, const string& name)
    {
        assert(!name.empty());
        assert(m_name.empty());
        m_name = name;
        return pType->accept(this).get<const char>();
    }

private:
    VarPtr _typedefType(const char* def)
    {
        assert(!m_name.empty());
        std::stringstream code;
        code << "typedef " << def << " " << m_name << ";\n";
        return allocStr(code);
    }

    VarPtr _typedefType(const std::stringstream& ss)
    {
        return _typedefType(ss.str().c_str());
    }
    
    virtual VarPtr visit(ts::VoidType*)
    {
        return _typedefType("void");
    }

    virtual VarPtr visit(ts::IntegerType*)
    {
        return _typedefType("int");
    }

    virtual VarPtr visit(ts::CharType*)
    {
        return _typedefType("char");
    }

    virtual VarPtr visit(ts::BoolType*)
    {
        return _typedefType("char");
    }

    virtual VarPtr visit(ts::RealType*)
    {
        return _typedefType("double");
    }

    virtual VarPtr visit(ts::EnumType*)
    {
        return _typedefType("int");
    }

    virtual VarPtr visit(ts::SetType* pType)
    {
        std::stringstream code;
        code << "_T_Set<" << pType->minValue() << ", " << pType->maxValue() << ">";
        return _typedefType(code);
    }

    virtual VarPtr visit(ts::RecordType* pType);
    virtual VarPtr visit(ts::ArrayType* pType);
    virtual VarPtr visit(ts::PointerType* pType);
    virtual VarPtr visit(ts::FileType* pType);
    virtual VarPtr visit(ts::SubroutineType* pType);
    virtual VarPtr visit(ts::RangeType* pType);

private:
    string _recordDef(const ts::RecordFields* pFields);

private:
    CppBackend* m_pBackend;
    string m_name;
};


///////////////////////////////////////////////////////////////////////////////
//
class CppBackend : public Backend, public ast::Visitor
{
    friend class TypeGen;

private:
    typedef std::list<std::string> StringList;

    Scope* m_pCurrentScope;
    ts::TypeList m_typeList;
    ts::TypeList m_typeDeclList;
    obj::ConstList m_constList;
    obj::VarList m_varList;
    obj::LabelList m_labelList;
    std::map<string, obj::Parameter*> m_paramMap;
    obj::SubroutineList m_forwardDecls;
    StringList m_hoistedCode;
    std::list<StringList> m_stmHoistStack;
    int m_uniqueCounter;

public:
    CppBackend() :
        m_pCurrentScope(nullptr),
        m_uniqueCounter(0)
    {
    }

public:
    const char* targetName() const override { return "cpp"; }

private:
    const char* _outputExt() const override { return ".cpp"; }

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
        
        std::stringstream code;
        code << "\n" << genLine(m_pCurrentScope->line, emitDebugInfo());
        code << "//================================================================================\n";
        code << "// scope: " << friendlyName << " (level : " << m_pCurrentScope->level << ")\n";
        write(code);
    }

    // generates a unique name for a compiler generated local
    //
    string _genLocalName(const char* prefix)
    {
        std::stringstream s;
        s << prefix << m_uniqueCounter++;
        return s.str();
    }

    // generates a identifier annotated name for code generation
    // ( the format pattern is : [prefix][scopeName]idName )
    //
    string _genName(const string& idName, const string& prefix, Scope* pScope = nullptr) const
    {
        string scopeName = genScopeName(nullptr != pScope ? pScope : m_pCurrentScope);

        return scopeName.empty() ?
            prefix + idName :
            (idName.empty() ? 
                prefix + scopeName :
                prefix + scopeName + "_" + idName);
    }

    // generating the output file header
    //
    void _start() override
    {
        std::stringstream code;
        
        code << "\n#include <lpcRuntime.h>\n";
        
        code << "\n" << (emitDebugInfo() ? "#line 0" : "//") << " \"";
        code << ::PathFindFileName(context()->commandLine()->getInputName());
        code << "\"\n\n";

        // command line argument mapping
        //
        auto& args = context()->symbolTable()->programArgs();

        code << "//================================================================================\n";
        code << "// command line argument map\n";
        code << "_Filename _FilenameMapEntries[] =\n{\n";

        for(auto it = args.begin(); it != args.end(); ++it)
        {
            code << "    { \"" << *it << "\" },\n";
        }

        code << "};\n\n";
        code << "_Filename* _FilenameMap = _FilenameMapEntries;\n";
        code << "const int _FilenameMapSize = _countof(_FilenameMapEntries);\n\n";
        
        write(code);
    }

    void _end() override
    {
    }

    // this is the main entry point for generating code for a single scope.
    // for each scope it generates the corresponding C++ code:
    //
    // typedefs
    // consts
    // params struct
    // locals struct
    // function body (if any)
    //
    void _generate(Scope* pScope, bool postOrder) override
    {
        assert(pScope->category != Scope::scRecord);

        // the C++ backend works pre-order
        //
        if(postOrder)
            return;

        _setCurrentScope(pScope);

        m_typeList.clear();
        m_typeDeclList.clear();
        m_constList.clear();
        m_varList.clear();
        m_labelList.clear();
        m_paramMap.clear();
        m_forwardDecls.clear();
        m_hoistedCode.clear();
        m_stmHoistStack.clear();
        m_uniqueCounter = 1;

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
                _generateLabel(idName, it->second->pLabel);
            }
        }

        // generate forward declarations
        //
        if(pScope->category != Scope::scGlobal)
        {
            _generateForwardDecls();
        }

        // output the symbols definitions/declarations
        //
        _outputSymbols();

        // generate the subroutine definition
        // (including the activation record)
        //
        if(pScope->category == Scope::scProgram ||
            pScope->category == Scope::scSubroutine)
        {
            assert(pScope->pSubroutine->pScope == pScope);
            _outputSubroutine(pScope->pSubroutine);
        }
    }

    // generate and declare a type
    //
    void _generateType(ts::Type* pType)
    {
        // for pointers first attempt to generate the pointed-to type
        // since they may contain instances of this pointer type
        //
        // NOTE: except for pointers to pointers to avoid infinite recursion
        //
        auto pPointerType = pType->as<ts::PointerType>();
        if(nullptr != pPointerType && !pPointerType->baseType()->isPointer())
        {
            _generateType(pPointerType->baseType());
        }

        auto pExt = typeExt(pType);

        // if it has a name we can assume it's been generated
        //
        if(pExt->genName.empty())
        {
            pExt->genName = _genName(pType->typeId(), "T_");

            TypeGen typeGen(this);

            assert(pExt->code.empty());
            pExt->code = typeGen.gen(pType, pExt->genName);

            // queue the type
            //
            m_typeList.push_back(pType);
        }

        // does this type need a forward declaration?
        //
        if(pExt->code.empty() && pExt->decl.empty())
        {
            assert(pType->isPointer() || pType->isRecord());

            std::stringstream code;
            code << "struct " << pExt->genName << ";\n";
            pExt->decl = code.str();

            m_typeDeclList.push_back(pType);
        }
    }

    void _generateLabel(const string& idName, obj::Label* pLabel)
    {
        auto pExt = labelExt(pLabel);

        assert(pExt->genName.empty());
        assert(pExt->nonLocalId.empty());

        pExt->genName = labelName(pLabel);

        if(pLabel->isNonLocalTarget())
        {
            pExt->nonLocalId = _genName(idName, "NL_");
            m_labelList.push_back(pLabel);
        }
    }

    void _generateConst(const string& idName, obj::Constant* pConst)
    {
        // don't generate a symbolic constant for "nil"
        //
        if(pConst->pType->isPointer())
            return;

        auto pExt = constExt(pConst);

        _generateType(pConst->pType);

        assert(pExt->genName.empty());
        pExt->genName = _genName(idName, "C_");

        std::stringstream code;

        code << "const ";

        if(pConst->pType->isString())
            code << "auto";
        else
            code << typeExt(pConst->pType)->genName;

        code << " " << pExt->genName << " = ";
        code << genConst(pConst, false) << ";\n";

        assert(pExt->code.empty());
        pExt->code = code.str();
        m_constList.push_back(pConst);
    }

    void _generateParam(const string& idName, obj::Parameter* pParam)
    {
        auto pExt = paramExt(pParam);

        _generateType(pParam->pType);

        assert(pExt->genName.empty());
        pExt->genName = genSimpleName(idName);

        std::stringstream code;

        code << typeExt(pParam->pType)->genName;
        if(pParam->byRef)
            code << "&";
        code << " " << pExt->genName << ";\n";

        assert(pExt->code.empty());
        pExt->code = code.str();

        m_paramMap[idName] = pParam;
    }

    void _generateVar(const string& idName, obj::Variable* pVar)
    {
        auto pExt = varExt(pVar);

        _generateType(pVar->pType);

        assert(pExt->genName.empty());
        pExt->genName = genSimpleName(idName);

        std::stringstream code;

        code << typeExt(pVar->pType)->genName << " " << pExt->genName << ";\n";
        
        assert(pExt->code.empty());
        pExt->code = code.str();

        m_varList.push_back(pVar);
    }

    void _outputSymbols()
    {
        std::stringstream code;

        // types
        //
        if(!m_typeList.empty())
        {
            code << "\n// types\n";

            // forward type declarations
            //
            for(auto it = m_typeDeclList.begin(); it != m_typeDeclList.end(); ++it)
            {
                auto decl = typeExt(*it)->decl;
                assert(!decl.empty());
                code << decl;
            }

            for(auto it = m_typeList.begin(); it != m_typeList.end(); ++it)
                code << typeExt(*it)->code;
        }

        // forward declarations for directly nested subroutines
        //
        if(!m_forwardDecls.empty())
        {
            code << "\n// forward declarations\n";

            for(auto it = m_forwardDecls.begin(); it != m_forwardDecls.end(); ++it)
                code << subroutineExt(*it)->prototype << ";\n";
        }

        // constants
        //
        if(!m_constList.empty())
        {
            code << "\n// constants\n";

            for(auto it = m_constList.begin(); it != m_constList.end(); ++it)
                code << constExt(*it)->code;
        }

        // non-local goto targets
        //
        if(!m_labelList.empty())
        {
            code << "\n// non-local goto targets\n";

            for(auto it = m_labelList.begin(); it != m_labelList.end(); ++it)
            {
                auto pExt = labelExt(*it);
                assert(!pExt->nonLocalId.empty());
                assert((*it)->isNonLocalTarget());
                code << "const int " << pExt->nonLocalId << " = ";
                code << (*it)->nonLocalId << ";\n";
            }
        }

        write(code);
    }

    // generates the prototype for a subroutine
    // (not neccesarely the current one)
    //
    void _generatePrototype(obj::Subroutine* pSubroutine)
    {
        auto pExt = subroutineExt(pSubroutine);

        if(!pExt->prototype.empty())
        {
            assert(!pExt->genName.empty());
            return;
        }

        auto pType = pSubroutine->pType;
        const char* prefix = nullptr;

        std::stringstream code;

        // return type
        //
        if(pType->isFunction())
        {
            _generateType(pType->returnType());
            code << typeExt(pType->returnType())->genName << " ";
            prefix = "F_";
        }
        else
        {
            code << "void ";
            prefix = "P_";
        }

        // name
        //
        assert(pExt->genName.empty());
        pExt->genName = _genName("", prefix, pSubroutine->pScope);
        code << pExt->genName;

        // arguments
        //
        code << "(";

        if(pSubroutine->pScope->category != Scope::scProgram)
        {
            // it would be nice to use a pointer to the actual
            // parent frame type but to accomodate function pointers
            // we need to use void* here
            //
            code << "void* _slink";
        }

        auto pParamList = pType->paramList();
        for(auto it = pParamList->begin(); it != pParamList->end(); ++it)
        {
            _generateType(it->pType);

            code << ", " << typeExt(it->pType)->genName;
            if(it->byRef)
                code << "&";
            code << " " << genSimpleName(it->pId->name);
        }

        code << ")";

        pExt->prototype = code.str();
    }

    std::string _subroutineBody(obj::Subroutine* pSubroutine)
    {
        assert(m_stmHoistStack.empty());

        auto pExt = subroutineExt(pSubroutine);
        auto body = gen(pSubroutine->pBody);
        
        std::stringstream code;
        std::stringstream statements;

        // frame definition
        //
        if(pSubroutine->pScope->category != Scope::scProgram)
        {
            code << "// prologue/frame definition\n";
            code << pExt->frameName << " _F = {";

            bool firstParam = true;

            if(pSubroutine->hasSlink())
            {
                auto* pParentExt = subroutineExt(pSubroutine->parent());
                code << " (" << pParentExt->frameName << "*)_slink";
                firstParam = false;
            }

            auto pType = pSubroutine->pType;
            auto pParamList = pType->paramList();
            for(auto it = pParamList->begin(); it != pParamList->end(); ++it)
            {
                if(!firstParam)
                    code << ", ";

                code << genSimpleName(it->pId->name);
                firstParam = false;
            }

            code << " };\n";

            if(!pSubroutine->hasSlink())
            {
                code << "\nassert(nullptr == _slink);\n";
            }
        }

        // explicit variable initializers
        //
        bool firstInitializer = true;

        for(auto pVar : m_varList)
        {
            if(pVar->pInitializer != nullptr)
            {
                if(firstInitializer)
                {
                    code << "\n// initializers\n";
                    firstInitializer = false;
                }

                if(pSubroutine->pScope->category != Scope::scProgram)
                    code << "_F.";

                code << varExt(pVar)->genName << ".init(" << gen(pVar->pInitializer) << ");\n";
            }
        }

        code << "\n";

        // hoisted code
        //
        if(!m_hoistedCode.empty())
        {
            code << "// hoisted definitions\n";
            for(auto it = m_hoistedCode.begin(); it != m_hoistedCode.end(); ++it)
                code << *it;
        }

        // body
        //
        statements << "// subroutine body\n";
        statements << body;

        if(pSubroutine->pType->isFunction())
        {
            statements << "\n// epilogue\n";
            statements << "return _F._fnvalue;\n";
        }

        code << _nonlocalGotoWrapper(statements.str());

        assert(m_stmHoistStack.empty());
        return genBlock(code.str());
    }

    std::string _nonlocalGotoWrapper(const std::string& statements) const
    {
        if(m_labelList.empty())
            return statements;

        std::stringstream code;

        code << "int _nonlocalTarget = 0;\n\n";
        code << "_nonlocalGoto:\ntry\n";

        // the non-local goto dispatch code
        //
        {
            std::stringstream tmp;

            tmp << "switch(_nonlocalTarget)\n{\n";
            tmp << "case 0: break;\n";
            for(auto it = m_labelList.begin(); it != m_labelList.end(); ++it)
            {
                auto pExt = labelExt(*it);
                tmp << "case " << pExt->nonLocalId << ": ";
                tmp << "goto " << pExt->genName << ";\n";
            }
            tmp << "default: _RTError(\"unexpected non-local target\");\n";
            tmp << "}\n\n";
            tmp << statements;

            code << genBlock(tmp.str()) << "\n";
        }

        code << "catch(int _target)\n";

        // the catch/redirect code
        //
        {
            std::stringstream tmp;

            tmp << "switch(_target)\n{\n";
            for(auto it = m_labelList.begin(); it != m_labelList.end(); ++it)
            {
                auto pExt = labelExt(*it);
                tmp << "case " << pExt->nonLocalId << ":\n";
            }
            tmp << indentBlock("_nonlocalTarget = _target;\ngoto _nonlocalGoto;\n");
            tmp << "default: throw;\n}\n";

            code << genBlock(tmp.str()) << "\n";
        }

        return code.str();
    }

    void _outputFrame(obj::Subroutine* pSubroutine)
    {
        std::stringstream code;

        if(pSubroutine->pScope->category == Scope::scProgram)
        {
            assert(m_paramMap.empty());
            assert(!pSubroutine->hasSlink());

            if(!m_varList.empty())
            {
                code << "\n// program variables\n";
                for(auto it = m_varList.begin(); it != m_varList.end(); ++it)
                    code << varExt(*it)->code;
            }
        }
        else
        {
            auto* pExt = subroutineExt(pSubroutine);

            assert(pExt->frameName.empty());
            pExt->frameName = _genName("", "Frame_");

            code << "\n// activation record\n";
            code << "struct " << pExt->frameName << "\n{";

            if(pSubroutine->hasSlink())
            {
                auto* pParentExt = subroutineExt(pSubroutine->parent());
                assert(!pParentExt->frameName.empty());
                code << "\n   " << pParentExt->frameName << "* _slink;\n";
            }

            if(!m_paramMap.empty())
            {
                // NOTE: we have to make sure the parameters are generated
                //   in the exact order to allow initializer lists for frame
                //
                // CONSIDER: this could be simplified by refactoring the
                //   ts::ParamList and obj::ParamList and related data structures
                //
                code << "\n    // parameters\n";
                auto pType = pSubroutine->pType;
                auto pParamList = pType->paramList();
                for(auto it = pParamList->begin(); it != pParamList->end(); ++it)
                {
                    auto pParam = m_paramMap[it->pId->name];
                    code << "    " << paramExt(pParam)->code;
                }
            }

            if(!m_varList.empty())
            {
                code << "\n    // locals\n";
                for(auto it = m_varList.begin(); it != m_varList.end(); ++it)
                    code << "    " << varExt(*it)->code;
            }

            code << "};\n";
        }

        write(code);
    }

    void _outputSubroutine(obj::Subroutine* pSubroutine)
    {
        _outputFrame(pSubroutine);

        _generatePrototype(pSubroutine);

        std::stringstream code;

        code << "\n// function body\n";
        code << subroutineExt(pSubroutine)->prototype << "\n";
        code << _subroutineBody(pSubroutine) << "\n\n";

        write(code);
    }

    // generate forward declarations for the direct children of the current scope
    //
    void _generateForwardDecls()
    {
        for(auto pScope = m_pCurrentScope->pNested; pScope != nullptr; pScope = pScope->pNext)
        {
            assert(pScope->category != Scope::scGlobal);
            assert(pScope->category != Scope::scProgram);
            assert(pScope->pParent == m_pCurrentScope);

            if(pScope->category != Scope::scSubroutine)
                continue;

            auto pSubroutine = pScope->subroutine();
            _generatePrototype(pSubroutine);
            m_forwardDecls.push_back(pSubroutine);
        }
    }

    // a friendly wrapper around the AST visitor pattern
    //
    const char* gen(const ast::Node* pNode)
    {
        return pNode->accept(this).get<const char>();
    }

    // the Stm specialization of gen()
    //
    const char* gen(const ast::Stm* pStm)
    {
        m_stmHoistStack.push_front(StringList());

        std::stringstream code;
        const char* stmCode = pStm->accept(this).get<const char>();

        // generate the statement "header"
        // (line number and optional label)
        //
        if(NO_LOCATION != pStm->line)
            code << genLine(pStm->line, emitDebugInfo());

        if(nullptr != pStm->pLabel)
        {
            auto pExt = labelExt(pStm->pLabel);
            code << pExt->genName << ":\n";
        }

        // check to see if we have any stm-specific code to hoist
        //
        const StringList& stmHoistList = m_stmHoistStack.front();
        
        if(!stmHoistList.empty())
        {
            std::stringstream tmp;
            
            for(auto it = stmHoistList.begin(); it != stmHoistList.end(); ++it)
                tmp << *it;
            
            tmp << stmCode;
            code << genBlock(tmp.str()) << "\n";
        }
        else
        {
            code << stmCode;
        }

        m_stmHoistStack.pop_front();
        return allocStr(code).get<const char>();
    }

    // helper function to hoist code outside the inline context
    //
    void _hoistCode(const string& str, bool stmHoist)
    {
        if(stmHoist)
        {
            // hoist at statement level
            //
            m_stmHoistStack.front().push_back(str);
        }
        else
        {
            // hoist at function level
            //
            m_hoistedCode.push_back(str);
        }
    }

    VarPtr visit(const ast::ConstExpr* pConstExpr) override
    {
        return allocStr(genConst(pConstExpr->pConstant).c_str());
    }

    VarPtr visit(const ast::Intrinsic*) override
    {
        assert(!"not implemented");
        return VarPtr();
    }

    // generate a static link pointer relative to the current scope
    // 
    string _genFramePtr(int targetLevel)
    {
        assert(targetLevel > 0);
        assert(targetLevel <= m_pCurrentScope->level);

        if(targetLevel == Scope::PROGRAM_SCOPE_LEVEL)
        {
            return "nullptr";
        }

        std::stringstream code;
        
        if(targetLevel == m_pCurrentScope->level)
        {
            code << "&_F";
        }
        else
        {
            code << "_F.";

            for(int i = m_pCurrentScope->level; i > targetLevel; --i)
            {
                code << "_slink" << (i - 1 > targetLevel ? "->" : "");
            }
        }

        return code.str();
    }

    // generates an reference relative to the current scope
    //
    // NOTE: technically this is equivalent to "_genFramePtr(targetLevel)->"
    //   but it's nicer to generate _F.foo instead of (&_F)->foo
    //
    string _genFrameRef(int targetLevel)
    {
        return targetLevel == m_pCurrentScope->level ?
            "_F." : (_genFramePtr(targetLevel) + "->");
    }

    VarPtr visit(const ast::VarExpr* pVarExpr) override
    {
        auto pVar = pVarExpr->pVariable;
        auto targetLevel = pVar->pScope->level;

        assert(targetLevel > Scope::GLOBAL_SCOPE_LEVEL);

        std::stringstream code;

        if(targetLevel > Scope::PROGRAM_SCOPE_LEVEL)
        {
            code << _genFrameRef(targetLevel);
        }

        code << varExt(pVar)->genName;

        return allocStr(code);
    }

    VarPtr visit(const ast::ParamExpr* pParamExpr) override
    {
        auto pParam = pParamExpr->pParameter;
        assert(pParam->pScope->level > Scope::PROGRAM_SCOPE_LEVEL);

        std::stringstream code;
        code << _genFrameRef(pParam->pScope->level) << paramExt(pParam)->genName;
        return allocStr(code);
    }

    VarPtr visit(const ast::FuncPtr* pFuncPtr) override
    {
        auto pExt = subroutineExt(pFuncPtr->pFunc);
        assert(!pExt->genName.empty());

        std::stringstream code;
        code << "_makePfn(" << pExt->genName << ", ";
        code << _genFramePtr(pFuncPtr->pFunc->pScope->level - 1);
        code << ")";
        return allocStr(code);
    }

    // generate an explicit cast
    //
    VarPtr visit(const ast::TypeCast* pTypeCast) override
    {
        auto pDstType = pTypeCast->pType;

        std::stringstream code;

        if(pDstType->isPOD() || pTypeCast->context != ast::TypeCast::ctxArg)
        {
            code << gen(pTypeCast->pExpr);
        }
        else
        {
            _generateType(pDstType);
            auto pExt = typeExt(pDstType);
            code << pExt->genName << "::C(" << gen(pTypeCast->pExpr) << ")";
        }

        return allocStr(code);
    }

    VarPtr visit(const ast::BinaryOp* pBinaryOp) override
    {
        string lhs = gen(pBinaryOp->pLeft);
        string rhs = gen(pBinaryOp->pRight);

        std::stringstream code;

        if(pBinaryOp->pLeft->pType->isString())
        {
            assert(pBinaryOp->pRight->pType->isString());

            auto pType = pBinaryOp->pLeft->pType->as<ts::ArrayType>();
            string helper = "$";

            switch(pBinaryOp->pOperator->token)
            {
            case Parser::T_EQ:  helper = "_strcmpEQ"; break;
            case Parser::T_NE:  helper = "_strcmpNE"; break;
            case Parser::T_LT:  helper = "_strcmpLT"; break;
            case Parser::T_GT:  helper = "_strcmpGT"; break;
            case Parser::T_LE:  helper = "_strcmpLE"; break;
            case Parser::T_GE:  helper = "_strcmpGE"; break;

            default:
                assert(!"unexpected operator");
            }

            code << helper << "<" << pType->strLength() << ">";
            code << "(" << lhs << ", " << rhs << ")";
        }
        else
        {
            string op = "$";
            string fn = "";

            switch(pBinaryOp->pOperator->token)
            {
            case Parser::T_EQ:      op = "=="; break;
            case Parser::T_NE:      op = "!="; break;
            case Parser::T_LT:      op = "<"; break;
            case Parser::T_GT:      op = ">"; break;
            case Parser::T_LE:      op = "<="; break;
            case Parser::T_GE:      op = ">="; break;
            case Parser::T_PLUS:    op = "+"; break;
            case Parser::T_MINUS:   op = "-"; break;
            case Parser::T_OR:      op = "||"; break;
            case Parser::T_AND:     op = "&&"; break;
            case Parser::T_STAR:    op = "*"; break;
            case Parser::T_DIV:     op = "/"; break;

            case Parser::T_MOD:
                op = ",";
                fn = "_mod";
                break;

            case Parser::T_SLASH:
                op = "/";
                lhs = "(double)" + lhs;
                break;

            case Parser::T_IN:
                op = "&";
                std::swap(lhs, rhs);
                break;

            default:
                assert(!"unexpected operator");
            }

            code << fn << "(" << lhs << " " << op << " " << rhs << ")";
        }

        return allocStr(code);
    }

    VarPtr visit(const ast::UnaryOp* pUnaryOp) override
    {
        string op = "$";
        string value = gen(pUnaryOp->pExpr);

        switch(pUnaryOp->pOperator->token)
        {
        case Parser::T_PLUS:    op = "+"; break;
        case Parser::T_MINUS:   op = "-"; break;
        case Parser::T_NOT:     op = "!"; break;

        default:
            assert(!"unexpected operator");
        }

        std::stringstream code;
        code << "(" << op << value << ")";
        return allocStr(code);
    }

    VarPtr visit(const ast::ArrayIndex* pArrayIndex) override
    {
        std::stringstream code;
        code << gen(pArrayIndex->pObject);
        code << "[" << gen(pArrayIndex->pIndex) << "]";
        return allocStr(code);
    }

    VarPtr visit(const ast::FieldExpr* pFieldExpr) override
    {
        std::stringstream code;
        code << gen(pFieldExpr->pField->pRecord) << ".";
        code << genSimpleName(pFieldExpr->pField->pId->name);
        return allocStr(code);
    }

    VarPtr visit(const ast::Indirection* pIndirection) override
    {
        auto expr = gen(pIndirection->pObject);
        std::stringstream code;

        if(pIndirection->pObject->pType->isPointer())
        {
            code << "(*" << expr << "._ptr)";
        }
        else
        {
            assert(pIndirection->pObject->pType->isFile());
            code << expr << ".bufferVar()";
        }

        return allocStr(code);
    }

    string _simpleIntrinsic(const char* helperName, ast::ExprList* pArguments, bool isStm = false)
    {
        std::stringstream code;
        code << "_" << helperName << "(";

        if(nullptr != pArguments)
        {
            for(auto it = pArguments->begin(); it != pArguments->end(); ++it)
            {
                if(it != pArguments->begin())
                    code << ", ";
                code << gen(*it);
            }
        }

        code << (isStm ? ");\n" : ")");
        return code.str();
    }

    string _expandFileIntrinsic(const char* helperName, ast::ExprList* pArguments, bool isStm = false)
    {
        std::stringstream code;
        code << "_" << helperName << "(";

        if(nullptr != pArguments)
        {
            assert(pArguments->size() == 1);
            code << gen(pArguments->front());
        }

        code << (isStm ? ");\n" : ")");
        return code.str();
    }

    string _expandNewDispose(ast::ExprList* pArguments, bool dispose)
    {
        std::stringstream code;

        auto it = pArguments->begin();
        auto ptr = gen(*it);

        if(!dispose)
            code << "_new(" << ptr << "._ptr);\n";

        // variant selectors
        //
        if(pArguments->size() > 1)
        {
            auto pType = (*it)->pType->as<ts::PointerType>()->baseType()->as<ts::RecordType>();
            auto pFields = pType->fields();

            while(++it != pArguments->end())
            {
                auto pSelector = pFields->pVariableFields->pVariantSelector;

                if(nullptr != pSelector->pId)
                {
                    code << (dispose ? "_checkValue(" : "_setValue(");
                    code << ptr << "._ptr->" << genSimpleName(pSelector->pId->name);
                    code << ", " << gen(*it) << ");\n";
                }
                else
                {
                    code << "// unnamed tag = " << gen(*it) << "\n";
                }

                pFields = pFields->getVariant((*it)->as<ast::ConstExpr>()->pConstant);
            }
        }

        if(dispose)
            code << "_dispose(" << ptr << "._ptr);\n";

        return pArguments->size() == 1 ? code.str() : genBlock(code.str()) + "\n";
    }

    string _expandRead(ast::ExprList* pArguments, bool readln)
    {
        std::stringstream code;
        auto it = pArguments->begin();

        // first argument is always the file
        //
        assert((*it)->pType->isFile());
        code << gen(*it++);

        // values
        //
        for(; it != pArguments->end(); ++it)
        {
            assert((*it)->isLValue());
            code << " >> " << gen(*it);
        }

        if(readln)
            code << " >> _READLN";

        code << ";\n";
        return code.str();
    }

    string _writeValue(const ast::Expr* pValue)
    {
        string value = gen(pValue);

        return pValue->pType->isBool() ?
            "_str(" + value + ")" : value;
    }

    // this code generation is not strictly conformant, according to the 
    // Pascal specification, "write(f, e1, e2, ... eN)" should be equivalent to:
    //
    //  begin write(f, e1); write(f, e2, ... eN) end
    //
    // which implies a strict order of evaluation for e1 ... eN
    //
    // but "f << e1 << e2 << ... << eN" does not guarantee the left-to-right evaluation
    // of e1 .. eN
    //
    string _expandWrite(ast::ExprList* pArguments, bool writeln)
    {
        std::stringstream code;
        auto it = pArguments->begin();

        // first argument is always the file
        //
        assert((*it)->pType->isFile());
        code << gen(*it++);

        // values
        //
        for(; it != pArguments->end(); ++it)
        {
            code << " << ";

            auto pWriteArgExpr = (*it)->as<ast::WriteArgExpr>();
            if(nullptr != pWriteArgExpr)
            {
                code << "_format(" << _writeValue(pWriteArgExpr->pValue) << ", ";

                code << ((nullptr != pWriteArgExpr->pWidth) ?
                    gen(pWriteArgExpr->pWidth) : "0");

                code << ", ";

                code << ((nullptr != pWriteArgExpr->pPrecission) ?
                    gen(pWriteArgExpr->pPrecission) : "0");

                code << ")";
            }
            else
            {
                code << _writeValue(*it);
            }
        }

        if(writeln)
            code << " << _WRITELN";

        code << ";\n";
        return code.str();
    }

    string _expandIntrinsic(const ast::Intrinsic* pIntrinsic, ast::ExprList* pArguments)
    {
        switch(pIntrinsic->intrinsicId)
        {
        case obj::IN_READ:      return _expandRead(pArguments, false);
        case obj::IN_READLN:    return _expandRead(pArguments, true);

        case obj::IN_WRITE:     return _expandWrite(pArguments, false);
        case obj::IN_WRITELN:   return _expandWrite(pArguments, true);

        case obj::IN_NEW:       return _expandNewDispose(pArguments, false);
        case obj::IN_DISPOSE:   return _expandNewDispose(pArguments, true);

        case obj::IN_ABS:       return _simpleIntrinsic("abs", pArguments);
        case obj::IN_SQR:       return _simpleIntrinsic("sqr", pArguments);
        case obj::IN_SIN:       return _simpleIntrinsic("sin", pArguments);
        case obj::IN_COS:       return _simpleIntrinsic("cos", pArguments);
        case obj::IN_EXP:       return _simpleIntrinsic("exp", pArguments);
        case obj::IN_LN:        return _simpleIntrinsic("ln", pArguments);
        case obj::IN_SQRT:      return _simpleIntrinsic("sqrt", pArguments);
        case obj::IN_ARCTAN:    return _simpleIntrinsic("arctan", pArguments);
        case obj::IN_TRUNC:     return _simpleIntrinsic("trunc", pArguments);
        case obj::IN_ROUND:     return _simpleIntrinsic("round", pArguments);
        case obj::IN_ORD:       return _simpleIntrinsic("ord", pArguments);
        case obj::IN_CHR:       return _simpleIntrinsic("chr", pArguments);
        case obj::IN_SUCC:      return _simpleIntrinsic("succ", pArguments);
        case obj::IN_PRED:      return _simpleIntrinsic("pred", pArguments);
        case obj::IN_ODD:       return _simpleIntrinsic("odd", pArguments);
        case obj::IN_HALT:      return _simpleIntrinsic("halt", pArguments, true);
        case obj::IN_PACK:      return _simpleIntrinsic("pack", pArguments, true);
        case obj::IN_UNPACK:    return _simpleIntrinsic("unpack", pArguments, true);

        case obj::IN_EOF:       return _expandFileIntrinsic("eof", pArguments);
        case obj::IN_EOLN:      return _expandFileIntrinsic("eoln", pArguments);
        case obj::IN_REWRITE:   return _expandFileIntrinsic("rewrite", pArguments, true);
        case obj::IN_RESET:     return _expandFileIntrinsic("reset", pArguments, true);
        case obj::IN_PUT:       return _expandFileIntrinsic("put", pArguments, true);
        case obj::IN_GET:       return _expandFileIntrinsic("get", pArguments, true);
        case obj::IN_PAGE:      return _expandFileIntrinsic("page", pArguments, true);

        default:
            assert(!"unexpected intrinsic id");
            return "?INTRIN?";
        }
    }

    string _genCall(ast::Expr* pSubroutine, ast::ExprList* pArguments, bool isStm)
    {
        // intrinsic function/procedure?
        //
        auto pIntrinsic = pSubroutine->as<ast::Intrinsic>();
        if(nullptr != pIntrinsic)
        {
            return _expandIntrinsic(pIntrinsic, pArguments);
        }

        std::stringstream code;

        // function name & static scope link
        //
        auto pFuncPtr = pSubroutine->as<ast::FuncPtr>();

        if(nullptr != pFuncPtr)
        {
            // normal function call
            //
            auto pExt = subroutineExt(pFuncPtr->pFunc);
            assert(!pExt->genName.empty());
            code << pExt->genName << "(";
            code << _genFramePtr(pFuncPtr->pFunc->pScope->level - 1);
        }
        else
        {
            // calling through a function pointer passed as argument
            //
            auto pParamExpr = pSubroutine->as<ast::ParamExpr>();
            assert(nullptr != pParamExpr);

            auto param = gen(pParamExpr);
            code << "(*" << param << "._pfn)(" << param << "._slink";
        }

        // actual arguments
        //
        if(nullptr != pArguments)
        {
            auto pParamList = pSubroutine->pType->as<ts::SubroutineType>()->paramList();

            auto paramIt = pParamList->begin();
            auto argIt = pArguments->begin();

            for(; argIt != pArguments->end(); ++argIt, ++paramIt)
            {
                assert(paramIt != pParamList->end());

                code << ", " << gen(*argIt);
            }

            assert(paramIt == pParamList->end());
        }

        code << (isStm ? ");\n" : ")");
        return code.str();
    }

    VarPtr visit(const ast::FuncCall* pFuncCall) override
    {
        std::stringstream code;
        code << _genCall(pFuncCall->pFunc, pFuncCall->pArguments, false);
        return allocStr(code);
    }

    VarPtr visit(const ast::Set* pSet) override
    {
        auto name = _genLocalName("_setLiteral");

        // generate the hoisted set literal definition
        //
        std::stringstream code;
        code << "_T_GenericSet " << name << ";\n";
        
        if(pSet->pValues != nullptr)
        {
            for(auto it = pSet->pValues->begin(); it != pSet->pValues->end(); ++it)
            {
                auto pVal = *it;

                code << name << ".set(";

                // handle the range (..) case
                //
                auto pBinaryOp = pVal->as<ast::BinaryOp>();
                if(nullptr != pBinaryOp && pBinaryOp->pOperator->token == Parser::T_DOTDOT)
                {
                    code << gen(pBinaryOp->pLeft) << ", " << gen(pBinaryOp->pRight);
                }
                else
                {
                    code << gen(pVal);
                }

                code << ");\n";
            }
        }

        code << "\n";
        _hoistCode(code.str(), !pSet->isConst());

        // generate the inlined code
        //
        return allocStr(name.c_str());
    }

    VarPtr visit(const ast::WriteArgExpr*) override
    {
        // WriteArgExpr should only appear as an argument to the write intrinsics
        //
        assert(!"not implemented");
        return VarPtr();
    }

    VarPtr visit(const ast::NopStm*) override
    {
        return allocStr("{ /* NOP */ }\n");
    }

    VarPtr visit(const ast::CompoundStm* pCompoundStm) override
    {
        std::stringstream code;

        auto& stmList = pCompoundStm->statements;
        for(auto it = stmList.begin(); it != stmList.end(); ++it)
        {
            if(it != stmList.begin())
                code << "\n";
            code << gen(*it);
        }

        return allocStr(code);
    }

    VarPtr visit(const ast::IfStm* pIfStm) override
    {
        auto condCode = gen(pIfStm->pCondition);
        auto thenCode = gen(pIfStm->pThenStm);

        std::stringstream code;

        code << "if(" << condCode << ")\n";
        code << genBlock(thenCode) << "\n";

        if(nullptr != pIfStm->pElseStm)
        {
            auto elseCode = gen(pIfStm->pElseStm);
            code << "else\n" << genBlock(elseCode) << "\n";
        }

        return allocStr(code);
    }

    VarPtr visit(const ast::CaseStm* pCaseStm) override
    {
        std::stringstream code;

        code << "switch(" << gen(pCaseStm->pValue) << ")\n{\n";

        auto pList = pCaseStm->pCaseList;
        for(auto it = pList->begin(); it != pList->end(); ++it)
        {
            if(nullptr == *it)
                continue;

            auto pConstList = (*it)->pConstList;
            assert(!pConstList->empty());

            if(it != pList->begin())
                code << "\n";

            for(auto constIt = pConstList->begin(); constIt != pConstList->end(); ++constIt)
            {
                code << "case " << genConst(*constIt) << ":\n";
            }

            code << indentBlock(gen((*it)->pStm));
            code << indentBlock("break;\n");
        }

        code << "}\n";
        return allocStr(code);
    }

    VarPtr visit(const ast::AssignStm* pAssignStm) override
    {
        std::stringstream code;
        code << gen(pAssignStm->pLValue) << " = ";
        code << gen(pAssignStm->pRValue) << ";\n";
        return allocStr(code);
    }

    VarPtr visit(const ast::WhileStm* pWhileStm) override
    {
        auto loopCode = gen(pWhileStm->pStm);
        auto condCode = gen(pWhileStm->pCondition);

        std::stringstream code;

        code << "while(" << condCode << ")\n";
        code << genBlock(loopCode) << "\n";

        return allocStr(code);
    }

    VarPtr visit(const ast::RepeatStm* pRepeatStm) override
    {
        auto loopCode = gen(pRepeatStm->pStm);
        auto condCode = gen(pRepeatStm->pCondition);

        std::stringstream code;

        code << "do\n" << genBlock(loopCode) << "\n";
        code << "while(!" << condCode << ");\n";

        return allocStr(code);
    }

    VarPtr visit(const ast::ForStm* pForStm) override
    {
        auto loopCode = gen(pForStm->pStm);
        auto startValue = gen(pForStm->pStartValue);
        auto endValue = gen(pForStm->pEndValue);
        auto index = gen(pForStm->pIndex);
        bool inc = (pForStm->pDirection->token == Parser::T_TO);

        std::stringstream code;

        code << (inc ? "_FOR_TO(" : "_FOR_DOWNTO(");
        code << index << ", " << startValue << ", " << endValue << ")\n";
        code << genBlock(loopCode) << "\n";
        code << "_FOR_END(" << index << ")\n";

        return allocStr(code);
    }

    VarPtr visit(const ast::GotoStm* pGotoStm) override
    {
        auto pExt = labelExt(pGotoStm->pTargetLabel);
        std::stringstream code;
        
        if(pGotoStm->isNonLocal)
        {
            assert(!pExt->nonLocalId.empty());
            code << "throw " << pExt->nonLocalId << ";\n";
        }
        else
        {
            assert(!pExt->genName.empty());
            code << "goto " << pExt->genName << ";\n";
        }

        return allocStr(code);
    }

    VarPtr visit(const ast::ProcCallStm* pProcCallStm) override
    {
        std::stringstream code;
        code << _genCall(pProcCallStm->pProc, pProcCallStm->pArguments, true);
        return allocStr(code);
    }
};


} // end namespace cpp


