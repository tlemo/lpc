
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

// backend emitting LLVM code

#pragma once

#include "symbols.h"
#include "ast.h"
#include "objects.h"
#include "types.h"
#include "compilationContext.h"
#include "backend.h"
#include "_parser.h"

#include <string>
#include <vector>
#include <unordered_map>
#include <sstream>
#include <tuple>
#include <iomanip>

using namespace std;


namespace llvm
{

class LlvmBackend;


///////////////////////////////////////////////////////////////////////////////
//
// LLVM metadata
//
struct Metadata
{
    enum class Kind { None, Generic, Type, Enum, Global };

    string id;
    string def;
    Kind kind = Kind::None;
};


///////////////////////////////////////////////////////////////////////////////
//
// backend specific information for various data structures
//
struct TypeExt
{
    // type name (it may be one of the LLVM built-in type names)
    //
    string genName;

    // the LLVM IR definition of the type
    // (may be empty if it maps to a built-in type)
    //
    string def;

    // the size and alignment in bytes
    //
    int size = -1;
    int alignment = -1;

    // debug information
    //
    const Metadata* pMetadata = nullptr;

    // field -> offset mapping
    // (for record types)
    //
    unordered_map<string, int> fields;
};

struct ConstExt
{
    string genName;
};

struct VarExt
{
    string genName;
};

struct ParamExt
{
    string genName;
};

struct SubroutineExt
{
    string genName;
    string frameName;
};

struct ScopeExt
{
    string genName;
};

struct LabelExt
{
    string genName;
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

// this is the magic "hidden" line number used to mark compiler-generated code
//
constexpr int HIDDEN_CODE = 0xfeefee;

// outputs a line # comment
inline
string genLine(int line)
{
    if(line == -1)
        line = 0;

    stringstream code;

    if(line == HIDDEN_CODE)
        code << "; compiler-generated\n";
    else
        code << "; line " << line << "\n";

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


///////////////////////////////////////////////////////////////////////////////
//
// a type definition generator
//
// NOTE: this implementation of the ts::Visitor doesn't use the return value
//  from the "visit()" methods (it sets the appropriate TypeExt fields instead)
//
class TypeGen : public ts::Visitor
{
    // the size/alignment of a pointer
    // (we use 8 bytes to make things run across 32/64bit platforms)
    //
    static constexpr int PTR_SIZE = 8;
    static constexpr int PTR_ALIGNMENT = 8;

    struct FieldOffset {
        string name;
        int offset = -1;
    };

    struct FieldsLayout
    {
        vector<FieldOffset> fields;
        int size = -1;
        int alignment = -1;
    };

public:
    TypeGen(LlvmBackend* pBackend) : m_pBackend(pBackend) {}

public:
    void gen(ts::Type* pType);

private:
    VarPtr visit(ts::VoidType* pType) override;
    VarPtr visit(ts::IntegerType* pType) override;
    VarPtr visit(ts::CharType* pType) override;
    VarPtr visit(ts::BoolType* pType) override;
    VarPtr visit(ts::RealType* pType) override;
    VarPtr visit(ts::EnumType* pType) override;
    VarPtr visit(ts::SetType* pType) override;
    VarPtr visit(ts::RecordType* pType) override;
    VarPtr visit(ts::ArrayType* pType) override;
    VarPtr visit(ts::PointerType* pType) override;
    VarPtr visit(ts::FileType* pType) override;
    VarPtr visit(ts::SubroutineType* pType) override;
    VarPtr visit(ts::RangeType* pType) override;

    FieldsLayout _fieldsLayout(const ts::RecordFields* pFields, int offset = 0);

private:
    LlvmBackend* m_pBackend = nullptr;
};


///////////////////////////////////////////////////////////////////////////////
//
class LlvmBackend : public Backend, public ast::Visitor
{
    friend class TypeGen;

private:
    Scope* m_pCurrentScope = nullptr;

    // per scope state
    //
    ts::TypeList m_typeList;
    obj::VarList m_varList;
    obj::ParamList m_paramList;

    // global (per program) state
    //
    vector<const Metadata*> m_metadata;
    int m_metadataIdGen = 0;

    const Metadata* m_sourceFileMd = nullptr;

public:
    LlvmBackend() = default;

    const char* targetName() const override { return "llvm"; }

private:
    const Metadata* _newMetadata(Metadata::Kind kind, const string& def)
    {
        stringstream newMetadataId;
        newMetadataId << "!" << m_metadataIdGen++;

        auto pMetadata = new Metadata{ newMetadataId.str(), def, kind };
        m_metadata.push_back(pMetadata);

        return pMetadata;
    }

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
        code << "\n" << genLine(m_pCurrentScope->line);
        code << ";================================================================================\n";
        code << "; scope: " << friendlyName << " (level : " << m_pCurrentScope->level << ")\n";
        write(code);
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
        std::stringstream code;

        // generate the statement "header"
        // (line number and optional label)
        //
        if(NO_LOCATION != pStm->line)
            code << TAB << genLine(pStm->line);

        if(nullptr != pStm->pLabel)
        {
            const auto pExt = ext(pStm->pLabel);
            assert(!pExt->genName.empty());
            code << pExt->genName << ":\n";
        }

        // the actual code
        //
        code << pStm->accept(this).get<const char>();

        return allocStr(code).get<const char>();
    }

    // backend interface
    //
private:
    const char* _outputExt() const override { return ".ll"; }

    void _outputMetadata();

    void _start() override
    {
        m_metadata.clear();
        m_metadataIdGen = 0;

        // source file metadata
        stringstream srcFile;
        srcFile << "!DIFile(filename: \"" <<
            ::PathFindFileName(context()->commandLine()->getInputName()) <<
            "\", checksumkind: CSK_None)";
        m_sourceFileMd = _newMetadata(Metadata::Kind::Generic, srcFile.str());
    }

    void _end() override
    {
        _outputMetadata();
    }

    // this is the main entry point for generating code for a scope
    //
    void _generate(Scope* pScope, bool postOrder) override
    {
        assert(pScope->category != Scope::scRecord);

        if(postOrder)
            return;
        
        _setCurrentScope(pScope);

        // reset per-function state
        //
        m_typeList.clear();
        m_varList.clear();
        m_paramList.clear();
        // TODO

        // generate symbols (types, consts, locals...)
        //
        for(const auto& [_, pSymbol] : pScope->symMap)
        {
            switch (pSymbol->category)
            {
            case Symbol::scConst:
                _generateConst(pSymbol->pId->name, pSymbol->pConstant);
                break;
            case Symbol::scParameter:
                _generateParam(pSymbol->pId->name, pSymbol->pParameter);
                break;
            case Symbol::scVariable:
                _generateVar(pSymbol->pId->name, pSymbol->pVariable);
                break;
            case Symbol::scType:
                _generateType(pSymbol->pType);
                break;
            case Symbol::scLabel:
                _generateLabel(pSymbol->pLabel);
                break;
            default:
                // nothing to do for other kinds of symbols
                break;
            }
        }

        // set up the frame name for subroutines
        //
        // TODO

        _outputTypes();

        // generate the subroutine definition
        // (including the activation record)
        //
        if(pScope->category == Scope::scProgram ||
            pScope->category == Scope::scSubroutine)
        {
            assert(pScope->pSubroutine->pScope == pScope);
            _outputFrame(pScope->pSubroutine);
            _outputSubroutine(pScope->pSubroutine);
        }
    }

    string _genPrototype(const ts::SubroutineType* pType, string name)
    {
        stringstream proto;

        // return type
        //
        if(pType->isFunction())
        {
            _generateType(pType->returnType());
            proto << ext(pType->returnType())->genName << " ";
        }
        else
            proto << "void ";

        // name
        //
        proto << name;

        // arguments
        //
        proto << "(";
        bool firstParam = true;
        for(const auto& param : *pType->paramList())
        {
            _generateType(param.pType);

            if (!firstParam)
                proto << ", ";
            firstParam = false;

            // TODO: byref
            proto << ext(param.pType)->genName;
            if(param.byRef)
                proto << "&";
            proto << " " << param.pId->name;
        }

        proto << ")";

        return proto.str();
    }

    void _outputFrame(obj::Subroutine* pSubroutine)
    {
        std::stringstream code;

        if(pSubroutine->pScope->category == Scope::scProgram)
        {
            assert(m_paramList.empty());
            assert(!pSubroutine->hasSlink());

            code << "\n; program variables\n";
            for (const auto pVar : m_varList)
            {
                code << ext(pVar)->genName << " = dso_local global " <<
                    ext(pVar->pType)->genName << " zeroinitializer\n";
            }
        }
        else
        {
            /* TODO
            auto pExt = ext(pSubroutine);

            assert(pExt->frameName.empty());
            pExt->frameName = _genName("", "%Frame_");

            code << "\n; activation record\n";
            code << pExt->frameName << " = type\n{\n";

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
            */
        }

        write(code);
    }

    void _outputSubroutine(obj::Subroutine* pSubroutine)
    {
        // TODO
    }

    void _outputTypes()
    {
        if (m_typeList.empty())
            return;

        std::stringstream code;

        code << "\n; types\n";

        for (auto pType : m_typeList)
        {
            const auto pExt = ext(pType);
            code << pExt->genName << " = type " << pExt->def << "\n";
        }

        write(code);
    }

    void _generateType(ts::Type* pType)
    {
        auto pExt = ext(pType);

        // if it has a name we can assume it's been already generated
        //
        if(pExt->genName.empty())
        {
            TypeGen(this).gen(pType);
            assert(!pExt->genName.empty());

            if(!pExt->def.empty())
                m_typeList.push_back(pType);
        }
    }

    void _generateLabel(obj::Label* pLabel)
    {
        auto pExt = ext(pLabel);
        // TODO
    }

    void _generateConst(const string& idName, obj::Constant* pConst)
    {
        _generateType(pConst->pType);

        auto pExt = ext(pConst);
        // TODO
    }

    void _generateParam(const string& idName, obj::Parameter* pParam)
    {
        assert(m_pCurrentScope->category == Scope::scSubroutine);

        _generateType(pParam->pType);

        auto pExt = ext(pParam);
        // TODO

        m_paramList.push_back(pParam);
    }

    void _generateVar(const string& idName, obj::Variable* pVar)
    {
        _generateType(pVar->pType);

        auto pExt = ext(pVar);
        assert(pExt->genName.empty());
        pExt->genName = "@" + idName;

        m_varList.push_back(pVar);
    }

    // AST visitor interface
    //
private:
    VarPtr visit(const ast::ConstExpr* pConstExpr) override
    {
        _generateType(pConstExpr->pType);

        stringstream code;
        // TODO
        return allocStr(code);
    }

    // ast::Intrinsic should only appear part of a intrinsic call
    //
    VarPtr visit(const ast::Intrinsic*) override
    {
        assert(!"not implemented");
        return VarPtr();
    }

    VarPtr visit(const ast::VarExpr* pVarExpr) override
    {
        auto pVar = pVarExpr->pVariable;

        _generateType(pVar->pType);

        stringstream code;
        // TODO
        return allocStr(code);
    }

    VarPtr visit(const ast::ParamExpr* pParamExpr) override
    {
        auto pParam = pParamExpr->pParameter;

        _generateType(pParam->pType);

        stringstream code;
        // TODO
        return allocStr(code);
    }

    // generates a "subroutine pointer object"
    //
    VarPtr visit(const ast::FuncPtr* pFuncPtr) override
    {
        auto pFunc = pFuncPtr->pFunc;
        auto pScope = pFunc->pScope;

        stringstream code;
        // TODO
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
        // TODO
        return allocStr(code);
    }

    // generates the code for the right (op, T1, T2) operator overload
    //
    VarPtr visit(const ast::BinaryOp* pBinaryOp) override
    {
        auto pLeft = pBinaryOp->pLeft;
        auto pRight = pBinaryOp->pRight;

        const auto pResultType = pBinaryOp->pType;
        const auto token = pBinaryOp->pOperator->token;

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

            // TODO
        }
        // a IN b ?
        //
        else if(token == Parser::T_IN)
        {
            assert(pResultType->isBool());
            assert(pLeft->pType->isOrdinal());
            assert(pRight->pType->isSet());

            // TODO
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

            // TODO
        }
        // boolean and/or operators?
        //
        // NOTE: the Pascal specification doesn't guarantee short-circuit semantics
        // for logical AND/OR operators but some of the existing programs depend on it
        //
        else if(token == Parser::T_AND || token == Parser::T_OR)
        {
            assert(pResultType->isBool());
            assert(pLeft->pType->isBool());
            assert(pRight->pType->isBool());

            // TODO
        }
        // everything else...
        //
        else
        {
            // implicit conversion to "real"?
            //
            const bool castToReal = 
                token == Parser::T_SLASH ||
                pLeft->pType->isReal() ||
                pRight->pType->isReal();

            // TODO

            // operator-specific code generation
            //
            switch (token)
            {
            case Parser::T_EQ:
                // TODO
                break;

            case Parser::T_LT:
                // TODO
                break;

            case Parser::T_GT:
                // TODO
                break;

            case Parser::T_NE:
                // TODO
                break;

            case Parser::T_LE:
                // TODO
                break;

            case Parser::T_GE:
                // TODO
                break;

            case Parser::T_PLUS:
                // TODO
                break;

            case Parser::T_MINUS:
                // TODO
                break;

            case Parser::T_STAR:
                // TODO
                break;

            case Parser::T_DIV:
            case Parser::T_SLASH:
                // TODO
                break;

            case Parser::T_MOD:
                assert(pLeft->pType->isInteger());
                // TODO
                break;

            default:
                assert(!"unexpected operator");
            }
        }

        return allocStr(code);
    }

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
            // TODO
            break;

        case Parser::T_NOT:
            assert(pUnaryOp->pType->isBool());
            // TODO
            break;

        default:
            assert(!"unexpected operator");
        }

        return allocStr(code);
    }

    VarPtr visit(const ast::ArrayIndex* pArrayIndex) override
    {
        const auto pElemType = pArrayIndex->pType;
        const auto pArrayType = pArrayIndex->pObject->pType;

        _generateType(pElemType);
        _generateType(pArrayType);

        stringstream code;
        // TODO
        return allocStr(code);
    }

    VarPtr visit(const ast::FieldExpr* pFieldUse) override
    {
        const auto pFieldType = pFieldUse->pType;
        const auto pRecordType = pFieldUse->pField->pRecord->pType;

        _generateType(pFieldType);
        _generateType(pRecordType);

        stringstream code;
        // TODO
        return allocStr(code);
    }

    VarPtr visit(const ast::Indirection* pIndirection) override
    {
        const auto pType = pIndirection->pType;

        _generateType(pType);

        stringstream code;
        // TODO
        return allocStr(code);
    }

    string _expandRead(ast::ExprList* pArguments, bool readln)
    {
        stringstream code;
        // TODO
        return code.str();
    }

    string _expandWrite(ast::ExprList* pArguments, bool writeln)
    {
        stringstream code;
        // TODO
        return code.str();
    }

    string _expandTranscendental(const char* name, ast::ExprList* pArguments)
    {
        assert(nullptr != pArguments);
        assert(pArguments->size() == 1);

        stringstream code;
        // TODO
        return code.str();
    }

    string _expandSqr(ast::ExprList* pArguments)
    {
        assert(nullptr != pArguments);
        assert(pArguments->size() == 1);

        stringstream code;
        // TODO
        return code.str();
    }

    string _expandAbs(ast::ExprList* pArguments)
    {
        assert(nullptr != pArguments);
        assert(pArguments->size() == 1);

        stringstream code;
        // TODO
        return code.str();
    }

    string _expandFileIntrinsic(obj::IntrinsicId intrinsicId, ast::ExprList* pArguments)
    {
        const static unordered_map<obj::IntrinsicId, string> fileIntrinsics = 
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
        // TODO
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
    //  ... TODO ...
    //
    string _expandPack(ast::ExprList* pArguments, int line)
    {
        assert(pArguments->size() == 3);

        stringstream code;
        // TODO
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
    //  ... TODO ...
    //
    string _expandUnpack(ast::ExprList* pArguments, int line)
    {
        assert(pArguments->size() == 3);

        stringstream code;
        // TODO
        return code.str();
    }

    string _expandOdd(ast::ExprList* pArguments)
    {
        assert(nullptr != pArguments);
        assert(pArguments->size() == 1);

        stringstream code;
        // TODO
        return code.str();
    }

    string _expandHalt()
    {
        stringstream code;
        // TODO
        return code.str();
    }

    string _expandIncDec(ast::ExprList* pArguments, bool inc)
    {
        assert(nullptr != pArguments);
        assert(pArguments->size() == 1);

        stringstream code;
        // TODO
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
        // TODO
        return code.str();
    }

    string _expandDispose(ast::ExprList* pArguments, int line)
    {
        assert(nullptr != pArguments);
        assert(pArguments->size() >= 1);

        stringstream code;
        // TODO
        return code.str();
    }

    string _expandNew(ast::ExprList* pArguments, int line)
    {
        assert(nullptr != pArguments);
        assert(pArguments->size() >= 1);

        stringstream code;
        // TODO
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
                // TODO
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
                // TODO
            }
        }

        return code.str();
    }

    // generate a subroutine (func/proc) call, either a direct call
    // or an indirect call through a subroutine pointer
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
        // TODO
        return code.str();
    }

    VarPtr visit(const ast::FuncCall* pFuncCall) override
    {
        _generateType(pFuncCall->pType);

        auto pExt = ext(pFuncCall->pType);

        stringstream code;
        // TODO
        return allocStr(code);
    }

    VarPtr visit(const ast::Set* pSet) override
    {
        _generateType(pSet->pType);

        stringstream code;
        // TODO
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
        // TODO
        return allocStr(code);
    }

    VarPtr visit(const ast::CompoundStm* pCompoundStm) override
    {
        stringstream code;
        for(auto pStm : pCompoundStm->statements)
            code << gen(pStm);
        return allocStr(code);
    }

    VarPtr visit(const ast::IfStm* pIfStm) override
    {
        stringstream code;
        // TODO
        return allocStr(code);
    }

    VarPtr visit(const ast::CaseStm* pCaseStm) override
    {
        stringstream code;
        // TODO
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
        // TODO
        return code.str();
    }

    // generates the assignment to a "lvalue"
    //
    VarPtr visit(const ast::AssignStm* pAssignStm) override
    {
        stringstream code;
        // TODO
        return allocStr(code);
    }

    VarPtr visit(const ast::WhileStm* pWhileStm) override
    {
        stringstream code;
        // TODO
        return allocStr(code);
    }

    VarPtr visit(const ast::RepeatStm* pRepeatStm) override
    {
        stringstream code;
        // TODO
        return allocStr(code);
    }

    VarPtr visit(const ast::ForStm* pForStm) override
    {
        stringstream code;
        // TODO
        return allocStr(code);
    }

    // for local GOTOs:
    //
    //      ... TODO ...
    //
    // non-local GOTOs:
    //
    //      ... TODO ...
    //
    VarPtr visit(const ast::GotoStm* pGotoStm) override
    {
        std::stringstream code;
        
        if(pGotoStm->isNonLocal)
        {
            assert(pGotoStm->pTargetLabel->isNonLocalTarget());
            // TODO
        }
        else
        {
            const auto pExt = ext(pGotoStm->pTargetLabel);
            assert(!pExt->genName.empty());
            // TODO
        }

        return allocStr(code);
    }

    VarPtr visit(const ast::ProcCallStm* pProcCallStm) override
    {
        return allocStr(_genCall(pProcCallStm->pProc, pProcCallStm->pArguments));
    }
};

} // end namespace llvm

