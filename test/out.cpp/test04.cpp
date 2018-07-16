
#include <lpcRuntime.h>

// "test04.pas"

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

// line 3
//================================================================================
// scope: program scope (level : 1)

// types
struct T_B;
struct T_R1;
struct T_R3;
_PTR_TYPE(T_A, T_integer)
_PTR_TYPE(T_C, T_B)
_PTR_TYPE(T_B, T_C)
_PTR_TYPE(T_pointer_1, T_R1)
struct T_R2
{
    T_pointer_1 p;
};
_PTR_TYPE(T_pointer_2, T_R2)
struct T_R1
{
    T_pointer_2 p;
};
_PTR_TYPE(T_pointer_3, T_R3)
struct T_R3
{
    T_integer Val;
    T_pointer_3 Next;
};

// forward declarations
void P_foo(void* _slink);

// program variables
T_text _input;
T_text _output;

// function body
void P_()
{
    
    // initializers
    _input.init(0);
    _output.init(1);
    
    // subroutine body
    { /* NOP */ }
}


// line 27
//================================================================================
// scope: foo (level : 2)

// activation record
struct Frame_foo
{
    // locals
    T_A p;
};

// function body
void P_foo(void* _slink)
{
    // prologue/frame definition
    Frame_foo _F = { };
    
    assert(nullptr == _slink);
    
    // subroutine body
    { /* NOP */ }
}

