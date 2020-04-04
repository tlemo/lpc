
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

// common definitions

#pragma once

// disable some warnings
//
#pragma warning(disable: 4995)  // #pragma deprecated


#include <windows.h>
#include <assert.h>
#include <strsafe.h>
#include <algorithm>
#include <typeinfo>


// BUILD_VERSION
//
#define BUILD_VERSION   "1.1"


// BUILD_STRING
//
#if !defined(NDEBUG)
#define BUILD_STRING    ("LPC " BUILD_VERSION " (debug) - built on " __DATE__)
#else
#define BUILD_STRING    ("LPC " BUILD_VERSION " (release) - built on " __DATE__)
#endif // DEBUG


//#define LPC_VERBOSE
//#define LPC_ENABLE_BISON_TRACING


///////////////////////////////////////////////////////////////////////////////
//
// class Exception
//
class Exception
{
private:
    static const int MSG_BUFF_SIZE = 256;
    
public:
    Exception(const Exception &e)
    {
        assert(strlen(e.m_message) < MSG_BUFF_SIZE);
        strcpy_s(m_message, sizeof(m_message), e.m_message);
    }
    
    Exception(const char *format, ...)
    {
        // set last char to 0 for overflow checking
        //
        m_message[MSG_BUFF_SIZE - 1] = 0;

        va_list marker;
        va_start(marker, format);
        
	    ::StringCchVPrintfExA(m_message, MSG_BUFF_SIZE, nullptr, nullptr,
	        STRSAFE_IGNORE_NULLS, format, marker);
        
        va_end(marker);

        // overflow checking
        //
        assert(m_message[MSG_BUFF_SIZE - 1] == 0);
    }
        
public:
    const char *message() const { return m_message; }

protected:
    char m_message[MSG_BUFF_SIZE];
};


///////////////////////////////////////////////////////////////////////////////
//
class VarPtr
{
public:
    VarPtr() : m_pNaked(nullptr), m_pTypeInfo(nullptr) {}

    template<class T>
    explicit VarPtr(T* p) : m_pNaked(p), m_pTypeInfo(&typeid(T)) {}

    template<class T>
    T* get() const
    {
        assert(&typeid(T) == m_pTypeInfo || nullptr == m_pTypeInfo);
        return static_cast<T*>(m_pNaked);
    }

private:
    void* m_pNaked = nullptr;
    const std::type_info* m_pTypeInfo;
};


///////////////////////////////////////////////////////////////////////////////
//
// a convenience base class for objects which are not intended to be copied
//
struct _DontCopy
{
    _DontCopy() = default;
    _DontCopy(const _DontCopy&) = delete;
    void operator=(const _DontCopy&) = delete;
};


///////////////////////////////////////////////////////////////////////////////
//
// these constants should be in sync with the corresponding runtime values
//
const int INVALID_ARG_IDX      = -1;
const int INPUT_FILE_IDX       = 0;
const int OUTPUT_FILE_IDX      = 1;
const int FIRST_ARG_FILE_IDX   = 2;


