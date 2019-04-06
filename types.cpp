
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

#include <algorithm>
#include <limits.h>

#include "types.h"
#include "symbols.h"
#include "compilationContext.h"
#include "objects.h"


namespace ts
{


///////////////////////////////////////////////////////////////////////////////
//
VarPtr VoidType::accept(Visitor* pVisitor) { return pVisitor->visit(this); }
VarPtr IntegerType::accept(Visitor* pVisitor) { return pVisitor->visit(this); }
VarPtr CharType::accept(Visitor* pVisitor) { return pVisitor->visit(this); }
VarPtr BoolType::accept(Visitor* pVisitor) { return pVisitor->visit(this); }
VarPtr RealType::accept(Visitor* pVisitor) { return pVisitor->visit(this); }
VarPtr EnumType::accept(Visitor* pVisitor) { return pVisitor->visit(this); }
VarPtr RangeType::accept(Visitor* pVisitor) { return pVisitor->visit(this); }
VarPtr ArrayType::accept(Visitor* pVisitor) { return pVisitor->visit(this); }
VarPtr FileType::accept(Visitor* pVisitor) { return pVisitor->visit(this); }
VarPtr SetType::accept(Visitor* pVisitor) { return pVisitor->visit(this); }
VarPtr RecordType::accept(Visitor* pVisitor) { return pVisitor->visit(this); }
VarPtr PointerType::accept(Visitor* pVisitor) { return pVisitor->visit(this); }
VarPtr SubroutineType::accept(Visitor* pVisitor) { return pVisitor->visit(this); }


///////////////////////////////////////////////////////////////////////////////
//
long Type::m_uniqueId = 1;


///////////////////////////////////////////////////////////////////////////////
//
// predefined types
//
VoidType* g_pVoidType;
IntegerType* g_pIntegerType;
CharType* g_pCharType;
BoolType* g_pBoolType;
RealType* g_pRealType;
FileType* g_pTextType;
SetType* g_pGenericSetType;


///////////////////////////////////////////////////////////////////////////////
//
void predefineTypes()
{
    assert(g_pBoolType == nullptr);

    Identifier* pIntegerId = new Identifier("integer");
    Identifier* pCharId = new Identifier("char");
    Identifier* pBoolId = new Identifier("boolean");
    Identifier* pRealId = new Identifier("real");
    Identifier* pTextId = new Identifier("text");
    Identifier* pVoidId = new Identifier("void");

    g_pVoidType = new VoidType();
    g_pBoolType = new BoolType();
    g_pIntegerType = new IntegerType();
    g_pCharType = new CharType();
    g_pRealType = new RealType();

    g_pTextType = new FileType(g_pCharType, nullptr, PREDEFINED_LOCATION);

    g_pGenericSetType = new SetType(g_pIntegerType, nullptr, PREDEFINED_LOCATION);

    g_pBoolType->setIdentifier(pBoolId);
    g_pIntegerType->setIdentifier(pIntegerId);
    g_pCharType->setIdentifier(pCharId);
    g_pRealType->setIdentifier(pRealId);
    g_pTextType->setIdentifier(pTextId);
    g_pVoidType->setIdentifier(pVoidId);

    SymbolTable* pSymTable = context()->symbolTable();

    pSymTable->addSymbol(new Symbol(pIntegerId, g_pIntegerType));
    pSymTable->addSymbol(new Symbol(pCharId, g_pCharType));
    pSymTable->addSymbol(new Symbol(pBoolId, g_pBoolType));
    pSymTable->addSymbol(new Symbol(pRealId, g_pRealType));
    pSymTable->addSymbol(new Symbol(pTextId, g_pTextType));

    auto pFalseConst = new obj::Constant(0, g_pBoolType, PREDEFINED_LOCATION);
    declareConst(new Identifier("false"), pFalseConst);

    auto pTrueConst = new obj::Constant(1, g_pBoolType, PREDEFINED_LOCATION);
    declareConst(new Identifier("true"), pTrueConst);

    auto pNilConst = new obj::Constant(PREDEFINED_LOCATION);
    declareConst(new Identifier("nil"), pNilConst);

    auto pMaxIntConst = new obj::Constant(INT_MAX, PREDEFINED_LOCATION);
    declareConst(new Identifier("maxint"), pMaxIntConst);
}


///////////////////////////////////////////////////////////////////////////////
//
Type::Type(Scope* pScope, int line) :
    m_pScope(pScope), m_line(line), m_pId(nullptr)
{
    if(m_pScope == nullptr)
        m_pScope = context()->symbolTable()->globalScope();
}


///////////////////////////////////////////////////////////////////////////////
//
EnumType::EnumType(IdList* pEnumIDs, Scope* pScope, int line) :
    Type(pScope, line),
    m_pEnumIDs(pEnumIDs)
{
    // instantiate the enum members as constants
    //
    // CONSIDER: it may be nice to mark these constants so we
    //    can generate C++ enums when generating C++ code
    //
    IdList::iterator it;
    int value = 0;

    for(it = pEnumIDs->begin(); it != pEnumIDs->end(); ++it, ++value)
    {
        auto pConst = new obj::Constant(value, this, (*it)->line);
        declareConst(*it, pConst);
    }
}


///////////////////////////////////////////////////////////////////////////////
//
RangeType::RangeType(obj::Constant* pStart, obj::Constant* pEnd, Scope* pScope, int line) :
    Type(pScope, line), m_pStart(pStart), m_pEnd(pEnd)
{
    if(!pStart->pType->isSameType(pEnd->pType))
        context()->error(pStart->line, "range values must be of the same type");

    if(!pStart->pType->isOrdinal())
    {
        context()->error(pStart->line, "range values must be ordinals");
        m_pStart = new obj::Constant(0, pStart->line);
        m_pEnd = new obj::Constant(0, pEnd->line);
    }

    if(pStart->intValue > pEnd->intValue)
    {
        context()->warning(pStart->line, "range start > end");
        m_pEnd = m_pStart;
    }
}


///////////////////////////////////////////////////////////////////////////////
//
bool RangeType::isValidStringIndex() const
{
    return m_pStart->intValue == 1 && m_pEnd->intValue > 1;
}

Type* RangeType::baseType() const
{
    return m_pStart->pType;
}

int RangeType::minValue() const
{
    return m_pStart->intValue;
}

int RangeType::maxValue() const
{
    return m_pEnd->intValue;
}


///////////////////////////////////////////////////////////////////////////////
//
PointerType::PointerType(Identifier* pTypeId, Scope* pScope, int line) :
    Type(pScope, line),
    m_pTypeId(pTypeId),
    m_pBaseType(nullptr)
{
    // dummy search to mark the reference to the type identifier
    //
    // NOTE: accorting to 'iso7185pat.pas' test suite this is not required
    //
#if 0
    context()->symbolTable()->findSymbol(pTypeId);
#endif
}


///////////////////////////////////////////////////////////////////////////////
//
void PointerType::resolve()
{
    if(nullptr == m_pBaseType)
    {
        m_pBaseType = context()->symbolTable()->findType(m_pTypeId);
    }
}


///////////////////////////////////////////////////////////////////////////////
//
ParamSet::ParamSet(Identifier* pId, SubroutineType* pSubroutineType) :
    pNames(nullptr), pType(pSubroutineType), byRef(false)
{
    pSubroutineType->resolve();

    pNames = new IdList();
    pNames->push_back(pId);
}


///////////////////////////////////////////////////////////////////////////////
//
bool ArrayType::isString() const
{
    auto pIndexRange = m_pIndexType->as<RangeType>();

    if(m_pElemType == g_pCharType && nullptr != pIndexRange)
    {
        return pIndexRange->isValidStringIndex();
    }

    return false;
}


///////////////////////////////////////////////////////////////////////////////
//
int ArrayType::strLength() const
{
    assert(isString());
    auto pIndexRange = m_pIndexType->as<RangeType>();
    return pIndexRange->maxValue() - pIndexRange->minValue() + 1;
}


///////////////////////////////////////////////////////////////////////////////
//
// find the corresponding nested fields for the passed in constant
// (returns nullptr if there's no such variant)
//
RecordFields* RecordFields::getVariant(const obj::Constant* pConst) const
{
    if(nullptr == pVariableFields)
        return nullptr;

    if(!pVariableFields->pVariantSelector->pType->canBeAssigned(pConst->pType))
        return nullptr;

    auto pVariants = pVariableFields->pVariantFields;
    for(auto it = pVariants->begin(); it != pVariants->end(); ++it)
    {
        auto pConstList = (*it)->pConstants;
        for(auto constIt = pConstList->begin(); constIt != pConstList->end(); ++constIt)
        {
            if(*(*constIt) == *pConst)
                return (*it)->pFields;
        }
    }

    return nullptr;
}


///////////////////////////////////////////////////////////////////////////////
//
RecordType::RecordType(RecordFields* pFields, Scope* pScope, int line) :
    Type(pScope, line),
    m_pFields(pFields)
{
    assert(m_pFields != nullptr);
}


///////////////////////////////////////////////////////////////////////////////
//
void RecordType::_addFieldMapEntry(Identifier* pId, Type* pType)
{
    auto it = m_fieldMap.find(pId);

    if(it != m_fieldMap.end())
    {
        context()->error(pId->line, "duplicate field name '%s'", pId->name.c_str());
    }

    m_fieldMap[pId] = pType;
}


///////////////////////////////////////////////////////////////////////////////
//
// populate the id->type map, resolving the embedded types as we go
//
void RecordType::_populateFieldMap(const RecordFields* pFields)
{
    // part I (fixed fields)
    //
    if(pFields->pFixedFields != nullptr)
    {
        auto pList = pFields->pFixedFields;
        for(auto it = pList->begin(); it != pList->end(); ++it)
        {
            (*it)->pType->resolve();
            auto pNames = (*it)->pNames;

            for(auto idIt = pNames->begin(); idIt != pNames->end(); ++idIt)
            {
                _addFieldMapEntry(*idIt, (*it)->pType);
            }
        }
    }
        
    // part II (variable fields)
    //
    if(pFields->pVariableFields != nullptr)
    {
        auto pSelField = pFields->pVariableFields->pVariantSelector;
        pSelField->pType->resolve();

        if(!pSelField->pType->isOrdinal())
        {
            context()->error(
                pSelField->pId != nullptr ? pSelField->pId->line : pSelField->pType->line(),
                "selector field must be an ordinal type");
        }

        if(pSelField->pId != nullptr)
        {
            _addFieldMapEntry(pSelField->pId, pSelField->pType);
        }

        auto pList = pFields->pVariableFields->pVariantFields;
        for(auto it = pList->begin(); it != pList->end(); ++it)
        {
            if((*it)->pFields != nullptr)
                _populateFieldMap((*it)->pFields);
        }
    }
}


///////////////////////////////////////////////////////////////////////////////
//
// TODO: check record strucure
// - selector values?
// ...
//
void RecordType::resolve()
{
    if(m_fieldMap.empty())
        _populateFieldMap(m_pFields);
}


///////////////////////////////////////////////////////////////////////////////
//
SubroutineType::SubroutineType(ParamSetList* pParamSetList, Type* pReturnType, Scope* pScope, int line) :
    Type(pScope, line),
    m_pReturnType(pReturnType)
{
    if(nullptr != pReturnType)
        pReturnType->resolve();

    // build the normalized formal parameters list
    //
    if(pParamSetList != nullptr)
    {
        for(auto it = pParamSetList->begin(); it != pParamSetList->end(); ++it)
        {
            const ts::ParamSet* pParamSet = *it;
            IdList* pNames = pParamSet->pNames;
            
            for(auto itName = pNames->begin(); itName != pNames->end(); ++itName)
            {
                m_paramList.push_back(Param(*itName, pParamSet->pType, pParamSet->byRef));
            }
        }
    }
}


///////////////////////////////////////////////////////////////////////////////
//
// for subroutine pointers we have to do a structural equivalence check
//
bool SubroutineType::isSameType(const Type* pType) const
{
    if(Type::isSameType(pType))
        return true;

    auto pFnType = pType->as<SubroutineType>();

    if(isFunction() != pFnType->isFunction())
        return false;

    // check return types
    //
    if(isFunction())
    {
        if(!returnType()->isSameType(pFnType->returnType()))
            return false;
    }

    // check arguments
    //
    auto pSrcArgList = paramList();
    auto pDstArgList = pFnType->paramList();

    if(pSrcArgList->size() != pDstArgList->size())
        return false;

    auto srcIt = pSrcArgList->begin();
    auto dstIt = pDstArgList->begin();

    for(; srcIt != pSrcArgList->end(); ++srcIt, ++dstIt)
    {
        if(srcIt->byRef != dstIt->byRef)
            return false;

        if(!srcIt->pType->isSameType(dstIt->pType))
            return false;
    }

    return true;
}


///////////////////////////////////////////////////////////////////////////////
//
// returns true if a srcType value can be assigned to this type
//
bool Type::canBeAssigned(const Type* pSrcType) const
{
    if(this->isSameType(pSrcType))
    {
        // identical types
        //
        return true;
    }
    else if(pSrcType->isNumber() && this->isReal())
    {
        // int -> real conversion is implicit
        //
        return true;
    }
    else if(pSrcType->isOrdinal() && this->isOrdinal())
    {
        auto pSrcRangeType = pSrcType->as<ts::RangeType>();
        auto pDstRangeType = this->as<ts::RangeType>();

        if(nullptr != pDstRangeType)
        {
            // NOTE: technically we should check that the src range is
            //   included in the dst range but that seems to break existing Pascal code
            //
            return pDstRangeType->baseType()->canBeAssigned(
                (nullptr != pSrcRangeType) ? pSrcRangeType->baseType() : pSrcType);
        }
        else if(nullptr != pSrcRangeType)
        {
            return this->canBeAssigned(pSrcRangeType->baseType());
        }
        else
        {
            return pSrcType->isInteger() && this->isInteger();
        }
    }
    else if(this->isSet() && pSrcType->isSet())
    {
        // NOTE: technically, set types are compatible if element types of the src
        //   are a subset of the dst element type but the set literals make this hard to validate
        //
        return true;
    }
    else if(this->isPointer() && pSrcType->isPointer())
    {
        // nil (the only void pointer) -> any pointer type is valid
        // 
        return pSrcType->as<PointerType>()->baseType() == g_pVoidType;
    }
    else if(this->isString() && pSrcType->isString())
    {
        // strings of the same length are compatible
        //
        return this->as<ArrayType>()->strLength() == pSrcType->as<ArrayType>()->strLength();
    }

    return false;
}


}


