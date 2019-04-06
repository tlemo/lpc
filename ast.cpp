
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

#include "ast.h"
#include "compilationContext.h"
#include "symbols.h"
#include "_parser.h"
#include "types.h"


namespace ast
{

///////////////////////////////////////////////////////////////////////////////
//
VarPtr ConstExpr::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr Intrinsic::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr VarExpr::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr ParamExpr::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr FuncPtr::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr TypeCast::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr BinaryOp::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr UnaryOp::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr ArrayIndex::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr FieldExpr::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr Indirection::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr FuncCall::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr Set::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr WriteArgExpr::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr NopStm::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr CompoundStm::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr IfStm::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr CaseStm::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr AssignStm::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr WhileStm::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr RepeatStm::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr ForStm::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr GotoStm::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }
VarPtr ProcCallStm::accept(Visitor* pVisitor) const { return pVisitor->visit(this); }


///////////////////////////////////////////////////////////////////////////////
//
static
Expr* castExpr(Expr* pValue, ts::Type* pDstType)
{
    return pValue->pType->isSameType(pDstType) ? pValue :
        new TypeCast(pValue, pDstType, TypeCast::ctxExpression, pValue->line);
}


///////////////////////////////////////////////////////////////////////////////
//
BinaryOp::BinaryOp(Expr* pLeft, Token* pOperator, Expr* pRight, int line) :
    Expr(line), pLeft(pLeft), pOperator(pOperator), pRight(pRight)
{
    auto pLT = pLeft->pType;
    auto pRT = pRight->pType;

    if(pLT->isDummy() || pRT->isDummy())
    {
        pType = new ts::DummyType(pOperator->line);
        return;
    }

    ts::Type* pResultType = nullptr;

    switch(pOperator->token)
    {
    case Parser::T_PLUS:
    case Parser::T_MINUS:
    case Parser::T_STAR:
        if(pLT->isSet() && pRT->isSet())
        {
            auto pLSetType = pLT->as<ts::SetType>();
            auto pRSetType = pRT->as<ts::SetType>();

            if(pLSetType->elemType()->isCompatible(pRSetType->elemType()))
            {
                pResultType = pLT->isSameType(pRT) ? pLT : ts::g_pGenericSetType;
            }
        }
        else if(pLT->isInteger() && pRT->isInteger())
            pResultType = ts::g_pIntegerType;
        else if(pLT->isNumber() && pRT->isNumber())
            pResultType = ts::g_pRealType;
        break;

    case Parser::T_SLASH:
        if(pLT->isNumber() && pRT->isNumber())
            pResultType = ts::g_pRealType;
        break;

    case Parser::T_DIV:
    case Parser::T_MOD:
        if(pLT->isInteger() && pRT->isInteger())
            pResultType = ts::g_pIntegerType;
        break;

    case Parser::T_EQ:
    case Parser::T_NE:
    case Parser::T_LT:
    case Parser::T_GT:
    case Parser::T_LE:
    case Parser::T_GE:
        if(pLT->isCompatible(pRT))
            pResultType = ts::g_pBoolType;
        break;

    case Parser::T_IN:
        if(pRT->isA<ts::SetType>() &&
            pRT->as<ts::SetType>()->elemType()->isCompatible(pLT))
        {
            pResultType = ts::g_pBoolType;
        }
        break;

    case Parser::T_OR:
    case Parser::T_AND:
        if(pLT->isBool() && pRT->isBool())
            pResultType = ts::g_pBoolType;
        break;

    case Parser::T_DOTDOT:
        if(pLT->isCompatible(pRT) && pLT->isOrdinal())
        {
            // NOTE: technically this would be a special 'range' type
            //   but for our limited use (set constructors) this is fine
            //
            pResultType = pLT;
        }
        break;

    default:
        assert(!"unexpected binary operator");
    }

    // invalid operands?
    //
    if (pResultType == nullptr)
    {
        context()->error(line, "invalid operand types (%s %s %s)",
            pLT->typeDef().c_str(), pOperator->name(), pRT->typeDef().c_str());
        pResultType = new ts::DummyType(pLT->line());
    }
    // implicit set type casts?
    //
    else if(pLT->isSet() && pRT->isSet() && !pLT->isSameType(pRT))
    {
        this->pLeft = castExpr(pLeft, ts::g_pGenericSetType);
        this->pRight = castExpr(pRight, ts::g_pGenericSetType);
    }

    pType = pResultType;
}


///////////////////////////////////////////////////////////////////////////////
//
UnaryOp::UnaryOp(Token* pOperator, Expr* pExpr, int line) :
    Expr(line), pOperator(pOperator), pExpr(pExpr)
{
    auto pT = pExpr->pType;

    if(pT->isDummy())
    {
        pType = new ts::DummyType(pOperator->line);
        return;
    }

    ts::Type* pResultType = nullptr;

    switch(pOperator->token)
    {
    case Parser::T_PLUS:
    case Parser::T_MINUS:
        if(pT->isNumber())
            pResultType = pT;
        break;

    case Parser::T_NOT:
        if(pT->isBool())
            pResultType = ts::g_pBoolType;
        break;

    default:
        assert(!"unexpected unary operator");
    }

    if(pResultType == nullptr)
    {
        context()->error(line, "invalid operand type (%s %s)",
            pOperator->name(), pT->typeDef().c_str());
        pResultType = new ts::DummyType(pT->line());
    }

    pType = pResultType;
}


///////////////////////////////////////////////////////////////////////////////
//
ArrayIndex::ArrayIndex(Expr* pArray, const ExprList* pIndexList, int line) :
    Expr(line), pObject(nullptr), pIndex(nullptr)
{
    assert(!pIndexList->empty());

    if(pArray->pType->isDummy())
    {
        pType = new ts::DummyType(pArray->pType->line());
        return;
    }

    pIndex = pIndexList->back();
    pObject = pArray;

    // for multi-dimensional arrays recursively index one dimension at a time
    //
    if(pIndexList->size() > 1)
    {
        auto pTmpIndexList = new ExprList(*pIndexList);
        pTmpIndexList->pop_back();

        pObject = new ArrayIndex(pArray, pTmpIndexList, line);
    }

    auto pArrayType = pObject->pType->as<ts::ArrayType>();

    if(pArrayType != nullptr)
    {
        if(pArrayType->indexType()->canBeAssigned(pIndex->pType))
        {
            pType = pArrayType->elemType();
        }
        else
        {
            context()->error(line,
                "invalid indexes for the array subscript operator");
        }
    }
    else
    {
        context()->error(line,
            "too many indexes or subscript applied to a non-array type");
    }

    if(pType == nullptr)
        pType = new ts::DummyType(pArray->pType->line());
}


///////////////////////////////////////////////////////////////////////////////
//
Indirection::Indirection(Expr* pObject, int line) :
    Expr(line), pObject(pObject)
{
    if(pObject->pType->isDummy())
    {
        pType = new ts::DummyType(pObject->pType->line());
        return;
    }

    const auto pPtrType = pObject->pType->as<ts::PointerType>();

    if(pPtrType != nullptr)
    {
        pType = pPtrType->baseType();
    }
    else
    {
        const auto pFileType = pObject->pType->as<ts::FileType>();

        if (pFileType != nullptr)
        {
            pType = pFileType->elemType();
        }
        else
        {
            context()->error(pObject->pType->line(), "indirection requires a pointer or file type");
        }
    }

    if(pType == nullptr)
    {
        pType = new ts::DummyType(pObject->pType->line());
    }
}


///////////////////////////////////////////////////////////////////////////////
//
FieldExpr::FieldExpr(obj::Field* pField, int line) :
    Expr(line), pField(pField)
{
    const auto pRecType = this->pField->pRecord->pType->as<ts::RecordType>();
    const auto& fieldMap = pRecType->fieldMap();

    auto it = fieldMap.find(this->pField->pId);
    assert(it != fieldMap.end());

    pType = it->second;
}


///////////////////////////////////////////////////////////////////////////////
//
FieldExpr::FieldExpr(Expr* pRecord, Identifier* pFieldId, int line) :
    Expr(line), pField(nullptr)
{
    if(!pRecord->pType->isDummy())
    {
        const auto pRecType = pRecord->pType->as<ts::RecordType>();

        if(pRecType != nullptr)
        {
            const auto& fieldMap = pRecType->fieldMap();
            auto it = fieldMap.find(pFieldId);

            if(it != fieldMap.end())
            {
                pField = new obj::Field(it->first, pRecord);
                pType = it->second;
            }
            else
            {
                context()->error(line, "there's no field named '%s'", pFieldId->name.c_str());
            }
        }
        else
        {
            context()->error(line, "left side of the field operator must be a record type");
        }
    }

    // failed to construct a valid FieldExpr?
    //
    if(pField == nullptr)
    {
        assert(pType == nullptr);
        pField = new obj::Field(pFieldId, pRecord);
        pType = new ts::DummyType(line);
    }

    assert(pType != nullptr);
}


///////////////////////////////////////////////////////////////////////////////
//
Set::Set(ExprList* pValues, int line) :
    Expr(line), pValues(pValues)
{
    ts::Type* pElemType = ts::g_pIntegerType;

    if(pValues != nullptr)
    {
        pElemType = pValues->front()->pType;

        if(pElemType->isA<ts::RangeType>())
            pElemType = pElemType->as<ts::RangeType>()->baseType();

        for(auto pValue : *pValues)
        {
            if(pValue->pType->isDummy())
            {
                pElemType = new ts::DummyType(line);
                break;
            }

            const ts::Type* pValueType = pValue->pType;

            if(pValueType->isA<ts::RangeType>())
                pValueType = pValueType->as<ts::RangeType>()->baseType();

            if(!pValueType->isCompatible(pElemType))
            {
                context()->error(line, "inconsistent set element types");
                break;
            }
        }
    }

    pType = new ts::SetType(pElemType, nullptr, line);
}


///////////////////////////////////////////////////////////////////////////////
//
AssignStm::AssignStm(Expr* pLValue, Expr* pRValue, int line) :
    Stm(line), pLValue(nullptr), pRValue(nullptr)
{
    // try to compensate for auto-func-calls
    //
    auto pFuncCall = pLValue->as<FuncCall>();
    if(nullptr != pFuncCall && pFuncCall->pArguments == nullptr)
    {
        pLValue = pFuncCall->pFunc;
    }

    // handle the assignments to the current funcition
    //
    if(pLValue->isA<FuncPtr>())
    {
        obj::Subroutine* pFunc = pLValue->as<FuncPtr>()->pFunc;

        if(pFunc->pType->isFunction())
        {
            pLValue = lookupObject(new Identifier("_fnvalue", line), false, pFunc->pScope);
        }
        else
        {
            context()->error(line, "can't assign values to a procedure");
            this->pLValue = pLValue;
            return;
        }
    }

    // generic lvalue semantic checks
    //
    if(!pLValue->isLValue())
    {
        context()->error(line, "assignment target must be a lvalue");
    }
    else if(!pLValue->pType->canBeAssigned(pRValue->pType))
    {
        context()->error(line, "value type incompatible with the assignment destination");
    }

    // do we need an implicit cast?
    //
    if(!pLValue->pType->isSameType(pRValue->pType))
    {
        pRValue = new TypeCast(pRValue, pLValue->pType, TypeCast::ctxAssignment, pRValue->line);
    }

    // finally set our pLValue and pRValue
    //
    this->pLValue = pLValue;
    this->pRValue = pRValue;
}


///////////////////////////////////////////////////////////////////////////////
//
ForStm::ForStm(Identifier* pIndexId, Expr* pStartValue, Token* pDirection, Expr* pEndValue, Stm* pStm, int line) :
    Stm(line), pIndex(nullptr), pStartValue(pStartValue),
    pDirection(pDirection), pEndValue(pEndValue), pStm(pStm)
{
    pIndex = lookupObject(pIndexId);

    if(pIndex->pType->isDummy())
        return;

    if(!pIndex->isA<VarExpr>() ||
        !pIndex->pType->canBeAssigned(pStartValue->pType))
    {
        context()->error(line, "for index must be a variable compatible with the start/end values");
        return;
    }

    assert(pIndex->isLValue());

    if(pIndex->as<VarExpr>()->pVariable->pScope->level !=
        context()->symbolTable()->currentScope()->level)
    {
        context()->error(line, "for index must be a local variable");
        return;
    }

    if(!pStartValue->pType->isOrdinal() ||
        !pEndValue->pType->isCompatible(pStartValue->pType))
    {
        context()->error(line, "for end/start values must be ordinals");
        return;
    }
}


///////////////////////////////////////////////////////////////////////////////
//
// checks a list of actual arguments against a subroutine type
//
static
void checkArguments(Identifier* pId, const ts::SubroutineType* pType, ExprList* pArguments, int line)
{
    auto paramList = pType->paramList();

    if(pArguments == nullptr)
    {
        if(!paramList->empty())
        {
            context()->error(line,
                "call to '%s' missing arguments",
                pId->name.c_str());
        }

        return;
    }

    assert(!pArguments->empty());

    auto paramIt = paramList->begin();
    auto argIt = pArguments->begin();

    for(;;)
    {
        bool endOfParams = (paramIt == paramList->end());
        bool endOfArgs = (argIt == pArguments->end());

        if(endOfParams != endOfArgs)
        {
            context()->error(line,
                "incorrect number of arguments when calling '%s'",
                pId->name.c_str());
            return;
        }
        else if(endOfParams)
        {
            // done
            //
            return;
        }

        auto pArg = *argIt;

        if(pArg->isA<WriteArgExpr>())
        {
            context()->error(line,
                "format specifiers can only be used for write and writeln");
            return;
        }
         
        if(paramIt->byRef)
        {
            // for "var" paramteters the actual argument type must match exactly
            //
            if(!paramIt->pType->isSameType(pArg->pType))
            {
                context()->error(line,
                    "invalid argument for var parameter '%s' when calling '%s' (types must match exactly)",
                    paramIt->pId->name.c_str(), pId->name.c_str());
                return;
            }

            if(!pArg->isLValue())
            {
                context()->error(line,
                    "'var' argument '%s' must be a lvalue when calling '%s'",
                    paramIt->pId->name.c_str(), pId->name.c_str());
                return;
            }

            auto pIndirection = pArg->as<ast::Indirection>();

            if(pIndirection != nullptr && pIndirection->pObject->pType->isFile())
            {
                context()->error(line, "passing file variables as 'var' arguments is not supported");
                return;
            }
        }
        else
        {
            if(!paramIt->pType->canBeAssigned(pArg->pType))
            {
                context()->error(line,
                    "invalid argument value for '%s' when calling '%s'",
                    paramIt->pId->name.c_str(), pId->name.c_str());
                return;
            }

            // do we need an implicit cast?
            //
            if(!paramIt->pType->isSameType(pArg->pType))
            {
                *argIt = new TypeCast(pArg, paramIt->pType, TypeCast::ctxArg, pArg->line);
            }
        }

        ++paramIt;
        ++argIt;
    }
}


///////////////////////////////////////////////////////////////////////////////
//
// returns an expression that evaluates to the value of the 'input' or 'output'
// file variables
//
static
Expr* implicitFileArg(int idx, int line)
{
    assert(idx >= 0 && idx < FIRST_ARG_FILE_IDX);

    auto name = context()->symbolTable()->programArgs()[idx];
    auto pId = new Identifier(name.c_str(), line);

    auto pExpr = lookupObject(pId, false, context()->symbolTable()->programScope());
    assert(pExpr->pType->isFile());

    return pExpr;
}


///////////////////////////////////////////////////////////////////////////////
//
// inject implicit intrinsic arguments as needed
//
static
ExprList* addImplicitArguments(const Intrinsic* pIntrinsic, ExprList* pArguments, int line)
{
    if(nullptr == pArguments)
        pArguments = new ExprList();

    switch(pIntrinsic->intrinsicId)
    {
    case obj::IN_EOF:
    case obj::IN_EOLN:
        if(pArguments->empty())
        {
            pArguments->push_front(implicitFileArg(INPUT_FILE_IDX, line));
        }
        break;

    case obj::IN_PAGE:
        if(pArguments->empty())
        {
            pArguments->push_front(implicitFileArg(OUTPUT_FILE_IDX, line));
        }
        break;

    case obj::IN_READ:
    case obj::IN_READLN:
        if(pArguments->empty() || !pArguments->front()->pType->isFile())
        {
            pArguments->push_front(implicitFileArg(INPUT_FILE_IDX, line));
        }
        break;

    case obj::IN_WRITE:
    case obj::IN_WRITELN:
        if(pArguments->empty() || !pArguments->front()->pType->isFile())
        {
            pArguments->push_front(implicitFileArg(OUTPUT_FILE_IDX, line));
        }
        break;
    }

    return pArguments;
}


///////////////////////////////////////////////////////////////////////////////
//
static
ts::Type* intrinsicReturnType(const Intrinsic* pIntrinsic,
    const ExprList* pArguments, int line)
{
    if(nullptr == pArguments || pArguments->size() != 1)
    {
        context()->error(line,
            "'%s' requires exactly one argument",
            obj::intrinsicName(pIntrinsic->intrinsicId));
        return new ts::DummyType(line);
    }

    ts::Type* pReturnType = nullptr;
    ts::Type* pArgType = pArguments->front()->pType;
    assert(nullptr != pArgType);

    switch(pIntrinsic->intrinsicId)
    {
    case obj::IN_ABS:
    case obj::IN_SQR:
        if(pArgType->isNumber())
        {
            if(pArgType->isReal())
                pReturnType = ts::g_pRealType;
            else
                pReturnType = ts::g_pIntegerType;
        }
        break;

    case obj::IN_SIN:
    case obj::IN_COS:
    case obj::IN_EXP:
    case obj::IN_LN:
    case obj::IN_SQRT:
    case obj::IN_ARCTAN:
        if(pArgType->isNumber())
            pReturnType = ts::g_pRealType;
        break;

    case obj::IN_TRUNC:
    case obj::IN_ROUND:
        if(pArgType->isReal())
            pReturnType = ts::g_pIntegerType;
        break;

    case obj::IN_ORD:
        if(pArgType->isOrdinal())
            pReturnType = ts::g_pIntegerType;
        break;

    case obj::IN_CHR:
        if(pArgType->isInteger())
            pReturnType = ts::g_pCharType;
        break;

    case obj::IN_SUCC:
    case obj::IN_PRED:
        if(pArgType->isOrdinal())
            pReturnType = pArgType;
        break;

    case obj::IN_ODD:
        if(pArgType->isInteger())
            pReturnType = ts::g_pBoolType;
        break;

    case obj::IN_EOF:
        if(pArgType->isFile())
            pReturnType = ts::g_pBoolType;
        break;

    case obj::IN_EOLN:
        {
            auto pFileType = pArgType->as<ts::FileType>();
            if(nullptr != pFileType && pFileType->isText())
                pReturnType = ts::g_pBoolType;
        }
        break;

    default:
        context()->error(line,
            "attempting to use intrinsic procedure '%s' as a function",
            obj::intrinsicName(pIntrinsic->intrinsicId));
        pReturnType = new ts::DummyType(line);
        break;
    }

    if(nullptr == pReturnType)
    {
        context()->error(line,
            "invalid arguments for '%s'",
            obj::intrinsicName(pIntrinsic->intrinsicId));
        pReturnType = new ts::DummyType(line);
    }
    
    return pReturnType;
}


///////////////////////////////////////////////////////////////////////////////
//
Expr* newFuncCall(Identifier* pId, ExprList* pArguments, int line)
{
    ts::Type* pReturnType = nullptr;
    Expr* pFunc = lookupObject(pId, false);

    if(pFunc->pType->isDummy())
    {
        return new FuncCall(pFunc, pArguments, pFunc->pType, line);
    }

    const Intrinsic* pIntrinsic = pFunc->as<Intrinsic>();

    if(nullptr != pIntrinsic)
    {
        pArguments = addImplicitArguments(pIntrinsic, pArguments, line);
        pReturnType = intrinsicReturnType(pIntrinsic, pArguments, line);
    }
    else if(pFunc->pType->isSubroutine())
    {
        assert(pFunc->isA<FuncPtr>() || pFunc->isA<ParamExpr>());
        const ts::SubroutineType* pSubroutineType = pFunc->pType->as<ts::SubroutineType>();

        if(pSubroutineType->isFunction())
        {
            checkArguments(pId, pSubroutineType, pArguments, line);
            pReturnType = pSubroutineType->returnType();
        }
        else
        {
            context()->error(pId->line,
                "attempting to use procedure '%s' as a function",
                pId->name.c_str());
        }
    }
    else
    {
        context()->error(pId->line,
            "'%s' is not a function",
            pId->name.c_str());
    }

    if(nullptr == pReturnType)
        pReturnType = new ts::DummyType(pId->line);

    return new FuncCall(pFunc, pArguments, pReturnType, line);
}


///////////////////////////////////////////////////////////////////////////////
//
static
void checkReadArguments(bool readln, const ExprList* pArguments, int line)
{
    const char* name = readln ? "readln" : "read";

    auto it = pArguments->begin();
    auto pFileType = (*it)->pType->as<ts::FileType>();

    if(nullptr == pFileType)
    {
        context()->error(line, "missing file argument for '%s'", name);
        return;
    }

    if(readln && !pFileType->isText())
    {
        context()->error(line, "readln() only works on text files");
        return;
    }

    ++it;

    if(!readln && it == pArguments->end())
    {
        context()->error(line, "read() requires at least one value argument");
        return;
    }

    while(it != pArguments->end())
    {
        auto pArgType = (*it)->pType;

        if(!(*it)->isLValue())
        {
            context()->error(line, "%s requires lvalue arguments", name);
            return;
        }

        if(pFileType->isText())
        {
            if(!pArgType->isNumber() &&
                !pArgType->isString() &&
                !pArgType->isChar())
            {
                context()->error(line, "invalid argument type for %s()", name);
                return;
            }
        }
        else
        {
            if(!pArgType->isSameType(pFileType->elemType()))
            {
                context()->error(line, "invalid argument type for %s()", name);
                return;
            }
        }

        if((*it)->isA<ast::WriteArgExpr>())
        {
            context()->error(line, "write format specifiers can't be used for %s()", name);
            return;
        }

        ++it;
    }
}


///////////////////////////////////////////////////////////////////////////////
//
static
void checkWriteArguments(bool writeln, ExprList* pArguments, int line)
{
    const char* name = writeln ? "writeln" : "write";

    auto it = pArguments->begin();
    auto pFileType = (*it)->pType->as<ts::FileType>();

    if(nullptr == pFileType)
    {
        context()->error(line, "missing file argument for '%s'", name);
        return;
    }

    if(writeln && !pFileType->isText())
    {
        context()->error(line, "writeln() only works on text files");
        return;
    }

    ++it;

    if(!writeln && it == pArguments->end())
    {
        context()->error(line, "writeln() requires at least one value argument");
        return;
    }

    while(it != pArguments->end())
    {
        auto pArg = *it;
        auto pArgType = pArg->pType;

        if(pFileType->isText())
        {
            if(!pArgType->isBool() &&
                !pArgType->isNumber() &&
                !pArgType->isString() &&
                !pArgType->isChar())
            {
                context()->error(line, "invalid argument type for %s()", name);
                return;
            }
        }
        else
        {
            if(pArg->isA<ast::WriteArgExpr>())
            {
                context()->error(line, "write format specifiers only work on text files");
                return;
            }

            if(!pFileType->elemType()->canBeAssigned(pArgType))
            {
                context()->error(line, "invalid argument type for %s()", name);
                return;
            }

            // do we need an implicit cast?
            //
            if(!pFileType->elemType()->isSameType(pArgType))
            {
                *it = new TypeCast(pArg, pFileType->elemType(), TypeCast::ctxArg, pArg->line);
            }
        }

        ++it;
    }
}


///////////////////////////////////////////////////////////////////////////////
//
static
void checkNewDisposeArguments(const ExprList* pArguments, const char* name, int line)
{
    if(pArguments == nullptr || pArguments->empty())
    {
        context()->error(line, "missing arguments for %s()", name);
        return;
    }

    // pointer
    //
    auto it = pArguments->begin();

    if(!(*it)->pType->isPointer() || !(*it)->isLValue())
    {
        context()->error(line, "the first argument to %s() must be a pointer lvalue", name);
        return;
    }

    // make sure it's really a ts::PointerType before casting
    // (could be a fake, ex. ts::DummyType)
    //
    if(!(*it)->pType->isA<ts::PointerType>())
    {
        return;
    }

    // try to get the base type assuming it's a record type
    //
    auto pType = (*it)->pType->as<ts::PointerType>()->baseType()->as<ts::RecordType>();

    if(nullptr == pType)
    {
        if(pArguments->size() != 1)
            context()->error(line, "variant selectors can be specified only for record types");

        return;
    }

    auto pFields = pType->fields();

    // optional variant selectors (for record types)
    //
    while(++it != pArguments->end())
    {
        auto pConst = (*it)->as<ast::ConstExpr>();

        if(nullptr == pConst)
        {
            context()->error(line, "variant selector values must be constants");
            return;
        }

        pFields = pFields->getVariant(pConst->pConstant);

        if(nullptr == pFields)
        {
            context()->error(line, "invalid variant selector values");
            return;
        }
    }
}


///////////////////////////////////////////////////////////////////////////////
//
static
void checkPackArguments(const ExprList* pArguments, int line)
{
    if(pArguments == nullptr || pArguments->size() != 3)
    {
        context()->error(line, "pack() requires exactly three arguments");
        return;
    }

    // source array (A) checks
    //
    auto it = pArguments->begin();

    if(!(*it)->pType->isArray())
    {
        context()->error(line, "expecting a source array for pack()");
        return;
    }

    auto pArrayAType = (*it)->pType->as<ts::ArrayType>();

    if(pArrayAType->elemType()->isArray())
    {
        context()->error(line, "pack() only supports single dimension arrays");
        return;
    }
    
    // base index expression
    //
    ++it;

    if(!(*it)->pType->isOrdinal())
    {
        context()->error(line, "base index expression must be an ordinal for pack()");
        return;
    }
    
    // destination array (Z) checks
    //
    ++it;

    if(!(*it)->pType->isArray() || !(*it)->isLValue())
    {
        context()->error(line, "expecting a destination array for pack()");
        return;
    }

    auto pArrayZType = (*it)->pType->as<ts::ArrayType>();

    if(pArrayZType->elemType()->isArray())
    {
        context()->error(line, "pack() only supports single dimension arrays");
        return;
    }

    if(!pArrayZType->elemType()->canBeAssigned(pArrayAType->elemType()))
    {
        context()->error(line, "incompatible array base types for pack()");
        return;
    }
}


///////////////////////////////////////////////////////////////////////////////
//
static
void checkUnpackArguments(const ExprList* pArguments, int line)
{
    if(pArguments == nullptr || pArguments->size() != 3)
    {
        context()->error(line, "unpack() requires exactly three arguments");
        return;
    }

    // source array (Z) checks
    //
    auto it = pArguments->begin();

    if(!(*it)->pType->isArray())
    {
        context()->error(line, "expecting a source array for unpack()");
        return;
    }
    
    auto pArrayZType = (*it)->pType->as<ts::ArrayType>();

    if(pArrayZType->elemType()->isArray())
    {
        context()->error(line, "unpack() only supports single dimension arrays");
        return;
    }
    
    // destination array (A) checks
    //
    ++it;

    if(!(*it)->pType->isArray() || !(*it)->isLValue())
    {
        context()->error(line, "expecting a destination array for unpack()");
        return;
    }
    
    auto pArrayAType = (*it)->pType->as<ts::ArrayType>();

    if(pArrayAType->elemType()->isArray())
    {
        context()->error(line, "unpack() only supports single dimension arrays");
        return;
    }

    if(!pArrayAType->elemType()->canBeAssigned(pArrayZType->elemType()))
    {
        context()->error(line, "incompatible array base types for unpack()");
        return;
    }
    // base index expression
    //
    ++it;

    if(!(*it)->pType->isOrdinal())
    {
        context()->error(line, "base index expression must be an ordinal for unpack()");
        return;
    }
}


///////////////////////////////////////////////////////////////////////////////
//
static
void checkHaltArguments(const ExprList* pArguments, int line)
{
    if(pArguments != nullptr && !pArguments->empty())
    {
        context()->error(line, "halt() doesn't take any arguments");
    }
}


///////////////////////////////////////////////////////////////////////////////
//
static
void checkFileOpArguments(const Intrinsic* pIntrinsic, const ExprList* pArguments, int line)
{
    if(pArguments == nullptr ||
        pArguments->size() != 1 ||
        !pArguments->front()->pType->isFile())
    {
        context()->error(line,
            "%s() takes exactly one file argument",
            obj::intrinsicName(pIntrinsic->intrinsicId));
    }
}


///////////////////////////////////////////////////////////////////////////////
//
// validates and potentially alter the actual arguments
//
static
void checkIntrinsicArguments(const Intrinsic* pIntrinsic, ExprList* pArguments, int line)
{
    switch(pIntrinsic->intrinsicId)
    {
    case obj::IN_REWRITE:
    case obj::IN_PUT:
    case obj::IN_RESET:
    case obj::IN_GET:
    case obj::IN_PAGE:
        checkFileOpArguments(pIntrinsic, pArguments, line);
        break;

    case obj::IN_READ:
        checkReadArguments(false, pArguments, line);
        break;

    case obj::IN_READLN:
        checkReadArguments(true, pArguments, line);
        break;

    case obj::IN_WRITE:
        checkWriteArguments(false, pArguments, line);
        break;

    case obj::IN_WRITELN:
        checkWriteArguments(true, pArguments, line);
        break;

    case obj::IN_NEW:
        checkNewDisposeArguments(pArguments, "new", line);
        break;

    case obj::IN_DISPOSE:
        checkNewDisposeArguments(pArguments, "dispose", line);
        break;

    case obj::IN_PACK:
        checkPackArguments(pArguments, line);
        break;

    case obj::IN_UNPACK:
        checkUnpackArguments(pArguments, line);
        break;

    case obj::IN_HALT:
        checkHaltArguments(pArguments, line);
        break;

    default:
        context()->error(line,
            "attempting to use intrinsic function '%s' as a procedure",
            obj::intrinsicName(pIntrinsic->intrinsicId));
        break;
    }
}


///////////////////////////////////////////////////////////////////////////////
//
Stm* newProcCall(Identifier* pId, ExprList* pArguments, int line)
{
    Expr* pProc = lookupObject(pId, false);

    if(pProc->pType->isDummy())
    {
        // ignore
    }
    else if(pProc->isA<Intrinsic>())
    {
        auto pIntrinsic = pProc->as<Intrinsic>();
        pArguments = addImplicitArguments(pIntrinsic, pArguments, line);
        checkIntrinsicArguments(pIntrinsic, pArguments, line);
    }
    else if(pProc->pType->isSubroutine())
    {
        assert(pProc->isA<FuncPtr>() || pProc->isA<ParamExpr>());
        const ts::SubroutineType* pSubroutineType = pProc->pType->as<ts::SubroutineType>();

        if(pSubroutineType->isFunction())
        {
            context()->error(pId->line,
                "attempting to use function '%s' as a procedure",
                pId->name.c_str());
        }
        else
        {
            checkArguments(pId, pSubroutineType, pArguments, line);
        }
    }
    else
    {
        context()->error(pId->line,
            "'%s' is not a procedure",
            pId->name.c_str());
    }

    return new ProcCallStm(pProc, pArguments, line);
}


///////////////////////////////////////////////////////////////////////////////
//
void Stm::setLabel(obj::Constant* pLabelConst)
{
    if(pLabelConst != nullptr)
    {
        assert(pLabelConst->pType->isInteger());
        Identifier* pId = new Identifier(pLabelConst->intValue, line);
        pLabel = context()->symbolTable()->findLabel(pId);
    }
}


///////////////////////////////////////////////////////////////////////////////
//
GotoStm::GotoStm(obj::Constant* pLabelConst, int line) :
    Stm(line), pTargetLabel(nullptr), isNonLocal(false)
{
    assert(pLabelConst->pType->isInteger());

    Identifier* pId = new Identifier(pLabelConst->intValue, line);
    pTargetLabel = context()->symbolTable()->findLabel(pId);

    // non-local goto?
    //
    if(pTargetLabel->pScope->level !=
        context()->symbolTable()->currentScope()->level)
    {
        context()->warning(line, "non-local goto");
        isNonLocal = true;
        pTargetLabel->markNonLocal();
    }
}


}


