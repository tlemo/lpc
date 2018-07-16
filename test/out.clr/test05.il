
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

// "test05.pas"

// line 16
//================================================================================
// scope: outter_inner_setOutter (level : 4)

.class @outter_inner_setOutter
{
    // slink
    .field public class @outter_inner _slink

    // parameters
    .field public int32 x

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 15
//================================================================================
// scope: outter_inner (level : 3)

.class @outter_inner
{
    // slink
    .field public class @outter _slink

    // parameters
    .field public int32 x

    // local variables
    .field public int32 _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 16

    .method public
    void SetOutter(int32 x)
    {
        .maxstack 32
    
        .locals init(class @outter_inner_setOutter _F)
        
        newobj instance void @outter_inner_setOutter::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @outter_inner @outter_inner_setOutter::_slink
        
        ldloc _F
        ldarg x
        stfld int32 @outter_inner_setOutter::x
    
    L_Entry:
        // line 18
        ldloc _F
        ldfld class @outter_inner @outter_inner_setOutter::_slink
        ldfld class @outter @outter_inner::_slink
        ldloc _F
        ldfld int32 @outter_inner_setOutter::x
        stfld int32 @outter::_fnvalue
        /* nop */
    
    L_Epilogue:
        ret
    }
}


// line 14
//================================================================================
// scope: outter (level : 2)

.class @outter
{
    // parameters
    .field public int32 x

    // local variables
    .field public int32 _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 15

    .method public
    int32 Inner(int32 x)
    {
        .maxstack 32
    
        .locals init(class @outter_inner _F)
        
        newobj instance void @outter_inner::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @outter @outter_inner::_slink
        
        ldloc _F
        ldarg x
        stfld int32 @outter_inner::x
    
    L_Entry:
        // line 21
        ldloc _F
        ldloc _F
        ldfld int32 @outter_inner::x
        ldc.i4 2
        mul
        stfld int32 @outter_inner::_fnvalue
        // line 22
        ldloc _F
        ldfld class @outter @outter_inner::_slink
        ldc.i4 7
        stfld int32 @outter::_fnvalue
        // line 23
        ldloc _F
        ldc.i4 100
        ldloc _F
        ldfld int32 @outter_inner::x
        add
        call instance void @outter_inner::SetOutter(int32 x)
        /* nop */
    
    L_Epilogue:
        ldloc _F
        ldfld int32 @outter_inner::_fnvalue
        ret
    }
}


// line 4
//================================================================================
// scope: program scope (level : 1)

// line 0xfeefee

// TYPE array_2 = array [0 .. 255] of int32;
.class value explicit T_array_2
{
    // elem size = 4
    // alignment = 4
    .size 1024

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 255)
        ldarg index
        ldc.i4 255
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

// TYPE t1 = array [1 .. 3] of valuetype T_array_2;
.class value explicit T_t1
{
    // elem size = 1024
    // alignment = 4
    .size 3072

    .field [0] public valuetype T_array_2 elem

    .method public valuetype T_array_2& ldadr(int32 index)
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
        ldc.i4 1024
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

// TYPE array_6 = array [1 .. 5] of uint8;
.class value explicit T_array_6
{
    // elem size = 1
    // alignment = 1
    .size 5

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 5)
        ldarg index
        ldc.i4 5
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

    .method public static string arrayToString(valuetype T_array_6)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 5
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

// line 0xfeefee

// TYPE array_5 = array [0 .. 255] of valuetype T_array_6;
.class value explicit T_array_5
{
    // elem size = 5
    // alignment = 1
    .size 1280

    .field [0] public valuetype T_array_6 elem

    .method public valuetype T_array_6& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 255)
        ldarg index
        ldc.i4 255
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 5
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

// TYPE array_4 = array [0 .. 2] of valuetype T_array_5;
.class value explicit T_array_4
{
    // elem size = 1280
    // alignment = 1
    .size 3840

    .field [0] public valuetype T_array_5 elem

    .method public valuetype T_array_5& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 2)
        ldarg index
        ldc.i4 2
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 1280
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

// TYPE array_3 = array [1 .. 10] of valuetype T_array_4;
.class value explicit T_array_3
{
    // elem size = 3840
    // alignment = 1
    .size 38400

    .field [0] public valuetype T_array_4 elem

    .method public valuetype T_array_4& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 10)
        ldarg index
        ldc.i4 10
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 1
        sub
        ldc.i4 3840
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
    .field public static valuetype T_array_3 x
    .field public static valuetype T_t1 y
}

// line 14

.method static
int32 Outter(int32 x)
{
    .maxstack 32

    .locals init(class @outter _F)
    
    newobj instance void @outter::.ctor()
    stloc _F
    
    ldloc _F
    ldarg x
    stfld int32 @outter::x

L_Entry:
    // line 26
    ldloc _F
    ldc.i4 1
    stfld int32 @outter::_fnvalue
    // line 27
    ldloc _F
    ldloc _F
    ldfld int32 @outter::x
    call instance int32 @outter::Inner(int32 x)
    ldc.i4 7
    ceq
    brfalse L_if_end_1
    // line 27
    ldloc _F
    ldc.i4 2
    stfld int32 @outter::_fnvalue
L_if_end_1:
    /* nop */

L_Epilogue:
    ldloc _F
    ldfld int32 @outter::_fnvalue
    ret
}

// line 0
//================================================================================
// scope: global scope (level : 0)

// line 4

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
    ldstr "hello, world"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 32
    ldsflda valuetype T_array_3 _G::x
    ldc.i4 3
    call instance valuetype T_array_4& T_array_3::ldadr(int32)
    ldc.i4 2 // c 
    call instance valuetype T_array_5& T_array_4::ldadr(int32)
    ldc.i4 97 // 'a'
    call instance valuetype T_array_6& T_array_5::ldadr(int32)
    ldc.i4 4
    call instance uint8& T_array_6::ldadr(int32)
    ldc.i4 33 // '!'
    stobj uint8
    // line 33
    ldsflda valuetype T_t1 _G::y
    ldc.i4 2
    call instance valuetype T_array_2& T_t1::ldadr(int32)
    ldc.i4 120 // 'x'
    call instance int32& T_array_2::ldadr(int32)
    ldsflda valuetype T_array_3 _G::x
    ldc.i4 3
    call instance valuetype T_array_4& T_array_3::ldadr(int32)
    ldc.i4 2 // c 
    call instance valuetype T_array_5& T_array_4::ldadr(int32)
    ldc.i4 97 // 'a'
    call instance valuetype T_array_6& T_array_5::ldadr(int32)
    ldc.i4 4
    call instance uint8& T_array_6::ldadr(int32)
    ldobj uint8
    stobj int32
    // line 34
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "outter = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 7
    call int32 Outter(int32 x)
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 35
    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    call instance void [lpcRuntime]LPC.File::ReadLn()
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
