
#include <lpcRuntime.h>

#line 0 "test02.pas"

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

#line 2
//================================================================================
// scope: program scope (level : 1)

// types
typedef _T_Array< 1, 16, T_char > T_array_1;

// program variables
T_text _input;
T_text _output;
T_array_1 MyName;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    
    // subroutine body
    #line 6
    _output << "What is your name?" << _WRITELN;
    
    #line 7
    _input >> MyName >> _READLN;
    
    #line 8
    _output << "Hello," << MyName << '!' << _WRITELN;
    
    { /* NOP */ }
}

