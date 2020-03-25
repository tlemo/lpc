
#include <lpcRuntime.h>

#line 0 "bigcase.pas"

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
typedef _T_Range<0, 255, unsigned __int8> T_range_1;

// program variables
T_text _input;
T_text _output;
T_integer Count;
T_range_1 Index;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    
    // subroutine body
    #line 8
    _FOR_TO(Count, 1, 10)
    {
        #line 9
        _output << _format(Count, 5, 0);
        
        #line 10
        switch(Count)
        {
        case 7:
        case 8:
        case 9:
            #line 11
            _output << " Big Number";
            break;
        
        case 2:
        case 4:
        case 6:
            #line 12
            _output << " Small";
            
            #line 13
            _output << " even";
            
            #line 14
            _output << " number.";
            
            { /* NOP */ }
            break;
        
        case 3:
            #line 16
            _FOR_TO(Index, 1, 3)
            {
                #line 16
                _output << " Boo";
            }
            _FOR_END(Index)
            break;
        
        case 1:
            #line 17
            if(C_true)
            {
                #line 17
                _output << " TRUE is True,";
                
                #line 18
                _output << " and this is dumb.";
                
                { /* NOP */ }
            }
            break;
        }
        
        #line 22
        _output << _WRITELN;
        
        { /* NOP */ }
    }
    _FOR_END(Count)
    
    { /* NOP */ }
}

