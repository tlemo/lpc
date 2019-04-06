
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

// front end definitions

#pragma once

#include <stdio.h>
#include <assert.h>

#include <string>
#include <map>
using namespace std;

#include "common.h"
#include "ast.h"
#include "_lexer.h"
#include "_parser.h"


///////////////////////////////////////////////////////////////////////////////
//
class FrontEnd :
    public Lexer,
    public Parser
{
private:
    static const int MAX_INCLUDE_LEVEL = 8;

    struct InputState
    {
        InputState() : line(0), pFile(nullptr), yyBuffState(nullptr) {}
        
        int     line;
        FILE*   pFile;
        
        YY_BUFFER_STATE  yyBuffState;
    };

public:
    FrontEnd() :
        m_includeLevel(-1)
    {
    }
    
    virtual ~FrontEnd()
    {
        // close all the open inputs
        //
        if(m_includeLevel != -1)
            while(_popInput());
            
        assert(m_includeLevel == -1);
    }


public:
    int parse(const char* filename)
    {
        #ifdef LPC_ENABLE_BISON_TRACING
        yydebug = 1;
        #endif
        
        _pushInput(filename);
        return yyparse();
    }

private:
    virtual void yyerror(char *m)
    {
        context()->error(m_line, "%s", m);
    }
    
    
    virtual int yylex()
    {
        return Lexer::yylex(yylval);
    }

    
    virtual int yy_input(char* buffer, int& result, int max_size)
    {
        result = ::fread(buffer, 1, max_size, _currentInput());
        return result;
    }
    
    
    FILE* _currentInput() const
    {
        assert(m_includeLevel >= 0 && m_includeLevel < MAX_INCLUDE_LEVEL);
        return m_inputStateStack[m_includeLevel].pFile;
    }
    
    
    virtual void _pushInput(const char* filename)
    {
        // try to open the file
        //
        FILE* pFile = ::fopen(filename, "rt");
        
        if(pFile == nullptr)
        {
            printf("can't open the input file: [%s]\n", filename);
            throw Exception("can't open input file");
        }
	    
        // increment the include level
        //
        ++m_includeLevel;
        assert(m_includeLevel >= 0 && m_includeLevel < MAX_INCLUDE_LEVEL);
        
        #ifdef LPC_VERBOSE
        printf("%*sparsing: %s\n", (1 + m_includeLevel) * 4, "", filename);
        #endif
        
        // push the input file
        //
        m_inputStateStack[m_includeLevel].pFile = pFile;
        
        // push and reset the line number
        //
        m_inputStateStack[m_includeLevel].line = m_line;
        m_line = 1;
        
        // create a new input buffer
        //
        m_inputStateStack[m_includeLevel].yyBuffState = yy_create_buffer(nullptr, 32768);
        assert(nullptr != m_inputStateStack[m_includeLevel].yyBuffState);
        
        // switch to the newly opened input
        //
        yy_switch_to_buffer(m_inputStateStack[m_includeLevel].yyBuffState);
    }
    
    
    virtual bool _popInput()
    {
        assert(m_includeLevel >= 0 && m_includeLevel < MAX_INCLUDE_LEVEL);
        
        #ifdef LPC_VERBOSE
        printf("%*spopinput\n", (1 + m_includeLevel) * 4, "");
        #endif
        
        // delete the input buffer
        //
        yy_delete_buffer(m_inputStateStack[m_includeLevel].yyBuffState);
        
        // close the file
        //
        assert(nullptr != m_inputStateStack[m_includeLevel].pFile);
        ::fclose(m_inputStateStack[m_includeLevel].pFile);
        m_inputStateStack[m_includeLevel].pFile = nullptr;

        // restore the line number
        //
        m_line = m_inputStateStack[m_includeLevel].line;
        
        --m_includeLevel;
        
        // last include level/end of input?
        //
        if(m_includeLevel == -1)
            return false;
        
        // switch back to the previous level and continue
        //
        yy_switch_to_buffer(m_inputStateStack[m_includeLevel].yyBuffState);
        return true;
    }

private:
    InputState m_inputStateStack[MAX_INCLUDE_LEVEL];
    int m_includeLevel;
};




