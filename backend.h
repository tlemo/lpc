
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

// back end interface

#pragma once

#include "symbols.h"
#include "objects.h"
#include "compilationContext.h"

#include <assert.h>
#include <stdio.h>
#include <shlwapi.h>
#include <string.h>
#include <sstream>
#include <utility>
#include <type_traits>


///////////////////////////////////////////////////////////////////////////////
//
// memory allocation helpers
//
// CONSIDER: do we really need this fancy strings lifetime management?
//
template<class T>
T* funcAlloc(size_t size)
{
    return static_cast<T*>(context()->heapManager()->allocate(size));
}

template<class T, class... ARGS>
T* allocObject(ARGS&&... args)
{
    static_assert(std::is_trivially_destructible<T>::value,
        "only types with trivial destructors are supported");
    auto ptr = funcAlloc<T>(sizeof(T));
    return new (ptr) T(std::forward<ARGS>(args)...);
}

inline
VarPtr allocStr(const char* str)
{
    const size_t size = strlen(str) + 1;
    char* newStr = funcAlloc<char>(size);
    strcpy_s(newStr, size, str);
    return VarPtr(newStr);
}


///////////////////////////////////////////////////////////////////////////////
//
// compute LCM(a, b) = (a * b) / GCD(a, b)
//
inline
int LCM(int a, int b)
{
    assert(a > 0 && b > 0);

    const int p = a * b;

    // compute GCD
    //
    while(b > 0)
    {
        const int tmp = b;
        b = a % b;
        a = tmp;
    }

    assert(p % a == 0);
    return p / a;
}


///////////////////////////////////////////////////////////////////////////////
//
inline
int roundDown(int value, int alignment)
{
    assert(value >= 0);
    assert(alignment > 0);
    return value - value % alignment;
}


///////////////////////////////////////////////////////////////////////////////
//
inline
int roundUp(int value, int alignment)
{
    assert(value >= 0);
    assert(alignment > 0);
    return roundDown(value + alignment - 1, alignment);
}


///////////////////////////////////////////////////////////////////////////////
//
// helpers for outputing formated text
//
const char* const TAB = "    ";

inline
VarPtr allocStr(const std::string& s)
{
    return allocStr(s.c_str());
}

inline
VarPtr allocStr(const std::stringstream& ss)
{
    return allocStr(ss.str());
}

inline
string indentBlock(const string& str)
{
    string block;

    for(size_t pos = 0; pos < str.length();)
    {
        const size_t eolPos = str.find('\n', pos);
        if(eolPos == string::npos)
            throw Exception("ill-formatted block string");
        block += TAB;
        block += str.substr(pos, eolPos - pos + 1);
        pos = eolPos + 1;
    }

    return block;
}


///////////////////////////////////////////////////////////////////////////////
//
// abstract class Backend
//
class Backend
{
protected:
    Backend() = default;

public:
    virtual ~Backend() = default;
    
    virtual const char* targetName() const = 0;

    virtual void generateCode(Scope* pGlobalScope)
    {
        m_debugInfo = context()->commandLine()->getFlag("-debuginfo");

        assert(pGlobalScope != nullptr);
        assert(pGlobalScope->category == Scope::scGlobal);

        context()->heapManager()->beginScope();
        _openOutput();
        _start();

        auto pScope = pGlobalScope;
        bool explored = false;

        // depth first traversal of the scopes
        //
        while(pScope != nullptr)
        {
            if (pScope->category != Scope::scRecord)
                _generate(pScope, explored);

            if(pScope->pNested != nullptr && !explored)
            {
                pScope = pScope->pNested;
            }
            else if(pScope->pNested == nullptr && !explored)
            {
                explored = true;
            }
            else if(pScope->pNext != nullptr)
            {
                pScope = pScope->pNext;
                explored = false;
            }
            else
            {
                pScope = pScope->pParent;
                explored = true;
            }
        }

        _end();
        _closeOutput();
        context()->heapManager()->endScope();
    }

    bool emitDebugInfo() const { return m_debugInfo; }

protected:
    void write(const char* str)
    {
        assert(nullptr != m_output);
        fputs(str, m_output);
    }

    void write(std::stringstream& sstream)
    {
        write(sstream.str().c_str());
    }

private:
    void _openOutput()
    {
        assert(nullptr == m_output);
        assert("" == m_outputName);

        char outputName[MAX_PATH + 1] = {};

        const char* outputPath = context()->commandLine()->getString("-outpath=");
        const char* inputName = context()->commandLine()->getInputName();

        // combine the specified output path + input file name
        //
        if(outputPath[0] != 0)
        {
            const char* inputFileName = ::PathFindFileName(inputName);

            if(nullptr == ::PathCombine(outputName, outputPath, inputFileName))
                throw Exception("can't combine output path + input file name");
        }
        else
        {
            strcpy_s(outputName, inputName);
        }

        // change the extension
        //
        if(!::PathRenameExtension(outputName, _outputExt()))
            throw Exception("can't generate the output filename");

        m_output = fopen(outputName, "wt");
        if(nullptr == m_output)
            throw Exception("can't open the output file [%s]", outputName);

        m_outputName = outputName;
    }

    void _closeOutput()
    {
        assert(nullptr != m_output);
        fclose(m_output);
        m_output = nullptr;
    }

private:
    virtual void _start() = 0;
    virtual void _end() = 0;
    virtual void _generate(Scope* pScope, bool postOrder) = 0;
    virtual const char* _outputExt() const = 0;

private:
    string m_outputName;
    FILE* m_output = nullptr;
    bool m_debugInfo = false;
};


