
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

// symbol table

#pragma once

#include <assert.h>

#include <map>
#include <list>
#include <vector>
#include <stack>

#include "common.h"
#include "stringTable.h"
#include "compilationContext.h"
#include "types.h"
#include "ast.h"
#include "objects.h"


///////////////////////////////////////////////////////////////////////////////
//
// class Symbol - a type, variable or any other language element refered by an identifier
//
struct Symbol
{
    enum Category { scUse, scLabel, scType, scConst, scVariable,
        scParameter, scSubroutine, scField, scIntrinsic };

    // definition (common)
    //
    // NOTE: pId == nullptr means annonymous symbol
    //
    Identifier* pId;
    Category category;

    // category specific information
    //
    union
    {
        void* pDummy;
        Symbol* pUseSymbol;
        ts::Type* pType;
        obj::Constant* pConstant;
        obj::Variable* pVariable;
        obj::Parameter* pParameter;
        obj::Subroutine* pSubroutine;
        obj::Field* pField;
        obj::IntrinsicId intrinsicId;
        obj::Label* pLabel;
    };

public:
    Symbol(Identifier* pId, obj::Label* pLabel) :
        pId(pId), category(scLabel), pLabel(pLabel) {}

    Symbol(Identifier* pId, Symbol* pUseSymbol) :
        pId(pId), category(scUse), pUseSymbol(pUseSymbol) {}

    Symbol(Identifier* pId, ts::Type* pType) :
        pId(pId), category(scType), pType(pType) {}

    Symbol(Identifier* pId, obj::Constant* pConstant) :
        pId(pId), category(scConst), pConstant(pConstant) {}

    Symbol(Identifier* pId, obj::Variable* pVariable) :
        pId(pId), category(scVariable), pVariable(pVariable) {}

    Symbol(Identifier* pId, obj::Parameter* pParameter) :
        pId(pId), category(scParameter), pParameter(pParameter) {}

    Symbol(Identifier* pId, obj::Subroutine* pSubroutine) :
        pId(pId), category(scSubroutine), pSubroutine(pSubroutine) {}

    Symbol(Identifier* pId, obj::Field* pField) :
        pId(pId), category(scField), pField(pField) {}

    Symbol(Identifier* pId, obj::IntrinsicId intrinsicId) :
        pId(pId), category(scIntrinsic), intrinsicId(intrinsicId) {}
};


///////////////////////////////////////////////////////////////////////////////
//
typedef std::map<string, Symbol*, StricmpLess> SymMap;
typedef SymMap::iterator SymIter;


///////////////////////////////////////////////////////////////////////////////
//
struct Scope
{
    enum Category { scGlobal, scProgram, scSubroutine, scRecord };

    static const int GLOBAL_SCOPE_LEVEL = 0;
    static const int PROGRAM_SCOPE_LEVEL = 1;

    Scope* pParent;
    Scope* pNested;
    Scope* pNext;
    SymMap symMap;
    Category category;
    int level;
    int line;

    union
    {
        void* pDummy;
        obj::Subroutine* pSubroutine;
    };

public:
    // extension point (backend-specific information for example)
    //
    VarPtr ext;

public:
    Scope(Category category, int line) :
        category(category), pDummy(nullptr),
        pParent(nullptr), pNested(nullptr), pNext(nullptr),
        level(-1), line(line)
    {
    }

    // CONSIDER: get rid of this
    //
    const char* name() const
    {
        switch(category)
        {
        case scGlobal: return "<global>";
        case scProgram: return "<program>";
        case scRecord: return "<record>";
        case scSubroutine: return pSubroutine->pId->name.c_str();
            
        default:
            assert(!"unknown scope type");
            return "<???>";
        }
    }

    obj::Subroutine* subroutine() const
    {
        assert(category == scProgram || category == scSubroutine);
        return pSubroutine;
    }
};


///////////////////////////////////////////////////////////////////////////////
//
// class SymbolTable
//
// the symbol table is implemented as a tree of Scope objects each representing a scope
//
class SymbolTable
{
public:
    SymbolTable() :
        m_pRoot(nullptr),
        m_pCurrentScope(nullptr),
        m_pProgramScope(nullptr)
    {
    }

    ~SymbolTable()
    {
        #if 0
        print();
        #endif
    }
    
public:
    std::vector<string>& programArgs() { return m_programArgs; }

    Scope* currentScope() const
    {
        return m_pCurrentScope;
    }
    
    Scope* globalScope() const
    {
        assert(m_pRoot->category == Scope::scGlobal);
        assert(m_pRoot->level == Scope::GLOBAL_SCOPE_LEVEL);
        return m_pRoot;
    }

    Scope* programScope() const
    {
        assert(m_pProgramScope->category == Scope::scProgram);
        assert(m_pProgramScope->level == Scope::PROGRAM_SCOPE_LEVEL);
        return m_pProgramScope;
    }

    void beginGlobalScope()
    {
        _beginScope(new Scope(Scope::scGlobal, PREDEFINED_LOCATION));
    }
    
    void endGlobalScope()
    {
        if(m_pCurrentScope->category != Scope::scGlobal)
        {
            context()->error(-1, "mismatched scope, expecting the end of the global scope");
        }

        _endScope();
    }

    void beginProgramScope(obj::Subroutine* pSubroutine)
    {
        assert(pSubroutine != nullptr);
        assert(m_pProgramScope == nullptr);
        Scope* pScope = new Scope(Scope::scProgram, pSubroutine->defLine);
        m_pProgramScope = pScope;
        pScope->pSubroutine = pSubroutine;
        pSubroutine->pScope = pScope;
        _beginScope(pScope);
    }
    
    void endProgramScope([[maybe_unused]] obj::Subroutine* pSubroutine)
    {
        assert(pSubroutine != nullptr);
        assert(m_pCurrentScope->category == Scope::scProgram);
        assert(m_pCurrentScope->pSubroutine == pSubroutine);
        _endScope();
    }

    void beginSubroutineScope(obj::Subroutine* pSubroutine)
    {
        assert(pSubroutine != nullptr);
        Scope* pScope = new Scope(Scope::scSubroutine, pSubroutine->defLine);
        pScope->pSubroutine = pSubroutine;
        pSubroutine->pScope = pScope;

        assert(m_pCurrentScope->category == Scope::scProgram ||
            m_pCurrentScope->category == Scope::scSubroutine);

        _beginScope(pScope);
    }
    
    void endSubroutineScope([[maybe_unused]] obj::Subroutine* pSubroutine)
    {
        assert(pSubroutine != nullptr);
        assert(m_pCurrentScope->category == Scope::scSubroutine);
        assert(m_pCurrentScope->pSubroutine == pSubroutine);
        _endScope();
    }

    void beginRecordScope(int line)
    {
        Scope* pScope = new Scope(Scope::scRecord, line);
        _beginScope(pScope);    
    }

    void endRecordScope()
    {
        assert(m_pCurrentScope->category == Scope::scRecord);
        _endScope();
    }

    void addScopeRecord(ast::Expr* pRecord)
    {
        assert(m_pCurrentScope->category == Scope::scRecord);

        if(pRecord->pType->isDummy())
        {
            return;
        }
        else if(!pRecord->pType->isRecord())
        {
            context()->error(pRecord->pType->line(), "'with' statements require valid record types");
            return;
        }

        auto pRecordType = pRecord->pType->as<ts::RecordType>();

        // create a symbol object for each record field
        //
        for(auto it = pRecordType->fieldMap().begin(); it != pRecordType->fieldMap().end(); ++it)
        {
            auto pNewId = new Identifier(it->first->name.c_str(), m_pCurrentScope->line);
            auto pField = new obj::Field(pNewId, pRecord);
            addSymbol(new Symbol(pNewId, pField), true);
        }
    }

    // resolve pointer definitions immediately after the
    // type declarations
    //
    void resolveTypes()
    {
        assert(nullptr != m_pCurrentScope);
        Scope* pScope = m_pCurrentScope;

        for(SymIter it = pScope->symMap.begin(); it != pScope->symMap.end(); ++it)
        {
            Symbol* pSymbol = it->second;

            if(pSymbol->category == Symbol::scType)
                pSymbol->pType->resolve();
        }
    }

    // look up a symbol implicitly marking the lookup as a use
    //
    Symbol* findSymbol(Identifier* pId, Scope* pStartScope = nullptr)
    {
        assert(m_pCurrentScope != nullptr);

        if(nullptr == pStartScope)
            pStartScope = m_pCurrentScope;

        for(Scope* pScope = pStartScope; nullptr != pScope; pScope = pScope->pParent)
        {
            SymIter it = pScope->symMap.find(pId->name);

            if(it != pScope->symMap.end()
                && it->second->category != Symbol::scUse)
            {
                // mark uses of inherited symbols
                // (except for "record" scopes)
                //
                if(pScope != pStartScope &&
                    pStartScope->category != Scope::scRecord)
                {
                    auto tmpIt = pStartScope->symMap.find(pId->name);

                    if(pStartScope->symMap.end() == tmpIt)
                    {
                        assert(pStartScope == m_pCurrentScope);

                        // create a new "scUse" symbol
                        //
                        pStartScope->symMap[pId->name] =
                            new Symbol(pId, it->second);
                    }
                    else
                    {
                        assert(tmpIt->second->category == Symbol::scUse);
                    }
                }

                return it->second;
            }
        }

        return nullptr;
    }

    // look up a local function/procedure declaration
    // (does NOT count as activation, just a helper to sort out the forward declarations)
    //
    obj::Subroutine* findLocalSubroutine(Identifier* pId)
    {
        SymIter it = m_pCurrentScope->symMap.find(pId->name);
        
        if(it != m_pCurrentScope->symMap.end()
            && it->second->category == Symbol::scSubroutine)
        {
            return it->second->pSubroutine;
        }

        return nullptr;
    }

    // search for an existing type. If the type is not
    // defined emit an error and return a dummy type so we
    // can continue compilation
    //
    ts::Type* findType(Identifier* pId)
    {
        Symbol* pSymbol = findSymbol(pId);

        if(nullptr == pSymbol || pSymbol->category != Symbol::scType)
        {
            context()->error(pId->line, "unknown type '%s'", pId->name.c_str());

            // create a dummy placeholder type
            //
            // CONSIDER: we could insert this dummy type in the
            //    symbol table to avoid cascading errors
            //
            return new ts::DummyType(pId->line);
        }

        return pSymbol->pType;
    }

    obj::Label* findLabel(Identifier* pId)
    {
        Symbol* pSymbol = findSymbol(pId);

        if(nullptr == pSymbol)
        {
            context()->error(pId->line, "undefined label '%s'", pId->name.c_str());
            return new obj::Label(NO_LOCATION, m_pCurrentScope);
        }

        assert(pSymbol->category == Symbol::scLabel);
        return pSymbol->pLabel;
    }

    obj::Constant* findConstant(Identifier* pId)
    {
        Symbol* pSymbol = findSymbol(pId);

        if(nullptr == pSymbol || pSymbol->category != Symbol::scConst)
        {
            context()->error(pId->line, "unknown symbolic constant '%s'", pId->name.c_str());
            return new obj::Constant(0, pId->line);
        }

        return pSymbol->pConstant;
    }

    void addSymbol(Symbol* pSymbol, bool replace = false)
    {
        assert(m_pCurrentScope != nullptr);
        assert(pSymbol != nullptr);

        assert(pSymbol->category != Symbol::scVariable ||
            pSymbol->pVariable->pScope == m_pCurrentScope);
        assert(pSymbol->category != Symbol::scParameter ||
            pSymbol->pParameter->pScope == m_pCurrentScope);

        Scope* pScope = m_pCurrentScope;

        SymIter it = pScope->symMap.find(pSymbol->pId->name);

        if(it == pScope->symMap.end())
        {
            m_pCurrentScope->symMap[pSymbol->pId->name] = pSymbol;

            // if we have an "internal" identifier we're done
            //
            if(pSymbol->pId->isInternal())
                return;

            // look for identifiers hidden by this definition
            //
            for(pScope = pScope->pParent; nullptr != pScope; pScope = pScope->pParent)
            {
                it = pScope->symMap.find(pSymbol->pId->name);

                if(it != pScope->symMap.end()
                    && it->second->category != Symbol::scUse
                    && it->second->category != Symbol::scLabel)
                {
                    if(it->second->pId->line == PREDEFINED_LOCATION)
                    {
                        context()->warning(pSymbol->pId->line,
                            "redefining predefined identifier '%s'",
                            it->second->pId->name.c_str());
                    }
                    else
                    {
                        context()->warning(pSymbol->pId->line,
                            "'%s' hiding existing declaration on line %d",
                            pSymbol->pId->name.c_str(), it->second->pId->line);
                    }
                }
            }
        }
        else
        {
            if(replace)
            {
                context()->warning(pSymbol->pId->line,
                    "replacing identifier '%s' defined on line %d",
                    it->second->pId->name.c_str(), it->second->pId->line);

                m_pCurrentScope->symMap[pSymbol->pId->name] = pSymbol;
            }
            else if(it->second->category == Symbol::scUse)
            {
                context()->error(pSymbol->pId->line,
                    "can't redefine '%s' because of the local use on line %d",
                    pSymbol->pId->name.c_str(), it->second->pId->line);
            }
            else
            {
                context()->error(pSymbol->pId->line,
                    "'%s' already declared on line %d",
                    pSymbol->pId->name.c_str(), it->second->pId->line);
            }
        }
    }

    // returns the index of the corresponding program argument
    // (or INVALID_ARG_IDX if there's no match)
    //
    int bindProgramArg(Identifier* pId)
    {
        for(size_t i = 0; i < m_programArgs.size(); ++i)
        {
            if(pId->match(m_programArgs[i].c_str()))
                return static_cast<int>(i);
        }

        return INVALID_ARG_IDX;
    }

    void print()
    {
        printf("\nsymbol table:\n");
        printf("-------------\n");
        
        if(m_pRoot != nullptr)
        {
            Scope* pScope = m_pRoot;
            int level = 0;
            bool explored = false;

            while(pScope != nullptr)
            {
                if (!explored)
                {
                    printf("%*s[%s]\n", level * 4, "", pScope->name());

                    for(SymIter it = pScope->symMap.begin(); it != pScope->symMap.end(); ++it)
                    {
                        printf("%*s %s : %d\n", level * 4, "",
                            it->first.c_str(),
                            it->second->pId->line);
                    }
                }

                if(pScope->pNested != nullptr && !explored)
                {
                    pScope = pScope->pNested;
                    ++level;
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
                    --level;
                }
            }
        }
        else
            printf("<empty>\n");
            
        printf("\n");
    }

private:
    void _beginScope(Scope* pScope)
    {
        if(m_pCurrentScope == nullptr)
        {
            assert(pScope->pParent == nullptr);
            assert(nullptr == m_pRoot);
            assert(pScope->category == Scope::scGlobal);
            pScope->level = Scope::GLOBAL_SCOPE_LEVEL;
            m_pRoot = pScope;
        }
        else
        {
            assert(nullptr != m_pRoot);
            assert(pScope->category != Scope::scGlobal);

            assert(pScope->category != Scope::scProgram
                || m_pCurrentScope->category == Scope::scGlobal);

            assert(pScope->category != Scope::scRecord
                || m_pCurrentScope->category != Scope::scGlobal);

            assert(pScope->category == Scope::scRecord
                || m_pCurrentScope->category != Scope::scRecord);

            pScope->pParent = m_pCurrentScope;
            pScope->level = m_pCurrentScope->level;

            if(pScope->category == Scope::scProgram ||
                pScope->category == Scope::scSubroutine)
            {
                ++pScope->level;
            }

            // add the new scope to the list of parent's nested scopes
            //
            Scope* pTmp = m_pCurrentScope->pNested;

            if(nullptr != pTmp)
            {
                while(nullptr != pTmp->pNext)
                    pTmp = pTmp->pNext;

                pTmp->pNext = pScope;
            }
            else
                m_pCurrentScope->pNested = pScope;
        }

        m_pCurrentScope = pScope;
    }
    
    void _endScope()
    {
        assert(m_pRoot != nullptr);
        assert(m_pCurrentScope->pParent != nullptr || m_pCurrentScope == m_pRoot);
        m_pCurrentScope = m_pCurrentScope->pParent;
    }

private:
    Scope* m_pRoot;
    Scope* m_pProgramScope;
    Scope* m_pCurrentScope;

    // the list of program arguments
    //
    std::vector<string> m_programArgs;
};


///////////////////////////////////////////////////////////////////////////////
//
void declareProgramArgs(IdList* pNameList, int line);
void declareVars(IdList* pNameList, ts::Type* pType);
void declareType(Identifier* pId, ts::Type* pType);
void declareConst(Identifier* pId, obj::Constant* pConst);
void declareLabel(obj::Constant* pLabelConst, int line);

obj::Subroutine* declareSubroutine(Identifier* pId, ts::ParamSetList* pParamList,
    ts::Type* pReturnType, bool isFunction);
obj::Subroutine* declareProgram(Identifier* pId);

void declareParams(obj::Subroutine* pSubroutine);

ast::Expr* lookupObject(Identifier* pId, bool autoFuncCall = false, Scope* pScope = nullptr);
obj::Constant* lookupConstant(Identifier* pId, bool negate);


