
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

#include "..\cppRuntime\lpcRuntime.h"

///////////////////////////////////////////////////////////////////////////////
//
_Filename _FilenameMapEntries[] = 
{
    { "input" },
    { "output" },
    { "test" },
};

_Filename* _FilenameMap = _FilenameMapEntries;
const int _FilenameMapSize = _countof(_FilenameMapEntries);

///////////////////////////////////////////////////////////////////////////////
//
void __failExpr(const char* expr, int line)
{
    printf("CHECK FAILED: %s at line %d\n", expr, line);
}

#define check(expr)     do { if(!(expr)) { return __failExpr(#expr, __LINE__); } } while(false)

///////////////////////////////////////////////////////////////////////////////
//
void setTests()
{
    printf("set tests ... ");

    _T_GenericSet set0;

    _T_GenericSet set1;
    set1.set(-101, 100);

    check(set1 == set1);
    check(set1 != set0);
    check(set0 <= set1);
    check(set0 == set1 * set0);
    check(set1 == set1 + set0);
    check(set1 == set1 - set0);

    set1 = set1;
    check(set1 == set1);

    _T_GenericSet set2;
    _T_GenericSet set3;

    for(int i = -101; i <= 100; ++i)
    {
        if(i % 2 == 0)
            set2.set(i);
        else
            set3.set(i);
    }

    check(set1 != set2);
    check(set2 != set3);

    check(set2 <= set1);
    check(set1 >= set3);
    
    check(set1 == set2 + set3);
    check(set0 == set2 * set3);
    check(set2 == set2 - set3);
    check(set3 == set1 - set2);

    check(!(set2 <= set3));
    check(!(set3 <= set2));

    _T_Set<-101, 100> set4;
    set4 = set2 + set3;

    printf("ok\n");
}

///////////////////////////////////////////////////////////////////////////////
//
void P_()
{
    setTests();
}

