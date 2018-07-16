
#include <lpcRuntime.h>

// "udtReturn.pas"

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

// line 2
//================================================================================
// scope: program scope (level : 1)

// types
typedef _T_Array< 0, 3, T_integer > T_A;
struct T_R
{
    T_integer a;
    T_integer b;
};
typedef _T_Set<1, 10> T_S;

// forward declarations
T_A F_fooA(void* _slink);
T_S F_fooS(void* _slink);
T_R F_fooR(void* _slink);

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
    _setLiteral1.set(2, 10);
    
    // subroutine body
    // line 43
    VA = F_fooA(nullptr);
    
    // line 44
    VS = F_fooS(nullptr);
    
    // line 45
    VR = F_fooR(nullptr);
    
    // line 47
    _FOR_TO(i, 0, 3)
    {
        // line 48
        _output << "a[" << i << "] = " << VA[i] << _WRITELN;
    }
    _FOR_END(i)
    
    // line 50
    _output << _WRITELN;
    
    // line 52
    _output << "s = [ ";
    
    // line 53
    _FOR_TO(i, 1, 10)
    {
        // line 54
        if(((VS * _setLiteral1) & i))
        {
            // line 55
            _output << i << ' ';
        }
    }
    _FOR_END(i)
    
    // line 56
    _output << ']' << _WRITELN;
    
    // line 58
    _output << _WRITELN;
    
    // line 60
    _output << "r.a = " << VR.a << ", r.b = " << VR.b << _WRITELN;
    
    { /* NOP */ }
}


// line 19
//================================================================================
// scope: fooA (level : 2)

// activation record
struct Frame_fooA
{
    // locals
    T_A _fnvalue;
    T_A Tmp;
};

// function body
T_A F_fooA(void* _slink)
{
    // prologue/frame definition
    Frame_fooA _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 22
    _F.Tmp[0] = 0;
    
    // line 23
    _F.Tmp[1] = 1;
    
    // line 24
    _F.Tmp[2] = 2;
    
    // line 25
    _F.Tmp[3] = 3;
    
    // line 26
    _F._fnvalue = _F.Tmp;
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 29
//================================================================================
// scope: fooS (level : 2)

// activation record
struct Frame_fooS
{
    // locals
    T_S _fnvalue;
};

// function body
T_S F_fooS(void* _slink)
{
    // prologue/frame definition
    Frame_fooS _F = { };
    
    assert(nullptr == _slink);
    
    // hoisted definitions
    _T_GenericSet _setLiteral1;
    _setLiteral1.set(1);
    _setLiteral1.set(2);
    _setLiteral1.set(3);
    _setLiteral1.set(5);
    _setLiteral1.set(7);
    
    // subroutine body
    // line 31
    _F._fnvalue = _setLiteral1;
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 34
//================================================================================
// scope: fooR (level : 2)

// activation record
struct Frame_fooR
{
    // locals
    T_R _fnvalue;
    T_R Tmp;
};

// function body
T_R F_fooR(void* _slink)
{
    // prologue/frame definition
    Frame_fooR _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 37
    _F.Tmp.a = 11;
    
    // line 38
    _F.Tmp.b = 22;
    
    // line 39
    _F._fnvalue = _F.Tmp;
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}

