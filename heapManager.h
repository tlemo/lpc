
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

#include <assert.h>
#include <Windows.h>


///////////////////////////////////////////////////////////////////////////////
//
class HeapManager
{
public:
    HeapManager() : m_hHeap(nullptr) {}

public:
    void beginScope()
    {
        assert(nullptr == m_hHeap);
        m_hHeap = ::HeapCreate(0, 0, 0);
        if(nullptr == m_hHeap)
            throw Exception("can't create a new heap");
    }

    void endScope()
    {
        assert(nullptr != m_hHeap);
        ::HeapDestroy(m_hHeap);
        m_hHeap = nullptr;
    }

    void* allocate(size_t size)
    {
        assert(nullptr != m_hHeap);
        void* ptr = ::HeapAlloc(m_hHeap, HEAP_ZERO_MEMORY, size);
        if(nullptr == ptr)
            throw Exception("out of memory");
        return ptr;
    }

private:
    HANDLE m_hHeap;
};


