
#include <lpcRuntime.h>

// "prototype.pas"

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

// line 7
//================================================================================
// scope: program scope (level : 1)

// types
typedef _T_Range<0, 255, unsigned __int8> T_BYTE;
typedef _T_Array< 0, 15, T_BYTE > T_A;
struct T_REC
{
    T_real x;
    T_real y;
    T_A a;
};
typedef _T_Array< 1, 3, T_char > T_array_1;
typedef _T_Array< 0, 3, T_BYTE > T_array_3;
typedef _T_Array< 0, 3, T_array_3 > T_array_2;
struct T_UNION
{
    T_integer i;
    // variable fields
    union
    {
        T_A a;
        T_array_2 b;
    };
};
typedef _T_Pfn<T_integer (*)(void*, T_integer, T_REC, T_UNION)> T_subroutine_4;

// forward declarations
T_integer F_foo(void* _slink, T_subroutine_4 Pfn);
void P_test(void* _slink, T_integer& y);

// constants
const auto C_STR = "foo";
const T_integer C_VALUE = 100000;

// program variables
T_text _input;
T_text _output;
T_REC Gr;
T_integer Gv;
T_integer Gv2;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    
    // subroutine body
    // line 72
    Gv2 = 1;
    
    // line 73
    P_test(nullptr, Gv2);
    
    // line 74
    _output << "done, gv2 = " << Gv2 << _WRITELN;
    
    { /* NOP */ }
}


// line 34
//================================================================================
// scope: foo (level : 2)

// types
_PTR_TYPE(T_foo_pointer_5, T_BYTE)

// activation record
struct Frame_foo
{
    // parameters
    T_subroutine_4 Pfn;

    // locals
    T_integer _fnvalue;
    T_integer i;
    T_foo_pointer_5 p;
    T_UNION u;
};

// function body
T_integer F_foo(void* _slink, T_subroutine_4 Pfn)
{
    // prologue/frame definition
    Frame_foo _F = {Pfn };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 40
    _F.u.i = C_VALUE;
    
    // line 42
    _FOR_TO(_F.i, 0, 15)
    {
        // line 42
        _F.u.a[_F.i] = _F.i;
    }
    _FOR_END(_F.i)
    
    // line 44
    _F._fnvalue = (*_F.Pfn._pfn)(_F.Pfn._slink, Gv, Gr, _F.u);
    
    // line 46
    _new(_F.p._ptr);
    
    // line 47
    if((_F.p != nullptr))
    {
        // line 49
        (*_F.p._ptr) = _mod(Gv , 256);
        
        // line 50
        _dispose(_F.p._ptr);
        
        { /* NOP */ }
    }
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 54
//================================================================================
// scope: test (level : 2)

// forward declarations
T_integer F_test_bar(void* _slink, T_integer x, T_REC r, T_UNION u);

// activation record
struct Frame_test
{
    // parameters
    T_integer& y;
};

// function body
void P_test(void* _slink, T_integer& y)
{
    // prologue/frame definition
    Frame_test _F = {y };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 62
    Gv = 1000;
    
    // line 63
    Gr.a[0] = 100;
    
    // line 64
    Gv2 = 10000;
    
    // line 66
    _output << C_STR << " = " << F_foo(nullptr, _makePfn(F_test_bar, &_F)) << _WRITELN;
    
    // line 68
    _F.y = (_F.y + 2345);
    
    { /* NOP */ }
}


// line 56
//================================================================================
// scope: test_bar (level : 3)

// activation record
struct Frame_test_bar
{
   Frame_test* _slink;

    // parameters
    T_integer x;
    T_REC r;
    T_UNION u;

    // locals
    T_integer _fnvalue;
};

// function body
T_integer F_test_bar(void* _slink, T_integer x, T_REC r, T_UNION u)
{
    // prologue/frame definition
    Frame_test_bar _F = { (Frame_test*)_slink, x, r, u };
    
    // subroutine body
    // line 58
    _F._fnvalue = ((((_F.x + _F.r.a[0]) + _F.u.b[1][3]) + _F.u.i) + _F._slink->y);
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}

