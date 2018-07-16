
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

// "aggregates.pas"

// line 4
//================================================================================
// scope: program scope (level : 1)

// line 0xfeefee

// TYPE A = array [1 .. 10] of uint8;
.class value explicit T_A
{
    // elem size = 1
    // alignment = 1
    .size 10

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 10)
        ldarg index
        ldc.i4 10
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

    .method public static string arrayToString(valuetype T_A)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 10
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

// line 0xfeefee

// TYPE R = record;
.class value explicit T_R
{
    // alignment = 4
    .size 20
    
    .field [0] public valuetype T_A Vector
    .field [12] public int32 x
    .field [16] public int32 y
}

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype [lpcRuntime]LPC.File _output
    .field public static valuetype T_A V1
    .field public static valuetype T_A V2
    .field public static valuetype T_R V3
    .field public static valuetype T_R V4
}

// line 0
//================================================================================
// scope: global scope (level : 0)

// line 4

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
    // line 20
    ldsfld valuetype T_A _G::V2
    stsfld valuetype T_A _G::V1
    // line 21
    ldsfld valuetype T_R _G::V4
    stsfld valuetype T_R _G::V3
    // line 25
    ldsflda valuetype T_R _G::V3
    ldsflda valuetype T_R _G::V4
    ldfld valuetype T_A T_R::Vector
    stfld valuetype T_A T_R::Vector
    // line 29
    ldsflda valuetype T_R _G::V3
    ldsflda valuetype T_R _G::V4
    ldfld valuetype T_A T_R::Vector
    stfld valuetype T_A T_R::Vector
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
