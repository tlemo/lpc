
#include <lpcRuntime.h>

// "allvar.pas"

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

// line 2
//================================================================================
// scope: program scope (level : 1)

// types
typedef _T_Range<0, 255, unsigned __int8> T_range_1;

// program variables
T_text _input;
T_text _output;
T_integer A;
T_char AnimalCookies;
T_integer B;
T_range_1 C;
T_range_1 D;
T_real DogTail;
T_boolean Puppy;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    
    // subroutine body
    // line 11
    A = 4;
    
    // line 12
    B = 5;
    
    // line 13
    C = 212;
    
    // line 14
    D = (C + 3);
    
    // line 15
    DogTail = 345.125;
    
    // line 16
    Puppy = (B > A);
    
    // line 18
    AnimalCookies = 'R';
    
    // line 20
    _output << "The integers are" << _format(A, 5, 0) << _format(B, 5, 0) << _WRITELN;
    
    // line 21
    _output << "The bytes are" << _format(C, 5, 0) << _format(D, 5, 0) << _WRITELN;
    
    // line 24
    _output << "The real value is" << _format(DogTail, 12, 2) << _format(DogTail, 12, 4) << _WRITELN;
    
    // line 25
    _output << _WRITELN;
    
    // line 26
    _output << "The boolean value is " << _str(Puppy) << _format(_str(Puppy), 13, 0) << _WRITELN;
    
    // line 27
    _output << "The char variable is an " << AnimalCookies << _WRITELN;
    
    { /* NOP */ }
}

