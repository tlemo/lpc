
#include <lpcRuntime.h>

// "arrays2.pas"

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
typedef _T_Array< 1, 8, T_integer > T_array_2;
typedef _T_Array< 1, 8, T_array_2 > T_array_1;
typedef _T_Array< 1, 8, T_integer > T_array_4;
typedef _T_Array< 1, 8, T_array_4 > T_array_3;

// program variables
T_text _input;
T_text _output;
T_array_1 Checkerboard;
T_integer Count;
T_integer Index;
T_array_3 Value;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    
    // subroutine body
    // line 9
    _FOR_TO(Index, 1, 8)
    {
        // line 10
        _FOR_TO(Count, 1, 8)
        {
            // line 11
            Checkerboard[Index][Count] = (Index + (3 * Count));
            
            // line 12
            Value[Index][Count] = (Index + (2 * Checkerboard[Index][Count]));
            
            { /* NOP */ }
        }
        _FOR_END(Count)
        
        { /* NOP */ }
    }
    _FOR_END(Index)
    
    // line 16
    _output << " Output of checkerboard" << _WRITELN;
    
    // line 17
    _output << _WRITELN;
    
    // line 18
    _FOR_TO(Index, 1, 8)
    {
        // line 19
        _FOR_TO(Count, 1, 8)
        {
            // line 20
            _output << _format(Checkerboard[Index][Count], 7, 0);
        }
        _FOR_END(Count)
        
        // line 21
        _output << _WRITELN;
        
        { /* NOP */ }
    }
    _FOR_END(Index)
    
    // line 24
    Value[3][5] = (-1);
    
    // line 25
    Value[3][6] = 3;
    
    // line 26
    Value[Value[3][6]][7] = 2;
    
    // line 28
    _FOR_TO(Count, 1, 3)
    {
        // line 29
        _output << _WRITELN;
    }
    _FOR_END(Count)
    
    // line 30
    _output << "Output of value" << _WRITELN;
    
    // line 31
    _output << _WRITELN;
    
    // line 32
    _FOR_TO(Count, 1, 8)
    {
        // line 33
        _FOR_TO(Index, 1, 8)
        {
            // line 34
            _output << _format(Value[Count][Index], 7, 0);
        }
        _FOR_END(Index)
        
        // line 35
        _output << _WRITELN;
        
        { /* NOP */ }
    }
    _FOR_END(Count)
    
    { /* NOP */ }
}

