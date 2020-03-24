
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

// LPC language objects (vars, params, functions, ...)

#pragma once

#include <assert.h>
#include <list>

#include "compilationContext.h"
#include "types.h"
#include "stringTable.h"


struct Scope;


// forward declarations from the ast namespace
//
namespace ast
{
    struct Stm; 
    struct Expr;
    typedef std::list<Expr*> ExprList;
}


namespace obj
{

///////////////////////////////////////////////////////////////////////////////
//
enum IntrinsicId
{
    IN_REWRITE,
    IN_PUT,
    IN_RESET,
    IN_GET,
    IN_PAGE,

    IN_READ,
    IN_READLN,
    IN_WRITE,
    IN_WRITELN,

    IN_NEW,
    IN_DISPOSE,

    IN_PACK,
    IN_UNPACK,

    IN_HALT,

    IN_ABS,
    IN_SQR,
    IN_SIN,
    IN_COS,
    IN_EXP,
    IN_LN,
    IN_SQRT,
    IN_ARCTAN,

    IN_TRUNC,
    IN_ROUND,

    IN_ORD,
    IN_CHR,
    IN_SUCC,
    IN_PRED,

    IN_ODD,
    IN_EOF,
    IN_EOLN,
};


///////////////////////////////////////////////////////////////////////////////
//
// a constant value
//
struct Constant : private _DontCopy
{
    ts::Type* pType;
    int line;
    
    // optional identifier
    //
    Identifier* pId;

    union
    {
        int intValue;
        const string* strValue;
        double realValue;
    };

public:
    // extension point (for backend information for example)
    //
    VarPtr ext;

public:
    Constant(int value, ts::Type* pType, int line) :
        intValue(value), pType(pType), line(line), pId(nullptr) {}

    Constant(int value, int line);

    Constant(double value, int line);

    Constant(const char* str, int line);

    Constant(int line);

public:
    bool operator==(const Constant& other) const
    {
        if(pType->isOrdinal() && other.pType->isOrdinal())
        {
            return intValue == other.intValue;
        }
        else if(pType->isReal() && other.pType->isReal())
        {
            return realValue == other.realValue;
        }
        else
        {
            // NOTE: we don't compare string constants
            //
            return false;
        }
    }

    bool operator!=(const Constant& other) const { return !operator==(other); }
};


typedef std::list<Constant*> ConstList;


///////////////////////////////////////////////////////////////////////////////
//
// a field of a specific record instance
//
struct Field : private _DontCopy
{
    Identifier* pId;
    ast::Expr* pRecord;

public:
    Field(Identifier* pId, ast::Expr* pRecord) :
        pId(pId), pRecord(pRecord) {}
};


///////////////////////////////////////////////////////////////////////////////
//
// a variable
//
struct Variable : private _DontCopy
{
    Identifier* pId;
    ts::Type* pType;
    Scope* pScope;
    ast::Expr* pInitializer;

public:
    // extension point (backend specific information for example)
    //
    VarPtr ext;

public:
    Variable(Identifier* pId, ts::Type* pType, Scope* pScope, ast::Expr* pInitializer = nullptr) :
        pId(pId), pType(pType), pScope(pScope), pInitializer(pInitializer)
    {
    }
};

typedef std::list<Variable*> VarList;


///////////////////////////////////////////////////////////////////////////////
//
// a formal parameter
//
struct Parameter : private _DontCopy
{
    Identifier* pId;
    ts::Type* pType;
    Scope* pScope;
    bool byRef;

public:
    // extension point (backend-specific information for example)
    //
    VarPtr ext;

public:
    Parameter(Identifier* pId, ts::Type* pType, Scope* pScope, bool byRef) :
        pId(pId), pType(pType), pScope(pScope), byRef(byRef) {}
};

typedef std::list<Parameter*> ParamList;


///////////////////////////////////////////////////////////////////////////////
//
// a subroutine
//
struct Subroutine : private _DontCopy
{
    Identifier* pId = nullptr;
    ts::SubroutineType* pType = nullptr;
    ast::Stm* pBody = nullptr;
    int defLine = -1;

    // the subroutine's own scope
    // (the visibility scope is the parent scope)
    //
    Scope* pScope = nullptr;

    // return value (functions only)
    //
    obj::Variable* pFnValue = nullptr;

public:
    // extension point (backend-specific information for example)
    //
    VarPtr ext;

public:
    Subroutine(Identifier* pId, ts::SubroutineType* pType) :
        pId(pId), 
        pType(pType),
        defLine(pId->line)
    {
    }

    Subroutine* parent() const;
    bool hasSlink() const;
};

typedef std::list<Subroutine*> SubroutineList;


///////////////////////////////////////////////////////////////////////////////
//
// a label
//
// NOTE: nonLocalId is 0 if the label is only used by local GOTOs,
//    or a globally unique value used to indentify non-local targets
//
struct Label : private _DontCopy
{
    int labelId;
    int nonLocalId;
    Scope* pScope;

public:
    // extension point (for backend information for example)
    //
    VarPtr ext;

public:
    Label(int labelId, Scope* pScope) :
        labelId(labelId),
        pScope(pScope),
        nonLocalId(0)
    {
    }

    void markNonLocal()
    {
        if(0 == nonLocalId)
            nonLocalId = s_nonLocalId++;
    }

    bool isNonLocalTarget() const
    {
        return nonLocalId != 0;
    }

private:
    static int s_nonLocalId;
};

typedef std::list<Label*> LabelList;


///////////////////////////////////////////////////////////////////////////////
//
void predefineObjects();
const char* intrinsicName(IntrinsicId intrinsicId);


} // end namespace obj


