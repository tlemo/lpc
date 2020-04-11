
#include <lpcRuntime.h>

#line 0 "varParameters.pas"

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
typedef _T_Array< 0, 9, T_integer > T_A;
struct T_R
{
    T_integer a;
    T_integer b;
    T_real c;
    T_real d;
};
typedef _T_Set<1, 10> T_S;

// forward declarations
void P_printA(void* _slink, T_A Arg);
void P_printS(void* _slink, T_S Arg);
void P_printR(void* _slink, T_R Arg);
void P_test(void* _slink, T_A& a, T_S& s, T_R& r, T_integer& i);

// program variables
T_text _input;
T_text _output;
T_integer i;
T_A VA;
T_R VR;
T_S VS;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(1);
    _setLiteral1.set(2);
    _setLiteral1.set(3);
    _setLiteral1.set(5);
    _setLiteral1.set(7);
    
    // subroutine body
    #line 69
    _FOR_TO(i, 0, 9)
    {
        #line 69
        VA[i] = i;
    }
    _FOR_END(i)
    
    #line 71
    VS = _setLiteral1;
    
    #line 73
    VR.a = 11;
    
    #line 74
    VR.b = 22;
    
    #line 75
    VR.c = 1.10000;
    
    #line 76
    VR.d = 2.20000;
    
    #line 78
    i = 1000;
    
    #line 80
    P_test(nullptr, VA, VS, VR, i);
    
    #line 82
    _output << "------------------------------" << _WRITELN;
    
    #line 84
    P_printA(nullptr, VA);
    
    #line 85
    P_printS(nullptr, VS);
    
    #line 86
    P_printR(nullptr, VR);
    
    #line 87
    _output << "i = " << i << _WRITELN;
    
    { /* NOP */ }
}


#line 20
//================================================================================
// scope: printA (level : 2)

// activation record
struct Frame_printA
{
    // parameters
    T_A Arg;

    // locals
    T_integer i;
};

// function body
void P_printA(void* _slink, T_A Arg)
{
    // prologue/frame definition
    Frame_printA _F = {Arg };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 23
    _FOR_TO(_F.i, 0, 9)
    {
        #line 24
        _output << "a[" << _F.i << "] = " << _F.Arg[_F.i] << _WRITELN;
    }
    _FOR_END(_F.i)
    
    #line 25
    _output << _WRITELN;
    
    { /* NOP */ }
}


#line 28
//================================================================================
// scope: printS (level : 2)

// activation record
struct Frame_printS
{
    // parameters
    T_S Arg;

    // locals
    T_integer i;
};

// function body
void P_printS(void* _slink, T_S Arg)
{
    // prologue/frame definition
    Frame_printS _F = {Arg };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 31
    _output << "s = [ ";
    
    #line 32
    _FOR_TO(_F.i, 1, 10)
    {
        #line 33
        if((_F.Arg & _F.i))
        {
            #line 34
            _output << _F.i << ' ';
        }
    }
    _FOR_END(_F.i)
    
    #line 35
    _output << ']' << _WRITELN;
    
    #line 36
    _output << _WRITELN;
    
    { /* NOP */ }
}


#line 39
//================================================================================
// scope: printR (level : 2)

// activation record
struct Frame_printR
{
    // parameters
    T_R Arg;
};

// function body
void P_printR(void* _slink, T_R Arg)
{
    // prologue/frame definition
    Frame_printR _F = {Arg };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 41
    _output << "r.a = " << _F.Arg.a << _WRITELN;
    
    #line 42
    _output << "r.b = " << _F.Arg.b << _WRITELN;
    
    #line 43
    _output << "r.c = " << _F.Arg.c << _WRITELN;
    
    #line 44
    _output << "r.d = " << _F.Arg.d << _WRITELN;
    
    #line 45
    _output << _WRITELN;
    
    { /* NOP */ }
}


#line 48
//================================================================================
// scope: test (level : 2)

// activation record
struct Frame_test
{
    // parameters
    T_A& a;
    T_S& s;
    T_R& r;
    T_integer& i;
};

// function body
void P_test(void* _slink, T_A& a, T_S& s, T_R& r, T_integer& i)
{
    // prologue/frame definition
    Frame_test _F = {a, s, r, i };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    
    // subroutine body
    #line 50
    P_printA(nullptr, _F.a);
    
    #line 51
    P_printS(nullptr, _F.s);
    
    #line 52
    P_printR(nullptr, _F.r);
    
    #line 53
    _output << "i = " << _F.i << _WRITELN;
    
    #line 55
    _F.a[0] = 123;
    
    #line 56
    _F.a[9] = 321;
    
    #line 58
    _F.s = _setLiteral1;
    
    #line 60
    _F.r.a = 0;
    
    #line 61
    _F.r.b = (-1);
    
    #line 62
    _F.r.c = 0;
    
    #line 63
    _F.r.d = (-3.14000);
    
    #line 65
    _F.i = 1024;
    
    { /* NOP */ }
}

