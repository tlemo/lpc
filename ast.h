
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

// Abstract Syntax Tree (AST)

#pragma once

#include <assert.h>
#include <list>

#include "common.h"
#include "stringTable.h"
#include "types.h"
#include "objects.h"


namespace ast
{

class Visitor;


///////////////////////////////////////////////////////////////////////////////
//
// the base class for all AST nodes
//
struct Node : private _DontCopy
{
    int line;

public:
    Node(int line) : line(line) {}
    virtual ~Node() {}

    template<class T>
    const T* as() const
    {
        return dynamic_cast<const T*>(this);
    }

    template<class T>
    bool isA() const
    {
        return dynamic_cast<const T*>(this) != nullptr;
    }

    virtual VarPtr accept(Visitor*) const
    {
        assert(!"unexpected");
        return VarPtr();
    }
};


///////////////////////////////////////////////////////////////////////////////
//
// base class for expressions
//
struct Expr : public Node
{
    ts::Type* pType;

    Expr(int line) : Node(line), pType(nullptr) {}

    virtual bool isLValue() const { return false; }
    virtual bool isConst() const { return false; }
};

typedef std::list<Expr*> ExprList;


///////////////////////////////////////////////////////////////////////////////
//
struct DummyValue : public Expr
{
    DummyValue(int line) :
        Expr(line)
    {
        pType = new ts::DummyType(line);
    }

    virtual bool isLValue() const { return true; }
    virtual bool isConst() const { return true; }
};


///////////////////////////////////////////////////////////////////////////////
//
struct ConstExpr : public Expr
{
    obj::Constant* pConstant;

    ConstExpr(obj::Constant* pConstant, int line) :
        Expr(line), pConstant(pConstant)
    {
        pType = pConstant->pType;
    }

    virtual bool isConst() const { return true; }
    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct Intrinsic : public Expr
{
    obj::IntrinsicId intrinsicId;

    Intrinsic(obj::IntrinsicId intrinsicId, int line) :
        Expr(line), intrinsicId(intrinsicId)
    {
        pType = ts::g_pVoidType;
    }

    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct VarExpr : public Expr
{
    obj::Variable* pVariable;

    VarExpr(obj::Variable* pVariable, int line) :
        Expr(line), pVariable(pVariable)
    {
        pType = pVariable->pType;
    }

    virtual bool isLValue() const { return true; }
    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct ParamExpr : public Expr
{
    obj::Parameter* pParameter;

    ParamExpr(obj::Parameter* pParameter, int line) :
        Expr(line), pParameter(pParameter)
    {
        pType = pParameter->pType;
    }

    virtual bool isLValue() const { return true; }
    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
// a static address of a subroutine (not a function pointer variable)
//
struct FuncPtr : public Expr
{
    obj::Subroutine* pFunc;

    FuncPtr(obj::Subroutine* pFunc, int line) :
        Expr(line), pFunc(pFunc)
    {
        pType = pFunc->pType;
    }

    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct TypeCast : public Expr
{
    enum Context { ctxAssignment, ctxArg, ctxExpression };

    Expr* pExpr;
    Context context;

    TypeCast(Expr* pExpr, ts::Type* pDstType, Context context, int line) :
        Expr(line), pExpr(pExpr), context(context)
    {
        pType = pDstType;
    }

    virtual bool isConst() const
    {
        return pExpr->isConst();
    }

    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct BinaryOp : public Expr
{
    Expr* pLeft;
    Expr* pRight;
    Token* pOperator;

    BinaryOp(Expr* pLeft, Token* pOperator, Expr* pRight, int line);

    virtual bool isConst() const
    {
        return pLeft->isConst() && pRight->isConst();
    }

    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct UnaryOp : public Expr
{
    Expr* pExpr;
    Token* pOperator;

    UnaryOp(Token* pOperator, Expr* pExpr, int line);

    virtual bool isConst() const
    {
        return pExpr->isConst();
    }

    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct ArrayIndex : public Expr
{
    Expr* pObject;
    Expr* pIndex;

    ArrayIndex(Expr* pArray, const ExprList* pIndexList, int line);

    virtual bool isLValue() const { return true; }
    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct FieldExpr : public Expr
{
    obj::Field* pField;

    FieldExpr(obj::Field* pField, int line);
    FieldExpr(Expr* pRecord, Identifier* pFieldId, int line);

    virtual bool isLValue() const { return true; }
    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct Indirection : public Expr
{
    Expr* pObject;

    Indirection(Expr* pObject, int line);

    virtual bool isLValue() const { return true; }
    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct FuncCall : public Expr
{
    Expr* pFunc;
    ExprList* pArguments;

    FuncCall(Expr* pFunc, ExprList* pArguments, ts::Type* pReturnType, int line) :
        Expr(line), pFunc(pFunc), pArguments(pArguments)
    {
        pType = pReturnType;
    }

    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct Set : public Expr
{
    ExprList* pValues;

    Set(ExprList* pValues, int line);

    virtual bool isConst() const
    {
        if(nullptr != pValues)
        {
            for(auto it = pValues->begin(); it != pValues->end(); ++it)
            {
                if(!(*it)->isConst())
                    return false;
            }
        }

        return true;
    }

    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct WriteArgExpr : public Expr
{
    Expr* pValue;
    Expr* pWidth;
    Expr* pPrecission;

    WriteArgExpr(Expr* pValue, Expr* pWidth, Expr* pPrecission, int line) :
        Expr(line), pValue(pValue), pWidth(pWidth), pPrecission(pPrecission)
    {
        if(!pWidth->pType->isInteger()
            || (pPrecission != nullptr && !pPrecission->pType->isInteger()))
        {
            context()->error(pValue->pType->line(), "invalid value format specifier");
        }

        // CONSIDER: use a specialized "FormatType"
        //
        pType = pValue->pType;
    }

    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
// base class for statements
//
struct Stm : public Node
{
    obj::Label* pLabel;

    Stm(int line) : Node(line), pLabel(nullptr) {}

    void setLabel(obj::Constant* pLabelConst);
};


///////////////////////////////////////////////////////////////////////////////
//
struct CompoundStm : public Stm
{
    std::list<Stm*> statements;

    CompoundStm() : Stm(NO_LOCATION) {}

    void appendStm(Stm* pStm)
    {
        statements.push_back(pStm);
    }

    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct NopStm : public Stm
{
    NopStm(int line) : Stm(line) {}

    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct DummyStm : public Stm
{
    DummyStm(int line) : Stm(line) {}
};


///////////////////////////////////////////////////////////////////////////////
//
struct IfStm : public Stm
{
    Expr* pCondition;
    Stm* pThenStm;
    Stm* pElseStm;

    IfStm(Expr* pCondition, Stm* pThenStm, Stm* pElseStm, int line) :
        Stm(line), pCondition(pCondition), pThenStm(pThenStm), pElseStm(pElseStm)
    {
        assert(pThenStm != nullptr);

        if(!pCondition->pType->isBool())
        {
            context()->error(line, "if condition must be a boolean expression");
        }
    }

    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct Case : public Node
{
    obj::ConstList* pConstList;
    Stm* pStm;

    Case(obj::ConstList* pConstList, Stm* pStm, int line) :
        Node(line), pConstList(pConstList), pStm(pStm)
    {
    }
};

typedef std::list<Case*> CaseList;


///////////////////////////////////////////////////////////////////////////////
//
struct CaseStm : public Stm
{
    Expr* pValue;
    CaseList* pCaseList;

    CaseStm(Expr* pValue, CaseList* pCaseList, int line) :
        Stm(line), pValue(pValue), pCaseList(pCaseList)
    {
        if(!pValue->pType->isOrdinal())
        {
            context()->error(line, "case value must be an ordinal expression");
        }

        for(auto itCase = pCaseList->begin(); itCase != pCaseList->end(); ++itCase)
        {
            if(nullptr == *itCase)
                continue;

            auto pConstList = (*itCase)->pConstList;

            for(auto it = pConstList->begin(); it != pConstList->end(); ++it)
            {
                if(!(*it)->pType->isOrdinal() || !pValue->pType->canBeAssigned((*it)->pType))
                {
                    context()->error(line, "invalid case constant");
                }
            }
        }
    }

    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct AssignStm : public Stm
{
    Expr* pLValue;
    Expr* pRValue;

    AssignStm(Expr* pLValue, Expr* pRValue, int line);

    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct WhileStm : public Stm
{
    Expr* pCondition;
    Stm* pStm;

    WhileStm(Expr* pCondition, Stm* pStm, int line) :
        Stm(line), pCondition(pCondition), pStm(pStm)
    {
        assert(pStm != nullptr);

        if(!pCondition->pType->isBool())
        {
            context()->error(line, "while condition must be a boolean expression");
        }
    }

    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct RepeatStm : public Stm
{
    Expr* pCondition;
    Stm* pStm;

    RepeatStm(Expr* pCondition, Stm* pStm, int line) :
        Stm(line), pCondition(pCondition), pStm(pStm)
    {
        assert(pStm != nullptr);

        if(!pCondition->pType->isBool())
        {
            context()->error(line, "repeat condition must be a boolean expression");
        }
    }

    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct ForStm : public Stm
{
    Expr* pIndex;
    Expr* pStartValue;
    Expr* pEndValue;
    Token* pDirection;
    Stm* pStm;

    ForStm(Identifier* pIndexId, Expr* pStartValue, Token* pDirection, Expr* pEndValue, Stm* pStm, int line);

    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct GotoStm : public Stm
{
    obj::Label* pTargetLabel;
    bool isNonLocal;

    GotoStm(obj::Constant* pLabelConst, int line);

    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
struct ProcCallStm : public Stm
{
    Expr* pProc;
    ExprList* pArguments;

    ProcCallStm(Expr* pProc, ExprList* pArguments, int line) :
        Stm(line), pProc(pProc), pArguments(pArguments)
    {
    }

    virtual VarPtr accept(Visitor* pVisitor) const;
};


///////////////////////////////////////////////////////////////////////////////
//
// this is the interface for AST nodes duble dispatch visitors
//
class Visitor
{
public:
    virtual ~Visitor() {}

public:
    virtual VarPtr visit(const ConstExpr* pConstExpr) = 0;
    virtual VarPtr visit(const Intrinsic* pIntrinsic) = 0;
    virtual VarPtr visit(const VarExpr* pVarExpr) = 0;
    virtual VarPtr visit(const ParamExpr* pParamExpr) = 0;
    virtual VarPtr visit(const FuncPtr* pFuncPtr) = 0;
    virtual VarPtr visit(const TypeCast* pTypeCast) = 0;
    virtual VarPtr visit(const BinaryOp* pBinaryOp) = 0;
    virtual VarPtr visit(const UnaryOp* pUnaryOp) = 0;
    virtual VarPtr visit(const ArrayIndex* pArrayIndex) = 0;
    virtual VarPtr visit(const FieldExpr* pFieldUse) = 0;
    virtual VarPtr visit(const Indirection* pIndirection) = 0;
    virtual VarPtr visit(const FuncCall* pFuncCall) = 0;
    virtual VarPtr visit(const Set* pSet) = 0;
    virtual VarPtr visit(const WriteArgExpr* pWriteArgExpr) = 0;
    virtual VarPtr visit(const NopStm* pNopStm) = 0;
    virtual VarPtr visit(const CompoundStm* pCompoundStm) = 0;
    virtual VarPtr visit(const IfStm* pIfStm) = 0;
    virtual VarPtr visit(const CaseStm* pCaseStm) = 0;
    virtual VarPtr visit(const AssignStm* pAssignStm) = 0;
    virtual VarPtr visit(const WhileStm* pWhileStm) = 0;
    virtual VarPtr visit(const RepeatStm* pRepeatStm) = 0;
    virtual VarPtr visit(const ForStm* pForStm) = 0;
    virtual VarPtr visit(const GotoStm* pGotoStm) = 0;
    virtual VarPtr visit(const ProcCallStm* pProcCallStm) = 0;
};

///////////////////////////////////////////////////////////////////////////////
//
Expr* newFuncCall(Identifier* pId, ExprList* pArguments, int line);
Stm* newProcCall(Identifier* pId, ExprList* pArguments, int line);


} // end namespace ast




