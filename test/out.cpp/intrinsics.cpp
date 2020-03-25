
#include <lpcRuntime.h>

#line 0 "intrinsics.pas"

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

// program variables
T_text _input;
T_text _output;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    
    // subroutine body
    #line 6
    _output << "sqrt(9.0) = " << _sqrt(9.00000) << _WRITELN;
    
    #line 7
    _output << "sqrt(9) = " << _sqrt(9) << _WRITELN;
    
    #line 8
    _output << "abs(-5.0) = " << _abs((-5.00000)) << _WRITELN;
    
    #line 9
    _output << "abs(-5) = " << _abs((-5)) << _WRITELN;
    
    { /* NOP */ }
}

