
#include <lpcRuntime.h>

#line 0 "udtParameters.pas"

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
void P_fooA(void* _slink, T_A Arg);
void P_fooS(void* _slink, T_S Arg);
void P_fooR(void* _slink, T_R Arg);

// program variables
T_text _input;
T_text _output;
T_integer i;
T_A VA;
T_R VR;

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
    #line 47
    _FOR_TO(i, 0, 9)
    {
        #line 47
        VA[i] = i;
    }
    _FOR_END(i)
    
    #line 48
    P_fooA(nullptr, VA);
    
    #line 50
    P_fooS(nullptr, T_S::C(_setLiteral1));
    
    #line 52
    VR.a = 11;
    
    #line 53
    VR.b = 22;
    
    #line 54
    VR.c = 1.10000;
    
    #line 55
    VR.d = 2.20000;
    
    #line 56
    P_fooR(nullptr, VR);
    
    { /* NOP */ }
}


#line 19
//================================================================================
// scope: fooA (level : 2)

// activation record
struct Frame_fooA
{
    // parameters
    T_A Arg;

    // locals
    T_integer i;
};

// function body
void P_fooA(void* _slink, T_A Arg)
{
    // prologue/frame definition
    Frame_fooA _F = {Arg };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 22
    _FOR_TO(_F.i, 0, 9)
    {
        #line 23
        _output << "a[" << _F.i << "] = " << _F.Arg[_F.i] << _WRITELN;
    }
    _FOR_END(_F.i)
    
    #line 24
    _output << _WRITELN;
    
    { /* NOP */ }
}


#line 27
//================================================================================
// scope: fooS (level : 2)

// activation record
struct Frame_fooS
{
    // parameters
    T_S Arg;

    // locals
    T_integer i;
};

// function body
void P_fooS(void* _slink, T_S Arg)
{
    // prologue/frame definition
    Frame_fooS _F = {Arg };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(2, 10);
    
    // subroutine body
    #line 30
    _output << "s = [ ";
    
    #line 31
    _FOR_TO(_F.i, 1, 10)
    {
        #line 32
        if(((_F.Arg * _setLiteral1) & _F.i))
        {
            #line 33
            _output << _F.i << ' ';
        }
    }
    _FOR_END(_F.i)
    
    #line 34
    _output << ']' << _WRITELN;
    
    #line 35
    _output << _WRITELN;
    
    { /* NOP */ }
}


#line 38
//================================================================================
// scope: fooR (level : 2)

// activation record
struct Frame_fooR
{
    // parameters
    T_R Arg;
};

// function body
void P_fooR(void* _slink, T_R Arg)
{
    // prologue/frame definition
    Frame_fooR _F = {Arg };
    
    assert(nullptr == _slink);
    
    // subroutine body
    #line 40
    _output << "r.a = " << _F.Arg.a << _WRITELN;
    
    #line 41
    _output << "r.b = " << _F.Arg.b << _WRITELN;
    
    #line 42
    _output << "r.c = " << _F.Arg.c << _WRITELN;
    
    #line 43
    _output << "r.d = " << _F.Arg.d << _WRITELN;
    
    { /* NOP */ }
}

