
// Copyright 2018 Google LLC
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

#include "symbols.h"
#include "compilationContext.h"
#include "ast.h"


///////////////////////////////////////////////////////////////////////////////
//
// a label declaration
//
void declareLabel(obj::Constant* pLabelConst, int line)
{
    assert(pLabelConst->pType->isInteger());
    int labelId = pLabelConst->intValue;
    obj::Label* pLabel = new obj::Label(
        labelId, context()->symbolTable()->currentScope());
    Symbol* pSymbol = new Symbol(new Identifier(labelId, line), pLabel);
    context()->symbolTable()->addSymbol(pSymbol);    
}


///////////////////////////////////////////////////////////////////////////////
//
// a const declaration
//
void declareConst(Identifier* pId, obj::Constant* pConst)
{
    // if the source constant is already bound to an id
    // create a new constant object
    //
    if(nullptr != pConst->pId)
    {
        if(pConst->pType->isReal())
        {
            pConst = new obj::Constant(pConst->realValue, pConst->line);
        }
        else if(pConst->pType->isString())
        {
            pConst = new obj::Constant(pConst->strValue->c_str(), pConst->line);
        }
        else
        {
            assert(pConst->pType->isOrdinal());
            pConst = new obj::Constant(pConst->intValue, pConst->pType, pConst->line);
        }
    }

    pConst->pId = pId;
    Symbol* pSymbol = new Symbol(pId, pConst);
    context()->symbolTable()->addSymbol(pSymbol);
}


///////////////////////////////////////////////////////////////////////////////
//
// a type declaration
//
void declareType(Identifier* pId, ts::Type* pType)
{
    pType->setIdentifier(pId);
    Symbol* pSymbol = new Symbol(pId, pType);
    context()->symbolTable()->addSymbol(pSymbol);
}


///////////////////////////////////////////////////////////////////////////////
//
// a declaration for a set of vars of the same type
//
void declareVars(IdList* pNameList, ts::Type* pType)
{
    assert(!pNameList->empty());

    // for variable definitions the type must be resolved immediately
    //
    pType->resolve();

    auto pScope = context()->symbolTable()->currentScope();

    for(auto id : *pNameList)
    {
        ast::Expr* pInitializer = nullptr;

        if(pType->isFile())
        {
            obj::Constant* pConst = nullptr;

            // bind variable to program arguments?
            //
            int idx = context()->symbolTable()->bindProgramArg(id);
            
            if(idx != INVALID_ARG_IDX && pScope->category == Scope::scProgram)
            {
                pConst = new obj::Constant(idx, id->line);
            }
            else
            {
                pConst = new obj::Constant(id->name.c_str(), id->line);
            }

            assert(nullptr != pConst);
            pInitializer = new ast::ConstExpr(pConst, id->line);
        }

        obj::Variable* pVariable = new obj::Variable(id, pType, pScope, pInitializer);
        Symbol* pSymbol = new Symbol(id, pVariable);
        context()->symbolTable()->addSymbol(pSymbol);
    }
}


///////////////////////////////////////////////////////////////////////////////
//
// declare a subroutine
// (it may be a reference to a previous forward declaration)
//
obj::Subroutine* declareSubroutine(Identifier* pId, ts::ParamSetList* pParamSetList,
    ts::Type* pReturnType, bool isFunction)
{
    assert(isFunction || pReturnType == nullptr);

    // first try to see if we have a implementation of a forward declared func/proc
    //
    if(pParamSetList == nullptr && pReturnType == nullptr)
    {
        obj::Subroutine* pSubroutine = context()->symbolTable()->findLocalSubroutine(pId);

        if(pSubroutine == nullptr)
        {
            if(isFunction)
            {
                context()->error(pId->line,
                    "invalid function '%s' declaration (missing the return type)",
                    pId->name.c_str());
            }
        }
        else
        {
            if(pSubroutine->pBody != nullptr)
            {
                context()->error(pId->line, "multiple definitions for '%s', see line %d",
                    pId->name.c_str(), pSubroutine->defLine);
            }

            if(isFunction != pSubroutine->pType->isFunction())
            {
                context()->error(pId->line,
                    "forward declaration for '%s' on line %d doesn't match",
                    pId->name.c_str(), pSubroutine->pType->line());
            }

            pSubroutine->defLine = pId->line;
            return pSubroutine;
        }
    }

    // not a reference to a forward declaration, create a new subroutine
    //
    auto pScope = context()->symbolTable()->currentScope();
    ts::SubroutineType* pSubroutineType = new ts::SubroutineType(
        pParamSetList, pReturnType, pScope, pId->line);
    obj::Subroutine* pNewSubroutine = new obj::Subroutine(pId, pSubroutineType);

    Symbol* pSymbol = new Symbol(pId, pNewSubroutine);
    context()->symbolTable()->addSymbol(pSymbol);

    return pNewSubroutine;
}


///////////////////////////////////////////////////////////////////////////////
//
// declare the main program
//
obj::Subroutine* declareProgram(Identifier* pId)
{
    auto pScope = context()->symbolTable()->currentScope();
    ts::SubroutineType* pSubroutineType = new ts::SubroutineType(nullptr, nullptr, pScope, pId->line);
    obj::Subroutine* pNewSubroutine = new obj::Subroutine(pId, pSubroutineType);

    Symbol* pSymbol = new Symbol(pId, pNewSubroutine);
    context()->symbolTable()->addSymbol(pSymbol);

    return pNewSubroutine;
}


///////////////////////////////////////////////////////////////////////////////
//
static
void _defineProgramArg(int idx, int line)
{
    assert(idx >= 0 && idx < FIRST_ARG_FILE_IDX);

    const auto& args = context()->symbolTable()->programArgs();

    auto pConst = new obj::Constant(idx, line);
    auto pInitializer = new ast::ConstExpr(pConst, line);

    auto pId = new Identifier(args[idx].c_str(), line);
    auto pVar = new obj::Variable(pId, ts::g_pTextType, context()->symbolTable()->currentScope(), pInitializer);
    context()->symbolTable()->addSymbol(new Symbol(pId, pVar));
}


///////////////////////////////////////////////////////////////////////////////
//
void declareProgramArgs(IdList* pNameList, int line)
{
    auto& args = context()->symbolTable()->programArgs();
    assert(args.empty());

    // pre-define the intput & output program arguments
    //
    args.resize(2);
    args[INPUT_FILE_IDX] = "_input";
    args[OUTPUT_FILE_IDX] = "_output";

    if(nullptr != pNameList)
    {
        for(auto it = pNameList->begin(); it != pNameList->end(); ++it)
        {
            // check for duplicates
            //
            bool duplicate = false;

            for(auto argIt = args.begin(); argIt != args.end(); ++argIt)
            {
                if((*it)->match((*argIt).c_str()))
                {
                    duplicate = true;
                    break;
                }
            }

            if(duplicate)
            {
                context()->error(line,
                    "duplicate program argument '%s'",
                    (*it)->name.c_str());
                continue;
            }

            // special case for input/output
            //
            if((*it)->match("input"))
            {
                args[INPUT_FILE_IDX] = "input";
            }
            else if((*it)->match("output"))
            {
                args[OUTPUT_FILE_IDX] = "output";
            }
            else
            {
                args.push_back((*it)->name);
            }
        }
    }

    // declare the input/output variables
    //
    _defineProgramArg(INPUT_FILE_IDX, line);
    _defineProgramArg(OUTPUT_FILE_IDX, line);
}


///////////////////////////////////////////////////////////////////////////////
//
void declareParams(obj::Subroutine* pSubroutine)
{   
    const ts::ParamList* pParamList = pSubroutine->pType->paramList();

    for(auto it = pParamList->begin(); it != pParamList->end(); ++it)
    {
        obj::Parameter* pParam = new obj::Parameter(it->pId, it->pType,
            context()->symbolTable()->currentScope(), it->byRef);
        Symbol* pSymbol = new Symbol(it->pId, pParam);
        context()->symbolTable()->addSymbol(pSymbol);
    }

    // for functions we also declare an implicit "out param" for the return value
    //
    if(pSubroutine->pType->isFunction())
    {
        auto pId = new Identifier("_fnvalue", pSubroutine->defLine);
        auto pVar = new obj::Variable(pId, pSubroutine->pType->returnType(),
            context()->symbolTable()->currentScope());
        Symbol* pSymbol = new Symbol(pId, pVar);
        context()->symbolTable()->addSymbol(pSymbol);
    }
}


///////////////////////////////////////////////////////////////////////////////
//
obj::Constant* lookupConstant(Identifier* pId, bool negate)
{
    obj::Constant* pConstant = context()->symbolTable()->findConstant(pId);

    if(negate)
    {
        // since we're allocating a new obj::Constant object we're not going
        // to get nice symbolic constants for negated values
        //
        if(pConstant->pType->isInteger())
        {
            pConstant = new obj::Constant(-pConstant->intValue, pConstant->pType, pId->line);
        }
        else if(pConstant->pType->isReal())
        {
            pConstant = new obj::Constant(-pConstant->realValue, pId->line);
        }
        else
        {
            context()->error(pId->line, "only numeric constants can be negated");
        }
    }

    return pConstant;
}


///////////////////////////////////////////////////////////////////////////////
//
ast::Expr* lookupObject(Identifier* pId, bool autoFuncCall, Scope* pScope)
{
    Symbol* pSymbol = context()->symbolTable()->findSymbol(pId, pScope);

    if(nullptr == pSymbol)
    {
        context()->error(pId->line, "attempting to use undefined '%s'", pId->name.c_str());

        // create a dummy placeholder
        //
        return new ast::DummyValue(pId->line);
    }
    else if(pSymbol->category == Symbol::scIntrinsic)
    {
        if(autoFuncCall)
        {
            return ast::newFuncCall(pId, nullptr, pId->line);
        }
        else
        {
            return new ast::Intrinsic(pSymbol->intrinsicId, pId->line);
        }
    }
    else if(pSymbol->category == Symbol::scConst)
    {
        return new ast::ConstExpr(pSymbol->pConstant, pId->line);
    }
    else if(pSymbol->category == Symbol::scVariable)
    {
        return new ast::VarExpr(pSymbol->pVariable, pId->line);
    }
    else if(pSymbol->category == Symbol::scParameter)
    {
        return new ast::ParamExpr(pSymbol->pParameter, pId->line);
    }
    else if(pSymbol->category == Symbol::scSubroutine)
    {
        if(autoFuncCall &&
            pSymbol->pSubroutine->pType->isFunction() &&
            pSymbol->pSubroutine->pType->paramList()->empty())
        {
            return ast::newFuncCall(pId, nullptr, pId->line);
        }
        else
        {
            return new ast::FuncPtr(pSymbol->pSubroutine, pId->line);
        }
    }
    else if(pSymbol->category == Symbol::scField)
    {
        return new ast::FieldExpr(pSymbol->pField, pId->line);
    }
    else if(pSymbol->category == Symbol::scType)
    {
        context()->error(pId->line, "attempting to type '%s' in an expression context", pId->name.c_str());

        // create a dummy placeholder
        //
        return new ast::DummyValue(pId->line);
    }
    else
    {
        assert(!"unexpected symbol category");
        return nullptr;
    }
}


