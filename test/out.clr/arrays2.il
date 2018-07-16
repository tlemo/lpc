
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

// "arrays2.pas"

// line 2
//================================================================================
// scope: program scope (level : 1)

// line 0xfeefee

// TYPE array_2 = array [1 .. 8] of int32;
.class value explicit T_array_2
{
    // elem size = 4
    // alignment = 4
    .size 32

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 8)
        ldarg index
        ldc.i4 8
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 1
        sub
        ldc.i4 4
        mul
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

// line 0xfeefee

// TYPE array_1 = array [1 .. 8] of valuetype T_array_2;
.class value explicit T_array_1
{
    // elem size = 32
    // alignment = 4
    .size 256

    .field [0] public valuetype T_array_2 elem

    .method public valuetype T_array_2& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 8)
        ldarg index
        ldc.i4 8
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 1
        sub
        ldc.i4 32
        mul
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype [lpcRuntime]LPC.File _output
    .field public static valuetype T_array_1 Checkerboard
    .field public static int32 Count
    .field public static int32 Index
    .field public static valuetype T_array_1 Value
}

// line 0
//================================================================================
// scope: global scope (level : 0)

// line 2

.method static
void _Program()
{
    .maxstack 32

    .locals init(
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpEndValue3,
        int32 $tmpIndex4,
        int32 $tmpIndex5,
        int32 $tmpIndex6,
        int32 $tmpEndValue7,
        int32 $tmpIndex8,
        int32 $tmpEndValue9,
        int32 $tmpIndex10,
        int32 $tmpIndex11,
        int32 $tmpIndex12,
        int32 $tmpEndValue13,
        int32 $tmpIndex14,
        int32 $tmpIndex15,
        int32 $tmpEndValue16,
        int32 $tmpIndex17,
        int32 $tmpEndValue18,
        int32 $tmpIndex19,
        int32 $tmpIndex20,
        int32 $tmpIndex21)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    ldc.i4 0
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

L_Entry:
    // line 9
    ldc.i4 8
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc $tmpIndex2
    stsfld int32 _G::Index
L_for_loop_1:
    // line 10
    ldc.i4 8
    stloc $tmpEndValue3
    ldc.i4 1
    dup
    ldloc $tmpEndValue3
    bgt L_for_end_4
    stloc $tmpIndex4
    ldloc $tmpIndex4
    stsfld int32 _G::Count
L_for_loop_3:
    // line 11
    ldsflda valuetype T_array_1 _G::Checkerboard
    ldsfld int32 _G::Index
    call instance valuetype T_array_2& T_array_1::ldadr(int32)
    ldsfld int32 _G::Count
    call instance int32& T_array_2::ldadr(int32)
    ldsfld int32 _G::Index
    ldc.i4 3
    ldsfld int32 _G::Count
    mul
    add
    stobj int32
    // line 12
    ldsflda valuetype T_array_1 _G::Value
    ldsfld int32 _G::Index
    call instance valuetype T_array_2& T_array_1::ldadr(int32)
    ldsfld int32 _G::Count
    call instance int32& T_array_2::ldadr(int32)
    ldsfld int32 _G::Index
    ldc.i4 2
    ldsflda valuetype T_array_1 _G::Checkerboard
    ldsfld int32 _G::Index
    call instance valuetype T_array_2& T_array_1::ldadr(int32)
    ldsfld int32 _G::Count
    call instance int32& T_array_2::ldadr(int32)
    ldobj int32
    mul
    add
    stobj int32
    /* nop */
    ldsfld int32 _G::Count
    dup
    ldloc $tmpEndValue3
    beq L_for_end_4
    ldc.i4.1
    add
    stloc $tmpIndex5
    ldloc $tmpIndex5
    stsfld int32 _G::Count
    br L_for_loop_3
L_for_end_4:
    pop
    /* nop */
    ldsfld int32 _G::Index
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex6
    ldloc $tmpIndex6
    stsfld int32 _G::Index
    br L_for_loop_1
L_for_end_2:
    pop
    // line 16
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr " Output of checkerboard"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 17
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 18
    ldc.i4 8
    stloc $tmpEndValue7
    ldc.i4 1
    dup
    ldloc $tmpEndValue7
    bgt L_for_end_6
    stloc $tmpIndex8
    ldloc $tmpIndex8
    stsfld int32 _G::Index
L_for_loop_5:
    // line 19
    ldc.i4 8
    stloc $tmpEndValue9
    ldc.i4 1
    dup
    ldloc $tmpEndValue9
    bgt L_for_end_8
    stloc $tmpIndex10
    ldloc $tmpIndex10
    stsfld int32 _G::Count
L_for_loop_7:
    // line 20
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldc.i4 7
    ldc.i4.0
    ldsflda valuetype T_array_1 _G::Checkerboard
    ldsfld int32 _G::Index
    call instance valuetype T_array_2& T_array_1::ldadr(int32)
    ldsfld int32 _G::Count
    call instance int32& T_array_2::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    ldsfld int32 _G::Count
    dup
    ldloc $tmpEndValue9
    beq L_for_end_8
    ldc.i4.1
    add
    stloc $tmpIndex11
    ldloc $tmpIndex11
    stsfld int32 _G::Count
    br L_for_loop_7
L_for_end_8:
    pop
    // line 21
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
    ldsfld int32 _G::Index
    dup
    ldloc $tmpEndValue7
    beq L_for_end_6
    ldc.i4.1
    add
    stloc $tmpIndex12
    ldloc $tmpIndex12
    stsfld int32 _G::Index
    br L_for_loop_5
L_for_end_6:
    pop
    // line 24
    ldsflda valuetype T_array_1 _G::Value
    ldc.i4 3
    call instance valuetype T_array_2& T_array_1::ldadr(int32)
    ldc.i4 5
    call instance int32& T_array_2::ldadr(int32)
    ldc.i4 1
    neg
    stobj int32
    // line 25
    ldsflda valuetype T_array_1 _G::Value
    ldc.i4 3
    call instance valuetype T_array_2& T_array_1::ldadr(int32)
    ldc.i4 6
    call instance int32& T_array_2::ldadr(int32)
    ldc.i4 3
    stobj int32
    // line 26
    ldsflda valuetype T_array_1 _G::Value
    ldsflda valuetype T_array_1 _G::Value
    ldc.i4 3
    call instance valuetype T_array_2& T_array_1::ldadr(int32)
    ldc.i4 6
    call instance int32& T_array_2::ldadr(int32)
    ldobj int32
    call instance valuetype T_array_2& T_array_1::ldadr(int32)
    ldc.i4 7
    call instance int32& T_array_2::ldadr(int32)
    ldc.i4 2
    stobj int32
    // line 28
    ldc.i4 3
    stloc $tmpEndValue13
    ldc.i4 1
    dup
    ldloc $tmpEndValue13
    bgt L_for_end_10
    stloc $tmpIndex14
    ldloc $tmpIndex14
    stsfld int32 _G::Count
L_for_loop_9:
    // line 29
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    ldsfld int32 _G::Count
    dup
    ldloc $tmpEndValue13
    beq L_for_end_10
    ldc.i4.1
    add
    stloc $tmpIndex15
    ldloc $tmpIndex15
    stsfld int32 _G::Count
    br L_for_loop_9
L_for_end_10:
    pop
    // line 30
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "Output of value"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 31
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 32
    ldc.i4 8
    stloc $tmpEndValue16
    ldc.i4 1
    dup
    ldloc $tmpEndValue16
    bgt L_for_end_12
    stloc $tmpIndex17
    ldloc $tmpIndex17
    stsfld int32 _G::Count
L_for_loop_11:
    // line 33
    ldc.i4 8
    stloc $tmpEndValue18
    ldc.i4 1
    dup
    ldloc $tmpEndValue18
    bgt L_for_end_14
    stloc $tmpIndex19
    ldloc $tmpIndex19
    stsfld int32 _G::Index
L_for_loop_13:
    // line 34
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldc.i4 7
    ldc.i4.0
    ldsflda valuetype T_array_1 _G::Value
    ldsfld int32 _G::Count
    call instance valuetype T_array_2& T_array_1::ldadr(int32)
    ldsfld int32 _G::Index
    call instance int32& T_array_2::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    ldsfld int32 _G::Index
    dup
    ldloc $tmpEndValue18
    beq L_for_end_14
    ldc.i4.1
    add
    stloc $tmpIndex20
    ldloc $tmpIndex20
    stsfld int32 _G::Index
    br L_for_loop_13
L_for_end_14:
    pop
    // line 35
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
    ldsfld int32 _G::Count
    dup
    ldloc $tmpEndValue16
    beq L_for_end_12
    ldc.i4.1
    add
    stloc $tmpIndex21
    ldloc $tmpIndex21
    stsfld int32 _G::Count
    br L_for_loop_11
L_for_end_12:
    pop
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
