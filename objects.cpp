
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

#include "objects.h"
#include "types.h"
#include "symbols.h"
#include "compilationContext.h"


namespace obj
{


///////////////////////////////////////////////////////////////////////////////
//
Constant::Constant(int value, int line) :
    intValue(value), pType(ts::g_pIntegerType), line(line), pId(nullptr)
{
}


///////////////////////////////////////////////////////////////////////////////
//
Constant::Constant(double value, int line) :
    realValue(value), pType(ts::g_pRealType), line(line), pId(nullptr)
{
}


///////////////////////////////////////////////////////////////////////////////
//
Constant::Constant(const char* str, int line) :
    pType(nullptr), line(line), pId(nullptr)
{
    int len = strlen(str);

    if(len == 1)
    {
        pType = ts::g_pCharType;
        intValue = str[0];
    }
    else
    {
        if (len == 0)
        {
            context()->error(line, "empty string literal");
            len = 2;
            str = "@@";
        }

        auto pDim = new ts::RangeType(new Constant(1, line), new Constant(len, line), nullptr, line);
        auto pDimList = new ts::TypeList();
        pDimList->push_back(pDim);
        pType = new ts::ArrayType(pDimList, ts::g_pCharType, nullptr, line);
        strValue = new string(str);
    }
}


///////////////////////////////////////////////////////////////////////////////
//
Constant::Constant(int line) :
    pType(nullptr), line(line), pId(nullptr)
{
    pType = new ts::PointerType(ts::g_pVoidType, nullptr, line);
}


///////////////////////////////////////////////////////////////////////////////
//
Subroutine* Subroutine::parent() const
{
    return pScope->pParent->subroutine();
}


///////////////////////////////////////////////////////////////////////////////
//
bool Subroutine::hasSlink() const
{
    return pScope->pParent->level > Scope::PROGRAM_SCOPE_LEVEL;
}


///////////////////////////////////////////////////////////////////////////////
//
int Label::s_nonLocalId = 1;


///////////////////////////////////////////////////////////////////////////////
//
static
std::map<IntrinsicId, const char*> g_intrinsicMap;

static
void predefineIntrinsic(const char* name, IntrinsicId intrinsicId)
{
    auto pId = new Identifier(name);
    context()->symbolTable()->addSymbol(new Symbol(pId, intrinsicId));

    assert(g_intrinsicMap.find(intrinsicId) == g_intrinsicMap.end());
    g_intrinsicMap[intrinsicId] = name;
}


///////////////////////////////////////////////////////////////////////////////
//
const char* intrinsicName(IntrinsicId intrinsicId)
{
    assert(g_intrinsicMap.find(intrinsicId) != g_intrinsicMap.end());
    return g_intrinsicMap[intrinsicId];
}


///////////////////////////////////////////////////////////////////////////////
//
void predefineObjects()
{
    predefineIntrinsic("rewrite", IN_REWRITE);
    predefineIntrinsic("put", IN_PUT);
    predefineIntrinsic("reset", IN_RESET);
    predefineIntrinsic("get", IN_GET);
    predefineIntrinsic("page", IN_PAGE);

    predefineIntrinsic("read", IN_READ);
    predefineIntrinsic("readln", IN_READLN);
    predefineIntrinsic("write", IN_WRITE);
    predefineIntrinsic("writeln", IN_WRITELN);

    predefineIntrinsic("new", IN_NEW);
    predefineIntrinsic("dispose", IN_DISPOSE);

    predefineIntrinsic("pack", IN_PACK);
    predefineIntrinsic("unpack", IN_UNPACK);

    predefineIntrinsic("halt", IN_HALT);

    predefineIntrinsic("abs", IN_ABS);
    predefineIntrinsic("sqr", IN_SQR);
    predefineIntrinsic("sin", IN_SIN);
    predefineIntrinsic("cos", IN_COS);
    predefineIntrinsic("exp", IN_EXP);
    predefineIntrinsic("ln", IN_LN);
    predefineIntrinsic("sqrt", IN_SQRT);
    predefineIntrinsic("arctan", IN_ARCTAN);

    predefineIntrinsic("trunc", IN_TRUNC);
    predefineIntrinsic("round", IN_ROUND);

    predefineIntrinsic("ord", IN_ORD);
    predefineIntrinsic("chr", IN_CHR);
    predefineIntrinsic("succ", IN_SUCC);
    predefineIntrinsic("pred", IN_PRED);

    predefineIntrinsic("odd", IN_ODD);
    predefineIntrinsic("eof", IN_EOF);
    predefineIntrinsic("eoln", IN_EOLN);
}


}



