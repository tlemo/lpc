
#include "commonDefs.il"

.field public static string[] _ProgramArgs

.method static void .cctor()
{
    ldc.i4 2
    newarr string
    dup
    ldc.i4 0
    ldstr "_input"
    stelem string
    dup
    ldc.i4 1
    ldstr "_output"
    stelem string
    stsfld string[] _ProgramArgs
    ret
}

// "test02.pas"

// line 2
//================================================================================
// scope: program scope (level : 1)

// line 0xfeefee

// TYPE array_1 = array [1 .. 16] of uint8;
.class value explicit T_array_1
{
    // elem size = 1
    // alignment = 1
    .size 16

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 16)
        ldarg index
        ldc.i4 16
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 1
        sub
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }

    .method public static string arrayToString(valuetype T_array_1)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 16
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype [lpcRuntime]LPC.File _output
    .field public static valuetype T_array_1 MyName
}

// line 0
//================================================================================
// scope: global scope (level : 0)

// line 2

.method static
void _Program()
{
    .maxstack 32

    .locals init()

    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    ldc.i4 0
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

L_Entry:
    // line 6
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "What is your name?"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 7
    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    dup
    ldsflda valuetype T_array_1 _G::MyName
    ldc.i4 16
    call instance void [lpcRuntime]LPC.File::Read(uint8*, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    // line 8
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "Hello,"
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld valuetype T_array_1 _G::MyName
    call string T_array_1::arrayToString(valuetype T_array_1)
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 33 // '!'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
    leave L_Epilogue

L_Epilogue:
    ret

.try L_Entry to L_Epilogue finally
{
    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::Close()

    endfinally
}

}
