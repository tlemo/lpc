
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

#include "llvmRuntime.h"

#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <assert.h>

#include <windows.h>


extern "C"
{

///////////////////////////////////////////////////////////////////////////////
//
// Entry point for the generated code 
//
extern "C" void P_();


///////////////////////////////////////////////////////////////////////////////
//
[[noreturn]] static
void _RTAbort(const char* message, va_list argptr)
{
    ::printf("\nRuntime Error: ");
    vprintf(message, argptr);
    ::printf("\n\n");
    
    if(::IsDebuggerPresent())
    {
        __debugbreak();
    }
    
	::abort();
}


///////////////////////////////////////////////////////////////////////////////
//
void _RTError(const char* message, ...)
{
    va_list argptr;
    va_start(argptr, message);
    _RTAbort(message, argptr);
    va_end(argptr);
}


///////////////////////////////////////////////////////////////////////////////
//
void _RTCheck(bool cond, const char* message, ...)
{
    if(!cond)
    {
        va_list argptr;
        va_start(argptr, message);
        _RTAbort(message, argptr);
        va_end(argptr);
    }
}


///////////////////////////////////////////////////////////////////////////////
//
static
void printHelp()
{
    printf("\nCommand line arguments: ");
    for(int i = _FIRST_ARG_FILE_IDX; i < _FilenameMapSize; ++i)
        printf("<%s> ", _FilenameMap[i].argName);
    printf("[-input=<filename>] [-output=<filename>]\n");
}


///////////////////////////////////////////////////////////////////////////////
//
static
bool handleArg(const char* arg, const char* opt, int idx)
{
    auto *s = opt;

    assert(nullptr != _FilenameMap[idx].argName);

    while(*arg && *s && *arg == *s)
    {
        ++arg;
        ++s;
    }

    if(*s != '\0')
        return false;

    if(*arg == '\0')
    {
        printHelp();
        _RTError("missing argument value for %s", opt);
    }

    if(nullptr != _FilenameMap[idx].fileName)
    {
        printHelp();
        _RTError("%s was already specified", opt);
    }

    _FilenameMap[idx].fileName = arg;
    return true;
}


///////////////////////////////////////////////////////////////////////////////
//
// Real entry point
//
// - it will map the arguments to the program(a1, a2, .. an) arguments in order
// - additionally it supports -input=<filename> and -output=<filename>
//
int main(int argc, const char* argv[])
{
    assert(nullptr != _FilenameMap);

    // parse the command line arguments
    //
    int idx = _FIRST_ARG_FILE_IDX;

    for(int i = 1; i < argc; ++i)
    {
        const char* arg = argv[i];

        if(strcmp(arg, "-debug") == 0)
        {
            __debugbreak();
        }
        else if(handleArg(arg, "-input=", _INPUT_FILE_IDX))
        {
            continue;
        }
        else if(handleArg(arg, "-output=", _OUTPUT_FILE_IDX))
        {
            continue;
        }
        else
        {
            if(idx >= _FilenameMapSize)
            {
                printHelp();
                _RTError("too many command line arguments");
            }

            assert(_FilenameMap[idx].fileName == nullptr);
            _FilenameMap[idx++].fileName = arg;
        }
    }

    if(idx != _FilenameMapSize)
    {
        printHelp();
        _RTError("missing required command line arguments");
    }
    
    // call the generated code entry point
    //
    P_();
}

} // extern "C"
