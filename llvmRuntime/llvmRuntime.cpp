
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

///////////////////////////////////////////////////////////////////////////////
//
// Entry point for the generated code 
//
extern "C" void P_();


///////////////////////////////////////////////////////////////////////////////
//
// Real entry point
//
// - it will map the arguments to the program(a1, a2, .. an) arguments in order
// - additionally it supports -input=<filename> and -output=<filename>
//
int main(int argc, const char* argv[])
{
    // TODO
    printf("\nCalling P_()...\n");
    P_();
    printf("\nDone.\n");
    return 0;
}

