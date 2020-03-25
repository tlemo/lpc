
#include <lpcRuntime.h>

#line 0 "e.pas"

//================================================================================
// command line argument map
_Filename _FilenameMapEntries[] =
{
    { "input" },
    { "output" },
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
typedef _T_Range<0, 255, unsigned __int8> T_digit;
typedef _T_Array< 0, 1007, T_digit > T_digitarray;
_PTR_TYPE(T_pointer_1, T_digitarray)

// forward declarations
void P_initinteger(void* _slink, T_digitarray& x, T_integer n);
void P_divide(void* _slink, T_digitarray& x, T_integer Xs, T_integer n, T_digitarray& y, T_integer& Ys);
void P_add(void* _slink, T_digitarray& s, T_digitarray& x, T_integer Xs);
void P_sub(void* _slink, T_digitarray& s, T_digitarray& x, T_integer Xs);

// constants
const T_integer C_NDIGITS = 1007;
const T_integer C_NPRINT = 1000;

// program variables
T_integer i;
T_text Input;
T_text Output;
T_pointer_1 s;
T_pointer_1 t;
T_integer Ts;
T_pointer_1 x;
T_integer Xs;

// function body
void P_()
{
    
    // initializers
    Input.init(0);
    Output.init(1);
    
    // subroutine body
    #line 102
    _new(s._ptr);
    
    #line 102
    _new(x._ptr);
    
    #line 103
    P_initinteger(nullptr, (*s._ptr), 0);
    
    #line 104
    P_initinteger(nullptr, (*x._ptr), 1);
    
    #line 105
    Xs = 0;
    
    #line 106
    P_add(nullptr, (*s._ptr), (*x._ptr), Xs);
    
    #line 107
    i = 0;
    
    #line 108
    do
    {
        #line 109
        i = (i + 1);
        
        #line 110
        P_divide(nullptr, (*x._ptr), Xs, i, (*x._ptr), Xs);
        
        #line 111
        P_add(nullptr, (*s._ptr), (*x._ptr), Xs);
        
        #line 112
        Output << "Series: " << _format(((double)(100 * Xs) / (C_NDIGITS + 1)), 5, 2) << '%' << _WRITELN;
        
        { /* NOP */ }
    }
    while(!(Xs > C_NDIGITS));
    
    #line 114
    Output << _WRITELN;
    
    #line 115
    Output << _format(' ', 45, 0) << "e = " << _format((*s._ptr)[0], 1, 0) << '.' << _WRITELN;
    
    #line 116
    i = 0;
    
    #line 117
    _FOR_TO(i, 1, C_NPRINT)
    {
        #line 118
        Output << _format((*s._ptr)[i], 1, 0);
        
        #line 119
        if((_mod(i , 1000) == 0))
        {
            #line 119
            Output << _WRITELN;
        }
        
        #line 120
        if((_mod(i , 100) == 0))
        {
            #line 120
            Output << _WRITELN;
        }
        else
        {
            #line 121
            if((_mod(i , 10) == 0))
            {
                #line 121
                Output << ' ';
            }
        }
        
        { /* NOP */ }
    }
    _FOR_END(i)
    
    #line 123
    Output << _WRITELN;
    
    #line 124
    Output << "Final digits: ";
    
    #line 125
    _FOR_TO(i, (C_NPRINT + 1), C_NDIGITS)
    {
        #line 126
        Output << _format((*s._ptr)[i], 1, 0);
        
        { /* NOP */ }
    }
    _FOR_END(i)
    
    #line 128
    Output << _WRITELN;
    
    { /* NOP */ }
}


#line 17
//================================================================================
// scope: initinteger (level : 2)

// activation record
struct Frame_initinteger
{
    // parameters
    T_digitarray& x;
    T_integer n;

    // locals
    T_integer i;
};

// function body
void P_initinteger(void* _slink, T_digitarray& x, T_integer n)
{
    // prologue/frame definition
    Frame_initinteger _F = {x, n };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 21
    _F.x[0] = _F.n;
    
    #line 22
    _FOR_TO(_F.i, 1, C_NDIGITS)
    {
        #line 22
        _F.x[_F.i] = 0;
    }
    _FOR_END(_F.i)
    
    { /* NOP */ }
}


#line 25
//================================================================================
// scope: divide (level : 2)

// activation record
struct Frame_divide
{
    // parameters
    T_digitarray& x;
    T_integer Xs;
    T_integer n;
    T_digitarray& y;
    T_integer& Ys;

    // locals
    T_integer c;
    T_integer i;
};

// function body
void P_divide(void* _slink, T_digitarray& x, T_integer Xs, T_integer n, T_digitarray& y, T_integer& Ys)
{
    // prologue/frame definition
    Frame_divide _F = {x, Xs, n, y, Ys };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 31
    _F.c = 0;
    
    #line 32
    _FOR_TO(_F.i, _F.Xs, C_NDIGITS)
    {
        #line 33
        _F.c = ((10 * _F.c) + _F.x[_F.i]);
        
        #line 34
        _F.y[_F.i] = (_F.c / _F.n);
        
        #line 35
        _F.c = _mod(_F.c , _F.n);
        
        { /* NOP */ }
    }
    _FOR_END(_F.i)
    
    #line 37
    _F.Ys = _F.Xs;
    
    #line 38
    while(((_F.Ys <= C_NDIGITS) && (_F.y[_F.Ys] == 0)))
    {
        #line 38
        _F.Ys = (_F.Ys + 1);
    }
    
    { /* NOP */ }
}


#line 41
//================================================================================
// scope: add (level : 2)

// activation record
struct Frame_add
{
    // parameters
    T_digitarray& s;
    T_digitarray& x;
    T_integer Xs;

    // locals
    T_integer c;
    T_integer i;
};

// function body
void P_add(void* _slink, T_digitarray& s, T_digitarray& x, T_integer Xs)
{
    // prologue/frame definition
    Frame_add _F = {s, x, Xs };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 46
    _F.c = 0;
    
    #line 47
    _FOR_DOWNTO(_F.i, C_NDIGITS, _F.Xs)
    {
        #line 48
        _F.c = ((_F.s[_F.i] + _F.x[_F.i]) + _F.c);
        
        #line 49
        if((_F.c >= 10))
        {
            #line 50
            _F.s[_F.i] = (_F.c - 10);
            
            #line 51
            _F.c = 1;
            
            { /* NOP */ }
        }
        else
        {
            #line 53
            _F.s[_F.i] = _F.c;
            
            #line 54
            _F.c = 0;
            
            { /* NOP */ }
        }
        
        { /* NOP */ }
    }
    _FOR_END(_F.i)
    
    #line 57
    _F.i = _F.Xs;
    
    #line 58
    while((_F.c != 0))
    {
        #line 59
        _F.i = (_F.i - 1);
        
        #line 60
        _F.c = (_F.s[_F.i] + _F.c);
        
        #line 61
        if((_F.c >= 10))
        {
            #line 62
            _F.s[_F.i] = (_F.c - 10);
            
            #line 63
            _F.c = 1;
            
            { /* NOP */ }
        }
        else
        {
            #line 65
            _F.s[_F.i] = _F.c;
            
            #line 66
            _F.c = 0;
            
            { /* NOP */ }
        }
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}


#line 71
//================================================================================
// scope: sub (level : 2)

// activation record
struct Frame_sub
{
    // parameters
    T_digitarray& s;
    T_digitarray& x;
    T_integer Xs;

    // locals
    T_integer c;
    T_integer i;
};

// function body
void P_sub(void* _slink, T_digitarray& s, T_digitarray& x, T_integer Xs)
{
    // prologue/frame definition
    Frame_sub _F = {s, x, Xs };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 76
    _F.c = 0;
    
    #line 77
    _FOR_DOWNTO(_F.i, C_NDIGITS, _F.Xs)
    {
        #line 78
        _F.c = ((_F.s[_F.i] - _F.x[_F.i]) + _F.c);
        
        #line 79
        if((_F.c < 0))
        {
            #line 80
            _F.s[_F.i] = (_F.c + 10);
            
            #line 81
            _F.c = (-1);
            
            { /* NOP */ }
        }
        else
        {
            #line 83
            _F.s[_F.i] = _F.c;
            
            #line 84
            _F.c = 0;
            
            { /* NOP */ }
        }
        
        { /* NOP */ }
    }
    _FOR_END(_F.i)
    
    #line 87
    _F.i = _F.Xs;
    
    #line 88
    while((_F.c != 0))
    {
        #line 89
        _F.i = (_F.i - 1);
        
        #line 90
        _F.c = (_F.s[_F.i] + _F.c);
        
        #line 91
        if((_F.c < 0))
        {
            #line 92
            _F.s[_F.i] = (_F.c + 10);
            
            #line 93
            _F.c = (-1);
            
            { /* NOP */ }
        }
        else
        {
            #line 95
            _F.s[_F.i] = _F.c;
            
            #line 96
            _F.c = 0;
            
            { /* NOP */ }
        }
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
}

