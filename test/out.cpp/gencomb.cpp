
#include <lpcRuntime.h>

#line 0 "gencomb.pas"

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
typedef _T_Array< 1, 50, T_integer > T_vec;

// forward declarations
void P_gen(void* _slink, T_vec& v);
void P_prel(void* _slink, T_vec v);

// program variables
T_text _input;
T_text _output;
T_vec a;
T_integer i;
T_integer Ig;
T_integer k;
T_integer n;
T_vec v;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    
    // subroutine body
    #line 31
    _output << "generarea combinarilor de n luate cŒte k" << _WRITELN;
    
    #line 32
    _output << "n=";
    
    #line 32
    _input >> n >> _READLN;
    
    #line 32
    _output << n << _WRITELN;
    
    #line 33
    _output << "k=";
    
    #line 33
    _input >> k >> _READLN;
    
    #line 33
    _output << k << _WRITELN;
    
    #line 34
    Ig = 0;
    
    #line 35
    do
    {
        #line 36
        P_gen(nullptr, v);
        
        #line 37
        if((Ig == 0))
        {
            #line 37
            goto L_1;
        }
        
        #line 38
        P_prel(nullptr, v);
        
        { /* NOP */ }
    }
    while(!(Ig == 0));
    
    L_1:
    { /* NOP */ }
}


#line 7
//================================================================================
// scope: gen (level : 2)

// types
typedef _T_Range<0, 255, unsigned __int8> T_gen_range_1;

// activation record
struct Frame_gen
{
    // parameters
    T_vec& v;

    // locals
    T_gen_range_1 i;
    T_gen_range_1 j;
};

// function body
void P_gen(void* _slink, T_vec& v)
{
    // prologue/frame definition
    Frame_gen _F = {v };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 11
    if((Ig == 0))
    {
        #line 12
        _FOR_TO(_F.i, 1, n)
        {
            #line 12
            _F.v[_F.i] = _F.i;
        }
        _FOR_END(_F.i)
        
        #line 13
        Ig = 1;
        
        #line 13
        goto L_10;
        
        { /* NOP */ }
    }
    
    #line 15
    _FOR_DOWNTO(_F.i, k, 1)
    {
        #line 16
        if((_F.v[_F.i] < ((n + _F.i) - k)))
        {
            #line 16
            _F.v[_F.i] = (_F.v[_F.i] + 1);
            
            #line 17
            _FOR_TO(_F.j, (_F.i + 1), k)
            {
                #line 17
                _F.v[_F.j] = (_F.v[(_F.j - 1)] + 1);
            }
            _FOR_END(_F.j)
            
            #line 18
            goto L_10;
            
            { /* NOP */ }
        }
    }
    _FOR_END(_F.i)
    
    #line 20
    Ig = 0;
    
    L_10:
    { /* NOP */ }
}


#line 23
//================================================================================
// scope: prel (level : 2)

// activation record
struct Frame_prel
{
    // parameters
    T_vec v;

    // locals
    T_integer i;
};

// function body
void P_prel(void* _slink, T_vec v)
{
    // prologue/frame definition
    Frame_prel _F = {v };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 26
    _FOR_TO(_F.i, 1, k)
    {
        #line 26
        if((_F.v[_F.i] != 0))
        {
            #line 26
            _output << _F.v[_F.i] << "  ";
        }
    }
    _FOR_END(_F.i)
    
    #line 27
    _output << _WRITELN;
    
    { /* NOP */ }
}

