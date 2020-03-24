
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

#include <stdio.h>
#include <crtdbg.h>

#include "compiler.h"


///////////////////////////////////////////////////////////////////////////////
//
static CompilationContext* g_pContext;

CompilationContext* context()
{
    assert(g_pContext != nullptr);
    return g_pContext;
}

void setContext(CompilationContext* pContext)
{
    g_pContext = pContext;
}


///////////////////////////////////////////////////////////////////////////////
//
int LpcReportHook(int reportType, char* /*message*/, int *pRetVal)
{
    // if we're not under a debugger just exit after printing the assert message
    //
    if(_CRT_ERROR == reportType && !IsDebuggerPresent())
    {
        *pRetVal = 0;
        return TRUE;
    }

    return FALSE;
}


///////////////////////////////////////////////////////////////////////////////
//
int main(int argc, const char* argv[])
{
    int errcode = 0;

    _CrtSetReportHook(&LpcReportHook);

    try
    {
        Compiler compiler;
        compiler.compile(argc, argv);
        errcode = compiler.illFormed() ? 1 : 0;
    }
    catch(const Exception& e)
    {
        printf("\n");
        printf("unhandled exception : Exception\n");
        printf("exception message   : %s\n\n", e.message());
        errcode = 1;
    }
    catch(...)
    {
        printf("\n");
        printf("unhandled exception : unknown\n\n");
        errcode = 1;
    }

    return errcode;
}


