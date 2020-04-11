
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

.line 0 "varParameters.pas"

.line 20
//================================================================================
// scope: printA (level : 2)

.line 0xfeefee

// TYPE A = array [0 .. 9] of int32;
.class value explicit T_A
{
    // elem size = 4
    // alignment = 4
    .size 40

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 9)
        ldarg index
        ldc.i4 9
        bgt badIndex
    
        ldarg.0
        ldarg index
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

.class @printA
{
    // parameters
    .field public valuetype T_A Arg

    // local variables
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 28
//================================================================================
// scope: printS (level : 2)

.line 0xfeefee

// TYPE S = set of 1 .. 10
.class value explicit T_S
{
    .field [0] public uint32 bits0

    .method public void addValue(int32 val)
    {
        // check(value >= 1)
        ldarg val
        ldc.i4 1
        blt badValue
    
        // check(value <= 10)
        ldarg val
        ldc.i4 10
        bgt badValue
    
        ldarg.0
        ldarg val
        ldc.i4.8
        div
        add
        dup
        ldind.u1
        ldc.i4.1
        ldarg val
        ldc.i4.8
        rem.un
        shl
        or
        stind.i1
        ret
    
    badValue:
        ldstr "invalid set literal value"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }

    .method public void addRange(int32 start, int32 end)
    {
        .locals init (int32 i)
    
        // check(start <= end)
        ldarg start
        ldarg end
        bgt badRange
    
        // for(i = start; i <= end; ++i) addValue(i)
        ldarg start
        stloc i
    loop:
        ldarg.0
        ldloc i
        call instance void T_S::addValue(int32)
        ldloc i
        ldc.i4.1
        add
        dup
        stloc i
        ldarg end
        ble loop
        ret
    
    badRange:
        ldstr "invalid set literal range"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }

    .method public void clear()
    {
        ldarg.0
        ldc.i4.0
        ldc.i4 4
        initblk
        ret
    
    }
}

.class @printS
{
    // parameters
    .field public valuetype T_S Arg

    // local variables
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 39
//================================================================================
// scope: printR (level : 2)

.line 0xfeefee

// TYPE R = record;
.class value explicit T_R
{
    // alignment = 8
    .size 24
    
    .field [0] public int32 a
    .field [4] public int32 b
    .field [8] public float64 c
    .field [16] public float64 d
}

.class @printR
{
    // parameters
    .field public valuetype T_R Arg

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 48
//================================================================================
// scope: test (level : 2)

.line 0xfeefee

// TYPE set_1 = set of 0 .. 255
.class value explicit T_set_1
{
    .field [0] public uint32 bits0
    .field [4] public uint32 bits1
    .field [8] public uint32 bits2
    .field [12] public uint32 bits3
    .field [16] public uint32 bits4
    .field [20] public uint32 bits5
    .field [24] public uint32 bits6
    .field [28] public uint32 bits7

    .method public void addValue(int32 val)
    {
        // check(value >= 0)
        ldarg val
        ldc.i4 0
        blt badValue
    
        // check(value <= 255)
        ldarg val
        ldc.i4 255
        bgt badValue
    
        ldarg.0
        ldarg val
        ldc.i4.8
        div
        add
        dup
        ldind.u1
        ldc.i4.1
        ldarg val
        ldc.i4.8
        rem.un
        shl
        or
        stind.i1
        ret
    
    badValue:
        ldstr "invalid set literal value"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }

    .method public void addRange(int32 start, int32 end)
    {
        .locals init (int32 i)
    
        // check(start <= end)
        ldarg start
        ldarg end
        bgt badRange
    
        // for(i = start; i <= end; ++i) addValue(i)
        ldarg start
        stloc i
    loop:
        ldarg.0
        ldloc i
        call instance void T_set_1::addValue(int32)
        ldloc i
        ldc.i4.1
        add
        dup
        stloc i
        ldarg end
        ble loop
        ret
    
    badRange:
        ldstr "invalid set literal range"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }

    .method public void clear()
    {
        ldarg.0
        ldc.i4.0
        ldc.i4 32
        initblk
        ret
    
    }
}

.class @test
{
    // parameters
    .field public valuetype T_A* a
    .field public int32* i
    .field public valuetype T_R* r
    .field public valuetype T_S* s

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 2
//================================================================================
// scope: program scope (level : 1)

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype [lpcRuntime]LPC.File _output
    .field public static int32 i
    .field public static valuetype T_A VA
    .field public static valuetype T_R VR
    .field public static valuetype T_S VS
}

.line 20

.method static
void PrintA(valuetype T_A Arg)
{
    .maxstack 32

    .locals init(
        class @printA _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3)
    
    newobj instance void @printA::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Arg
    stfld valuetype T_A @printA::Arg

L_Entry:
    .line 23
    ldc.i4 9
    stloc $tmpEndValue1
    ldc.i4 0
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @printA::i
L_for_loop_1:
    .line 24
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "a["
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldloc _F
    ldfld int32 @printA::i
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldstr "] = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldloc _F
    ldflda valuetype T_A @printA::Arg
    ldloc _F
    ldfld int32 @printA::i
    call instance int32& T_A::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    ldloc _F
    ldfld int32 @printA::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @printA::i
    br L_for_loop_1
L_for_end_2:
    pop
    .line 25
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */

L_Epilogue:
    ret
}

.line 28

.method static
void PrintS(valuetype T_S Arg)
{
    .maxstack 32

    .locals init(
        class @printS _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3)
    
    newobj instance void @printS::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Arg
    stfld valuetype T_S @printS::Arg

L_Entry:
    .line 31
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "s = [ "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 32
    ldc.i4 10
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @printS::i
L_for_loop_1:
    .line 33
    ldloc _F
    ldfld valuetype T_S @printS::Arg
    ldloc _F
    ldfld int32 @printS::i
    call bool _SetContains(valuetype T_S s, int32 val)
    brfalse L_if_end_3
    .line 34
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldloc _F
    ldfld int32 @printS::i
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_3:
    ldloc _F
    ldfld int32 @printS::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @printS::i
    br L_for_loop_1
L_for_end_2:
    pop
    .line 35
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldc.i4 93 // ']'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 36
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */

L_Epilogue:
    ret
}

.line 39

.method static
void PrintR(valuetype T_R Arg)
{
    .maxstack 32

    .locals init(class @printR _F)
    
    newobj instance void @printR::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Arg
    stfld valuetype T_R @printR::Arg

L_Entry:
    .line 41
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "r.a = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldloc _F
    ldflda valuetype T_R @printR::Arg
    ldfld int32 T_R::a
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 42
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "r.b = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldloc _F
    ldflda valuetype T_R @printR::Arg
    ldfld int32 T_R::b
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 43
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "r.c = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldloc _F
    ldflda valuetype T_R @printR::Arg
    ldfld float64 T_R::c
    call instance void [lpcRuntime]LPC.File::Write(float64)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 44
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "r.d = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldloc _F
    ldflda valuetype T_R @printR::Arg
    ldfld float64 T_R::d
    call instance void [lpcRuntime]LPC.File::Write(float64)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 45
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */

L_Epilogue:
    ret
}

.line 48

.method static
void Test(valuetype T_A& a, valuetype T_S& s, valuetype T_R& r, int32& i)
{
    .maxstack 32

    .locals init(
        class @test _F,
        valuetype T_set_1 $tmpSetLiteral1,
        valuetype T_A& pinned $a,
        int32& pinned $i,
        valuetype T_R& pinned $r,
        valuetype T_S& pinned $s)
    
    newobj instance void @test::.ctor()
    stloc _F
    
    ldarg a
    stloc $a
    
    ldloc _F
    ldarg a
    stfld valuetype T_A* @test::a
    
    ldarg i
    stloc $i
    
    ldloc _F
    ldarg i
    stfld int32* @test::i
    
    ldarg r
    stloc $r
    
    ldloc _F
    ldarg r
    stfld valuetype T_R* @test::r
    
    ldarg s
    stloc $s
    
    ldloc _F
    ldarg s
    stfld valuetype T_S* @test::s


L_Entry:
    .line 50
    ldloc _F
    ldfld valuetype T_A* @test::a
    ldobj valuetype T_A
    call void PrintA(valuetype T_A Arg)
    .line 51
    ldloc _F
    ldfld valuetype T_S* @test::s
    ldobj valuetype T_S
    call void PrintS(valuetype T_S Arg)
    .line 52
    ldloc _F
    ldfld valuetype T_R* @test::r
    ldobj valuetype T_R
    call void PrintR(valuetype T_R Arg)
    .line 53
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "i = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldloc _F
    ldfld int32* @test::i
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 55
    ldloc _F
    ldfld valuetype T_A* @test::a
    ldc.i4 0
    call instance int32& T_A::ldadr(int32)
    ldc.i4 123
    stobj int32
    .line 56
    ldloc _F
    ldfld valuetype T_A* @test::a
    ldc.i4 9
    call instance int32& T_A::ldadr(int32)
    ldc.i4 321
    stobj int32
    .line 58
    ldloc _F
    ldfld valuetype T_S* @test::s
    ldloc $tmpSetLiteral1
    dup
    ldc.i4 1
    ldc.i4 10
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_S _SetCastTo_T_S(valuetype T_set_1 s)
    stobj valuetype T_S
    .line 60
    ldloc _F
    ldfld valuetype T_R* @test::r
    ldc.i4 0
    stfld int32 T_R::a
    .line 61
    ldloc _F
    ldfld valuetype T_R* @test::r
    ldc.i4 1
    neg
    stfld int32 T_R::b
    .line 62
    ldloc _F
    ldfld valuetype T_R* @test::r
    ldc.i4 0
    conv.r8
    stfld float64 T_R::c
    .line 63
    ldloc _F
    ldfld valuetype T_R* @test::r
    ldc.r8 3.14000
    neg
    stfld float64 T_R::d
    .line 65
    ldloc _F
    ldfld int32* @test::i
    ldc.i4 1024
    stobj int32
    /* nop */

L_Epilogue:
    ret
}

.line 0
//================================================================================
// scope: global scope (level : 0)

.line 2

.method static
void _Program()
{
    .maxstack 32

    .locals init(
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3,
        valuetype T_set_1 $tmpSetLiteral4)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    ldc.i4 0
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldloca $tmpSetLiteral4
    ldc.i4 1
    call instance void T_set_1::addValue(int32)
    ldloca $tmpSetLiteral4
    ldc.i4 2
    call instance void T_set_1::addValue(int32)
    ldloca $tmpSetLiteral4
    ldc.i4 3
    call instance void T_set_1::addValue(int32)
    ldloca $tmpSetLiteral4
    ldc.i4 5
    call instance void T_set_1::addValue(int32)
    ldloca $tmpSetLiteral4
    ldc.i4 7
    call instance void T_set_1::addValue(int32)

L_Entry:
    .line 69
    ldc.i4 9
    stloc $tmpEndValue1
    ldc.i4 0
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc $tmpIndex2
    stsfld int32 _G::i
L_for_loop_1:
    .line 69
    ldsflda valuetype T_A _G::VA
    ldsfld int32 _G::i
    call instance int32& T_A::ldadr(int32)
    ldsfld int32 _G::i
    stobj int32
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
    .line 71
    ldloc $tmpSetLiteral4
    dup
    ldc.i4 1
    ldc.i4 10
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_S _SetCastTo_T_S(valuetype T_set_1 s)
    stsfld valuetype T_S _G::VS
    .line 73
    ldsflda valuetype T_R _G::VR
    ldc.i4 11
    stfld int32 T_R::a
    .line 74
    ldsflda valuetype T_R _G::VR
    ldc.i4 22
    stfld int32 T_R::b
    .line 75
    ldsflda valuetype T_R _G::VR
    ldc.r8 1.10000
    stfld float64 T_R::c
    .line 76
    ldsflda valuetype T_R _G::VR
    ldc.r8 2.20000
    stfld float64 T_R::d
    .line 78
    ldc.i4 1000
    stsfld int32 _G::i
    .line 80
    ldsflda valuetype T_A _G::VA
    ldsflda valuetype T_S _G::VS
    ldsflda valuetype T_R _G::VR
    ldsflda int32 _G::i
    call void Test(valuetype T_A& a, valuetype T_S& s, valuetype T_R& r, int32& i)
    .line 82
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "------------------------------"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 84
    ldsfld valuetype T_A _G::VA
    call void PrintA(valuetype T_A Arg)
    .line 85
    ldsfld valuetype T_S _G::VS
    call void PrintS(valuetype T_S Arg)
    .line 86
    ldsfld valuetype T_R _G::VR
    call void PrintR(valuetype T_R Arg)
    .line 87
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "i = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld int32 _G::i
    call instance void [lpcRuntime]LPC.File::Write(int32)
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

.line 0xfeefee

//================================================================================
// internal helpers

.method static bool _SetContains(valuetype T_S s, int32 val)
{
    ldarga s
    ldc.i4 4
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static valuetype T_S _SetCastTo_T_S(valuetype T_set_1 s)
{
    .locals init (valuetype T_S result)

    ldloca result
    ldarga s
    ldc.i4 4
    cpblk
    ldloc result
    ret
}

.method static void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
{
    ldarga s
    ldc.i4 32
    ldarg min
    ldarg max
    call void [lpcRuntime]LPC.Set::RTCheck(uint8*, int32, int32, int32)
    ret
}


