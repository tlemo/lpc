
#include <lpcRuntime.h>

// "aggregates.pas"

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
typedef _T_Array< 1, 10, T_char > T_A;
struct T_R
{
    T_A Vector;
    T_integer x;
    T_integer y;
};

// program variables
T_text _input;
T_text _output;
T_A V1;
T_A V2;
T_R V3;
T_R V4;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    
    // subroutine body
    // line 20
    V1 = V2;
    
    // line 21
    V3 = V4;
    
    // line 25
    V3.Vector = V4.Vector;
    
    // line 29
    V3.Vector = V4.Vector;
    
    { /* NOP */ }
}

