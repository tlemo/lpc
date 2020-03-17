
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

// LPC type system

#pragma once

#include <map>
#include <assert.h>

#include "common.h"
#include "stringTable.h"
#include "compilationContext.h"


struct Scope;


// forward declarations from the obj namespace
//
namespace obj
{

struct Constant;
typedef std::list<Constant*> ConstList;

}


namespace ts
{


// forward declarations
//
class SubroutineType;
class Visitor;


///////////////////////////////////////////////////////////////////////////////
//
// Base class for the type system
//
class Type : private _DontCopy
{
public:
    // extension point (for backend information for example)
    //
    VarPtr ext;

public:
    virtual bool isVoid() const { return false; }
    virtual bool isPOD() const { return false; }
    virtual bool isOrdinal() const { return false; }
    virtual bool isInteger() const { return false; }
    virtual bool isReal() const { return false; }
    virtual bool isChar() const { return false; }
    virtual bool isBool() const { return false; }
    virtual bool isSet() const { return false; }
    virtual bool isArray() const { return false; }
    virtual bool isRecord() const { return false; }
    virtual bool isString() const { return false; }
    virtual bool isFile() const { return false; }
    virtual bool isDummy() const { return false; }
    virtual bool isSubroutine() const { return false; }
    virtual bool isPointer() const { return false; }
    virtual bool isRange() const { return false; }
    virtual bool isEnum() const { return false; }

    virtual int minValue() const { throw Exception("min value is not defined for this type"); }
    virtual int maxValue() const { throw Exception("min value is not defined for this type"); }

    void setIdentifier(Identifier* pId)
    {
        // NOTE: it uses the first assigned type name
        //   (multiple type aliases can reference the same actual type)
        //
        if(nullptr == m_pId)
        {
            m_pId = pId;
        }
    }

    // brief type name (ex. for error messages or generating anonymous names)
    //
    virtual std::string typeDef() const = 0;

    // unique (within scope) type name
    //
    virtual std::string typeId() const
    {
        // CONSIDER: I'm not sure I like the mutable for m_typeId
        //
        if(m_typeId.empty())
        {
            std::stringstream id;

            if(nullptr != m_pId)
            {
                id << m_pId->name;
            }
            else
            {
                id << typeDef() << "_" << m_uniqueId++;
            }

            m_typeId = id.str();
        }

        return m_typeId;
    }

    virtual void resolve() {}

    int line() const { return m_line; }

    Scope* scope() const { return m_pScope; }

    bool canBeAssigned(const Type* pSrcType) const;

    // are they exactly the same type?
    //
    virtual bool isSameType(const Type* pType) const
    {
        return this == pType || this->isDummy() || pType->isDummy();
    }

    virtual bool isCompatible(const Type* pType) const
    {
        // NOTE: this is an ad-hoc definition of "compatible" and
        //  it may require some refinements to match the real language definition
        //
        return this->canBeAssigned(pType) || pType->canBeAssigned(this);
    }

    virtual bool isNumber() const
    {
        return isInteger() || isReal();
    }

    template<class T>
    T* as()
    {
        return dynamic_cast<T*>(this);
    }

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

    virtual VarPtr accept(Visitor*)
    {
        assert(!"unexpected");
        return VarPtr();
    }

protected:
    Type(Scope* pScope, int line);
    virtual ~Type() {}

private:
    int m_line;
    Identifier* m_pId;
    mutable std::string m_typeId;
    Scope* m_pScope;

private:
    static long m_uniqueId;
};


typedef std::list<Type*> TypeList;


///////////////////////////////////////////////////////////////////////////////
//
// a dummy placeholder used when we hit errors
//
class DummyType : public Type
{
public:
    DummyType(int line) : Type(nullptr, line) {}

public:
    virtual bool isVoid() const { return true; }
    virtual bool isPOD() const { return true; }
    virtual bool isOrdinal() const { return true; }
    virtual bool isInteger() const { return true; }
    virtual bool isReal() const { return true; }
    virtual bool isChar() const { return true; }
    virtual bool isBool() const { return true; }
    virtual bool isSet() const { return true; }
    virtual bool isString() const { return true; }
    virtual bool isDummy() const { return true; }
    virtual bool isSubroutine() const { return true; }
    virtual bool isRecord() const { return true; }
    virtual bool isFile() const { return true; }
    virtual bool isArray() const { return true; }
    virtual bool isPointer() const { return true; }
    virtual bool isRange() const { return true; }
    virtual bool isEnum() const { return true; }

    virtual int minValue() const { return INT_MIN; }
    virtual int maxValue() const { return INT_MAX; }

    virtual std::string typeDef() const { return "<dummy>"; }
};


///////////////////////////////////////////////////////////////////////////////
//
class VoidType : public Type
{
public:
    VoidType() : Type(nullptr, PREDEFINED_LOCATION) {}

    virtual bool isVoid() const { return true; }
    virtual VarPtr accept(Visitor* pVisitor);
    virtual std::string typeDef() const { return "void"; }
};


///////////////////////////////////////////////////////////////////////////////
//
// predefined integer type
//
class IntegerType : public Type
{
public:
    IntegerType() : Type(nullptr, PREDEFINED_LOCATION) {}

public:
    virtual bool isPOD() const { return true; }
    virtual bool isOrdinal() const { return true; }
    virtual bool isInteger() const { return true; }
    virtual VarPtr accept(Visitor* pVisitor);
    virtual std::string typeDef() const { return "integer"; }

    virtual int minValue() const { return INT_MIN; }
    virtual int maxValue() const { return INT_MAX; }
};


///////////////////////////////////////////////////////////////////////////////
//
// predefined char type
//
class CharType : public Type
{
public:
    CharType() : Type(nullptr, PREDEFINED_LOCATION) {}

public:
    virtual bool isPOD() const { return true; }
    virtual bool isOrdinal() const { return true; }
    virtual bool isChar() const { return true; }
    virtual VarPtr accept(Visitor* pVisitor);
    virtual std::string typeDef() const { return "char"; }

    virtual int minValue() const { return 0; }
    virtual int maxValue() const { return 255; }
};


///////////////////////////////////////////////////////////////////////////////
//
// predefined bool type
//
class BoolType : public Type
{
public:
    BoolType() : Type(nullptr, PREDEFINED_LOCATION) {}

public:
    virtual bool isPOD() const { return true; }
    virtual bool isOrdinal() const { return true; }
    virtual bool isBool() const { return true; }
    virtual VarPtr accept(Visitor* pVisitor);
    virtual std::string typeDef() const { return "boolean"; }

    virtual int minValue() const { return 0; }
    virtual int maxValue() const { return 1; }
};


///////////////////////////////////////////////////////////////////////////////
//
// predefined real type
//
class RealType : public Type
{
public:
    RealType() : Type(nullptr, PREDEFINED_LOCATION) {}

public:
    virtual bool isPOD() const { return true; }
    virtual bool isReal() const { return true; }
    virtual VarPtr accept(Visitor* pVisitor);
    virtual std::string typeDef() const { return "real"; }
};


///////////////////////////////////////////////////////////////////////////////
//
class EnumType : public Type
{
public:
    EnumType(IdList* pEnumIDs, Scope* pScope, int line);

public:
    virtual bool isPOD() const { return true; }
    virtual bool isOrdinal() const { return true; }
    virtual bool isInteger() const { return true; }
    virtual bool isEnum() const { return true; }

    virtual VarPtr accept(Visitor* pVisitor);
    virtual std::string typeDef() const { return "enum"; }

    virtual int minValue() const { return 0; }
    virtual int maxValue() const { return m_pEnumIDs->size() - 1; }

private:
    IdList* m_pEnumIDs;
};


///////////////////////////////////////////////////////////////////////////////
//
class RangeType : public Type
{
public:
    RangeType(obj::Constant* pStart, obj::Constant* pEnd, Scope* pScope, int line);

public:
    virtual bool isOrdinal() const { return true; }
    virtual bool isInteger() const { return baseType()->isInteger(); }
    virtual bool isChar() const { return baseType()->isChar(); }
    virtual bool isRange() const { return true; }
    virtual std::string typeDef() const { return "range"; }

    bool isValidStringIndex() const;
    Type* baseType() const;

    virtual VarPtr accept(Visitor* pVisitor);

    virtual int minValue() const;
    virtual int maxValue() const;

private:
    obj::Constant* m_pStart;
    obj::Constant* m_pEnd;
};


///////////////////////////////////////////////////////////////////////////////
//
class ArrayType : public Type
{
public:
    ArrayType(TypeList* pDimTypes, Type* pElemType, Scope* pScope, int line) :
        Type(pScope, line),
        m_pIndexType(nullptr),
        m_pElemType(nullptr)
    {
        // index type
        //
        m_pIndexType = pDimTypes->front();
        pDimTypes->pop_front();

        if(!m_pIndexType->isOrdinal())
            context()->error(line, "index type must be ordinal");

        // element type
        //
        m_pElemType = pDimTypes->empty() ?
            pElemType :
            new ArrayType(pDimTypes, pElemType, pScope, line);
        assert(nullptr != m_pElemType);
    }

    virtual bool isArray() const { return true; }
    virtual bool isString() const;

    virtual void resolve()
    {
        m_pIndexType->resolve();
        m_pElemType->resolve();
    }

    Type* elemType() const { return m_pElemType; }
    Type* indexType() const { return m_pIndexType; }

    int strLength() const;

    virtual VarPtr accept(Visitor* pVisitor);
    virtual std::string typeDef() const { return "array"; }

private:
    Type* m_pIndexType;
    Type* m_pElemType;
};


///////////////////////////////////////////////////////////////////////////////
//
class FileType : public Type
{
public:
    FileType(Type* pElemType, Scope* pScope, int line) :
        Type(pScope, line),
        m_pElemType(pElemType)
    {
    }

    virtual bool isFile() const { return true; }

    virtual void resolve()
    {
        // TODO: look for invalid embedded types (pointers, files)
        //
        m_pElemType->resolve();
    }

    Type* elemType() const { return m_pElemType; }

    bool isText() const { return m_pElemType->isA<CharType>(); }

    virtual VarPtr accept(Visitor* pVisitor);
    virtual std::string typeDef() const { return isText() ? "text" : "file"; }

private:
    Type* m_pElemType;
};


///////////////////////////////////////////////////////////////////////////////
//
class SetType : public Type
{
public:
    SetType(Type* pElemType, Scope* pScope, int line) :
        Type(pScope, line),
        m_pElemType(pElemType)
    {
        if(!pElemType->isOrdinal())
            context()->error(line, "set element type must be ordinal");
    }

    virtual void resolve()
    {
        m_pElemType->resolve();
    }

    virtual bool isSet() const { return true; }

    Type* elemType() const { return m_pElemType; }

    virtual int minValue() const { return max(0, m_pElemType->minValue()); }
    virtual int maxValue() const { return min(255, m_pElemType->maxValue()); }

    virtual VarPtr accept(Visitor* pVisitor);
    virtual std::string typeDef() const { return "set"; }

private:
    Type* m_pElemType;
};


///////////////////////////////////////////////////////////////////////////////
//
// record type building blocks
//
struct FieldSet
{
    IdList* pNames;
    Type* pType;

    FieldSet(IdList* pNames, Type* pType) :
        pNames(pNames), pType(pType) {}
}; 

typedef std::list<FieldSet*> FixedFieldList;

struct VariantSelector
{
    Identifier* pId;
    Type* pType;

    VariantSelector(Identifier* pId, Type* pType) :
        pId(pId), pType(pType) {}
};

struct RecordFields;

struct VariantSection
{
    obj::ConstList* pConstants;
    RecordFields* pFields;

    VariantSection(obj::ConstList* pConstants, RecordFields* pFields) :
        pConstants(pConstants), pFields(pFields) {}
};

typedef std::list<VariantSection*> VariantFieldList;

struct VariableFields
{
    VariantSelector* pVariantSelector;
    VariantFieldList* pVariantFields;

    VariableFields(VariantSelector* pVariantSelector, VariantFieldList* pVariantFields) :
        pVariantSelector(pVariantSelector), pVariantFields(pVariantFields) {}
};

struct RecordFields
{
    FixedFieldList* pFixedFields;
    VariableFields* pVariableFields;

    RecordFields(FixedFieldList* pFixedFields, VariableFields* pVariableFields) :
        pFixedFields(pFixedFields), pVariableFields(pVariableFields) {}

    RecordFields* getVariant(const obj::Constant* pConst) const;
};


///////////////////////////////////////////////////////////////////////////////
//
class RecordType : public Type
{
public:
    typedef std::map<Identifier*, Type*, IdCmpLess> FieldMap;

public:
    RecordType(RecordFields* pFields, Scope* pScope, int line);

    virtual bool isRecord() const { return true; }
    virtual void resolve();

    const FieldMap& fieldMap() const { return m_fieldMap; }
    
    const RecordFields* fields() const { return m_pFields; }

    virtual VarPtr accept(Visitor* pVisitor);
    virtual std::string typeDef() const { return "record"; }

private:
    void _addFieldMapEntry(Identifier* pId, Type* pType);
    void _populateFieldMap(const RecordFields* pFields);

private:
    RecordFields* m_pFields;
    FieldMap m_fieldMap;
};


///////////////////////////////////////////////////////////////////////////////
//
class PointerType : public Type
{
public:
    PointerType(Identifier* pTypeId, Scope* pScope, int line);

    PointerType(Type* pBaseType, Scope* pScope, int line) :
        Type(pScope, line),
        m_pTypeId(nullptr),
        m_pBaseType(pBaseType)
    {
    }
    
public:
    virtual bool isPointer() const { return true; }
    virtual void resolve();

    Type* baseType() const { return m_pBaseType; }

    virtual VarPtr accept(Visitor* pVisitor);
    virtual std::string typeDef() const { return "pointer"; }

private:
    Identifier* m_pTypeId;
    Type* m_pBaseType;
};


///////////////////////////////////////////////////////////////////////////////
//
// function type building blocks
//
// CONSIDER: there's a significant overlap with obj::Parameter!
//
struct ParamSet
{
    IdList* pNames;
    Type* pType;
    bool byRef;

    ParamSet(IdList* pNames, Type* pType, bool byRef) :
        pNames(pNames), pType(pType), byRef(byRef)
    {
        assert(!pNames->empty());

        // for parameter definitions the type must be resolved immediately
        //
        pType->resolve();
    }

    ParamSet(Identifier* pId, SubroutineType* pSubroutinesType);
};

struct Param
{
    Identifier* pId;
    Type* pType;
    bool byRef;

public:
    Param(Identifier* pId, Type* pType, bool byRef) : pId(pId), pType(pType), byRef(byRef) {}
};

typedef std::list<ParamSet*> ParamSetList;
typedef std::list<Param> ParamList;


///////////////////////////////////////////////////////////////////////////////
//
class SubroutineType : public Type
{
public:
    SubroutineType(ParamSetList* pParamSetList, Type* pReturnType, Scope* pScope, int line);

public:
    virtual bool isSubroutine() const { return true; }

    virtual bool isSameType(const Type* pType) const;

    bool isFunction() const { return m_pReturnType != nullptr; }

    Type* returnType() const { return m_pReturnType; }

    const ParamList* paramList() const { return &m_paramList; }

    virtual VarPtr accept(Visitor* pVisitor);
    virtual std::string typeDef() const { return "subroutine"; }

private:
    ParamList m_paramList;
    Type* m_pReturnType;
};


///////////////////////////////////////////////////////////////////////////////
//
// this is the interface for types duble dispatch visitors
//
class Visitor
{
public:
    virtual ~Visitor() {}

public:
    virtual VarPtr visit(VoidType* pType) = 0;
    virtual VarPtr visit(IntegerType* pType) = 0;
    virtual VarPtr visit(CharType* pType) = 0;
    virtual VarPtr visit(BoolType* pType) = 0;
    virtual VarPtr visit(RealType* pType) = 0;
    virtual VarPtr visit(EnumType* pType) = 0;
    virtual VarPtr visit(RangeType* pType) = 0;
    virtual VarPtr visit(ArrayType* pType) = 0;
    virtual VarPtr visit(FileType* pType) = 0;
    virtual VarPtr visit(SetType* pType) = 0;
    virtual VarPtr visit(RecordType* pType) = 0;
    virtual VarPtr visit(PointerType* pType) = 0;
    virtual VarPtr visit(SubroutineType* pType) = 0;
};


///////////////////////////////////////////////////////////////////////////////
//
// predefined types
//
// CONSIDER: encapsulate these globals
//
extern VoidType* g_pVoidType;
extern IntegerType* g_pIntegerType;
extern CharType* g_pCharType;
extern BoolType* g_pBoolType;
extern RealType* g_pRealType;
extern FileType* g_pTextType;
extern SetType* g_pGenericSetType;

void predefineTypes();


} // end namespace ts


