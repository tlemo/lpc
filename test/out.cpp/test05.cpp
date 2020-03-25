
#include <lpcRuntime.h>

#line 0 "test05.pas"

//================================================================================
// command line argument map
_Filename _FilenameMapEntries[] =
{
    { "_input" },
    { "_output" },
};

_Filename* _FilenameMap = _FilenameMapEntries;
const int _FilenameMapSize = _countof(_FilenameMapEntries);


#line 0
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

#line 4
//================================================================================
// scope: program scope (level : 1)

// types
typedef int T_enum_1;
typedef _T_Array< 0, 255, T_integer > T_array_2;
typedef _T_Array< 1, 3, T_array_2 > T_t1;
typedef _T_Range<1, 5, signed __int8> T_t2;
typedef _T_Array< 1, 5, T_char > T_array_6;
typedef _T_Array< 0, 255, T_array_6 > T_array_5;
typedef _T_Array< 0, 2, T_array_5 > T_array_4;
typedef _T_Array< 1, 10, T_array_4 > T_array_3;

// forward declarations
T_integer F_outter(void* _slink, T_integer x);

// constants
const T_enum_1 C_a = 0;
const T_enum_1 C_b = 1;
const T_enum_1 C_c = 2;

// program variables
T_text _input;
T_text _output;
T_array_3 x;
T_t1 y;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    
    // subroutine body
    #line 31
    _output << "hello, world" << _WRITELN;
    
    #line 32
    x[3][C_c]['a'][4] = '!';
    
    #line 33
    y[2]['x'] = _ord(x[3][C_c]['a'][4]);
    
    #line 34
    _output << "outter = " << F_outter(nullptr, 7) << _WRITELN;
    
    #line 35
    _input >> _READLN;
    
    { /* NOP */ }
}


#line 14
//================================================================================
// scope: outter (level : 2)

// forward declarations
T_integer F_outter_inner(void* _slink, T_integer x);

// activation record
struct Frame_outter
{
    // parameters
    T_integer x;

    // locals
    T_integer _fnvalue;
};

// function body
T_integer F_outter(void* _slink, T_integer x)
{
    // prologue/frame definition
    Frame_outter _F = {x };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 26
    _F._fnvalue = 1;
    
    #line 27
    if((F_outter_inner(&_F, _F.x) == 7))
    {
        #line 27
        _F._fnvalue = 2;
    }
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


#line 15
//================================================================================
// scope: outter_inner (level : 3)

// forward declarations
void P_outter_inner_setOutter(void* _slink, T_integer x);

// activation record
struct Frame_outter_inner
{
   Frame_outter* _slink;

    // parameters
    T_integer x;

    // locals
    T_integer _fnvalue;
};

// function body
T_integer F_outter_inner(void* _slink, T_integer x)
{
    // prologue/frame definition
    Frame_outter_inner _F = { (Frame_outter*)_slink, x };
    
    // subroutine body
    #line 21
    _F._fnvalue = (_F.x * 2);
    
    #line 22
    _F._slink->_fnvalue = 7;
    
    #line 23
    P_outter_inner_setOutter(&_F, (100 + _F.x));
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


#line 16
//================================================================================
// scope: outter_inner_setOutter (level : 4)

// activation record
struct Frame_outter_inner_setOutter
{
   Frame_outter_inner* _slink;

    // parameters
    T_integer x;
};

// function body
void P_outter_inner_setOutter(void* _slink, T_integer x)
{
    // prologue/frame definition
    Frame_outter_inner_setOutter _F = { (Frame_outter_inner*)_slink, x };
    
    // subroutine body
    #line 18
    _F._slink->_slink->_fnvalue = _F.x;
    
    { /* NOP */ }
}

