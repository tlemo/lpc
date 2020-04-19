
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
static
int mdLineNumber(int line)
{
    return line > 0 ? line : 0;
}


///////////////////////////////////////////////////////////////////////////////
//
void TypeGen::gen(ts::Type* pType)
{
    auto pExt = ext(pType);
    assert(pExt->genName.empty());
    assert(pExt->def.empty());
    assert(pExt->pMetadata == nullptr);
    
    // set the name and a metadata placeholder early on,
    // so recursive type references can peek at their dependencies
    //
    // types must update the metadata definition and may also update the generic name
    //
    pExt->genName = m_pBackend->_genName(pType->typeId(), "%T_");
    pExt->pMetadata = m_pBackend->_newMetadata(Metadata::Kind::Type, "");

    pType->accept(this);

    assert(pExt->size >= 0);
    assert(pExt->alignment > 0);
    assert(pExt->size % pExt->alignment == 0);
    assert(!pExt->pMetadata->def.empty());
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::VoidType* pType)
{
    auto pExt = ext(pType);
    pExt->genName = "void";
    pExt->size = 0;
    pExt->alignment = 1;
    pExt->pMetadata->def = "!DIBasicType(name: \"void\", size: 0)";
    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::IntegerType* pType)
{
    auto pExt = ext(pType);
    pExt->genName = "i32";
    pExt->size = 4;
    pExt->alignment = 4;
    pExt->pMetadata->def = "!DIBasicType(name: \"integer\", size: 32, encoding: DW_ATE_signed)";
    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::CharType* pType)
{
    auto pExt = ext(pType);
    pExt->genName = "i8";
    pExt->size = 1;
    pExt->alignment = 1;
    pExt->pMetadata->def = "!DIBasicType(name: \"char\", size: 8, encoding: DW_ATE_unsigned_char)";
    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::BoolType* pType)
{
    auto pExt = ext(pType);
    pExt->genName = "i1";
    pExt->size = 1;
    pExt->alignment = 1;
    pExt->pMetadata->def = "!DIBasicType(name: \"boolean\", size: 8, encoding: DW_ATE_boolean)";
    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::RealType* pType)
{
    auto pExt = ext(pType);
    pExt->genName = "double";
    pExt->size = 8;
    pExt->alignment = 8;
    pExt->pMetadata->def = "!DIBasicType(name: \"real\", size: 64, encoding: DW_ATE_float)";
    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::EnumType* pType)
{
    auto pExt = ext(pType);
    pExt->genName = "i32";
    pExt->size = 4;
    pExt->alignment = 4;
    pExt->pMetadata->def = "!DIBasicType(name: \"enum\", size: 32, encoding: DW_ATE_signed)";
    return VarPtr();
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

    // the set representation is always [0, maxValue] as bits packed into 32bit "units"
    // (so there are "maxValue + 1" bits)
    //
    const int count = maxValue + 1;
    const int units = (count + 31) / 32; 

    pExt->size = units * 4;
    pExt->alignment = 4;

    // definition
    //
    stringstream def;
    def << "[" << units << " x i32]";
    pExt->def = def.str();

    // debug information
    //
    stringstream indexRange;
    indexRange << "!DISubrange(" << "count: " << count << ")";
    auto rangeMd = m_pBackend->_newMetadata(Metadata::Kind::Generic, indexRange.str());

    stringstream elements;
    elements << "!{" << rangeMd->id << "}";
    auto elementsMd = m_pBackend->_newMetadata(Metadata::Kind::Generic, elements.str());

    auto bitTypeMd = m_pBackend->_newMetadata(Metadata::Kind::Generic,
        "!DIBasicType(size: 1, encoding: DW_ATE_boolean)");

    stringstream typeName;
    if (pType->isUserDeclared())
        typeName << "name: \"" << pType->typeId() << "\", ";

    stringstream md;
    md << "!DICompositeType(tag: DW_TAG_array_type, " <<
        typeName.str() <<
        "file: " << m_pBackend->m_sourceFileMd->id << ", " <<
        "line: " << mdLineNumber(pType->line()) << ", " <<
        "baseType: " << bitTypeMd->id << ", " <<
        "size: " << pExt->size * 8 << ", " <<
        "elements: " << elementsMd->id << ")";
    pExt->pMetadata->def = md.str();

    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
// the recursive helper for generating "record" definitions
//
TypeGen::FieldsLayout TypeGen::_fieldsLayout(const ts::RecordFields* pFields, int offset)
{
    vector<Field> fieldsDef;
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

        fieldsDef.push_back({ pId, pType, offset });

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

            fieldsDef.insert(fieldsDef.end(),
                varFieldsLayout.fields.begin(), varFieldsLayout.fields.end());

            varFieldsSize = max(varFieldsSize, varFieldsLayout.size);
            alignment = LCM(alignment, varFieldsLayout.alignment);
        }

        offset += varFieldsSize;
    }

    return { fieldsDef, offset, alignment };
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

    pExt->alignment = fieldsLayout.alignment;
    pExt->size = roundUp(fieldsLayout.size, fieldsLayout.alignment);

    // definition
    //
    stringstream def;
    def << "[" << fieldsLayout.size << " x i8]";
    pExt->def = def.str();

    // build the name -> offset map
    //
    for(const auto& [pId, _, offset] : fieldsLayout.fields)
    {
        const bool inserted = pExt->fields.insert({ pId->name, offset }).second;
        assert(inserted);
    }

    // debug information
    //
    stringstream fieldsList;
    fieldsList << "!{";
    bool firstField = true;
    for(const auto& [pId, pFieldType, offset] : fieldsLayout.fields)
    {
        stringstream def;
        def << "!DIDerivedType(tag: DW_TAG_member, " <<
            "name: \"" << pId->name << "\", " <<
            "scope: " << pExt->pMetadata->id << ", " <<
            "file: " << m_pBackend->m_sourceFileMd->id << ", " <<
            "line: " << mdLineNumber(pId->line) << ", " <<
            "baseType: " << ext(pFieldType)->pMetadata->id << ", " <<
            "size: " << ext(pFieldType)->size * 8 << ", " <<
            "offset: " << offset * 8 << ")";
        
        auto fieldMd = m_pBackend->_newMetadata(Metadata::Kind::Field, def.str());
        if (!firstField)
            fieldsList << ",";
        fieldsList << fieldMd->id;
        firstField = false;
    }
    fieldsList << "}";

    auto elementsMd = m_pBackend->_newMetadata(Metadata::Kind::Generic, fieldsList.str());

    stringstream typeName;
    if (pType->isUserDeclared())
        typeName << "name: \"" << pType->typeId() << "\", ";

    stringstream md;
    md << "distinct !DICompositeType(tag: DW_TAG_structure_type, " <<
        typeName.str() <<
        "file: " << m_pBackend->m_sourceFileMd->id << ", " <<
        "line: " << mdLineNumber(pType->line()) << ", " <<
        "size: " << pExt->size * 8 << ", " <<
        "flags: DIFlagTypePassByValue, " <<
        "elements: " << elementsMd->id << ")";
    pExt->pMetadata->def = md.str();

    return VarPtr();
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
    assert(pElemExt->size > 0);
    assert(pElemExt->size % pElemExt->alignment == 0);

    const auto minIndex = pIndexType->minValue();
    const auto maxIndex = pIndexType->maxValue();
    const auto count = maxIndex - minIndex + 1;
    assert(count > 0);

    pExt->size = count * pElemExt->size;
    pExt->alignment = pElemExt->alignment;

    // definition
    //
    stringstream def;
    def << "[" << count << " x " << pElemExt->genName << "]";
    pExt->def = def.str();

    // debug information
    //
    // NOTE: CodeView doesn't support lowerBound
    //
    stringstream indexRange;
    indexRange << "!DISubrange(" << "count: " << count << ")";
    auto rangeMd = m_pBackend->_newMetadata(Metadata::Kind::Generic, indexRange.str());

    stringstream elements;
    elements << "!{" << rangeMd->id << "}";
    auto elementsMd = m_pBackend->_newMetadata(Metadata::Kind::Generic, elements.str());

    stringstream typeName;
    if (pType->isUserDeclared())
        typeName << "name: \"" << pType->typeId() << "\", ";

    stringstream md;
    md << "!DICompositeType(tag: DW_TAG_array_type, " <<
        typeName.str() <<
        "file: " << m_pBackend->m_sourceFileMd->id << ", " <<
        "line: " << mdLineNumber(pType->line()) << ", " <<
        "baseType: " << pElemExt->pMetadata->id << ", " <<
        "size: " << pExt->size * 8 << ", " <<
        "elements: " << elementsMd->id << ")";
    pExt->pMetadata->def = md.str();

    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::PointerType* pType)
{
    auto pExt = ext(pType);

    // set the size & alignment early, before generating the base type
    // (since the base type may reference back this pointer type)
    //
    pExt->size = PTR_SIZE;
    pExt->alignment = PTR_ALIGNMENT;

    // Ideally, we'd define pointers as 'BaseType*'. Unfortunately, LLVM IR
    // only allows forward/recursive type definitions for structures:
    //
    // %T_C = type %T_B* ; error: forward references to non-struct type
    // %T_B = type %T_C*
    //
    pExt->genName = "i8*";

    const auto pBaseType = pType->baseType();
    m_pBackend->_generateType(pBaseType);

    // debug information
    //
    stringstream typeName;
    if (pType->isUserDeclared())
        typeName << "name: \"" << pType->typeId() << "\", ";

    // this is an ugly hack, to work around the poor
    // support for recursive type definitions in LLVM/CodeView
    //
    auto baseTypeId = pBaseType->isPointer() ? "null" : ext(pBaseType)->pMetadata->id;

    stringstream md;
    md << "!DIDerivedType(tag: DW_TAG_pointer_type, " <<
        typeName.str() <<
        "file: " << m_pBackend->m_sourceFileMd->id << ", " <<
        "line: " << mdLineNumber(pType->line()) << ", " <<
        "baseType: " << baseTypeId << ", " <<
        "size: " << pExt->size * 8 << ")";
    pExt->pMetadata->def = md.str();

    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::FileType* pType)
{
    const auto pElemType = pType->elemType();
    m_pBackend->_generateType(pElemType);
    
    if(!pElemType->isChar())
    {
        context()->warning(pType->line(), "only Text files are supported");
    }

    auto pExt = ext(pType);
    pExt->size = PTR_SIZE;
    pExt->alignment = PTR_ALIGNMENT;
    pExt->def = "i8*";

    // debug information
    //
    stringstream typeName;
    if (pType->isUserDeclared())
        typeName << "name: \"" << pType->typeId() << "\", ";

    stringstream md;
    md << "!DIDerivedType(tag: DW_TAG_pointer_type, " <<
        typeName.str() <<
        "file: " << m_pBackend->m_sourceFileMd->id << ", " <<
        "line: " << mdLineNumber(pType->line()) << ", " <<
        "baseType: null, " <<
        "size: " << pExt->size * 8 << ")";
    pExt->pMetadata->def = md.str();

    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::SubroutineType* pType)
{
    auto pExt = ext(pType);

    pExt->size = PTR_SIZE;
    pExt->alignment = PTR_ALIGNMENT;

    stringstream def;

    // return type
    //
    if(pType->isFunction())
    {
        m_pBackend->_generateType(pType->returnType());
        def << ext(pType->returnType())->genName;
    }
    else
        def << "void";

    // parameter types
    //
    def << " (i8*"; // TODO: real slink type?
    for (const auto& param : *pType->paramList())
    {
        m_pBackend->_generateType(param.pType);
        def << ", " << ext(param.pType)->genName;
    }
    def << ")*";
    
    pExt->def = def.str();

    // debug information
    //
    stringstream proto;
    proto << "!{";
    proto << (pType->isFunction() ? ext(pType->returnType())->pMetadata->id : "null");
    for (const auto& param : *pType->paramList())
    {
        proto << ", " << ext(param.pType)->pMetadata->id;
    }
    proto << "}";
    auto protoMd = m_pBackend->_newMetadata(Metadata::Kind::Generic, proto.str());

    stringstream pfn;
    pfn << "!DISubroutineType(types: " << protoMd->id << ")";
    auto pfnMd = m_pBackend->_newMetadata(Metadata::Kind::Type, pfn.str());

    stringstream typeName;
    if (pType->isUserDeclared())
        typeName << "name: \"" << pType->typeId() << "\", ";

    stringstream md;
    md << "!DIDerivedType(tag: DW_TAG_pointer_type, " <<
        typeName.str() <<
        "file: " << m_pBackend->m_sourceFileMd->id << ", " <<
        "line: " << mdLineNumber(pType->line()) << ", " <<
        "baseType: " << pfnMd->id << ", " <<
        "size: " << pExt->size * 8 << ")";
    pExt->pMetadata->def = md.str();

    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
VarPtr TypeGen::visit(ts::RangeType* pType)
{
    auto pExt = ext(pType);

    if(pType->baseType()->isChar())
    {
        pExt->genName = "i8";
        pExt->size = 1;
        pExt->alignment = 1;
        pExt->pMetadata->def = "!DIBasicType(name: \"range of char\", size: 8, encoding: DW_ATE_unsigned_char)";
    }
    else
    {
        pExt->genName = "i32";
        pExt->size = 4;
        pExt->alignment = 4;
        pExt->pMetadata->def = "!DIBasicType(name: \"range\", size: 32, encoding: DW_ATE_signed)";
    }

    return VarPtr();
}


///////////////////////////////////////////////////////////////////////////////
//
void LlvmBackend::_outputStringLiterals()
{
    if (m_stringLiterals.empty())
        return;

    std::stringstream code;

    code << "\n";
    code << ";================================================================================\n";
    code << "; string literals\n";
    code << "\n";
    for (const auto& [str, literal] : m_stringLiterals)
    {
        code << literal->name << " = private unnamed_addr constant " << literal->llvmType;
        code << " c\"";
        for (char c : str)
        {
            switch (c)
            {
            case '"': code << "\\22"; break;
            case '\\': code << "\\5C"; break;
            default: code << c; break;
            }
        }
        code << "\\00\", align 1\n";
    }
    code << "\n";

    write(code);
}


///////////////////////////////////////////////////////////////////////////////
//
void LlvmBackend::_outputMetadata()
{
    auto filterMetadata = [&](Metadata::Kind kind)
    {
        stringstream md;
        md << "!{";
        bool first = true;
        for (auto pMetadata : m_metadata)
        {
            if (pMetadata->kind == kind)
            {
                if (!first)
                    md << ",";
                md << pMetadata->id;
                first = false;
            }
        }
        md << "}";
        return md.str();
    };

    auto typesMd = _newMetadata(Metadata::Kind::Generic,
        filterMetadata(Metadata::Kind::Type));

    auto enumsMd = _newMetadata(Metadata::Kind::Generic,
        filterMetadata(Metadata::Kind::Enum));

    auto globalsMd = _newMetadata(Metadata::Kind::Generic,
        filterMetadata(Metadata::Kind::Global));

    // version
    //
    stringstream version;
    version << "!{!\"LPC " << BUILD_VERSION << "\"}";
    auto versionMd = _newMetadata(Metadata::Kind::Generic, version.str());

    // compile unit metadata
    //
    stringstream compileUnit;
    compileUnit << "distinct !DICompileUnit(" <<
        "language: DW_LANG_Pascal83, " <<
        "file: " << m_sourceFileMd->id << ", " <<
        "producer: \"LPC " << BUILD_VERSION << "\", " <<
        "isOptimized: true, " <<
        "runtimeVersion: 0, " <<
        "emissionKind: FullDebug, " <<
        "enums: " << enumsMd->id << ", " <<
        "retainedTypes: " << typesMd->id << ", " <<
        "globals: " << globalsMd->id << ", " <<
        "nameTableKind: None)";
    auto compileUnitMd = _newMetadata(Metadata::Kind::Generic, compileUnit.str());

    auto cvVersionMd = _newMetadata(Metadata::Kind::Generic, "!{i32 2, !\"CodeView\", i32 1}");
    auto dbgInfoVersionMd = _newMetadata(Metadata::Kind::Generic, "!{i32 2, !\"Debug Info Version\", i32 3}");

    std::stringstream code;

    code << "\n";
    code << ";================================================================================\n";
    code << "; metadata\n";
    code << "\n";
    code << "!llvm.dbg.cu = !{" << compileUnitMd->id << "}\n";
    code << "!llvm.module.flags = !{" << cvVersionMd->id << ", " << dbgInfoVersionMd->id << "}\n";
    code << "!llvm.ident = !{" << versionMd->id << "}\n";
    code << "\n";
    for (auto pMetadata : m_metadata)
    {
        code << pMetadata->id << " = " << pMetadata->def << "\n";
    }
    code << "\n";

    write(code);
}


///////////////////////////////////////////////////////////////////////////////
//
void LlvmBackend::_start()
{
    // reset per-program state
    //
    m_metadata.clear();
    m_metadataIdGen = 0;

    m_stringLiterals.clear();
    m_stringLiteralGen = 1;

    std::stringstream code;

    // source file metadata
    //
    stringstream srcFile;
    const auto path = filesystem::path(context()->commandLine()->getInputName());
    srcFile << "!DIFile(" <<
        "filename: \"" << path.filename().string() << "\", " <<
        "directory: \"" << path.parent_path().string() << "\")";
    m_sourceFileMd = _newMetadata(Metadata::Kind::Generic, srcFile.str());

    // module header
    //
    code << "; ModuleID = '" << path.filename().string() << "'\n";
    code << "source_filename = \"" << path.string() << "\"\n";
    code << "target datalayout = \"e-m:w-i64:64-f80:128-n8:16:32:64-S128\"\n";
    code << "\n";

    // runtime interface
    //
    code << "; runtime functions\n";
    code << "declare dso_local i8* @_OpenFile(i32)\n";
    code << "declare dso_local i8* @_OpenTempFile(i8*)\n";
    code << "declare dso_local void @_CloseFile(i8*)\n";
    code << "declare dso_local void @_WriteBool(i8*, i32, i32, i1)\n";
    code << "declare dso_local void @_WriteChar(i8*, i32, i32, i8)\n";
    code << "declare dso_local void @_WriteInteger(i8*, i32, i32, i32)\n";
    code << "declare dso_local void @_WriteReal(i8*, i32, i32, double)\n";
    code << "declare dso_local void @_WriteString(i8*, i32, i32, i8*, i32)\n";
    code << "declare dso_local void @_WriteLn(i8*)\n";
    code << "\n";

    // generate the command line mapping
    //
    const auto& args = context()->symbolTable()->programArgs();

    stringstream entriesType;
    entriesType << "[" << args.size() + 1 << " x %struct._Filename]";

    code << "; program arguments (command line mapping)\n";
    code << "%struct._Filename = type { i8*, i8* }\n";
    code << "@_FilenameMapEntries = internal global " << entriesType.str() << "\n";
    code << TAB << "[\n";
    for (const auto& arg : args)
    {
        auto literal = _genLiteral(arg);
        code << TAB << "%struct._Filename { i8* " << literal->address << ", i8* null },\n";
    }
    code << TAB << "%struct._Filename { i8* null, i8* null }\n";
    code << TAB << "], align 16\n";

    code << "@_FilenameMap = dso_local global %struct._Filename* " <<
        "getelementptr inbounds (" << entriesType.str() << ", " <<
        entriesType.str() << "* @_FilenameMapEntries, i32 0, i32 0), align 8\n";
    code << "@_FilenameMapSize = dso_local constant i32 " << args.size() << ", align 4\n";

    write(code);
}


///////////////////////////////////////////////////////////////////////////////
//
void LlvmBackend::_end()
{
    _outputStringLiterals();
    _outputMetadata();
}


///////////////////////////////////////////////////////////////////////////////
//
// TODO: honor record type alignments
//
void LlvmBackend::_outputFrame(obj::Subroutine* pSubroutine)
{
    std::stringstream code;

    if (pSubroutine->pScope->category == Scope::scProgram)
    {
        assert(m_paramList.empty());
        assert(!pSubroutine->hasSlink());

        code << "\n; program variables\n";
        for (const auto pVar : m_varList)
        {
            const auto& varName = ext(pVar)->genName;
            assert(!varName.empty());
            code << varName << " = dso_local global " <<
                ext(pVar->pType)->genName << " zeroinitializer\n";
        }
    }
    else
    {
        auto pExt = ext(pSubroutine);

        int fieldIndex = 0;

        assert(pExt->frameName.empty());
        pExt->frameName = _genName("", "%Frame_");

        code << "\n; activation record\n";
        code << pExt->frameName << " = type\n{\n";

        // parameters
        //
        if (!m_paramList.empty())
        {
            code << TAB << "; parameters\n";
            for (const auto pParam : m_paramList)
            {
                const auto* pParamTypeExt = ext(pParam->pType);
                assert(!pParamTypeExt->genName.empty());
                code << TAB << pParamTypeExt->genName << (pParam->byRef ? "*," : ",");
                code << TAB << "; " << fieldIndex << ": " << pParam->pId->name << "\n";

                auto pParamExt = ext(pParam);
                assert(pParamExt->frameIndex == -1);
                pParamExt->frameIndex = fieldIndex++;
            }
            code << "\n";
        }

        // variables
        //
        if (!m_varList.empty())
        {
            code << TAB << "; variables\n";
            for (const auto pVar : m_varList)
            {
                const auto* pVarTypeExt = ext(pVar->pType);
                assert(!pVarTypeExt->genName.empty());
                code << TAB << pVarTypeExt->genName << ",";
                code << TAB << "; " << fieldIndex << ": " << pVar->pId->name << "\n";

                auto pVarExt = ext(pVar);
                assert(pVarExt->genName.empty());
                assert(pVarExt->frameIndex == -1);
                pVarExt->frameIndex = fieldIndex++;
            }
            code << "\n";
        }

        // slink
        //
        if (pSubroutine->hasSlink())
        {
            const auto* pParentExt = ext(pSubroutine->parent());
            assert(!pParentExt->frameName.empty());
            code << TAB << "; slink\n";
            code << TAB << pParentExt->frameName << "*";
            code << TAB << "; " << fieldIndex << "\n";
            pExt->slinkIndex = fieldIndex;
        }
        else
        {
            // just to make the LLVM struct well formed
            //
            code << TAB << "; dummy\n";
            code << TAB << "i8*\n";
        }

        code << "};\n";
    }

    write(code);
}


///////////////////////////////////////////////////////////////////////////////
//
void LlvmBackend::_outputSubroutine(obj::Subroutine* pSubroutine)
{
    auto pExt = ext(pSubroutine);
    const auto* pType = pSubroutine->pType;

    std::stringstream code;

    // return type
    //
    if (pType->isFunction())
    {
        code << "\n; function body\n";
        code << "define " << ext(pType->returnType())->genName << " ";
    }
    else
    {
        code << "\n; procedure body\n";
        code << "define void ";
    }

    // name
    //
    code << _genName(pSubroutine);

    // parameters
    //
    code << "(";

    string paramSep = "";

    if (pSubroutine->hasSlink())
    {
        const auto* pParentExt = ext(pSubroutine->parent());
        assert(!pParentExt->frameName.empty());
        code << pParentExt->frameName << "* %.slink";
        paramSep = ", ";
    }

    for (const auto& param : *pType->paramList())
    {
        code << paramSep << ext(param.pType)->genName;
        if (param.byRef)
            code << "*";
        code << " %" << param.pId->name;
        paramSep = ", ";
    }

    code << ")\n";

    // body
    //
    code << "{\n";
    
    code << _initFrame(pSubroutine);
    code << _genInitializers(pSubroutine);

    auto bodyIr = gen(pSubroutine->pBody);
    assert(bodyIr->value.empty());
    code << TAB << "; body\n";
    code << bodyIr->code << "\n";

    code << _genCleanup(pSubroutine);
    code << _genEpilogue(pSubroutine);
    
    code << "}\n\n";

    write(code);
}


///////////////////////////////////////////////////////////////////////////////
//
// generates the address of the specified activation record
// (based on the current scope)
//
IrFragment LlvmBackend::_genFrameAddress(const Scope* pTargetScope)
{
    const auto targetLevel = pTargetScope->level;
    assert(targetLevel > Scope::PROGRAM_SCOPE_LEVEL);
    assert(targetLevel <= m_pCurrentScope->level);

    stringstream code;
    string framePtr = "%.frame";

    auto pScope = m_pCurrentScope;

    for (; pScope->level != targetLevel; pScope = pScope->pParent)
    {
        const auto* pExt = ext(pScope->subroutine());

        const auto slinkPtr = _genTempValue();
        code << TAB << slinkPtr << " = getelementptr inbounds " <<
            pExt->frameName << ", " << pExt->frameName << "* " << framePtr <<
            ", i32 0, i32 " << pExt->slinkIndex << "\n";

        const auto* pParentExt = ext(pScope->pParent->subroutine());
        assert(!pParentExt->frameName.empty());

        framePtr = _genTempValue();
        code << TAB << framePtr << " = load " << pParentExt->frameName <<
            "*, " << pParentExt->frameName << "** " << slinkPtr << "\n";
    }

    assert(pScope == pTargetScope);

    return { code.str(), framePtr };
}


///////////////////////////////////////////////////////////////////////////////
//
IrFragment LlvmBackend::_getStringAddress(ast::Expr* pString)
{
    assert(pString->pType->isString());

    stringstream code;
    string stringPtr;

    if(auto pConstExpr = pString->as<ast::ConstExpr>())
    {
        auto literal = _genLiteral(*pConstExpr->pConstant->strValue);
        stringPtr = literal->address;
    }
    else
    {
        const auto strPtrIr = _genLValueAddress(pString);
        code << strPtrIr.code;

        // address value (as i8*)
        //
        const auto& irType = ext(pString->pType)->genName;
        stringstream address;
        address << "getelementptr inbounds (" <<
            irType << ", " << irType << "* " <<
            strPtrIr.value << ", i32 0, i32 0)";

        stringPtr = address.str();
    }

    return { code.str(), stringPtr };
}


///////////////////////////////////////////////////////////////////////////////
//
IrFragment LlvmBackend::_genVarAddress(obj::Variable* pVar)
{
    const auto* pVarExt = ext(pVar);

    stringstream code;
    string varPtr;

    // frame-based?
    //
    if (pVarExt->genName.empty())
    {
        assert(pVarExt->frameIndex >= 0);

        varPtr = _genTempValue();

        const auto frameIr = _genFrameAddress(pVar->pScope);
        const auto& frameName = ext(pVar->pScope->subroutine())->frameName;

        code << frameIr.code;
        code << TAB << varPtr << " = getelementptr inbounds " <<
            frameName << ", " << frameName << "* " << frameIr.value <<
            ", i32 0, i32 " << pVarExt->frameIndex << "\n";
    }
    else
    {
        // global variable
        //
        varPtr = pVarExt->genName;
    }

    return { code.str(), varPtr };
}


///////////////////////////////////////////////////////////////////////////////
//
IrFragment LlvmBackend::_genParamAddress(obj::Parameter* pParam)
{
    const auto* pParamExt = ext(pParam);
    assert(pParamExt->frameIndex >= 0);

    auto paramPtr = _genTempValue();

    const auto frameIr = _genFrameAddress(pParam->pScope);
    const auto& frameName = ext(pParam->pScope->subroutine())->frameName;

    stringstream code;

    code << frameIr.code;

    code << TAB << paramPtr << " = getelementptr inbounds " <<
        frameName << ", " << frameName << "* " << frameIr.value <<
        ", i32 0, i32 " << pParamExt->frameIndex << "\n";

    if (pParam->byRef)
    {
        auto finalPtr = _genTempValue();
        auto type = ext(pParam->pType)->genName;
        code << TAB << finalPtr << " = load " << type << "*, " <<
            type << "** " << paramPtr << "\n";
        paramPtr = finalPtr;
    }

    return { code.str(), paramPtr };
}


///////////////////////////////////////////////////////////////////////////////
//
// generates the address of a lvalue expression
//
IrFragment LlvmBackend::_genLValueAddress(const ast::Expr* pLValue)
{
    assert(pLValue->isLValue());

    stringstream code;
    string value;

    // variable?
    //
    if (auto pVarExpr = pLValue->as<ast::VarExpr>())
    {
        return _genVarAddress(pVarExpr->pVariable);
    }
    // parameter?
    //
    else if (auto pParamExpr = pLValue->as<ast::ParamExpr>())
    {
        return _genParamAddress(pParamExpr->pParameter);
    }
    // indirection?
    //
    else if (auto pIndirection = pLValue->as<ast::Indirection>())
    {
        auto ptrIr = gen(pIndirection->pObject);
        code << ptrIr->code;
        value = ptrIr->value;

        // we need to explicitly cast pointer values
        // (see TypeGen::visit(ts::PointerType*) for an explanation)
        //
        if (pIndirection->pObject->pType->isPointer())
        {
            const auto castPtr = _genTempValue();
            code << TAB << castPtr << " = bitcast i8* " << value <<
                " to " << ext(pIndirection->pType)->genName << "*\n";
            value = castPtr;
        }
    }
    // array element?
    //
    else if (auto pArrayIndex = pLValue->as<ast::ArrayIndex>())
    {
        const auto arrayPtrIr = _genLValueAddress(pArrayIndex->pObject);
        const auto indexIr = gen(pArrayIndex->pIndex);
        const auto& arrayIrType = ext(pArrayIndex->pObject->pType)->genName;

        code << arrayPtrIr.code;
        code << indexIr->code;

        value = _genTempValue();

        code << TAB << value << " = getelementptr inbounds " <<
            arrayIrType << ", " << arrayIrType << "* " <<
            arrayPtrIr.value << ", i32 0, i32 " << indexIr->value << "\n";
    }
    // field?
    //
    else if (auto pFieldExpr = pLValue->as<ast::FieldExpr>())
    {
        const auto* pField = pFieldExpr->pField;
        const auto* pFieldTypeExt = ext(pFieldExpr->pType);
        const auto* pRecordTypeExt = ext(pField->pRecord->pType);

        const auto recordPtrIr = _genLValueAddress(pField->pRecord);
        const auto recordIrType = pRecordTypeExt->genName;

        code << recordPtrIr.code;

        value = _genTempValue();
        
        const auto rawFieldPtr = _genTempValue();
        const int fieldOffset = pRecordTypeExt->fields.at(pField->pId->name);

        code << TAB << rawFieldPtr << " = getelementptr inbounds " << recordIrType <<
            ", " << recordIrType << "* " << recordPtrIr.value <<
            ", i32 0, i32 " << fieldOffset << "\n";

        code << TAB << value << " = bitcast i8* " << rawFieldPtr <<
            " to " << pFieldTypeExt->genName << "*\n";
    }
    else
    {
        assert(pLValue->isA<ast::DummyValue>());
    }

    return { code.str(), value };
}


///////////////////////////////////////////////////////////////////////////////
//
string LlvmBackend::_initFrame(obj::Subroutine* pSubroutine)
{
    auto pExt = ext(pSubroutine);
    const auto* pType = pSubroutine->pType;

    if (pExt->frameName.empty())
    {
        assert(pType->paramList()->empty());
        return "";
    }

    auto cloneArg = [&](const string& param, const string& type, int frameIndex)
    {
        assert(frameIndex >= 0);
        stringstream code;
        const auto clonePtr = _genTempValue();
        const auto& frameName = pExt->frameName;
        code << TAB << clonePtr << " = getelementptr inbounds " <<
            frameName << ", " << frameName << "* %.frame, i32 0, " <<
            "i32 " << frameIndex << "\n";
        code << TAB << "store " << type << " " << param << ", " <<
            type << "* " << clonePtr << "\n";
        return code.str();
    };

    stringstream code;

    // allocate frame
    //
    code << TAB << "; allocate frame\n";
    code << TAB << "%.frame = alloca " << pExt->frameName << ", align 8\n";

    // init .slink
    //
    if (pSubroutine->hasSlink())
    {
        const auto* pParentExt = ext(pSubroutine->parent());
        code << cloneArg("%.slink", pParentExt->frameName + "*", pExt->slinkIndex);
    }

    // init parameter clones
    //
    for (const auto pParam : m_paramList)
    {
        const auto* pParamExt = ext(pParam);
        string typeName = ext(pParam->pType)->genName;
        if (pParam->byRef)
            typeName += "*";
        code << cloneArg(pParamExt->genName, typeName, pParamExt->frameIndex);
    }

    code << "\n";

    return code.str();
}


///////////////////////////////////////////////////////////////////////////////
//
// explicit variable initializers
//
// NOTE: for now, this is very specific to File objects initialization
// 
string LlvmBackend::_genInitializers(obj::Subroutine* pSubroutine)
{
    stringstream code;
    bool first = true;

    for (auto pVar : m_varList)
    {
        if (pVar->pInitializer == nullptr)
            continue;

        assert(pVar->pType->isFile());
        assert(pVar->pInitializer->isConst());

        m_cleanupList.push_back(pVar);

        if (first)
        {
            code << TAB << "; initialize file handles\n";
            first = false;
        }

        // initializer value
        //
        const auto pInitExprIr = gen(pVar->pInitializer);
        assert(!pInitExprIr->value.empty());
        code << pInitExprIr->code;

        // call init function
        //
        const auto fileHandle = _genTempValue();
        code << TAB << fileHandle;
        if (pVar->pInitializer->pType->isString())
            code << " = call i8* @_OpenTempFile(i8* " << pInitExprIr->value << ")\n";
        else
            code << " = call i8* @_OpenFile(i32 " << pInitExprIr->value << ")\n";

        // variable address
        //
        const auto varPtrIr = _genVarAddress(pVar);
        code << varPtrIr.code;

        // store value
        //
        code << TAB << "store i8* " << fileHandle <<
            ", i8** " << varPtrIr.value << "\n";
    }

    if (!first)
        code << "\n";

    return code.str();
}


///////////////////////////////////////////////////////////////////////////////
//
// cleanup file variables
//
string LlvmBackend::_genCleanup(obj::Subroutine* pSubroutine)
{
    stringstream code;

    if (!m_cleanupList.empty())
        code << TAB << "; cleanup\n";

    for (auto it = m_cleanupList.rbegin(); it != m_cleanupList.rend(); ++it)
    {
        auto* pVar = *it;
        assert(pVar->pType->isFile());

        // call file "destructor"
        //
        ast::VarExpr handleExpr(pVar, NO_LOCATION);
        const auto pFileHandleIr = gen(&handleExpr);
        assert(!pFileHandleIr->value.empty());
        code << pFileHandleIr->code;
        code << TAB << "call void @_CloseFile(i8* " << pFileHandleIr->value << ")\n";
    }

    if (!m_cleanupList.empty())
    code << "\n";

    return code.str();
}


///////////////////////////////////////////////////////////////////////////////
//
string LlvmBackend::_genEpilogue(obj::Subroutine* pSubroutine)
{
    stringstream code;

    code << TAB << "; epilogue\n";

    if (pSubroutine->pType->isFunction())
    {
        // return value
        //
        assert(pSubroutine->pFnValue != nullptr);
        const auto& returnType = ext(pSubroutine->pType->returnType())->genName;
        const auto retValuePtr = _genTempValue();
        const auto retValue = _genTempValue();
        const auto& frameName = ext(pSubroutine)->frameName;
        assert(!frameName.empty());
        code << TAB << retValuePtr << " = getelementptr inbounds " <<
            frameName << ", " << frameName << "* %.frame, i32 0, " <<
            "i32 " << ext(pSubroutine->pFnValue)->frameIndex << "\n";
        code << TAB << retValue << " = load " << returnType << ", " <<
            returnType << "* " << retValuePtr << "\n";
        code << TAB << "ret " << returnType << " " << retValue << "\n";
    }
    else
    {
        code << TAB << "ret void\n";
    }

    return code.str();
}

} // end namespace llvm


