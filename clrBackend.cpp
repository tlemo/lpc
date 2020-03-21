
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
#include "clrBackend.h"

#undef min
#undef max


namespace clr
{

///////////////////////////////////////////////////////////////////////////////
//
// CLR backend specific AST nodes
//
VarPtr TmpExpr::accept(ast::Visitor* pVisitor) const
{
    assert(dynamic_cast<ClrBackend*>(pVisitor) != nullptr);
    return static_cast<ClrBackend*>(pVisitor)->visit(this);
}


VarPtr NewObjExpr::accept(ast::Visitor* pVisitor) const
{
    assert(dynamic_cast<ClrBackend*>(pVisitor) != nullptr);
    return static_cast<ClrBackend*>(pVisitor)->visit(this);
}


///////////////////////////////////////////////////////////////////////////////
//
// the recursive helper for generating "record" definitions
//
TypeGen::FieldsDef TypeGen::_fieldsDef(const ts::RecordFields* pFields, int offset)
{
    int alignment = 1;
    stringstream def;

    // add field helper
    //
    const auto addField = [&](const Identifier* pId, ts::Type* pType)
    {
        auto pExt = ext(pType);

        assert(pExt->size > 0);
        assert(pExt->alignment > 0);
        assert(!pExt->ilName.empty());

        // align the offset
        //
        offset += pExt->alignment - 1;
        offset -= offset % pExt->alignment;

        def << ".field [" << offset << "] public ";
        def << pExt->ilName << " ";
        def << genSimpleName(pId->name) << "\n";

        offset += pExt->size;

        // update the alignment
        //
        alignment = LCM(alignment, pExt->alignment);
    };

    // fixed fields
    //
    if(pFields->pFixedFields != nullptr)
    {
        def << "\n";

        for (const auto& fieldSet : *pFields->pFixedFields)
        {
            auto pFieldType = fieldSet->pType;
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
        auto pSelField = pFields->pVariableFields->pVariantSelector;

        if(pSelField->pId != nullptr)
        {
            m_pBackend->_generateType(pSelField->pType);

            def << "\n// variable fields selector\n";
            addField(pSelField->pId, pSelField->pType);
        }

        int varFieldsSize = 0;

        for (const auto& variantSection : *pFields->pVariableFields->pVariantFields)
        {
            def << "\n";

            for (const auto& pConst : *variantSection->pConstants)
            {
                assert(pConst->pType->isOrdinal());

                def << "// case ";

                if(pConst->pId != nullptr)
                    def << pConst->pId->name << " = ";

                if(pConst->pType->isChar())
                {
                    def << "'" << static_cast<char>(pConst->intValue) <<
                        "' (" << pConst->intValue << ")\n";
                }
                else
                {
                    def << pConst->intValue << "\n";
                }
            }

            auto varFieldsDef = _fieldsDef(variantSection->pFields, offset);
            
            def << indentBlock(varFieldsDef.def);

            varFieldsSize = max(varFieldsSize, varFieldsDef.size);
            alignment = LCM(alignment, varFieldsDef.alignment);
        }

        offset += varFieldsSize;
    }

    return FieldsDef(def.str(), offset, alignment);
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::RecordType* pType)
{
    const auto fieldsDef = _fieldsDef(pType->fields());

    auto pExt = ext(pType);

    pExt->ilName = "valuetype " + pExt->genName;
    pExt->alignment = fieldsDef.alignment;
    pExt->size = fieldsDef.size;

    stringstream def;
    def << "\n" << genLine(HIDDEN_CODE, m_pBackend->emitDebugInfo()) << "\n";
    def << "// TYPE " << pType->typeId() << " = record;\n";
    def << ".class value explicit " << pExt->genName << "\n{\n";
    def << TAB << "// alignment = " << pExt->alignment << "\n";
    def << TAB << ".size " << pExt->size << "\n";
    def << indentBlock(fieldsDef.def);
    def << "}\n";

    pExt->def = def.str();

    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
// calculate an array element size taking the alignment of the element into account
// (size must be a multiple of the alignment)
//
static
int arrayElemSize(ts::Type* pType)
{
    auto pExt = ext(pType);
    int size = pExt->size;
    int align = pExt->alignment;

    assert(size > 0);
    assert(align > 0);

    return (size + (align - 1)) / align * align;
}


///////////////////////////////////////////////////////////////////////////////
//
// generates the array -> string method
//
static
string arrayToStringMethod(string name, int length)
{
    stringstream code;

    code << ".method public static string arrayToString(valuetype " << name << ")\n";
    code << "{\n";
    code << TAB << "ldarga 0\n";
    code << TAB << "ldc.i4.0\n";
    code << TAB << "ldc.i4 " << length << "\n";
    code << TAB << "ldnull\n";
    code << TAB << "newobj instance void [mscorlib]System.String::.ctor(" <<
        "int8*, int32, int32, class [mscorlib]System.Text.Encoding)\n";
    code << TAB << "ret\n";
    code << "}\n";

    return code.str();
}


///////////////////////////////////////////////////////////////////////////////
//
// generates the array element address helper
//
static
string arrayLdadrMethod(ts::Type* pElemType, ts::Type* pIndexType)
{
    stringstream code;

    code << ".method public " << ext(pElemType)->ilName << "& ldadr(int32 index)\n";
    code << "{\n";

    code << TAB << "// check(index >= " << pIndexType->minValue() << ")\n";
    code << TAB << "ldarg index\n";
    code << TAB << "ldc.i4 " << pIndexType->minValue() << "\n";
    code << TAB << "blt badIndex\n\n";

    code << TAB << "// check(index <= " << pIndexType->maxValue() << ")\n";
    code << TAB << "ldarg index\n";
    code << TAB << "ldc.i4 " << pIndexType->maxValue() << "\n";
    code << TAB << "bgt badIndex\n\n";

    code << TAB << "ldarg.0\n";
    code << TAB << "ldarg index\n";

    if(pIndexType->minValue() != 0)
    {
        code << TAB << "ldc.i4 " << pIndexType->minValue() << "\n";
        code << TAB << "sub\n";
    }

    auto elemSize = arrayElemSize(pElemType);

    if(elemSize != 1)
    {
        code << TAB << "ldc.i4 " << elemSize << "\n";
        code << TAB << "mul\n";
    }

    code << TAB << "add\n";
    code << TAB << "ret\n\n";

    code << "badIndex:\n";
    code << TAB << "ldstr \"index out of bounds\"\n";
    code << TAB << "newobj instance void [mscorlib]System.Exception::.ctor(string)\n";
    code << TAB << "throw\n";

    code << "}\n";

    return code.str();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::ArrayType* pType)
{
    auto pExt = ext(pType);
    auto pIndexType = pType->indexType();
    auto pElemType = pType->elemType();

    m_pBackend->_generateType(pElemType);
    auto pElemExt = ext(pElemType);

    const auto minValue = pIndexType->minValue();
    const auto maxValue = pIndexType->maxValue();
    const auto count = maxValue - minValue + 1;
    const auto elemSize = arrayElemSize(pElemType);
    assert(elemSize > 0);
    
    pExt->size = count * elemSize;
    pExt->alignment = pElemExt->alignment;

    // did we already generate an identical array wrapper?
    //
    if(auto pOrigExt = m_pBackend->_findArrayType(pElemExt->ilName, minValue, maxValue))
    {
        assert(pExt->def.empty());
        assert(pExt->size == pOrigExt->size);
        assert(pExt->alignment == pOrigExt->alignment);

        pExt->genName = pOrigExt->genName;
        pExt->ilName = pOrigExt->ilName;
        return VarPtr();
    }

    // generate a new array implementation
    //
    stringstream def;
    
    def << "\n" << genLine(HIDDEN_CODE, m_pBackend->emitDebugInfo()) << "\n";
    def << "// TYPE " << pType->typeId() << " = ";
    def << "array [" << minValue << " .. " << maxValue << "] of ";
    def << pElemExt->ilName << ";\n";

    def << ".class value explicit " << pExt->genName << "\n{\n";
    def << TAB << "// elem size = " << elemSize << "\n";
    def << TAB << "// alignment = " << pExt->alignment << "\n";
    def << TAB << ".size " << pExt->size   << "\n\n";

    def << TAB << ".field [0] public " << pElemExt->ilName << " elem\n\n";

    def << indentBlock(arrayLdadrMethod(pElemType, pIndexType));

    if(pType->isString())
    {
        def << "\n";
        def << indentBlock(arrayToStringMethod(pExt->genName, pType->strLength()));
    }

    def << "}\n";

    pExt->def = def.str();
    pExt->ilName = "valuetype " + pExt->genName;

    m_pBackend->_cacheArrayType(pElemExt->ilName, minValue, maxValue, pExt);

    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
// generates Set.addValue() method
//
static
string setAddValueMethod(int minValue, int maxValue)
{
    stringstream code;

    code << ".method public void addValue(int32 val)\n";
    code << "{\n";

    // value range checks
    //
    code << TAB << "// check(value >= " << minValue << ")\n";
    code << TAB << "ldarg val\n";
    code << TAB << "ldc.i4 " << minValue << "\n";
    code << TAB << "blt badValue\n\n";

    code << TAB << "// check(value <= " << maxValue << ")\n";
    code << TAB << "ldarg val\n";
    code << TAB << "ldc.i4 " << maxValue << "\n";
    code << TAB << "bgt badValue\n\n";

    // bits[value / 8] |= (1 << (value % 8))
    //
    code << TAB << "ldarg.0\n";
    code << TAB << "ldarg val\n";
    code << TAB << "ldc.i4.8\n";
    code << TAB << "div\n";
    code << TAB << "add\n";
    code << TAB << "dup\n";
    code << TAB << "ldind.u1\n";
    code << TAB << "ldc.i4.1\n";
    code << TAB << "ldarg val\n";
    code << TAB << "ldc.i4.8\n";
    code << TAB << "rem.un\n";
    code << TAB << "shl\n";
    code << TAB << "or\n";
    code << TAB << "stind.i1\n";

    code << TAB << "ret\n\n";

    code << "badValue:\n";
    code << TAB << "ldstr \"invalid set literal value\"\n";
    code << TAB << "newobj instance void [mscorlib]System.Exception::.ctor(string)\n";
    code << TAB << "throw\n";

    code << "}\n";

    return code.str();
}


///////////////////////////////////////////////////////////////////////////////
//
// generates Set.addRange() method
//
static
string setAddRangeMethod(string className)
{
    stringstream code;

    code << ".method public void addRange(int32 start, int32 end)\n";
    code << "{\n";

    code << TAB << ".locals init (int32 i)\n\n";

    // check range limits
    //
    code << TAB << "// check(start <= end)\n";
    code << TAB << "ldarg start\n";
    code << TAB << "ldarg end\n";
    code << TAB << "bgt badRange\n\n";

    // for(i = start; i <= end; ++i)
    //      addValue(i)
    //
    code << TAB << "// for(i = start; i <= end; ++i) addValue(i)\n";
    code << TAB << "ldarg start\n";
    code << TAB << "stloc i\n";
    code << "loop:\n";

    code << TAB << "ldarg.0\n";
    code << TAB << "ldloc i\n";
    code << TAB << "call instance void " << className << "::addValue(int32)\n";

    code << TAB << "ldloc i\n";
    code << TAB << "ldc.i4.1\n";
    code << TAB << "add\n";
    code << TAB << "dup\n";
    code << TAB << "stloc i\n";

    code << TAB << "ldarg end\n";
    code << TAB << "ble loop\n";

    code << TAB << "ret\n\n";

    code << "badRange:\n";
    code << TAB << "ldstr \"invalid set literal range\"\n";
    code << TAB << "newobj instance void [mscorlib]System.Exception::.ctor(string)\n";
    code << TAB << "throw\n";

    code << "}\n";

    return code.str();
}


///////////////////////////////////////////////////////////////////////////////
//
// generates Set.clear() method
//
static
string setClearMethod(int size)
{
    stringstream code;

    code << ".method public void clear()\n";
    code << "{\n";
    code << TAB << "ldarg.0\n";
    code << TAB << "ldc.i4.0\n";
    code << TAB << "ldc.i4 " << size << "\n";
    code << TAB << "initblk\n";
    code << TAB << "ret\n\n";
    code << "}\n";

    return code.str();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::SetType* pType)
{
    auto pExt = ext(pType);

    const int minValue = pType->minValue();
    const int maxValue = pType->maxValue();
    assert(minValue <= maxValue);
    assert(minValue >= 0);
    assert(maxValue < 256);

    // the set representation is always [0, maxValue] as packed bits into 32bit "units"
    // (so there are "maxValue + 1" bits)
    //
    const int count = maxValue + 1;
    const int units = (count + 31) / 32; 

    pExt->size = units * 4;
    pExt->alignment = 4;

    // did we already generate an identical set wrapper?
    //
    if(auto pOrigExt = m_pBackend->_findSetType(minValue, maxValue))
    {
        assert(pExt->def.empty());
        assert(pExt->size == pOrigExt->size);
        assert(pExt->alignment == pOrigExt->alignment);

        pExt->genName = pOrigExt->genName;
        pExt->ilName = pOrigExt->ilName;
        return VarPtr();
    }

    // generate a new set implementation
    //
    stringstream def;
    
    def << "\n" << genLine(HIDDEN_CODE, m_pBackend->emitDebugInfo()) << "\n";
    def << "// TYPE " << pType->typeId() << " = ";
    def << "set of " << minValue << " .. " << maxValue << "\n";

    def << ".class value explicit " << pExt->genName << "\n";
    def << "{\n";

    for(int i = 0; i < units; ++i)
    {
        def << TAB << ".field [" << i * 4 << "] public uint32 bits" << i << "\n";
    }

    // CONSIDER: these methods should be generated only if they are actually needed
    //
    def << "\n" << indentBlock(setAddValueMethod(minValue, maxValue));
    def << "\n" << indentBlock(setAddRangeMethod(pExt->genName));
    def << "\n" << indentBlock(setClearMethod(pExt->size));

    def << "}\n";

    pExt->def = def.str();
    pExt->ilName = "valuetype " + pExt->genName;

    m_pBackend->_cacheSetType(minValue, maxValue, pExt);

    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::SubroutineType* pType)
{
    auto pExt = ext(pType);
    pExt->size = REF_SIZE;
    pExt->alignment = REF_ALIGNMENT;

    stringstream def;
    
    def << "\n" << genLine(HIDDEN_CODE, m_pBackend->emitDebugInfo()) << "\n";
    def << "// TYPE " << pType->typeId() << " = ";
    def << (pType->isFunction() ? "function^;\n" : "procedure^;\n");

    def << ".class sealed " << pExt->genName << " extends [mscorlib]System.MulticastDelegate\n";
    def << "{\n";
    def << TAB << ".method public void .ctor(object, native uint) runtime managed {}\n";
    def << TAB << ".method public " << m_pBackend->_genPrototype(pType, "Invoke") << " runtime managed {}\n";
    def << "}\n";

    pExt->def = def.str();
    pExt->ilName = "class " + pExt->genName;

    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
// returns true if the range type can fit into T (which should be an integral type)
//
template<typename T>
bool _fits(const ts::RangeType* pType)
{
    assert(pType->minValue() <= pType->maxValue());

    return pType->minValue() >= std::numeric_limits<T>::min() &&
        pType->maxValue() <= std::numeric_limits<T>::max();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::RangeType* pType)
{
    auto pExt = ext(pType);

    if(pType->baseType()->isChar())
    {
        pExt->alignment = 1;
        pExt->size = 1;
        pExt->ilName = "uint8";
        pExt->suffix = "u1";
    }
    else if(_fits<signed __int8>(pType))
    {
        pExt->alignment = 1;
        pExt->size = 1;
        pExt->ilName = "int8";
        pExt->suffix = "i1";
    }
    else if(_fits<unsigned __int8>(pType))
    {
        pExt->alignment = 1;
        pExt->size = 1;
        pExt->ilName = "uint8";
        pExt->suffix = "u1";
    }
    else if(_fits<signed __int16>(pType))
    {
        pExt->alignment = 2;
        pExt->size = 2;
        pExt->ilName = "int16";
        pExt->suffix = "i2";
    }
    else if(_fits<unsigned __int16>(pType))
    {
        pExt->alignment = 2;
        pExt->size = 2;
        pExt->ilName = "uint16";
        pExt->suffix = "u2";
    }
    else
    {
        pExt->alignment = 4;
        pExt->size = 4;
        pExt->ilName = "int32";
        pExt->suffix = "i4";
    }

    return VarPtr();
}


} // end namespace clr


