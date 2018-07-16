
#include <lpcRuntime.h>

// "intrinsics2.pas"

//================================================================================
// command line argument map
_Filename _FilenameMapEntries[] =
{
    { "_input" },
    { "_output" },
};

_Filename* _FilenameMap = _FilenameMapEntries;
const int _FilenameMapSize = _countof(_FilenameMapEntries);


// line 0
//================================================================================
// scope: global scope (level : 0)

// types
typedef char T_boolean;
typedef char T_char;
typedef int T_integer;
typedef double T_real;
typedef _T_Text T_text;

// constants
const T_boolean C_false = 0;
const T_integer C_maxint = 2147483647;
const T_boolean C_true = 1;

// line 4
//================================================================================
// scope: program scope (level : 1)

// types
typedef _T_Array< 0, 99, T_integer > T_array_1;
typedef _T_Array< 10, 49, T_integer > T_array_2;
typedef _T_Array< 1, 3, T_integer > T_array_4;
typedef _T_Array< 0, 99, T_array_4 > T_array_3;
_PTR_TYPE(T_pointer_6, T_integer)
typedef _T_Array< 0, 99, T_pointer_6 > T_array_5;
_PTR_TYPE(T_pointer_7, T_real)
typedef _T_Set<1, 5> T_set_8;
struct T_rec
{
    T_integer a;
    T_integer b;
    // variable fields selector
    T_integer Tag;
    // variable fields
    union
    {
        struct
        {
            // variable fields
            union
            {
                T_integer C1;
                T_real C2;
            };
        };
        T_set_8 C3;
    };
};
_PTR_TYPE(T_pointer_9, T_rec)

// constants
const T_integer C_THREE = 3;

// program variables
T_text _input;
T_text _output;
T_array_1 A1;
T_array_2 A2;
T_array_3 A3;
T_array_5 A4;
T_integer i;
T_pointer_7 p;
T_pointer_9 Pr;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    
    // subroutine body
    // line 28
    _new(p._ptr);
    
    // line 29
    {
        _new(Pr._ptr);
        _setValue(Pr._ptr->Tag, 1);
        // unnamed tag = 'a'
    }
    
    // line 30
    {
        _checkValue(Pr._ptr->Tag, 1);
        // unnamed tag = 'a'
        _dispose(Pr._ptr);
    }
    
    // line 31
    {
        _new(Pr._ptr);
        _setValue(Pr._ptr->Tag, C_THREE);
    }
    
    // line 32
    {
        _checkValue(Pr._ptr->Tag, C_THREE);
        _dispose(Pr._ptr);
    }
    
    // line 33
    _dispose(p._ptr);
    
    // line 35
    i = 5;
    
    // line 36
    _pack(A1, 0, A2);
    
    // line 37
    _unpack(A2, A1, i);
    
    { /* NOP */ }
}

