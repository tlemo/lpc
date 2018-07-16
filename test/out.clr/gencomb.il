
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

// "gencomb.pas"

// line 7
//================================================================================
// scope: gen (level : 2)

// line 0xfeefee

// TYPE vec = array [1 .. 50] of int32;
.class value explicit T_vec
{
    // elem size = 4
    // alignment = 4
    .size 200

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 50)
        ldarg index
        ldc.i4 50
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

.class @gen
{
    // parameters
    .field public valuetype T_vec* v

    // local variables
    .field public uint8 i
    .field public uint8 j

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 23
//================================================================================
// scope: prel (level : 2)

.class @prel
{
    // parameters
    .field public valuetype T_vec v

    // local variables
    .field public int32 i

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
    .field public static valuetype T_vec a
    .field public static int32 i
    .field public static int32 Ig
    .field public static int32 k
    .field public static int32 n
    .field public static valuetype T_vec v
}

// line 7

.method static
void Gen(valuetype T_vec& v)
{
    .maxstack 32

    .locals init(
        class @gen _F,
        uint8 $tmpEndValue1,
        uint8 $tmpIndex2,
        uint8 $tmpIndex3,
        uint8 $tmpEndValue4,
        uint8 $tmpIndex5,
        uint8 $tmpEndValue6,
        uint8 $tmpIndex7,
        uint8 $tmpIndex8,
        uint8 $tmpIndex9,
        valuetype T_vec& pinned $v)
    
    newobj instance void @gen::.ctor()
    stloc _F
    
    ldarg v
    stloc $v
    
    ldloc _F
    ldarg v
    stfld valuetype T_vec* @gen::v

L_Entry:
    // line 11
    ldsfld int32 _G::Ig
    ldc.i4 0
    ceq
    brfalse L_if_end_1
    // line 12
    ldsfld int32 _G::n
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_3
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld uint8 @gen::i
L_for_loop_2:
    // line 12
    ldloc _F
    ldfld valuetype T_vec* @gen::v
    ldloc _F
    ldfld uint8 @gen::i
    call instance int32& T_vec::ldadr(int32)
    ldloc _F
    ldfld uint8 @gen::i
    stobj int32
    ldloc _F
    ldfld uint8 @gen::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_3
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld uint8 @gen::i
    br L_for_loop_2
L_for_end_3:
    pop
    // line 13
    ldc.i4 1
    stsfld int32 _G::Ig
    // line 13
    br L_10
    /* nop */
L_if_end_1:
    // line 15
    ldc.i4 1
    stloc $tmpEndValue4
    ldsfld int32 _G::k
    dup
    ldloc $tmpEndValue4
    blt L_for_end_5
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex5
    ldloc _F
    ldloc $tmpIndex5
    stfld uint8 @gen::i
L_for_loop_4:
    // line 16
    ldloc _F
    ldfld valuetype T_vec* @gen::v
    ldloc _F
    ldfld uint8 @gen::i
    call instance int32& T_vec::ldadr(int32)
    ldobj int32
    ldsfld int32 _G::n
    ldloc _F
    ldfld uint8 @gen::i
    add
    ldsfld int32 _G::k
    sub
    clt
    brfalse L_if_end_6
    // line 16
    ldloc _F
    ldfld valuetype T_vec* @gen::v
    ldloc _F
    ldfld uint8 @gen::i
    call instance int32& T_vec::ldadr(int32)
    ldloc _F
    ldfld valuetype T_vec* @gen::v
    ldloc _F
    ldfld uint8 @gen::i
    call instance int32& T_vec::ldadr(int32)
    ldobj int32
    ldc.i4 1
    add
    stobj int32
    // line 17
    ldsfld int32 _G::k
    stloc $tmpEndValue6
    ldloc _F
    ldfld uint8 @gen::i
    ldc.i4 1
    add
    dup
    ldloc $tmpEndValue6
    bgt L_for_end_8
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex7
    ldloc _F
    ldloc $tmpIndex7
    stfld uint8 @gen::j
L_for_loop_7:
    // line 17
    ldloc _F
    ldfld valuetype T_vec* @gen::v
    ldloc _F
    ldfld uint8 @gen::j
    call instance int32& T_vec::ldadr(int32)
    ldloc _F
    ldfld valuetype T_vec* @gen::v
    ldloc _F
    ldfld uint8 @gen::j
    ldc.i4 1
    sub
    call instance int32& T_vec::ldadr(int32)
    ldobj int32
    ldc.i4 1
    add
    stobj int32
    ldloc _F
    ldfld uint8 @gen::j
    dup
    ldloc $tmpEndValue6
    beq L_for_end_8
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex8
    ldloc _F
    ldloc $tmpIndex8
    stfld uint8 @gen::j
    br L_for_loop_7
L_for_end_8:
    pop
    // line 18
    br L_10
    /* nop */
L_if_end_6:
    ldloc _F
    ldfld uint8 @gen::i
    dup
    ldloc $tmpEndValue4
    beq L_for_end_5
    ldc.i4.1
    sub
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex9
    ldloc _F
    ldloc $tmpIndex9
    stfld uint8 @gen::i
    br L_for_loop_4
L_for_end_5:
    pop
    // line 20
    ldc.i4 0
    stsfld int32 _G::Ig
L_10:
    /* nop */

L_Epilogue:
    ret
}

// line 23

.method static
void Prel(valuetype T_vec v)
{
    .maxstack 32

    .locals init(
        class @prel _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3)
    
    newobj instance void @prel::.ctor()
    stloc _F
    
    ldloc _F
    ldarg v
    stfld valuetype T_vec @prel::v

L_Entry:
    // line 26
    ldsfld int32 _G::k
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @prel::i
L_for_loop_1:
    // line 26
    ldloc _F
    ldflda valuetype T_vec @prel::v
    ldloc _F
    ldfld int32 @prel::i
    call instance int32& T_vec::ldadr(int32)
    ldobj int32
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_3
    // line 26
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldloc _F
    ldflda valuetype T_vec @prel::v
    ldloc _F
    ldfld int32 @prel::i
    call instance int32& T_vec::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldstr "  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_3:
    ldloc _F
    ldfld int32 @prel::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @prel::i
    br L_for_loop_1
L_for_end_2:
    pop
    // line 27
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */

L_Epilogue:
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

    .locals init()

    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    ldc.i4 0
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

L_Entry:
    // line 31
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "generarea combinarilor de n luate cŒte k"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 32
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "n="
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 32
    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    dup
    ldsflda int32 _G::n
    ldc.i4 -2147483648
    ldc.i4 2147483647
    call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    // line 32
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldsfld int32 _G::n
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 33
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "k="
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 33
    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    dup
    ldsflda int32 _G::k
    ldc.i4 -2147483648
    ldc.i4 2147483647
    call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    // line 33
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldsfld int32 _G::k
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 34
    ldc.i4 0
    stsfld int32 _G::Ig
    // line 35
L_repeat_1:
    // line 36
    ldsflda valuetype T_vec _G::v
    call void Gen(valuetype T_vec& v)
    // line 37
    ldsfld int32 _G::Ig
    ldc.i4 0
    ceq
    brfalse L_if_end_2
    // line 37
    br L_1
L_if_end_2:
    // line 38
    ldsfld valuetype T_vec _G::v
    call void Prel(valuetype T_vec v)
    /* nop */
    ldsfld int32 _G::Ig
    ldc.i4 0
    ceq
    brfalse L_repeat_1
L_1:
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
