
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

// identifiers and strings

#pragma once

#include <assert.h>
#include <string.h>
#include <string>
#include <list>


using std::string;


const int PREDEFINED_LOCATION = -1;
const int NO_LOCATION = -2;


///////////////////////////////////////////////////////////////////////////////
//
// an identifier instance (string + location)
//
// line == PREDEFINED_LOCATION means predefined identifier
//
struct Identifier
{
    string name;
    int line;

public:
    Identifier(const char* name, int line = PREDEFINED_LOCATION) :
        name(name), line(line)
    {
        assert(!this->name.empty());
    }

    Identifier(int labelId, int line) :
        line(line)
    {
        char labelName[16];
        ::sprintf_s(labelName, "%d", labelId);
        name = labelName;
    }

    bool match(const char* str) const
    {
        return ::_stricmp(name.c_str(), str) == 0;
    }

    bool match(const Identifier* pId) const
    {
        return match(pId->name.c_str());
    }

    bool isInternal() const
    {
        return name[0] == '_';
    }
};


///////////////////////////////////////////////////////////////////////////////
//
// can be use used as predicate in various containers to get case-insensitive semantics
//
struct StricmpLess
{
    bool operator()(const string& a, const string& b) const
    {
        return ::_stricmp(a.c_str(), b.c_str()) < 0;
    }
};


struct IdCmpLess
{
    bool operator()(const Identifier* pA, const Identifier* pB) const
    {
        return ::_stricmp(pA->name.c_str(), pB->name.c_str()) < 0;
    }
};


///////////////////////////////////////////////////////////////////////////////
//
// a lexical token
//
struct Token
{
    int token;
    int line;

public:
    Token(int token, int line) :
        token(token), line(line) {}

    const char* name() const;
};


///////////////////////////////////////////////////////////////////////////////
//
// convenience notation
//
typedef std::list<Identifier*> IdList;

