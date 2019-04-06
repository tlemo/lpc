
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

#include <limits>
#include "cppBackend.h"

// make sure we're not breaking <limits>
//
#undef min
#undef max


namespace cpp
{


///////////////////////////////////////////////////////////////////////////////
//
// the recursive helper for generating "record" definitions
//
string TypeGen::_recordDef(const ts::RecordFields* pFields)
{
    std::stringstream code;

    // fixed fields
    //
    if(pFields->pFixedFields != nullptr)
    {
        auto pList = pFields->pFixedFields;
        for(auto it = pList->begin(); it != pList->end(); ++it)
        {
            auto pFieldType = (*it)->pType;
            m_pBackend->_generateType(pFieldType);

            auto pNames = (*it)->pNames;
            for(auto idIt = pNames->begin(); idIt != pNames->end(); ++idIt)
            {
                code << typeExt(pFieldType)->genName;
                code << " " << genSimpleName((*idIt)->name) << ";\n";
            }
        }
    }
        
    // variable fields & tag
    //
    if(pFields->pVariableFields != nullptr)
    {
        auto pSelField = pFields->pVariableFields->pVariantSelector;

        if(pSelField->pId != nullptr)
        {
            m_pBackend->_generateType(pSelField->pType);
            code << "// variable fields selector\n";
            code << typeExt(pSelField->pType)->genName;
            code << " " << genSimpleName(pSelField->pId->name) << ";\n";
        }

        std::stringstream varFields;
        auto pList = pFields->pVariableFields->pVariantFields;
        for(auto it = pList->begin(); it != pList->end(); ++it)
        {
            auto pVarFields = (*it)->pFields;

            // a nicer output for single fields
            //
            if(pVarFields->pVariableFields == nullptr &&
                pVarFields->pFixedFields != nullptr &&
                pVarFields->pFixedFields->size() == 1 &&
                pVarFields->pFixedFields->front()->pNames->size() == 1)
            {
                auto pFieldSet = pVarFields->pFixedFields->front();
                m_pBackend->_generateType(pFieldSet->pType);
                varFields << typeExt(pFieldSet->pType)->genName;
                varFields << " " << genSimpleName(pFieldSet->pNames->front()->name) << ";\n";
            }
            else if(pVarFields->pFixedFields != nullptr || pVarFields->pVariableFields != nullptr)
            {
                varFields << "struct\n" << _recordDef(pVarFields) << ";\n";
            }
        }

        code << "// variable fields\n";
        code << "union\n" << genBlock(varFields.str()) << ";\n";
    }

    return genBlock(code.str());
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::RecordType* pType)
{
    assert(!m_name.empty());
    std::stringstream code;
    code << "struct " << m_name << "\n" << _recordDef(pType->fields()) << ";\n";
    return allocStr(code);
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::SubroutineType* pType)
{
    std::stringstream code;

    code << "_T_Pfn<";

    // return type
    //
    if(pType->isFunction())
    {
        m_pBackend->_generateType(pType->returnType());
        code << typeExt(pType->returnType())->genName;
    }
    else
        code << "void";
    
    // argument types
    //
    code << " (*)(void*";
    auto pParamList = pType->paramList();
    for(auto it = pParamList->begin(); it != pParamList->end(); ++it)
    {
        m_pBackend->_generateType(it->pType);
            
        code << ", " << typeExt(it->pType)->genName;
        if(it->byRef)
            code << "&";
    }

    code << ")>";

    return _typedefType(code);
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::FileType* pType)
{
    m_pBackend->_generateType(pType->elemType());
    
    if(!pType->elemType()->isChar())
    {
        context()->warning(pType->line(), "only Text files are supported");
    }

    return _typedefType("_T_Text");
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::PointerType* pType)
{
    m_pBackend->_generateType(pType->baseType());

    assert(!m_name.empty());
    std::stringstream code;
    code << "_PTR_TYPE(" << m_name << ", " << typeExt(pType->baseType())->genName << ")\n";
    return allocStr(code);
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::ArrayType* pType)
{
    m_pBackend->_generateType(pType->elemType());

    std::stringstream code;

    auto pIndexType = pType->indexType();
    code << "_T_Array< " << pIndexType->minValue() << ", ";
    code << pIndexType->maxValue() << ", ";
    code << typeExt(pType->elemType())->genName << " >";

    return _typedefType(code);
}


///////////////////////////////////////////////////////////////////////////////
//
template<typename T>
bool _fits(int min, int max)
{
    assert(min <= max);

    return min >= std::numeric_limits<T>::min() &&
        max <= std::numeric_limits<T>::max();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::RangeType* pType)
{
    string baseType = "?";
    
    const int min = pType->minValue();
    const int max = pType->maxValue();

    if(pType->baseType()->isChar())
        baseType = "char";
    else if(_fits<signed __int8>(min, max))
        baseType = "signed __int8";
    else if(_fits<unsigned __int8>(min, max))
        baseType = "unsigned __int8";
    else if(_fits<signed __int16>(min, max))
        baseType = "signed __int16";
    else if(_fits<unsigned __int16>(min, max))
        baseType = "unsigned __int16";
    else
        baseType = "signed __int32";

    std::stringstream code;
    code << "_T_Range<" << pType->minValue() <<
        ", " << pType->maxValue() << ", " << baseType << ">";
    return _typedefType(code);
}


} // end namespace cpp

