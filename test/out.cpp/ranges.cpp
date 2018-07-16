
#include <lpcRuntime.h>

// "ranges.pas"

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
typedef _T_Range<97, 122, char> T_R1;
typedef _T_Range<1, 10, signed __int8> T_R2;
typedef _T_Range<100, 200, unsigned __int8> T_R3;
typedef _T_Range<0, 300, signed __int16> T_R4;
typedef _T_Range<0, 65535, unsigned __int16> T_R5;
typedef _T_Range<-16384, 65536, signed __int32> T_R6;

// program variables
T_text _input;
T_text _output;
T_R1 T1;
T_R2 T2;
T_R3 T3;
T_R4 T4;
T_R5 T5;
T_R6 T6;
T_text Tmp;
T_R1 V1;
T_R2 V2;
T_R3 V3;
T_R4 V4;
T_R5 V5;
T_R6 V6;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    Tmp.init("tmp");
    
    // subroutine body
    // line 22
    V1 = 'x';
    
    // line 23
    V2 = 1;
    
    // line 24
    V3 = 200;
    
    // line 25
    V4 = 123;
    
    // line 26
    V5 = 32768;
    
    // line 27
    V6 = (-1);
    
    // line 29
    _output << "initial   : " << V1 << ' ' << V2 << ' ' << V3 << ' ' << V4 << ' ' << V5 << ' ' << V6 << _WRITELN;
    
    // line 31
    _output << "write part  1 ..." << _WRITELN;
    
    // line 32
    _rewrite(Tmp);
    
    // line 33
    Tmp << V1 << ' ' << V2 << ' ' << V3 << _WRITELN;
    
    // line 35
    _output << "read part   1 ..." << _WRITELN;
    
    // line 36
    _reset(Tmp);
    
    // line 37
    Tmp >> T1 >> T2 >> T3 >> _READLN;
    
    // line 39
    _output << "write part  2 ..." << _WRITELN;
    
    // line 40
    _rewrite(Tmp);
    
    // line 41
    Tmp << V4 << ' ' << V5 << ' ' << V6 << _WRITELN;
    
    // line 43
    _output << "read part   2 ..." << _WRITELN;
    
    // line 44
    _reset(Tmp);
    
    // line 45
    Tmp >> T4 >> T5 >> T6 >> _READLN;
    
    // line 47
    _output << "final     : " << T1 << ' ' << T2 << ' ' << T3 << ' ' << T4 << ' ' << T5 << ' ' << T6 << _WRITELN;
    
    { /* NOP */ }
}

