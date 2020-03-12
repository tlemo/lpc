
#include <lpcRuntime.h>

// "nonlocalGoto2.pas"

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
void P_bar(void* _slink);

// non-local goto targets
const int NL_1 = 1;
const int NL_2 = 2;

// program variables
T_text _input;
T_text _output;

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
        // line 34
        _output << "entry" << _WRITELN;
        
        // line 35
        P_foo(nullptr);
        
        // line 36
        _output << "UNEXPECTED" << _WRITELN;
        
        // line 38
        L_1:
        _output << "P_L1" << _WRITELN;
        
        // line 39
        P_bar(nullptr);
        
        // line 40
        _output << "UNEXPECTED" << _WRITELN;
        
        // line 41
        goto L_1;
        
        // line 43
        L_2:
        _output << "P_L2" << _WRITELN;
        
        // line 44
        _output << "done" << _WRITELN;
        
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


// line 8
//================================================================================
// scope: foo (level : 2)

// activation record
struct Frame_foo
{};

// function body
void P_foo(void* _slink)
{
    // prologue/frame definition
    Frame_foo _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 10
    _output << "foo" << _WRITELN;
    
    // line 11
    throw NL_1;
    
    // line 12
    _output << "UNEXPECTED" << _WRITELN;
    
    { /* NOP */ }
}


// line 15
//================================================================================
// scope: bar (level : 2)

// forward declarations
void P_bar_moo(void* _slink);

// non-local goto targets
const int NL_bar_1 = 3;

// activation record
struct Frame_bar
{};

// function body
void P_bar(void* _slink)
{
    // prologue/frame definition
    Frame_bar _F = { };
    
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
        // line 25
        _output << "bar" << _WRITELN;
        
        // line 26
        goto L_1;
        
        // line 27
        _output << "UNEXPECTED" << _WRITELN;
        
        // line 29
        L_1:
        P_bar_moo(&_F);
        
        // line 30
        _output << "UNEXPECTED" << _WRITELN;
        
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


// line 17
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
    // line 19
    _output << "moo" << _WRITELN;
    
    // line 20
    throw NL_2;
    
    // line 21
    _output << "UNEXPECTED" << _WRITELN;
    
    // line 22
    throw NL_bar_1;
    
    { /* NOP */ }
}

