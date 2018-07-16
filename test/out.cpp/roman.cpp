
#include <lpcRuntime.h>

// "roman.pas"

//================================================================================
// command line argument map
_Filename _FilenameMapEntries[] =
{
    { "_input" },
    { "output" },
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

// program variables
T_text _input;
T_text Output;
T_integer x;
T_integer y;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    Output.init(1);
    
    // subroutine body
    // line 7
    y = 1;
    
    // line 8
    do
    {
        // line 8
        x = y;
        
        // line 8
        Output << x << ' ';
        
        // line 9
        while((x >= 1000))
        {
            // line 10
            Output << 'm';
            
            // line 10
            x = (x - 1000);
        }
        
        // line 11
        if((x >= 500))
        {
            // line 12
            Output << 'd';
            
            // line 12
            x = (x - 500);
        }
        
        // line 13
        while((x >= 100))
        {
            // line 14
            Output << 'c';
            
            // line 14
            x = (x - 100);
        }
        
        // line 15
        if((x >= 50))
        {
            // line 16
            Output << 'l';
            
            // line 16
            x = (x - 50);
        }
        
        // line 17
        while((x >= 10))
        {
            // line 18
            Output << 'x';
            
            // line 18
            x = (x - 10);
        }
        
        // line 19
        if((x >= 5))
        {
            // line 20
            Output << 'v';
            
            // line 20
            x = (x - 5);
        }
        
        // line 21
        while((x >= 1))
        {
            // line 22
            Output << 'i';
            
            // line 22
            x = (x - 1);
        }
        
        // line 23
        Output << _WRITELN;
        
        // line 23
        y = (2 * y);
    }
    while(!(y > 5000));
}

