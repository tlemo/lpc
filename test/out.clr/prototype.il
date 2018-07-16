
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

// "prototype.pas"

// line 34
//================================================================================
// scope: foo (level : 2)

// line 0xfeefee

// TYPE A = array [0 .. 15] of uint8;
.class value explicit T_A
{
    // elem size = 1
    // alignment = 1
    .size 16

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 15)
        ldarg index
        ldc.i4 15
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

// line 0xfeefee

// TYPE REC = record;
.class value explicit T_REC
{
    // alignment = 8
    .size 32
    
    .field [0] public float64 x
    .field [8] public float64 y
    .field [16] public valuetype T_A a
}

// line 0xfeefee

// TYPE array_4 = array [0 .. 3] of uint8;
.class value explicit T_array_4
{
    // elem size = 1
    // alignment = 1
    .size 4

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
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
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

// line 0xfeefee

// TYPE array_3 = array [0 .. 3] of valuetype T_array_4;
.class value explicit T_array_3
{
    // elem size = 4
    // alignment = 1
    .size 16

    .field [0] public valuetype T_array_4 elem

    .method public valuetype T_array_4& ldadr(int32 index)
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

// line 0xfeefee

// TYPE UNION = record;
.class value explicit T_UNION
{
    // alignment = 4
    .size 24
    
    .field [0] public int32 i
    
    // case 0
        
        .field [4] public valuetype T_A a
    
    // case 1
        
        .field [4] public valuetype T_array_3 b
}

// line 0xfeefee

// TYPE subroutine_2 = function^;
.class sealed T_subroutine_2 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public int32 Invoke(int32 x, valuetype T_REC r, valuetype T_UNION u) runtime managed {}
}

.class @foo
{
    // parameters
    .field public class T_subroutine_2 Pfn

    // local variables
    .field public int32 _fnvalue
    .field public int32 i
    .field public void* p
    .field public valuetype T_UNION u

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 56
//================================================================================
// scope: test_bar (level : 3)

.class @test_bar
{
    // slink
    .field public class @test _slink

    // parameters
    .field public valuetype T_REC r
    .field public valuetype T_UNION u
    .field public int32 x

    // local variables
    .field public int32 _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 54
//================================================================================
// scope: test (level : 2)

// line 0xfeefee

// TYPE subroutine_7 = function^;
.class sealed T_test_subroutine_7 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public int32 Invoke(int32 x, valuetype T_REC r, valuetype T_UNION u) runtime managed {}
}

.class @test
{
    // parameters
    .field public int32* y

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 56

    .method public
    int32 Bar(int32 x, valuetype T_REC r, valuetype T_UNION u)
    {
        .maxstack 32
    
        .locals init(class @test_bar _F)
        
        newobj instance void @test_bar::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @test @test_bar::_slink
        
        ldloc _F
        ldarg r
        stfld valuetype T_REC @test_bar::r
        
        ldloc _F
        ldarg u
        stfld valuetype T_UNION @test_bar::u
        
        ldloc _F
        ldarg x
        stfld int32 @test_bar::x
    
    L_Entry:
        // line 58
        ldloc _F
        ldloc _F
        ldfld int32 @test_bar::x
        ldloc _F
        ldflda valuetype T_REC @test_bar::r
        ldflda valuetype T_A T_REC::a
        ldc.i4 0
        call instance uint8& T_A::ldadr(int32)
        ldobj uint8
        add
        ldloc _F
        ldflda valuetype T_UNION @test_bar::u
        ldflda valuetype T_array_3 T_UNION::b
        ldc.i4 1
        call instance valuetype T_array_4& T_array_3::ldadr(int32)
        ldc.i4 3
        call instance uint8& T_array_4::ldadr(int32)
        ldobj uint8
        add
        ldloc _F
        ldflda valuetype T_UNION @test_bar::u
        ldfld int32 T_UNION::i
        add
        ldloc _F
        ldfld class @test @test_bar::_slink
        ldfld int32* @test::y
        ldobj int32
        add
        stfld int32 @test_bar::_fnvalue
        /* nop */
    
    L_Epilogue:
        ldloc _F
        ldfld int32 @test_bar::_fnvalue
        ret
    }
}


// line 7
//================================================================================
// scope: program scope (level : 1)

// line 0xfeefee

// TYPE array_8 = array [1 .. 3] of uint8;
.class value explicit T_array_8
{
    // elem size = 1
    // alignment = 1
    .size 3

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
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
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }

    .method public static string arrayToString(valuetype T_array_8)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 3
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
    .field public static valuetype T_REC Gr
    .field public static int32 Gv
    .field public static int32 Gv2
}

// line 34

.method static
int32 Foo(class T_subroutine_2 Pfn)
{
    .maxstack 32

    .locals init(
        class @foo _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3)
    
    newobj instance void @foo::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Pfn
    stfld class T_subroutine_2 @foo::Pfn

L_Entry:
    // line 40
    ldloc _F
    ldflda valuetype T_UNION @foo::u
    ldc.i4 100000
    stfld int32 T_UNION::i
    // line 42
    ldc.i4 15
    stloc $tmpEndValue1
    ldc.i4 0
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @foo::i
L_for_loop_1:
    // line 42
    ldloc _F
    ldflda valuetype T_UNION @foo::u
    ldflda valuetype T_A T_UNION::a
    ldloc _F
    ldfld int32 @foo::i
    call instance uint8& T_A::ldadr(int32)
    ldloc _F
    ldfld int32 @foo::i
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
    ldloc _F
    ldfld int32 @foo::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @foo::i
    br L_for_loop_1
L_for_end_2:
    pop
    // line 44
    ldloc _F
    ldloc _F
    ldfld class T_subroutine_2 @foo::Pfn
    ldsfld int32 _G::Gv
    ldsfld valuetype T_REC _G::Gr
    ldloc _F
    ldfld valuetype T_UNION @foo::u
    call instance int32 T_subroutine_2::Invoke(int32 x, valuetype T_REC r, valuetype T_UNION u)
    stfld int32 @foo::_fnvalue
    // line 46
    // line 46
    ldloc _F
    ldc.i4 1
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stfld void* @foo::p
    // line 47
    ldloc _F
    ldfld void* @foo::p
    ldnull
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_3
    // line 49
    ldloc _F
    ldfld void* @foo::p
    ldsfld int32 _G::Gv
    ldc.i4 256
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
    // line 50
    ldloc _F
    ldfld void* @foo::p
    call void [lpcRuntime]LPC.Heap::Free(void*)
    // line 50
    ldloc _F
    ldnull
    stfld void* @foo::p
    /* nop */
L_if_end_3:
    /* nop */

L_Epilogue:
    ldloc _F
    ldfld int32 @foo::_fnvalue
    ret
}

// line 54

.method static
void Test(int32& y)
{
    .maxstack 32

    .locals init(class @test _F,
        int32& pinned $y)
    
    newobj instance void @test::.ctor()
    stloc _F
    
    ldarg y
    stloc $y
    
    ldloc _F
    ldarg y
    stfld int32* @test::y

L_Entry:
    // line 62
    ldc.i4 1000
    stsfld int32 _G::Gv
    // line 63
    ldsflda valuetype T_REC _G::Gr
    ldflda valuetype T_A T_REC::a
    ldc.i4 0
    call instance uint8& T_A::ldadr(int32)
    ldc.i4 100
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
    // line 64
    ldc.i4 10000
    stsfld int32 _G::Gv2
    // line 66
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "foo"
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr " = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldloc _F
    ldftn instance int32 @test::Bar(int32 x, valuetype T_REC r, valuetype T_UNION u)
    newobj instance void T_test_subroutine_7::.ctor(object, native uint)
    call int32 Foo(class T_subroutine_2 Pfn)
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 68
    ldloc _F
    ldfld int32* @test::y
    ldloc _F
    ldfld int32* @test::y
    ldobj int32
    ldc.i4 2345
    add
    stobj int32
    /* nop */

L_Epilogue:
    ret
}

// line 0
//================================================================================
// scope: global scope (level : 0)

// line 7

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
    // line 72
    ldc.i4 1
    stsfld int32 _G::Gv2
    // line 73
    ldsflda int32 _G::Gv2
    call void Test(int32& y)
    // line 74
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "done, gv2 = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld int32 _G::Gv2
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
