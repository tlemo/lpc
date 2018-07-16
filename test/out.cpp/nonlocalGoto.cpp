
#include <lpcRuntime.h>

// "nonlocalGoto.pas"

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
T_integer F_foo(void* _slink, T_integer x);
void P_bar(void* _slink, T_integer x);

// non-local goto targets
const int NL_1 = 1;
const int NL_2 = 2;

// program variables
T_text _input;
T_text _output;
T_integer P1;
T_integer P2;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    
    int _nonlocalTarget = 0;
    
    _nonlocalGoto:
    try
    {
        switch(_nonlocalTarget)
        {
        case 0: break;
        case NL_1: goto L_1;
        case NL_2: goto L_2;
        default: _RTError("unexpected non-local target");
        }
        
        // subroutine body
        // line 40
        P1 = 0;
        
        // line 41
        P2 = 0;
        
        // line 44
        L_1:
        _output << "P_L1" << _WRITELN;
        
        // line 45
        _output << "p1 = " << P1 << _WRITELN;
        
        // line 46
        _output << "p2 = " << P2 << _WRITELN;
        
        // line 48
        P1 = (P1 + 1);
        
        // line 50
        P2 = F_foo(nullptr, P1);
        
        // line 51
        _output << "UNEXPECTED" << _WRITELN;
        
        // line 52
        goto L_1;
        
        // line 55
        L_2:
        _output << "P_L2" << _WRITELN;
        
        // line 56
        _output << "p1 = " << P1 << _WRITELN;
        
        // line 57
        _output << "p2 = " << P2 << _WRITELN;
        
        { /* NOP */ }
    }
    catch(int _target)
    {
        switch(_target)
        {
        case NL_1:
        case NL_2:
            _nonlocalTarget = _target;
            goto _nonlocalGoto;
        default: throw;
        }
    }
}


// line 12
//================================================================================
// scope: foo (level : 2)

// activation record
struct Frame_foo
{
    // parameters
    T_integer x;

    // locals
    T_integer _fnvalue;
};

// function body
T_integer F_foo(void* _slink, T_integer x)
{
    // prologue/frame definition
    Frame_foo _F = {x };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 14
    switch(_F.x)
    {
    case 1:
        // line 15
        P_bar(nullptr, _F.x);
        break;
    
    case 3:
        // line 16
        throw NL_1;
        break;
    
    case 2:
        // line 17
        throw NL_2;
        break;
    }
    
    // line 19
    _output << "UNEXPECTED" << _WRITELN;
    
    // line 20
    _F._fnvalue = (-1);
    
    { /* NOP */ }
    
    // epilogue
    return _F._fnvalue;
}


// line 23
//================================================================================
// scope: bar (level : 2)

// forward declarations
void P_bar_moo(void* _slink);

// non-local goto targets
const int NL_bar_1 = 3;

// activation record
struct Frame_bar
{
    // parameters
    T_integer x;
};

// function body
void P_bar(void* _slink, T_integer x)
{
    // prologue/frame definition
    Frame_bar _F = {x };
    
    assert(nullptr == _slink);
    
    int _nonlocalTarget = 0;
    
    _nonlocalGoto:
    try
    {
        switch(_nonlocalTarget)
        {
        case 0: break;
        case NL_bar_1: goto L_1;
        default: _RTError("unexpected non-local target");
        }
        
        // subroutine body
        // line 33
        P_bar_moo(&_F);
        
        // line 34
        _output << "UNEXPECTED" << _WRITELN;
        
        // line 36
        L_1:
        P2 = F_foo(nullptr, 3);
        
        { /* NOP */ }
    }
    catch(int _target)
    {
        switch(_target)
        {
        case NL_bar_1:
            _nonlocalTarget = _target;
            goto _nonlocalGoto;
        default: throw;
        }
    }
}


// line 27
//================================================================================
// scope: bar_moo (level : 3)

// activation record
struct Frame_bar_moo
{
   Frame_bar* _slink;
};

// function body
void P_bar_moo(void* _slink)
{
    // prologue/frame definition
    Frame_bar_moo _F = { (Frame_bar*)_slink };
    
    // subroutine body
    // line 29
    throw NL_bar_1;
    
    { /* NOP */ }
}

