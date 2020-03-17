
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

#include "llvmBackend.h"

#include <limits>

#undef min
#undef max


namespace llvm
{

///////////////////////////////////////////////////////////////////////////////
//
void TypeGen::gen(ts::Type* pType)
{
    auto pExt = ext(pType);
    assert(pExt->genName.empty());
    
    // types may override this generic name
    //
    pExt->genName = m_pBackend->_genName(pType->typeId(), "%T_");

    pType->accept(this);
}

///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::SetType* pType)
{
    // TODO
    ext(pType)->def = "<set>";
    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::RecordType* pType)
{
    // TODO
    ext(pType)->def = "<record>";
    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::ArrayType* pType)
{
    // TODO
    ext(pType)->def = "<array>";
    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::PointerType* pType)
{
    const auto pBaseType = pType->baseType();
    m_pBackend->_generateType(pBaseType);

    stringstream def;
    if (pBaseType->isVoid())
        def << "i8*";
    else
        def << ext(pBaseType)->genName << "*";
    ext(pType)->def = def.str();

    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::FileType* pType)
{
    // TODO
    ext(pType)->def = "<file>";
    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::SubroutineType* pType)
{
    // TODO
    ext(pType)->def = "<subroutine>";
    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::RangeType* pType)
{
    // TODO
    ext(pType)->def = "<range>";
    return VarPtr();
}


} // end namespace llvm


