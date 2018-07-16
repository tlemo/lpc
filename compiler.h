
// Copyright 2018 Google LLC
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

#pragma once

#include <list>
#include <stdarg.h>
#include <assert.h>

#include "common.h"
#include "frontend.h"
#include "symbols.h"
#include "stringTable.h"
#include "compilationContext.h"
#include "commandLine.h"
#include "backend.h"
#include "cppBackend.h"
#include "clrBackend.h"
#include "heapManager.h"

using namespace std;


///////////////////////////////////////////////////////////////////////////////
//
class Compiler : public CompilationContext
{
public:
    Compiler() :
        m_errorsCount(0),
        m_warningsCount(0),
        m_enableWarnings(false),
        m_enableLogging(false),
        m_pTarget(nullptr)
    {
        m_backends.push_back(new cpp::CppBackend);
        m_backends.push_back(new clr::ClrBackend);
    }
    
    virtual ~Compiler()
    {
        #if 0
        m_symbolTable.print();
        #endif
    }

    
public:
    void compile(int argc, const char* argv[])
    {
        // parse the command line
        //
        if(!_parseCommandLine(argc, argv))
            return;

        if(!m_cmdLine.getFlag("-nologo"))
        {
            _printBanner();

            printf("compiling %s ...\n", m_cmdLine.getInputName());
            printf("\n");
        }

        // reset the state
        //
        m_errorsCount = 0;
        m_warningsCount = 0;

        setContext(this);
        
        // set up the initial context
        // (predefined symbols, ...)
        //
        _initContext();
        
        // parsing (constructs the AST and the symbol table)
        //
        m_frontEnd.parse(m_cmdLine.getInputName());

        // done parsing
        //
        _finishContext();

        // code generation
        //
        if(m_errorsCount == 0)
            _codeGeneration();

        // print the compilation summary
        //
        if(m_errorsCount != 0 || (m_warningsCount != 0 && m_enableWarnings) || m_enableLogging)
            printf("\n");

        printf("%d error(s), %d warning(s)\n", m_errorsCount, m_warningsCount);

        #ifdef LPC_VERBOSE
        printf("done.\n");
        #endif
        
        printf("\n");

        setContext(nullptr);
    }

    int errorsCount() const { return m_errorsCount; }
    
    // implementation of the CompilationContext interface
    //
public:
    virtual void error(int line, const char* msg, ...)
    {
        printf("! error on line %d: ", line);

        va_list argptr;
        va_start(argptr, msg);
        vprintf(msg, argptr);
        va_end(argptr);

        printf("\n");

        ++m_errorsCount;
    }

    virtual void warning(int line, const char* msg, ...)
    {
        if(m_enableWarnings)
        {
            printf("  warning on line %d: ", line);

            va_list argptr;
            va_start(argptr, msg);
            vprintf(msg, argptr);
            va_end(argptr);

            printf("\n");
        }

        ++m_warningsCount;
    }
    
    virtual void info(const char* msg, ...)
    {
        if(m_enableLogging)
        {
            printf(". ");

            va_list argptr;
            va_start(argptr, msg);
            vprintf(msg, argptr);
            va_end(argptr);

            printf("\n");
        }
    }
    
    virtual SymbolTable* symbolTable()
    {
        return &m_symbolTable;
    }

    virtual CommandLine* commandLine()
    {
        return &m_cmdLine;
    }

    virtual HeapManager* heapManager()
    {
        return &m_heapManager;
    }

private:
    void _initContext()
    {
        // global scope
        //
        symbolTable()->beginGlobalScope();

        ts::predefineTypes();
        obj::predefineObjects();
    }

    void _finishContext()
    {
        symbolTable()->endGlobalScope();
    }

    void _printBanner() const
    {
        printf("\n%s\n\n", BUILD_STRING);
    }

    bool _parseCommandLine(int argc, const char* argv[])
    {
        m_cmdLine.addFlag("-?", "print the command line help");
        m_cmdLine.addFlag("-nologo", "supresses the compiler banner");
        m_cmdLine.addFlag("-warnings", "enables the warning messages");
        m_cmdLine.addFlag("-logging", "enables the informational messages");
        m_cmdLine.addFlag("-debugInfo", "generates debug information");
        m_cmdLine.addOption("-outPath=", "changes the output location");
        m_cmdLine.addOption("-target=", "selects the code generation target");

        for(auto it = m_backends.begin(); it != m_backends.end(); ++it)
            m_cmdLine.addTarget((*it)->targetName());

        try
        {
            m_cmdLine.parse(argc, argv);

            if(m_cmdLine.getFlag("-?"))
            {
                _printBanner();
                m_cmdLine.printHelp();
                return false;
            }

            // just to make sure we have the input name
            //
            m_cmdLine.getInputName();

            // select the target backend
            //
            assert(nullptr == m_pTarget);
            string targetName = m_cmdLine.getString("-target=");

            if(targetName.empty())
                throw Exception("target name was not specified");

            for(auto it = m_backends.begin(); it != m_backends.end(); ++it)
            {
                if(targetName == (*it)->targetName())
                {
                    m_pTarget = *it;
                    break;
                }
            }

            if(nullptr == m_pTarget)
                throw Exception("invalid target name (%s)", targetName.c_str());
        }
        catch(Exception& e)
        {
            _printBanner();
            printf("COMMAND LINE ERROR: %s\n\n", e.message());
            m_cmdLine.printHelp();
            return false;
        }

        m_enableWarnings = m_cmdLine.getFlag("-warnings");
        m_enableLogging = m_cmdLine.getFlag("-logging");
        return true;
    }

    void _codeGeneration()
    {
        assert(m_errorsCount == 0);
        m_pTarget->generateCode(m_symbolTable.globalScope());
    }
    
private:
    CommandLine     m_cmdLine;
    HeapManager     m_heapManager;
    FrontEnd        m_frontEnd;
    SymbolTable     m_symbolTable;
    list<Backend*>  m_backends;
    Backend*        m_pTarget;
    int             m_errorsCount;
    int             m_warningsCount;
    bool            m_enableWarnings;
    bool            m_enableLogging;
    string          m_outputName;
};



