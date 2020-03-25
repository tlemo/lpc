
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

.line 0 "intrinsics2.pas"

.line 4
//================================================================================
// scope: program scope (level : 1)

.line 0xfeefee

// TYPE array_1 = array [0 .. 99] of int32;
.class value explicit T_array_1
{
    // elem size = 4
    // alignment = 4
    .size 400

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 99)
        ldarg index
        ldc.i4 99
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

.line 0xfeefee

// TYPE array_2 = array [10 .. 49] of int32;
.class value explicit T_array_2
{
    // elem size = 4
    // alignment = 4
    .size 160

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
    {
        // check(index >= 10)
        ldarg index
        ldc.i4 10
        blt badIndex
    
        // check(index <= 49)
        ldarg index
        ldc.i4 49
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 10
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

// TYPE array_4 = array [1 .. 3] of int32;
.class value explicit T_array_4
{
    // elem size = 4
    // alignment = 4
    .size 12

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
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

// TYPE array_3 = array [0 .. 99] of valuetype T_array_4;
.class value explicit T_array_3
{
    // elem size = 12
    // alignment = 4
    .size 1200

    .field [0] public valuetype T_array_4 elem

    .method public valuetype T_array_4& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 99)
        ldarg index
        ldc.i4 99
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 12
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

// TYPE array_5 = array [0 .. 99] of void*;
.class value explicit T_array_5
{
    // elem size = 8
    // alignment = 8
    .size 800

    .field [0] public void* elem

    .method public void*& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 99)
        ldarg index
        ldc.i4 99
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 8
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

// TYPE set_9 = set of 1 .. 5
.class value explicit T_set_9
{
    .field [0] public uint32 bits0

    .method public void addValue(int32 val)
    {
        // check(value >= 1)
        ldarg val
        ldc.i4 1
        blt badValue
    
        // check(value <= 5)
        ldarg val
        ldc.i4 5
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
        call instance void T_set_9::addValue(int32)
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

.line 0xfeefee

// TYPE rec = record;
.class value explicit T_rec
{
    // alignment = 8
    .size 48
    
    .field [0] public int32 a
    .field [4] public int32 b
    
    // variable fields selector
    .field [8] public int32 Tag
    
    // case 1
        
        // case 'a' (97)
        // case 'b' (98)
            
            .field [12] public int32 C1
        
        // case 'c' (99)
            
            .field [16] public float64 C2
    
    // case 2
        
        .field [12] public valuetype T_set_9 C3
    
    // case 3
}

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype [lpcRuntime]LPC.File _output
    .field public static valuetype T_array_1 A1
    .field public static valuetype T_array_2 A2
    .field public static valuetype T_array_3 A3
    .field public static valuetype T_array_5 A4
    .field public static int32 i
    .field public static void* p
    .field public static void* Pr
}

.line 0
//================================================================================
// scope: global scope (level : 0)

.line 4

.method static
void _Program()
{
    .maxstack 32

    .locals init(
        int8 $tmpSrcIndex1,
        int8 $tmpDstIndex2,
        int8 $tmpSrcIndex3,
        int8 $tmpDstIndex4)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    ldc.i4 0
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

L_Entry:
    .line 28
    .line 28
    ldc.i4 8
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::p
    .line 29
    .line 29
    ldc.i4 48
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Pr
    .line 29
    ldsfld void* _G::Pr
    ldc.i4 1
    stfld int32 T_rec::Tag
    .line 30
    ldsfld void* _G::Pr
    ldfld int32 T_rec::Tag
    ldc.i4 1
    ceq
    ldstr "invalid variant selector value"
    call void [lpcRuntime]LPC.Runtime::RTCheck(bool, string)
    ldsfld void* _G::Pr
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 30
    ldnull
    stsfld void* _G::Pr
    .line 31
    .line 31
    ldc.i4 48
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Pr
    .line 31
    ldsfld void* _G::Pr
    ldc.i4 3 // THREE 
    stfld int32 T_rec::Tag
    .line 32
    ldsfld void* _G::Pr
    ldfld int32 T_rec::Tag
    ldc.i4 3 // THREE 
    ceq
    ldstr "invalid variant selector value"
    call void [lpcRuntime]LPC.Runtime::RTCheck(bool, string)
    ldsfld void* _G::Pr
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 32
    ldnull
    stsfld void* _G::Pr
    .line 33
    ldsfld void* _G::p
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 33
    ldnull
    stsfld void* _G::p
    .line 35
    ldc.i4 5
    stsfld int32 _G::i
    .line 36
    ldc.i4 0
    stloc $tmpSrcIndex1
    ldc.i4 10
    stloc $tmpDstIndex2
L_pack_loop_1:
    .line 36
    ldsflda valuetype T_array_2 _G::A2
    ldloc $tmpDstIndex2
    call instance int32& T_array_2::ldadr(int32)
    ldsflda valuetype T_array_1 _G::A1
    ldloc $tmpSrcIndex1
    call instance int32& T_array_1::ldadr(int32)
    ldobj int32
    stobj int32
    ldloc $tmpSrcIndex1
    ldc.i4.1
    add
    stloc $tmpSrcIndex1
    ldloc $tmpDstIndex2
    ldc.i4.1
    add
    dup
    stloc $tmpDstIndex2
    ldc.i4 49
    ble L_pack_loop_1
    .line 37
    ldsfld int32 _G::i
    stloc $tmpDstIndex4
    ldc.i4 10
    stloc $tmpSrcIndex3
L_unpack_loop_2:
    .line 37
    ldsflda valuetype T_array_1 _G::A1
    ldloc $tmpDstIndex4
    call instance int32& T_array_1::ldadr(int32)
    ldsflda valuetype T_array_2 _G::A2
    ldloc $tmpSrcIndex3
    call instance int32& T_array_2::ldadr(int32)
    ldobj int32
    stobj int32
    ldloc $tmpDstIndex4
    ldc.i4.1
    add
    stloc $tmpDstIndex4
    ldloc $tmpSrcIndex3
    ldc.i4.1
    add
    dup
    stloc $tmpSrcIndex3
    ldc.i4 49
    ble L_unpack_loop_2
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
