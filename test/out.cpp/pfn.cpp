
#include <lpcRuntime.h>

// "pfn.pas"

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
    // line 73
    _output << "main" << _WRITELN;
    
    // line 74
    P_foo(nullptr);
    
    // line 75
    _output << v << _WRITELN;
    
    { /* NOP */ }
}


// line 8
//================================================================================
// scope: foo (level : 2)

// types
typedef _T_Pfn<T_integer (*)(void*, T_integer)> T_foo_subroutine_1;
typedef _T_Pfn<void (*)(void*, T_integer)> T_foo_subroutine_2;

// forward declarations
T_integer F_foo_testPfn(void* _slink, T_integer i);
void P_foo_bar1(void* _slink, T_integer i, T_foo_subroutine_1 Pfn);
void P_foo_bar2(void* _slink, T_foo_subroutine_2 Pfn);
void P_foo_procPfn(void* _slink, T_integer i);

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
    // line 65
    _F.FooV = 123;
    
    // line 66
    _output << "foo" << _WRITELN;
    
    // line 67
    P_foo_bar1(&_F, 0, _makePfn(F_foo_testPfn, &_F));
    
    // line 68
    P_foo_bar2(&_F, _makePfn(P_foo_procPfn, &_F));
    
    // line 69
    _output << _F.FooV << ' ' << v << _WRITELN;
    
    { /* NOP */ }
}


// line 11
//================================================================================
// scope: foo_testPfn (level : 3)

// activation record
struct Frame_foo_testPfn
{
   Frame_foo* _slink;

    // parameters
    T_integer i;

    // locals
    T_integer _fnvalue;
};

// function body
T_integer F_foo_testPfn(void* _slink, T_integer i)
{
    // prologue/frame definition
    Frame_foo_testPfn _F = { (Frame_foo*)_slink, i };
    
    // subroutine body
    // line 13
    _F._fnvalue = ((_F.i * 1000) + _F._slink->FooV);
    
    // line 14
    _output << "foo.testPfn(" << _F.i << ')' << _WRITELN;
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 17
//================================================================================
// scope: foo_bar1 (level : 3)

// activation record
struct Frame_foo_bar1
{
   Frame_foo* _slink;

    // parameters
    T_integer i;
    T_foo_subroutine_1 Pfn;

    // locals
    T_integer Bar1V;
    T_integer Tmp;
};

// function body
void P_foo_bar1(void* _slink, T_integer i, T_foo_subroutine_1 Pfn)
{
    // prologue/frame definition
    Frame_foo_bar1 _F = { (Frame_foo*)_slink, i, Pfn };
    
    // subroutine body
    // line 21
    _F.Bar1V = _F.i;
    
    // line 22
    _output << "foo.bar1" << _WRITELN;
    
    // line 23
    _F.Tmp = (*_F.Pfn._pfn)(_F.Pfn._slink, _F.i);
    
    // line 24
    _output << "pfn = " << _F.Tmp << _WRITELN;
    
    // line 25
    if((_F.i < 3))
    {
        // line 25
        P_foo_bar1(_F._slink, (_F.i + 1), _F.Pfn);
    }
    
    // line 26
    _output << _F.Bar1V << ' ' << _F._slink->FooV << ' ' << v << _WRITELN;
    
    { /* NOP */ }
}


// line 29
//================================================================================
// scope: foo_bar2 (level : 3)

// types
typedef _T_Pfn<T_integer (*)(void*, T_integer)> T_foo_bar2_subroutine_3;

// forward declarations
void P_foo_bar2_moo(void* _slink, T_foo_bar2_subroutine_3 Pfn);
T_integer F_foo_bar2_testPfn(void* _slink, T_integer i);

// activation record
struct Frame_foo_bar2
{
   Frame_foo* _slink;

    // parameters
    T_foo_subroutine_2 Pfn;

    // locals
    T_integer Bar2V;
};

// function body
void P_foo_bar2(void* _slink, T_foo_subroutine_2 Pfn)
{
    // prologue/frame definition
    Frame_foo_bar2 _F = { (Frame_foo*)_slink, Pfn };
    
    // subroutine body
    // line 51
    _F.Bar2V = 1000;
    
    // line 52
    _output << "foo.bar2" << _WRITELN;
    
    // line 53
    (*_F.Pfn._pfn)(_F.Pfn._slink, _F._slink->FooV);
    
    // line 54
    P_foo_bar1(_F._slink, 1, _makePfn(F_foo_bar2_testPfn, &_F));
    
    // line 55
    P_foo_bar2_moo(&_F, _makePfn(F_foo_bar2_testPfn, &_F));
    
    // line 56
    _output << _F.Bar2V << ' ' << _F._slink->FooV << ' ' << v << _WRITELN;
    
    { /* NOP */ }
}


// line 32
//================================================================================
// scope: foo_bar2_moo (level : 4)

// activation record
struct Frame_foo_bar2_moo
{
   Frame_foo_bar2* _slink;

    // parameters
    T_foo_bar2_subroutine_3 Pfn;

    // locals
    T_integer MooV;
    T_integer Tmp;
};

// function body
void P_foo_bar2_moo(void* _slink, T_foo_bar2_subroutine_3 Pfn)
{
    // prologue/frame definition
    Frame_foo_bar2_moo _F = { (Frame_foo_bar2*)_slink, Pfn };
    
    // subroutine body
    // line 36
    _F.MooV = (*_F.Pfn._pfn)(_F.Pfn._slink, 100);
    
    // line 37
    _output << "foo.bar2.moo" << _WRITELN;
    
    // line 38
    _F.Tmp = (*_F.Pfn._pfn)(_F.Pfn._slink, _F._slink->_slink->FooV);
    
    // line 39
    _output << "pfn = " << _F.Tmp << _WRITELN;
    
    // line 40
    P_foo_bar1(_F._slink->_slink, 2, _F.Pfn);
    
    // line 41
    _output << _F.MooV << ' ' << _F._slink->Bar2V << ' ' << _F._slink->_slink->FooV << ' ' << v << _WRITELN;
    
    { /* NOP */ }
}


// line 44
//================================================================================
// scope: foo_bar2_testPfn (level : 4)

// activation record
struct Frame_foo_bar2_testPfn
{
   Frame_foo_bar2* _slink;

    // parameters
    T_integer i;

    // locals
    T_integer _fnvalue;
};

// function body
T_integer F_foo_bar2_testPfn(void* _slink, T_integer i)
{
    // prologue/frame definition
    Frame_foo_bar2_testPfn _F = { (Frame_foo_bar2*)_slink, i };
    
    // subroutine body
    // line 46
    _F._fnvalue = ((_F.i * 100) + _F._slink->_slink->FooV);
    
    // line 47
    _output << "foo.bar2.testPfn(" << _F.i << ')' << _WRITELN;
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 59
//================================================================================
// scope: foo_procPfn (level : 3)

// activation record
struct Frame_foo_procPfn
{
   Frame_foo* _slink;

    // parameters
    T_integer i;
};

// function body
void P_foo_procPfn(void* _slink, T_integer i)
{
    // prologue/frame definition
    Frame_foo_procPfn _F = { (Frame_foo*)_slink, i };
    
    // subroutine body
    // line 61
    _output << "foo.procPfn(" << _F.i << ')' << _WRITELN;
    
    { /* NOP */ }
}

