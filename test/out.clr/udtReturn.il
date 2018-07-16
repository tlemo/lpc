
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

// "udtReturn.pas"

// line 19
//================================================================================
// scope: fooA (level : 2)

// line 0xfeefee

// TYPE A = array [0 .. 3] of int32;
.class value explicit T_A
{
    // elem size = 4
    // alignment = 4
    .size 16

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 3)
        ldarg index
        ldc.i4 3
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

.class @fooA
{
    // local variables
    .field public valuetype T_A _fnvalue
    .field public valuetype T_A Tmp

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 29
//================================================================================
// scope: fooS (level : 2)

// line 0xfeefee

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

// line 0xfeefee

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

.class @fooS
{
    // local variables
    .field public valuetype T_S _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 34
//================================================================================
// scope: fooR (level : 2)

// line 0xfeefee

// TYPE R = record;
.class value explicit T_R
{
    // alignment = 4
    .size 8
    
    .field [0] public int32 a
    .field [4] public int32 b
}

.class @fooR
{
    // local variables
    .field public valuetype T_R _fnvalue
    .field public valuetype T_R Tmp

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
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype [lpcRuntime]LPC.File _output
    .field public static int32 i
    .field public static valuetype T_A VA
    .field public static valuetype T_R VR
    .field public static valuetype T_S VS
}

// line 19

.method static
valuetype T_A FooA()
{
    .maxstack 32

    .locals init(class @fooA _F)
    
    newobj instance void @fooA::.ctor()
    stloc _F

L_Entry:
    // line 22
    ldloc _F
    ldflda valuetype T_A @fooA::Tmp
    ldc.i4 0
    call instance int32& T_A::ldadr(int32)
    ldc.i4 0
    stobj int32
    // line 23
    ldloc _F
    ldflda valuetype T_A @fooA::Tmp
    ldc.i4 1
    call instance int32& T_A::ldadr(int32)
    ldc.i4 1
    stobj int32
    // line 24
    ldloc _F
    ldflda valuetype T_A @fooA::Tmp
    ldc.i4 2
    call instance int32& T_A::ldadr(int32)
    ldc.i4 2
    stobj int32
    // line 25
    ldloc _F
    ldflda valuetype T_A @fooA::Tmp
    ldc.i4 3
    call instance int32& T_A::ldadr(int32)
    ldc.i4 3
    stobj int32
    // line 26
    ldloc _F
    ldloc _F
    ldfld valuetype T_A @fooA::Tmp
    stfld valuetype T_A @fooA::_fnvalue
    /* nop */

L_Epilogue:
    ldloc _F
    ldfld valuetype T_A @fooA::_fnvalue
    ret
}

// line 29

.method static
valuetype T_S FooS()
{
    .maxstack 32

    .locals init(
        class @fooS _F,
        valuetype T_set_1 $tmpSetLiteral1)
    
    newobj instance void @fooS::.ctor()
    stloc _F

    ldloca $tmpSetLiteral1
    ldc.i4 1
    call instance void T_set_1::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 2
    call instance void T_set_1::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 3
    call instance void T_set_1::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 5
    call instance void T_set_1::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 7
    call instance void T_set_1::addValue(int32)

L_Entry:
    // line 31
    ldloc _F
    ldloc $tmpSetLiteral1
    dup
    ldc.i4 1
    ldc.i4 10
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_S _SetCastTo_T_S(valuetype T_set_1 s)
    stfld valuetype T_S @fooS::_fnvalue
    /* nop */

L_Epilogue:
    ldloc _F
    ldfld valuetype T_S @fooS::_fnvalue
    ret
}

// line 34

.method static
valuetype T_R FooR()
{
    .maxstack 32

    .locals init(class @fooR _F)
    
    newobj instance void @fooR::.ctor()
    stloc _F

L_Entry:
    // line 37
    ldloc _F
    ldflda valuetype T_R @fooR::Tmp
    ldc.i4 11
    stfld int32 T_R::a
    // line 38
    ldloc _F
    ldflda valuetype T_R @fooR::Tmp
    ldc.i4 22
    stfld int32 T_R::b
    // line 39
    ldloc _F
    ldloc _F
    ldfld valuetype T_R @fooR::Tmp
    stfld valuetype T_R @fooR::_fnvalue
    /* nop */

L_Epilogue:
    ldloc _F
    ldfld valuetype T_R @fooR::_fnvalue
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
        valuetype T_set_1 $tmpSetLiteral6,
        int32 $tmpIndex7)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    ldc.i4 0
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldloca $tmpSetLiteral6
    ldc.i4 2
    ldc.i4 10
    call instance void T_set_1::addRange(int32, int32)

L_Entry:
    // line 43
    call valuetype T_A FooA()
    stsfld valuetype T_A _G::VA
    // line 44
    call valuetype T_S FooS()
    stsfld valuetype T_S _G::VS
    // line 45
    call valuetype T_R FooR()
    stsfld valuetype T_R _G::VR
    // line 47
    ldc.i4 3
    stloc $tmpEndValue1
    ldc.i4 0
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc $tmpIndex2
    stsfld int32 _G::i
L_for_loop_1:
    // line 48
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "a["
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld int32 _G::i
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldstr "] = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsflda valuetype T_A _G::VA
    ldsfld int32 _G::i
    call instance int32& T_A::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
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
    // line 50
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 52
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "s = [ "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 53
    ldc.i4 10
    stloc $tmpEndValue4
    ldc.i4 1
    dup
    ldloc $tmpEndValue4
    bgt L_for_end_4
    stloc $tmpIndex5
    ldloc $tmpIndex5
    stsfld int32 _G::i
L_for_loop_3:
    // line 54
    ldsfld valuetype T_S _G::VS
    call valuetype T_set_1 _SetCastTo_T_set_1(valuetype T_S s)
    ldloc $tmpSetLiteral6
    call valuetype T_set_1 _SetIntersection(valuetype T_set_1 a, valuetype T_set_1 b)
    ldsfld int32 _G::i
    call bool _SetContains(valuetype T_set_1 s, int32 val)
    brfalse L_if_end_5
    // line 55
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldsfld int32 _G::i
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_5:
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue4
    beq L_for_end_4
    ldc.i4.1
    add
    stloc $tmpIndex7
    ldloc $tmpIndex7
    stsfld int32 _G::i
    br L_for_loop_3
L_for_end_4:
    pop
    // line 56
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldc.i4 93 // ']'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 58
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 60
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "r.a = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsflda valuetype T_R _G::VR
    ldfld int32 T_R::a
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldstr ", r.b = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsflda valuetype T_R _G::VR
    ldfld int32 T_R::b
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

// line 0xfeefee

//================================================================================
// internal helpers

.method static bool _SetContains(valuetype T_set_1 s, int32 val)
{
    ldarga s
    ldc.i4 32
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

.method static valuetype T_set_1 _SetCastTo_T_set_1(valuetype T_S s)
{
    .locals init (valuetype T_set_1 result)

    ldloca result
    ldarga s
    ldc.i4 4
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_1 _SetIntersection(valuetype T_set_1 a, valuetype T_set_1 b)
{
    .locals init (valuetype T_set_1 result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 32
    call void [lpcRuntime]LPC.Set::Intersection(uint8*, uint8*, uint8*, int32)
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


