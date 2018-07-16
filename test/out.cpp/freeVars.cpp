
#include <lpcRuntime.h>

// "freeVars.pas"

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

// forward declarations
void P_foo(void* _slink);

// program variables
T_text _input;
T_text _output;
T_integer v;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    
    // subroutine body
    // line 44
    P_foo(nullptr);
    
    // line 45
    _output << v << _WRITELN;
    
    { /* NOP */ }
}


// line 8
//================================================================================
// scope: foo (level : 2)

// forward declarations
void P_foo_bar1(void* _slink, T_integer i);
void P_foo_bar2(void* _slink, T_integer i);

// activation record
struct Frame_foo
{
    // locals
    T_integer FooV;
};

// function body
void P_foo(void* _slink)
{
    // prologue/frame definition
    Frame_foo _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 38
    P_foo_bar1(&_F, 0);
    
    // line 39
    P_foo_bar2(&_F, 1000);
    
    // line 40
    _output << _F.FooV << ' ' << v << _WRITELN;
    
    { /* NOP */ }
}


// line 11
//================================================================================
// scope: foo_bar1 (level : 3)

// activation record
struct Frame_foo_bar1
{
   Frame_foo* _slink;

    // parameters
    T_integer i;

    // locals
    T_integer Bar1V;
};

// function body
void P_foo_bar1(void* _slink, T_integer i)
{
    // prologue/frame definition
    Frame_foo_bar1 _F = { (Frame_foo*)_slink, i };
    
    // subroutine body
    // line 14
    _F.Bar1V = _F.i;
    
    // line 15
    if((_F.i < 3))
    {
        // line 15
        P_foo_bar1(_F._slink, (_F.i + 1));
    }
    
    // line 16
    _output << _F.Bar1V << ' ' << _F._slink->FooV << ' ' << v << _WRITELN;
    
    { /* NOP */ }
}


// line 19
//================================================================================
// scope: foo_bar2 (level : 3)

// forward declarations
void P_foo_bar2_moo(void* _slink);

// activation record
struct Frame_foo_bar2
{
   Frame_foo* _slink;

    // parameters
    T_integer i;

    // locals
    T_integer Bar2V;
};

// function body
void P_foo_bar2(void* _slink, T_integer i)
{
    // prologue/frame definition
    Frame_foo_bar2 _F = { (Frame_foo*)_slink, i };
    
    // subroutine body
    // line 31
    _F.Bar2V = _F.i;
    
    // line 32
    P_foo_bar1(_F._slink, 1);
    
    // line 33
    P_foo_bar2_moo(&_F);
    
    // line 34
    _output << _F.Bar2V << ' ' << _F._slink->FooV << ' ' << v << _WRITELN;
    
    { /* NOP */ }
}


// line 22
//================================================================================
// scope: foo_bar2_moo (level : 4)

// activation record
struct Frame_foo_bar2_moo
{
   Frame_foo_bar2* _slink;

    // locals
    T_integer MooV;
};

// function body
void P_foo_bar2_moo(void* _slink)
{
    // prologue/frame definition
    Frame_foo_bar2_moo _F = { (Frame_foo_bar2*)_slink };
    
    // subroutine body
    // line 25
    _F.MooV = 100;
    
    // line 26
    P_foo_bar1(_F._slink->_slink, 2);
    
    // line 27
    _output << _F.MooV << ' ' << _F._slink->Bar2V << ' ' << _F._slink->i << ' ' << _F._slink->_slink->FooV << ' ' << v << _WRITELN;
    
    { /* NOP */ }
}

