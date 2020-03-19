
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
    assert(pExt->def.empty());
    
    // types may override this generic name
    //
    pExt->genName = m_pBackend->_genName(pType->typeId(), "%T_");

    pType->accept(this);

    assert(pExt->size >= 0);
    assert(pExt->alignment > 0);
    assert(pExt->size % pExt->alignment == 0);
}

///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::SetType* pType)
{
    // TODO
    auto pExt = ext(pType);
    pExt->size = 1;
    pExt->alignment = 1;
    pExt->def = "__set";
    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
// the recursive helper for generating "record" definitions
//
TypeGen::FieldsLayout TypeGen::_fieldsLayout(const ts::RecordFields* pFields, int offset)
{
    vector<FieldOffset> fieldOffsets;
    int alignment = 1;

    // add field helper
    //
    const auto addField = [&](const Identifier* pId, ts::Type* pType)
    {
        auto pExt = ext(pType);

        assert(pExt->size > 0);
        assert(pExt->alignment > 0);
        assert(!pExt->genName.empty());

        // align the offset
        //
        offset += pExt->alignment - 1;
        offset -= offset % pExt->alignment;

        fieldOffsets.push_back({ pId->name, offset });

        // update the offset & alignment
        //
        offset += pExt->size;
        alignment = LCM(alignment, pExt->alignment);
    };

    // fixed fields
    //
    if(pFields->pFixedFields != nullptr)
    {
        for (const auto& fieldSet : *pFields->pFixedFields)
        {
            const auto pFieldType = fieldSet->pType;
            m_pBackend->_generateType(pFieldType);

            for (const auto& id : *fieldSet->pNames)
            {
                addField(id, pFieldType);
            }
        }
    }

    // variable fields & tag
    //
    if(pFields->pVariableFields != nullptr)
    {
        const auto pSelField = pFields->pVariableFields->pVariantSelector;

        if(pSelField->pId != nullptr)
        {
            m_pBackend->_generateType(pSelField->pType);
            addField(pSelField->pId, pSelField->pType);
        }

        int varFieldsSize = 0;

        for (const auto& variantSection : *pFields->pVariableFields->pVariantFields)
        {
            const auto varFieldsLayout = _fieldsLayout(variantSection->pFields, offset);

            fieldOffsets.insert(fieldOffsets.end(),
                varFieldsLayout.fields.begin(), varFieldsLayout.fields.end());

            varFieldsSize = max(varFieldsSize, varFieldsLayout.size);
            alignment = LCM(alignment, varFieldsLayout.alignment);
        }

        offset += varFieldsSize;
    }

    return { fieldOffsets, offset, alignment };
}


///////////////////////////////////////////////////////////////////////////////
//
// the records map to an LLVM IR, so we can
// control the precise layout (including variant fields)
//
VarPtr TypeGen::visit(ts::RecordType* pType)
{
    auto pExt = ext(pType);
    const auto fieldsLayout = _fieldsLayout(pType->fields());

    stringstream def;

    def << "[" << fieldsLayout.size << " x i8]";

    pExt->def = def.str();
    pExt->alignment = fieldsLayout.alignment;
    pExt->size = roundUp(fieldsLayout.size, fieldsLayout.alignment);

    // build the name -> offset map
    //
    for(const auto& [name, offset] : fieldsLayout.fields)
    {
        const bool inserted = pExt->fields.insert({ name, offset }).second;
        assert(inserted);
    }

    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::ArrayType* pType)
{
    // TODO
    auto pExt = ext(pType);
    pExt->size = 1;
    pExt->alignment = 1;
    pExt->def = "__array";
    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::PointerType* pType)
{
    const auto pBaseType = pType->baseType();
    m_pBackend->_generateType(pBaseType);

    auto pExt = ext(pType);

    stringstream def;
    if (pBaseType->isVoid())
        def << "i8*";
    else
        def << ext(pBaseType)->genName << "*";
    pExt->def = def.str();

    pExt->size = PTR_SIZE;
    pExt->alignment = PTR_ALIGNMENT;

    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::FileType* pType)
{
    // TODO
    auto pExt = ext(pType);
    pExt->size = 1;
    pExt->alignment = 1;
    pExt->def = "__file";
    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::SubroutineType* pType)
{
    // TODO
    auto pExt = ext(pType);
    pExt->size = 1;
    pExt->alignment = 1;
    pExt->def = "__subroutine";
    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::RangeType* pType)
{
    // TODO
    auto pExt = ext(pType);
    pExt->size = 1;
    pExt->alignment = 1;
    pExt->def = "__range";
    return VarPtr();
}


} // end namespace llvm


