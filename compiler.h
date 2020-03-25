
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

#pragma once

#include <vector>
#include <stdarg.h>
#include <memory>
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
#include "llvmBackend.h"
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
        m_backends.push_back(make_unique<cpp::CppBackend>());
        m_backends.push_back(make_unique<clr::ClrBackend>());
        m_backends.push_back(make_unique<llvm::LlvmBackend>());
    }
    
    ~Compiler() override
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

    // implementation of the CompilationContext interface
    //
public:
    void error(int line, const char* msg, ...) override
    {
        printf("! error on line %d: ", line);

        va_list argptr;
        va_start(argptr, msg);
        vprintf(msg, argptr);
        va_end(argptr);

        printf("\n");

        ++m_errorsCount;
    }

    void warning(int line, const char* msg, ...) override
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
    
    void info(const char* msg, ...) override
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

    bool illFormed() const override
    {
        return m_errorsCount > 0;
    }
    
    SymbolTable* symbolTable() override
    {
        return &m_symbolTable;
    }

    CommandLine* commandLine() override
    {
        return &m_cmdLine;
    }

    HeapManager* heapManager() override
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
        m_cmdLine.addFlag("-debuginfo", "generates debug information");
        m_cmdLine.addOption("-outpath=", "changes the output location");
        m_cmdLine.addOption("-target=", "selects the code generation target");

        for (const auto& backend : m_backends)
        {
            m_cmdLine.addTarget(backend->targetName());
        }

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

            for (const auto& backend : m_backends)
            {
                if(targetName == backend->targetName())
                {
                    m_pTarget = backend.get();
                    break;
                }
            }

            if(nullptr == m_pTarget)
                throw Exception("invalid target name (%s)", targetName.c_str());
        }
        catch(const Exception& e)
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
    int             m_errorsCount;
    int             m_warningsCount;
    bool            m_enableWarnings;
    bool            m_enableLogging;
    string          m_outputName;

    vector<unique_ptr<Backend>> m_backends;
    Backend*        m_pTarget;
};



