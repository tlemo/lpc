
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

extern "C"
{

///////////////////////////////////////////////////////////////////////////////
//
// Program arguments (input/output files)
//
struct _Filename
{
    const char* argName;
    const char* fileName;
};

constexpr int _INPUT_FILE_IDX = 0;
constexpr int _OUTPUT_FILE_IDX = 1;
constexpr int _FIRST_ARG_FILE_IDX = 2;

extern _Filename* _FilenameMap;
extern const int _FilenameMapSize;


///////////////////////////////////////////////////////////////////////////////
//
void* _OpenFile(int index);
void* _OpenTempFile(const char* name);
void _CloseFile(void* handle);


///////////////////////////////////////////////////////////////////////////////
//
void _RTError(const char* message, ...);
void _RTCheck(bool cond, const char* message, ...);

} // extern "C"

