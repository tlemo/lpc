
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

.line 0 "hanoi.pas"

.line 5
//================================================================================
// scope: hanoi1 (level : 2)

.line 0xfeefee

// TYPE array_1 = array [1 .. 1024] of int32;
.class value explicit T_array_1
{
    // elem size = 4
    // alignment = 4
    .size 4096

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 1024)
        ldarg index
        ldc.i4 1024
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

.line 0xfeefee

// TYPE array_2 = array [1 .. 2] of valuetype T_array_1;
.class value explicit T_array_2
{
    // elem size = 4096
    // alignment = 4
    .size 8192

    .field [0] public valuetype T_array_1 elem

    .method public valuetype T_array_1& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 2)
        ldarg index
        ldc.i4 2
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 1
        sub
        ldc.i4 4096
        mul
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

.class @hanoi1
{
    // local variables
    .field public int32 i
    .field public int32 j
    .field public int32 k
    .field public int32 K1
    .field public int32 K2
    .field public int32 K3
    .field public int32 l
    .field public int32 w

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 19
//================================================================================
// scope: hanoi2 (level : 2)

.line 0xfeefee

// TYPE array_4 = array [1 .. 3] of valuetype T_array_1;
.class value explicit T_array_4
{
    // elem size = 4096
    // alignment = 4
    .size 12288

    .field [0] public valuetype T_array_1 elem

    .method public valuetype T_array_1& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 3)
        ldarg index
        ldc.i4 3
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 1
        sub
        ldc.i4 4096
        mul
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

.class @hanoi2
{
    // local variables
    .field public int32 i
    .field public int32 j
    .field public int32 k
    .field public int32 Niv
    .field public int32 Ns

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 38
//================================================================================
// scope: hanoi3 (level : 2)

.class @hanoi3
{
    // parameters
    .field public int32 i
    .field public int32 j
    .field public int32 n

    // local variables
    .field public int32 k

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 1
//================================================================================
// scope: program scope (level : 1)

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype [lpcRuntime]LPC.File _output
    .field public static int32 i
    .field public static int32 j
    .field public static valuetype T_array_2 M
    .field public static int32 n
    .field public static int32 Nn
    .field public static valuetype T_array_4 S
}

.line 5

.method static
void Hanoi1()
{
    .maxstack 32

    .locals init(
        class @hanoi1 _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3)
    
    newobj instance void @hanoi1::.ctor()
    stloc _F

L_Entry:
    .line 8
    ldloc _F
    ldsfld int32 _G::Nn
    ldc.i4 1
    add
    stfld int32 @hanoi1::K1
    .line 8
    ldloc _F
    ldloc _F
    ldfld int32 @hanoi1::K1
    ldc.i4 2
    div
    stfld int32 @hanoi1::K2
    .line 8
    ldloc _F
    ldloc _F
    ldfld int32 @hanoi1::K2
    ldc.i4 2
    div
    stfld int32 @hanoi1::K3
    .line 8
    ldsflda valuetype T_array_2 _G::M
    ldc.i4 1
    call instance valuetype T_array_1& T_array_2::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi1::K2
    call instance int32& T_array_1::ldadr(int32)
    ldc.i4 1
    stobj int32
    .line 8
    ldsflda valuetype T_array_2 _G::M
    ldc.i4 2
    call instance valuetype T_array_1& T_array_2::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi1::K2
    call instance int32& T_array_1::ldadr(int32)
    ldc.i4 2
    stobj int32
    .line 9
    ldc.i4 2
    stloc $tmpEndValue1
    ldsfld int32 _G::n
    dup
    ldloc $tmpEndValue1
    blt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @hanoi1::w
L_for_loop_1:
    .line 10
    ldloc _F
    ldloc _F
    ldfld int32 @hanoi1::K2
    stfld int32 @hanoi1::l
    .line 11
    br L_while_test_4
L_while_3:
    .line 12
    ldloc _F
    ldsflda valuetype T_array_2 _G::M
    ldc.i4 1
    call instance valuetype T_array_1& T_array_2::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi1::l
    call instance int32& T_array_1::ldadr(int32)
    ldobj int32
    stfld int32 @hanoi1::i
    .line 12
    ldloc _F
    ldsflda valuetype T_array_2 _G::M
    ldc.i4 2
    call instance valuetype T_array_1& T_array_2::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi1::l
    call instance int32& T_array_1::ldadr(int32)
    ldobj int32
    stfld int32 @hanoi1::j
    .line 12
    ldloc _F
    ldc.i4 6
    ldloc _F
    ldfld int32 @hanoi1::i
    sub
    ldloc _F
    ldfld int32 @hanoi1::j
    sub
    stfld int32 @hanoi1::k
    .line 13
    ldsflda valuetype T_array_2 _G::M
    ldc.i4 1
    call instance valuetype T_array_1& T_array_2::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi1::l
    ldloc _F
    ldfld int32 @hanoi1::K3
    sub
    call instance int32& T_array_1::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi1::i
    stobj int32
    .line 13
    ldsflda valuetype T_array_2 _G::M
    ldc.i4 2
    call instance valuetype T_array_1& T_array_2::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi1::l
    ldloc _F
    ldfld int32 @hanoi1::K3
    sub
    call instance int32& T_array_1::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi1::k
    stobj int32
    .line 14
    ldsflda valuetype T_array_2 _G::M
    ldc.i4 1
    call instance valuetype T_array_1& T_array_2::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi1::l
    ldloc _F
    ldfld int32 @hanoi1::K3
    add
    call instance int32& T_array_1::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi1::k
    stobj int32
    .line 14
    ldsflda valuetype T_array_2 _G::M
    ldc.i4 2
    call instance valuetype T_array_1& T_array_2::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi1::l
    ldloc _F
    ldfld int32 @hanoi1::K3
    add
    call instance int32& T_array_1::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi1::j
    stobj int32
    .line 15
    ldloc _F
    ldloc _F
    ldfld int32 @hanoi1::l
    ldloc _F
    ldfld int32 @hanoi1::K1
    add
    stfld int32 @hanoi1::l
    /* nop */
L_while_test_4:
    ldloc _F
    ldfld int32 @hanoi1::l
    ldsfld int32 _G::Nn
    cgt
    ldc.i4.0
    ceq
    brtrue L_while_3
    .line 16
    ldloc _F
    ldloc _F
    ldfld int32 @hanoi1::K2
    stfld int32 @hanoi1::K1
    .line 16
    ldloc _F
    ldloc _F
    ldfld int32 @hanoi1::K3
    stfld int32 @hanoi1::K2
    .line 16
    ldloc _F
    ldloc _F
    ldfld int32 @hanoi1::K3
    ldc.i4 2
    div
    stfld int32 @hanoi1::K3
    /* nop */
    ldloc _F
    ldfld int32 @hanoi1::w
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    sub
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @hanoi1::w
    br L_for_loop_1
L_for_end_2:
    pop
    /* nop */

L_Epilogue:
    ret
}

.line 19

.method static
void Hanoi2()
{
    .maxstack 32

    .locals init(class @hanoi2 _F)
    
    newobj instance void @hanoi2::.ctor()
    stloc _F

L_Entry:
    .line 23
    ldloc _F
    ldc.i4 1
    stfld int32 @hanoi2::i
    .line 23
    ldloc _F
    ldc.i4 2
    stfld int32 @hanoi2::j
    .line 23
    ldloc _F
    ldc.i4 0
    stfld int32 @hanoi2::Ns
    .line 23
    ldloc _F
    ldc.i4 1
    stfld int32 @hanoi2::Niv
    .line 24
L_repeat_1:
    .line 25
    ldloc _F
    ldc.i4 6
    ldloc _F
    ldfld int32 @hanoi2::i
    sub
    ldloc _F
    ldfld int32 @hanoi2::j
    sub
    stfld int32 @hanoi2::k
    .line 26
    br L_while_test_3
L_while_2:
    .line 27
    ldloc _F
    ldloc _F
    ldfld int32 @hanoi2::Ns
    ldc.i4 1
    add
    stfld int32 @hanoi2::Ns
    .line 27
    ldsflda valuetype T_array_4 _G::S
    ldc.i4 1
    call instance valuetype T_array_1& T_array_4::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi2::Ns
    call instance int32& T_array_1::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi2::i
    stobj int32
    .line 27
    ldsflda valuetype T_array_4 _G::S
    ldc.i4 2
    call instance valuetype T_array_1& T_array_4::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi2::Ns
    call instance int32& T_array_1::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi2::j
    stobj int32
    .line 27
    ldloc _F
    ldloc _F
    ldfld int32 @hanoi2::k
    stfld int32 @hanoi2::j
    .line 28
    ldloc _F
    ldc.i4 6
    ldloc _F
    ldfld int32 @hanoi2::i
    sub
    ldloc _F
    ldfld int32 @hanoi2::j
    sub
    stfld int32 @hanoi2::k
    .line 28
    ldloc _F
    ldloc _F
    ldfld int32 @hanoi2::Niv
    ldc.i4 1
    add
    stfld int32 @hanoi2::Niv
    .line 28
    ldsflda valuetype T_array_4 _G::S
    ldc.i4 3
    call instance valuetype T_array_1& T_array_4::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi2::Ns
    call instance int32& T_array_1::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi2::Niv
    stobj int32
    /* nop */
L_while_test_3:
    ldloc _F
    ldfld int32 @hanoi2::Niv
    ldsfld int32 _G::n
    ldc.i4 1
    sub
    clt
    brtrue L_while_2
    .line 30
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldc.i4 40 // '('
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldloc _F
    ldfld int32 @hanoi2::i
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 44 // ','
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldloc _F
    ldfld int32 @hanoi2::k
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 41 // ')'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 40 // '('
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldloc _F
    ldfld int32 @hanoi2::i
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 44 // ','
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldloc _F
    ldfld int32 @hanoi2::j
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 41 // ')'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 40 // '('
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldloc _F
    ldfld int32 @hanoi2::k
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 44 // ','
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldloc _F
    ldfld int32 @hanoi2::j
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 41 // ')'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 31
    ldloc _F
    ldfld int32 @hanoi2::Ns
    ldc.i4 0
    ceq
    brfalse L_if_end_4
    .line 31
    br L_1
L_if_end_4:
    .line 32
    ldloc _F
    ldsflda valuetype T_array_4 _G::S
    ldc.i4 1
    call instance valuetype T_array_1& T_array_4::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi2::Ns
    call instance int32& T_array_1::ldadr(int32)
    ldobj int32
    stfld int32 @hanoi2::i
    .line 32
    ldloc _F
    ldsflda valuetype T_array_4 _G::S
    ldc.i4 2
    call instance valuetype T_array_1& T_array_4::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi2::Ns
    call instance int32& T_array_1::ldadr(int32)
    ldobj int32
    stfld int32 @hanoi2::j
    .line 32
    ldloc _F
    ldsflda valuetype T_array_4 _G::S
    ldc.i4 3
    call instance valuetype T_array_1& T_array_4::ldadr(int32)
    ldloc _F
    ldfld int32 @hanoi2::Ns
    call instance int32& T_array_1::ldadr(int32)
    ldobj int32
    stfld int32 @hanoi2::Niv
    .line 32
    ldloc _F
    ldloc _F
    ldfld int32 @hanoi2::Ns
    ldc.i4 1
    sub
    stfld int32 @hanoi2::Ns
    .line 33
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldc.i4 40 // '('
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldloc _F
    ldfld int32 @hanoi2::i
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 44 // ','
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldloc _F
    ldfld int32 @hanoi2::j
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 41 // ')'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 34
    ldloc _F
    ldc.i4 6
    ldloc _F
    ldfld int32 @hanoi2::i
    sub
    ldloc _F
    ldfld int32 @hanoi2::j
    sub
    stfld int32 @hanoi2::i
    /* nop */
    ldc.i4 0 // (false)
    brfalse L_repeat_1
L_1:
    /* nop */

L_Epilogue:
    ret
}

.line 38

.method static
void Hanoi3(int32 n, int32 i, int32 j)
{
    .maxstack 32

    .locals init(class @hanoi3 _F)
    
    newobj instance void @hanoi3::.ctor()
    stloc _F
    
    ldloc _F
    ldarg i
    stfld int32 @hanoi3::i
    
    ldloc _F
    ldarg j
    stfld int32 @hanoi3::j
    
    ldloc _F
    ldarg n
    stfld int32 @hanoi3::n

L_Entry:
    .line 41
    ldloc _F
    ldfld int32 @hanoi3::n
    ldc.i4 1
    ceq
    brfalse L_else_1
    .line 41
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldc.i4 40 // '('
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldloc _F
    ldfld int32 @hanoi3::i
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 44 // ','
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldloc _F
    ldfld int32 @hanoi3::j
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 41 // ')'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_2
L_else_1:
    .line 42
    ldloc _F
    ldc.i4 6
    ldloc _F
    ldfld int32 @hanoi3::i
    sub
    ldloc _F
    ldfld int32 @hanoi3::j
    sub
    stfld int32 @hanoi3::k
    .line 43
    ldloc _F
    ldfld int32 @hanoi3::n
    ldc.i4 1
    sub
    ldloc _F
    ldfld int32 @hanoi3::i
    ldloc _F
    ldfld int32 @hanoi3::k
    call void Hanoi3(int32 n, int32 i, int32 j)
    .line 43
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldc.i4 40 // '('
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldloc _F
    ldfld int32 @hanoi3::i
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 44 // ','
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldloc _F
    ldfld int32 @hanoi3::j
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 41 // ')'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 43
    ldloc _F
    ldfld int32 @hanoi3::n
    ldc.i4 1
    sub
    ldloc _F
    ldfld int32 @hanoi3::k
    ldloc _F
    ldfld int32 @hanoi3::j
    call void Hanoi3(int32 n, int32 i, int32 j)
    /* nop */
L_if_end_2:
    /* nop */

L_Epilogue:
    ret
}

.line 0
//================================================================================
// scope: global scope (level : 0)

.line 1

.method static
void _Program()
{
    .maxstack 32

    .locals init(
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3,
        int32 $tmpSwitchValue4,
        int32 $tmpEndValue5,
        int32 $tmpIndex6,
        int32 $tmpEndValue7,
        int32 $tmpIndex8,
        int32 $tmpIndex9,
        int32 $tmpIndex10)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    ldc.i4 0
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

L_Entry:
    .line 47
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "HANOI"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 47
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "n="
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 47
    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    dup
    ldsflda int32 _G::n
    ldc.i4 -2147483648
    ldc.i4 2147483647
    call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 47
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldsfld int32 _G::n
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 48
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "1.HANOI1(umplerea matricii) 2.HANOI2(construire arbore complet)"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 49
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "3.HANOI3(recursiv)  4.EXIT"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 50
    ldc.i4 1
    stsfld int32 _G::Nn
    .line 50
    ldsfld int32 _G::n
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc $tmpIndex2
    stsfld int32 _G::i
L_for_loop_1:
    .line 50
    ldc.i4 2
    ldsfld int32 _G::Nn
    mul
    stsfld int32 _G::Nn
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
    .line 50
    ldsfld int32 _G::Nn
    ldc.i4 1
    sub
    stsfld int32 _G::Nn
    .line 51
L_repeat_3:
    .line 52
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "optiunea dvs:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 52
    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    dup
    ldsflda int32 _G::i
    ldc.i4 -2147483648
    ldc.i4 2147483647
    call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 53
    ldsfld int32 _G::i
    stloc $tmpSwitchValue4
    ldloc $tmpSwitchValue4
    ldc.i4 1
    bne.un L_check_case_5
    .line 54
    call void Hanoi1()
    .line 55
    ldc.i4 2
    stloc $tmpEndValue5
    ldc.i4 1
    dup
    ldloc $tmpEndValue5
    bgt L_for_end_7
    stloc $tmpIndex6
    ldloc $tmpIndex6
    stsfld int32 _G::i
L_for_loop_6:
    .line 56
    ldsfld int32 _G::Nn
    stloc $tmpEndValue7
    ldc.i4 1
    dup
    ldloc $tmpEndValue7
    bgt L_for_end_9
    stloc $tmpIndex8
    ldloc $tmpIndex8
    stsfld int32 _G::j
L_for_loop_8:
    .line 56
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldc.i4 4
    ldc.i4.0
    ldsflda valuetype T_array_2 _G::M
    ldsfld int32 _G::i
    call instance valuetype T_array_1& T_array_2::ldadr(int32)
    ldsfld int32 _G::j
    call instance int32& T_array_1::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    ldsfld int32 _G::j
    dup
    ldloc $tmpEndValue7
    beq L_for_end_9
    ldc.i4.1
    add
    stloc $tmpIndex9
    ldloc $tmpIndex9
    stsfld int32 _G::j
    br L_for_loop_8
L_for_end_9:
    pop
    .line 57
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue5
    beq L_for_end_7
    ldc.i4.1
    add
    stloc $tmpIndex10
    ldloc $tmpIndex10
    stsfld int32 _G::i
    br L_for_loop_6
L_for_end_7:
    pop
    /* nop */
    br L_case_end_4
L_check_case_5:
    ldloc $tmpSwitchValue4
    ldc.i4 2
    bne.un L_check_case_10
    .line 58
    call void Hanoi2()
    .line 58
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
    br L_case_end_4
L_check_case_10:
    ldloc $tmpSwitchValue4
    ldc.i4 3
    bne.un L_check_case_11
    .line 59
    ldsfld int32 _G::n
    ldc.i4 1
    ldc.i4 2
    call void Hanoi3(int32 n, int32 i, int32 j)
    .line 59
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_4
L_check_case_11:
    ldloc $tmpSwitchValue4
    ldc.i4 4
    bne.un L_case_end_4
    .line 60
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "BYE-BYE!"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_case_end_4:
    /* nop */
    ldsfld int32 _G::i
    ldc.i4 4
    ceq
    brfalse L_repeat_3
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
