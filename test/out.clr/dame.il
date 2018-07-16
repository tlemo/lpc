
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

// "dame.pas"

// line 8
//================================================================================
// scope: f (level : 2)

// line 0xfeefee

// TYPE vec = array [1 .. 8] of uint8;
.class value explicit T_vec
{
    // elem size = 1
    // alignment = 1
    .size 8

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
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
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

.class @f
{
    // parameters
    .field public int32 i
    .field public valuetype T_vec x

    // local variables
    .field public bool _fnvalue
    .field public int32 j

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1
//================================================================================
// scope: program scope (level : 1)

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype [lpcRuntime]LPC.File _output
    .field public static int32 i
    .field public static int32 k
    .field public static valuetype T_vec x
}

// line 8

.method static
bool f(valuetype T_vec x, int32 i)
{
    .maxstack 32

    .locals init(
        class @f _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3)
    
    newobj instance void @f::.ctor()
    stloc _F
    
    ldloc _F
    ldarg i
    stfld int32 @f::i
    
    ldloc _F
    ldarg x
    stfld valuetype T_vec @f::x

L_Entry:
    // line 12
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @f::_fnvalue
    // line 13
    ldloc _F
    ldfld int32 @f::i
    ldc.i4 1
    sub
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @f::j
L_for_loop_1:
    // line 13
    ldloc _F
    ldflda valuetype T_vec @f::x
    ldloc _F
    ldfld int32 @f::i
    call instance uint8& T_vec::ldadr(int32)
    ldobj uint8
    ldloc _F
    ldflda valuetype T_vec @f::x
    ldloc _F
    ldfld int32 @f::j
    call instance uint8& T_vec::ldadr(int32)
    ldobj uint8
    ceq
    brfalse L_else_3
    // line 13
    br L_10
    br L_if_end_4
L_else_3:
    // line 14
    ldloc _F
    ldfld int32 @f::i
    ldloc _F
    ldfld int32 @f::j
    sub
    ldloc _F
    ldflda valuetype T_vec @f::x
    ldloc _F
    ldfld int32 @f::i
    call instance uint8& T_vec::ldadr(int32)
    ldobj uint8
    ldloc _F
    ldflda valuetype T_vec @f::x
    ldloc _F
    ldfld int32 @f::j
    call instance uint8& T_vec::ldadr(int32)
    ldobj uint8
    sub
    dup
    ldc.i4 0
    bge L_abs_question_5
    neg
L_abs_question_5:
    ceq
    brfalse L_if_end_6
    // line 14
    br L_10
L_if_end_6:
L_if_end_4:
    ldloc _F
    ldfld int32 @f::j
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @f::j
    br L_for_loop_1
L_for_end_2:
    pop
    // line 15
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @f::_fnvalue
L_10:
    /* nop */

L_Epilogue:
    ldloc _F
    ldfld bool @f::_fnvalue
    ret
}

// line 0
//================================================================================
// scope: global scope (level : 0)

// line 1

.method static
void _Program()
{
    .maxstack 32

    .locals init(
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3,
        int32 $tmpEndValue4,
        int32 $tmpIndex5,
        int32 $tmpIndex6)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    ldc.i4 0
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

L_Entry:
    // line 19
    ldc.i4 8
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc $tmpIndex2
    stsfld int32 _G::i
L_for_loop_1:
    // line 19
    ldsflda valuetype T_vec _G::x
    ldsfld int32 _G::i
    call instance uint8& T_vec::ldadr(int32)
    ldc.i4 0
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc $tmpIndex3
    stsfld int32 _G::i
    br L_for_loop_1
L_for_end_2:
    pop
    // line 20
    ldc.i4 1
    stsfld int32 _G::i
    // line 21
    br L_while_test_4
L_while_3:
    // line 22
    ldc.i4 0
    stsfld int32 _G::k
    // line 23
    br L_while_test_6
L_while_5:
    // line 24
    ldsflda valuetype T_vec _G::x
    ldsfld int32 _G::i
    call instance uint8& T_vec::ldadr(int32)
    ldsflda valuetype T_vec _G::x
    ldsfld int32 _G::i
    call instance uint8& T_vec::ldadr(int32)
    ldobj uint8
    ldc.i4 1
    add
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
    // line 25
    ldsfld valuetype T_vec _G::x
    ldsfld int32 _G::i
    call bool f(valuetype T_vec x, int32 i)
    brfalse L_if_end_7
    // line 25
    ldc.i4 1
    stsfld int32 _G::k
    // line 25
    br L_1
    /* nop */
L_if_end_7:
    /* nop */
L_while_test_6:
    ldsflda valuetype T_vec _G::x
    ldsfld int32 _G::i
    call instance uint8& T_vec::ldadr(int32)
    ldobj uint8
    ldc.i4 8
    clt
    brtrue L_while_5
    // line 27
L_1:
    ldsfld int32 _G::k
    ldc.i4 1
    ceq
    brfalse L_else_8
    // line 27
    ldsfld int32 _G::i
    ldc.i4 8
    ceq
    brfalse L_else_10
    // line 28
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr " solutie : "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 29
    ldc.i4 8
    stloc $tmpEndValue4
    ldc.i4 1
    dup
    ldloc $tmpEndValue4
    bgt L_for_end_13
    stloc $tmpIndex5
    ldloc $tmpIndex5
    stsfld int32 _G::i
L_for_loop_12:
    // line 29
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldsflda valuetype T_vec _G::x
    ldsfld int32 _G::i
    call instance uint8& T_vec::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldstr "  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue4
    beq L_for_end_13
    ldc.i4.1
    add
    stloc $tmpIndex6
    ldloc $tmpIndex6
    stsfld int32 _G::i
    br L_for_loop_12
L_for_end_13:
    pop
    // line 31
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_if_end_11
L_else_10:
    // line 33
    ldsfld int32 _G::i
    ldc.i4 1
    add
    stsfld int32 _G::i
    // line 33
    ldsflda valuetype T_vec _G::x
    ldsfld int32 _G::i
    call instance uint8& T_vec::ldadr(int32)
    ldc.i4 0
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
    /* nop */
L_if_end_11:
    br L_if_end_9
L_else_8:
    // line 34
    ldsfld int32 _G::i
    ldc.i4 1
    sub
    stsfld int32 _G::i
L_if_end_9:
    /* nop */
L_while_test_4:
    ldsfld int32 _G::i
    ldc.i4 0
    cgt
    brtrue L_while_3
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
