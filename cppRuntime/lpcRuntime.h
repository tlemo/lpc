
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

// LPC Runtime for C++ code generation

#pragma once

#include <assert.h>
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <cstddef>
#include <stdarg.h>
#include <ctype.h>
#include <windows.h>
#include <string>


// warning C4351: new behavior: elements of array '...' will be default initialized
#pragma warning(disable : 4351)

// warning C4355: 'this' : used in base member initializer list
#pragma warning(disable : 4355)


class _T_GenericSet;


///////////////////////////////////////////////////////////////////////////////
//
struct _Filename
{
    const char* argName;
    const char* fileName;
};

const int _INPUT_FILE_IDX       = 0;
const int _OUTPUT_FILE_IDX      = 1;
const int _FIRST_ARG_FILE_IDX   = 2;

extern _Filename* _FilenameMap;
extern const int _FilenameMapSize;

const int _TMPFMT_BUFF_SIZE = 32;


///////////////////////////////////////////////////////////////////////////////
//
void _RTAbort(const char* message, va_list argptr)
{
    ::printf("\nRuntime Error: ");
    vprintf(message, argptr);
    ::printf("\n\n");
    
    if(::IsDebuggerPresent())
    {
        __debugbreak();
    }
    
	::abort();
}


///////////////////////////////////////////////////////////////////////////////
//
void _RTError(const char* message, ...)
{
    va_list argptr;
    va_start(argptr, message);
    _RTAbort(message, argptr);
    va_end(argptr);
}


///////////////////////////////////////////////////////////////////////////////
//
void _RTCheck(bool cond, const char* message, ...)
{
    if(!cond)
    {
        va_list argptr;
        va_start(argptr, message);
        _RTAbort(message, argptr);
        va_end(argptr);
    }
}


///////////////////////////////////////////////////////////////////////////////
//
template<typename T>
void _setValue(T& obj, T value)
{
    obj = value;
}

template<typename T>
void _checkValue(const T& obj, T value)
{
    _RTCheck(obj == value, "unexpected variant select value");
}


///////////////////////////////////////////////////////////////////////////////
//
inline
int _mod(int i, int j)
{
    _RTCheck(j > 0, "invalid divisor");
    return i >= 0 ? (i % j) : (j + (i % j));
}


///////////////////////////////////////////////////////////////////////////////
//
// for .. to/downto .. wrappers
//
#define _FOR_TO(i, S, E)                                                \
    {                                                                   \
        auto _startValue = (S);                                         \
        auto _endValue = (E);                                           \
        if(_startValue <= _endValue)                                    \
        {                                                               \
            for((i) = _startValue; ; ++(i))                             \
            {

#define _FOR_DOWNTO(i, S, E)                                            \
    {                                                                   \
        auto _startValue = (S);                                         \
        auto _endValue = (E);                                           \
        if(_startValue >= _endValue)                                    \
        {                                                               \
            for((i) = _startValue; ; --(i))                             \
            {

#define _FOR_END(i)                                                     \
                if((i) == _endValue) break;                             \
            }                                                           \
        }                                                               \
    }


///////////////////////////////////////////////////////////////////////////////
//
// pointer type helpers
//
#define _PTR_TYPE(NAME, BASE_TYPE)                                          \
                                                                            \
    struct NAME                                                             \
    {                                                                       \
        BASE_TYPE* _ptr;                                                    \
                                                                            \
        static NAME C(std::nullptr_t) { NAME p; p = nullptr; return p; }    \
        void operator=(std::nullptr_t) { _ptr = nullptr; }                  \
        bool operator==(NAME ptr) const { return _ptr == ptr._ptr; }        \
        bool operator!=(NAME ptr) const { return !operator==(ptr); }        \
    };                                                                      \
                                                                            \
    bool operator==(NAME p, std::nullptr_t) { return p._ptr == nullptr; }   \
    bool operator!=(NAME p, std::nullptr_t) { return p._ptr != nullptr; }   \
    bool operator==(std::nullptr_t, NAME p) { return p._ptr == nullptr; }   \
    bool operator!=(std::nullptr_t, NAME p) { return p._ptr != nullptr; }   \


///////////////////////////////////////////////////////////////////////////////
//
template<typename T>
struct _T_Pfn
{
    T _pfn;
    void* _slink;

    _T_Pfn(T pfn, void* slink) : _pfn(pfn), _slink(slink) {}
};


template<typename T>
_T_Pfn<T> _makePfn(T pfn, void* slink)
{
    return _T_Pfn<T>(pfn, slink);
}


///////////////////////////////////////////////////////////////////////////////
//
template<int MIN, int MAX>
class _T_Set
{
    static_assert(MAX >= MIN, "invalid set bounds");

    static const int SIZE = MAX - MIN + 1;
    static_assert(SIZE <= 256, "invalid set size");

    typedef unsigned int UNIT;
    static const int UNIT_SIZE = sizeof(UNIT) * 8;
    static const int UNIT_COUNT = (SIZE + UNIT_SIZE - 1) / UNIT_SIZE;

    class Iterator
    {
    public:
        Iterator(int offset, const UNIT* units) : 
            m_offset(offset), m_units(units)
        {
            if(m_offset < SIZE && !_isSet())
                this->operator++();
        }

    public:
        void operator++()
        {
            assert(m_offset < SIZE);

            for(++m_offset; m_offset < SIZE; ++m_offset)
            {
                if(_isSet())
                    break;
            }
        }

        int operator*()
        {
            assert(_isSet());
            return m_offset + MIN;
        }

        bool operator!=(const Iterator& it)
        {
            return m_offset != it.m_offset;
        }

    private:
        bool _isSet() const
        {
            assert(m_offset < SIZE);
            return 0 != (m_units[m_offset / UNIT_SIZE] & (1 << (m_offset % UNIT_SIZE)));
        }

    private:
        int m_offset;
        const UNIT* m_units;
    };

public:
    static _T_Set C(const _T_GenericSet& set);

public:
    Iterator begin() const { return Iterator(0, m_units); }
    Iterator end() const { return Iterator(SIZE, m_units); }

    void operator=(const _T_GenericSet& set);

    // union
    //
    _T_Set operator+(const _T_Set& set) const
    {
        _T_Set result;

        for(int i = 0; i < UNIT_COUNT; ++i)
            result.m_units[i] = m_units[i] | set.m_units[i];

        return result;
    }

    // intersection
    //
    _T_Set operator*(const _T_Set& set) const
    {
        _T_Set result;

        for(int i = 0; i < UNIT_COUNT; ++i)
            result.m_units[i] = m_units[i] & set.m_units[i];

        return result;
    }

    // difference
    //
    _T_Set operator-(const _T_Set& set) const
    {
        _T_Set result;

        for(int i = 0; i < UNIT_COUNT; ++i)
            result.m_units[i] = m_units[i] & ~(set.m_units[i]);

        return result;
    }

    // value 'in' set?
    //
    bool operator&(int value) const
    {
        if(value < MIN || value > MAX)
            return false;

        int offset = value - MIN;
        return 0 != (m_units[offset / UNIT_SIZE] & (1 << (offset & offset)));
    }

    bool operator==(const _T_Set& set) const
    {
        for(int i = 0; i < UNIT_COUNT; ++i)
            if(m_units[i] != set.m_units[i])
                return false;

        return true;
    }

    bool operator!=(const _T_Set& set) const
    {
        return !operator==(set);
    }

    // inclusion
    //
    bool operator<=(const _T_Set& set) const
    {
        for(int i = 0; i < UNIT_COUNT; ++i)
            if((m_units[i] & ~(set.m_units[i])) != 0)
                return false;

        return true;
    }

    // reverse inclusion
    //
    bool operator>=(const _T_Set& set) const
    {
        return set <= *this;
    }

private:
    void _clear()
    {
        ::memset(m_units, 0, sizeof(m_units));
    }

    void _set(int value)
    {
        _RTCheck(value >= MIN && value <= MAX, "set value outside bounds");

        int index = value - MIN;
        m_units[index / UNIT_SIZE] |= (1 << (index % UNIT_SIZE));
    }

private:
    UNIT m_units[UNIT_COUNT];
};


///////////////////////////////////////////////////////////////////////////////
//
// a sparse bitmap implementation for a set of integers
//
class _T_GenericSet
{
protected:
    // the number of bits per node (packed as 32bit integers)
    //
    static const int NODE_SIZE = 256;
    static_assert(NODE_SIZE % 32 == 0, "NODE_SIZE must be a multiple of 32");

    struct Node
    {
        int first;
        unsigned int bitmap[NODE_SIZE / 32];
        Node* pNext;

        Node() : first(0), bitmap(), pNext(nullptr) {}
    };

    class Iterator
    {
        typedef _T_GenericSet::Node Node;

    public:
        Iterator(const Node* pNode, int offset) :
            m_pNode(pNode), m_offset(offset) 
        {
            if(nullptr != pNode && !_isSet())
                this->operator++();
        }

    public:
        void operator++()
        {
            assert(m_pNode != nullptr);
            assert(m_offset < NODE_SIZE);

            for(;;)
            {
                if(++m_offset >= NODE_SIZE)
                {
                    m_offset = 0;
                    m_pNode = m_pNode->pNext;
                }

                if(nullptr == m_pNode)
                    return;
                    
                if(_isSet())
                    return;
            }
        }

        int operator*()
        {
            assert(_isSet());
            return m_pNode->first + m_offset;
        }

        bool operator!=(const Iterator& it)
        {
            return m_pNode != it.m_pNode || m_offset != it.m_offset;
        }

    private:
        bool _isSet() const
        {
            assert(m_pNode != nullptr);
            assert(m_offset < NODE_SIZE);
            return 0 != (m_pNode->bitmap[m_offset / 32] & (1 << (m_offset % 32)));
        }

    private:
        const Node* m_pNode;
        int m_offset;
    };

public:
    _T_GenericSet() : m_pNodes(nullptr) {}

    _T_GenericSet(const _T_GenericSet& set) :
        m_pNodes(nullptr)
    {
        operator=(set);
    }

    template<int MIN, int MAX>
    _T_GenericSet(const _T_Set<MIN, MAX>& s) :
        m_pNodes(nullptr)
    {
        for(auto it = s.begin(); it != s.end(); ++it)
            set(*it);
    }

    ~_T_GenericSet()
    {
        _clear();
    }

public:
    Iterator begin() const { return Iterator(m_pNodes, 0); }
    Iterator end() const { return Iterator(nullptr, 0); }

    void operator=(const _T_GenericSet& set)
    {
        if(this == &set)
            return;

        _clear();

        Node** pLink = &m_pNodes;
        Node* pSrcNode = set.m_pNodes;

        while(nullptr != pSrcNode)
        {
            *pLink = new Node(*pSrcNode);
            pLink = &(*pLink)->pNext;
            pSrcNode = pSrcNode->pNext;
        }
    }

    // used only for set literals initialization
    //
    void set(int value)
    {
        Node** pLink = &m_pNodes;

        while(nullptr != *pLink && (*pLink)->first <= value)
        {
            // found the bitmap containing our value?
            //
            if(value < (*pLink)->first + NODE_SIZE)
            {
                int idx = value - (*pLink)->first;
                (*pLink)->bitmap[idx / 32] |= (1 << (idx % 32));
                return;
            }
            
            pLink = &(*pLink)->pNext;
        }

        assert(nullptr == *pLink || (*pLink)->first > value);

        // create a new bitmap & set the corresponding bit
        //
        auto pNode = new Node();
        pNode->first = (value >= 0 ?
            (value / NODE_SIZE) * NODE_SIZE :
            ((value - NODE_SIZE + 1) / NODE_SIZE) * NODE_SIZE);
        int idx = value - pNode->first;
        assert(idx >= 0 && idx < NODE_SIZE);
        pNode->bitmap[idx / 32] |= (1 << (idx % 32));

        // fix the links and we're done
        //
        pNode->pNext = *pLink;
        *pLink = pNode;
    }

    void set(int start, int end)
    {
        _RTCheck(start <= end, "invalid set initialization");

        for(auto i = start; i <= end; ++i)
        {
            set(i);
        }
    }

    // union
    //
    _T_GenericSet operator+(const _T_GenericSet& set) const
    {
        _T_GenericSet result;

        Node** pLink = &result.m_pNodes;
        Node* p1 = m_pNodes;
        Node* p2 = set.m_pNodes;

        for(;;)
        {
            Node* pSrc = nullptr;

            if(nullptr != p1 && nullptr != p2)
            {
                // matching bitmaps?
                //
                if(p1->first == p2->first)
                {
                    Node* pNode = new Node();
                    pNode->first = p1->first;
                    for(int i = 0; i < NODE_SIZE / 32; ++i)
                        pNode->bitmap[i] = p1->bitmap[i] | p2->bitmap[i];
                    *pLink = pNode;
                    pLink = &pNode->pNext;

                    p1 = p1->pNext;
                    p2 = p2->pNext;
                    continue;
                }
                else if(p1->first < p2->first)
                {
                    pSrc = p1;
                    p1 = p1->pNext;
                }
                else
                {
                    pSrc = p2;
                    p2 = p2->pNext;
                }
            }
            else if(nullptr != p1)
            {
                pSrc = p1;
                p1 = p1->pNext;
            }
            else if(nullptr != p2)
            {
                pSrc = p2;
                p2 = p2->pNext;
            }

            if(nullptr == pSrc)
                break;

            Node* pNode = new Node(*pSrc);
            pNode->pNext = nullptr;
            *pLink = pNode;
            pLink = &pNode->pNext;
        }

        return result;
    }

    // intersection
    //
    _T_GenericSet operator*(const _T_GenericSet& set) const
    {
        _T_GenericSet result;

        Node** pLink = &result.m_pNodes;
        Node* p1 = m_pNodes;
        Node* p2 = set.m_pNodes;

        while(nullptr != p1 && nullptr != p2)
        {
            // matching bitmaps?
            //
            if(p1->first == p2->first)
            {
                Node* pNode = new Node();
                pNode->first = p1->first;

                bool empty = true;
                for(int i = 0; i < NODE_SIZE / 32; ++i)
                {
                    pNode->bitmap[i] = p1->bitmap[i] & p2->bitmap[i];
                    if(pNode->bitmap[i])
                        empty = false;
                }

                if(!empty)
                {
                    *pLink = pNode;
                    pLink = &pNode->pNext;
                }
                else
                {
                    delete pNode;
                }

                p1 = p1->pNext;
                p2 = p2->pNext;
                continue;
            }
            else if(p1->first < p2->first)
            {
                p1 = p1->pNext;
            }
            else
            {
                p2 = p2->pNext;
            }
        }

        return result;
    }

    // difference
    //
    _T_GenericSet operator-(const _T_GenericSet& set) const
    {
        _T_GenericSet result;

        Node** pLink = &result.m_pNodes;
        Node* p1 = m_pNodes;
        Node* p2 = set.m_pNodes;

        while(p1 != nullptr)
        {
            if(nullptr != p2)
            {
                // matching bitmaps?
                //
                if(p1->first == p2->first)
                {
                    Node* pNode = new Node();
                    pNode->first = p1->first;

                    bool empty = true;
                    for(int i = 0; i < NODE_SIZE / 32; ++i)
                    {
                        pNode->bitmap[i] = p1->bitmap[i] & ~p2->bitmap[i];
                        if(pNode->bitmap[i])
                            empty = false;
                    }

                    if(!empty)
                    {
                        *pLink = pNode;
                        pLink = &pNode->pNext;
                    }
                    else
                    {
                        delete pNode;
                    }

                    p1 = p1->pNext;
                    p2 = p2->pNext;
                    continue;
                }
                else if(p2->first < p1->first)
                {
                    p2 = p2->pNext;
                    continue;
                }
            }

            Node* pNode = new Node(*p1);
            pNode->pNext = nullptr;
            *pLink = pNode;
            pLink = &pNode->pNext;
            p1 = p1->pNext;
        }

        return result;
    }

    // value 'in' set?
    //
    bool operator&(int value) const
    {
        for(auto pNode = m_pNodes; pNode != nullptr; pNode = pNode->pNext)
        {
            if(pNode->first > value)
            {
                // nodes are sorted so we can exit now
                //
                return false;
            }
            else if(value < pNode->first + NODE_SIZE)
            {
                int idx = value - pNode->first;
                return pNode->bitmap[idx / 32] & (1 << (idx % 32)) ? true : false;
            }
        }

        return false;
    }

    bool operator==(const _T_GenericSet& set) const
    {
        const Node* p1 = m_pNodes;
        const Node* p2 = set.m_pNodes;

        for(;;)
        {
            if(nullptr == p1 && nullptr == p2)
                return true;

            if(nullptr == p1 || nullptr == p2)
                return false;

            assert(p1->first % NODE_SIZE == 0);
            assert(p2->first % NODE_SIZE == 0);

            if(p1->first != p2->first)
                return false;

            // compare the corresponding bitmaps
            //
            for(int i = 0; i < NODE_SIZE / 32; ++i)
            {
                if(p1->bitmap[i] != p2->bitmap[i])
                    return false;
            }

            p1 = p1->pNext;
            p2 = p2->pNext;
        }
    }

    bool operator!=(const _T_GenericSet& set) const
    {
        return !operator==(set);
    }

    // inclusion
    //
    bool operator<=(const _T_GenericSet& set) const
    {
        const Node* p1 = m_pNodes;
        const Node* p2 = set.m_pNodes;

        for(;;)
        {
            if(nullptr == p1)
                return true;

            assert(p1->first % NODE_SIZE == 0);

            // find the corresponding bitmap for p1
            //
            while(nullptr != p2 && p2->first < p1->first)
            {
                assert(p2->first % NODE_SIZE == 0);
                p2 = p2->pNext;
            }

            if(nullptr == p2 || p2->first != p1->first)
                return false;

            // check the bitmap inclusion
            //
            for(int i = 0; i < NODE_SIZE / 32; ++i)
            {
                if((p1->bitmap[i] & p2->bitmap[i]) != p1->bitmap[i])
                    return false;
            }

            p1 = p1->pNext;
        }
    }

    // reverse inclusion
    //
    bool operator>=(const _T_GenericSet& set) const
    {
        return set <= *this;
    }

private:
    void _clear()
    {
        for(auto pNode = m_pNodes; nullptr != pNode; )
        {
            auto pTmp = pNode->pNext;
            delete pNode;
            pNode = pTmp;
        }

        m_pNodes = nullptr;
    }

protected:
    Node* m_pNodes;
};


///////////////////////////////////////////////////////////////////////////////
//
template<int MIN, int MAX>
_T_Set<MIN, MAX> _T_Set<MIN, MAX>::C(const _T_GenericSet& set)
{
    _T_Set s;
    s = set;
    return s;
}

template<int MIN, int MAX>
void _T_Set<MIN, MAX>::operator=(const _T_GenericSet& set)
{
    _clear();

    for(auto it = set.begin(); it != set.end(); ++it)
        _set(*it);
}

template<int MIN, int MAX>
_T_GenericSet operator+(const _T_Set<MIN, MAX>& s1, const _T_GenericSet& s2)
{
    return s2 + s1;
}

template<int MIN, int MAX>
_T_GenericSet operator*(const _T_Set<MIN, MAX>& s1, const _T_GenericSet& s2)
{
    return s2 * s1;
}

template<int MIN, int MAX>
_T_GenericSet operator-(const _T_Set<MIN, MAX>& s1, const _T_GenericSet& s2)
{
    return _T_GenericSet(s1) - s2;
}

template<int MIN, int MAX>
bool operator==(const _T_Set<MIN, MAX>& s1, const _T_GenericSet& s2)
{
    return s2 == s1;
}

template<int MIN, int MAX>
bool operator!=(const _T_Set<MIN, MAX>& s1, const _T_GenericSet& s2)
{
    return s2 != s1;
}

template<int MIN, int MAX>
bool operator<=(const _T_Set<MIN, MAX>& s1, const _T_GenericSet& s2)
{
    return s2 >= s1;
}

template<int MIN, int MAX>
bool operator>=(const _T_Set<MIN, MAX>& s1, const _T_GenericSet& s2)
{
    return s2 <= s1;
}


///////////////////////////////////////////////////////////////////////////////
//
template<int MIN, int MAX, typename T>
class _T_Array
{
    static_assert(MAX >= MIN, "invalid array bounds");

    static const int SIZE = MAX - MIN + 1;

public:
    static _T_Array C(const T* src)
    {
        _T_Array a;
        a = src;
        return a;
    }

public:
    T& operator[](int index)
    {
        _RTCheck(index >= MIN && index <= MAX, "array index out of bounds");
        return m_array[index - MIN];
    }

    T operator[](int index) const
    {
        _RTCheck(index >= MIN && index <= MAX, "array index out of bounds");
        return m_array[index - MIN];
    }

    // intended only for strings
    //
    // CONSIDER: replace this interface with a safer one
    //
    operator const T*() const { return m_array; }
    
    void operator=(const T* src)
    {
        for(int i = 0; i < SIZE; ++i)
        {
            assert(src[i] != '\0');
            m_array[i] = src[i];
        }
    }

private:
    T m_array[SIZE];
};


///////////////////////////////////////////////////////////////////////////////
//
// string type helpers
//
template<int N>
bool _strcmpEQ(const char* s1, const char* s2)
{
    for(int i = 0; i < N; ++i)
    {
        if(s1[i] != s2[i])
            return false;
    }

    return true;
}

template<int N>
bool _strcmpNE(const char* s1, const char* s2)
{
    return !_strcmpEQ<N>(s1, s2);
}

template<int N>
bool _strcmpLT(const char* s1, const char* s2)
{
    for(int i = 0; i < N; ++i)
    {
        if(s1[i] != s2[i])
            return s1[i] < s2[i];
    }

    return false;
}

template<int N>
bool _strcmpGT(const char* s1, const char* s2)
{
    return _strcmpLT<N>(s2, s1);
}

template<int N>
bool _strcmpLE(const char* s1, const char* s2)
{
    for(int i = 0; i < N; ++i)
    {
        if(s1[i] != s2[i])
            return s1[i] < s2[i];
    }

    return true;
}

template<int N>
bool _strcmpGE(const char* s1, const char* s2)
{
    return _strcmpLE<N>(s2, s1);
}


///////////////////////////////////////////////////////////////////////////////
//
const char* _str(int b)
{
    return b ? "true" : "false";
}


///////////////////////////////////////////////////////////////////////////////
//
template<int MIN, int MAX, typename T>
class _T_Range
{
    static_assert(MIN <= MAX, "invalid range");

public:
    static _T_Range C(T value)
    {
        _T_Range r;
        r = value;
        return r;
    }

public:
    operator T() const
    {
        return m_value;
    }

    void operator=(int value)
    {
        _checkValue(value);
        m_value = value;
    }

    template<int M, int N, typename T2>
    void operator=(const _T_Range<M, N, T2>& range)
    {
        _checkValue(range);
        m_value = range;
    }

    void operator++()
    {
        ++m_value;
        _checkValue(m_value);
    }

    void operator--()
    {
        --m_value;
        _checkValue(m_value);
    }

private:
    static void _checkValue(int value)
    {
        _RTCheck(value >= MIN && value <= MAX, "value outside range");
    }

private:
    T m_value;
};


///////////////////////////////////////////////////////////////////////////////
//
bool _isEoln(int c)
{
    return c == '\n' || c == '\r';
}

///////////////////////////////////////////////////////////////////////////////
//
const char* _WRITELN = "\n";
const nullptr_t _READLN = nullptr;


///////////////////////////////////////////////////////////////////////////////
//
template<typename T>
struct _FormattedValue
{
    const T& value;
    int width;
    int precission;

    _FormattedValue(const T& v, int w, int p) : value(v), width(w), precission(p) {}
};


template<typename T>
_FormattedValue<T> _format(const T& value, int width, int precission)
{
    return _FormattedValue<T>(value, width, precission);
}


///////////////////////////////////////////////////////////////////////////////
//
// file abstractions
//
class _T_Text
{
private:
    enum Mode { Unknown, Reading, Writting };

    class BufferVar
    {
    public:
        BufferVar(_T_Text* pFile) :
            m_value(),
            m_valid(false),
            m_pFile(pFile)
        {
        }

    public:
        operator char()
        {
            _syncRead();
            return _isEoln(m_value) ? ' ' : m_value;
        }

        void operator=(char c)
        {
            assert(c > 0 && c < 128);
            m_value = c;
            m_valid = true;
        }

        bool isEoln()
        {
            _syncRead();
            return _isEoln(m_value);
        }

        void invalidate() { m_valid = false; }

        char value()
        {
            _RTCheck(m_valid, "attempting to use an undefined file buffer variable");
            return m_value;
        }

    private:
        // disable copy semantics
        //
        BufferVar(const BufferVar&);
        void operator=(const BufferVar&);

    private:
        void _syncRead()
        {
            if(!m_valid)
            {
                m_value = m_pFile->currentValue();
                m_valid = true;
            }
        }

    private:
        char m_value;
        bool m_valid;
        _T_Text* m_pFile;
    };

public:
    _T_Text() :
        m_mode(Unknown),
        m_stream(nullptr),
        m_ff(this),
        m_isTemporary(false)
    {
    }

    ~_T_Text()
    {
        if(m_isTemporary)
        {
            if(m_stream != nullptr)
                ::fclose(m_stream);

            assert(!m_filename.empty());
            ::DeleteFileA(m_filename.c_str());
        }
    }

public:
    BufferVar& bufferVar() { return m_ff; }

    void init(int idx)
    {
        _RTCheck(m_filename.empty(), "can't reinitialize filename");
        assert(m_mode == Unknown);
        assert(m_stream == nullptr);

        _RTCheck(idx >= 0 && idx < _FilenameMapSize, "invalid program argument index");

        if(_INPUT_FILE_IDX == idx)
        {
            _RTCheck(s_input == nullptr, "there should be only one 'Input' file");
            s_input = this;

            m_stream = stdin;
            m_mode = Reading;

            if(nullptr == _FilenameMap[idx].fileName)
            {
                m_filename = "con";
            }
            else
            {
                m_filename = _FilenameMap[idx].fileName;
                reset();
            }
        }
        else if(_OUTPUT_FILE_IDX == idx)
        {
            _RTCheck(s_output == nullptr, "there should be only one 'Output' file");
            s_output = this;

            m_stream = stdout;
            m_mode = Writting;

            if(nullptr == _FilenameMap[idx].fileName)
            {
                m_filename = "con";
            }
            else
            {
                m_filename = _FilenameMap[idx].fileName;
                rewrite();
            }
        }
        else
        {
            assert(nullptr != _FilenameMap[idx].fileName);
            m_filename = _FilenameMap[idx].fileName;
        }

        _RTCheck(!m_filename.empty(), "missing filename [idx = %d]", idx);
    }

    void init(const char* filename)
    {
        _RTCheck(m_filename.empty(), "can't reinitialize filename");
        assert(m_mode == Unknown);
        assert(m_stream == nullptr);

        m_filename = _tempName(filename);
        _RTCheck(!m_filename.empty(), "missing filename");

        m_isTemporary = true;
    }

    char currentValue()
    {
        _RTCheck(m_mode == Reading, "file is not in reading mode");
        int c = ::fgetc(m_stream);
        _RTCheck(EOF != c, "attempting to read past the end of file");
        ::ungetc(c, m_stream);
        assert(c > 0 && c < 128);
        return c;
    }

    void put()
    {
        _RTCheck(m_mode == Writting, "file is not in writting mode");
        ::fputc(m_ff.value(), m_stream);
        m_ff.invalidate();
    }

    void get()
    {
        _RTCheck(m_mode == Reading, "file is not in reading mode");
        int c = ::fgetc(m_stream);
        _RTCheck(EOF != c, "attempting to read past the end of the file");
        assert(c > 0 && c < 128);
        m_ff.invalidate();
    }

    void rewrite()
    {
        if(m_filename.empty())
        {
            assert(m_mode == Unknown);
            assert(m_stream == nullptr);
            m_filename = _tempName();
            m_isTemporary = true;
        }

        errno_t err = (m_stream == nullptr) ?
            ::fopen_s(&m_stream, m_filename.c_str(), "wt") :
            ::freopen_s(&m_stream, m_filename.c_str(), "wt", m_stream);
        _RTCheck(0 == err, "can't open file '%s'", m_filename.c_str());

        m_ff.invalidate();
        m_mode = Writting;
    }

    void reset()
    {
        _RTCheck(!m_filename.empty(), "reset() called before filename was set");

        errno_t err = (m_stream == nullptr) ?
            ::fopen_s(&m_stream, m_filename.c_str(), "rt") :
            ::freopen_s(&m_stream, m_filename.c_str(), "rt", m_stream);
        _RTCheck(0 == err, "can't open file '%s'", m_filename.c_str());

        m_ff.invalidate();
        m_mode = Reading;
    }

    void page()
    {
        _RTCheck(m_mode == Writting, "file is not in writting mode");
        ::fprintf(m_stream, "\n");
        m_ff.invalidate();
    }

    bool eof()
    {
        _RTCheck(m_mode == Reading, "file is not in reading mode");
        int c = ::fgetc(m_stream);
        ::ungetc(c, m_stream);
        return EOF == c;
    }

    bool eoln()
    {
        _RTCheck(m_mode == Reading, "file is not in reading mode");
        return m_ff.isEoln();
    }

    // write operations
    //
    _T_Text& write(int value, int width = 0, int precission = 0)
    {
        _RTCheck(m_mode == Writting, "file is not in writting mode");
        _RTCheck(precission == 0, "precission is only valid for 'real' numbers");

        if(width == 0)
            width = 1;

        _RTCheck(width > 0, "invalid write() field width");

        char tmpFmt[_TMPFMT_BUFF_SIZE] = {};
        ::sprintf_s(tmpFmt, "%%%dd", width);

        ::fprintf(m_stream, tmpFmt, value);

        m_ff.invalidate();
        return *this;
    }

    _T_Text& write(const char* value, int width = 0, int precission = 0)
    {
        _RTCheck(m_mode == Writting, "file is not in writting mode");
        _RTCheck(precission == 0, "precission is only valid for 'real' numbers");

        _RTCheck(width >= 0, "invalid write() field width");

        char tmpFmt[_TMPFMT_BUFF_SIZE] = {};

        if(width == 0)
        {
            ::sprintf_s(tmpFmt, "%%s");
        }
        else
        {
            ::sprintf_s(tmpFmt, "%%%d.%ds", width, width);
        }

        ::fprintf(m_stream, tmpFmt, value);

        m_ff.invalidate();
        return *this;
    }

    template<int N>
    _T_Text& write(const _T_Array<1, N, char>& value, int width = 0, int precission = 0)
    {
        _RTCheck(m_mode == Writting, "file is not in writting mode");
        _RTCheck(precission == 0, "precission is only valid for 'real' numbers");

        if(width == 0)
            width = N;

        _RTCheck(width > 0, "invalid write() field width");

        char tmpFmt[_TMPFMT_BUFF_SIZE] = {};
        ::sprintf_s(tmpFmt, "%%%d.%ds", width, min(N, width));

        ::fprintf(m_stream, tmpFmt, static_cast<const char*>(value));

        m_ff.invalidate();
        return *this;
    }

    _T_Text& write(char value, int width = 0, int precission = 0)
    {
        assert(value > 0 && value < 128);

        _RTCheck(m_mode == Writting, "file is not in writting mode");
        _RTCheck(precission == 0, "precission is only valid for 'real' numbers");

        if(width == 0)
            width = 1;

        _RTCheck(width > 0, "invalid write() field width");

        char tmpFmt[_TMPFMT_BUFF_SIZE] = {};
        ::sprintf_s(tmpFmt, "%%%dc", width);

        ::fprintf(m_stream, tmpFmt, value);

        m_ff.invalidate();
        return *this;
    }

    _T_Text& write(double value, int width = 0, int precission = 0)
    {
        _RTCheck(m_mode == Writting, "file is not in writting mode");

        if(width == 0)
            width = 10;

        _RTCheck(width > 0, "invalid write() field width");

        char tmpFmt[_TMPFMT_BUFF_SIZE] = {};

        if(precission == 0)
        {
            ::sprintf_s(tmpFmt, "%%#%d.9g", width);
        }
        else
        {
            _RTCheck(precission > 0, "invalid write() field precission");
            ::sprintf_s(tmpFmt, "%%#%d.%df", width, precission);
        }

        ::fprintf(m_stream, tmpFmt, value);

        m_ff.invalidate();
        return *this;
    }

    template<typename T>
    _T_Text& operator<<(const T& value)
    {
        return write(value);
    }

    template<typename T>
    _T_Text& operator<<(const _FormattedValue<T>& fv)
    {
        return write(fv.value, fv.width, fv.precission);
    }

    // read operations
    //
    _T_Text& operator>>(int& value)
    {
        _RTCheck(m_mode == Reading, "file is not in reading mode");

        int retval = ::fscanf_s(m_stream, "%d", &value);
        _RTCheck(0 != retval && EOF != retval, "can't read value from the file");

        m_ff.invalidate();
        return *this;
    }

    _T_Text& operator>>(double& value)
    {
        _RTCheck(m_mode == Reading, "file is not in reading mode");

        int retval = ::fscanf_s(m_stream, "%lf", &value);
        _RTCheck(0 != retval && EOF != retval, "can't read value from the file");

        m_ff.invalidate();
        return *this;
    }

    _T_Text& operator>>(char& value)
    {
        _RTCheck(m_mode == Reading, "file is not in reading mode");

        int retval = ::fscanf_s(m_stream, "%c", &value, 1);
        _RTCheck(0 != retval && EOF != retval, "can't read value from the file");

        assert(value > 0 && value < 128);

        m_ff.invalidate();
        return *this;
    }

    template<int N>
    _T_Text& operator>>(_T_Array<1, N, char>& value)
    {
        _RTCheck(m_mode == Reading, "file is not in reading mode");

        char tmpFmt[_TMPFMT_BUFF_SIZE] = {};
        ::sprintf_s(tmpFmt, "%%%ds", N);

        char tmpStr[N + 1] = {};
        int retval = ::fscanf_s(m_stream, tmpFmt, tmpStr, _countof(tmpStr));
        _RTCheck(0 != retval && EOF != retval, "can't read value from the file");

        bool copy = true;
        for(int i = 1; i < N; ++i)
        {
            if(tmpStr[i - 1] == '\0')
                copy = false;
            value[i] = copy ? tmpStr[i - 1] : ' ';
        }

        m_ff.invalidate();
        return *this;
    }

    template<int MIN, int MAX, typename T>
    _T_Text& operator>>(_T_Range<MIN, MAX, T>& value)
    {
        int tmp;
        (*this) >> tmp;
        value = tmp;
        return *this;
    }

    template<int MIN, int MAX>
    _T_Text& operator>>(_T_Range<MIN, MAX, char>& value)
    {
        char tmp;
        (*this) >> tmp;
        value = tmp;
        return *this;
    }

    _T_Text& operator>>(decltype(_READLN))
    {
        while(!eoln() && !eof())
            get();

        if(!eof())
            get();

        return *this;
    }

private:
    std::string _tempName(const char* prefix = "lpc")
    {
        char tmpPath[MAX_PATH + 1] = {};
        char tmpName[MAX_PATH + 1] = {};
        DWORD dwResult = 0;

        dwResult = ::GetTempPathA(_countof(tmpPath), tmpPath);
        _RTCheck(dwResult != 0 && dwResult <= _countof(tmpPath), "can't get the TEMP path");

        dwResult = ::GetTempFileNameA(tmpPath, prefix, 0, tmpName);
        _RTCheck(dwResult != 0, "can't generate a TEMP file name");

        return tmpName;
    }

private:
    Mode m_mode;
    BufferVar m_ff;
    std::string m_filename;
    FILE* m_stream;
    bool m_isTemporary;

private:
    static _T_Text* s_input;
    static _T_Text* s_output;
};

_T_Text* _T_Text::s_input = nullptr;
_T_Text* _T_Text::s_output = nullptr;


///////////////////////////////////////////////////////////////////////////////
//
// file intrinsics
//
void _put(_T_Text& f)
{
    f.put();
}

void _get(_T_Text& f)
{
    f.get();
}

void _page(_T_Text& f)
{
    f.page();
}

void _rewrite(_T_Text& f)
{
    f.rewrite();
}

void _reset(_T_Text& f)
{
    f.reset();
}

bool _eof(_T_Text& f)
{
    return f.eof();
}

bool _eoln(_T_Text& f)
{
    return f.eoln();
}


///////////////////////////////////////////////////////////////////////////////
//
// new/dispose
//
template<typename T>
void _new(T *&p)
{
    p = new T();
}

template<typename T>
void _dispose(T *&p)
{
    delete p;
    p = nullptr;
}

///////////////////////////////////////////////////////////////////////////////
//
// math intrinsics
//
int _abs(int x)
{
    return x >= 0 ? x : -x;
}

int _sqr(int x)
{
    return x * x;
}

double _abs(double x)
{
    return x >= 0 ? x : -x;
}

double _sqr(double x)
{
    return x * x;
}

double _sin(double x)
{
    return ::sin(x);
}

double _cos(double x)
{
    return ::cos(x);
}

double _exp(double x)
{
    return ::exp(x);
}

double _ln(double x)
{
    return ::log(x);
}

double _sqrt(double x)
{
    return ::sqrt(x);
}

double _arctan(double x)
{
    return ::atan(x);
}

int _trunc(double real)
{
    return static_cast<int>(real);
}

int _round(double real)
{
    return static_cast<int>(real >= 0 ? real + 0.5 : real - 0.5);
}


///////////////////////////////////////////////////////////////////////////////
//
// ordinal intrinsics
//
int _ord(int scalar)
{
    return scalar;
}

char _chr(int scalar)
{
    return scalar;
}

int _succ(int scalar)
{
    return scalar + 1;
}

int _pred(int scalar)
{
    return scalar - 1;
}

char _succ(char scalar)
{
    return scalar + 1;
}

char _pred(char scalar)
{
    return scalar - 1;
}

bool _odd(int scalar)
{
    return (scalar % 2) != 0;
}


///////////////////////////////////////////////////////////////////////////////
//
// misc intrinsics
//
void _halt()
{
    ::exit(2);
}

template<int MIN_A, int MAX_A, typename TA, int MIN_Z, int MAX_Z, typename TZ>
void _pack(const _T_Array<MIN_A, MAX_A, TA>& a, int start, _T_Array<MIN_Z, MAX_Z, TZ>& z)
{
    for(int i = MIN_Z; i <= MAX_Z; ++i)
    {
        z[i] = a[start++];
    }
}

template<int MIN_A, int MAX_A, typename TA, int MIN_Z, int MAX_Z, typename TZ>
void _unpack(const _T_Array<MIN_Z, MAX_Z, TZ>& z, _T_Array<MIN_A, MAX_A, TA>& a, int start)
{
    for(int i = MIN_Z; i <= MAX_Z; ++i)
    {
        a[start++] = z[i];
    }
}


///////////////////////////////////////////////////////////////////////////////
//
static
void _printHelp()
{
    printf("\nCommand line arguments: ");
    for(int i = _FIRST_ARG_FILE_IDX; i < _FilenameMapSize; ++i)
        printf("<%s> ", _FilenameMap[i].argName);
    printf("[-input=<filename>] [-output=<filename>]\n");
}


///////////////////////////////////////////////////////////////////////////////
//
static
bool _handleArg(const char* arg, const char* opt, int idx)
{
    auto *s = opt;

    assert(nullptr != _FilenameMap[idx].argName);

    while(*arg && *s && *arg == *s)
    {
        ++arg;
        ++s;
    }

    if(*s != '\0')
        return false;

    if(*arg == '\0')
    {
        _printHelp();
        _RTError("missing argument value for %s", opt);
    }

    if(nullptr != _FilenameMap[idx].fileName)
    {
        _printHelp();
        _RTError("%s was already specified", opt);
    }

    _FilenameMap[idx].fileName = arg;
    return true;
}


///////////////////////////////////////////////////////////////////////////////
//
// - it will map the arguments to the program(a1, a2, .. an) arguments in order
// - additionally it supports -input=<filename> and -output=<filename>
//
int main(int argc, const char* argv[])
{
    assert(nullptr != _FilenameMap);

    // parse the command line arguments
    //
    int idx = _FIRST_ARG_FILE_IDX;

    for(int i = 1; i < argc; ++i)
    {
        const char* arg = argv[i];

        if(strcmp(arg, "-debug") == 0)
        {
            __debugbreak();
        }
        else if(_handleArg(arg, "-input=", _INPUT_FILE_IDX))
        {
            continue;
        }
        else if(_handleArg(arg, "-output=", _OUTPUT_FILE_IDX))
        {
            continue;
        }
        else
        {
            if(idx >= _FilenameMapSize)
            {
                _printHelp();
                _RTError("too many command line arguments");
            }

            assert(_FilenameMap[idx].fileName == nullptr);
            _FilenameMap[idx++].fileName = arg;
        }
    }

    if(idx != _FilenameMapSize)
    {
        _printHelp();
        _RTError("missing required command line arguments");
    }
    
    // call the generated code entry point
    //
    try
    {
        void P_();
        P_();
    }
    catch(int)
    {
        _RTError("escaped non-local goto");
    }
}


