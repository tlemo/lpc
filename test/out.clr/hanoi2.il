
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

.line 0 "hanoi2.pas"

.line 12
//================================================================================
// scope: punere (level : 2)

.line 0xfeefee

// TYPE nod = record;
.class value explicit T_nod
{
    // alignment = 8
    .size 24
    
    .field [0] public int32 Inf1
    .field [4] public int32 Inf2
    .field [8] public int32 Inf3
    .field [16] public void* Urm
}

.class @punere
{
    // parameters
    .field public int32* x
    .field public int32* y
    .field public int32* z

    // local variables
    .field public void* p

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 23
//================================================================================
// scope: scoatere (level : 2)

.class @scoatere
{
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
    .field public static int32 k
    .field public static int32 l
    .field public static int32 n
    .field public static int32 N1
    .field public static int32 Niv
    .field public static int32 Ns
    .field public static void* Virf
}

.line 12

.method static
void Punere(int32& x, int32& y, int32& z)
{
    .maxstack 32

    .locals init(class @punere _F,
        int32& pinned $x,
        int32& pinned $y,
        int32& pinned $z)
    
    newobj instance void @punere::.ctor()
    stloc _F
    
    ldarg x
    stloc $x
    
    ldloc _F
    ldarg x
    stfld int32* @punere::x
    
    ldarg y
    stloc $y
    
    ldloc _F
    ldarg y
    stfld int32* @punere::y
    
    ldarg z
    stloc $z
    
    ldloc _F
    ldarg z
    stfld int32* @punere::z

L_Entry:
    .line 15
    .line 15
    ldloc _F
    ldc.i4 24
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stfld void* @punere::p
    .line 16
    ldloc _F
    ldfld void* @punere::p
    ldsfld void* _G::Virf
    ldobj valuetype T_nod
    stobj valuetype T_nod
    .line 17
    ldsfld void* _G::Virf
    ldloc _F
    ldfld void* @punere::p
    stfld void* T_nod::Urm
    .line 18
    ldsfld void* _G::Virf
    ldloc _F
    ldfld int32* @punere::x
    ldobj int32
    stfld int32 T_nod::Inf1
    .line 19
    ldsfld void* _G::Virf
    ldloc _F
    ldfld int32* @punere::y
    ldobj int32
    stfld int32 T_nod::Inf2
    .line 20
    ldsfld void* _G::Virf
    ldloc _F
    ldfld int32* @punere::z
    ldobj int32
    stfld int32 T_nod::Inf3
    /* nop */

L_Epilogue:
    ret
}

.line 23

.method static
void Scoatere()
{
    .maxstack 32

    .locals init(class @scoatere _F)
    
    newobj instance void @scoatere::.ctor()
    stloc _F

L_Entry:
    .line 25
    ldsfld void* _G::Virf
    ldfld void* T_nod::Urm
    stsfld void* _G::Virf
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
        int32 $tmpIndex3)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    ldc.i4 0
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

L_Entry:
    .line 29
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "n="
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 29
    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    dup
    ldsflda int32 _G::n
    ldc.i4 -2147483648
    ldc.i4 2147483647
    call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 29
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldsfld int32 _G::n
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 30
    ldc.i4 1
    stsfld int32 _G::N1
    .line 31
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
    .line 31
    ldsfld int32 _G::N1
    ldc.i4 2
    mul
    stsfld int32 _G::N1
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
    .line 32
    .line 32
    ldc.i4 24
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Virf
    .line 33
    ldsfld void* _G::Virf
    ldnull
    stfld void* T_nod::Urm
    .line 34
    ldc.i4 1
    stsfld int32 _G::i
    .line 34
    ldc.i4 2
    stsfld int32 _G::j
    .line 35
    ldc.i4 0
    stsfld int32 _G::Ns
    .line 35
    ldc.i4 1
    stsfld int32 _G::Niv
    .line 36
L_repeat_3:
    .line 37
    ldc.i4 6
    ldsfld int32 _G::i
    sub
    ldsfld int32 _G::j
    sub
    stsfld int32 _G::k
    .line 38
    br L_while_test_5
L_while_4:
    .line 39
    ldsfld int32 _G::Ns
    ldc.i4 1
    add
    stsfld int32 _G::Ns
    .line 40
    ldsfld int32 _G::Niv
    ldc.i4 1
    add
    stsfld int32 _G::Niv
    .line 41
    ldsflda int32 _G::i
    ldsflda int32 _G::j
    ldsflda int32 _G::Niv
    call void Punere(int32& x, int32& y, int32& z)
    .line 41
    ldsfld int32 _G::k
    stsfld int32 _G::j
    .line 41
    ldc.i4 6
    ldsfld int32 _G::i
    sub
    ldsfld int32 _G::j
    sub
    stsfld int32 _G::k
    /* nop */
L_while_test_5:
    ldsfld int32 _G::Niv
    ldsfld int32 _G::n
    ldc.i4 1
    sub
    clt
    brtrue L_while_4
    .line 43
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldsfld int32 _G::i
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldstr "-->"
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld int32 _G::k
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 44
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldsfld int32 _G::i
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldstr "-->"
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld int32 _G::j
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 45
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldsfld int32 _G::k
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldstr "-->"
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld int32 _G::j
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 46
    ldsfld int32 _G::Ns
    ldc.i4 0
    ceq
    brfalse L_if_end_6
    .line 46
    br L_1
L_if_end_6:
    .line 47
    ldsfld void* _G::Virf
    ldfld int32 T_nod::Inf1
    stsfld int32 _G::i
    .line 47
    ldsfld void* _G::Virf
    ldfld int32 T_nod::Inf2
    stsfld int32 _G::j
    .line 47
    ldsfld void* _G::Virf
    ldfld int32 T_nod::Inf3
    stsfld int32 _G::Niv
    .line 48
    ldsfld int32 _G::Ns
    ldc.i4 1
    sub
    stsfld int32 _G::Ns
    .line 49
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldsfld int32 _G::i
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldstr "-->"
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld int32 _G::j
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 50
    ldc.i4 6
    ldsfld int32 _G::i
    sub
    ldsfld int32 _G::j
    sub
    stsfld int32 _G::i
    /* nop */
    ldc.i4 0 // (false)
    brfalse L_repeat_3
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
