
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

// compilation context interface

#pragma once

#include "commandLine.h"
#include "heapManager.h"

class SymbolTable;


///////////////////////////////////////////////////////////////////////////////
//
// abstract class CompilationContext
//
// this is the interface to any "global" compilation context state and operations
//
class CompilationContext
{
protected:
    virtual ~CompilationContext() = default;
    
public:
    virtual void error(int line, const char* msg, ...) = 0;
    virtual void warning(int line, const char* msg, ...) = 0;
    virtual void info(const char* msg, ...) = 0;

    virtual bool illFormed() const = 0;
    
    virtual SymbolTable* symbolTable() = 0;
    virtual CommandLine* commandLine() = 0;
    virtual HeapManager* heapManager() = 0;
};


CompilationContext* context();
void setContext(CompilationContext* pContext);




