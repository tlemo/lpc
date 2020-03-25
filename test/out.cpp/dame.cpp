
#include <lpcRuntime.h>

#line 0 "dame.pas"

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

#line 1
//================================================================================
// scope: program scope (level : 1)

// types
typedef _T_Range<0, 255, unsigned __int8> T_range_1;
typedef _T_Array< 1, 8, T_range_1 > T_vec;

// forward declarations
T_boolean F_f(void* _slink, T_vec x, T_integer i);

// program variables
T_text _input;
T_text _output;
T_integer i;
T_integer k;
T_vec x;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    
    // subroutine body
    #line 19
    _FOR_TO(i, 1, 8)
    {
        #line 19
        x[i] = 0;
    }
    _FOR_END(i)
    
    #line 20
    i = 1;
    
    #line 21
    while((i > 0))
    {
        #line 22
        k = 0;
        
        #line 23
        while((x[i] < 8))
        {
            #line 24
            x[i] = (x[i] + 1);
            
            #line 25
            if(F_f(nullptr, x, i))
            {
                #line 25
                k = 1;
                
                #line 25
                goto L_1;
                
                { /* NOP */ }
            }
            
            { /* NOP */ }
        }
        
        #line 27
        L_1:
        if((k == 1))
        {
            #line 27
            if((i == 8))
            {
                #line 28
                _output << " solutie : " << _WRITELN;
                
                #line 29
                _FOR_TO(i, 1, 8)
                {
                    #line 29
                    _output << x[i] << "  ";
                }
                _FOR_END(i)
                
                #line 31
                _output << _WRITELN;
            }
            else
            {
                #line 33
                i = (i + 1);
                
                #line 33
                x[i] = 0;
                
                { /* NOP */ }
            }
        }
        else
        {
            #line 34
            i = (i - 1);
        }
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}


#line 8
//================================================================================
// scope: f (level : 2)

// activation record
struct Frame_f
{
    // parameters
    T_vec x;
    T_integer i;

    // locals
    T_boolean _fnvalue;
    T_integer j;
};

// function body
T_boolean F_f(void* _slink, T_vec x, T_integer i)
{
    // prologue/frame definition
    Frame_f _F = {x, i };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 12
    _F._fnvalue = C_false;
    
    #line 13
    _FOR_TO(_F.j, 1, (_F.i - 1))
    {
        #line 13
        if((_F.x[_F.i] == _F.x[_F.j]))
        {
            #line 13
            goto L_10;
        }
        else
        {
            #line 14
            if(((_F.i - _F.j) == _abs((_F.x[_F.i] - _F.x[_F.j]))))
            {
                #line 14
                goto L_10;
            }
        }
    }
    _FOR_END(_F.j)
    
    #line 15
    _F._fnvalue = C_true;
    
    L_10:
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}

