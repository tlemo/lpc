
#include "commonDefs.il"

.field public static string[] _ProgramArgs

.method static void .cctor()
{
    ldc.i4 2
    newarr string
    dup
    ldc.i4 0
    ldstr "input"
    stelem string
    dup
    ldc.i4 1
    ldstr "output"
    stelem string
    stsfld string[] _ProgramArgs
    ret
}

// "e.pas"

// line 17
//================================================================================
// scope: initinteger (level : 2)

// line 0xfeefee

// TYPE digitarray = array [0 .. 1007] of uint8;
.class value explicit T_digitarray
{
    // elem size = 1
    // alignment = 1
    .size 1008

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 1007)
        ldarg index
        ldc.i4 1007
        bgt badIndex
    
        ldarg.0
        ldarg index
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

.class @initinteger
{
    // parameters
    .field public int32 n
    .field public valuetype T_digitarray* x

    // local variables
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 25
//================================================================================
// scope: divide (level : 2)

.class @divide
{
    // parameters
    .field public int32 n
    .field public valuetype T_digitarray* x
    .field public int32 Xs
    .field public valuetype T_digitarray* y
    .field public int32* Ys

    // local variables
    .field public int32 c
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 41
//================================================================================
// scope: add (level : 2)

.class @add
{
    // parameters
    .field public valuetype T_digitarray* s
    .field public valuetype T_digitarray* x
    .field public int32 Xs

    // local variables
    .field public int32 c
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 71
//================================================================================
// scope: sub (level : 2)

.class @sub
{
    // parameters
    .field public valuetype T_digitarray* s
    .field public valuetype T_digitarray* x
    .field public int32 Xs

    // local variables
    .field public int32 c
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2
//================================================================================
// scope: program scope (level : 1)

// global variables
.class _G
{
    .field public static int32 i
    .field public static valuetype [lpcRuntime]LPC.File Input
    .field public static valuetype [lpcRuntime]LPC.File Output
    .field public static void* s
    .field public static void* t
    .field public static int32 Ts
    .field public static void* x
    .field public static int32 Xs
}

// line 17

.method static
void Initinteger(valuetype T_digitarray& x, int32 n)
{
    .maxstack 32

    .locals init(
        class @initinteger _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3,
        valuetype T_digitarray& pinned $x)
    
    newobj instance void @initinteger::.ctor()
    stloc _F
    
    ldloc _F
    ldarg n
    stfld int32 @initinteger::n
    
    ldarg x
    stloc $x
    
    ldloc _F
    ldarg x
    stfld valuetype T_digitarray* @initinteger::x

L_Entry:
    // line 21
    ldloc _F
    ldfld valuetype T_digitarray* @initinteger::x
    ldc.i4 0
    call instance uint8& T_digitarray::ldadr(int32)
    ldloc _F
    ldfld int32 @initinteger::n
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
    // line 22
    ldc.i4 1007
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @initinteger::i
L_for_loop_1:
    // line 22
    ldloc _F
    ldfld valuetype T_digitarray* @initinteger::x
    ldloc _F
    ldfld int32 @initinteger::i
    call instance uint8& T_digitarray::ldadr(int32)
    ldc.i4 0
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
    ldloc _F
    ldfld int32 @initinteger::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @initinteger::i
    br L_for_loop_1
L_for_end_2:
    pop
    /* nop */

L_Epilogue:
    ret
}

// line 25

.method static
void Divide(valuetype T_digitarray& x, int32 Xs, int32 n, valuetype T_digitarray& y, int32& Ys)
{
    .maxstack 32

    .locals init(
        class @divide _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3,
        valuetype T_digitarray& pinned $x,
        valuetype T_digitarray& pinned $y,
        int32& pinned $Ys)
    
    newobj instance void @divide::.ctor()
    stloc _F
    
    ldloc _F
    ldarg n
    stfld int32 @divide::n
    
    ldarg x
    stloc $x
    
    ldloc _F
    ldarg x
    stfld valuetype T_digitarray* @divide::x
    
    ldloc _F
    ldarg Xs
    stfld int32 @divide::Xs
    
    ldarg y
    stloc $y
    
    ldloc _F
    ldarg y
    stfld valuetype T_digitarray* @divide::y
    
    ldarg Ys
    stloc $Ys
    
    ldloc _F
    ldarg Ys
    stfld int32* @divide::Ys

L_Entry:
    // line 31
    ldloc _F
    ldc.i4 0
    stfld int32 @divide::c
    // line 32
    ldc.i4 1007
    stloc $tmpEndValue1
    ldloc _F
    ldfld int32 @divide::Xs
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @divide::i
L_for_loop_1:
    // line 33
    ldloc _F
    ldc.i4 10
    ldloc _F
    ldfld int32 @divide::c
    mul
    ldloc _F
    ldfld valuetype T_digitarray* @divide::x
    ldloc _F
    ldfld int32 @divide::i
    call instance uint8& T_digitarray::ldadr(int32)
    ldobj uint8
    add
    stfld int32 @divide::c
    // line 34
    ldloc _F
    ldfld valuetype T_digitarray* @divide::y
    ldloc _F
    ldfld int32 @divide::i
    call instance uint8& T_digitarray::ldadr(int32)
    ldloc _F
    ldfld int32 @divide::c
    ldloc _F
    ldfld int32 @divide::n
    div
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
    // line 35
    ldloc _F
    ldloc _F
    ldfld int32 @divide::c
    ldloc _F
    ldfld int32 @divide::n
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    stfld int32 @divide::c
    /* nop */
    ldloc _F
    ldfld int32 @divide::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @divide::i
    br L_for_loop_1
L_for_end_2:
    pop
    // line 37
    ldloc _F
    ldfld int32* @divide::Ys
    ldloc _F
    ldfld int32 @divide::Xs
    stobj int32
    // line 38
    br L_while_test_4
L_while_3:
    // line 38
    ldloc _F
    ldfld int32* @divide::Ys
    ldloc _F
    ldfld int32* @divide::Ys
    ldobj int32
    ldc.i4 1
    add
    stobj int32
L_while_test_4:
    ldloc _F
    ldfld int32* @divide::Ys
    ldobj int32
    ldc.i4 1007
    cgt
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_5
    pop
    ldloc _F
    ldfld valuetype T_digitarray* @divide::y
    ldloc _F
    ldfld int32* @divide::Ys
    ldobj int32
    call instance uint8& T_digitarray::ldadr(int32)
    ldobj uint8
    ldc.i4 0
    ceq
L_AND_shortcut_5:
    brtrue L_while_3
    /* nop */

L_Epilogue:
    ret
}

// line 41

.method static
void Add(valuetype T_digitarray& s, valuetype T_digitarray& x, int32 Xs)
{
    .maxstack 32

    .locals init(
        class @add _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3,
        valuetype T_digitarray& pinned $s,
        valuetype T_digitarray& pinned $x)
    
    newobj instance void @add::.ctor()
    stloc _F
    
    ldarg s
    stloc $s
    
    ldloc _F
    ldarg s
    stfld valuetype T_digitarray* @add::s
    
    ldarg x
    stloc $x
    
    ldloc _F
    ldarg x
    stfld valuetype T_digitarray* @add::x
    
    ldloc _F
    ldarg Xs
    stfld int32 @add::Xs

L_Entry:
    // line 46
    ldloc _F
    ldc.i4 0
    stfld int32 @add::c
    // line 47
    ldloc _F
    ldfld int32 @add::Xs
    stloc $tmpEndValue1
    ldc.i4 1007
    dup
    ldloc $tmpEndValue1
    blt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @add::i
L_for_loop_1:
    // line 48
    ldloc _F
    ldloc _F
    ldfld valuetype T_digitarray* @add::s
    ldloc _F
    ldfld int32 @add::i
    call instance uint8& T_digitarray::ldadr(int32)
    ldobj uint8
    ldloc _F
    ldfld valuetype T_digitarray* @add::x
    ldloc _F
    ldfld int32 @add::i
    call instance uint8& T_digitarray::ldadr(int32)
    ldobj uint8
    add
    ldloc _F
    ldfld int32 @add::c
    add
    stfld int32 @add::c
    // line 49
    ldloc _F
    ldfld int32 @add::c
    ldc.i4 10
    clt
    ldc.i4.0
    ceq
    brfalse L_else_3
    // line 50
    ldloc _F
    ldfld valuetype T_digitarray* @add::s
    ldloc _F
    ldfld int32 @add::i
    call instance uint8& T_digitarray::ldadr(int32)
    ldloc _F
    ldfld int32 @add::c
    ldc.i4 10
    sub
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
    // line 51
    ldloc _F
    ldc.i4 1
    stfld int32 @add::c
    /* nop */
    br L_if_end_4
L_else_3:
    // line 53
    ldloc _F
    ldfld valuetype T_digitarray* @add::s
    ldloc _F
    ldfld int32 @add::i
    call instance uint8& T_digitarray::ldadr(int32)
    ldloc _F
    ldfld int32 @add::c
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
    // line 54
    ldloc _F
    ldc.i4 0
    stfld int32 @add::c
    /* nop */
L_if_end_4:
    /* nop */
    ldloc _F
    ldfld int32 @add::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    sub
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @add::i
    br L_for_loop_1
L_for_end_2:
    pop
    // line 57
    ldloc _F
    ldloc _F
    ldfld int32 @add::Xs
    stfld int32 @add::i
    // line 58
    br L_while_test_6
L_while_5:
    // line 59
    ldloc _F
    ldloc _F
    ldfld int32 @add::i
    ldc.i4 1
    sub
    stfld int32 @add::i
    // line 60
    ldloc _F
    ldloc _F
    ldfld valuetype T_digitarray* @add::s
    ldloc _F
    ldfld int32 @add::i
    call instance uint8& T_digitarray::ldadr(int32)
    ldobj uint8
    ldloc _F
    ldfld int32 @add::c
    add
    stfld int32 @add::c
    // line 61
    ldloc _F
    ldfld int32 @add::c
    ldc.i4 10
    clt
    ldc.i4.0
    ceq
    brfalse L_else_7
    // line 62
    ldloc _F
    ldfld valuetype T_digitarray* @add::s
    ldloc _F
    ldfld int32 @add::i
    call instance uint8& T_digitarray::ldadr(int32)
    ldloc _F
    ldfld int32 @add::c
    ldc.i4 10
    sub
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
    // line 63
    ldloc _F
    ldc.i4 1
    stfld int32 @add::c
    /* nop */
    br L_if_end_8
L_else_7:
    // line 65
    ldloc _F
    ldfld valuetype T_digitarray* @add::s
    ldloc _F
    ldfld int32 @add::i
    call instance uint8& T_digitarray::ldadr(int32)
    ldloc _F
    ldfld int32 @add::c
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
    // line 66
    ldloc _F
    ldc.i4 0
    stfld int32 @add::c
    /* nop */
L_if_end_8:
    /* nop */
L_while_test_6:
    ldloc _F
    ldfld int32 @add::c
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    brtrue L_while_5
    /* nop */

L_Epilogue:
    ret
}

// line 71

.method static
void Sub(valuetype T_digitarray& s, valuetype T_digitarray& x, int32 Xs)
{
    .maxstack 32

    .locals init(
        class @sub _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3,
        valuetype T_digitarray& pinned $s,
        valuetype T_digitarray& pinned $x)
    
    newobj instance void @sub::.ctor()
    stloc _F
    
    ldarg s
    stloc $s
    
    ldloc _F
    ldarg s
    stfld valuetype T_digitarray* @sub::s
    
    ldarg x
    stloc $x
    
    ldloc _F
    ldarg x
    stfld valuetype T_digitarray* @sub::x
    
    ldloc _F
    ldarg Xs
    stfld int32 @sub::Xs

L_Entry:
    // line 76
    ldloc _F
    ldc.i4 0
    stfld int32 @sub::c
    // line 77
    ldloc _F
    ldfld int32 @sub::Xs
    stloc $tmpEndValue1
    ldc.i4 1007
    dup
    ldloc $tmpEndValue1
    blt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @sub::i
L_for_loop_1:
    // line 78
    ldloc _F
    ldloc _F
    ldfld valuetype T_digitarray* @sub::s
    ldloc _F
    ldfld int32 @sub::i
    call instance uint8& T_digitarray::ldadr(int32)
    ldobj uint8
    ldloc _F
    ldfld valuetype T_digitarray* @sub::x
    ldloc _F
    ldfld int32 @sub::i
    call instance uint8& T_digitarray::ldadr(int32)
    ldobj uint8
    sub
    ldloc _F
    ldfld int32 @sub::c
    add
    stfld int32 @sub::c
    // line 79
    ldloc _F
    ldfld int32 @sub::c
    ldc.i4 0
    clt
    brfalse L_else_3
    // line 80
    ldloc _F
    ldfld valuetype T_digitarray* @sub::s
    ldloc _F
    ldfld int32 @sub::i
    call instance uint8& T_digitarray::ldadr(int32)
    ldloc _F
    ldfld int32 @sub::c
    ldc.i4 10
    add
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
    // line 81
    ldloc _F
    ldc.i4 1
    neg
    stfld int32 @sub::c
    /* nop */
    br L_if_end_4
L_else_3:
    // line 83
    ldloc _F
    ldfld valuetype T_digitarray* @sub::s
    ldloc _F
    ldfld int32 @sub::i
    call instance uint8& T_digitarray::ldadr(int32)
    ldloc _F
    ldfld int32 @sub::c
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
    // line 84
    ldloc _F
    ldc.i4 0
    stfld int32 @sub::c
    /* nop */
L_if_end_4:
    /* nop */
    ldloc _F
    ldfld int32 @sub::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    sub
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @sub::i
    br L_for_loop_1
L_for_end_2:
    pop
    // line 87
    ldloc _F
    ldloc _F
    ldfld int32 @sub::Xs
    stfld int32 @sub::i
    // line 88
    br L_while_test_6
L_while_5:
    // line 89
    ldloc _F
    ldloc _F
    ldfld int32 @sub::i
    ldc.i4 1
    sub
    stfld int32 @sub::i
    // line 90
    ldloc _F
    ldloc _F
    ldfld valuetype T_digitarray* @sub::s
    ldloc _F
    ldfld int32 @sub::i
    call instance uint8& T_digitarray::ldadr(int32)
    ldobj uint8
    ldloc _F
    ldfld int32 @sub::c
    add
    stfld int32 @sub::c
    // line 91
    ldloc _F
    ldfld int32 @sub::c
    ldc.i4 0
    clt
    brfalse L_else_7
    // line 92
    ldloc _F
    ldfld valuetype T_digitarray* @sub::s
    ldloc _F
    ldfld int32 @sub::i
    call instance uint8& T_digitarray::ldadr(int32)
    ldloc _F
    ldfld int32 @sub::c
    ldc.i4 10
    add
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
    // line 93
    ldloc _F
    ldc.i4 1
    neg
    stfld int32 @sub::c
    /* nop */
    br L_if_end_8
L_else_7:
    // line 95
    ldloc _F
    ldfld valuetype T_digitarray* @sub::s
    ldloc _F
    ldfld int32 @sub::i
    call instance uint8& T_digitarray::ldadr(int32)
    ldloc _F
    ldfld int32 @sub::c
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
    // line 96
    ldloc _F
    ldc.i4 0
    stfld int32 @sub::c
    /* nop */
L_if_end_8:
    /* nop */
L_while_test_6:
    ldloc _F
    ldfld int32 @sub::c
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    brtrue L_while_5
    /* nop */

L_Epilogue:
    ret
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
        int32 $tmpIndex3,
        int32 $tmpEndValue4,
        int32 $tmpIndex5,
        int32 $tmpIndex6)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    ldc.i4 0
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

L_Entry:
    // line 102
    // line 102
    ldc.i4 1008
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::s
    // line 102
    // line 102
    ldc.i4 1008
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::x
    // line 103
    ldsfld void* _G::s
    ldc.i4 0
    call void Initinteger(valuetype T_digitarray& x, int32 n)
    // line 104
    ldsfld void* _G::x
    ldc.i4 1
    call void Initinteger(valuetype T_digitarray& x, int32 n)
    // line 105
    ldc.i4 0
    stsfld int32 _G::Xs
    // line 106
    ldsfld void* _G::s
    ldsfld void* _G::x
    ldsfld int32 _G::Xs
    call void Add(valuetype T_digitarray& s, valuetype T_digitarray& x, int32 Xs)
    // line 107
    ldc.i4 0
    stsfld int32 _G::i
    // line 108
L_repeat_1:
    // line 109
    ldsfld int32 _G::i
    ldc.i4 1
    add
    stsfld int32 _G::i
    // line 110
    ldsfld void* _G::x
    ldsfld int32 _G::Xs
    ldsfld int32 _G::i
    ldsfld void* _G::x
    ldsflda int32 _G::Xs
    call void Divide(valuetype T_digitarray& x, int32 Xs, int32 n, valuetype T_digitarray& y, int32& Ys)
    // line 111
    ldsfld void* _G::s
    ldsfld void* _G::x
    ldsfld int32 _G::Xs
    call void Add(valuetype T_digitarray& s, valuetype T_digitarray& x, int32 Xs)
    // line 112
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Series: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4 2
    ldc.i4 100
    ldsfld int32 _G::Xs
    mul
    conv.r8
    ldc.i4 1007 // NDIGITS 
    ldc.i4 1
    add
    conv.r8
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldc.i4 37 // '%'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
    ldsfld int32 _G::Xs
    ldc.i4 1007 // NDIGITS 
    cgt
    brfalse L_repeat_1
    // line 114
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 115
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 45
    ldc.i4.0
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    dup
    ldstr "e = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld void* _G::s
    ldc.i4 0
    call instance uint8& T_digitarray::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 46 // '.'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 116
    ldc.i4 0
    stsfld int32 _G::i
    // line 117
    ldc.i4 1000 // NPRINT 
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_3
    stloc $tmpIndex2
    ldloc $tmpIndex2
    stsfld int32 _G::i
L_for_loop_2:
    // line 118
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld void* _G::s
    ldsfld int32 _G::i
    call instance uint8& T_digitarray::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    // line 119
    ldsfld int32 _G::i
    ldc.i4 1000
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    ldc.i4 0
    ceq
    brfalse L_if_end_4
    // line 119
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_4:
    // line 120
    ldsfld int32 _G::i
    ldc.i4 100
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    ldc.i4 0
    ceq
    brfalse L_else_5
    // line 120
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_if_end_6
L_else_5:
    // line 121
    ldsfld int32 _G::i
    ldc.i4 10
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    ldc.i4 0
    ceq
    brfalse L_if_end_7
    // line 121
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_7:
L_if_end_6:
    /* nop */
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_3
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc $tmpIndex3
    stsfld int32 _G::i
    br L_for_loop_2
L_for_end_3:
    pop
    // line 123
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 124
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Final digits: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 125
    ldc.i4 1007 // NDIGITS 
    stloc $tmpEndValue4
    ldc.i4 1000 // NPRINT 
    ldc.i4 1
    add
    dup
    ldloc $tmpEndValue4
    bgt L_for_end_9
    stloc $tmpIndex5
    ldloc $tmpIndex5
    stsfld int32 _G::i
L_for_loop_8:
    // line 126
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld void* _G::s
    ldsfld int32 _G::i
    call instance uint8& T_digitarray::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    /* nop */
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue4
    beq L_for_end_9
    ldc.i4.1
    add
    stloc $tmpIndex6
    ldloc $tmpIndex6
    stsfld int32 _G::i
    br L_for_loop_8
L_for_end_9:
    pop
    // line 128
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
    leave L_Epilogue

L_Epilogue:
    ret

.try L_Entry to L_Epilogue finally
{
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::Close()

    endfinally
}

}
