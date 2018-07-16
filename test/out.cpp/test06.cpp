
#include <lpcRuntime.h>

// "test06.pas"

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

// types
_PTR_TYPE(T_ptr, T_integer)

// forward declarations
void P_init(void* _slink, T_ptr& Pointer);
void P_setValue(void* _slink, T_integer& Value, T_ptr& Pointer);
void P_free(void* _slink, T_ptr& Pointer);

// program variables
T_text _input;
T_text _output;
T_integer i;
T_ptr p;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    
    // subroutine body
    // line 28
    P_init(nullptr, p);
    
    // line 30
    P_setValue(nullptr, i, p);
    
    // line 32
    _output << "i = " << i << _WRITELN;
    
    // line 33
    _output << "p^ = " << (*p._ptr) << _WRITELN;
    
    // line 35
    P_free(nullptr, p);
    
    // line 37
    if((p == nullptr))
    {
        // line 38
        _output << "ok" << _WRITELN;
    }
    else
    {
        // line 40
        _output << "FAILED!" << _WRITELN;
    }
    
    { /* NOP */ }
}


// line 11
//================================================================================
// scope: init (level : 2)

// activation record
struct Frame_init
{
    // parameters
    T_ptr& Pointer;
};

// function body
void P_init(void* _slink, T_ptr& Pointer)
{
    // prologue/frame definition
    Frame_init _F = {Pointer };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 13
    _new(_F.Pointer._ptr);
    
    { /* NOP */ }
}


// line 16
//================================================================================
// scope: setValue (level : 2)

// activation record
struct Frame_setValue
{
    // parameters
    T_integer& Value;
    T_ptr& Pointer;
};

// function body
void P_setValue(void* _slink, T_integer& Value, T_ptr& Pointer)
{
    // prologue/frame definition
    Frame_setValue _F = {Value, Pointer };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 18
    i = 12345;
    
    // line 19
    (*_F.Pointer._ptr) = _F.Value;
    
    { /* NOP */ }
}


// line 22
//================================================================================
// scope: free (level : 2)

// activation record
struct Frame_free
{
    // parameters
    T_ptr& Pointer;
};

// function body
void P_free(void* _slink, T_ptr& Pointer)
{
    // prologue/frame definition
    Frame_free _F = {Pointer };
    
    assert(nullptr == _slink);
    
    // subroutine body
    // line 24
    _dispose(_F.Pointer._ptr);
    
    { /* NOP */ }
}

