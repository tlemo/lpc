
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
    ldstr "output"
    stelem string
    stsfld string[] _ProgramArgs
    ret
}

.line 0 "iso7185pat.pas"

.line 398
//================================================================================
// scope: junk1 (level : 2)

.class @junk1
{
    // parameters
    .field public int32 q
    .field public int32 z

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 406
//================================================================================
// scope: junk2 (level : 2)

.class @junk2
{
    // parameters
    .field public int32* z

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 414
//================================================================================
// scope: junk3 (level : 2)

.line 0xfeefee

// TYPE string10 = array [1 .. 10] of uint8;
.class value explicit T_string10
{
    // elem size = 1
    // alignment = 1
    .size 10

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
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
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }

    .method public static string arrayToString(valuetype T_string10)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 10
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

.class @junk3
{
    // parameters
    .field public valuetype T_string10* p

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 422
//================================================================================
// scope: junk4 (level : 2)

.class @junk4
{
    // parameters
    .field public valuetype T_string10 p

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 431
//================================================================================
// scope: junk5 (level : 2)

.class @junk5
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
}


.line 439
//================================================================================
// scope: junk6 (level : 2)

.class @junk6
{
    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 449
//================================================================================
// scope: junk7 (level : 2)

.class @junk7
{
    // parameters
    .field public int32 a
    .field public int32 b
    .field public int32 c

    // local variables
    .field public int32 _fnvalue
    .field public int32 x
    .field public int32 y
    .field public int32 z

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 467
//================================================================================
// scope: junk8 (level : 2)

.line 0xfeefee

// TYPE arri = array [1 .. 10] of int32;
.class value explicit T_arri
{
    // elem size = 4
    // alignment = 4
    .size 40

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
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

// TYPE recs = record;
.class value explicit T_recs
{
    // alignment = 4
    .size 5
    
    .field [0] public int32 a
    .field [4] public uint8 b
}

.line 0xfeefee

// TYPE cset = set of 0 .. 255
.class value explicit T_cset
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
        call instance void T_cset::addValue(int32)
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

.line 0xfeefee

// TYPE rec = record;
.class value explicit T_rec
{
    // alignment = 8
    .size 128
    
    .field [0] public int32 i
    .field [4] public bool b
    .field [5] public uint8 c
    .field [8] public int32 e
    .field [12] public int8 Es
    .field [13] public int8 s
    .field [16] public float64 r
    .field [24] public valuetype T_string10 St
    .field [36] public valuetype T_arri a
    .field [76] public valuetype T_recs Rc
    .field [84] public valuetype T_cset Stc
    .field [120] public void* p
}

.line 0xfeefee

// TYPE recv = record;
.class value explicit T_recv
{
    // alignment = 4
    .size 22
    
    .field [0] public int32 a
    .field [4] public uint8 b
    
    // variable fields selector
    .field [5] public bool c
    
    // case false = 0
        
        .field [6] public valuetype T_string10 d
    
    // case true = 1
        
        .field [8] public int32 e
}

.class @junk8
{
    // parameters
    .field public int32 a
    .field public valuetype T_arri Ar
    .field public bool b
    .field public uint8 c
    .field public int32 e
    .field public int8 Es
    .field public void* p
    .field public float64 r
    .field public valuetype T_rec Rc
    .field public valuetype T_recv Rv
    .field public int8 s
    .field public valuetype T_string10 St
    .field public valuetype T_cset Stc

    // local variables
    .field public uint8 Ci
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 494
//================================================================================
// scope: junk9 (level : 2)

.line 0xfeefee

// TYPE subroutine_1 = procedure^;
.class sealed T_subroutine_1 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke(int32 Junk9, int32 b, uint8 c) runtime managed {}
}

.line 0xfeefee

// TYPE subroutine_2 = function^;
.class sealed T_subroutine_2 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public int32 Invoke(int32 a) runtime managed {}
}

.class @junk9
{
    // parameters
    .field public class T_subroutine_1 Junk9
    .field public class T_subroutine_2 y

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 504
//================================================================================
// scope: junk10 (level : 2)

.class @junk10
{
    // parameters
    .field public uint8 Junk10
    .field public int32 x
    .field public int32 y

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 512
//================================================================================
// scope: junk11 (level : 2)

.class @junk11
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
}


.line 520
//================================================================================
// scope: junk12 (level : 2)

.line 0xfeefee

// TYPE subroutine_3 = function^;
.class sealed T_subroutine_3 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public int32 Invoke(int32 n) runtime managed {}
}

.line 0xfeefee

// TYPE subroutine_5 = function^;
.class sealed T_subroutine_5 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public int32 Invoke(int32 z) runtime managed {}
}

.line 0xfeefee

// TYPE subroutine_4 = procedure^;
.class sealed T_subroutine_4 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke(class T_subroutine_5 Yq) runtime managed {}
}

.class @junk12
{
    // parameters
    .field public class T_subroutine_3 q
    .field public class T_subroutine_4 Xq

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 529
//================================================================================
// scope: junk13 (level : 2)

.line 0xfeefee

// TYPE subroutine_6 = function^;
.class sealed T_subroutine_6 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public int32 Invoke(int32 z) runtime managed {}
}

.class @junk13
{
    // parameters
    .field public class T_subroutine_6 Xz

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 541
//================================================================================
// scope: junk14_junk15 (level : 3)

.class @junk14_junk15
{
    // slink
    .field public class @junk14 _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 537
//================================================================================
// scope: junk14 (level : 2)

.class @junk14
{
    // local variables
    .field public int32 i
    .field public int32 x

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 541

    .method public
    void Junk15()
    {
        .maxstack 32
    
        .locals init(class @junk14_junk15 _F)
        
        newobj instance void @junk14_junk15::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @junk14 @junk14_junk15::_slink
    
    L_Entry:
        .line 545
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldc.i4 1
        ldc.i4.0
        ldloc _F
        ldfld class @junk14 @junk14_junk15::_slink
        ldfld int32 @junk14::i
        call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
        dup
        ldc.i4 32 // ' '
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        dup
        ldc.i4 1
        ldc.i4.0
        ldloc _F
        ldfld class @junk14 @junk14_junk15::_slink
        ldfld int32 @junk14::x
        call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
        pop
    
    L_Epilogue:
        ret
    }
}


.line 557
//================================================================================
// scope: junk16 (level : 2)

.class @junk16
{
    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 561
//================================================================================
// scope: junk17_junk18 (level : 3)

.class @junk17_junk18
{
    // slink
    .field public class @junk17 _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 559
//================================================================================
// scope: junk17 (level : 2)

.line 0xfeefee

// TYPE subroutine_7 = procedure^;
.class sealed T_subroutine_7 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

.line 0xfeefee

// TYPE subroutine_8 = procedure^;
.class sealed T_junk17_subroutine_8 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

.class @junk17
{
    // parameters
    .field public int32 i
    .field public class T_subroutine_7 x

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 561

    .method public
    void Junk18()
    {
        .maxstack 32
    
        .locals init(class @junk17_junk18 _F)
        
        newobj instance void @junk17_junk18::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @junk17 @junk17_junk18::_slink
    
    L_Entry:
        .line 565
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldc.i4 1
        ldc.i4.0
        ldloc _F
        ldfld class @junk17 @junk17_junk18::_slink
        ldfld int32 @junk17::i
        call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
        pop
    
    L_Epilogue:
        ret
    }
}


.line 578
//================================================================================
// scope: junk19 (level : 2)

.class @junk19
{
    // local variables
    .field public void* p

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 598
//================================================================================
// scope: junk20_inner (level : 3)

.class @junk20_inner
{
    // slink
    .field public class @junk20 _slink

    // local variables
    .field public int32 _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 596
//================================================================================
// scope: junk20 (level : 2)

.class @junk20
{
    // local variables
    .field public int32 _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 598

    .method public
    int32 Inner()
    {
        .maxstack 32
    
        .locals init(class @junk20_inner _F)
        
        newobj instance void @junk20_inner::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @junk20 @junk20_inner::_slink
    
    L_Entry:
        .line 602
        ldloc _F
        ldc.i4 12
        stfld int32 @junk20_inner::_fnvalue
        .line 603
        ldloc _F
        ldfld class @junk20 @junk20_inner::_slink
        ldc.i4 37
        stfld int32 @junk20::_fnvalue
    
    L_Epilogue:
        ldloc _F
        ldfld int32 @junk20_inner::_fnvalue
        ret
    }
}


.line 613
//================================================================================
// scope: random (level : 2)

.class @random
{
    // parameters
    .field public int32 Hi
    .field public int32 Low

    // local variables
    .field public int32 _fnvalue
    .field public int32 Gamma

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 71
//================================================================================
// scope: program scope (level : 1)

.line 0xfeefee

// TYPE arrr = array [1 .. 10] of valuetype T_recs;
.class value explicit T_arrr
{
    // elem size = 8
    // alignment = 4
    .size 80

    .field [0] public valuetype T_recs elem

    .method public valuetype T_recs& ldadr(int32 index)
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

// TYPE array_15 = array [1 .. 2] of int32;
.class value explicit T_array_15
{
    // elem size = 4
    // alignment = 4
    .size 8

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
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

// TYPE array_14 = array [1 .. 2] of valuetype T_array_15;
.class value explicit T_array_14
{
    // elem size = 8
    // alignment = 4
    .size 16

    .field [0] public valuetype T_array_15 elem

    .method public valuetype T_array_15& ldadr(int32 index)
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

// TYPE array_13 = array [1 .. 2] of valuetype T_array_14;
.class value explicit T_array_13
{
    // elem size = 16
    // alignment = 4
    .size 32

    .field [0] public valuetype T_array_14 elem

    .method public valuetype T_array_14& ldadr(int32 index)
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
        ldc.i4 16
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

// TYPE array_12 = array [1 .. 2] of valuetype T_array_13;
.class value explicit T_array_12
{
    // elem size = 32
    // alignment = 4
    .size 64

    .field [0] public valuetype T_array_13 elem

    .method public valuetype T_array_13& ldadr(int32 index)
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
        ldc.i4 32
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

// TYPE array_11 = array [1 .. 2] of valuetype T_array_12;
.class value explicit T_array_11
{
    // elem size = 64
    // alignment = 4
    .size 128

    .field [0] public valuetype T_array_12 elem

    .method public valuetype T_array_12& ldadr(int32 index)
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
        ldc.i4 64
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

// TYPE arrim = array [1 .. 2] of valuetype T_array_11;
.class value explicit T_arrim
{
    // elem size = 128
    // alignment = 4
    .size 256

    .field [0] public valuetype T_array_11 elem

    .method public valuetype T_array_11& ldadr(int32 index)
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
        ldc.i4 128
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

// TYPE array_16 = array [1 .. 10] of bool;
.class value explicit T_array_16
{
    // elem size = 1
    // alignment = 1
    .size 10

    .field [0] public bool elem

    .method public bool& ldadr(int32 index)
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
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

.line 0xfeefee

// TYPE array_21 = array [1 .. 10] of int8;
.class value explicit T_array_21
{
    // elem size = 1
    // alignment = 1
    .size 10

    .field [0] public int8 elem

    .method public int8& ldadr(int32 index)
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
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

.line 0xfeefee

// TYPE array_22 = array [1 .. 10] of valuetype [lpcRuntime]LPC.File;
.class value explicit T_array_22
{
    // elem size = 8
    // alignment = 8
    .size 80

    .field [0] public valuetype [lpcRuntime]LPC.File elem

    .method public valuetype [lpcRuntime]LPC.File& ldadr(int32 index)
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

// TYPE array_25 = array [1 .. 10] of void*;
.class value explicit T_array_25
{
    // elem size = 8
    // alignment = 8
    .size 80

    .field [0] public void* elem

    .method public void*& ldadr(int32 index)
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

// TYPE array_26 = array [1 .. 10] of float64;
.class value explicit T_array_26
{
    // elem size = 8
    // alignment = 8
    .size 80

    .field [0] public float64 elem

    .method public float64& ldadr(int32 index)
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

// TYPE array_28 = array [1 .. 10] of valuetype T_cset;
.class value explicit T_array_28
{
    // elem size = 32
    // alignment = 4
    .size 320

    .field [0] public valuetype T_cset elem

    .method public valuetype T_cset& ldadr(int32 index)
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
        ldc.i4 32
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

// TYPE array_29 = array [0 .. 1] of int32;
.class value explicit T_array_29
{
    // elem size = 4
    // alignment = 4
    .size 8

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 1)
        ldarg index
        ldc.i4 1
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

// TYPE array_30 = array [97 .. 122] of int32;
.class value explicit T_array_30
{
    // elem size = 4
    // alignment = 4
    .size 104

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
    {
        // check(index >= 97)
        ldarg index
        ldc.i4 97
        blt badIndex
    
        // check(index <= 122)
        ldarg index
        ldc.i4 122
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 97
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

// TYPE array_31 = array [0 .. 255] of int32;
.class value explicit T_array_31
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

.line 0xfeefee

// TYPE set_34 = set of 97 .. 122
.class value explicit T_set_34
{
    .field [0] public uint32 bits0
    .field [4] public uint32 bits1
    .field [8] public uint32 bits2
    .field [12] public uint32 bits3

    .method public void addValue(int32 val)
    {
        // check(value >= 97)
        ldarg val
        ldc.i4 97
        blt badValue
    
        // check(value <= 122)
        ldarg val
        ldc.i4 122
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
        call instance void T_set_34::addValue(int32)
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
        ldc.i4 16
        initblk
        ret
    
    }
}

.line 0xfeefee

// TYPE set_35 = set of 97 .. 102
.class value explicit T_set_35
{
    .field [0] public uint32 bits0
    .field [4] public uint32 bits1
    .field [8] public uint32 bits2
    .field [12] public uint32 bits3

    .method public void addValue(int32 val)
    {
        // check(value >= 97)
        ldarg val
        ldc.i4 97
        blt badValue
    
        // check(value <= 102)
        ldarg val
        ldc.i4 102
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
        call instance void T_set_35::addValue(int32)
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
        ldc.i4 16
        initblk
        ret
    
    }
}

.line 0xfeefee

// TYPE array_37 = array [1 .. 10] of valuetype T_arri;
.class value explicit T_array_37
{
    // elem size = 40
    // alignment = 4
    .size 400

    .field [0] public valuetype T_arri elem

    .method public valuetype T_arri& ldadr(int32 index)
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
        ldc.i4 40
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

// TYPE array_39 = array [0 .. 9] of int32;
.class value explicit T_array_39
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

.line 0xfeefee

// TYPE array_40 = array [1 .. 5] of int32;
.class value explicit T_array_40
{
    // elem size = 4
    // alignment = 4
    .size 20

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
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

// TYPE array_54 = array [1 .. 100] of void*;
.class value explicit T_array_54
{
    // elem size = 8
    // alignment = 8
    .size 800

    .field [0] public void* elem

    .method public void*& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 100)
        ldarg index
        ldc.i4 100
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 1
        sub
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

// TYPE record_66 = record;
.class value explicit T_record_66
{
    // alignment = 4
    .size 4
    
    .field [0] public int32 i
}

.line 0xfeefee

// TYPE record_65 = record;
.class value explicit T_record_65
{
    // alignment = 4
    .size 8
    
    .field [0] public int32 i
    .field [4] public valuetype T_record_66 r
}

.line 0xfeefee

// TYPE record_64 = record;
.class value explicit T_record_64
{
    // alignment = 4
    .size 12
    
    .field [0] public int32 i
    .field [4] public valuetype T_record_65 r
}

.line 0xfeefee

// TYPE record_63 = record;
.class value explicit T_record_63
{
    // alignment = 4
    .size 16
    
    .field [0] public int32 i
    .field [4] public valuetype T_record_64 r
}

.line 0xfeefee

// TYPE record_62 = record;
.class value explicit T_record_62
{
    // alignment = 4
    .size 20
    
    .field [0] public int32 i
    .field [4] public valuetype T_record_63 r
}

.line 0xfeefee

// TYPE record_61 = record;
.class value explicit T_record_61
{
    // alignment = 4
    .size 24
    
    .field [0] public int32 i
    .field [4] public valuetype T_record_62 r
}

.line 0xfeefee

// TYPE record_60 = record;
.class value explicit T_record_60
{
    // alignment = 4
    .size 28
    
    .field [0] public int32 i
    .field [4] public valuetype T_record_61 r
}

.line 0xfeefee

// TYPE record_59 = record;
.class value explicit T_record_59
{
    // alignment = 4
    .size 32
    
    .field [0] public int32 i
    .field [4] public valuetype T_record_60 r
}

.line 0xfeefee

// TYPE record_58 = record;
.class value explicit T_record_58
{
    // alignment = 4
    .size 36
    
    .field [0] public int32 i
    .field [4] public valuetype T_record_59 r
}

.line 0xfeefee

// TYPE record_57 = record;
.class value explicit T_record_57
{
    // alignment = 4
    .size 40
    
    .field [0] public int32 i
    .field [4] public valuetype T_record_58 r
}

.line 0xfeefee

// TYPE prec = record;
.class value explicit T_prec
{
    // alignment = 8
    .size 128
    
    .field [0] public int32 i
    .field [4] public bool b
    .field [5] public uint8 c
    .field [8] public int32 e
    .field [12] public int8 Es
    .field [13] public int8 s
    .field [16] public float64 r
    .field [24] public valuetype T_string10 St
    .field [36] public valuetype T_arri a
    .field [76] public valuetype T_recs Rc
    .field [84] public valuetype T_cset Stc
    .field [120] public void* p
}

.line 0xfeefee

// TYPE record_111 = record;
.class value explicit T_record_111
{
    // alignment = 4
    .size 23
    
    .field [0] public int32 Rx
    .field [4] public uint8 Rc
    .field [8] public int32 Ry
    .field [12] public bool Rb
    .field [13] public valuetype T_string10 Rs
}

.line 0xfeefee

// TYPE record_113 = record;
.class value explicit T_record_113
{
    // alignment = 1
    .size 2
    
    // variable fields selector
    .field [0] public bool Rcastt
    
    // case true = 1
    
    // case false = 0
}

.line 0xfeefee

// TYPE array_116 = array [1 .. 10] of valuetype T_string10;
.class value explicit T_array_116
{
    // elem size = 10
    // alignment = 1
    .size 100

    .field [0] public valuetype T_string10 elem

    .method public valuetype T_string10& ldadr(int32 index)
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
        ldc.i4 10
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

// TYPE set_118 = set of 0 .. 1
.class value explicit T_set_118
{
    .field [0] public uint32 bits0

    .method public void addValue(int32 val)
    {
        // check(value >= 0)
        ldarg val
        ldc.i4 0
        blt badValue
    
        // check(value <= 1)
        ldarg val
        ldc.i4 1
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
        call instance void T_set_118::addValue(int32)
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

// TYPE array_122 = array [1 .. 16] of uint8;
.class value explicit T_array_122
{
    // elem size = 1
    // alignment = 1
    .size 16

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 16)
        ldarg index
        ldc.i4 16
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

    .method public static string arrayToString(valuetype T_array_122)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 16
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

.line 0xfeefee

// TYPE set_123 = set of 0 .. 9
.class value explicit T_set_123
{
    .field [0] public uint32 bits0

    .method public void addValue(int32 val)
    {
        // check(value >= 0)
        ldarg val
        ldc.i4 0
        blt badValue
    
        // check(value <= 9)
        ldarg val
        ldc.i4 9
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
        call instance void T_set_123::addValue(int32)
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

// TYPE set_124 = set of 0 .. 4
.class value explicit T_set_124
{
    .field [0] public uint32 bits0

    .method public void addValue(int32 val)
    {
        // check(value >= 0)
        ldarg val
        ldc.i4 0
        blt badValue
    
        // check(value <= 4)
        ldarg val
        ldc.i4 4
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
        call instance void T_set_124::addValue(int32)
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

// TYPE set_126 = set of 0 .. 6
.class value explicit T_set_126
{
    .field [0] public uint32 bits0

    .method public void addValue(int32 val)
    {
        // check(value >= 0)
        ldarg val
        ldc.i4 0
        blt badValue
    
        // check(value <= 6)
        ldarg val
        ldc.i4 6
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
        call instance void T_set_126::addValue(int32)
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

// TYPE set_129 = set of 1 .. 100
.class value explicit T_set_129
{
    .field [0] public uint32 bits0
    .field [4] public uint32 bits1
    .field [8] public uint32 bits2
    .field [12] public uint32 bits3

    .method public void addValue(int32 val)
    {
        // check(value >= 1)
        ldarg val
        ldc.i4 1
        blt badValue
    
        // check(value <= 100)
        ldarg val
        ldc.i4 100
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
        call instance void T_set_129::addValue(int32)
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
        ldc.i4 16
        initblk
        ret
    
    }
}

.line 0xfeefee

// TYPE set_130 = set of 1 .. 10
.class value explicit T_set_130
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
        call instance void T_set_130::addValue(int32)
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

// TYPE set_132 = set of 1 .. 20
.class value explicit T_set_132
{
    .field [0] public uint32 bits0

    .method public void addValue(int32 val)
    {
        // check(value >= 1)
        ldarg val
        ldc.i4 1
        blt badValue
    
        // check(value <= 20)
        ldarg val
        ldc.i4 20
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
        call instance void T_set_132::addValue(int32)
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

// TYPE record_134 = record;
.class value explicit T_record_134
{
    // alignment = 8
    .size 60
    
    .field [0] public int32 i
    
    // variable fields selector
    .field [4] public int32 Vt
    
    // case vti = 0
        
        .field [8] public int32 Vdi
        .field [12] public int32 a
    
    // case vtb = 1
        
        .field [8] public bool Vdb
        .field [12] public int32 b
    
    // case vtc = 2
        
        .field [8] public uint8 Vdc
        .field [12] public int32 c
    
    // case vte = 3
        
        .field [8] public int32 Vde
        .field [12] public int32 d
    
    // case vtes = 4
        
        .field [8] public int8 Vdes
        .field [12] public int32 e
    
    // case vts = 5
        
        .field [8] public int8 Vds
        .field [12] public int32 f
    
    // case vtr = 6
        
        .field [8] public float64 Vdr
        .field [16] public int32 g
    
    // case vtst = 7
        
        .field [8] public valuetype T_string10 Vdst
        .field [20] public int32 h
    
    // case vta = 8
        
        .field [8] public valuetype T_arri Vda
        .field [48] public int32 j
    
    // case vtrc = 9
        
        .field [8] public valuetype T_recs Vdrc
        .field [16] public int32 k
    
    // case vtstc = 10
        
        .field [8] public valuetype T_cset Vdstc
        .field [40] public int32 l
    
    // case vtp = 11
        
        .field [8] public void* Vdp
        .field [16] public int32 m
}

.line 0xfeefee

// TYPE record_135 = record;
.class value explicit T_record_135
{
    // alignment = 4
    .size 9
    
    // variable fields selector
    .field [0] public bool Vt
    
    // case true = 1
        
        .field [4] public int32 Vi
    
    // case false = 0
        
        .field [1] public bool Vb
}

.line 0xfeefee

// TYPE record_136 = record;
.class value explicit T_record_136
{
    // alignment = 4
    .size 12
    
    // variable fields selector
    .field [0] public int32 Vt
    
    // case one = 0
    // case two = 1
    // case three = 2
    // case four = 3
    // case five = 4
        
        .field [4] public int32 Vi
    
    // case six = 5
    // case seven = 6
    // case eight = 7
    // case nine = 8
    // case ten = 9
        
        .field [4] public bool Vb
}

.line 0xfeefee

// TYPE record_137 = record;
.class value explicit T_record_137
{
    // alignment = 4
    .size 9
    
    // variable fields selector
    .field [0] public int8 Vt
    
    // case three = 2
    // case four = 3
        
        .field [4] public int32 Vi
    
    // case five = 4
    // case six = 5
        
        .field [1] public bool Vb
}

.line 0xfeefee

// TYPE record_138 = record;
.class value explicit T_record_138
{
    // alignment = 4
    .size 9
    
    // variable fields selector
    .field [0] public int8 Vt
    
    // case 10
    // case 11
    // case 12
    // case 13
    // case 14
    // case 15
        
        .field [4] public int32 Vi
    
    // case 16
    // case 17
    // case 18
    // case 19
    // case 20
        
        .field [1] public bool Vb
}

.line 0xfeefee

// TYPE subroutine_259 = procedure^;
.class sealed T_subroutine_259 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke(int32 x, int32 y, uint8 Junk10) runtime managed {}
}

.line 0xfeefee

// TYPE subroutine_260 = function^;
.class sealed T_subroutine_260 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public int32 Invoke(int32 x) runtime managed {}
}

.line 0xfeefee

// TYPE subroutine_261 = procedure^;
.class sealed T_subroutine_261 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke(class T_subroutine_6 Xz) runtime managed {}
}

.line 0xfeefee

// TYPE subroutine_262 = procedure^;
.class sealed T_subroutine_262 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

.line 0xfeefee

// TYPE array_263 = array [1 .. 2] of uint8;
.class value explicit T_array_263
{
    // elem size = 1
    // alignment = 1
    .size 2

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
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
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }

    .method public static string arrayToString(valuetype T_array_263)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 2
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

.line 0xfeefee

// TYPE array_267 = array [1 .. 3] of uint8;
.class value explicit T_array_267
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

    .method public static string arrayToString(valuetype T_array_267)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 3
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

.line 0xfeefee

// TYPE array_274 = array [1 .. 4] of uint8;
.class value explicit T_array_274
{
    // elem size = 1
    // alignment = 1
    .size 4

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 4)
        ldarg index
        ldc.i4 4
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

    .method public static string arrayToString(valuetype T_array_274)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 4
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

.line 0xfeefee

// TYPE array_287 = array [1 .. 5] of uint8;
.class value explicit T_array_287
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

    .method public static string arrayToString(valuetype T_array_287)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 5
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype T_arri a
    .field public static valuetype T_arri Ai
    .field public static valuetype T_arrr Ara
    .field public static valuetype T_rec Arec
    .field public static int32 As
    .field public static valuetype T_array_16 Avb
    .field public static valuetype T_string10 Avc
    .field public static valuetype T_string10 Avcs
    .field public static valuetype T_arri Ave
    .field public static valuetype T_array_21 Aves
    .field public static valuetype T_array_22 Avf
    .field public static valuetype T_arri Avi
    .field public static valuetype T_arri Avi2
    .field public static valuetype T_array_21 Avis
    .field public static valuetype T_array_25 Avp
    .field public static valuetype T_array_26 Avr
    .field public static valuetype T_arrr Avrc
    .field public static valuetype T_array_28 Avs
    .field public static bool Ba
    .field public static bool Bb
    .field public static bool Bc
    .field public static valuetype T_array_29 Bia
    .field public static int32 Bs
    .field public static uint8 Ca
    .field public static valuetype T_array_30 Car
    .field public static uint8 Cb
    .field public static uint8 Cc
    .field public static uint8 Ci
    .field public static valuetype T_array_31 Cia
    .field public static int32 Cnt
    .field public static int32 Cnt2
    .field public static int32 Cs
    .field public static valuetype T_array_30 Csia
    .field public static valuetype T_cset Csta
    .field public static valuetype T_cset Cstb
    .field public static valuetype T_cset Cstc
    .field public static valuetype T_cset Cstd
    .field public static valuetype T_set_34 Cste
    .field public static valuetype T_set_35 Cstf
    .field public static valuetype T_cset Cstg
    .field public static valuetype T_array_37 Da
    .field public static int32 Ds
    .field public static int32 Ea
    .field public static int32 Ei
    .field public static valuetype T_array_39 Eia
    .field public static int32 Es
    .field public static valuetype T_array_40 Esia
    .field public static valuetype [lpcRuntime]LPC.File Fa
    .field public static valuetype [lpcRuntime]LPC.File Fb
    .field public static valuetype [lpcRuntime]LPC.File Fc
    .field public static valuetype [lpcRuntime]LPC.File Fe
    .field public static valuetype [lpcRuntime]LPC.File Fes
    .field public static valuetype [lpcRuntime]LPC.File Fi
    .field public static valuetype [lpcRuntime]LPC.File Fp
    .field public static valuetype [lpcRuntime]LPC.File Fr
    .field public static valuetype [lpcRuntime]LPC.File Frc
    .field public static valuetype [lpcRuntime]LPC.File Fs
    .field public static valuetype [lpcRuntime]LPC.File Fst
    .field public static valuetype [lpcRuntime]LPC.File Fstc
    .field public static valuetype [lpcRuntime]LPC.File Ft
    .field public static int32 Gs
    .field public static int32 Hs
    .field public static int32 i
    .field public static valuetype T_array_54 Iap
    .field public static void* Ip
    .field public static void* Ipa
    .field public static void* Ipb
    .field public static void* Ipc
    .field public static void* Ipd
    .field public static void* Ipe
    .field public static valuetype T_arrim Mdar
    .field public static valuetype T_arrim Mdar2
    .field public static int32 n
    .field public static valuetype T_record_57 Nvr
    .field public static valuetype [lpcRuntime]LPC.File Output
    .field public static valuetype T_prec Parec
    .field public static valuetype T_array_16 Pavb
    .field public static valuetype T_string10 Pavc
    .field public static valuetype T_string10 Pavcs
    .field public static valuetype T_arri Pave
    .field public static valuetype T_array_21 Paves
    .field public static valuetype T_array_22 Pavf
    .field public static valuetype T_arri Pavi
    .field public static valuetype T_array_21 Pavis
    .field public static valuetype T_array_25 Pavp
    .field public static valuetype T_array_26 Pavr
    .field public static valuetype T_arrr Pavrc
    .field public static valuetype T_array_28 Pavs
    .field public static valuetype T_array_29 Pbia
    .field public static valuetype T_array_31 Pcia
    .field public static valuetype T_array_30 Pcsia
    .field public static valuetype T_array_39 Peia
    .field public static valuetype T_array_40 Pesia
    .field public static valuetype [lpcRuntime]LPC.File Pfa
    .field public static valuetype [lpcRuntime]LPC.File Pfb
    .field public static valuetype [lpcRuntime]LPC.File Pfc
    .field public static valuetype [lpcRuntime]LPC.File Pfe
    .field public static valuetype [lpcRuntime]LPC.File Pfes
    .field public static valuetype [lpcRuntime]LPC.File Pfi
    .field public static valuetype [lpcRuntime]LPC.File Pfp
    .field public static valuetype [lpcRuntime]LPC.File Pfr
    .field public static valuetype [lpcRuntime]LPC.File Pfrc
    .field public static valuetype [lpcRuntime]LPC.File Pfs
    .field public static valuetype [lpcRuntime]LPC.File Pfst
    .field public static valuetype [lpcRuntime]LPC.File Pfstc
    .field public static void* Pi1
    .field public static void* Pi2
    .field public static void* Pta
    .field public static void* Ptb
    .field public static void* Ptc
    .field public static void* Pte
    .field public static void* Ptes
    .field public static void* Pti
    .field public static void* Pti1
    .field public static void* Ptp
    .field public static void* Ptr
    .field public static void* Ptrc
    .field public static void* Pts
    .field public static void* Ptst
    .field public static void* Ptstc
    .field public static int32 q
    .field public static valuetype T_record_111 r
    .field public static float64 Ra
    .field public static float64 Rb
    .field public static float64 Rc
    .field public static valuetype T_record_113 Rcast
    .field public static int32 Rcastt
    .field public static float64 Rd
    .field public static float64 Re
    .field public static int32 Rn
    .field public static int32 Rndseq
    .field public static void* Rpa
    .field public static valuetype T_string10 s
    .field public static valuetype T_string10 Sa
    .field public static valuetype T_array_116 Sar
    .field public static valuetype T_string10 Sb
    .field public static valuetype T_set_118 Sba
    .field public static valuetype T_set_118 Sbb
    .field public static valuetype T_set_118 Sbc
    .field public static valuetype T_set_118 Sbd
    .field public static valuetype T_set_118 Sbe
    .field public static valuetype T_set_118 Sbf
    .field public static valuetype T_set_118 Sbg
    .field public static valuetype T_string10 Sc
    .field public static valuetype T_set_123 Sena
    .field public static valuetype T_set_123 Senb
    .field public static valuetype T_set_123 Senc
    .field public static valuetype T_set_123 Send
    .field public static valuetype T_set_124 Sene
    .field public static valuetype T_set_123 Senf
    .field public static valuetype T_set_126 Seng
    .field public static int8 Sras
    .field public static int8 Srbs
    .field public static int8 Srcs
    .field public static int8 Srds
    .field public static int8 Sres
    .field public static int8 Srx
    .field public static int8 Sry
    .field public static int8 Srz
    .field public static valuetype T_set_129 Sta
    .field public static valuetype T_set_129 Stb
    .field public static valuetype T_set_129 Stc
    .field public static valuetype T_set_129 Std
    .field public static valuetype T_set_130 Ste
    .field public static valuetype T_set_130 Stf
    .field public static valuetype T_set_132 Stg
    .field public static int32 Sva
    .field public static int32 Svb
    .field public static int32 Svc
    .field public static int32 t
    .field public static int32 Vnum
    .field public static valuetype T_record_134 Vra
    .field public static valuetype T_recv Vrec
    .field public static valuetype T_record_135 Vvrb
    .field public static valuetype T_record_136 Vvre
    .field public static valuetype T_record_137 Vvres
    .field public static valuetype T_record_138 Vvrs
    .field public static int32 x
    .field public static int32 y
    .field public static int32 z
}

.line 398

.method static
void Junk1(int32 z, int32 q)
{
    .maxstack 32

    .locals init(class @junk1 _F)
    
    newobj instance void @junk1::.ctor()
    stloc _F
    
    ldloc _F
    ldarg q
    stfld int32 @junk1::q
    
    ldloc _F
    ldarg z
    stfld int32 @junk1::z

L_Entry:
    .line 402
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int32 @junk1::z
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int32 @junk1::q
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    /* nop */

L_Epilogue:
    ret
}

.line 406

.method static
void Junk2(int32& z)
{
    .maxstack 32

    .locals init(class @junk2 _F,
        int32& pinned $z)
    
    newobj instance void @junk2::.ctor()
    stloc _F
    
    ldarg z
    stloc $z
    
    ldloc _F
    ldarg z
    stfld int32* @junk2::z

L_Entry:
    .line 410
    ldloc _F
    ldfld int32* @junk2::z
    ldloc _F
    ldfld int32* @junk2::z
    ldobj int32
    ldc.i4 1
    add
    stobj int32

L_Epilogue:
    ret
}

.line 414

.method static
void Junk3(valuetype T_string10& p)
{
    .maxstack 32

    .locals init(class @junk3 _F,
        valuetype T_string10& pinned $p)
    
    newobj instance void @junk3::.ctor()
    stloc _F
    
    ldarg p
    stloc $p
    
    ldloc _F
    ldarg p
    stfld valuetype T_string10* @junk3::p

L_Entry:
    .line 418
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld valuetype T_string10* @junk3::p
    ldobj valuetype T_string10
    call string T_string10::arrayToString(valuetype T_string10)
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop

L_Epilogue:
    ret
}

.line 422

.method static
void Junk4(valuetype T_string10 p)
{
    .maxstack 32

    .locals init(class @junk4 _F)
    
    newobj instance void @junk4::.ctor()
    stloc _F
    
    ldloc _F
    ldarg p
    stfld valuetype T_string10 @junk4::p

L_Entry:
    .line 426
    ldloc _F
    ldflda valuetype T_string10 @junk4::p
    ldc.i4 5
    call instance uint8& T_string10::ldadr(int32)
    ldc.i4 63 // '?'
    stobj uint8
    .line 427
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld valuetype T_string10 @junk4::p
    call string T_string10::arrayToString(valuetype T_string10)
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop

L_Epilogue:
    ret
}

.line 431

.method static
int32 Junk5(int32 x)
{
    .maxstack 32

    .locals init(class @junk5 _F)
    
    newobj instance void @junk5::.ctor()
    stloc _F
    
    ldloc _F
    ldarg x
    stfld int32 @junk5::x

L_Entry:
    .line 435
    ldloc _F
    ldloc _F
    ldfld int32 @junk5::x
    ldc.i4 1
    add
    stfld int32 @junk5::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld int32 @junk5::_fnvalue
    ret
}

.line 439

.method static
void Junk6()
{
    .maxstack 32

    .locals init(class @junk6 _F)
    
    newobj instance void @junk6::.ctor()
    stloc _F

L_Entry:
    .line 443
    ldc.i4 1
    newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
    throw

L_Epilogue:
    ret
}

.line 449

.method static
int32 Junk7(int32 a, int32 b, int32 c)
{
    .maxstack 32

    .locals init(class @junk7 _F)
    
    newobj instance void @junk7::.ctor()
    stloc _F
    
    ldloc _F
    ldarg a
    stfld int32 @junk7::a
    
    ldloc _F
    ldarg b
    stfld int32 @junk7::b
    
    ldloc _F
    ldarg c
    stfld int32 @junk7::c

L_Entry:
    .line 455
    ldloc _F
    ldc.i4 1
    stfld int32 @junk7::x
    .line 456
    ldloc _F
    ldc.i4 2
    stfld int32 @junk7::y
    .line 457
    ldloc _F
    ldc.i4 3
    stfld int32 @junk7::z
    .line 458
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int32 @junk7::a
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int32 @junk7::b
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int32 @junk7::c
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 459
    ldloc _F
    ldc.i4 4
    stfld int32 @junk7::a
    .line 460
    ldloc _F
    ldc.i4 5
    stfld int32 @junk7::b
    .line 461
    ldloc _F
    ldc.i4 6
    stfld int32 @junk7::c
    .line 462
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int32 @junk7::c
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int32 @junk7::b
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int32 @junk7::a
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int32 @junk7::z
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int32 @junk7::y
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int32 @junk7::x
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    .line 463
    ldloc _F
    ldc.i4 78
    stfld int32 @junk7::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld int32 @junk7::_fnvalue
    ret
}

.line 467

.method static
void Junk8(int32 a, bool b, uint8 c, int32 e, int8 Es, int8 s, float64 r, valuetype T_string10 St, valuetype T_arri Ar, valuetype T_rec Rc, valuetype T_recv Rv, valuetype T_cset Stc, void* p)
{
    .maxstack 32

    .locals init(
        class @junk8 _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3,
        int32 $tmpEndValue4,
        int32 $tmpIndex5,
        int32 $tmpIndex6,
        uint8 $tmpEndValue7,
        uint8 $tmpIndex8,
        uint8 $tmpIndex9,
        uint8 $tmpEndValue10,
        uint8 $tmpIndex11,
        uint8 $tmpIndex12)
    
    newobj instance void @junk8::.ctor()
    stloc _F
    
    ldloc _F
    ldarg a
    stfld int32 @junk8::a
    
    ldloc _F
    ldarg Ar
    stfld valuetype T_arri @junk8::Ar
    
    ldloc _F
    ldarg b
    stfld bool @junk8::b
    
    ldloc _F
    ldarg c
    stfld uint8 @junk8::c
    
    ldloc _F
    ldarg e
    stfld int32 @junk8::e
    
    ldloc _F
    ldarg Es
    stfld int8 @junk8::Es
    
    ldloc _F
    ldarg p
    stfld void* @junk8::p
    
    ldloc _F
    ldarg r
    stfld float64 @junk8::r
    
    ldloc _F
    ldarg Rc
    stfld valuetype T_rec @junk8::Rc
    
    ldloc _F
    ldarg Rv
    stfld valuetype T_recv @junk8::Rv
    
    ldloc _F
    ldarg s
    stfld int8 @junk8::s
    
    ldloc _F
    ldarg St
    stfld valuetype T_string10 @junk8::St
    
    ldloc _F
    ldarg Stc
    stfld valuetype T_cset @junk8::Stc

L_Entry:
    .line 476
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int32 @junk8::a
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 5
    ldc.i4.0
    ldloc _F
    ldfld bool @junk8::b
    brtrue L_bool_to_string_true_1
    ldstr "false"
    br L_bool_to_string_false_2
L_bool_to_string_true_1:
    ldstr "true"
L_bool_to_string_false_2:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld uint8 @junk8::c
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int32 @junk8::e
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int8 @junk8::Es
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int8 @junk8::s
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 15
    ldc.i4.0
    ldloc _F
    ldfld float64 @junk8::r
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldloc _F
    ldfld valuetype T_string10 @junk8::St
    call string T_string10::arrayToString(valuetype T_string10)
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 478
    ldc.i4 10
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_4
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @junk8::i
L_for_loop_3:
    .line 478
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_arri @junk8::Ar
    ldloc _F
    ldfld int32 @junk8::i
    call instance int32& T_arri::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldloc _F
    ldfld int32 @junk8::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_4
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @junk8::i
    br L_for_loop_3
L_for_end_4:
    pop
    .line 478
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 479
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_rec @junk8::Rc
    ldfld int32 T_rec::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 5
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_rec @junk8::Rc
    ldfld bool T_rec::b
    brtrue L_bool_to_string_true_5
    ldstr "false"
    br L_bool_to_string_false_6
L_bool_to_string_true_5:
    ldstr "true"
L_bool_to_string_false_6:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_rec @junk8::Rc
    ldfld uint8 T_rec::c
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_rec @junk8::Rc
    ldfld int32 T_rec::e
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_rec @junk8::Rc
    ldfld int8 T_rec::Es
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_rec @junk8::Rc
    ldfld int8 T_rec::s
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 15
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_rec @junk8::Rc
    ldfld float64 T_rec::r
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldloc _F
    ldflda valuetype T_rec @junk8::Rc
    ldfld valuetype T_string10 T_rec::St
    call string T_string10::arrayToString(valuetype T_string10)
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 481
    ldc.i4 10
    stloc $tmpEndValue4
    ldc.i4 1
    dup
    ldloc $tmpEndValue4
    bgt L_for_end_8
    stloc $tmpIndex5
    ldloc _F
    ldloc $tmpIndex5
    stfld int32 @junk8::i
L_for_loop_7:
    .line 481
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_rec @junk8::Rc
    ldflda valuetype T_arri T_rec::a
    ldloc _F
    ldfld int32 @junk8::i
    call instance int32& T_arri::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldloc _F
    ldfld int32 @junk8::i
    dup
    ldloc $tmpEndValue4
    beq L_for_end_8
    ldc.i4.1
    add
    stloc $tmpIndex6
    ldloc _F
    ldloc $tmpIndex6
    stfld int32 @junk8::i
    br L_for_loop_7
L_for_end_8:
    pop
    .line 481
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 482
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_rec @junk8::Rc
    ldflda valuetype T_recs T_rec::Rc
    ldfld int32 T_recs::a
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_rec @junk8::Rc
    ldflda valuetype T_recs T_rec::Rc
    ldfld uint8 T_recs::b
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 483
    ldc.i4 106 // 'j'
    stloc $tmpEndValue7
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue7
    bgt L_for_end_10
    stloc $tmpIndex8
    ldloc _F
    ldloc $tmpIndex8
    stfld uint8 @junk8::Ci
L_for_loop_9:
    .line 483
    ldloc _F
    ldflda valuetype T_rec @junk8::Rc
    ldfld valuetype T_cset T_rec::Stc
    ldloc _F
    ldfld uint8 @junk8::Ci
    call bool _SetContains(valuetype T_cset s, int32 val)
    brfalse L_else_11
    .line 483
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld uint8 @junk8::Ci
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_12
L_else_11:
    .line 483
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 95 // '_'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_12:
    ldloc _F
    ldfld uint8 @junk8::Ci
    dup
    ldloc $tmpEndValue7
    beq L_for_end_10
    ldc.i4.1
    add
    stloc $tmpIndex9
    ldloc _F
    ldloc $tmpIndex9
    stfld uint8 @junk8::Ci
    br L_for_loop_9
L_for_end_10:
    pop
    .line 484
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 485
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_rec @junk8::Rc
    ldfld void* T_rec::p
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 486
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_recv @junk8::Rv
    ldfld int32 T_recv::a
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_recv @junk8::Rv
    ldfld uint8 T_recv::b
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 5
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_recv @junk8::Rv
    ldfld bool T_recv::c
    brtrue L_bool_to_string_true_13
    ldstr "false"
    br L_bool_to_string_false_14
L_bool_to_string_true_13:
    ldstr "true"
L_bool_to_string_false_14:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 487
    ldloc _F
    ldflda valuetype T_recv @junk8::Rv
    ldfld bool T_recv::c
    brfalse L_else_15
    .line 487
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_recv @junk8::Rv
    ldfld int32 T_recv::e
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_if_end_16
L_else_15:
    .line 487
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldflda valuetype T_recv @junk8::Rv
    ldfld valuetype T_string10 T_recv::d
    call string T_string10::arrayToString(valuetype T_string10)
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_16:
    .line 488
    ldc.i4 106 // 'j'
    stloc $tmpEndValue10
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue10
    bgt L_for_end_18
    stloc $tmpIndex11
    ldloc _F
    ldloc $tmpIndex11
    stfld uint8 @junk8::Ci
L_for_loop_17:
    .line 488
    ldloc _F
    ldfld valuetype T_cset @junk8::Stc
    ldloc _F
    ldfld uint8 @junk8::Ci
    call bool _SetContains(valuetype T_cset s, int32 val)
    brfalse L_else_19
    .line 488
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld uint8 @junk8::Ci
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_20
L_else_19:
    .line 488
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 95 // '_'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_20:
    ldloc _F
    ldfld uint8 @junk8::Ci
    dup
    ldloc $tmpEndValue10
    beq L_for_end_18
    ldc.i4.1
    add
    stloc $tmpIndex12
    ldloc _F
    ldloc $tmpIndex12
    stfld uint8 @junk8::Ci
    br L_for_loop_17
L_for_end_18:
    pop
    .line 489
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 490
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld void* @junk8::p
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()

L_Epilogue:
    ret
}

.line 494

.method static
void Junk9(class T_subroutine_1 Junk9, class T_subroutine_2 y)
{
    .maxstack 32

    .locals init(class @junk9 _F)
    
    newobj instance void @junk9::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Junk9
    stfld class T_subroutine_1 @junk9::Junk9
    
    ldloc _F
    ldarg y
    stfld class T_subroutine_2 @junk9::y

L_Entry:
    .line 499
    ldloc _F
    ldfld class T_subroutine_1 @junk9::Junk9
    ldc.i4 9834
    ldc.i4 8383
    ldc.i4 106 // 'j'
    call instance void T_subroutine_1::Invoke(int32 Junk9, int32 b, uint8 c)
    .line 500
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld class T_subroutine_2 @junk9::y
    ldc.i4 743
    call instance int32 T_subroutine_2::Invoke(int32 a)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    /* nop */

L_Epilogue:
    ret
}

.line 504

.method static
void Junk10(int32 x, int32 y, uint8 Junk10)
{
    .maxstack 32

    .locals init(class @junk10 _F)
    
    newobj instance void @junk10::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Junk10
    stfld uint8 @junk10::Junk10
    
    ldloc _F
    ldarg x
    stfld int32 @junk10::x
    
    ldloc _F
    ldarg y
    stfld int32 @junk10::y

L_Entry:
    .line 508
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int32 @junk10::x
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int32 @junk10::y
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld uint8 @junk10::Junk10
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    pop

L_Epilogue:
    ret
}

.line 512

.method static
int32 Junk11(int32 x)
{
    .maxstack 32

    .locals init(class @junk11 _F)
    
    newobj instance void @junk11::.ctor()
    stloc _F
    
    ldloc _F
    ldarg x
    stfld int32 @junk11::x

L_Entry:
    .line 516
    ldloc _F
    ldloc _F
    ldfld int32 @junk11::x
    ldc.i4.1
    add
    stfld int32 @junk11::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld int32 @junk11::_fnvalue
    ret
}

.line 520

.method static
void Junk12(class T_subroutine_4 Xq, class T_subroutine_3 q)
{
    .maxstack 32

    .locals init(class @junk12 _F)
    
    newobj instance void @junk12::.ctor()
    stloc _F
    
    ldloc _F
    ldarg q
    stfld class T_subroutine_3 @junk12::q
    
    ldloc _F
    ldarg Xq
    stfld class T_subroutine_4 @junk12::Xq

L_Entry:
    .line 525
    ldloc _F
    ldfld class T_subroutine_4 @junk12::Xq
    ldloc _F
    ldfld class T_subroutine_3 @junk12::q
    call instance void T_subroutine_4::Invoke(class T_subroutine_5 Yq)

L_Epilogue:
    ret
}

.line 529

.method static
void Junk13(class T_subroutine_6 Xz)
{
    .maxstack 32

    .locals init(class @junk13 _F)
    
    newobj instance void @junk13::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Xz
    stfld class T_subroutine_6 @junk13::Xz

L_Entry:
    .line 533
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld class T_subroutine_6 @junk13::Xz
    ldc.i4 941
    call instance int32 T_subroutine_6::Invoke(int32 z)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop

L_Epilogue:
    ret
}

.line 537

.method static
void Junk14()
{
    .maxstack 32

    .locals init(class @junk14 _F)
    
    newobj instance void @junk14::.ctor()
    stloc _F

L_Entry:
    .line 551
    ldloc _F
    ldc.i4 62
    stfld int32 @junk14::i
    .line 552
    ldloc _F
    ldc.i4 76
    stfld int32 @junk14::x
    .line 553
    ldloc _F
    call instance void @junk14::Junk15()

L_Epilogue:
    ret
}

.line 557

.method static
void Junk16()
{
    .maxstack 32

    .locals init(class @junk16 _F)
    
    newobj instance void @junk16::.ctor()
    stloc _F

L_Entry:
    /* nop */

L_Epilogue:
    ret
}

.line 559

.method static
void Junk17(class T_subroutine_7 x, int32 i)
{
    .maxstack 32

    .locals init(class @junk17 _F)
    
    newobj instance void @junk17::.ctor()
    stloc _F
    
    ldloc _F
    ldarg i
    stfld int32 @junk17::i
    
    ldloc _F
    ldarg x
    stfld class T_subroutine_7 @junk17::x

L_Entry:
    .line 571
    ldloc _F
    ldfld class T_subroutine_7 @junk17::x
    call instance void T_subroutine_7::Invoke()
    .line 572
    ldloc _F
    ldfld int32 @junk17::i
    ldc.i4 52
    ceq
    brfalse L_if_end_1
    .line 572
    ldloc _F
    ldftn instance void @junk17::Junk18()
    newobj instance void T_junk17_subroutine_8::.ctor(object, native uint)
    ldc.i4 83
    call void Junk17(class T_subroutine_7 x, int32 i)
L_if_end_1:

L_Epilogue:
    ret
}

.line 578

.method static
void Junk19()
{
    .maxstack 32

    .locals init(class @junk19 _F)
    
    newobj instance void @junk19::.ctor()
    stloc _F

L_Entry:
    .line 587
    .line 587
    ldloc _F
    ldc.i4 1
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stfld void* @junk19::p
    .line 588
    ldloc _F
    ldfld void* @junk19::p
    ldc.i4 97 // 'a'
    stobj uint8
    .line 589
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld void* @junk19::p
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 590
    ldloc _F
    ldfld void* @junk19::p
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 590
    ldloc _F
    ldnull
    stfld void* @junk19::p

L_Epilogue:
    ret
}

.line 596

.method static
int32 Junk20()
{
    .maxstack 32

    .locals init(class @junk20 _F)
    
    newobj instance void @junk20::.ctor()
    stloc _F

L_Entry:
    .line 609
    ldloc _F
    call instance int32 @junk20::Inner()
    stsfld int32 _G::i

L_Epilogue:
    ldloc _F
    ldfld int32 @junk20::_fnvalue
    ret
}

.line 613

.method static
int32 Random(int32 Low, int32 Hi)
{
    .maxstack 32

    .locals init(class @random _F)
    
    newobj instance void @random::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Hi
    stfld int32 @random::Hi
    
    ldloc _F
    ldarg Low
    stfld int32 @random::Low

L_Entry:
    .line 621
    ldloc _F
    ldc.i4 16807 // a 
    ldsfld int32 _G::Rndseq
    ldc.i4 2147483647 // m 
    ldc.i4 16807 // a 
    div
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    mul
    ldc.i4 2147483647 // m 
    ldc.i4 16807 // a 
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    ldsfld int32 _G::Rndseq
    ldc.i4 2147483647 // m 
    ldc.i4 16807 // a 
    div
    div
    mul
    sub
    stfld int32 @random::Gamma
    .line 622
    ldloc _F
    ldfld int32 @random::Gamma
    ldc.i4 0
    cgt
    brfalse L_else_1
    .line 622
    ldloc _F
    ldfld int32 @random::Gamma
    stsfld int32 _G::Rndseq
    br L_if_end_2
L_else_1:
    .line 622
    ldloc _F
    ldfld int32 @random::Gamma
    ldc.i4 2147483647 // m 
    add
    stsfld int32 _G::Rndseq
L_if_end_2:
    .line 623
    ldloc _F
    ldsfld int32 _G::Rndseq
    ldc.i4 2147483647
    ldloc _F
    ldfld int32 @random::Hi
    ldloc _F
    ldfld int32 @random::Low
    sub
    ldc.i4 1
    add
    div
    div
    ldloc _F
    ldfld int32 @random::Low
    add
    stfld int32 @random::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld int32 @random::_fnvalue
    ret
}

.line 0
//================================================================================
// scope: global scope (level : 0)

.line 71

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
        int32 $tmpIndex6,
        int32 $tmpEndValue7,
        int32 $tmpIndex8,
        int32 $tmpSwitchValue9,
        int32 $tmpIndex10,
        int32 $tmpEndValue11,
        int32 $tmpIndex12,
        int32 $tmpIndex13,
        int32 $tmpEndValue14,
        int32 $tmpIndex15,
        int32 $tmpIndex16,
        int32 $tmpEndValue17,
        int32 $tmpIndex18,
        int32 $tmpIndex19,
        int32 $tmpEndValue20,
        int32 $tmpIndex21,
        int32 $tmpIndex22,
        int32 $tmpSwitchValue23,
        uint8 $tmpEndValue24,
        uint8 $tmpIndex25,
        uint8 $tmpIndex26,
        uint8 $tmpEndValue27,
        uint8 $tmpIndex28,
        uint8 $tmpIndex29,
        uint8 $tmpEndValue30,
        uint8 $tmpIndex31,
        uint8 $tmpIndex32,
        uint8 $tmpEndValue33,
        uint8 $tmpIndex34,
        uint8 $tmpIndex35,
        int32 $tmpEndValue36,
        int32 $tmpIndex37,
        int32 $tmpIndex38,
        int32 $tmpEndValue39,
        int32 $tmpIndex40,
        int32 $tmpIndex41,
        uint8 $tmpEndValue42,
        uint8 $tmpIndex43,
        uint8 $tmpSwitchValue44,
        uint8 $tmpIndex45,
        int32 $tmpEndValue46,
        int32 $tmpIndex47,
        int32 $tmpIndex48,
        bool $tmpEndValue49,
        bool $tmpIndex50,
        bool $tmpIndex51,
        bool $tmpEndValue52,
        bool $tmpIndex53,
        bool $tmpIndex54,
        int32 $tmpEndValue55,
        int32 $tmpIndex56,
        int32 $tmpIndex57,
        int32 $tmpEndValue58,
        int32 $tmpIndex59,
        int32 $tmpIndex60,
        int32 $tmpEndValue61,
        int32 $tmpIndex62,
        int32 $tmpIndex63,
        int32 $tmpEndValue64,
        int32 $tmpIndex65,
        int32 $tmpIndex66,
        int32 $tmpEndValue67,
        int32 $tmpIndex68,
        int32 $tmpIndex69,
        int32 $tmpEndValue70,
        int32 $tmpIndex71,
        int32 $tmpIndex72,
        valuetype T_cset $tmpSetLiteral73,
        int32 $tmpEndValue74,
        int32 $tmpIndex75,
        valuetype T_cset $tmpSetLiteral76,
        int32 $tmpIndex77,
        int32 $tmpEndValue78,
        int32 $tmpIndex79,
        int32 $tmpIndex80,
        valuetype T_cset $tmpSetLiteral81,
        valuetype T_cset $tmpSetLiteral82,
        int32 $tmpEndValue83,
        int32 $tmpIndex84,
        int32 $tmpIndex85,
        valuetype T_cset $tmpSetLiteral86,
        valuetype T_cset $tmpSetLiteral87,
        int32 $tmpEndValue88,
        int32 $tmpIndex89,
        int32 $tmpIndex90,
        valuetype T_cset $tmpSetLiteral91,
        valuetype T_cset $tmpSetLiteral92,
        int32 $tmpEndValue93,
        int32 $tmpIndex94,
        int32 $tmpIndex95,
        valuetype T_cset $tmpSetLiteral96,
        valuetype T_cset $tmpSetLiteral97,
        valuetype T_cset $tmpSetLiteral98,
        valuetype T_cset $tmpSetLiteral99,
        valuetype T_cset $tmpSetLiteral100,
        valuetype T_cset $tmpSetLiteral101,
        valuetype T_cset $tmpSetLiteral102,
        valuetype T_cset $tmpSetLiteral103,
        int32 $tmpEndValue104,
        int32 $tmpIndex105,
        int32 $tmpIndex106,
        valuetype T_cset $tmpSetLiteral107,
        valuetype T_cset $tmpSetLiteral108,
        uint8 $tmpEndValue109,
        uint8 $tmpIndex110,
        valuetype T_cset $tmpSetLiteral111,
        uint8 $tmpIndex112,
        uint8 $tmpEndValue113,
        uint8 $tmpIndex114,
        uint8 $tmpIndex115,
        valuetype T_cset $tmpSetLiteral116,
        valuetype T_cset $tmpSetLiteral117,
        uint8 $tmpEndValue118,
        uint8 $tmpIndex119,
        uint8 $tmpIndex120,
        valuetype T_cset $tmpSetLiteral121,
        valuetype T_cset $tmpSetLiteral122,
        uint8 $tmpEndValue123,
        uint8 $tmpIndex124,
        uint8 $tmpIndex125,
        valuetype T_cset $tmpSetLiteral126,
        valuetype T_cset $tmpSetLiteral127,
        uint8 $tmpEndValue128,
        uint8 $tmpIndex129,
        uint8 $tmpIndex130,
        valuetype T_cset $tmpSetLiteral131,
        valuetype T_cset $tmpSetLiteral132,
        valuetype T_cset $tmpSetLiteral133,
        valuetype T_cset $tmpSetLiteral134,
        valuetype T_cset $tmpSetLiteral135,
        valuetype T_cset $tmpSetLiteral136,
        valuetype T_cset $tmpSetLiteral137,
        valuetype T_cset $tmpSetLiteral138,
        uint8 $tmpEndValue139,
        uint8 $tmpIndex140,
        uint8 $tmpIndex141,
        valuetype T_cset $tmpSetLiteral142,
        valuetype T_cset $tmpSetLiteral143,
        int32 $tmpEndValue144,
        int32 $tmpIndex145,
        valuetype T_set_123 $tmpSetLiteral146,
        int32 $tmpIndex147,
        int32 $tmpEndValue148,
        int32 $tmpIndex149,
        int32 $tmpIndex150,
        valuetype T_set_123 $tmpSetLiteral151,
        valuetype T_set_123 $tmpSetLiteral152,
        int32 $tmpEndValue153,
        int32 $tmpIndex154,
        int32 $tmpIndex155,
        valuetype T_set_123 $tmpSetLiteral156,
        valuetype T_set_123 $tmpSetLiteral157,
        int32 $tmpEndValue158,
        int32 $tmpIndex159,
        int32 $tmpIndex160,
        valuetype T_set_123 $tmpSetLiteral161,
        valuetype T_set_123 $tmpSetLiteral162,
        int32 $tmpEndValue163,
        int32 $tmpIndex164,
        int32 $tmpIndex165,
        valuetype T_set_123 $tmpSetLiteral166,
        valuetype T_set_123 $tmpSetLiteral167,
        valuetype T_set_123 $tmpSetLiteral168,
        valuetype T_set_123 $tmpSetLiteral169,
        valuetype T_set_123 $tmpSetLiteral170,
        valuetype T_set_123 $tmpSetLiteral171,
        valuetype T_set_123 $tmpSetLiteral172,
        valuetype T_set_123 $tmpSetLiteral173,
        int32 $tmpEndValue174,
        int32 $tmpIndex175,
        int32 $tmpIndex176,
        valuetype T_set_123 $tmpSetLiteral177,
        valuetype T_set_123 $tmpSetLiteral178,
        valuetype T_cset $tmpSetLiteral179,
        bool $tmpEndValue180,
        bool $tmpIndex181,
        valuetype T_set_118 $tmpSetLiteral182,
        bool $tmpIndex183,
        bool $tmpEndValue184,
        bool $tmpIndex185,
        bool $tmpIndex186,
        valuetype T_set_118 $tmpSetLiteral187,
        valuetype T_set_118 $tmpSetLiteral188,
        bool $tmpEndValue189,
        bool $tmpIndex190,
        bool $tmpIndex191,
        valuetype T_set_118 $tmpSetLiteral192,
        valuetype T_set_118 $tmpSetLiteral193,
        bool $tmpEndValue194,
        bool $tmpIndex195,
        bool $tmpIndex196,
        valuetype T_set_118 $tmpSetLiteral197,
        valuetype T_set_118 $tmpSetLiteral198,
        bool $tmpEndValue199,
        bool $tmpIndex200,
        bool $tmpIndex201,
        valuetype T_set_118 $tmpSetLiteral202,
        valuetype T_set_118 $tmpSetLiteral203,
        valuetype T_set_118 $tmpSetLiteral204,
        valuetype T_set_118 $tmpSetLiteral205,
        valuetype T_set_118 $tmpSetLiteral206,
        valuetype T_set_118 $tmpSetLiteral207,
        valuetype T_set_118 $tmpSetLiteral208,
        valuetype T_set_118 $tmpSetLiteral209,
        bool $tmpEndValue210,
        bool $tmpIndex211,
        bool $tmpIndex212,
        valuetype T_set_118 $tmpSetLiteral213,
        valuetype T_cset $tmpSetLiteral214,
        valuetype T_cset $tmpSetLiteral215,
        int32 $tmpEndValue216,
        int32 $tmpIndex217,
        int32 $tmpIndex218,
        int32 $tmpEndValue219,
        int32 $tmpIndex220,
        int32 $tmpIndex221,
        valuetype T_cset $tmpSetLiteral222,
        uint8 $tmpEndValue223,
        uint8 $tmpIndex224,
        uint8 $tmpIndex225,
        int32 $tmpEndValue226,
        int32 $tmpIndex227,
        int32 $tmpEndValue228,
        int32 $tmpIndex229,
        int32 $tmpIndex230,
        int32 $tmpEndValue231,
        int32 $tmpIndex232,
        int32 $tmpIndex233,
        int32 $tmpEndValue234,
        int32 $tmpIndex235,
        int32 $tmpIndex236,
        int32 $tmpEndValue237,
        int32 $tmpIndex238,
        int32 $tmpIndex239,
        int32 $tmpEndValue240,
        int32 $tmpIndex241,
        int32 $tmpEndValue242,
        int32 $tmpIndex243,
        int32 $tmpIndex244,
        int32 $tmpIndex245,
        int32 $tmpEndValue246,
        int32 $tmpIndex247,
        int32 $tmpIndex248,
        int32 $tmpEndValue249,
        int32 $tmpIndex250,
        int32 $tmpIndex251,
        int32 $tmpEndValue252,
        int32 $tmpIndex253,
        int32 $tmpIndex254,
        int32 $tmpEndValue255,
        int32 $tmpIndex256,
        int32 $tmpIndex257,
        int32 $tmpEndValue258,
        int32 $tmpIndex259,
        int32 $tmpEndValue260,
        int32 $tmpIndex261,
        int32 $tmpIndex262,
        int32 $tmpIndex263,
        int32 $tmpIndex264,
        int32 $tmpEndValue265,
        int32 $tmpIndex266,
        int32 $tmpIndex267,
        int32 $tmpEndValue268,
        int32 $tmpIndex269,
        int32 $tmpEndValue270,
        int32 $tmpIndex271,
        int32 $tmpEndValue272,
        int32 $tmpIndex273,
        int32 $tmpIndex274,
        int32 $tmpEndValue275,
        int32 $tmpIndex276,
        int32 $tmpIndex277,
        int32 $tmpIndex278,
        int32 $tmpIndex279,
        int32 $tmpEndValue280,
        int32 $tmpIndex281,
        int32 $tmpIndex282,
        int32 $tmpEndValue283,
        int32 $tmpIndex284,
        int32 $tmpIndex285,
        int32 $tmpEndValue286,
        int32 $tmpIndex287,
        int32 $tmpIndex288,
        int32 $tmpEndValue289,
        int32 $tmpIndex290,
        int32 $tmpIndex291,
        int32 $tmpEndValue292,
        int32 $tmpIndex293,
        int32 $tmpIndex294,
        int32 $tmpEndValue295,
        int32 $tmpIndex296,
        int32 $tmpIndex297,
        int32 $tmpEndValue298,
        int32 $tmpIndex299,
        int32 $tmpIndex300,
        int32 $tmpEndValue301,
        int32 $tmpIndex302,
        int32 $tmpIndex303,
        int32 $tmpEndValue304,
        int32 $tmpIndex305,
        int32 $tmpIndex306,
        int32 $tmpEndValue307,
        int32 $tmpIndex308,
        int32 $tmpIndex309,
        int32 $tmpEndValue310,
        int32 $tmpIndex311,
        int32 $tmpIndex312,
        int32 $tmpEndValue313,
        int32 $tmpIndex314,
        int32 $tmpIndex315,
        int32 $tmpEndValue316,
        int32 $tmpIndex317,
        int32 $tmpIndex318,
        int32 $tmpEndValue319,
        int32 $tmpIndex320,
        int32 $tmpIndex321,
        int32 $tmpEndValue322,
        int32 $tmpIndex323,
        int32 $tmpIndex324,
        int32 $tmpEndValue325,
        int32 $tmpIndex326,
        int32 $tmpIndex327,
        int32 $tmpEndValue328,
        int32 $tmpIndex329,
        int32 $tmpIndex330,
        int32 $tmpEndValue331,
        int32 $tmpIndex332,
        int32 $tmpIndex333,
        int32 $tmpEndValue334,
        int32 $tmpIndex335,
        int32 $tmpIndex336,
        int32 $tmpEndValue337,
        int32 $tmpIndex338,
        int32 $tmpIndex339,
        int32 $tmpEndValue340,
        int32 $tmpIndex341,
        int32 $tmpIndex342,
        int32 $tmpEndValue343,
        int32 $tmpIndex344,
        int32 $tmpIndex345,
        int32 $tmpEndValue346,
        int32 $tmpIndex347,
        int32 $tmpIndex348,
        int32 $tmpEndValue349,
        int32 $tmpIndex350,
        int32 $tmpIndex351,
        int32 $tmpEndValue352,
        int32 $tmpIndex353,
        int32 $tmpIndex354,
        int32 $tmpEndValue355,
        int32 $tmpIndex356,
        int32 $tmpIndex357,
        int32 $tmpEndValue358,
        int32 $tmpIndex359,
        int32 $tmpIndex360,
        int32 $tmpEndValue361,
        int32 $tmpIndex362,
        int32 $tmpIndex363,
        int32 $tmpEndValue364,
        int32 $tmpIndex365,
        int32 $tmpIndex366,
        int32 $tmpEndValue367,
        int32 $tmpIndex368,
        int32 $tmpIndex369,
        int32 $tmpEndValue370,
        int32 $tmpIndex371,
        int32 $tmpIndex372,
        int32 $tmpEndValue373,
        int32 $tmpIndex374,
        int32 $tmpIndex375,
        int32 $tmpEndValue376,
        int32 $tmpIndex377,
        valuetype T_cset $tmpSetLiteral378,
        int32 $tmpIndex379,
        int32 $tmpEndValue380,
        int32 $tmpIndex381,
        uint8 $tmpEndValue382,
        uint8 $tmpIndex383,
        uint8 $tmpIndex384,
        int32 $tmpIndex385,
        int32 $tmpEndValue386,
        int32 $tmpIndex387,
        valuetype T_cset $tmpSetLiteral388,
        int32 $tmpIndex389,
        int32 $tmpEndValue390,
        int32 $tmpIndex391,
        uint8 $tmpEndValue392,
        uint8 $tmpIndex393,
        uint8 $tmpIndex394,
        int32 $tmpIndex395,
        int32 $tmpEndValue396,
        int32 $tmpIndex397,
        int32 $tmpIndex398,
        int32 $tmpEndValue399,
        int32 $tmpIndex400,
        int32 $tmpIndex401,
        int32 $tmpEndValue402,
        int32 $tmpIndex403,
        int32 $tmpIndex404,
        int32 $tmpEndValue405,
        int32 $tmpIndex406,
        int32 $tmpIndex407,
        int32 $tmpEndValue408,
        int32 $tmpIndex409,
        int32 $tmpIndex410,
        int32 $tmpEndValue411,
        int32 $tmpIndex412,
        int32 $tmpIndex413,
        int32 $tmpEndValue414,
        int32 $tmpIndex415,
        int32 $tmpIndex416,
        int32 $tmpEndValue417,
        int32 $tmpIndex418,
        int32 $tmpIndex419,
        int32 $tmpEndValue420,
        int32 $tmpIndex421,
        int32 $tmpIndex422,
        int32 $tmpEndValue423,
        int32 $tmpIndex424,
        int32 $tmpIndex425,
        int32 $tmpEndValue426,
        int32 $tmpIndex427,
        int32 $tmpIndex428,
        int32 $tmpEndValue429,
        int32 $tmpIndex430,
        int32 $tmpIndex431,
        bool $tmpEndValue432,
        bool $tmpIndex433,
        bool $tmpIndex434,
        bool $tmpEndValue435,
        bool $tmpIndex436,
        bool $tmpIndex437,
        bool $tmpEndValue438,
        bool $tmpIndex439,
        bool $tmpIndex440,
        bool $tmpEndValue441,
        bool $tmpIndex442,
        bool $tmpIndex443,
        uint8 $tmpEndValue444,
        uint8 $tmpIndex445,
        uint8 $tmpIndex446,
        uint8 $tmpEndValue447,
        uint8 $tmpIndex448,
        uint8 $tmpIndex449,
        uint8 $tmpEndValue450,
        uint8 $tmpIndex451,
        uint8 $tmpIndex452,
        uint8 $tmpEndValue453,
        uint8 $tmpIndex454,
        uint8 $tmpIndex455,
        uint8 $tmpEndValue456,
        uint8 $tmpIndex457,
        uint8 $tmpIndex458,
        uint8 $tmpEndValue459,
        uint8 $tmpIndex460,
        uint8 $tmpIndex461,
        uint8 $tmpEndValue462,
        uint8 $tmpIndex463,
        uint8 $tmpIndex464,
        uint8 $tmpEndValue465,
        uint8 $tmpIndex466,
        uint8 $tmpIndex467,
        int32 $tmpEndValue468,
        int32 $tmpIndex469,
        int32 $tmpIndex470,
        int32 $tmpEndValue471,
        int32 $tmpIndex472,
        int32 $tmpIndex473,
        int32 $tmpEndValue474,
        int32 $tmpIndex475,
        int32 $tmpIndex476,
        int32 $tmpEndValue477,
        int32 $tmpIndex478,
        int32 $tmpIndex479,
        int32 $tmpEndValue480,
        int32 $tmpIndex481,
        int32 $tmpIndex482,
        int32 $tmpEndValue483,
        int32 $tmpIndex484,
        int32 $tmpIndex485,
        int32 $tmpEndValue486,
        int32 $tmpIndex487,
        int32 $tmpIndex488,
        int32 $tmpEndValue489,
        int32 $tmpIndex490,
        int32 $tmpIndex491,
        int32 $tmpEndValue492,
        int32 $tmpIndex493,
        int32 $tmpEndValue494,
        int32 $tmpIndex495,
        int32 $tmpIndex496,
        int32 $tmpIndex497,
        int32 $tmpEndValue498,
        int32 $tmpIndex499,
        int32 $tmpEndValue500,
        int32 $tmpIndex501,
        int32 $tmpIndex502,
        int32 $tmpIndex503,
        int32 $tmpEndValue504,
        int32 $tmpIndex505,
        int32 $tmpEndValue506,
        int32 $tmpIndex507,
        int32 $tmpEndValue508,
        int32 $tmpIndex509,
        int32 $tmpEndValue510,
        int32 $tmpIndex511,
        int32 $tmpEndValue512,
        int32 $tmpIndex513,
        int32 $tmpEndValue514,
        int32 $tmpIndex515,
        int32 $tmpIndex516,
        int32 $tmpIndex517,
        int32 $tmpIndex518,
        int32 $tmpIndex519,
        int32 $tmpIndex520,
        int32 $tmpIndex521,
        int32 $tmpEndValue522,
        int32 $tmpIndex523,
        int32 $tmpEndValue524,
        int32 $tmpIndex525,
        int32 $tmpEndValue526,
        int32 $tmpIndex527,
        int32 $tmpEndValue528,
        int32 $tmpIndex529,
        int32 $tmpEndValue530,
        int32 $tmpIndex531,
        int32 $tmpEndValue532,
        int32 $tmpIndex533,
        int32 $tmpIndex534,
        int32 $tmpIndex535,
        int32 $tmpIndex536,
        int32 $tmpIndex537,
        int32 $tmpIndex538,
        int32 $tmpIndex539,
        int32 $tmpEndValue540,
        int32 $tmpIndex541,
        int32 $tmpIndex542,
        int32 $tmpEndValue543,
        int32 $tmpIndex544,
        int32 $tmpIndex545,
        int32 $tmpEndValue546,
        int32 $tmpIndex547,
        int32 $tmpEndValue548,
        int32 $tmpIndex549,
        int32 $tmpEndValue550,
        int32 $tmpIndex551,
        int32 $tmpEndValue552,
        int32 $tmpIndex553,
        int32 $tmpEndValue554,
        int32 $tmpIndex555,
        int32 $tmpEndValue556,
        int32 $tmpIndex557,
        int32 $tmpIndex558,
        int32 $tmpIndex559,
        int32 $tmpIndex560,
        int32 $tmpIndex561,
        int32 $tmpIndex562,
        int32 $tmpIndex563,
        int32 $tmpEndValue564,
        int32 $tmpIndex565,
        int32 $tmpEndValue566,
        int32 $tmpIndex567,
        int32 $tmpEndValue568,
        int32 $tmpIndex569,
        int32 $tmpEndValue570,
        int32 $tmpIndex571,
        int32 $tmpEndValue572,
        int32 $tmpIndex573,
        int32 $tmpEndValue574,
        int32 $tmpIndex575,
        int32 $tmpIndex576,
        int32 $tmpIndex577,
        int32 $tmpIndex578,
        int32 $tmpIndex579,
        int32 $tmpIndex580,
        int32 $tmpIndex581,
        int32 $tmpEndValue582,
        int32 $tmpIndex583,
        int32 $tmpIndex584,
        int8 $tmpSrcIndex585,
        int8 $tmpDstIndex586,
        int32 $tmpEndValue587,
        int32 $tmpIndex588,
        int32 $tmpIndex589,
        int32 $tmpEndValue590,
        int32 $tmpIndex591,
        int32 $tmpIndex592,
        int8 $tmpSrcIndex593,
        int8 $tmpDstIndex594,
        int32 $tmpEndValue595,
        int32 $tmpIndex596,
        int32 $tmpIndex597,
        int32 $tmpEndValue598,
        int32 $tmpIndex599,
        int32 $tmpIndex600,
        int8 $tmpSrcIndex601,
        uint8 $tmpDstIndex602,
        uint8 $tmpEndValue603,
        uint8 $tmpIndex604,
        uint8 $tmpIndex605,
        uint8 $tmpEndValue606,
        uint8 $tmpIndex607,
        uint8 $tmpIndex608,
        uint8 $tmpSrcIndex609,
        int8 $tmpDstIndex610,
        int32 $tmpEndValue611,
        int32 $tmpIndex612,
        int32 $tmpIndex613,
        int32 $tmpEndValue614,
        int32 $tmpIndex615,
        int32 $tmpIndex616,
        valuetype T_cset $tmpSetLiteral617,
        int32 $tmpEndValue618,
        int32 $tmpIndex619,
        int32 $tmpIndex620,
        uint8 $tmpEndValue621,
        uint8 $tmpIndex622,
        uint8 $tmpIndex623,
        int32 $tmpEndValue624,
        int32 $tmpIndex625,
        int32 $tmpIndex626,
        valuetype T_cset $tmpSetLiteral627,
        int32 $tmpEndValue628,
        int32 $tmpIndex629,
        int32 $tmpIndex630,
        uint8 $tmpEndValue631,
        uint8 $tmpIndex632,
        uint8 $tmpIndex633,
        int32 $tmpEndValue634,
        int32 $tmpIndex635,
        int32 $tmpIndex636,
        int32 $tmpEndValue637,
        int32 $tmpIndex638,
        int32 $tmpIndex639,
        valuetype T_cset $tmpSetLiteral640,
        uint8 $tmpEndValue641,
        uint8 $tmpIndex642,
        uint8 $tmpIndex643,
        int32 $tmpEndValue644,
        int32 $tmpIndex645,
        int32 $tmpIndex646,
        int32 $tmpEndValue647,
        int32 $tmpIndex648,
        int32 $tmpIndex649,
        int32 $tmpEndValue650,
        int32 $tmpIndex651,
        int32 $tmpIndex652,
        int32 $tmpEndValue653,
        int32 $tmpIndex654,
        int32 $tmpIndex655,
        int32 $tmpEndValue656,
        int32 $tmpIndex657,
        int32 $tmpIndex658,
        int32 $tmpEndValue659,
        int32 $tmpIndex660,
        int32 $tmpIndex661,
        int32 $tmpEndValue662,
        int32 $tmpIndex663,
        int32 $tmpIndex664,
        int32 $tmpEndValue665,
        int32 $tmpIndex666,
        int32 $tmpIndex667,
        int32 $tmpEndValue668,
        int32 $tmpIndex669,
        int32 $tmpIndex670,
        int32 $tmpEndValue671,
        int32 $tmpIndex672,
        int32 $tmpIndex673,
        uint8 $tmpEndValue674,
        uint8 $tmpIndex675,
        uint8 $tmpIndex676,
        uint8 $tmpEndValue677,
        uint8 $tmpIndex678,
        uint8 $tmpIndex679,
        uint8 $tmpEndValue680,
        uint8 $tmpIndex681,
        uint8 $tmpIndex682,
        uint8 $tmpEndValue683,
        uint8 $tmpIndex684,
        uint8 $tmpIndex685,
        int32 $tmpEndValue686,
        int32 $tmpIndex687,
        int32 $tmpIndex688,
        int32 $tmpEndValue689,
        int32 $tmpIndex690,
        int32 $tmpIndex691,
        int32 $tmpEndValue692,
        int32 $tmpIndex693,
        int32 $tmpIndex694,
        int32 $tmpEndValue695,
        int32 $tmpIndex696,
        int32 $tmpIndex697,
        int32 $tmpEndValue698,
        int32 $tmpIndex699,
        int32 $tmpIndex700,
        int32 $tmpEndValue701,
        int32 $tmpIndex702,
        int32 $tmpIndex703,
        int32 $tmpEndValue704,
        int32 $tmpIndex705,
        int32 $tmpIndex706,
        int32 $tmpEndValue707,
        int32 $tmpIndex708,
        int32 $tmpIndex709,
        int32 $tmpEndValue710,
        int32 $tmpIndex711,
        int32 $tmpIndex712,
        int32 $tmpEndValue713,
        int32 $tmpIndex714,
        int32 $tmpIndex715,
        int32 $tmpEndValue716,
        int32 $tmpIndex717,
        int32 $tmpIndex718,
        int32 $tmpEndValue719,
        int32 $tmpIndex720,
        int32 $tmpIndex721,
        uint8 $tmpEndValue722,
        uint8 $tmpIndex723,
        uint8 $tmpIndex724,
        uint8 $tmpEndValue725,
        uint8 $tmpIndex726,
        uint8 $tmpIndex727,
        uint8 $tmpEndValue728,
        uint8 $tmpIndex729,
        uint8 $tmpIndex730,
        uint8 $tmpEndValue731,
        uint8 $tmpIndex732,
        uint8 $tmpIndex733,
        int32 $tmpEndValue734,
        int32 $tmpIndex735,
        int32 $tmpIndex736,
        int32 $tmpEndValue737,
        int32 $tmpIndex738,
        int32 $tmpIndex739,
        int32 $tmpEndValue740,
        int32 $tmpIndex741,
        int32 $tmpIndex742,
        int32 $tmpEndValue743,
        int32 $tmpIndex744,
        int32 $tmpIndex745,
        int32 $tmpEndValue746,
        int32 $tmpIndex747,
        int32 $tmpIndex748,
        int32 $tmpEndValue749,
        int32 $tmpIndex750,
        int32 $tmpIndex751,
        valuetype T_cset $tmpSetLiteral752,
        valuetype T_cset $tmpSetLiteral753)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    ldc.i4 0
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fa
    ldstr "fa"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fb
    ldstr "fb"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fc
    ldstr "fc"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fe
    ldstr "fe"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fes
    ldstr "fes"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fi
    ldstr "fi"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fp
    ldstr "fp"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fr
    ldstr "fr"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Frc
    ldstr "frc"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fs
    ldstr "fs"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fst
    ldstr "fst"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fstc
    ldstr "fstc"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    ldstr "ft"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfa
    ldstr "pfa"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfb
    ldstr "pfb"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfc
    ldstr "pfc"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfe
    ldstr "pfe"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfes
    ldstr "pfes"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfi
    ldstr "pfi"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfp
    ldstr "pfp"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfr
    ldstr "pfr"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfrc
    ldstr "pfrc"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfs
    ldstr "pfs"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfst
    ldstr "pfst"
    call instance void [lpcRuntime]LPC.File::Init(string)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfstc
    ldstr "pfstc"
    call instance void [lpcRuntime]LPC.File::Init(string)


    ldloca $tmpSetLiteral81
    ldc.i4 1
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral81
    ldc.i4 4
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral81
    ldc.i4 5
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral82
    ldc.i4 2
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral82
    ldc.i4 6
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral82
    ldc.i4 10
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral86
    ldc.i4 1
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral86
    ldc.i4 2
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral86
    ldc.i4 6
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral86
    ldc.i4 5
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral86
    ldc.i4 7
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral87
    ldc.i4 2
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral87
    ldc.i4 6
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral87
    ldc.i4 10
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral91
    ldc.i4 2
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral91
    ldc.i4 4
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral91
    ldc.i4 7
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral91
    ldc.i4 8
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral92
    ldc.i4 1
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral92
    ldc.i4 3
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral92
    ldc.i4 4
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral92
    ldc.i4 8
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral92
    ldc.i4 10
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral96
    ldc.i4 4
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral96
    ldc.i4 6
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral96
    ldc.i4 8
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral96
    ldc.i4 9
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral97
    ldc.i4 1
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral97
    ldc.i4 4
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral97
    ldc.i4 5
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral97
    ldc.i4 9
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral98
    ldc.i4 4
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral98
    ldc.i4 6
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral98
    ldc.i4 8
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral98
    ldc.i4 9
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral99
    ldc.i4 1
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral99
    ldc.i4 2
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral99
    ldc.i4 5
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral99
    ldc.i4 7
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral99
    ldc.i4 10
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral100
    ldc.i4 1
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral100
    ldc.i4 5
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral100
    ldc.i4 10
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral101
    ldc.i4 1
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral101
    ldc.i4 5
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral101
    ldc.i4 10
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral101
    ldc.i4 6
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral102
    ldc.i4 1
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral102
    ldc.i4 2
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral102
    ldc.i4 5
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral102
    ldc.i4 7
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral102
    ldc.i4 10
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral107
    ldc.i4 1
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral107
    ldc.i4 2
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral107
    ldc.i4 5
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral107
    ldc.i4 7
    call instance void T_cset::addValue(int32)


    ldloca $tmpSetLiteral116
    ldc.i4 97 // 'a'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral116
    ldc.i4 99 // 'c'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral116
    ldc.i4 102 // 'f'
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral117
    ldc.i4 99 // 'c'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral117
    ldc.i4 100 // 'd'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral117
    ldc.i4 103 // 'g'
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral121
    ldc.i4 100 // 'd'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral121
    ldc.i4 102 // 'f'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral121
    ldc.i4 104 // 'h'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral121
    ldc.i4 97 // 'a'
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral122
    ldc.i4 97 // 'a'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral122
    ldc.i4 98 // 'b'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral122
    ldc.i4 105 // 'i'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral122
    ldc.i4 104 // 'h'
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral126
    ldc.i4 98 // 'b'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral126
    ldc.i4 100 // 'd'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral126
    ldc.i4 105 // 'i'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral126
    ldc.i4 106 // 'j'
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral127
    ldc.i4 105 // 'i'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral127
    ldc.i4 104 // 'h'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral127
    ldc.i4 100 // 'd'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral127
    ldc.i4 101 // 'e'
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral131
    ldc.i4 98 // 'b'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral131
    ldc.i4 100 // 'd'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral131
    ldc.i4 104 // 'h'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral131
    ldc.i4 106 // 'j'
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral132
    ldc.i4 97 // 'a'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral132
    ldc.i4 100 // 'd'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral132
    ldc.i4 104 // 'h'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral132
    ldc.i4 99 // 'c'
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral133
    ldc.i4 98 // 'b'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral133
    ldc.i4 100 // 'd'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral133
    ldc.i4 104 // 'h'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral133
    ldc.i4 106 // 'j'
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral134
    ldc.i4 97 // 'a'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral134
    ldc.i4 98 // 'b'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral134
    ldc.i4 102 // 'f'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral134
    ldc.i4 103 // 'g'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral134
    ldc.i4 106 // 'j'
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral135
    ldc.i4 97 // 'a'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral135
    ldc.i4 102 // 'f'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral135
    ldc.i4 103 // 'g'
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral136
    ldc.i4 97 // 'a'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral136
    ldc.i4 102 // 'f'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral136
    ldc.i4 103 // 'g'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral136
    ldc.i4 104 // 'h'
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral137
    ldc.i4 97 // 'a'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral137
    ldc.i4 98 // 'b'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral137
    ldc.i4 102 // 'f'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral137
    ldc.i4 103 // 'g'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral137
    ldc.i4 106 // 'j'
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral142
    ldc.i4 97 // 'a'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral142
    ldc.i4 98 // 'b'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral142
    ldc.i4 101 // 'e'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral142
    ldc.i4 102 // 'f'
    call instance void T_cset::addValue(int32)


    ldloca $tmpSetLiteral151
    ldc.i4 0 // one 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral151
    ldc.i4 3 // four 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral151
    ldc.i4 4 // five 
    call instance void T_set_123::addValue(int32)

    ldloca $tmpSetLiteral152
    ldc.i4 1 // two 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral152
    ldc.i4 5 // six 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral152
    ldc.i4 9 // ten 
    call instance void T_set_123::addValue(int32)

    ldloca $tmpSetLiteral156
    ldc.i4 0 // one 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral156
    ldc.i4 1 // two 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral156
    ldc.i4 5 // six 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral156
    ldc.i4 4 // five 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral156
    ldc.i4 6 // seven 
    call instance void T_set_123::addValue(int32)

    ldloca $tmpSetLiteral157
    ldc.i4 1 // two 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral157
    ldc.i4 5 // six 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral157
    ldc.i4 9 // ten 
    call instance void T_set_123::addValue(int32)

    ldloca $tmpSetLiteral161
    ldc.i4 1 // two 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral161
    ldc.i4 3 // four 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral161
    ldc.i4 6 // seven 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral161
    ldc.i4 7 // eight 
    call instance void T_set_123::addValue(int32)

    ldloca $tmpSetLiteral162
    ldc.i4 0 // one 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral162
    ldc.i4 2 // three 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral162
    ldc.i4 3 // four 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral162
    ldc.i4 7 // eight 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral162
    ldc.i4 9 // ten 
    call instance void T_set_123::addValue(int32)

    ldloca $tmpSetLiteral166
    ldc.i4 3 // four 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral166
    ldc.i4 5 // six 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral166
    ldc.i4 7 // eight 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral166
    ldc.i4 8 // nine 
    call instance void T_set_123::addValue(int32)

    ldloca $tmpSetLiteral167
    ldc.i4 0 // one 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral167
    ldc.i4 3 // four 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral167
    ldc.i4 4 // five 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral167
    ldc.i4 8 // nine 
    call instance void T_set_123::addValue(int32)

    ldloca $tmpSetLiteral168
    ldc.i4 3 // four 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral168
    ldc.i4 5 // six 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral168
    ldc.i4 7 // eight 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral168
    ldc.i4 8 // nine 
    call instance void T_set_123::addValue(int32)

    ldloca $tmpSetLiteral169
    ldc.i4 0 // one 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral169
    ldc.i4 1 // two 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral169
    ldc.i4 4 // five 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral169
    ldc.i4 6 // seven 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral169
    ldc.i4 9 // ten 
    call instance void T_set_123::addValue(int32)

    ldloca $tmpSetLiteral170
    ldc.i4 0 // one 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral170
    ldc.i4 4 // five 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral170
    ldc.i4 9 // ten 
    call instance void T_set_123::addValue(int32)

    ldloca $tmpSetLiteral171
    ldc.i4 0 // one 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral171
    ldc.i4 4 // five 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral171
    ldc.i4 9 // ten 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral171
    ldc.i4 5 // six 
    call instance void T_set_123::addValue(int32)

    ldloca $tmpSetLiteral172
    ldc.i4 0 // one 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral172
    ldc.i4 1 // two 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral172
    ldc.i4 4 // five 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral172
    ldc.i4 6 // seven 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral172
    ldc.i4 9 // ten 
    call instance void T_set_123::addValue(int32)

    ldloca $tmpSetLiteral177
    ldc.i4 0 // one 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral177
    ldc.i4 1 // two 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral177
    ldc.i4 4 // five 
    call instance void T_set_123::addValue(int32)

    ldloca $tmpSetLiteral178
    ldc.i4 0 // one 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral178
    ldc.i4 1 // two 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral178
    ldc.i4 4 // five 
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral178
    ldc.i4 6 // seven 
    call instance void T_set_123::addValue(int32)


    ldloca $tmpSetLiteral187
    ldc.i4 0 // (false)
    call instance void T_set_118::addValue(int32)

    ldloca $tmpSetLiteral188
    ldc.i4 1 // (true)
    call instance void T_set_118::addValue(int32)

    ldloca $tmpSetLiteral192
    ldc.i4 0 // (false)
    call instance void T_set_118::addValue(int32)
    ldloca $tmpSetLiteral192
    ldc.i4 1 // (true)
    call instance void T_set_118::addValue(int32)

    ldloca $tmpSetLiteral193
    ldc.i4 0 // (false)
    call instance void T_set_118::addValue(int32)

    ldloca $tmpSetLiteral197
    ldc.i4 1 // (true)
    call instance void T_set_118::addValue(int32)
    ldloca $tmpSetLiteral197
    ldc.i4 0 // (false)
    call instance void T_set_118::addValue(int32)

    ldloca $tmpSetLiteral198
    ldc.i4 1 // (true)
    call instance void T_set_118::addValue(int32)

    ldloca $tmpSetLiteral202
    ldc.i4 1 // (true)
    call instance void T_set_118::addValue(int32)

    ldloca $tmpSetLiteral203
    ldc.i4 0 // (false)
    call instance void T_set_118::addValue(int32)

    ldloca $tmpSetLiteral204
    ldc.i4 1 // (true)
    call instance void T_set_118::addValue(int32)

    ldloca $tmpSetLiteral205
    ldc.i4 1 // (true)
    call instance void T_set_118::addValue(int32)
    ldloca $tmpSetLiteral205
    ldc.i4 0 // (false)
    call instance void T_set_118::addValue(int32)

    ldloca $tmpSetLiteral206
    ldc.i4 0 // (false)
    call instance void T_set_118::addValue(int32)

    ldloca $tmpSetLiteral207
    ldc.i4 1 // (true)
    call instance void T_set_118::addValue(int32)

    ldloca $tmpSetLiteral208
    ldc.i4 0 // (false)
    call instance void T_set_118::addValue(int32)

    ldloca $tmpSetLiteral213
    ldc.i4 1 // (true)
    call instance void T_set_118::addValue(int32)

    ldloca $tmpSetLiteral215
    ldc.i4 3
    ldc.i4 5
    call instance void T_cset::addRange(int32, int32)

    ldloca $tmpSetLiteral222
    ldc.i4 98 // 'b'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral222
    ldc.i4 100 // 'd'
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral222
    ldc.i4 105 // 'i'
    ldc.i4 106 // 'j'
    call instance void T_cset::addRange(int32, int32)

    ldloca $tmpSetLiteral617
    ldc.i4 98 // 'b'
    ldc.i4 101 // 'e'
    call instance void T_cset::addRange(int32, int32)
    ldloca $tmpSetLiteral617
    ldc.i4 105 // 'i'
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral627
    ldc.i4 98 // 'b'
    ldc.i4 101 // 'e'
    call instance void T_cset::addRange(int32, int32)
    ldloca $tmpSetLiteral627
    ldc.i4 105 // 'i'
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral640
    ldc.i4 98 // 'b'
    ldc.i4 103 // 'g'
    call instance void T_cset::addRange(int32, int32)
    ldloca $tmpSetLiteral640
    ldc.i4 105 // 'i'
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral752
    ldc.i4 98 // 'b'
    ldc.i4 101 // 'e'
    call instance void T_cset::addRange(int32, int32)
    ldloca $tmpSetLiteral752
    ldc.i4 105 // 'i'
    call instance void T_cset::addValue(int32)

    ldloca $tmpSetLiteral753
    ldc.i4 97 // 'a'
    ldc.i4 100 // 'd'
    call instance void T_cset::addRange(int32, int32)
    ldloca $tmpSetLiteral753
    ldc.i4 104 // 'h'
    call instance void T_cset::addValue(int32)

L_Entry:
.try
{
    .line 628
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "****************************************************************"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 629
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "***************"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 630
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 631
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "                 TEST SUITE FOR ISO 7185 PASCAL"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 632
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 633
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "                 Copyright (C) 1995 S. A. Moore - All rights "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 634
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "reserved"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 635
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 636
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "****************************************************************"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 637
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "***************"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 638
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 646
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "The following are implementation defined characteristics"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 647
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 648
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Maxint: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 2147483647
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 649
    ldc.i4 2147483647
    stsfld int32 _G::i
    .line 650
    ldc.i4 0
    stsfld int32 _G::x
    .line 651
    br L_while_test_2
L_while_1:
    .line 651
    ldsfld int32 _G::i
    ldc.i4 2
    div
    stsfld int32 _G::i
    .line 651
    ldsfld int32 _G::x
    ldc.i4 1
    add
    stsfld int32 _G::x
L_while_test_2:
    ldsfld int32 _G::i
    ldc.i4 0
    cgt
    brtrue L_while_1
    .line 652
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Bit length of integer without sign bit appears to be: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::x
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 653
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer default output field"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 654
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "         1111111111222222222233333333334"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 655
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "1234567890123456789012345678901234567890"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 656
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 657
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real default output field"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 658
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "         1111111111222222222233333333334"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 659
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "1234567890123456789012345678901234567890"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 660
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.r8 1.20000
    call instance void [lpcRuntime]LPC.File::Write(float64)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 661
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean default output field"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 662
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "         1111111111222222222233333333334"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 663
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "1234567890123456789012345678901234567890"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 664
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 0 // (false)
    brtrue L_bool_to_string_true_3
    ldstr "false"
    br L_bool_to_string_false_4
L_bool_to_string_true_3:
    ldstr "true"
L_bool_to_string_false_4:
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 665
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1 // (true)
    brtrue L_bool_to_string_true_5
    ldstr "false"
    br L_bool_to_string_false_6
L_bool_to_string_true_5:
    ldstr "true"
L_bool_to_string_false_6:
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 666
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Char default output field"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 667
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "         1111111111222222222233333333334"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 668
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "1234567890123456789012345678901234567890"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 669
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 97 // 'a'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 670
    ldc.i4 97 // 'a'
    ldc.i4 97
    ceq
    dup
    brfalse L_AND_shortcut_8
    pop
    ldc.i4 40 // '('
    ldc.i4 40
    ceq
L_AND_shortcut_8:
    dup
    brfalse L_AND_shortcut_7
    pop
    ldc.i4 94 // '^'
    ldc.i4 94
    ceq
L_AND_shortcut_7:
    brfalse L_else_9
    .line 671
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Appears to be ASCII"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_if_end_10
L_else_9:
    .line 673
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Appears to not be ASCII"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_10:
    .line 681
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 682
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "******************* Control structures tests *******************"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 683
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 684
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Control1: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 685
    ldc.i4 10
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_12
    stloc $tmpIndex2
    ldloc $tmpIndex2
    stsfld int32 _G::i
L_for_loop_11:
    .line 685
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_12
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc $tmpIndex3
    stsfld int32 _G::i
    br L_for_loop_11
L_for_end_12:
    pop
    .line 686
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 1 2 3 4 5 6 7 8 9 10"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 687
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Control2: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 688
    ldc.i4 1
    stloc $tmpEndValue4
    ldc.i4 10
    dup
    ldloc $tmpEndValue4
    blt L_for_end_14
    stloc $tmpIndex5
    ldloc $tmpIndex5
    stsfld int32 _G::i
L_for_loop_13:
    .line 688
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue4
    beq L_for_end_14
    ldc.i4.1
    sub
    stloc $tmpIndex6
    ldloc $tmpIndex6
    stsfld int32 _G::i
    br L_for_loop_13
L_for_end_14:
    pop
    .line 689
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 10 9 8 7 6 5 4 3 2 1"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 690
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Control3: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 691
    ldc.i4 1
    stsfld int32 _G::i
    .line 692
    br L_while_test_16
L_while_15:
    .line 692
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 692
    ldsfld int32 _G::i
    ldc.i4 1
    add
    stsfld int32 _G::i
L_while_test_16:
    ldsfld int32 _G::i
    ldc.i4 10
    cgt
    ldc.i4.0
    ceq
    brtrue L_while_15
    .line 693
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 1 2 3 4 5 6 7 8 9 10"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 694
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Control4: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 695
    ldc.i4 1
    stsfld int32 _G::i
    .line 695
L_repeat_17:
    .line 695
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 695
    ldsfld int32 _G::i
    ldc.i4 1
    add
    stsfld int32 _G::i
    ldsfld int32 _G::i
    ldc.i4 10
    cgt
    brfalse L_repeat_17
    .line 696
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 1 2 3 4 5 6 7 8 9 10"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 697
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Control5: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 698
    ldc.i4 1
    stsfld int32 _G::i
    .line 699
L_1:
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 699
    ldsfld int32 _G::i
    ldc.i4 1
    add
    stsfld int32 _G::i
    .line 699
    ldsfld int32 _G::i
    ldc.i4 10
    cgt
    ldc.i4.0
    ceq
    brfalse L_if_end_18
    .line 699
    br L_1
L_if_end_18:
    .line 700
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 1 2 3 4 5 6 7 8 9 10"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 701
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Control6: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 702
    ldc.i4 1 // (true)
    brfalse L_else_19
    .line 702
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "yes"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_if_end_20
L_else_19:
    .line 702
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "no"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_20:
    .line 703
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b yes"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 704
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Control7: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 705
    ldc.i4 0 // (false)
    brfalse L_else_21
    .line 705
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "no"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_if_end_22
L_else_21:
    .line 705
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "yes"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_22:
    .line 706
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b yes"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 707
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Control8: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 708
    ldc.i4 1 // (true)
    brfalse L_if_end_23
    .line 708
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "yes "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_23:
    .line 708
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "stop"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 709
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b yes stop"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 710
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Control9: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 711
    ldc.i4 0 // (false)
    brfalse L_if_end_24
    .line 711
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "no "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_24:
    .line 711
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "stop"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 712
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b stop"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 713
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Control10: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 714
    ldc.i4 10
    stloc $tmpEndValue7
    ldc.i4 1
    dup
    ldloc $tmpEndValue7
    bgt L_for_end_26
    stloc $tmpIndex8
    ldloc $tmpIndex8
    stsfld int32 _G::i
L_for_loop_25:
    .line 715
    ldsfld int32 _G::i
    stloc $tmpSwitchValue9
    ldloc $tmpSwitchValue9
    ldc.i4 1
    bne.un L_check_case_28
    .line 716
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "one "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_27
L_check_case_28:
    ldloc $tmpSwitchValue9
    ldc.i4 2
    bne.un L_check_case_29
    .line 717
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "two "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_27
L_check_case_29:
    ldloc $tmpSwitchValue9
    ldc.i4 3
    bne.un L_check_case_30
    .line 718
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "three "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_27
L_check_case_30:
    ldloc $tmpSwitchValue9
    ldc.i4 4
    bne.un L_check_case_31
    .line 719
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "four "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_27
L_check_case_31:
    ldloc $tmpSwitchValue9
    ldc.i4 5
    bne.un L_check_case_32
    .line 720
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "five "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_27
L_check_case_32:
    ldloc $tmpSwitchValue9
    ldc.i4 6
    bne.un L_check_case_33
    .line 721
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "six "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_27
L_check_case_33:
    ldloc $tmpSwitchValue9
    ldc.i4 7
    bne.un L_check_case_34
    .line 722
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "seven "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_27
L_check_case_34:
    ldloc $tmpSwitchValue9
    ldc.i4 8
    bne.un L_check_case_35
    .line 723
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "eight "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_27
L_check_case_35:
    ldloc $tmpSwitchValue9
    ldc.i4 9
    beq L_case_36
    ldloc $tmpSwitchValue9
    ldc.i4 10
    beq L_case_36
    br L_case_end_27
L_case_36:
    .line 724
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "nine-ten "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_case_end_27:
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue7
    beq L_for_end_26
    ldc.i4.1
    add
    stloc $tmpIndex10
    ldloc $tmpIndex10
    stsfld int32 _G::i
    br L_for_loop_25
L_for_end_26:
    pop
    .line 727
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 728
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Control10: s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 729
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "one two three four five "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 730
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "six seven eight nine-ten nine-ten"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 731
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Control11: start "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 732
    call void Junk6()
    .line 733
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "!! BAD !!"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 734
L_2:
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "stop s/b start stop"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 735
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Control12: start "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 736
    br L_3
    .line 737
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "!! BAD !!"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 738
L_3:
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "stop s/b start stop"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 739
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Control13: start "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 741
    ldc.i4 10
    stsfld int32 _G::i
    .line 742
    ldsfld int32 _G::i
    stloc $tmpEndValue11
    ldc.i4 1
    dup
    ldloc $tmpEndValue11
    bgt L_for_end_38
    stloc $tmpIndex12
    ldloc $tmpIndex12
    stsfld int32 _G::i
L_for_loop_37:
    .line 742
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 3
    ldc.i4.0
    ldsfld int32 _G::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue11
    beq L_for_end_38
    ldc.i4.1
    add
    stloc $tmpIndex13
    ldloc $tmpIndex13
    stsfld int32 _G::i
    br L_for_loop_37
L_for_end_38:
    pop
    .line 743
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b   1  2  3  4  5  6  7  8  9 10"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 744
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Control14: start "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 746
    ldc.i4 10
    stsfld int32 _G::i
    .line 747
    ldc.i4 1
    stloc $tmpEndValue14
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue14
    blt L_for_end_40
    stloc $tmpIndex15
    ldloc $tmpIndex15
    stsfld int32 _G::i
L_for_loop_39:
    .line 747
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 3
    ldc.i4.0
    ldsfld int32 _G::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue14
    beq L_for_end_40
    ldc.i4.1
    sub
    stloc $tmpIndex16
    ldloc $tmpIndex16
    stsfld int32 _G::i
    br L_for_loop_39
L_for_end_40:
    pop
    .line 748
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b  10  9  8  7  6  5  4  3  2  1"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 749
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Control15: start "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 751
    ldc.i4 9
    stloc $tmpEndValue17
    ldc.i4 0
    dup
    ldloc $tmpEndValue17
    bgt L_for_end_42
    stloc $tmpIndex18
    ldloc $tmpIndex18
    stsfld int32 _G::i
L_for_loop_41:
    .line 751
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 2
    ldc.i4.0
    ldsfld int32 _G::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue17
    beq L_for_end_42
    ldc.i4.1
    add
    stloc $tmpIndex19
    ldloc $tmpIndex19
    stsfld int32 _G::i
    br L_for_loop_41
L_for_end_42:
    pop
    .line 752
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 0 1 2 3 4 5 6 7 8 9"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 753
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Control16: start "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 755
    ldc.i4 0
    stloc $tmpEndValue20
    ldc.i4 9
    dup
    ldloc $tmpEndValue20
    blt L_for_end_44
    stloc $tmpIndex21
    ldloc $tmpIndex21
    stsfld int32 _G::i
L_for_loop_43:
    .line 755
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 2
    ldc.i4.0
    ldsfld int32 _G::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue20
    beq L_for_end_44
    ldc.i4.1
    sub
    stloc $tmpIndex22
    ldloc $tmpIndex22
    stsfld int32 _G::i
    br L_for_loop_43
L_for_end_44:
    pop
    .line 756
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 9 8 7 6 5 4 3 2 1 0"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 758
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Control17: start "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 759
    ldc.i4 10000
    stsfld int32 _G::i
    .line 760
    ldsfld int32 _G::i
    stloc $tmpSwitchValue23
    ldloc $tmpSwitchValue23
    ldc.i4 1
    bne.un L_check_case_46
    .line 761
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "*** bad ***"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_45
L_check_case_46:
    ldloc $tmpSwitchValue23
    ldc.i4 10000
    bne.un L_case_end_45
    .line 762
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "good"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_case_end_45:
    .line 764
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " start s/b good"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 772
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 773
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "******************* Integers *******************"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 774
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 777
    ldc.i4 43
    stsfld int32 _G::x
    .line 777
    ldc.i4 78
    stsfld int32 _G::y
    .line 777
    ldsfld int32 _G::y
    stsfld int32 _G::z
    .line 778
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer1:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::x
    ldsfld int32 _G::y
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 121"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 779
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer2:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::y
    ldsfld int32 _G::x
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 35"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 780
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer3:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::x
    ldsfld int32 _G::y
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 3354"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 781
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer4:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::y
    ldsfld int32 _G::x
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 1"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 782
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer5:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::y
    ldsfld int32 _G::x
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 35"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 783
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer6:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::x
    ldc.i4.1
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 44"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 784
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer7:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::x
    ldc.i4.1
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 42"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 785
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer8:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::x
    dup
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 1849"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 786
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer9:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld int32 _G::y
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldstr " s/b N"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 787
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer10:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::x
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 43"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 788
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer11:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::x
    ldc.i4.1
    and
    brtrue L_bool_to_string_true_47
    ldstr "false"
    br L_bool_to_string_false_48
L_bool_to_string_true_47:
    ldstr "true"
L_bool_to_string_false_48:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 789
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer12:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::y
    ldc.i4.1
    and
    brtrue L_bool_to_string_true_49
    ldstr "false"
    br L_bool_to_string_false_50
L_bool_to_string_true_49:
    ldstr "true"
L_bool_to_string_false_50:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 790
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer13:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::z
    ldsfld int32 _G::y
    ceq
    brtrue L_bool_to_string_true_51
    ldstr "false"
    br L_bool_to_string_false_52
L_bool_to_string_true_51:
    ldstr "true"
L_bool_to_string_false_52:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 791
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer14:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::x
    ldsfld int32 _G::y
    ceq
    brtrue L_bool_to_string_true_53
    ldstr "false"
    br L_bool_to_string_false_54
L_bool_to_string_true_53:
    ldstr "true"
L_bool_to_string_false_54:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 792
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer15:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::x
    ldsfld int32 _G::y
    clt
    brtrue L_bool_to_string_true_55
    ldstr "false"
    br L_bool_to_string_false_56
L_bool_to_string_true_55:
    ldstr "true"
L_bool_to_string_false_56:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 793
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer16:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::y
    ldsfld int32 _G::x
    clt
    brtrue L_bool_to_string_true_57
    ldstr "false"
    br L_bool_to_string_false_58
L_bool_to_string_true_57:
    ldstr "true"
L_bool_to_string_false_58:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 794
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer17:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::y
    ldsfld int32 _G::x
    cgt
    brtrue L_bool_to_string_true_59
    ldstr "false"
    br L_bool_to_string_false_60
L_bool_to_string_true_59:
    ldstr "true"
L_bool_to_string_false_60:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 795
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer18:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::x
    ldsfld int32 _G::y
    cgt
    brtrue L_bool_to_string_true_61
    ldstr "false"
    br L_bool_to_string_false_62
L_bool_to_string_true_61:
    ldstr "true"
L_bool_to_string_false_62:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 796
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer19:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::x
    ldsfld int32 _G::y
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_63
    ldstr "false"
    br L_bool_to_string_false_64
L_bool_to_string_true_63:
    ldstr "true"
L_bool_to_string_false_64:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 797
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer20:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::y
    ldsfld int32 _G::z
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_65
    ldstr "false"
    br L_bool_to_string_false_66
L_bool_to_string_true_65:
    ldstr "true"
L_bool_to_string_false_66:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 798
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer21:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::x
    ldsfld int32 _G::y
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_67
    ldstr "false"
    br L_bool_to_string_false_68
L_bool_to_string_true_67:
    ldstr "true"
L_bool_to_string_false_68:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 799
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer22:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::z
    ldsfld int32 _G::y
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_69
    ldstr "false"
    br L_bool_to_string_false_70
L_bool_to_string_true_69:
    ldstr "true"
L_bool_to_string_false_70:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 800
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer23:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::y
    ldsfld int32 _G::x
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_71
    ldstr "false"
    br L_bool_to_string_false_72
L_bool_to_string_true_71:
    ldstr "true"
L_bool_to_string_false_72:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 801
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer24:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::y
    ldsfld int32 _G::x
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_73
    ldstr "false"
    br L_bool_to_string_false_74
L_bool_to_string_true_73:
    ldstr "true"
L_bool_to_string_false_74:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 802
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer25:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::y
    ldsfld int32 _G::z
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_75
    ldstr "false"
    br L_bool_to_string_false_76
L_bool_to_string_true_75:
    ldstr "true"
L_bool_to_string_false_76:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 803
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer26:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::x
    ldsfld int32 _G::y
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_77
    ldstr "false"
    br L_bool_to_string_false_78
L_bool_to_string_true_77:
    ldstr "true"
L_bool_to_string_false_78:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 806
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer27:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 806
    ldc.i4 546
    stsfld int32 _G::i
    .line 806
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 546"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 807
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer28:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 56
    ldc.i4 34
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 90"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 808
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer29:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 56
    ldc.i4 34
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 22"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 809
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer30:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 56
    ldc.i4 34
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 1904"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 810
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer31:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 56
    ldc.i4 34
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 1"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 811
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer32:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 56
    ldc.i4 34
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 22"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 812
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer33:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 5
    ldc.i4.1
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 6"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 813
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer34:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 5
    ldc.i4.1
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 4"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 814
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer35:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 7
    dup
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 49"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 815
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer36:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 65
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldstr " s/b A"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 816
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer37:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 65
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 65"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 817
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer38:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 768 // tcnst 
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 768"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 818
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer39:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 5
    ldc.i4.1
    and
    brtrue L_bool_to_string_true_79
    ldstr "false"
    br L_bool_to_string_false_80
L_bool_to_string_true_79:
    ldstr "true"
L_bool_to_string_false_80:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 819
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer40:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 8
    ldc.i4.1
    and
    brtrue L_bool_to_string_true_81
    ldstr "false"
    br L_bool_to_string_false_82
L_bool_to_string_true_81:
    ldstr "true"
L_bool_to_string_false_82:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 820
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer41:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 56
    ldc.i4 56
    ceq
    brtrue L_bool_to_string_true_83
    ldstr "false"
    br L_bool_to_string_false_84
L_bool_to_string_true_83:
    ldstr "true"
L_bool_to_string_false_84:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 821
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer42:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 56
    ldc.i4 57
    ceq
    brtrue L_bool_to_string_true_85
    ldstr "false"
    br L_bool_to_string_false_86
L_bool_to_string_true_85:
    ldstr "true"
L_bool_to_string_false_86:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 822
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer43:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 56
    ldc.i4 57
    clt
    brtrue L_bool_to_string_true_87
    ldstr "false"
    br L_bool_to_string_false_88
L_bool_to_string_true_87:
    ldstr "true"
L_bool_to_string_false_88:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 823
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer44:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 57
    ldc.i4 56
    clt
    brtrue L_bool_to_string_true_89
    ldstr "false"
    br L_bool_to_string_false_90
L_bool_to_string_true_89:
    ldstr "true"
L_bool_to_string_false_90:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 824
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer45:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 57
    ldc.i4 56
    cgt
    brtrue L_bool_to_string_true_91
    ldstr "false"
    br L_bool_to_string_false_92
L_bool_to_string_true_91:
    ldstr "true"
L_bool_to_string_false_92:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 825
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer46:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 56
    ldc.i4 57
    cgt
    brtrue L_bool_to_string_true_93
    ldstr "false"
    br L_bool_to_string_false_94
L_bool_to_string_true_93:
    ldstr "true"
L_bool_to_string_false_94:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 826
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer47:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 56
    ldc.i4 57
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_95
    ldstr "false"
    br L_bool_to_string_false_96
L_bool_to_string_true_95:
    ldstr "true"
L_bool_to_string_false_96:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 827
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer48:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 56
    ldc.i4 56
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_97
    ldstr "false"
    br L_bool_to_string_false_98
L_bool_to_string_true_97:
    ldstr "true"
L_bool_to_string_false_98:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 828
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer49:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 55
    ldc.i4 500
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_99
    ldstr "false"
    br L_bool_to_string_false_100
L_bool_to_string_true_99:
    ldstr "true"
L_bool_to_string_false_100:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 829
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer50:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 67
    ldc.i4 67
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_101
    ldstr "false"
    br L_bool_to_string_false_102
L_bool_to_string_true_101:
    ldstr "true"
L_bool_to_string_false_102:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 830
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer51:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 56
    ldc.i4 33
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_103
    ldstr "false"
    br L_bool_to_string_false_104
L_bool_to_string_true_103:
    ldstr "true"
L_bool_to_string_false_104:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 831
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer52:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 645
    ldc.i4 4
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_105
    ldstr "false"
    br L_bool_to_string_false_106
L_bool_to_string_true_105:
    ldstr "true"
L_bool_to_string_false_106:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 832
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer53:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 23
    ldc.i4 23
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_107
    ldstr "false"
    br L_bool_to_string_false_108
L_bool_to_string_true_107:
    ldstr "true"
L_bool_to_string_false_108:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 833
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer54:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 45
    ldc.i4 123
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_109
    ldstr "false"
    br L_bool_to_string_false_110
L_bool_to_string_true_109:
    ldstr "true"
L_bool_to_string_false_110:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 836
    ldc.i4 14
    neg
    stsfld int32 _G::As
    .line 837
    ldc.i4 32
    neg
    stsfld int32 _G::Bs
    .line 838
    ldc.i4 14
    neg
    stsfld int32 _G::Cs
    .line 839
    ldc.i4 20
    stsfld int32 _G::Ds
    .line 840
    ldc.i4 15
    neg
    stsfld int32 _G::Es
    .line 841
    ldc.i4 2147483647
    stsfld int32 _G::Gs
    .line 842
    ldc.i4 -2147483647 // mmaxint 
    stsfld int32 _G::Hs
    .line 843
    ldc.i4 2147483647
    neg
    dup
    ldc.i4 -2147483647
    ldc.i4 2147483647
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Vnum
    .line 844
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer55:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::As
    ldsfld int32 _G::Ds
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 6"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 845
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer56:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Ds
    ldsfld int32 _G::As
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 6"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 846
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer57:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Bs
    ldsfld int32 _G::Ds
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -12"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 847
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer58:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::As
    ldsfld int32 _G::Bs
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -46"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 848
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer59:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Ds
    ldsfld int32 _G::As
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 34"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 849
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer60:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Bs
    ldsfld int32 _G::Ds
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -52"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 850
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer61:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Bs
    ldsfld int32 _G::As
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -18"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 851
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer62:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Ds
    ldsfld int32 _G::As
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -280"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 852
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer63:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::As
    ldsfld int32 _G::Ds
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -280"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 853
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer64:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::As
    ldsfld int32 _G::Bs
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 448"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 854
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer65:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Ds
    ldsfld int32 _G::As
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -1"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 855
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer66:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Bs
    ldsfld int32 _G::Ds
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -1"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 856
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer67:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Bs
    ldsfld int32 _G::As
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 2"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 857
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer68:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::As
    ldc.i4.1
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -13"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 858
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer69:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Bs
    ldc.i4.1
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -33"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 859
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer70: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::As
    dup
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 196"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 860
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer71:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::As
    ldc.i4.1
    and
    brtrue L_bool_to_string_true_111
    ldstr "false"
    br L_bool_to_string_false_112
L_bool_to_string_true_111:
    ldstr "true"
L_bool_to_string_false_112:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 861
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer72:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Es
    ldc.i4.1
    and
    brtrue L_bool_to_string_true_113
    ldstr "false"
    br L_bool_to_string_false_114
L_bool_to_string_true_113:
    ldstr "true"
L_bool_to_string_false_114:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 862
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer73:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::As
    ldsfld int32 _G::Cs
    ceq
    brtrue L_bool_to_string_true_115
    ldstr "false"
    br L_bool_to_string_false_116
L_bool_to_string_true_115:
    ldstr "true"
L_bool_to_string_false_116:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 863
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer74:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::As
    ldsfld int32 _G::Bs
    ceq
    brtrue L_bool_to_string_true_117
    ldstr "false"
    br L_bool_to_string_false_118
L_bool_to_string_true_117:
    ldstr "true"
L_bool_to_string_false_118:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 864
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer75:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::As
    ldsfld int32 _G::Bs
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_119
    ldstr "false"
    br L_bool_to_string_false_120
L_bool_to_string_true_119:
    ldstr "true"
L_bool_to_string_false_120:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 865
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer76:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::As
    ldsfld int32 _G::Cs
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_121
    ldstr "false"
    br L_bool_to_string_false_122
L_bool_to_string_true_121:
    ldstr "true"
L_bool_to_string_false_122:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 866
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer77:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::As
    ldsfld int32 _G::Ds
    clt
    brtrue L_bool_to_string_true_123
    ldstr "false"
    br L_bool_to_string_false_124
L_bool_to_string_true_123:
    ldstr "true"
L_bool_to_string_false_124:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 867
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer78:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Bs
    ldsfld int32 _G::As
    clt
    brtrue L_bool_to_string_true_125
    ldstr "false"
    br L_bool_to_string_false_126
L_bool_to_string_true_125:
    ldstr "true"
L_bool_to_string_false_126:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 868
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer79:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Ds
    ldsfld int32 _G::As
    clt
    brtrue L_bool_to_string_true_127
    ldstr "false"
    br L_bool_to_string_false_128
L_bool_to_string_true_127:
    ldstr "true"
L_bool_to_string_false_128:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 869
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer80:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::As
    ldsfld int32 _G::Bs
    clt
    brtrue L_bool_to_string_true_129
    ldstr "false"
    br L_bool_to_string_false_130
L_bool_to_string_true_129:
    ldstr "true"
L_bool_to_string_false_130:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 870
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer81:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Ds
    ldsfld int32 _G::As
    cgt
    brtrue L_bool_to_string_true_131
    ldstr "false"
    br L_bool_to_string_false_132
L_bool_to_string_true_131:
    ldstr "true"
L_bool_to_string_false_132:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 871
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer82:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::As
    ldsfld int32 _G::Bs
    cgt
    brtrue L_bool_to_string_true_133
    ldstr "false"
    br L_bool_to_string_false_134
L_bool_to_string_true_133:
    ldstr "true"
L_bool_to_string_false_134:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 872
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer83:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::As
    ldsfld int32 _G::Ds
    cgt
    brtrue L_bool_to_string_true_135
    ldstr "false"
    br L_bool_to_string_false_136
L_bool_to_string_true_135:
    ldstr "true"
L_bool_to_string_false_136:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 873
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer84:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Bs
    ldsfld int32 _G::As
    cgt
    brtrue L_bool_to_string_true_137
    ldstr "false"
    br L_bool_to_string_false_138
L_bool_to_string_true_137:
    ldstr "true"
L_bool_to_string_false_138:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 874
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer85:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::As
    ldsfld int32 _G::Ds
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_139
    ldstr "false"
    br L_bool_to_string_false_140
L_bool_to_string_true_139:
    ldstr "true"
L_bool_to_string_false_140:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 875
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer86:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Bs
    ldsfld int32 _G::As
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_141
    ldstr "false"
    br L_bool_to_string_false_142
L_bool_to_string_true_141:
    ldstr "true"
L_bool_to_string_false_142:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 876
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer87:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::As
    ldsfld int32 _G::Cs
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_143
    ldstr "false"
    br L_bool_to_string_false_144
L_bool_to_string_true_143:
    ldstr "true"
L_bool_to_string_false_144:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 877
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer88:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Ds
    ldsfld int32 _G::As
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_145
    ldstr "false"
    br L_bool_to_string_false_146
L_bool_to_string_true_145:
    ldstr "true"
L_bool_to_string_false_146:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 878
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer89:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::As
    ldsfld int32 _G::Bs
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_147
    ldstr "false"
    br L_bool_to_string_false_148
L_bool_to_string_true_147:
    ldstr "true"
L_bool_to_string_false_148:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 879
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer90:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Ds
    ldsfld int32 _G::As
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_149
    ldstr "false"
    br L_bool_to_string_false_150
L_bool_to_string_true_149:
    ldstr "true"
L_bool_to_string_false_150:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 880
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer91:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::As
    ldsfld int32 _G::Bs
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_151
    ldstr "false"
    br L_bool_to_string_false_152
L_bool_to_string_true_151:
    ldstr "true"
L_bool_to_string_false_152:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 881
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer92:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::As
    ldsfld int32 _G::Cs
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_153
    ldstr "false"
    br L_bool_to_string_false_154
L_bool_to_string_true_153:
    ldstr "true"
L_bool_to_string_false_154:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 882
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer93:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::As
    ldsfld int32 _G::Ds
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_155
    ldstr "false"
    br L_bool_to_string_false_156
L_bool_to_string_true_155:
    ldstr "true"
L_bool_to_string_false_156:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 883
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer94:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Bs
    ldsfld int32 _G::As
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_157
    ldstr "false"
    br L_bool_to_string_false_158
L_bool_to_string_true_157:
    ldstr "true"
L_bool_to_string_false_158:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 884
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer95:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::As
    dup
    ldc.i4 0
    bge L_abs_question_159
    neg
L_abs_question_159:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 14"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 885
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer96:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Gs
    ldsfld int32 _G::Hs
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 0"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 886
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer97:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Gs
    ldc.i4 2147483647
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 0"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 887
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer98:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Gs
    ldsfld int32 _G::Vnum
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 0"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 890
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer99:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 45
    ldc.i4 30
    neg
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 15"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 891
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer100:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 25
    neg
    ldc.i4 70
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 45"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 892
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer101: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 62
    neg
    ldc.i4 23
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -39"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 893
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer102: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 20
    neg
    ldc.i4 15
    neg
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -35"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 894
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer103: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 20
    ldc.i4 14
    neg
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 34"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 895
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer104: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 34
    neg
    ldc.i4 14
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -48"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 896
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer105: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 56
    neg
    ldc.i4 12
    neg
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -44"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 897
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer106: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 5
    ldc.i4 4
    neg
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -20"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 898
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer107: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 18
    neg
    ldc.i4 7
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -126"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 899
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer108: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 40
    neg
    ldc.i4 13
    neg
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 520"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 900
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer109: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 30
    ldc.i4 5
    neg
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -6"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 901
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer110: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 50
    neg
    ldc.i4 2
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -25"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 902
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer111: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 20
    neg
    ldc.i4 4
    neg
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 5"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 903
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer112: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 10
    neg
    ldc.i4.1
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -9"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 904
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer113: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 1
    neg
    ldc.i4.1
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 0"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 905
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer114: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 1
    neg
    ldc.i4.1
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -2"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 906
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer115: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 8
    neg
    dup
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 64"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 907
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer116: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 54
    neg
    ldc.i4.1
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -55"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 908
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer117: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 20
    neg
    ldc.i4.1
    and
    brtrue L_bool_to_string_true_160
    ldstr "false"
    br L_bool_to_string_false_161
L_bool_to_string_true_160:
    ldstr "true"
L_bool_to_string_false_161:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 909
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer118: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 15
    neg
    ldc.i4.1
    and
    brtrue L_bool_to_string_true_162
    ldstr "false"
    br L_bool_to_string_false_163
L_bool_to_string_true_162:
    ldstr "true"
L_bool_to_string_false_163:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 910
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer119: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 5
    neg
    ldc.i4 5
    neg
    ceq
    brtrue L_bool_to_string_true_164
    ldstr "false"
    br L_bool_to_string_false_165
L_bool_to_string_true_164:
    ldstr "true"
L_bool_to_string_false_165:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 911
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer120: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 5
    neg
    ldc.i4 5
    ceq
    brtrue L_bool_to_string_true_166
    ldstr "false"
    br L_bool_to_string_false_167
L_bool_to_string_true_166:
    ldstr "true"
L_bool_to_string_false_167:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 912
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer121: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 21
    neg
    ldc.i4 40
    neg
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_168
    ldstr "false"
    br L_bool_to_string_false_169
L_bool_to_string_true_168:
    ldstr "true"
L_bool_to_string_false_169:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 913
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer122: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 21
    neg
    ldc.i4 21
    neg
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_170
    ldstr "false"
    br L_bool_to_string_false_171
L_bool_to_string_true_170:
    ldstr "true"
L_bool_to_string_false_171:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 914
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer123: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 3
    neg
    ldc.i4 5
    clt
    brtrue L_bool_to_string_true_172
    ldstr "false"
    br L_bool_to_string_false_173
L_bool_to_string_true_172:
    ldstr "true"
L_bool_to_string_false_173:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 915
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer124: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 32
    neg
    ldc.i4 20
    neg
    clt
    brtrue L_bool_to_string_true_174
    ldstr "false"
    br L_bool_to_string_false_175
L_bool_to_string_true_174:
    ldstr "true"
L_bool_to_string_false_175:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 916
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer125: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 20
    ldc.i4 20
    neg
    clt
    brtrue L_bool_to_string_true_176
    ldstr "false"
    br L_bool_to_string_false_177
L_bool_to_string_true_176:
    ldstr "true"
L_bool_to_string_false_177:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 917
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer126: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 15
    neg
    ldc.i4 40
    neg
    clt
    brtrue L_bool_to_string_true_178
    ldstr "false"
    br L_bool_to_string_false_179
L_bool_to_string_true_178:
    ldstr "true"
L_bool_to_string_false_179:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 918
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer127: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 70
    ldc.i4 4
    neg
    cgt
    brtrue L_bool_to_string_true_180
    ldstr "false"
    br L_bool_to_string_false_181
L_bool_to_string_true_180:
    ldstr "true"
L_bool_to_string_false_181:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 919
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer128: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 23
    neg
    ldc.i4 34
    neg
    cgt
    brtrue L_bool_to_string_true_182
    ldstr "false"
    br L_bool_to_string_false_183
L_bool_to_string_true_182:
    ldstr "true"
L_bool_to_string_false_183:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 920
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer129: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 5
    neg
    ldc.i4 5
    cgt
    brtrue L_bool_to_string_true_184
    ldstr "false"
    br L_bool_to_string_false_185
L_bool_to_string_true_184:
    ldstr "true"
L_bool_to_string_false_185:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 921
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer130: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 60
    neg
    ldc.i4 59
    neg
    cgt
    brtrue L_bool_to_string_true_186
    ldstr "false"
    br L_bool_to_string_false_187
L_bool_to_string_true_186:
    ldstr "true"
L_bool_to_string_false_187:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 922
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer131: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 12
    neg
    ldc.i4 4
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_188
    ldstr "false"
    br L_bool_to_string_false_189
L_bool_to_string_true_188:
    ldstr "true"
L_bool_to_string_false_189:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 923
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer132: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 14
    neg
    ldc.i4 5
    neg
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_190
    ldstr "false"
    br L_bool_to_string_false_191
L_bool_to_string_true_190:
    ldstr "true"
L_bool_to_string_false_191:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 924
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer133: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 7
    neg
    ldc.i4 7
    neg
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_192
    ldstr "false"
    br L_bool_to_string_false_193
L_bool_to_string_true_192:
    ldstr "true"
L_bool_to_string_false_193:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 925
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer134: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 5
    ldc.i4 5
    neg
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_194
    ldstr "false"
    br L_bool_to_string_false_195
L_bool_to_string_true_194:
    ldstr "true"
L_bool_to_string_false_195:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 926
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer135: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 10
    neg
    ldc.i4 20
    neg
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_196
    ldstr "false"
    br L_bool_to_string_false_197
L_bool_to_string_true_196:
    ldstr "true"
L_bool_to_string_false_197:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 927
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer136: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 9
    ldc.i4 3
    neg
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_198
    ldstr "false"
    br L_bool_to_string_false_199
L_bool_to_string_true_198:
    ldstr "true"
L_bool_to_string_false_199:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 928
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer137: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 4
    neg
    ldc.i4 10
    neg
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_200
    ldstr "false"
    br L_bool_to_string_false_201
L_bool_to_string_true_200:
    ldstr "true"
L_bool_to_string_false_201:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 929
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer138: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 13
    neg
    ldc.i4 13
    neg
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_202
    ldstr "false"
    br L_bool_to_string_false_203
L_bool_to_string_true_202:
    ldstr "true"
L_bool_to_string_false_203:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 930
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer139: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 6
    neg
    ldc.i4 6
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_204
    ldstr "false"
    br L_bool_to_string_false_205
L_bool_to_string_true_204:
    ldstr "true"
L_bool_to_string_false_205:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 931
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer140: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 20
    neg
    ldc.i4 10
    neg
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_206
    ldstr "false"
    br L_bool_to_string_false_207
L_bool_to_string_true_206:
    ldstr "true"
L_bool_to_string_false_207:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 932
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer141: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 6
    neg
    dup
    ldc.i4 0
    bge L_abs_question_208
    neg
L_abs_question_208:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 6"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 933
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer142: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 -52 // tsncst 
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -52"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 934
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer143: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 -52 // tsncst 
    neg
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 52"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 935
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer144: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 -768 // tsncst2 
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -768"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 936
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer145: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 52 // tsncst3 
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 52"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 937
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer146: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 2147483647
    ldc.i4 -2147483647 // mmaxint 
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 0"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 945
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 946
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "******************* Subranges *******************"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 947
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 950
    ldc.i4 43
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int8 _G::Srx
    .line 950
    ldc.i4 78
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int8 _G::Sry
    .line 950
    ldsfld int8 _G::Sry
    stsfld int8 _G::Srz
    .line 951
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange1:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Srx
    ldsfld int8 _G::Sry
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 121"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 952
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange2:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Sry
    ldsfld int8 _G::Srx
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 35"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 953
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange3:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Srx
    ldsfld int8 _G::Sry
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 3354"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 954
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange4:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Sry
    ldsfld int8 _G::Srx
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 1"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 955
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange5:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Sry
    ldsfld int8 _G::Srx
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 35"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 956
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange6:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Srx
    ldc.i4.1
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 44"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 957
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange7:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Srx
    ldc.i4.1
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 42"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 958
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange8:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld int8 _G::Sry
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldstr " s/b N"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 959
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange9:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Srx
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 43"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 960
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange10:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Srx
    ldc.i4.1
    and
    brtrue L_bool_to_string_true_209
    ldstr "false"
    br L_bool_to_string_false_210
L_bool_to_string_true_209:
    ldstr "true"
L_bool_to_string_false_210:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 961
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange11:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sry
    ldc.i4.1
    and
    brtrue L_bool_to_string_true_211
    ldstr "false"
    br L_bool_to_string_false_212
L_bool_to_string_true_211:
    ldstr "true"
L_bool_to_string_false_212:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 962
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange12:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Srz
    ldsfld int8 _G::Sry
    ceq
    brtrue L_bool_to_string_true_213
    ldstr "false"
    br L_bool_to_string_false_214
L_bool_to_string_true_213:
    ldstr "true"
L_bool_to_string_false_214:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 963
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange13:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Srx
    ldsfld int8 _G::Sry
    ceq
    brtrue L_bool_to_string_true_215
    ldstr "false"
    br L_bool_to_string_false_216
L_bool_to_string_true_215:
    ldstr "true"
L_bool_to_string_false_216:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 964
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange14:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Srx
    ldsfld int8 _G::Sry
    clt
    brtrue L_bool_to_string_true_217
    ldstr "false"
    br L_bool_to_string_false_218
L_bool_to_string_true_217:
    ldstr "true"
L_bool_to_string_false_218:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 965
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange15:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sry
    ldsfld int8 _G::Srx
    clt
    brtrue L_bool_to_string_true_219
    ldstr "false"
    br L_bool_to_string_false_220
L_bool_to_string_true_219:
    ldstr "true"
L_bool_to_string_false_220:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 966
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange16:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sry
    ldsfld int8 _G::Srx
    cgt
    brtrue L_bool_to_string_true_221
    ldstr "false"
    br L_bool_to_string_false_222
L_bool_to_string_true_221:
    ldstr "true"
L_bool_to_string_false_222:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 967
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange17:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Srx
    ldsfld int8 _G::Sry
    cgt
    brtrue L_bool_to_string_true_223
    ldstr "false"
    br L_bool_to_string_false_224
L_bool_to_string_true_223:
    ldstr "true"
L_bool_to_string_false_224:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 968
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange18:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Srx
    ldsfld int8 _G::Sry
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_225
    ldstr "false"
    br L_bool_to_string_false_226
L_bool_to_string_true_225:
    ldstr "true"
L_bool_to_string_false_226:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 969
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange19:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sry
    ldsfld int8 _G::Srz
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_227
    ldstr "false"
    br L_bool_to_string_false_228
L_bool_to_string_true_227:
    ldstr "true"
L_bool_to_string_false_228:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 970
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange20:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Srx
    ldsfld int8 _G::Sry
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_229
    ldstr "false"
    br L_bool_to_string_false_230
L_bool_to_string_true_229:
    ldstr "true"
L_bool_to_string_false_230:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 971
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange21:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Srz
    ldsfld int8 _G::Sry
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_231
    ldstr "false"
    br L_bool_to_string_false_232
L_bool_to_string_true_231:
    ldstr "true"
L_bool_to_string_false_232:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 972
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange22:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sry
    ldsfld int8 _G::Srx
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_233
    ldstr "false"
    br L_bool_to_string_false_234
L_bool_to_string_true_233:
    ldstr "true"
L_bool_to_string_false_234:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 973
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange23:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sry
    ldsfld int8 _G::Srx
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_235
    ldstr "false"
    br L_bool_to_string_false_236
L_bool_to_string_true_235:
    ldstr "true"
L_bool_to_string_false_236:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 974
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange24:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sry
    ldsfld int8 _G::Srz
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_237
    ldstr "false"
    br L_bool_to_string_false_238
L_bool_to_string_true_237:
    ldstr "true"
L_bool_to_string_false_238:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 975
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange25:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Srx
    ldsfld int8 _G::Sry
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_239
    ldstr "false"
    br L_bool_to_string_false_240
L_bool_to_string_true_239:
    ldstr "true"
L_bool_to_string_false_240:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 978
    ldc.i4 14
    neg
    dup
    ldc.i4 -100
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int8 _G::Sras
    .line 979
    ldc.i4 32
    neg
    dup
    ldc.i4 -100
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int8 _G::Srbs
    .line 980
    ldc.i4 14
    neg
    dup
    ldc.i4 -100
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int8 _G::Srcs
    .line 981
    ldc.i4 20
    dup
    ldc.i4 -100
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int8 _G::Srds
    .line 982
    ldc.i4 15
    neg
    dup
    ldc.i4 -100
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int8 _G::Sres
    .line 983
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange26:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Sras
    ldsfld int8 _G::Srds
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 6"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 984
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange27:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Srds
    ldsfld int8 _G::Sras
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 6"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 985
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange28:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Srbs
    ldsfld int8 _G::Srds
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -12"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 986
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange29:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Sras
    ldsfld int8 _G::Srbs
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -46"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 987
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange30:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Srds
    ldsfld int8 _G::Sras
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 34"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 988
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange31:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Srbs
    ldsfld int8 _G::Srds
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -52"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 989
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange32:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Srbs
    ldsfld int8 _G::Sras
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -18"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 990
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange33:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Srds
    ldsfld int8 _G::Sras
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -280"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 991
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange34:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Sras
    ldsfld int8 _G::Srds
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -280"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 992
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange35:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Sras
    ldsfld int8 _G::Srbs
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 448"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 993
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange36:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Srds
    ldsfld int8 _G::Sras
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -1"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 994
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange37:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Srbs
    ldsfld int8 _G::Srds
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -1"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 995
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange38:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Srbs
    ldsfld int8 _G::Sras
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 2"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 996
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange39:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Sras
    ldc.i4.1
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -13"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 997
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange40:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Srbs
    ldc.i4.1
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -33"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 998
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange41:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sras
    ldc.i4.1
    and
    brtrue L_bool_to_string_true_241
    ldstr "false"
    br L_bool_to_string_false_242
L_bool_to_string_true_241:
    ldstr "true"
L_bool_to_string_false_242:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 999
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange42:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sres
    ldc.i4.1
    and
    brtrue L_bool_to_string_true_243
    ldstr "false"
    br L_bool_to_string_false_244
L_bool_to_string_true_243:
    ldstr "true"
L_bool_to_string_false_244:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1000
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange43:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sras
    ldsfld int8 _G::Srcs
    ceq
    brtrue L_bool_to_string_true_245
    ldstr "false"
    br L_bool_to_string_false_246
L_bool_to_string_true_245:
    ldstr "true"
L_bool_to_string_false_246:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1001
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange44:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sras
    ldsfld int8 _G::Srbs
    ceq
    brtrue L_bool_to_string_true_247
    ldstr "false"
    br L_bool_to_string_false_248
L_bool_to_string_true_247:
    ldstr "true"
L_bool_to_string_false_248:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1002
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange45:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sras
    ldsfld int8 _G::Srbs
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_249
    ldstr "false"
    br L_bool_to_string_false_250
L_bool_to_string_true_249:
    ldstr "true"
L_bool_to_string_false_250:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1003
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange46:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sras
    ldsfld int8 _G::Srcs
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_251
    ldstr "false"
    br L_bool_to_string_false_252
L_bool_to_string_true_251:
    ldstr "true"
L_bool_to_string_false_252:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1004
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange47:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sras
    ldsfld int8 _G::Srds
    clt
    brtrue L_bool_to_string_true_253
    ldstr "false"
    br L_bool_to_string_false_254
L_bool_to_string_true_253:
    ldstr "true"
L_bool_to_string_false_254:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1005
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange48:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Srbs
    ldsfld int8 _G::Sras
    clt
    brtrue L_bool_to_string_true_255
    ldstr "false"
    br L_bool_to_string_false_256
L_bool_to_string_true_255:
    ldstr "true"
L_bool_to_string_false_256:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1006
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange49:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Srds
    ldsfld int8 _G::Sras
    clt
    brtrue L_bool_to_string_true_257
    ldstr "false"
    br L_bool_to_string_false_258
L_bool_to_string_true_257:
    ldstr "true"
L_bool_to_string_false_258:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1007
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange50:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sras
    ldsfld int8 _G::Srbs
    clt
    brtrue L_bool_to_string_true_259
    ldstr "false"
    br L_bool_to_string_false_260
L_bool_to_string_true_259:
    ldstr "true"
L_bool_to_string_false_260:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1008
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange51:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Srds
    ldsfld int8 _G::Sras
    cgt
    brtrue L_bool_to_string_true_261
    ldstr "false"
    br L_bool_to_string_false_262
L_bool_to_string_true_261:
    ldstr "true"
L_bool_to_string_false_262:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1009
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange52:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sras
    ldsfld int8 _G::Srbs
    cgt
    brtrue L_bool_to_string_true_263
    ldstr "false"
    br L_bool_to_string_false_264
L_bool_to_string_true_263:
    ldstr "true"
L_bool_to_string_false_264:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1010
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange53:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sras
    ldsfld int8 _G::Srds
    cgt
    brtrue L_bool_to_string_true_265
    ldstr "false"
    br L_bool_to_string_false_266
L_bool_to_string_true_265:
    ldstr "true"
L_bool_to_string_false_266:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1011
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange54:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Srbs
    ldsfld int8 _G::Sras
    cgt
    brtrue L_bool_to_string_true_267
    ldstr "false"
    br L_bool_to_string_false_268
L_bool_to_string_true_267:
    ldstr "true"
L_bool_to_string_false_268:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1012
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange55:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sras
    ldsfld int8 _G::Srds
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_269
    ldstr "false"
    br L_bool_to_string_false_270
L_bool_to_string_true_269:
    ldstr "true"
L_bool_to_string_false_270:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1013
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange56:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Srbs
    ldsfld int8 _G::Sras
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_271
    ldstr "false"
    br L_bool_to_string_false_272
L_bool_to_string_true_271:
    ldstr "true"
L_bool_to_string_false_272:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1014
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange57:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sras
    ldsfld int8 _G::Srcs
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_273
    ldstr "false"
    br L_bool_to_string_false_274
L_bool_to_string_true_273:
    ldstr "true"
L_bool_to_string_false_274:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1015
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange58:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Srds
    ldsfld int8 _G::Sras
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_275
    ldstr "false"
    br L_bool_to_string_false_276
L_bool_to_string_true_275:
    ldstr "true"
L_bool_to_string_false_276:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1016
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange59:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sras
    ldsfld int8 _G::Srbs
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_277
    ldstr "false"
    br L_bool_to_string_false_278
L_bool_to_string_true_277:
    ldstr "true"
L_bool_to_string_false_278:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1017
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange60:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Srds
    ldsfld int8 _G::Sras
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_279
    ldstr "false"
    br L_bool_to_string_false_280
L_bool_to_string_true_279:
    ldstr "true"
L_bool_to_string_false_280:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1018
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange61:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sras
    ldsfld int8 _G::Srbs
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_281
    ldstr "false"
    br L_bool_to_string_false_282
L_bool_to_string_true_281:
    ldstr "true"
L_bool_to_string_false_282:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1019
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange62:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sras
    ldsfld int8 _G::Srcs
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_283
    ldstr "false"
    br L_bool_to_string_false_284
L_bool_to_string_true_283:
    ldstr "true"
L_bool_to_string_false_284:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1020
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange63:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Sras
    ldsfld int8 _G::Srds
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_285
    ldstr "false"
    br L_bool_to_string_false_286
L_bool_to_string_true_285:
    ldstr "true"
L_bool_to_string_false_286:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1021
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange64:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Srbs
    ldsfld int8 _G::Sras
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_287
    ldstr "false"
    br L_bool_to_string_false_288
L_bool_to_string_true_287:
    ldstr "true"
L_bool_to_string_false_288:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1022
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Subrange65:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int8 _G::Sras
    dup
    ldc.i4 0
    bge L_abs_question_289
    neg
L_abs_question_289:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 14"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1030
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1031
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "******************* Characters*******************"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1032
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1035
    ldc.i4 103 // 'g'
    stsfld uint8 _G::Ca
    .line 1035
    ldc.i4 103 // 'g'
    stsfld uint8 _G::Cb
    .line 1035
    ldc.i4 117 // 'u'
    stsfld uint8 _G::Cc
    .line 1036
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character1:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld uint8 _G::Ca
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsfld uint8 _G::Cb
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsfld uint8 _G::Cc
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldstr " s/b g g u"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1037
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character2:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld uint8 _G::Ca
    ldc.i4.1
    add
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldstr " s/b h"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1038
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character3:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld uint8 _G::Cb
    ldc.i4.1
    sub
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldstr " s/b f"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1039
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character4:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld uint8 _G::Ca
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 103"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1040
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character5:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld uint8 _G::Cc
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldstr " s/b u"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1041
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character6:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld uint8 _G::Ca
    ldsfld uint8 _G::Cb
    ceq
    brtrue L_bool_to_string_true_290
    ldstr "false"
    br L_bool_to_string_false_291
L_bool_to_string_true_290:
    ldstr "true"
L_bool_to_string_false_291:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1042
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character7:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld uint8 _G::Ca
    ldsfld uint8 _G::Cc
    ceq
    brtrue L_bool_to_string_true_292
    ldstr "false"
    br L_bool_to_string_false_293
L_bool_to_string_true_292:
    ldstr "true"
L_bool_to_string_false_293:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1043
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character8:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld uint8 _G::Ca
    ldsfld uint8 _G::Cc
    clt
    brtrue L_bool_to_string_true_294
    ldstr "false"
    br L_bool_to_string_false_295
L_bool_to_string_true_294:
    ldstr "true"
L_bool_to_string_false_295:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1044
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character9:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld uint8 _G::Cc
    ldsfld uint8 _G::Ca
    clt
    brtrue L_bool_to_string_true_296
    ldstr "false"
    br L_bool_to_string_false_297
L_bool_to_string_true_296:
    ldstr "true"
L_bool_to_string_false_297:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1045
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character10:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld uint8 _G::Cc
    ldsfld uint8 _G::Ca
    cgt
    brtrue L_bool_to_string_true_298
    ldstr "false"
    br L_bool_to_string_false_299
L_bool_to_string_true_298:
    ldstr "true"
L_bool_to_string_false_299:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1046
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character11:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld uint8 _G::Ca
    ldsfld uint8 _G::Cc
    cgt
    brtrue L_bool_to_string_true_300
    ldstr "false"
    br L_bool_to_string_false_301
L_bool_to_string_true_300:
    ldstr "true"
L_bool_to_string_false_301:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1047
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character12:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld uint8 _G::Ca
    ldsfld uint8 _G::Cc
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_302
    ldstr "false"
    br L_bool_to_string_false_303
L_bool_to_string_true_302:
    ldstr "true"
L_bool_to_string_false_303:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1048
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character13:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld uint8 _G::Ca
    ldsfld uint8 _G::Cb
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_304
    ldstr "false"
    br L_bool_to_string_false_305
L_bool_to_string_true_304:
    ldstr "true"
L_bool_to_string_false_305:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1049
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character14:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld uint8 _G::Ca
    ldsfld uint8 _G::Cc
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_306
    ldstr "false"
    br L_bool_to_string_false_307
L_bool_to_string_true_306:
    ldstr "true"
L_bool_to_string_false_307:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1050
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character15:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld uint8 _G::Ca
    ldsfld uint8 _G::Cb
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_308
    ldstr "false"
    br L_bool_to_string_false_309
L_bool_to_string_true_308:
    ldstr "true"
L_bool_to_string_false_309:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1051
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character16:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld uint8 _G::Cc
    ldsfld uint8 _G::Ca
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_310
    ldstr "false"
    br L_bool_to_string_false_311
L_bool_to_string_true_310:
    ldstr "true"
L_bool_to_string_false_311:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1052
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character17:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld uint8 _G::Cc
    ldsfld uint8 _G::Cb
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_312
    ldstr "false"
    br L_bool_to_string_false_313
L_bool_to_string_true_312:
    ldstr "true"
L_bool_to_string_false_313:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1053
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character18:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld uint8 _G::Cb
    ldsfld uint8 _G::Ca
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_314
    ldstr "false"
    br L_bool_to_string_false_315
L_bool_to_string_true_314:
    ldstr "true"
L_bool_to_string_false_315:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1054
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character19:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld uint8 _G::Cb
    ldsfld uint8 _G::Cc
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_316
    ldstr "false"
    br L_bool_to_string_false_317
L_bool_to_string_true_316:
    ldstr "true"
L_bool_to_string_false_317:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1055
    ldsfld valuetype T_string10 STRING_1    // "porker    "
    stsfld valuetype T_string10 _G::Sa
    .line 1055
    ldsfld valuetype T_string10 STRING_1    // "porker    "
    stsfld valuetype T_string10 _G::Sb
    .line 1055
    ldsfld valuetype T_string10 STRING_2    // "parker    "
    stsfld valuetype T_string10 _G::Sc
    .line 1056
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character20:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld valuetype T_string10 _G::Sa
    call string T_string10::arrayToString(valuetype T_string10)
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld valuetype T_string10 _G::Sb
    call string T_string10::arrayToString(valuetype T_string10)
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld valuetype T_string10 _G::Sc
    call string T_string10::arrayToString(valuetype T_string10)
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr " s/b porker    porker    parker"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1058
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character21:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_string10 _G::Sa
    call string T_string10::arrayToString(valuetype T_string10)
    ldsfld valuetype T_string10 _G::Sb
    call string T_string10::arrayToString(valuetype T_string10)
    call bool [lpcRuntime]LPC.Helpers::StrcmpEQ(string, string)
    brtrue L_bool_to_string_true_318
    ldstr "false"
    br L_bool_to_string_false_319
L_bool_to_string_true_318:
    ldstr "true"
L_bool_to_string_false_319:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1059
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character22:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_string10 _G::Sa
    call string T_string10::arrayToString(valuetype T_string10)
    ldsfld valuetype T_string10 _G::Sc
    call string T_string10::arrayToString(valuetype T_string10)
    call bool [lpcRuntime]LPC.Helpers::StrcmpEQ(string, string)
    brtrue L_bool_to_string_true_320
    ldstr "false"
    br L_bool_to_string_false_321
L_bool_to_string_true_320:
    ldstr "true"
L_bool_to_string_false_321:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1060
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character23:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_string10 _G::Sc
    call string T_string10::arrayToString(valuetype T_string10)
    ldsfld valuetype T_string10 _G::Sa
    call string T_string10::arrayToString(valuetype T_string10)
    call bool [lpcRuntime]LPC.Helpers::StrcmpLT(string, string)
    brtrue L_bool_to_string_true_322
    ldstr "false"
    br L_bool_to_string_false_323
L_bool_to_string_true_322:
    ldstr "true"
L_bool_to_string_false_323:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1061
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character24:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_string10 _G::Sa
    call string T_string10::arrayToString(valuetype T_string10)
    ldsfld valuetype T_string10 _G::Sc
    call string T_string10::arrayToString(valuetype T_string10)
    call bool [lpcRuntime]LPC.Helpers::StrcmpLT(string, string)
    brtrue L_bool_to_string_true_324
    ldstr "false"
    br L_bool_to_string_false_325
L_bool_to_string_true_324:
    ldstr "true"
L_bool_to_string_false_325:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1062
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character25:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_string10 _G::Sa
    call string T_string10::arrayToString(valuetype T_string10)
    ldsfld valuetype T_string10 _G::Sc
    call string T_string10::arrayToString(valuetype T_string10)
    call bool [lpcRuntime]LPC.Helpers::StrcmpGT(string, string)
    brtrue L_bool_to_string_true_326
    ldstr "false"
    br L_bool_to_string_false_327
L_bool_to_string_true_326:
    ldstr "true"
L_bool_to_string_false_327:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1063
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character26:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_string10 _G::Sc
    call string T_string10::arrayToString(valuetype T_string10)
    ldsfld valuetype T_string10 _G::Sa
    call string T_string10::arrayToString(valuetype T_string10)
    call bool [lpcRuntime]LPC.Helpers::StrcmpGT(string, string)
    brtrue L_bool_to_string_true_328
    ldstr "false"
    br L_bool_to_string_false_329
L_bool_to_string_true_328:
    ldstr "true"
L_bool_to_string_false_329:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1064
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character27:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_string10 _G::Sa
    call string T_string10::arrayToString(valuetype T_string10)
    ldsfld valuetype T_string10 _G::Sc
    call string T_string10::arrayToString(valuetype T_string10)
    call bool [lpcRuntime]LPC.Helpers::StrcmpNE(string, string)
    brtrue L_bool_to_string_true_330
    ldstr "false"
    br L_bool_to_string_false_331
L_bool_to_string_true_330:
    ldstr "true"
L_bool_to_string_false_331:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1065
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character28:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_string10 _G::Sa
    call string T_string10::arrayToString(valuetype T_string10)
    ldsfld valuetype T_string10 _G::Sb
    call string T_string10::arrayToString(valuetype T_string10)
    call bool [lpcRuntime]LPC.Helpers::StrcmpNE(string, string)
    brtrue L_bool_to_string_true_332
    ldstr "false"
    br L_bool_to_string_false_333
L_bool_to_string_true_332:
    ldstr "true"
L_bool_to_string_false_333:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1066
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character29:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_string10 _G::Sc
    call string T_string10::arrayToString(valuetype T_string10)
    ldsfld valuetype T_string10 _G::Sa
    call string T_string10::arrayToString(valuetype T_string10)
    call bool [lpcRuntime]LPC.Helpers::StrcmpLE(string, string)
    brtrue L_bool_to_string_true_334
    ldstr "false"
    br L_bool_to_string_false_335
L_bool_to_string_true_334:
    ldstr "true"
L_bool_to_string_false_335:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1067
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character30:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_string10 _G::Sa
    call string T_string10::arrayToString(valuetype T_string10)
    ldsfld valuetype T_string10 _G::Sb
    call string T_string10::arrayToString(valuetype T_string10)
    call bool [lpcRuntime]LPC.Helpers::StrcmpLE(string, string)
    brtrue L_bool_to_string_true_336
    ldstr "false"
    br L_bool_to_string_false_337
L_bool_to_string_true_336:
    ldstr "true"
L_bool_to_string_false_337:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1068
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character40:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_string10 _G::Sa
    call string T_string10::arrayToString(valuetype T_string10)
    ldsfld valuetype T_string10 _G::Sc
    call string T_string10::arrayToString(valuetype T_string10)
    call bool [lpcRuntime]LPC.Helpers::StrcmpLE(string, string)
    brtrue L_bool_to_string_true_338
    ldstr "false"
    br L_bool_to_string_false_339
L_bool_to_string_true_338:
    ldstr "true"
L_bool_to_string_false_339:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1069
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character41:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_string10 _G::Sa
    call string T_string10::arrayToString(valuetype T_string10)
    ldsfld valuetype T_string10 _G::Sc
    call string T_string10::arrayToString(valuetype T_string10)
    call bool [lpcRuntime]LPC.Helpers::StrcmpGE(string, string)
    brtrue L_bool_to_string_true_340
    ldstr "false"
    br L_bool_to_string_false_341
L_bool_to_string_true_340:
    ldstr "true"
L_bool_to_string_false_341:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1070
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character42:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_string10 _G::Sa
    call string T_string10::arrayToString(valuetype T_string10)
    ldsfld valuetype T_string10 _G::Sb
    call string T_string10::arrayToString(valuetype T_string10)
    call bool [lpcRuntime]LPC.Helpers::StrcmpGE(string, string)
    brtrue L_bool_to_string_true_342
    ldstr "false"
    br L_bool_to_string_false_343
L_bool_to_string_true_342:
    ldstr "true"
L_bool_to_string_false_343:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1071
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character43:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_string10 _G::Sc
    call string T_string10::arrayToString(valuetype T_string10)
    ldsfld valuetype T_string10 _G::Sa
    call string T_string10::arrayToString(valuetype T_string10)
    call bool [lpcRuntime]LPC.Helpers::StrcmpGE(string, string)
    brtrue L_bool_to_string_true_344
    ldstr "false"
    br L_bool_to_string_false_345
L_bool_to_string_true_344:
    ldstr "true"
L_bool_to_string_false_345:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1072
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character44:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1073
    ldc.i4 122 // 'z'
    stloc $tmpEndValue24
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue24
    bgt L_for_end_347
    stloc $tmpIndex25
    ldloc $tmpIndex25
    stsfld uint8 _G::Ca
L_for_loop_346:
    .line 1073
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ca
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld uint8 _G::Ca
    dup
    ldloc $tmpEndValue24
    beq L_for_end_347
    ldc.i4.1
    add
    stloc $tmpIndex26
    ldloc $tmpIndex26
    stsfld uint8 _G::Ca
    br L_for_loop_346
L_for_end_347:
    pop
    .line 1074
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b abcdefghijklmnopqrstuvwxyz"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1075
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character45:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1076
    ldc.i4 97 // 'a'
    stloc $tmpEndValue27
    ldc.i4 122 // 'z'
    dup
    ldloc $tmpEndValue27
    blt L_for_end_349
    stloc $tmpIndex28
    ldloc $tmpIndex28
    stsfld uint8 _G::Ca
L_for_loop_348:
    .line 1076
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ca
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld uint8 _G::Ca
    dup
    ldloc $tmpEndValue27
    beq L_for_end_349
    ldc.i4.1
    sub
    stloc $tmpIndex29
    ldloc $tmpIndex29
    stsfld uint8 _G::Ca
    br L_for_loop_348
L_for_end_349:
    pop
    .line 1077
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b zyxwvutsrqponmlkjihgfedcba"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1078
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character46:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1079
    ldc.i4 0
    stsfld int32 _G::x
    .line 1080
    ldc.i4 122 // 'z'
    stloc $tmpEndValue30
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue30
    bgt L_for_end_351
    stloc $tmpIndex31
    ldloc $tmpIndex31
    stsfld uint8 _G::Ca
L_for_loop_350:
    .line 1080
    ldsflda valuetype T_array_30 _G::Car
    ldsfld uint8 _G::Ca
    call instance int32& T_array_30::ldadr(int32)
    ldsfld int32 _G::x
    stobj int32
    .line 1080
    ldsfld int32 _G::x
    ldc.i4 1
    add
    stsfld int32 _G::x
    ldsfld uint8 _G::Ca
    dup
    ldloc $tmpEndValue30
    beq L_for_end_351
    ldc.i4.1
    add
    stloc $tmpIndex32
    ldloc $tmpIndex32
    stsfld uint8 _G::Ca
    br L_for_loop_350
L_for_end_351:
    pop
    .line 1081
    ldc.i4 97 // 'a'
    stloc $tmpEndValue33
    ldc.i4 122 // 'z'
    dup
    ldloc $tmpEndValue33
    blt L_for_end_353
    stloc $tmpIndex34
    ldloc $tmpIndex34
    stsfld uint8 _G::Ca
L_for_loop_352:
    .line 1081
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_array_30 _G::Car
    ldsfld uint8 _G::Ca
    call instance int32& T_array_30::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld uint8 _G::Ca
    dup
    ldloc $tmpEndValue33
    beq L_for_end_353
    ldc.i4.1
    sub
    stloc $tmpIndex35
    ldloc $tmpIndex35
    stsfld uint8 _G::Ca
    br L_for_loop_352
L_for_end_353:
    pop
    .line 1082
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1083
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character46: s/b 25 24 23 22 21 20 19 18 17 16 15"
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr " 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1085
    ldsflda valuetype T_record_111 _G::r
    ldc.i4 110 // 'n'
    stfld uint8 T_record_111::Rc
    .line 1085
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character47: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsflda valuetype T_record_111 _G::r
    ldfld uint8 T_record_111::Rc
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldstr " s/b n"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1086
    ldsflda valuetype T_record_111 _G::r
    ldsfld valuetype T_string10 STRING_3    // "junky01234"
    stfld valuetype T_string10 T_record_111::Rs
    .line 1086
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character48: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsflda valuetype T_record_111 _G::r
    ldfld valuetype T_string10 T_record_111::Rs
    call string T_string10::arrayToString(valuetype T_string10)
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr " s/b junky01234"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1088
    ldc.i4 10
    stloc $tmpEndValue36
    ldc.i4 1
    dup
    ldloc $tmpEndValue36
    bgt L_for_end_355
    stloc $tmpIndex37
    ldloc $tmpIndex37
    stsfld int32 _G::i
L_for_loop_354:
    .line 1088
    ldsflda valuetype T_array_116 _G::Sar
    ldsfld int32 _G::i
    call instance valuetype T_string10& T_array_116::ldadr(int32)
    ldsfld valuetype T_string10 STRING_4    // "0123456789"
    stobj valuetype T_string10
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue36
    beq L_for_end_355
    ldc.i4.1
    add
    stloc $tmpIndex38
    ldloc $tmpIndex38
    stsfld int32 _G::i
    br L_for_loop_354
L_for_end_355:
    pop
    .line 1089
    ldsflda valuetype T_array_116 _G::Sar
    ldc.i4 1
    call instance valuetype T_string10& T_array_116::ldadr(int32)
    ldsfld valuetype T_string10 STRING_5    // "trash     "
    stobj valuetype T_string10
    .line 1090
    ldsflda valuetype T_array_116 _G::Sar
    ldc.i4 2
    call instance valuetype T_string10& T_array_116::ldadr(int32)
    ldsfld valuetype T_string10 STRING_6    // "finnork   "
    stobj valuetype T_string10
    .line 1091
    ldsflda valuetype T_array_116 _G::Sar
    ldc.i4 10
    call instance valuetype T_string10& T_array_116::ldadr(int32)
    ldsfld valuetype T_string10 STRING_7    // "crapola   "
    stobj valuetype T_string10
    .line 1092
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character49:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1093
    ldc.i4 1
    stloc $tmpEndValue39
    ldc.i4 10
    dup
    ldloc $tmpEndValue39
    blt L_for_end_357
    stloc $tmpIndex40
    ldloc $tmpIndex40
    stsfld int32 _G::i
L_for_loop_356:
    .line 1093
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsflda valuetype T_array_116 _G::Sar
    ldsfld int32 _G::i
    call instance valuetype T_string10& T_array_116::ldadr(int32)
    ldobj valuetype T_string10
    call string T_string10::arrayToString(valuetype T_string10)
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue39
    beq L_for_end_357
    ldc.i4.1
    sub
    stloc $tmpIndex41
    ldloc $tmpIndex41
    stsfld int32 _G::i
    br L_for_loop_356
L_for_end_357:
    pop
    .line 1094
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character49: s/b"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1095
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "crapola"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1096
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "0123456789"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1097
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "0123456789"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1098
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "0123456789"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1099
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "0123456789"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1100
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "0123456789"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1101
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "0123456789"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1102
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "0123456789"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1103
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "finnork"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1104
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "trash"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1105
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character50:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1106
    ldc.i4 57 // '9'
    stloc $tmpEndValue42
    ldc.i4 48 // '0'
    dup
    ldloc $tmpEndValue42
    bgt L_for_end_359
    stloc $tmpIndex43
    ldloc $tmpIndex43
    stsfld uint8 _G::Ca
L_for_loop_358:
    .line 1108
    ldsfld uint8 _G::Ca
    stloc $tmpSwitchValue44
    ldloc $tmpSwitchValue44
    ldc.i4 53 // '5'
    bne.un L_check_case_361
    .line 1109
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "five "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_360
L_check_case_361:
    ldloc $tmpSwitchValue44
    ldc.i4 51 // '3'
    bne.un L_check_case_362
    .line 1110
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "three "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_360
L_check_case_362:
    ldloc $tmpSwitchValue44
    ldc.i4 54 // '6'
    bne.un L_check_case_363
    .line 1111
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "six "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_360
L_check_case_363:
    ldloc $tmpSwitchValue44
    ldc.i4 56 // '8'
    bne.un L_check_case_364
    .line 1112
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "eight "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_360
L_check_case_364:
    ldloc $tmpSwitchValue44
    ldc.i4 48 // '0'
    bne.un L_check_case_365
    .line 1113
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "zero "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_360
L_check_case_365:
    ldloc $tmpSwitchValue44
    ldc.i4 57 // '9'
    bne.un L_check_case_366
    .line 1114
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "nine "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_360
L_check_case_366:
    ldloc $tmpSwitchValue44
    ldc.i4 55 // '7'
    bne.un L_check_case_367
    .line 1115
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "seven "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_360
L_check_case_367:
    ldloc $tmpSwitchValue44
    ldc.i4 52 // '4'
    bne.un L_check_case_368
    .line 1116
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "four "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_360
L_check_case_368:
    ldloc $tmpSwitchValue44
    ldc.i4 49 // '1'
    bne.un L_check_case_369
    .line 1117
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "one "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_360
L_check_case_369:
    ldloc $tmpSwitchValue44
    ldc.i4 50 // '2'
    bne.un L_case_end_360
    .line 1118
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "two "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_case_end_360:
    ldsfld uint8 _G::Ca
    dup
    ldloc $tmpEndValue42
    beq L_for_end_359
    ldc.i4.1
    add
    stloc $tmpIndex45
    ldloc $tmpIndex45
    stsfld uint8 _G::Ca
    br L_for_loop_358
L_for_end_359:
    pop
    .line 1121
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1122
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b zero one two three four five six "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr "seven eight nine"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1126
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character51:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 97 // 'a'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldstr " s/b a"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1127
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character52:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 97 // 'a'
    ldc.i4.1
    add
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldstr " s/b b"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1128
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character53:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 122 // 'z'
    ldc.i4.1
    sub
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldstr " s/b y"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1129
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character54:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 99 // 'c'
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 99"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1130
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character55:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 103 // 'g'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldstr " s/b g"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1131
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character56:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 113 // 'q'
    ldc.i4 113 // 'q'
    ceq
    brtrue L_bool_to_string_true_370
    ldstr "false"
    br L_bool_to_string_false_371
L_bool_to_string_true_370:
    ldstr "true"
L_bool_to_string_false_371:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1132
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character57:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 114 // 'r'
    ldc.i4 113 // 'q'
    ceq
    brtrue L_bool_to_string_true_372
    ldstr "false"
    br L_bool_to_string_false_373
L_bool_to_string_true_372:
    ldstr "true"
L_bool_to_string_false_373:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1133
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character58:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 98 // 'b'
    ldc.i4 116 // 't'
    clt
    brtrue L_bool_to_string_true_374
    ldstr "false"
    br L_bool_to_string_false_375
L_bool_to_string_true_374:
    ldstr "true"
L_bool_to_string_false_375:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1134
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character59:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 103 // 'g'
    ldc.i4 99 // 'c'
    clt
    brtrue L_bool_to_string_true_376
    ldstr "false"
    br L_bool_to_string_false_377
L_bool_to_string_true_376:
    ldstr "true"
L_bool_to_string_false_377:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1135
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character50:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 102 // 'f'
    ldc.i4 101 // 'e'
    cgt
    brtrue L_bool_to_string_true_378
    ldstr "false"
    br L_bool_to_string_false_379
L_bool_to_string_true_378:
    ldstr "true"
L_bool_to_string_false_379:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1136
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character61:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 102 // 'f'
    ldc.i4 103 // 'g'
    cgt
    brtrue L_bool_to_string_true_380
    ldstr "false"
    br L_bool_to_string_false_381
L_bool_to_string_true_380:
    ldstr "true"
L_bool_to_string_false_381:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1137
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character62:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 104 // 'h'
    ldc.i4 108 // 'l'
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_382
    ldstr "false"
    br L_bool_to_string_false_383
L_bool_to_string_true_382:
    ldstr "true"
L_bool_to_string_false_383:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1138
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character63:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 105 // 'i'
    ldc.i4 105 // 'i'
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_384
    ldstr "false"
    br L_bool_to_string_false_385
L_bool_to_string_true_384:
    ldstr "true"
L_bool_to_string_false_385:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1139
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character64:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 118 // 'v'
    ldc.i4 121 // 'y'
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_386
    ldstr "false"
    br L_bool_to_string_false_387
L_bool_to_string_true_386:
    ldstr "true"
L_bool_to_string_false_387:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1140
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character65:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 121 // 'y'
    ldc.i4 121 // 'y'
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_388
    ldstr "false"
    br L_bool_to_string_false_389
L_bool_to_string_true_388:
    ldstr "true"
L_bool_to_string_false_389:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1141
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character66:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 122 // 'z'
    ldc.i4 121 // 'y'
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_390
    ldstr "false"
    br L_bool_to_string_false_391
L_bool_to_string_true_390:
    ldstr "true"
L_bool_to_string_false_391:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1142
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character67:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 108 // 'l'
    ldc.i4 98 // 'b'
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_392
    ldstr "false"
    br L_bool_to_string_false_393
L_bool_to_string_true_392:
    ldstr "true"
L_bool_to_string_false_393:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1143
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character68:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 108 // 'l'
    ldc.i4 108 // 'l'
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_394
    ldstr "false"
    br L_bool_to_string_false_395
L_bool_to_string_true_394:
    ldstr "true"
L_bool_to_string_false_395:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1144
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character69:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 108 // 'l'
    ldc.i4 109 // 'm'
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_396
    ldstr "false"
    br L_bool_to_string_false_397
L_bool_to_string_true_396:
    ldstr "true"
L_bool_to_string_false_397:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1145
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character70:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldstr "finnork"
    ldstr "finnork"
    call bool [lpcRuntime]LPC.Helpers::StrcmpEQ(string, string)
    brtrue L_bool_to_string_true_398
    ldstr "false"
    br L_bool_to_string_false_399
L_bool_to_string_true_398:
    ldstr "true"
L_bool_to_string_false_399:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1146
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character71:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldstr "finoork"
    ldstr "finnork"
    call bool [lpcRuntime]LPC.Helpers::StrcmpEQ(string, string)
    brtrue L_bool_to_string_true_400
    ldstr "false"
    br L_bool_to_string_false_401
L_bool_to_string_true_400:
    ldstr "true"
L_bool_to_string_false_401:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1148
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character72:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldstr "oliab"
    ldstr "olibb"
    call bool [lpcRuntime]LPC.Helpers::StrcmpLT(string, string)
    brtrue L_bool_to_string_true_402
    ldstr "false"
    br L_bool_to_string_false_403
L_bool_to_string_true_402:
    ldstr "true"
L_bool_to_string_false_403:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1149
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character73:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldstr "olibb"
    ldstr "oliab"
    call bool [lpcRuntime]LPC.Helpers::StrcmpLT(string, string)
    brtrue L_bool_to_string_true_404
    ldstr "false"
    br L_bool_to_string_false_405
L_bool_to_string_true_404:
    ldstr "true"
L_bool_to_string_false_405:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1150
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character74:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldstr "olibb"
    ldstr "oliab"
    call bool [lpcRuntime]LPC.Helpers::StrcmpGT(string, string)
    brtrue L_bool_to_string_true_406
    ldstr "false"
    br L_bool_to_string_false_407
L_bool_to_string_true_406:
    ldstr "true"
L_bool_to_string_false_407:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1151
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character75:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldstr "oliab"
    ldstr "olibb"
    call bool [lpcRuntime]LPC.Helpers::StrcmpGT(string, string)
    brtrue L_bool_to_string_true_408
    ldstr "false"
    br L_bool_to_string_false_409
L_bool_to_string_true_408:
    ldstr "true"
L_bool_to_string_false_409:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1152
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character76:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldstr "fark "
    ldstr "farks"
    call bool [lpcRuntime]LPC.Helpers::StrcmpNE(string, string)
    brtrue L_bool_to_string_true_410
    ldstr "false"
    br L_bool_to_string_false_411
L_bool_to_string_true_410:
    ldstr "true"
L_bool_to_string_false_411:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1153
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character77:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldstr "farks"
    ldstr "farks"
    call bool [lpcRuntime]LPC.Helpers::StrcmpNE(string, string)
    brtrue L_bool_to_string_true_412
    ldstr "false"
    br L_bool_to_string_false_413
L_bool_to_string_true_412:
    ldstr "true"
L_bool_to_string_false_413:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1154
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character78:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldstr "farka"
    ldstr "farkz"
    call bool [lpcRuntime]LPC.Helpers::StrcmpLE(string, string)
    brtrue L_bool_to_string_true_414
    ldstr "false"
    br L_bool_to_string_false_415
L_bool_to_string_true_414:
    ldstr "true"
L_bool_to_string_false_415:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1155
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character79:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldstr "farks"
    ldstr "farks"
    call bool [lpcRuntime]LPC.Helpers::StrcmpLE(string, string)
    brtrue L_bool_to_string_true_416
    ldstr "false"
    br L_bool_to_string_false_417
L_bool_to_string_true_416:
    ldstr "true"
L_bool_to_string_false_417:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1156
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character80:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldstr "farkz"
    ldstr "farks"
    call bool [lpcRuntime]LPC.Helpers::StrcmpLE(string, string)
    brtrue L_bool_to_string_true_418
    ldstr "false"
    br L_bool_to_string_false_419
L_bool_to_string_true_418:
    ldstr "true"
L_bool_to_string_false_419:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1157
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character81:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldstr "topnat"
    ldstr "topcat"
    call bool [lpcRuntime]LPC.Helpers::StrcmpGE(string, string)
    brtrue L_bool_to_string_true_420
    ldstr "false"
    br L_bool_to_string_false_421
L_bool_to_string_true_420:
    ldstr "true"
L_bool_to_string_false_421:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1158
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character82:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldstr "topcat"
    ldstr "topcat"
    call bool [lpcRuntime]LPC.Helpers::StrcmpGE(string, string)
    brtrue L_bool_to_string_true_422
    ldstr "false"
    br L_bool_to_string_false_423
L_bool_to_string_true_422:
    ldstr "true"
L_bool_to_string_false_423:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1159
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character83:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldstr "topcat"
    ldstr "topzat"
    call bool [lpcRuntime]LPC.Helpers::StrcmpGE(string, string)
    brtrue L_bool_to_string_true_424
    ldstr "false"
    br L_bool_to_string_false_425
L_bool_to_string_true_424:
    ldstr "true"
L_bool_to_string_false_425:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1160
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character84:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr "this is a string" // scst 
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr " s/b this is a string"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1161
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character85:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 118 // ccst 'v'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldstr " s/b v"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1162
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character86:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1163
    ldc.i4 1
    stloc $tmpEndValue46
    ldc.i4 15
    dup
    ldloc $tmpEndValue46
    blt L_for_end_427
    stloc $tmpIndex47
    ldloc $tmpIndex47
    stsfld int32 _G::i
L_for_loop_426:
    .line 1163
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld int32 _G::i
    ldc.i4.0
    ldstr "hello, world"
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue46
    beq L_for_end_427
    ldc.i4.1
    sub
    stloc $tmpIndex48
    ldloc $tmpIndex48
    stsfld int32 _G::i
    br L_for_loop_426
L_for_end_427:
    pop
    .line 1164
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Character86:  s/b:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1165
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "   hello, world"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1166
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "  hello, world"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1167
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " hello, world "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1168
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "hello, world"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1169
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "hello, worl"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1170
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "hello, wor"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1171
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "hello, wo"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1172
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "hello, w"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1173
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "hello, "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1174
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "hello,"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1175
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "hello"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1176
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "hell"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1177
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "hel"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1178
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "he"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1179
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 104 // 'h'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1187
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1188
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "******************* Booleans *******************"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1189
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1192
    ldc.i4 1 // (true)
    stsfld bool _G::Ba
    .line 1192
    ldc.i4 0 // (false)
    stsfld bool _G::Bb
    .line 1192
    ldc.i4 1 // (true)
    stsfld bool _G::Bc
    .line 1193
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean1:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Ba
    brtrue L_bool_to_string_true_428
    ldstr "false"
    br L_bool_to_string_false_429
L_bool_to_string_true_428:
    ldstr "true"
L_bool_to_string_false_429:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Bb
    brtrue L_bool_to_string_true_430
    ldstr "false"
    br L_bool_to_string_false_431
L_bool_to_string_true_430:
    ldstr "true"
L_bool_to_string_false_431:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1194
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean2:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Bb
    ldc.i4.1
    add
    brtrue L_bool_to_string_true_432
    ldstr "false"
    br L_bool_to_string_false_433
L_bool_to_string_true_432:
    ldstr "true"
L_bool_to_string_false_433:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1195
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean3:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Ba
    ldc.i4.1
    sub
    brtrue L_bool_to_string_true_434
    ldstr "false"
    br L_bool_to_string_false_435
L_bool_to_string_true_434:
    ldstr "true"
L_bool_to_string_false_435:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1196
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean4:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld bool _G::Bb
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 0"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1197
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean5:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld bool _G::Ba
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 1"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1198
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean6:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Ba
    ldsfld bool _G::Bc
    ceq
    brtrue L_bool_to_string_true_436
    ldstr "false"
    br L_bool_to_string_false_437
L_bool_to_string_true_436:
    ldstr "true"
L_bool_to_string_false_437:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1199
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean7:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Bb
    ldsfld bool _G::Bb
    ceq
    brtrue L_bool_to_string_true_438
    ldstr "false"
    br L_bool_to_string_false_439
L_bool_to_string_true_438:
    ldstr "true"
L_bool_to_string_false_439:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1200
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean8:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Ba
    ldsfld bool _G::Bb
    ceq
    brtrue L_bool_to_string_true_440
    ldstr "false"
    br L_bool_to_string_false_441
L_bool_to_string_true_440:
    ldstr "true"
L_bool_to_string_false_441:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1201
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean9:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Bb
    ldsfld bool _G::Ba
    clt
    brtrue L_bool_to_string_true_442
    ldstr "false"
    br L_bool_to_string_false_443
L_bool_to_string_true_442:
    ldstr "true"
L_bool_to_string_false_443:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1202
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean10:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Ba
    ldsfld bool _G::Bb
    clt
    brtrue L_bool_to_string_true_444
    ldstr "false"
    br L_bool_to_string_false_445
L_bool_to_string_true_444:
    ldstr "true"
L_bool_to_string_false_445:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1203
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean11:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Ba
    ldsfld bool _G::Bb
    cgt
    brtrue L_bool_to_string_true_446
    ldstr "false"
    br L_bool_to_string_false_447
L_bool_to_string_true_446:
    ldstr "true"
L_bool_to_string_false_447:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1204
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean12:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Bb
    ldsfld bool _G::Ba
    cgt
    brtrue L_bool_to_string_true_448
    ldstr "false"
    br L_bool_to_string_false_449
L_bool_to_string_true_448:
    ldstr "true"
L_bool_to_string_false_449:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1205
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean13:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Ba
    ldsfld bool _G::Bb
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_450
    ldstr "false"
    br L_bool_to_string_false_451
L_bool_to_string_true_450:
    ldstr "true"
L_bool_to_string_false_451:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1206
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean14:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Ba
    ldsfld bool _G::Bc
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_452
    ldstr "false"
    br L_bool_to_string_false_453
L_bool_to_string_true_452:
    ldstr "true"
L_bool_to_string_false_453:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1207
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean15:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Bb
    ldsfld bool _G::Ba
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_454
    ldstr "false"
    br L_bool_to_string_false_455
L_bool_to_string_true_454:
    ldstr "true"
L_bool_to_string_false_455:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1208
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean16:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Ba
    ldsfld bool _G::Bc
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_456
    ldstr "false"
    br L_bool_to_string_false_457
L_bool_to_string_true_456:
    ldstr "true"
L_bool_to_string_false_457:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1209
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean17:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Ba
    ldsfld bool _G::Bb
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_458
    ldstr "false"
    br L_bool_to_string_false_459
L_bool_to_string_true_458:
    ldstr "true"
L_bool_to_string_false_459:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1210
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean18:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Ba
    ldsfld bool _G::Bb
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_460
    ldstr "false"
    br L_bool_to_string_false_461
L_bool_to_string_true_460:
    ldstr "true"
L_bool_to_string_false_461:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1211
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean19:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Bb
    ldsfld bool _G::Bb
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_462
    ldstr "false"
    br L_bool_to_string_false_463
L_bool_to_string_true_462:
    ldstr "true"
L_bool_to_string_false_463:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1212
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean20:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Bb
    ldsfld bool _G::Ba
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_464
    ldstr "false"
    br L_bool_to_string_false_465
L_bool_to_string_true_464:
    ldstr "true"
L_bool_to_string_false_465:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1213
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean21:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1214
    ldc.i4 1 // (true)
    stloc $tmpEndValue49
    ldc.i4 0 // (false)
    dup
    ldloc $tmpEndValue49
    bgt L_for_end_467
    stloc $tmpIndex50
    ldloc $tmpIndex50
    stsfld bool _G::Ba
L_for_loop_466:
    .line 1214
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Ba
    brtrue L_bool_to_string_true_468
    ldstr "false"
    br L_bool_to_string_false_469
L_bool_to_string_true_468:
    ldstr "true"
L_bool_to_string_false_469:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld bool _G::Ba
    dup
    ldloc $tmpEndValue49
    beq L_for_end_467
    ldc.i4.1
    add
    stloc $tmpIndex51
    ldloc $tmpIndex51
    stsfld bool _G::Ba
    br L_for_loop_466
L_for_end_467:
    pop
    .line 1215
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b false true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1216
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean22:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1217
    ldc.i4 0 // (false)
    stloc $tmpEndValue52
    ldc.i4 1 // (true)
    dup
    ldloc $tmpEndValue52
    blt L_for_end_471
    stloc $tmpIndex53
    ldloc $tmpIndex53
    stsfld bool _G::Bb
L_for_loop_470:
    .line 1217
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Bb
    brtrue L_bool_to_string_true_472
    ldstr "false"
    br L_bool_to_string_false_473
L_bool_to_string_true_472:
    ldstr "true"
L_bool_to_string_false_473:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld bool _G::Bb
    dup
    ldloc $tmpEndValue52
    beq L_for_end_471
    ldc.i4.1
    sub
    stloc $tmpIndex54
    ldloc $tmpIndex54
    stsfld bool _G::Bb
    br L_for_loop_470
L_for_end_471:
    pop
    .line 1218
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b true false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1219
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean23:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1220
    ldc.i4 1
    ldc.i4 0
    cgt
    stsfld bool _G::Ba
    .line 1220
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Ba
    brtrue L_bool_to_string_true_474
    ldstr "false"
    br L_bool_to_string_false_475
L_bool_to_string_true_474:
    ldstr "true"
L_bool_to_string_false_475:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1221
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean24:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1222
    ldc.i4 1
    ldc.i4 0
    clt
    stsfld bool _G::Ba
    .line 1222
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Ba
    brtrue L_bool_to_string_true_476
    ldstr "false"
    br L_bool_to_string_false_477
L_bool_to_string_true_476:
    ldstr "true"
L_bool_to_string_false_477:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1225
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean25:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 1 // (true)
    brtrue L_bool_to_string_true_478
    ldstr "false"
    br L_bool_to_string_false_479
L_bool_to_string_true_478:
    ldstr "true"
L_bool_to_string_false_479:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 0 // (false)
    brtrue L_bool_to_string_true_480
    ldstr "false"
    br L_bool_to_string_false_481
L_bool_to_string_true_480:
    ldstr "true"
L_bool_to_string_false_481:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1226
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean26:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 0 // (false)
    ldc.i4.1
    add
    brtrue L_bool_to_string_true_482
    ldstr "false"
    br L_bool_to_string_false_483
L_bool_to_string_true_482:
    ldstr "true"
L_bool_to_string_false_483:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1227
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean27:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 1 // (true)
    ldc.i4.1
    sub
    brtrue L_bool_to_string_true_484
    ldstr "false"
    br L_bool_to_string_false_485
L_bool_to_string_true_484:
    ldstr "true"
L_bool_to_string_false_485:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1228
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean28:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 0 // (false)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 0"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1229
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean29:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 1 // (true)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 1"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1230
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean30:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 1 // (true)
    ldc.i4 1 // (true)
    ceq
    brtrue L_bool_to_string_true_486
    ldstr "false"
    br L_bool_to_string_false_487
L_bool_to_string_true_486:
    ldstr "true"
L_bool_to_string_false_487:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1231
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean31:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 0 // (false)
    ldc.i4 0 // (false)
    ceq
    brtrue L_bool_to_string_true_488
    ldstr "false"
    br L_bool_to_string_false_489
L_bool_to_string_true_488:
    ldstr "true"
L_bool_to_string_false_489:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1232
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean32:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 1 // (true)
    ldc.i4 0 // (false)
    ceq
    brtrue L_bool_to_string_true_490
    ldstr "false"
    br L_bool_to_string_false_491
L_bool_to_string_true_490:
    ldstr "true"
L_bool_to_string_false_491:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1233
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean33:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 0 // (false)
    ldc.i4 1 // (true)
    clt
    brtrue L_bool_to_string_true_492
    ldstr "false"
    br L_bool_to_string_false_493
L_bool_to_string_true_492:
    ldstr "true"
L_bool_to_string_false_493:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1234
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean34:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 1 // (true)
    ldc.i4 0 // (false)
    clt
    brtrue L_bool_to_string_true_494
    ldstr "false"
    br L_bool_to_string_false_495
L_bool_to_string_true_494:
    ldstr "true"
L_bool_to_string_false_495:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1235
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean35:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 1 // (true)
    ldc.i4 0 // (false)
    cgt
    brtrue L_bool_to_string_true_496
    ldstr "false"
    br L_bool_to_string_false_497
L_bool_to_string_true_496:
    ldstr "true"
L_bool_to_string_false_497:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1236
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean36:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 0 // (false)
    ldc.i4 1 // (true)
    cgt
    brtrue L_bool_to_string_true_498
    ldstr "false"
    br L_bool_to_string_false_499
L_bool_to_string_true_498:
    ldstr "true"
L_bool_to_string_false_499:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1237
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean37:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 1 // (true)
    ldc.i4 0 // (false)
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_500
    ldstr "false"
    br L_bool_to_string_false_501
L_bool_to_string_true_500:
    ldstr "true"
L_bool_to_string_false_501:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1238
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean38:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 1 // (true)
    ldc.i4 1 // (true)
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_502
    ldstr "false"
    br L_bool_to_string_false_503
L_bool_to_string_true_502:
    ldstr "true"
L_bool_to_string_false_503:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1239
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean39:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 0 // (false)
    ldc.i4 1 // (true)
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_504
    ldstr "false"
    br L_bool_to_string_false_505
L_bool_to_string_true_504:
    ldstr "true"
L_bool_to_string_false_505:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1240
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean40:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 1 // (true)
    ldc.i4 1 // (true)
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_506
    ldstr "false"
    br L_bool_to_string_false_507
L_bool_to_string_true_506:
    ldstr "true"
L_bool_to_string_false_507:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1241
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean41:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 1 // (true)
    ldc.i4 0 // (false)
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_508
    ldstr "false"
    br L_bool_to_string_false_509
L_bool_to_string_true_508:
    ldstr "true"
L_bool_to_string_false_509:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1242
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean42:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 1 // (true)
    ldc.i4 0 // (false)
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_510
    ldstr "false"
    br L_bool_to_string_false_511
L_bool_to_string_true_510:
    ldstr "true"
L_bool_to_string_false_511:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1243
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean43:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 0 // (false)
    ldc.i4 0 // (false)
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_512
    ldstr "false"
    br L_bool_to_string_false_513
L_bool_to_string_true_512:
    ldstr "true"
L_bool_to_string_false_513:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1244
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean44:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 0 // (false)
    ldc.i4 1 // (true)
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_514
    ldstr "false"
    br L_bool_to_string_false_515
L_bool_to_string_true_514:
    ldstr "true"
L_bool_to_string_false_515:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1245
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean45:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1246
    ldc.i4 1
    stloc $tmpEndValue55
    ldc.i4 10
    dup
    ldloc $tmpEndValue55
    blt L_for_end_517
    stloc $tmpIndex56
    ldloc $tmpIndex56
    stsfld int32 _G::i
L_for_loop_516:
    .line 1246
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld int32 _G::i
    ldc.i4.0
    ldc.i4 0 // (false)
    brtrue L_bool_to_string_true_518
    ldstr "false"
    br L_bool_to_string_false_519
L_bool_to_string_true_518:
    ldstr "true"
L_bool_to_string_false_519:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue55
    beq L_for_end_517
    ldc.i4.1
    sub
    stloc $tmpIndex57
    ldloc $tmpIndex57
    stsfld int32 _G::i
    br L_for_loop_516
L_for_end_517:
    pop
    .line 1247
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean45: s/b:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1248
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "     false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1249
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "    false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1250
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "   false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1251
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "  false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1252
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1253
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1254
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "fals"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1255
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "fal"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1256
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "fa"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1257
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 102 // 'f'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1258
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean46:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1259
    ldc.i4 1
    stloc $tmpEndValue58
    ldc.i4 10
    dup
    ldloc $tmpEndValue58
    blt L_for_end_521
    stloc $tmpIndex59
    ldloc $tmpIndex59
    stsfld int32 _G::i
L_for_loop_520:
    .line 1259
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld int32 _G::i
    ldc.i4.0
    ldc.i4 1 // (true)
    brtrue L_bool_to_string_true_522
    ldstr "false"
    br L_bool_to_string_false_523
L_bool_to_string_true_522:
    ldstr "true"
L_bool_to_string_false_523:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue58
    beq L_for_end_521
    ldc.i4.1
    sub
    stloc $tmpIndex60
    ldloc $tmpIndex60
    stsfld int32 _G::i
    br L_for_loop_520
L_for_end_521:
    pop
    .line 1260
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Boolean46: s/b:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1261
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "      true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1262
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "     true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1263
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "    true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1264
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "   true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1265
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "  true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1266
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1267
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1268
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "tru"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1269
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "tr"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1270
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 116 // 't'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1279
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1280
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "******************* Scalar *******************"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1281
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1284
    ldc.i4 2 // wed 
    stsfld int32 _G::Sva
    .line 1284
    ldc.i4 0 // mon 
    stsfld int32 _G::Svb
    .line 1284
    ldc.i4 2 // wed 
    stsfld int32 _G::Svc
    .line 1285
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar1:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Svb
    ldc.i4.1
    add
    ldc.i4 1 // tue 
    ceq
    brtrue L_bool_to_string_true_524
    ldstr "false"
    br L_bool_to_string_false_525
L_bool_to_string_true_524:
    ldstr "true"
L_bool_to_string_false_525:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1286
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar2:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Sva
    ldc.i4.1
    sub
    ldc.i4 1 // tue 
    ceq
    brtrue L_bool_to_string_true_526
    ldstr "false"
    br L_bool_to_string_false_527
L_bool_to_string_true_526:
    ldstr "true"
L_bool_to_string_false_527:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1287
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar3:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Svb
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 0"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1288
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar4:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Sva
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 2"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1289
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar5:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Sva
    ldsfld int32 _G::Svc
    ceq
    brtrue L_bool_to_string_true_528
    ldstr "false"
    br L_bool_to_string_false_529
L_bool_to_string_true_528:
    ldstr "true"
L_bool_to_string_false_529:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1290
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar6:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Svb
    ldsfld int32 _G::Svb
    ceq
    brtrue L_bool_to_string_true_530
    ldstr "false"
    br L_bool_to_string_false_531
L_bool_to_string_true_530:
    ldstr "true"
L_bool_to_string_false_531:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1291
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar7:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Sva
    ldsfld int32 _G::Svb
    ceq
    brtrue L_bool_to_string_true_532
    ldstr "false"
    br L_bool_to_string_false_533
L_bool_to_string_true_532:
    ldstr "true"
L_bool_to_string_false_533:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1292
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar8:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Svb
    ldsfld int32 _G::Sva
    clt
    brtrue L_bool_to_string_true_534
    ldstr "false"
    br L_bool_to_string_false_535
L_bool_to_string_true_534:
    ldstr "true"
L_bool_to_string_false_535:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1293
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar9:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Sva
    ldsfld int32 _G::Svb
    clt
    brtrue L_bool_to_string_true_536
    ldstr "false"
    br L_bool_to_string_false_537
L_bool_to_string_true_536:
    ldstr "true"
L_bool_to_string_false_537:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1294
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar10:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Sva
    ldsfld int32 _G::Svb
    cgt
    brtrue L_bool_to_string_true_538
    ldstr "false"
    br L_bool_to_string_false_539
L_bool_to_string_true_538:
    ldstr "true"
L_bool_to_string_false_539:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1295
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar11:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Svb
    ldsfld int32 _G::Sva
    cgt
    brtrue L_bool_to_string_true_540
    ldstr "false"
    br L_bool_to_string_false_541
L_bool_to_string_true_540:
    ldstr "true"
L_bool_to_string_false_541:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1296
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar12:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Sva
    ldsfld int32 _G::Svb
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_542
    ldstr "false"
    br L_bool_to_string_false_543
L_bool_to_string_true_542:
    ldstr "true"
L_bool_to_string_false_543:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1297
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar13:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Sva
    ldsfld int32 _G::Svc
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_544
    ldstr "false"
    br L_bool_to_string_false_545
L_bool_to_string_true_544:
    ldstr "true"
L_bool_to_string_false_545:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1298
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar14:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Svb
    ldsfld int32 _G::Sva
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_546
    ldstr "false"
    br L_bool_to_string_false_547
L_bool_to_string_true_546:
    ldstr "true"
L_bool_to_string_false_547:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1299
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar15:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Sva
    ldsfld int32 _G::Svc
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_548
    ldstr "false"
    br L_bool_to_string_false_549
L_bool_to_string_true_548:
    ldstr "true"
L_bool_to_string_false_549:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1300
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar16:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Sva
    ldsfld int32 _G::Svb
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_550
    ldstr "false"
    br L_bool_to_string_false_551
L_bool_to_string_true_550:
    ldstr "true"
L_bool_to_string_false_551:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1301
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar17:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Sva
    ldsfld int32 _G::Svb
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_552
    ldstr "false"
    br L_bool_to_string_false_553
L_bool_to_string_true_552:
    ldstr "true"
L_bool_to_string_false_553:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1302
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar18:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Svb
    ldsfld int32 _G::Svb
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_554
    ldstr "false"
    br L_bool_to_string_false_555
L_bool_to_string_true_554:
    ldstr "true"
L_bool_to_string_false_555:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1303
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar19:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Svb
    ldsfld int32 _G::Sva
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_556
    ldstr "false"
    br L_bool_to_string_false_557
L_bool_to_string_true_556:
    ldstr "true"
L_bool_to_string_false_557:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1304
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar20:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1305
    ldc.i4 6 // sun 
    stloc $tmpEndValue61
    ldc.i4 0 // mon 
    dup
    ldloc $tmpEndValue61
    bgt L_for_end_559
    dup
    ldc.i4 0
    ldc.i4 6
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex62
    ldloc $tmpIndex62
    stsfld int32 _G::Sva
L_for_loop_558:
    .line 1305
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Sva
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::Sva
    dup
    ldloc $tmpEndValue61
    beq L_for_end_559
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 6
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex63
    ldloc $tmpIndex63
    stsfld int32 _G::Sva
    br L_for_loop_558
L_for_end_559:
    pop
    .line 1306
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 0 1 2 3 4 5 6"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1307
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar21:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1308
    ldc.i4 0 // mon 
    stloc $tmpEndValue64
    ldc.i4 6 // sun 
    dup
    ldloc $tmpEndValue64
    blt L_for_end_561
    dup
    ldc.i4 0
    ldc.i4 6
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex65
    ldloc $tmpIndex65
    stsfld int32 _G::Svb
L_for_loop_560:
    .line 1308
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Svb
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::Svb
    dup
    ldloc $tmpEndValue64
    beq L_for_end_561
    ldc.i4.1
    sub
    dup
    ldc.i4 0
    ldc.i4 6
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex66
    ldloc $tmpIndex66
    stsfld int32 _G::Svb
    br L_for_loop_560
L_for_end_561:
    pop
    .line 1309
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 6 5 4 3 2 1 0"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1312
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar1:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 0 // mon 
    ldc.i4.1
    add
    ldc.i4 1 // tue 
    ceq
    brtrue L_bool_to_string_true_562
    ldstr "false"
    br L_bool_to_string_false_563
L_bool_to_string_true_562:
    ldstr "true"
L_bool_to_string_false_563:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1313
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar2:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 4 // fri 
    ldc.i4.1
    sub
    ldc.i4 3 // thur 
    ceq
    brtrue L_bool_to_string_true_564
    ldstr "false"
    br L_bool_to_string_false_565
L_bool_to_string_true_564:
    ldstr "true"
L_bool_to_string_false_565:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1314
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar3:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 2 // wed 
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 2"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1315
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar4:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 6 // sun 
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 6"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1316
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar5:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 3 // thur 
    ldc.i4 3 // thur 
    ceq
    brtrue L_bool_to_string_true_566
    ldstr "false"
    br L_bool_to_string_false_567
L_bool_to_string_true_566:
    ldstr "true"
L_bool_to_string_false_567:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1317
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar6:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 4 // fri 
    ldc.i4 4 // fri 
    ceq
    brtrue L_bool_to_string_true_568
    ldstr "false"
    br L_bool_to_string_false_569
L_bool_to_string_true_568:
    ldstr "true"
L_bool_to_string_false_569:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1318
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar7:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 1 // tue 
    ldc.i4 2 // wed 
    ceq
    brtrue L_bool_to_string_true_570
    ldstr "false"
    br L_bool_to_string_false_571
L_bool_to_string_true_570:
    ldstr "true"
L_bool_to_string_false_571:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1319
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar8:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 0 // mon 
    ldc.i4 2 // wed 
    clt
    brtrue L_bool_to_string_true_572
    ldstr "false"
    br L_bool_to_string_false_573
L_bool_to_string_true_572:
    ldstr "true"
L_bool_to_string_false_573:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1320
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar9:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 4 // fri 
    ldc.i4 4 // fri 
    clt
    brtrue L_bool_to_string_true_574
    ldstr "false"
    br L_bool_to_string_false_575
L_bool_to_string_true_574:
    ldstr "true"
L_bool_to_string_false_575:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1321
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar10:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 6 // sun 
    ldc.i4 5 // sat 
    cgt
    brtrue L_bool_to_string_true_576
    ldstr "false"
    br L_bool_to_string_false_577
L_bool_to_string_true_576:
    ldstr "true"
L_bool_to_string_false_577:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1322
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar11:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 4 // fri 
    ldc.i4 6 // sun 
    cgt
    brtrue L_bool_to_string_true_578
    ldstr "false"
    br L_bool_to_string_false_579
L_bool_to_string_true_578:
    ldstr "true"
L_bool_to_string_false_579:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1323
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar12:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 3 // thur 
    ldc.i4 1 // tue 
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_580
    ldstr "false"
    br L_bool_to_string_false_581
L_bool_to_string_true_580:
    ldstr "true"
L_bool_to_string_false_581:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1324
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar13:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 2 // wed 
    ldc.i4 2 // wed 
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_582
    ldstr "false"
    br L_bool_to_string_false_583
L_bool_to_string_true_582:
    ldstr "true"
L_bool_to_string_false_583:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1325
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar14:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 0 // mon 
    ldc.i4 4 // fri 
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_584
    ldstr "false"
    br L_bool_to_string_false_585
L_bool_to_string_true_584:
    ldstr "true"
L_bool_to_string_false_585:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1326
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar15:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 4 // fri 
    ldc.i4 4 // fri 
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_586
    ldstr "false"
    br L_bool_to_string_false_587
L_bool_to_string_true_586:
    ldstr "true"
L_bool_to_string_false_587:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1327
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar16:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 5 // sat 
    ldc.i4 4 // fri 
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_588
    ldstr "false"
    br L_bool_to_string_false_589
L_bool_to_string_true_588:
    ldstr "true"
L_bool_to_string_false_589:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1328
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar17:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 4 // fri 
    ldc.i4 1 // tue 
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_590
    ldstr "false"
    br L_bool_to_string_false_591
L_bool_to_string_true_590:
    ldstr "true"
L_bool_to_string_false_591:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1329
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar18:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 1 // tue 
    ldc.i4 1 // tue 
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_592
    ldstr "false"
    br L_bool_to_string_false_593
L_bool_to_string_true_592:
    ldstr "true"
L_bool_to_string_false_593:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1330
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Scalar19:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 1 // tue 
    ldc.i4 5 // sat 
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_594
    ldstr "false"
    br L_bool_to_string_false_595
L_bool_to_string_true_594:
    ldstr "true"
L_bool_to_string_false_595:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1338
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1339
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "******************* Reals ******************************"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1340
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1343
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real1:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 1.55400
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  1.554000e+00"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1344
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real2:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 0.00334000
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  3.340000e-03"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1345
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real3:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 3.34000e-24
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  3.34000e-24"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1346
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real4:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 4.00000e-45
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  4.000000e-45"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1347
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real5:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 5.56500
    neg
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -5.565000e+03"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1348
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real6:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 0.00944000
    neg
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -9.440000e-03"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1349
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real7:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 6.36400e+29
    neg
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -6.364000e+29"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1350
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real8:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 2.00000e-14
    neg
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -2.000000e-14"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1351
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real9:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1352
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "         11111111112222222222333333333344444444445"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1353
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "12345678901234567890123456789012345678901234567890"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1354
    ldc.i4 20
    stloc $tmpEndValue67
    ldc.i4 1
    dup
    ldloc $tmpEndValue67
    bgt L_for_end_597
    stloc $tmpIndex68
    ldloc $tmpIndex68
    stsfld int32 _G::i
L_for_loop_596:
    .line 1354
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld int32 _G::i
    ldc.i4.0
    ldc.r8 1.23457
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue67
    beq L_for_end_597
    ldc.i4.1
    add
    stloc $tmpIndex69
    ldloc $tmpIndex69
    stsfld int32 _G::i
    br L_for_loop_596
L_for_end_597:
    pop
    .line 1355
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b (note precision dropoff at right):"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1356
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.2e+000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1357
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.2e+000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1358
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.2e+000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1359
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.2e+000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1360
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.2e+000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1361
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.2e+000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1362
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.2e+000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1363
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.2e+000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1364
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.2e+000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1365
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.23e+000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1366
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.234e+000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1367
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.2345e+000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1368
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.23456e+000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1369
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.234567e+000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1370
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.2345678e+000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1371
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.23456789e+000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1372
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.234567890e+000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1373
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.2345678901e+000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1374
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.23456789012e+000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1375
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.234567890123e+000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1376
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real10:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1377
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "         11111111112222222222333333333344444444445"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1378
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "12345678901234567890123456789012345678901234567890"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1379
    ldc.i4 20
    stloc $tmpEndValue70
    ldc.i4 1
    dup
    ldloc $tmpEndValue70
    bgt L_for_end_599
    stloc $tmpIndex71
    ldloc $tmpIndex71
    stsfld int32 _G::i
L_for_loop_598:
    .line 1379
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldsfld int32 _G::i
    ldsfld int32 _G::i
    conv.r8
    ldc.r8 0.234568
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue70
    beq L_for_end_599
    ldc.i4.1
    add
    stloc $tmpIndex72
    ldloc $tmpIndex72
    stsfld int32 _G::i
    br L_for_loop_598
L_for_end_599:
    pop
    .line 1380
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b (note precision dropoff at right):"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1381
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "1.2"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1382
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "2.23"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1383
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "3.234"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1384
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "4.2345"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1385
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "5.23456"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1386
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "6.234567"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1387
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "7.2345678"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1388
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "8.23456789"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1389
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "9.234567890"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1390
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "10.2345678901"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1391
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "11.23456789012"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1392
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "12.234567890123"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1393
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "13.2345678901234"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1394
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "14.23456789012345"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1395
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "15.234567890123456"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1396
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "16.2345678901234567"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1397
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "17.23456789012345678"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1398
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "18.234567890123456789"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1399
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "19.2345678901234567890"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1400
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "20.23456789012345678901"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1403
    ldc.r8 435.230
    stsfld float64 _G::Ra
    .line 1404
    ldc.r8 983.670
    stsfld float64 _G::Rb
    .line 1405
    ldsfld float64 _G::Rb
    stsfld float64 _G::Rc
    .line 1406
    ldc.r8 0.344300
    stsfld float64 _G::Rd
    .line 1407
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real11:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rb
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  1.418900e+03"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1408
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Rea112:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Rb
    ldsfld float64 _G::Ra
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  5.484399e+02"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1409
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real13:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rb
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  4.281227e+05"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1410
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real14:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Rb
    ldsfld float64 _G::Ra
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  2.260115e+00"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1411
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real15:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Rc
    ldsfld float64 _G::Rb
    ceq
    brtrue L_bool_to_string_true_600
    ldstr "false"
    br L_bool_to_string_false_601
L_bool_to_string_true_600:
    ldstr "true"
L_bool_to_string_false_601:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1412
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real16:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rb
    ceq
    brtrue L_bool_to_string_true_602
    ldstr "false"
    br L_bool_to_string_false_603
L_bool_to_string_true_602:
    ldstr "true"
L_bool_to_string_false_603:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1413
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real17:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rb
    clt
    brtrue L_bool_to_string_true_604
    ldstr "false"
    br L_bool_to_string_false_605
L_bool_to_string_true_604:
    ldstr "true"
L_bool_to_string_false_605:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1414
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real18:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Rb
    ldsfld float64 _G::Ra
    clt
    brtrue L_bool_to_string_true_606
    ldstr "false"
    br L_bool_to_string_false_607
L_bool_to_string_true_606:
    ldstr "true"
L_bool_to_string_false_607:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1415
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real19:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Rb
    ldsfld float64 _G::Ra
    cgt
    brtrue L_bool_to_string_true_608
    ldstr "false"
    br L_bool_to_string_false_609
L_bool_to_string_true_608:
    ldstr "true"
L_bool_to_string_false_609:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1416
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real20:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rb
    cgt
    brtrue L_bool_to_string_true_610
    ldstr "false"
    br L_bool_to_string_false_611
L_bool_to_string_true_610:
    ldstr "true"
L_bool_to_string_false_611:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1417
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real21:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rb
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_612
    ldstr "false"
    br L_bool_to_string_false_613
L_bool_to_string_true_612:
    ldstr "true"
L_bool_to_string_false_613:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1418
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real22:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Rb
    ldsfld float64 _G::Rc
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_614
    ldstr "false"
    br L_bool_to_string_false_615
L_bool_to_string_true_614:
    ldstr "true"
L_bool_to_string_false_615:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1419
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real23:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rb
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_616
    ldstr "false"
    br L_bool_to_string_false_617
L_bool_to_string_true_616:
    ldstr "true"
L_bool_to_string_false_617:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1420
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real24:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Rc
    ldsfld float64 _G::Rb
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_618
    ldstr "false"
    br L_bool_to_string_false_619
L_bool_to_string_true_618:
    ldstr "true"
L_bool_to_string_false_619:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1421
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real25:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Rb
    ldsfld float64 _G::Ra
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_620
    ldstr "false"
    br L_bool_to_string_false_621
L_bool_to_string_true_620:
    ldstr "true"
L_bool_to_string_false_621:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1422
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real26:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Rb
    ldsfld float64 _G::Ra
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_622
    ldstr "false"
    br L_bool_to_string_false_623
L_bool_to_string_true_622:
    ldstr "true"
L_bool_to_string_false_623:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1423
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real27:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Rb
    ldsfld float64 _G::Rc
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_624
    ldstr "false"
    br L_bool_to_string_false_625
L_bool_to_string_true_624:
    ldstr "true"
L_bool_to_string_false_625:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1424
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real28:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rb
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_626
    ldstr "false"
    br L_bool_to_string_false_627
L_bool_to_string_true_626:
    ldstr "true"
L_bool_to_string_false_627:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1425
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real29:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Ra
    dup
    ldc.r8 0
    bge L_abs_question_628
    neg
L_abs_question_628:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  4.35230e+02"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1426
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real30:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Ra
    dup
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  1.89425e+05"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1427
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real31:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Rb
    call float64 [lpcRuntime]LPC.Helpers::Sqrt(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  3.13635e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1428
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real32:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Rb
    call float64 [lpcRuntime]LPC.Helpers::Sin(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -3.44290e-01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1429
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real33:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Ra
    call float64 [lpcRuntime]LPC.Helpers::Arctan(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  1.56850e+00"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1430
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real34:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Rd
    call float64 [lpcRuntime]LPC.Helpers::Exp(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  1.41100e+00"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1431
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real35:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Ra
    call float64 [lpcRuntime]LPC.Helpers::Ln(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  6.07587e+00"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1432
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real36:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld float64 _G::Ra
    call int32 [lpcRuntime]LPC.Helpers::Trunc(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 435"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1433
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real37:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld float64 _G::Rb
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 984"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1434
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real38:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld float64 _G::Ra
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 435"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1437
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real39:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 344.939
    ldc.r8 933.113
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  1.278052e+03"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1438
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real40:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 883.885
    ldc.r8 644.939
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  2.389460e+02"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1439
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real41:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 754.740
    ldc.r8 138.750
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  1.047202e+05"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1440
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real42:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 634.300
    ldc.r8 87374.0
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  7.259598e-03"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1441
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real43:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 77.4400
    ldc.r8 77.4400
    ceq
    brtrue L_bool_to_string_true_629
    ldstr "false"
    br L_bool_to_string_false_630
L_bool_to_string_true_629:
    ldstr "true"
L_bool_to_string_false_630:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1442
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real44:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 733.900
    ldc.r8 959.200
    ceq
    brtrue L_bool_to_string_true_631
    ldstr "false"
    br L_bool_to_string_false_632
L_bool_to_string_true_631:
    ldstr "true"
L_bool_to_string_false_632:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1443
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real45:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 883.220
    ldc.r8 8383.33
    clt
    brtrue L_bool_to_string_true_633
    ldstr "false"
    br L_bool_to_string_false_634
L_bool_to_string_true_633:
    ldstr "true"
L_bool_to_string_false_634:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1444
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real46:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 475.322
    ldc.r8 234.930
    clt
    brtrue L_bool_to_string_true_635
    ldstr "false"
    br L_bool_to_string_false_636
L_bool_to_string_true_635:
    ldstr "true"
L_bool_to_string_false_636:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1445
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real47:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 7374.30
    ldc.r8 6442.34
    cgt
    brtrue L_bool_to_string_true_637
    ldstr "false"
    br L_bool_to_string_false_638
L_bool_to_string_true_637:
    ldstr "true"
L_bool_to_string_false_638:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1446
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real48:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 985.562
    ldc.r8 1001.95
    cgt
    brtrue L_bool_to_string_true_639
    ldstr "false"
    br L_bool_to_string_false_640
L_bool_to_string_true_639:
    ldstr "true"
L_bool_to_string_false_640:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1447
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real49:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 30.1100
    ldc.r8 938.440
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_641
    ldstr "false"
    br L_bool_to_string_false_642
L_bool_to_string_true_641:
    ldstr "true"
L_bool_to_string_false_642:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1448
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real50:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 1.23300
    ldc.r8 1.23300
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_643
    ldstr "false"
    br L_bool_to_string_false_644
L_bool_to_string_true_643:
    ldstr "true"
L_bool_to_string_false_644:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1449
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real51:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 8484.00
    ldc.r8 9344.00
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_645
    ldstr "false"
    br L_bool_to_string_false_646
L_bool_to_string_true_645:
    ldstr "true"
L_bool_to_string_false_646:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1450
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real52:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 9.11000
    ldc.r8 9.11000
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_647
    ldstr "false"
    br L_bool_to_string_false_648
L_bool_to_string_true_647:
    ldstr "true"
L_bool_to_string_false_648:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1451
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real53:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 93.3230
    ldc.r8 90.3230
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_649
    ldstr "false"
    br L_bool_to_string_false_650
L_bool_to_string_true_649:
    ldstr "true"
L_bool_to_string_false_650:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1452
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real54:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 6543.44
    ldc.r8 5883.33
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_651
    ldstr "false"
    br L_bool_to_string_false_652
L_bool_to_string_true_651:
    ldstr "true"
L_bool_to_string_false_652:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1453
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real55:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 3247.03
    ldc.r8 3247.03
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_653
    ldstr "false"
    br L_bool_to_string_false_654
L_bool_to_string_true_653:
    ldstr "true"
L_bool_to_string_false_654:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1454
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real56:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 28343.2
    ldc.r8 30044.5
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_655
    ldstr "false"
    br L_bool_to_string_false_656
L_bool_to_string_true_655:
    ldstr "true"
L_bool_to_string_false_656:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1455
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real57:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 34.9300
    dup
    ldc.r8 0
    bge L_abs_question_657
    neg
L_abs_question_657:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  3.493000e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1456
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real58:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 2.34000
    dup
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  5.475600e+00"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1457
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real59:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 9454.32
    call float64 [lpcRuntime]LPC.Helpers::Sqrt(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  9.723333e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1458
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real60:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 34.2200
    call float64 [lpcRuntime]LPC.Helpers::Sin(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  3.311461e-01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1459
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real61:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 343.200
    call float64 [lpcRuntime]LPC.Helpers::Arctan(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  1.567883e+00"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1460
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real62:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 0.332000
    call float64 [lpcRuntime]LPC.Helpers::Exp(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  1.393753e+00"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1461
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real63:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 83.2200
    call float64 [lpcRuntime]LPC.Helpers::Ln(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  4.421488e+00"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1462
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real64:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.r8 24.3440
    call int32 [lpcRuntime]LPC.Helpers::Trunc(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 24"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1463
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real65:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.r8 74.5600
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 75"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1464
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real66:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.r8 83.2400
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 83"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1465
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real67:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 43.3300 // rcnst 
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  4.333000e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1468
    ldc.r8 734.200
    neg
    stsfld float64 _G::Ra
    .line 1469
    ldc.r8 7634.52
    neg
    stsfld float64 _G::Rb
    .line 1470
    ldsfld float64 _G::Ra
    stsfld float64 _G::Rc
    .line 1471
    ldc.r8 1034.54
    stsfld float64 _G::Rd
    .line 1472
    ldc.r8 0.384830
    neg
    stsfld float64 _G::Re
    .line 1473
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real68:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rd
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  3.003400e+02"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1474
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real69:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Rd
    ldsfld float64 _G::Ra
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  3.003400e+02"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1475
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real70:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Rb
    ldsfld float64 _G::Rd
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -6.599980e+03"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1476
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real71:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rb
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -8.368720e+03"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1477
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real72:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Rd
    ldsfld float64 _G::Ra
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  1.768740e+03"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1478
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real73:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Rb
    ldsfld float64 _G::Rd
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -8.669061e+03"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1479
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real74:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Rb
    ldsfld float64 _G::Ra
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -6.900320e+03"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1480
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real75:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Rd
    ldsfld float64 _G::Ra
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -7.595593e+05"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1481
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real76:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rd
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -7.595593e+05"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1482
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real77:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rb
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  5.605265e+06"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1483
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real78:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Rd
    ldsfld float64 _G::Ra
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -1.409071e+00"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1484
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real79:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Rb
    ldsfld float64 _G::Rd
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -7.379627e+00"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1485
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real80:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Rb
    ldsfld float64 _G::Ra
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  1.039842e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1486
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real81:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rc
    ceq
    brtrue L_bool_to_string_true_658
    ldstr "false"
    br L_bool_to_string_false_659
L_bool_to_string_true_658:
    ldstr "true"
L_bool_to_string_false_659:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1487
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real82:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rb
    ceq
    brtrue L_bool_to_string_true_660
    ldstr "false"
    br L_bool_to_string_false_661
L_bool_to_string_true_660:
    ldstr "true"
L_bool_to_string_false_661:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1488
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real83:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rb
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_662
    ldstr "false"
    br L_bool_to_string_false_663
L_bool_to_string_true_662:
    ldstr "true"
L_bool_to_string_false_663:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1489
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real84:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rc
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_664
    ldstr "false"
    br L_bool_to_string_false_665
L_bool_to_string_true_664:
    ldstr "true"
L_bool_to_string_false_665:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1490
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real85:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rd
    clt
    brtrue L_bool_to_string_true_666
    ldstr "false"
    br L_bool_to_string_false_667
L_bool_to_string_true_666:
    ldstr "true"
L_bool_to_string_false_667:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1491
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real86:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Rb
    ldsfld float64 _G::Ra
    clt
    brtrue L_bool_to_string_true_668
    ldstr "false"
    br L_bool_to_string_false_669
L_bool_to_string_true_668:
    ldstr "true"
L_bool_to_string_false_669:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1492
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real87:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Rd
    ldsfld float64 _G::Ra
    clt
    brtrue L_bool_to_string_true_670
    ldstr "false"
    br L_bool_to_string_false_671
L_bool_to_string_true_670:
    ldstr "true"
L_bool_to_string_false_671:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1493
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real88:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rb
    clt
    brtrue L_bool_to_string_true_672
    ldstr "false"
    br L_bool_to_string_false_673
L_bool_to_string_true_672:
    ldstr "true"
L_bool_to_string_false_673:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1494
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real89:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Rd
    ldsfld float64 _G::Ra
    cgt
    brtrue L_bool_to_string_true_674
    ldstr "false"
    br L_bool_to_string_false_675
L_bool_to_string_true_674:
    ldstr "true"
L_bool_to_string_false_675:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1495
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real90:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rb
    cgt
    brtrue L_bool_to_string_true_676
    ldstr "false"
    br L_bool_to_string_false_677
L_bool_to_string_true_676:
    ldstr "true"
L_bool_to_string_false_677:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1496
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real91:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rd
    cgt
    brtrue L_bool_to_string_true_678
    ldstr "false"
    br L_bool_to_string_false_679
L_bool_to_string_true_678:
    ldstr "true"
L_bool_to_string_false_679:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1497
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real92:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Rb
    ldsfld float64 _G::Ra
    cgt
    brtrue L_bool_to_string_true_680
    ldstr "false"
    br L_bool_to_string_false_681
L_bool_to_string_true_680:
    ldstr "true"
L_bool_to_string_false_681:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1498
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real93:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rd
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_682
    ldstr "false"
    br L_bool_to_string_false_683
L_bool_to_string_true_682:
    ldstr "true"
L_bool_to_string_false_683:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1499
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real94:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Rb
    ldsfld float64 _G::Ra
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_684
    ldstr "false"
    br L_bool_to_string_false_685
L_bool_to_string_true_684:
    ldstr "true"
L_bool_to_string_false_685:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1500
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real95:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rc
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_686
    ldstr "false"
    br L_bool_to_string_false_687
L_bool_to_string_true_686:
    ldstr "true"
L_bool_to_string_false_687:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1501
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real96:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Rd
    ldsfld float64 _G::Ra
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_688
    ldstr "false"
    br L_bool_to_string_false_689
L_bool_to_string_true_688:
    ldstr "true"
L_bool_to_string_false_689:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1502
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real97:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rb
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_690
    ldstr "false"
    br L_bool_to_string_false_691
L_bool_to_string_true_690:
    ldstr "true"
L_bool_to_string_false_691:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1503
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real98:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Rd
    ldsfld float64 _G::Ra
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_692
    ldstr "false"
    br L_bool_to_string_false_693
L_bool_to_string_true_692:
    ldstr "true"
L_bool_to_string_false_693:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1504
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real99:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rb
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_694
    ldstr "false"
    br L_bool_to_string_false_695
L_bool_to_string_true_694:
    ldstr "true"
L_bool_to_string_false_695:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1505
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real100: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rc
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_696
    ldstr "false"
    br L_bool_to_string_false_697
L_bool_to_string_true_696:
    ldstr "true"
L_bool_to_string_false_697:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1506
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real101: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Ra
    ldsfld float64 _G::Rd
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_698
    ldstr "false"
    br L_bool_to_string_false_699
L_bool_to_string_true_698:
    ldstr "true"
L_bool_to_string_false_699:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1507
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real102: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld float64 _G::Rb
    ldsfld float64 _G::Ra
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_700
    ldstr "false"
    br L_bool_to_string_false_701
L_bool_to_string_true_700:
    ldstr "true"
L_bool_to_string_false_701:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1508
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real103: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Ra
    dup
    ldc.r8 0
    bge L_abs_question_702
    neg
L_abs_question_702:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  7.34200e+02"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1509
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real104: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Ra
    dup
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  5.39050e+05"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1510
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real105: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Rb
    call float64 [lpcRuntime]LPC.Helpers::Sin(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -4.34850e-01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1511
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real106: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Ra
    call float64 [lpcRuntime]LPC.Helpers::Arctan(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -1.56943e+00"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1512
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real107: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Re
    call float64 [lpcRuntime]LPC.Helpers::Exp(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  6.80566e-01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1513
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real108: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Ra
    call int32 [lpcRuntime]LPC.Helpers::Trunc(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -734"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1514
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real109: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Rb
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -7635"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1515
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real110: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Ra
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -734"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1518
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real111: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 45.9340
    ldc.r8 30.8340
    neg
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  1.510000e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1519
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real112: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 25.7370
    neg
    ldc.r8 70.8700
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  4.513300e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1520
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real113: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 62.6300
    neg
    ldc.r8 23.9900
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -3.864000e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1521
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real114: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 20.7330
    neg
    ldc.r8 15.8480
    neg
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -3.658100e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1522
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real115: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 20.7740
    ldc.r8 14.7740
    neg
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  3.554800e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1523
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real116: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 34.5230
    neg
    ldc.r8 14.8754
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -4.939840e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1524
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real117: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 56.6640
    neg
    ldc.r8 12.6630
    neg
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -4.400100e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1525
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real118: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 5.66300
    ldc.r8 4.66400
    neg
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -2.641223e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1526
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real119: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 18.6200
    neg
    ldc.r8 7.99700
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -1.489041e+02"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1527
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real120: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 40.5520
    neg
    ldc.r8 13.7740
    neg
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  5.585632e+02"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1528
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real121: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 30.6632
    ldc.r8 5.87400
    neg
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -5.220157e+00"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1529
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real122: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 50.6360
    neg
    ldc.r8 2.85730
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -1.772163e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1530
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real123: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 20.7631
    neg
    ldc.r8 4.85734
    neg
    div
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  4.274582e+00"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1531
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real124: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 5.77500
    neg
    ldc.r8 5.77500
    neg
    ceq
    brtrue L_bool_to_string_true_703
    ldstr "false"
    br L_bool_to_string_false_704
L_bool_to_string_true_703:
    ldstr "true"
L_bool_to_string_false_704:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1532
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real125: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 5.63640
    neg
    ldc.r8 5.85750
    ceq
    brtrue L_bool_to_string_true_705
    ldstr "false"
    br L_bool_to_string_false_706
L_bool_to_string_true_705:
    ldstr "true"
L_bool_to_string_false_706:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1533
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real126: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 21.6385
    neg
    ldc.r8 40.7640
    neg
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_707
    ldstr "false"
    br L_bool_to_string_false_708
L_bool_to_string_true_707:
    ldstr "true"
L_bool_to_string_false_708:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1534
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real127: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 21.7720
    neg
    ldc.r8 21.7720
    neg
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_709
    ldstr "false"
    br L_bool_to_string_false_710
L_bool_to_string_true_709:
    ldstr "true"
L_bool_to_string_false_710:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1535
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real128: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 3.51200
    neg
    ldc.r8 5.84670
    clt
    brtrue L_bool_to_string_true_711
    ldstr "false"
    br L_bool_to_string_false_712
L_bool_to_string_true_711:
    ldstr "true"
L_bool_to_string_false_712:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1536
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real129: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 32.6440
    neg
    ldc.r8 20.9074
    neg
    clt
    brtrue L_bool_to_string_true_713
    ldstr "false"
    br L_bool_to_string_false_714
L_bool_to_string_true_713:
    ldstr "true"
L_bool_to_string_false_714:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1537
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real130: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 20.7630
    ldc.r8 20.7430
    neg
    clt
    brtrue L_bool_to_string_true_715
    ldstr "false"
    br L_bool_to_string_false_716
L_bool_to_string_true_715:
    ldstr "true"
L_bool_to_string_false_716:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1538
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real131: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 15.6630
    neg
    ldc.r8 40.7840
    neg
    clt
    brtrue L_bool_to_string_true_717
    ldstr "false"
    br L_bool_to_string_false_718
L_bool_to_string_true_717:
    ldstr "true"
L_bool_to_string_false_718:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1539
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real132: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 70.7660
    ldc.r8 4.97400
    neg
    cgt
    brtrue L_bool_to_string_true_719
    ldstr "false"
    br L_bool_to_string_false_720
L_bool_to_string_true_719:
    ldstr "true"
L_bool_to_string_false_720:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1540
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real133: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 23.6532
    neg
    ldc.r8 34.7740
    neg
    cgt
    brtrue L_bool_to_string_true_721
    ldstr "false"
    br L_bool_to_string_false_722
L_bool_to_string_true_721:
    ldstr "true"
L_bool_to_string_false_722:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1541
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real134: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 5.77300
    neg
    ldc.r8 5.98740
    cgt
    brtrue L_bool_to_string_true_723
    ldstr "false"
    br L_bool_to_string_false_724
L_bool_to_string_true_723:
    ldstr "true"
L_bool_to_string_false_724:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1542
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real135: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 60.6630
    neg
    ldc.r8 59.7800
    neg
    cgt
    brtrue L_bool_to_string_true_725
    ldstr "false"
    br L_bool_to_string_false_726
L_bool_to_string_true_725:
    ldstr "true"
L_bool_to_string_false_726:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1543
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real136: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 12.5420
    neg
    ldc.r8 4.08480
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_727
    ldstr "false"
    br L_bool_to_string_false_728
L_bool_to_string_true_727:
    ldstr "true"
L_bool_to_string_false_728:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1544
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real137: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 14.8763
    neg
    ldc.r8 5.08470
    neg
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_729
    ldstr "false"
    br L_bool_to_string_false_730
L_bool_to_string_true_729:
    ldstr "true"
L_bool_to_string_false_730:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1545
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real138: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 7.83730
    neg
    ldc.r8 7.83730
    neg
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_731
    ldstr "false"
    br L_bool_to_string_false_732
L_bool_to_string_true_731:
    ldstr "true"
L_bool_to_string_false_732:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1546
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real139: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 5.45640
    ldc.r8 5.45640
    neg
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_733
    ldstr "false"
    br L_bool_to_string_false_734
L_bool_to_string_true_733:
    ldstr "true"
L_bool_to_string_false_734:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1547
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real140: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 10.7263
    neg
    ldc.r8 20.9840
    neg
    cgt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_735
    ldstr "false"
    br L_bool_to_string_false_736
L_bool_to_string_true_735:
    ldstr "true"
L_bool_to_string_false_736:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1548
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real141: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 9.83400
    ldc.r8 3.93830
    neg
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_737
    ldstr "false"
    br L_bool_to_string_false_738
L_bool_to_string_true_737:
    ldstr "true"
L_bool_to_string_false_738:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1549
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real142: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 4.56200
    neg
    ldc.r8 10.7400
    neg
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_739
    ldstr "false"
    br L_bool_to_string_false_740
L_bool_to_string_true_739:
    ldstr "true"
L_bool_to_string_false_740:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1550
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real143: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 13.6300
    neg
    ldc.r8 13.6300
    neg
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_741
    ldstr "false"
    br L_bool_to_string_false_742
L_bool_to_string_true_741:
    ldstr "true"
L_bool_to_string_false_742:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1551
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real144: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 6.74000
    neg
    ldc.r8 6.74000
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_743
    ldstr "false"
    br L_bool_to_string_false_744
L_bool_to_string_true_743:
    ldstr "true"
L_bool_to_string_false_744:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1552
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real145: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.r8 20.7623
    neg
    ldc.r8 10.5740
    neg
    clt
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_745
    ldstr "false"
    br L_bool_to_string_false_746
L_bool_to_string_true_745:
    ldstr "true"
L_bool_to_string_false_746:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1553
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real146: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 6.82300
    neg
    dup
    ldc.r8 0
    bge L_abs_question_747
    neg
L_abs_question_747:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  6.823000e+00"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1554
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real147  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 348.220
    neg
    dup
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  1.212572e+05"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1555
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real148: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 733.220
    neg
    call float64 [lpcRuntime]LPC.Helpers::Sin(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  9.421146e-01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1556
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real149: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 8387.22
    neg
    call float64 [lpcRuntime]LPC.Helpers::Arctan(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -1.570677e+00"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1557
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real150: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 0.874300
    neg
    call float64 [lpcRuntime]LPC.Helpers::Exp(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b  4.171539e-01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1558
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real151: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.r8 33.4220
    neg
    call int32 [lpcRuntime]LPC.Helpers::Trunc(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -33"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1559
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real152: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.r8 843.220
    neg
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -843"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1560
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real153: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.r8 6243.76
    neg
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -6244"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1561
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real154: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.i4 -2061584302 // rscst 
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b -8.422000e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1562
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real155: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.i4 -2061584302 // rscst 
    neg
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b  8.422000e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1563
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real156:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 -43.3300 // rscst2 
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b -4.333000e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1564
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Real157: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.i4 2061584302 // rscst3 
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b  8.422000e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1572
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1573
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "******************* sets ******************************"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1574
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1577
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set1:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1578
    ldloc $tmpSetLiteral73
    dup
    ldc.i4 1
    ldc.i4 100
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_129 _SetCastTo_T_set_129(valuetype T_cset s)
    stsfld valuetype T_set_129 _G::Sta
    .line 1579
    ldc.i4 10
    stloc $tmpEndValue74
    ldc.i4 1
    dup
    ldloc $tmpEndValue74
    bgt L_for_end_749
    stloc $tmpIndex75
    ldloc $tmpIndex75
    stsfld int32 _G::i
L_for_loop_748:
    .line 1579
    ldsfld int32 _G::i
    ldc.i4.1
    and
    brfalse L_if_end_750
    .line 1579
    ldloca $tmpSetLiteral76
    call instance void T_cset::clear()
    ldloca $tmpSetLiteral76
    ldsfld int32 _G::i
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral76
    ldsfld int32 _G::i
    ldc.i4 10
    add
    call instance void T_cset::addValue(int32)
    ldsfld valuetype T_set_129 _G::Sta
    call valuetype T_cset _SetCastTo_T_cset(valuetype T_set_129 s)
    ldloc $tmpSetLiteral76
    call valuetype T_cset _SetUnion(valuetype T_cset a, valuetype T_cset b)
    dup
    ldc.i4 1
    ldc.i4 100
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_129 _SetCastTo_T_set_129(valuetype T_cset s)
    stsfld valuetype T_set_129 _G::Sta
L_if_end_750:
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue74
    beq L_for_end_749
    ldc.i4.1
    add
    stloc $tmpIndex77
    ldloc $tmpIndex77
    stsfld int32 _G::i
    br L_for_loop_748
L_for_end_749:
    pop
    .line 1580
    ldc.i4 20
    stloc $tmpEndValue78
    ldc.i4 1
    dup
    ldloc $tmpEndValue78
    bgt L_for_end_752
    stloc $tmpIndex79
    ldloc $tmpIndex79
    stsfld int32 _G::i
L_for_loop_751:
    .line 1580
    ldsfld valuetype T_set_129 _G::Sta
    ldsfld int32 _G::i
    call bool _SetContains(valuetype T_set_129 s, int32 val)
    brfalse L_else_753
    .line 1580
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 49 // '1'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_754
L_else_753:
    .line 1580
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 48 // '0'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_754:
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue78
    beq L_for_end_752
    ldc.i4.1
    add
    stloc $tmpIndex80
    ldloc $tmpIndex80
    stsfld int32 _G::i
    br L_for_loop_751
L_for_end_752:
    pop
    .line 1581
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1582
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "10101010101010101010"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1583
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set2:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1584
    ldloc $tmpSetLiteral81
    dup
    ldc.i4 1
    ldc.i4 100
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_129 _SetCastTo_T_set_129(valuetype T_cset s)
    stsfld valuetype T_set_129 _G::Sta
    .line 1585
    ldloc $tmpSetLiteral82
    dup
    ldc.i4 1
    ldc.i4 100
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_129 _SetCastTo_T_set_129(valuetype T_cset s)
    stsfld valuetype T_set_129 _G::Stb
    .line 1586
    ldc.i4 10
    stloc $tmpEndValue83
    ldc.i4 1
    dup
    ldloc $tmpEndValue83
    bgt L_for_end_756
    stloc $tmpIndex84
    ldloc $tmpIndex84
    stsfld int32 _G::i
L_for_loop_755:
    .line 1586
    ldsfld valuetype T_set_129 _G::Sta
    ldsfld valuetype T_set_129 _G::Stb
    call valuetype T_set_129 _SetUnion(valuetype T_set_129 a, valuetype T_set_129 b)
    ldsfld int32 _G::i
    call bool _SetContains(valuetype T_set_129 s, int32 val)
    brfalse L_else_757
    .line 1586
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 49 // '1'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_758
L_else_757:
    .line 1586
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 48 // '0'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_758:
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue83
    beq L_for_end_756
    ldc.i4.1
    add
    stloc $tmpIndex85
    ldloc $tmpIndex85
    stsfld int32 _G::i
    br L_for_loop_755
L_for_end_756:
    pop
    .line 1587
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1588
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "1101110001"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1589
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set3:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1590
    ldloc $tmpSetLiteral86
    dup
    ldc.i4 1
    ldc.i4 100
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_129 _SetCastTo_T_set_129(valuetype T_cset s)
    stsfld valuetype T_set_129 _G::Sta
    .line 1591
    ldloc $tmpSetLiteral87
    dup
    ldc.i4 1
    ldc.i4 100
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_129 _SetCastTo_T_set_129(valuetype T_cset s)
    stsfld valuetype T_set_129 _G::Stb
    .line 1592
    ldc.i4 10
    stloc $tmpEndValue88
    ldc.i4 1
    dup
    ldloc $tmpEndValue88
    bgt L_for_end_760
    stloc $tmpIndex89
    ldloc $tmpIndex89
    stsfld int32 _G::i
L_for_loop_759:
    .line 1592
    ldsfld valuetype T_set_129 _G::Sta
    ldsfld valuetype T_set_129 _G::Stb
    call valuetype T_set_129 _SetIntersection(valuetype T_set_129 a, valuetype T_set_129 b)
    ldsfld int32 _G::i
    call bool _SetContains(valuetype T_set_129 s, int32 val)
    brfalse L_else_761
    .line 1592
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 49 // '1'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_762
L_else_761:
    .line 1592
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 48 // '0'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_762:
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue88
    beq L_for_end_760
    ldc.i4.1
    add
    stloc $tmpIndex90
    ldloc $tmpIndex90
    stsfld int32 _G::i
    br L_for_loop_759
L_for_end_760:
    pop
    .line 1593
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1594
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "0100010000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1595
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set4:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1596
    ldloc $tmpSetLiteral91
    dup
    ldc.i4 1
    ldc.i4 100
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_129 _SetCastTo_T_set_129(valuetype T_cset s)
    stsfld valuetype T_set_129 _G::Sta
    .line 1597
    ldloc $tmpSetLiteral92
    dup
    ldc.i4 1
    ldc.i4 100
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_129 _SetCastTo_T_set_129(valuetype T_cset s)
    stsfld valuetype T_set_129 _G::Stb
    .line 1598
    ldc.i4 10
    stloc $tmpEndValue93
    ldc.i4 1
    dup
    ldloc $tmpEndValue93
    bgt L_for_end_764
    stloc $tmpIndex94
    ldloc $tmpIndex94
    stsfld int32 _G::i
L_for_loop_763:
    .line 1598
    ldsfld valuetype T_set_129 _G::Sta
    ldsfld valuetype T_set_129 _G::Stb
    call valuetype T_set_129 _SetDifference(valuetype T_set_129 a, valuetype T_set_129 b)
    ldsfld int32 _G::i
    call bool _SetContains(valuetype T_set_129 s, int32 val)
    brfalse L_else_765
    .line 1598
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 49 // '1'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_766
L_else_765:
    .line 1598
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 48 // '0'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_766:
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue93
    beq L_for_end_764
    ldc.i4.1
    add
    stloc $tmpIndex95
    ldloc $tmpIndex95
    stsfld int32 _G::i
    br L_for_loop_763
L_for_end_764:
    pop
    .line 1599
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1600
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "0100001000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1601
    ldloc $tmpSetLiteral96
    dup
    ldc.i4 1
    ldc.i4 100
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_129 _SetCastTo_T_set_129(valuetype T_cset s)
    stsfld valuetype T_set_129 _G::Sta
    .line 1602
    ldloc $tmpSetLiteral97
    dup
    ldc.i4 1
    ldc.i4 100
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_129 _SetCastTo_T_set_129(valuetype T_cset s)
    stsfld valuetype T_set_129 _G::Stb
    .line 1603
    ldloc $tmpSetLiteral98
    dup
    ldc.i4 1
    ldc.i4 100
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_129 _SetCastTo_T_set_129(valuetype T_cset s)
    stsfld valuetype T_set_129 _G::Stc
    .line 1604
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set5:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_129 _G::Sta
    ldsfld valuetype T_set_129 _G::Stb
    call bool _SetEqual(valuetype T_set_129 a, valuetype T_set_129 b)
    brtrue L_bool_to_string_true_767
    ldstr "false"
    br L_bool_to_string_false_768
L_bool_to_string_true_767:
    ldstr "true"
L_bool_to_string_false_768:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1605
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set6:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_129 _G::Sta
    ldsfld valuetype T_set_129 _G::Stc
    call bool _SetEqual(valuetype T_set_129 a, valuetype T_set_129 b)
    brtrue L_bool_to_string_true_769
    ldstr "false"
    br L_bool_to_string_false_770
L_bool_to_string_true_769:
    ldstr "true"
L_bool_to_string_false_770:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1606
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set7:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_129 _G::Sta
    ldsfld valuetype T_set_129 _G::Stb
    call bool _SetEqual(valuetype T_set_129 a, valuetype T_set_129 b)
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_771
    ldstr "false"
    br L_bool_to_string_false_772
L_bool_to_string_true_771:
    ldstr "true"
L_bool_to_string_false_772:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1607
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set8:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_129 _G::Sta
    ldsfld valuetype T_set_129 _G::Stc
    call bool _SetEqual(valuetype T_set_129 a, valuetype T_set_129 b)
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_773
    ldstr "false"
    br L_bool_to_string_false_774
L_bool_to_string_true_773:
    ldstr "true"
L_bool_to_string_false_774:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1608
    ldloc $tmpSetLiteral99
    dup
    ldc.i4 1
    ldc.i4 100
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_129 _SetCastTo_T_set_129(valuetype T_cset s)
    stsfld valuetype T_set_129 _G::Sta
    .line 1609
    ldloc $tmpSetLiteral100
    dup
    ldc.i4 1
    ldc.i4 100
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_129 _SetCastTo_T_set_129(valuetype T_cset s)
    stsfld valuetype T_set_129 _G::Stb
    .line 1610
    ldloc $tmpSetLiteral101
    dup
    ldc.i4 1
    ldc.i4 100
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_129 _SetCastTo_T_set_129(valuetype T_cset s)
    stsfld valuetype T_set_129 _G::Stc
    .line 1611
    ldloc $tmpSetLiteral102
    dup
    ldc.i4 1
    ldc.i4 100
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_129 _SetCastTo_T_set_129(valuetype T_cset s)
    stsfld valuetype T_set_129 _G::Std
    .line 1612
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set9:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_129 _G::Stb
    ldsfld valuetype T_set_129 _G::Sta
    call bool _SetIsSubset(valuetype T_set_129 a, valuetype T_set_129 b)
    brtrue L_bool_to_string_true_775
    ldstr "false"
    br L_bool_to_string_false_776
L_bool_to_string_true_775:
    ldstr "true"
L_bool_to_string_false_776:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1613
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set10: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_129 _G::Stb
    ldsfld valuetype T_set_129 _G::Std
    call bool _SetIsSubset(valuetype T_set_129 a, valuetype T_set_129 b)
    brtrue L_bool_to_string_true_777
    ldstr "false"
    br L_bool_to_string_false_778
L_bool_to_string_true_777:
    ldstr "true"
L_bool_to_string_false_778:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1614
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set11: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_129 _G::Stc
    ldsfld valuetype T_set_129 _G::Sta
    call bool _SetIsSubset(valuetype T_set_129 a, valuetype T_set_129 b)
    brtrue L_bool_to_string_true_779
    ldstr "false"
    br L_bool_to_string_false_780
L_bool_to_string_true_779:
    ldstr "true"
L_bool_to_string_false_780:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1615
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set12: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_129 _G::Stb
    ldsfld valuetype T_set_129 _G::Sta
    call bool _SetIsSubset(valuetype T_set_129 a, valuetype T_set_129 b)
    brtrue L_bool_to_string_true_781
    ldstr "false"
    br L_bool_to_string_false_782
L_bool_to_string_true_781:
    ldstr "true"
L_bool_to_string_false_782:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1616
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set13: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_129 _G::Stb
    ldsfld valuetype T_set_129 _G::Std
    call bool _SetIsSubset(valuetype T_set_129 a, valuetype T_set_129 b)
    brtrue L_bool_to_string_true_783
    ldstr "false"
    br L_bool_to_string_false_784
L_bool_to_string_true_783:
    ldstr "true"
L_bool_to_string_false_784:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1617
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set14: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_129 _G::Stc
    ldsfld valuetype T_set_129 _G::Sta
    call bool _SetIsSubset(valuetype T_set_129 a, valuetype T_set_129 b)
    brtrue L_bool_to_string_true_785
    ldstr "false"
    br L_bool_to_string_false_786
L_bool_to_string_true_785:
    ldstr "true"
L_bool_to_string_false_786:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1618
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set15: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1619
    ldc.i4 2
    stsfld int32 _G::i
    .line 1620
    ldc.i4 4
    stsfld int32 _G::x
    .line 1621
    ldloca $tmpSetLiteral103
    call instance void T_cset::clear()
    ldloca $tmpSetLiteral103
    ldsfld int32 _G::i
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral103
    ldsfld int32 _G::x
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral103
    ldsfld int32 _G::i
    ldsfld int32 _G::x
    add
    call instance void T_cset::addValue(int32)
    ldloc $tmpSetLiteral103
    dup
    ldc.i4 1
    ldc.i4 100
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_129 _SetCastTo_T_set_129(valuetype T_cset s)
    stsfld valuetype T_set_129 _G::Sta
    .line 1622
    ldc.i4 10
    stloc $tmpEndValue104
    ldc.i4 1
    dup
    ldloc $tmpEndValue104
    bgt L_for_end_788
    stloc $tmpIndex105
    ldloc $tmpIndex105
    stsfld int32 _G::i
L_for_loop_787:
    .line 1622
    ldsfld valuetype T_set_129 _G::Sta
    ldsfld int32 _G::i
    call bool _SetContains(valuetype T_set_129 s, int32 val)
    brfalse L_else_789
    .line 1622
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 49 // '1'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_790
L_else_789:
    .line 1622
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 48 // '0'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_790:
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue104
    beq L_for_end_788
    ldc.i4.1
    add
    stloc $tmpIndex106
    ldloc $tmpIndex106
    stsfld int32 _G::i
    br L_for_loop_787
L_for_end_788:
    pop
    .line 1623
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1624
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "0101010000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1626
    ldsfld valuetype T_set_129 _G::Std
    dup
    ldc.i4 1
    ldc.i4 10
    call void _SetCheck(valuetype T_set_129 s, int32 min, int32 max)
    call valuetype T_set_130 _SetCastTo_T_set_130(valuetype T_set_129 s)
    stsfld valuetype T_set_130 _G::Ste
    .line 1627
    ldloc $tmpSetLiteral107
    dup
    ldc.i4 1
    ldc.i4 10
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_130 _SetCastTo_T_set_130(valuetype T_cset s)
    stsfld valuetype T_set_130 _G::Stf
    .line 1628
    ldsfld valuetype T_set_130 _G::Stf
    call valuetype T_set_132 _SetCastTo_T_set_132(valuetype T_set_130 s)
    stsfld valuetype T_set_132 _G::Stg
    .line 1631
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set16: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1632
    ldloc $tmpSetLiteral108
    stsfld valuetype T_cset _G::Csta
    .line 1633
    ldc.i4 106 // 'j'
    stloc $tmpEndValue109
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue109
    bgt L_for_end_792
    stloc $tmpIndex110
    ldloc $tmpIndex110
    stsfld uint8 _G::Ci
L_for_loop_791:
    .line 1634
    ldsfld uint8 _G::Ci
    ldc.i4.1
    and
    brfalse L_if_end_793
    .line 1634
    ldloca $tmpSetLiteral111
    call instance void T_cset::clear()
    ldloca $tmpSetLiteral111
    ldsfld uint8 _G::Ci
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral111
    ldsfld uint8 _G::Ci
    ldc.i4 10
    add
    call instance void T_cset::addValue(int32)
    ldsfld valuetype T_cset _G::Csta
    ldloc $tmpSetLiteral111
    call valuetype T_cset _SetUnion(valuetype T_cset a, valuetype T_cset b)
    stsfld valuetype T_cset _G::Csta
L_if_end_793:
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue109
    beq L_for_end_792
    ldc.i4.1
    add
    stloc $tmpIndex112
    ldloc $tmpIndex112
    stsfld uint8 _G::Ci
    br L_for_loop_791
L_for_end_792:
    pop
    .line 1635
    ldc.i4 116 // 't'
    stloc $tmpEndValue113
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue113
    bgt L_for_end_795
    stloc $tmpIndex114
    ldloc $tmpIndex114
    stsfld uint8 _G::Ci
L_for_loop_794:
    .line 1635
    ldsfld valuetype T_cset _G::Csta
    ldsfld uint8 _G::Ci
    call bool _SetContains(valuetype T_cset s, int32 val)
    brfalse L_else_796
    .line 1635
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ci
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_797
L_else_796:
    .line 1635
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 95 // '_'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_797:
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue113
    beq L_for_end_795
    ldc.i4.1
    add
    stloc $tmpIndex115
    ldloc $tmpIndex115
    stsfld uint8 _G::Ci
    br L_for_loop_794
L_for_end_795:
    pop
    .line 1636
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1637
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "a_c_e_g_i_k_m_o_q_s_"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1638
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set17: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1639
    ldloc $tmpSetLiteral116
    stsfld valuetype T_cset _G::Csta
    .line 1640
    ldloc $tmpSetLiteral117
    stsfld valuetype T_cset _G::Cstb
    .line 1641
    ldc.i4 106 // 'j'
    stloc $tmpEndValue118
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue118
    bgt L_for_end_799
    stloc $tmpIndex119
    ldloc $tmpIndex119
    stsfld uint8 _G::Ci
L_for_loop_798:
    .line 1641
    ldsfld valuetype T_cset _G::Csta
    ldsfld valuetype T_cset _G::Cstb
    call valuetype T_cset _SetUnion(valuetype T_cset a, valuetype T_cset b)
    ldsfld uint8 _G::Ci
    call bool _SetContains(valuetype T_cset s, int32 val)
    brfalse L_else_800
    .line 1641
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ci
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_801
L_else_800:
    .line 1641
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 95 // '_'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_801:
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue118
    beq L_for_end_799
    ldc.i4.1
    add
    stloc $tmpIndex120
    ldloc $tmpIndex120
    stsfld uint8 _G::Ci
    br L_for_loop_798
L_for_end_799:
    pop
    .line 1642
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1643
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "a_cd_fg___"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1644
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set18: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1645
    ldloc $tmpSetLiteral121
    stsfld valuetype T_cset _G::Csta
    .line 1646
    ldloc $tmpSetLiteral122
    stsfld valuetype T_cset _G::Cstb
    .line 1647
    ldc.i4 106 // 'j'
    stloc $tmpEndValue123
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue123
    bgt L_for_end_803
    stloc $tmpIndex124
    ldloc $tmpIndex124
    stsfld uint8 _G::Ci
L_for_loop_802:
    .line 1647
    ldsfld valuetype T_cset _G::Csta
    ldsfld valuetype T_cset _G::Cstb
    call valuetype T_cset _SetIntersection(valuetype T_cset a, valuetype T_cset b)
    ldsfld uint8 _G::Ci
    call bool _SetContains(valuetype T_cset s, int32 val)
    brfalse L_else_804
    .line 1647
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ci
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_805
L_else_804:
    .line 1647
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 95 // '_'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_805:
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue123
    beq L_for_end_803
    ldc.i4.1
    add
    stloc $tmpIndex125
    ldloc $tmpIndex125
    stsfld uint8 _G::Ci
    br L_for_loop_802
L_for_end_803:
    pop
    .line 1648
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1649
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "a______h__"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1650
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set19: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1651
    ldloc $tmpSetLiteral126
    stsfld valuetype T_cset _G::Csta
    .line 1652
    ldloc $tmpSetLiteral127
    stsfld valuetype T_cset _G::Cstb
    .line 1653
    ldc.i4 106 // 'j'
    stloc $tmpEndValue128
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue128
    bgt L_for_end_807
    stloc $tmpIndex129
    ldloc $tmpIndex129
    stsfld uint8 _G::Ci
L_for_loop_806:
    .line 1653
    ldsfld valuetype T_cset _G::Csta
    ldsfld valuetype T_cset _G::Cstb
    call valuetype T_cset _SetDifference(valuetype T_cset a, valuetype T_cset b)
    ldsfld uint8 _G::Ci
    call bool _SetContains(valuetype T_cset s, int32 val)
    brfalse L_else_808
    .line 1653
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ci
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_809
L_else_808:
    .line 1653
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 95 // '_'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_809:
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue128
    beq L_for_end_807
    ldc.i4.1
    add
    stloc $tmpIndex130
    ldloc $tmpIndex130
    stsfld uint8 _G::Ci
    br L_for_loop_806
L_for_end_807:
    pop
    .line 1654
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1655
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "_b_______j"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1656
    ldloc $tmpSetLiteral131
    stsfld valuetype T_cset _G::Csta
    .line 1657
    ldloc $tmpSetLiteral132
    stsfld valuetype T_cset _G::Cstb
    .line 1658
    ldloc $tmpSetLiteral133
    stsfld valuetype T_cset _G::Cstc
    .line 1659
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set20: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_cset _G::Csta
    ldsfld valuetype T_cset _G::Cstb
    call bool _SetEqual(valuetype T_cset a, valuetype T_cset b)
    brtrue L_bool_to_string_true_810
    ldstr "false"
    br L_bool_to_string_false_811
L_bool_to_string_true_810:
    ldstr "true"
L_bool_to_string_false_811:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1660
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set21: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_cset _G::Csta
    ldsfld valuetype T_cset _G::Cstc
    call bool _SetEqual(valuetype T_cset a, valuetype T_cset b)
    brtrue L_bool_to_string_true_812
    ldstr "false"
    br L_bool_to_string_false_813
L_bool_to_string_true_812:
    ldstr "true"
L_bool_to_string_false_813:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1661
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set22: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_cset _G::Csta
    ldsfld valuetype T_cset _G::Cstb
    call bool _SetEqual(valuetype T_cset a, valuetype T_cset b)
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_814
    ldstr "false"
    br L_bool_to_string_false_815
L_bool_to_string_true_814:
    ldstr "true"
L_bool_to_string_false_815:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1662
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set23: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_cset _G::Csta
    ldsfld valuetype T_cset _G::Cstc
    call bool _SetEqual(valuetype T_cset a, valuetype T_cset b)
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_816
    ldstr "false"
    br L_bool_to_string_false_817
L_bool_to_string_true_816:
    ldstr "true"
L_bool_to_string_false_817:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1663
    ldloc $tmpSetLiteral134
    stsfld valuetype T_cset _G::Csta
    .line 1664
    ldloc $tmpSetLiteral135
    stsfld valuetype T_cset _G::Cstb
    .line 1665
    ldloc $tmpSetLiteral136
    stsfld valuetype T_cset _G::Cstc
    .line 1666
    ldloc $tmpSetLiteral137
    stsfld valuetype T_cset _G::Cstd
    .line 1667
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set24: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_cset _G::Cstb
    ldsfld valuetype T_cset _G::Csta
    call bool _SetIsSubset(valuetype T_cset a, valuetype T_cset b)
    brtrue L_bool_to_string_true_818
    ldstr "false"
    br L_bool_to_string_false_819
L_bool_to_string_true_818:
    ldstr "true"
L_bool_to_string_false_819:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1668
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set25: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_cset _G::Cstb
    ldsfld valuetype T_cset _G::Cstd
    call bool _SetIsSubset(valuetype T_cset a, valuetype T_cset b)
    brtrue L_bool_to_string_true_820
    ldstr "false"
    br L_bool_to_string_false_821
L_bool_to_string_true_820:
    ldstr "true"
L_bool_to_string_false_821:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1669
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set26: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_cset _G::Cstc
    ldsfld valuetype T_cset _G::Csta
    call bool _SetIsSubset(valuetype T_cset a, valuetype T_cset b)
    brtrue L_bool_to_string_true_822
    ldstr "false"
    br L_bool_to_string_false_823
L_bool_to_string_true_822:
    ldstr "true"
L_bool_to_string_false_823:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1670
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set27: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_cset _G::Cstb
    ldsfld valuetype T_cset _G::Csta
    call bool _SetIsSubset(valuetype T_cset a, valuetype T_cset b)
    brtrue L_bool_to_string_true_824
    ldstr "false"
    br L_bool_to_string_false_825
L_bool_to_string_true_824:
    ldstr "true"
L_bool_to_string_false_825:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1671
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set28: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_cset _G::Cstb
    ldsfld valuetype T_cset _G::Cstd
    call bool _SetIsSubset(valuetype T_cset a, valuetype T_cset b)
    brtrue L_bool_to_string_true_826
    ldstr "false"
    br L_bool_to_string_false_827
L_bool_to_string_true_826:
    ldstr "true"
L_bool_to_string_false_827:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1672
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set29: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_cset _G::Cstc
    ldsfld valuetype T_cset _G::Csta
    call bool _SetIsSubset(valuetype T_cset a, valuetype T_cset b)
    brtrue L_bool_to_string_true_828
    ldstr "false"
    br L_bool_to_string_false_829
L_bool_to_string_true_828:
    ldstr "true"
L_bool_to_string_false_829:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1673
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set30: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1674
    ldc.i4 97 // 'a'
    stsfld uint8 _G::Ci
    .line 1675
    ldc.i4 4
    stsfld int32 _G::i
    .line 1676
    ldloca $tmpSetLiteral138
    call instance void T_cset::clear()
    ldloca $tmpSetLiteral138
    ldsfld uint8 _G::Ci
    call instance void T_cset::addValue(int32)
    ldloca $tmpSetLiteral138
    ldsfld uint8 _G::Ci
    ldsfld int32 _G::i
    add
    call instance void T_cset::addValue(int32)
    ldloc $tmpSetLiteral138
    stsfld valuetype T_cset _G::Csta
    .line 1677
    ldc.i4 106 // 'j'
    stloc $tmpEndValue139
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue139
    bgt L_for_end_831
    stloc $tmpIndex140
    ldloc $tmpIndex140
    stsfld uint8 _G::Ci
L_for_loop_830:
    .line 1677
    ldsfld valuetype T_cset _G::Csta
    ldsfld uint8 _G::Ci
    call bool _SetContains(valuetype T_cset s, int32 val)
    brfalse L_else_832
    .line 1677
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ci
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_833
L_else_832:
    .line 1677
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 95 // '_'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_833:
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue139
    beq L_for_end_831
    ldc.i4.1
    add
    stloc $tmpIndex141
    ldloc $tmpIndex141
    stsfld uint8 _G::Ci
    br L_for_loop_830
L_for_end_831:
    pop
    .line 1678
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1679
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "a___e_____"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1681
    ldsfld valuetype T_cset _G::Cstd
    dup
    ldc.i4 97
    ldc.i4 122
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_34 _SetCastTo_T_set_34(valuetype T_cset s)
    stsfld valuetype T_set_34 _G::Cste
    .line 1682
    ldloc $tmpSetLiteral142
    dup
    ldc.i4 97
    ldc.i4 102
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_35 _SetCastTo_T_set_35(valuetype T_cset s)
    stsfld valuetype T_set_35 _G::Cstf
    .line 1683
    ldsfld valuetype T_set_35 _G::Cstf
    call valuetype T_cset _SetCastTo_T_cset(valuetype T_set_35 s)
    stsfld valuetype T_cset _G::Cstg
    .line 1686
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set31: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1687
    ldloc $tmpSetLiteral143
    dup
    ldc.i4 0
    ldc.i4 9
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_123 _SetCastTo_T_set_123(valuetype T_cset s)
    stsfld valuetype T_set_123 _G::Sena
    .line 1688
    ldc.i4 9 // ten 
    stloc $tmpEndValue144
    ldc.i4 0 // one 
    dup
    ldloc $tmpEndValue144
    bgt L_for_end_835
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex145
    ldloc $tmpIndex145
    stsfld int32 _G::Ei
L_for_loop_834:
    .line 1688
    ldsfld int32 _G::Ei
    ldc.i4.1
    and
    brfalse L_if_end_836
    .line 1688
    ldloca $tmpSetLiteral146
    call instance void T_set_123::clear()
    ldloca $tmpSetLiteral146
    ldsfld int32 _G::Ei
    call instance void T_set_123::addValue(int32)
    ldsfld valuetype T_set_123 _G::Sena
    call valuetype T_cset _SetCastTo_T_cset(valuetype T_set_123 s)
    ldloc $tmpSetLiteral146
    call valuetype T_cset _SetCastTo_T_cset(valuetype T_set_123 s)
    call valuetype T_cset _SetUnion(valuetype T_cset a, valuetype T_cset b)
    dup
    ldc.i4 0
    ldc.i4 9
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_123 _SetCastTo_T_set_123(valuetype T_cset s)
    stsfld valuetype T_set_123 _G::Sena
L_if_end_836:
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue144
    beq L_for_end_835
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex147
    ldloc $tmpIndex147
    stsfld int32 _G::Ei
    br L_for_loop_834
L_for_end_835:
    pop
    .line 1689
    ldc.i4 9 // ten 
    stloc $tmpEndValue148
    ldc.i4 0 // one 
    dup
    ldloc $tmpEndValue148
    bgt L_for_end_838
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex149
    ldloc $tmpIndex149
    stsfld int32 _G::Ei
L_for_loop_837:
    .line 1689
    ldsfld valuetype T_set_123 _G::Sena
    ldsfld int32 _G::Ei
    call bool _SetContains(valuetype T_set_123 s, int32 val)
    brfalse L_else_839
    .line 1689
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 49 // '1'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_840
L_else_839:
    .line 1689
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 48 // '0'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_840:
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue148
    beq L_for_end_838
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex150
    ldloc $tmpIndex150
    stsfld int32 _G::Ei
    br L_for_loop_837
L_for_end_838:
    pop
    .line 1690
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1691
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "0101010101"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1692
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set32: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1693
    ldloc $tmpSetLiteral151
    stsfld valuetype T_set_123 _G::Sena
    .line 1694
    ldloc $tmpSetLiteral152
    stsfld valuetype T_set_123 _G::Senb
    .line 1695
    ldc.i4 9 // ten 
    stloc $tmpEndValue153
    ldc.i4 0 // one 
    dup
    ldloc $tmpEndValue153
    bgt L_for_end_842
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex154
    ldloc $tmpIndex154
    stsfld int32 _G::Ei
L_for_loop_841:
    .line 1695
    ldsfld valuetype T_set_123 _G::Sena
    ldsfld valuetype T_set_123 _G::Senb
    call valuetype T_set_123 _SetUnion(valuetype T_set_123 a, valuetype T_set_123 b)
    ldsfld int32 _G::Ei
    call bool _SetContains(valuetype T_set_123 s, int32 val)
    brfalse L_else_843
    .line 1695
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 49 // '1'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_844
L_else_843:
    .line 1695
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 48 // '0'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_844:
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue153
    beq L_for_end_842
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex155
    ldloc $tmpIndex155
    stsfld int32 _G::Ei
    br L_for_loop_841
L_for_end_842:
    pop
    .line 1696
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1697
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "1101110001"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1698
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set33: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1699
    ldloc $tmpSetLiteral156
    stsfld valuetype T_set_123 _G::Sena
    .line 1700
    ldloc $tmpSetLiteral157
    stsfld valuetype T_set_123 _G::Senb
    .line 1701
    ldc.i4 9 // ten 
    stloc $tmpEndValue158
    ldc.i4 0 // one 
    dup
    ldloc $tmpEndValue158
    bgt L_for_end_846
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex159
    ldloc $tmpIndex159
    stsfld int32 _G::Ei
L_for_loop_845:
    .line 1701
    ldsfld valuetype T_set_123 _G::Sena
    ldsfld valuetype T_set_123 _G::Senb
    call valuetype T_set_123 _SetIntersection(valuetype T_set_123 a, valuetype T_set_123 b)
    ldsfld int32 _G::Ei
    call bool _SetContains(valuetype T_set_123 s, int32 val)
    brfalse L_else_847
    .line 1701
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 49 // '1'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_848
L_else_847:
    .line 1701
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 48 // '0'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_848:
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue158
    beq L_for_end_846
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex160
    ldloc $tmpIndex160
    stsfld int32 _G::Ei
    br L_for_loop_845
L_for_end_846:
    pop
    .line 1702
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1703
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "0100010000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1704
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set34: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1705
    ldloc $tmpSetLiteral161
    stsfld valuetype T_set_123 _G::Sena
    .line 1706
    ldloc $tmpSetLiteral162
    stsfld valuetype T_set_123 _G::Senb
    .line 1707
    ldc.i4 9 // ten 
    stloc $tmpEndValue163
    ldc.i4 0 // one 
    dup
    ldloc $tmpEndValue163
    bgt L_for_end_850
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex164
    ldloc $tmpIndex164
    stsfld int32 _G::Ei
L_for_loop_849:
    .line 1707
    ldsfld valuetype T_set_123 _G::Sena
    ldsfld valuetype T_set_123 _G::Senb
    call valuetype T_set_123 _SetDifference(valuetype T_set_123 a, valuetype T_set_123 b)
    ldsfld int32 _G::Ei
    call bool _SetContains(valuetype T_set_123 s, int32 val)
    brfalse L_else_851
    .line 1707
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 49 // '1'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_852
L_else_851:
    .line 1707
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 48 // '0'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_852:
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue163
    beq L_for_end_850
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex165
    ldloc $tmpIndex165
    stsfld int32 _G::Ei
    br L_for_loop_849
L_for_end_850:
    pop
    .line 1708
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1709
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "0100001000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1710
    ldloc $tmpSetLiteral166
    stsfld valuetype T_set_123 _G::Sena
    .line 1711
    ldloc $tmpSetLiteral167
    stsfld valuetype T_set_123 _G::Senb
    .line 1712
    ldloc $tmpSetLiteral168
    stsfld valuetype T_set_123 _G::Senc
    .line 1713
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set35: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_123 _G::Sena
    ldsfld valuetype T_set_123 _G::Senb
    call bool _SetEqual(valuetype T_set_123 a, valuetype T_set_123 b)
    brtrue L_bool_to_string_true_853
    ldstr "false"
    br L_bool_to_string_false_854
L_bool_to_string_true_853:
    ldstr "true"
L_bool_to_string_false_854:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1714
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set36: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_123 _G::Sena
    ldsfld valuetype T_set_123 _G::Senc
    call bool _SetEqual(valuetype T_set_123 a, valuetype T_set_123 b)
    brtrue L_bool_to_string_true_855
    ldstr "false"
    br L_bool_to_string_false_856
L_bool_to_string_true_855:
    ldstr "true"
L_bool_to_string_false_856:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1715
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set37: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_123 _G::Sena
    ldsfld valuetype T_set_123 _G::Senb
    call bool _SetEqual(valuetype T_set_123 a, valuetype T_set_123 b)
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_857
    ldstr "false"
    br L_bool_to_string_false_858
L_bool_to_string_true_857:
    ldstr "true"
L_bool_to_string_false_858:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1716
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set38: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_123 _G::Sena
    ldsfld valuetype T_set_123 _G::Senc
    call bool _SetEqual(valuetype T_set_123 a, valuetype T_set_123 b)
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_859
    ldstr "false"
    br L_bool_to_string_false_860
L_bool_to_string_true_859:
    ldstr "true"
L_bool_to_string_false_860:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1717
    ldloc $tmpSetLiteral169
    stsfld valuetype T_set_123 _G::Sena
    .line 1718
    ldloc $tmpSetLiteral170
    stsfld valuetype T_set_123 _G::Senb
    .line 1719
    ldloc $tmpSetLiteral171
    stsfld valuetype T_set_123 _G::Senc
    .line 1720
    ldloc $tmpSetLiteral172
    stsfld valuetype T_set_123 _G::Send
    .line 1721
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set39: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_123 _G::Senb
    ldsfld valuetype T_set_123 _G::Sena
    call bool _SetIsSubset(valuetype T_set_123 a, valuetype T_set_123 b)
    brtrue L_bool_to_string_true_861
    ldstr "false"
    br L_bool_to_string_false_862
L_bool_to_string_true_861:
    ldstr "true"
L_bool_to_string_false_862:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1722
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set40: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_123 _G::Senb
    ldsfld valuetype T_set_123 _G::Send
    call bool _SetIsSubset(valuetype T_set_123 a, valuetype T_set_123 b)
    brtrue L_bool_to_string_true_863
    ldstr "false"
    br L_bool_to_string_false_864
L_bool_to_string_true_863:
    ldstr "true"
L_bool_to_string_false_864:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1723
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set41: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_123 _G::Senc
    ldsfld valuetype T_set_123 _G::Sena
    call bool _SetIsSubset(valuetype T_set_123 a, valuetype T_set_123 b)
    brtrue L_bool_to_string_true_865
    ldstr "false"
    br L_bool_to_string_false_866
L_bool_to_string_true_865:
    ldstr "true"
L_bool_to_string_false_866:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1724
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set42: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_123 _G::Senb
    ldsfld valuetype T_set_123 _G::Sena
    call bool _SetIsSubset(valuetype T_set_123 a, valuetype T_set_123 b)
    brtrue L_bool_to_string_true_867
    ldstr "false"
    br L_bool_to_string_false_868
L_bool_to_string_true_867:
    ldstr "true"
L_bool_to_string_false_868:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1725
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set43: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_123 _G::Senb
    ldsfld valuetype T_set_123 _G::Send
    call bool _SetIsSubset(valuetype T_set_123 a, valuetype T_set_123 b)
    brtrue L_bool_to_string_true_869
    ldstr "false"
    br L_bool_to_string_false_870
L_bool_to_string_true_869:
    ldstr "true"
L_bool_to_string_false_870:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1726
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set44: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_123 _G::Senc
    ldsfld valuetype T_set_123 _G::Sena
    call bool _SetIsSubset(valuetype T_set_123 a, valuetype T_set_123 b)
    brtrue L_bool_to_string_true_871
    ldstr "false"
    br L_bool_to_string_false_872
L_bool_to_string_true_871:
    ldstr "true"
L_bool_to_string_false_872:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1727
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set45: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1728
    ldc.i4 1 // two 
    stsfld int32 _G::Ei
    .line 1729
    ldloca $tmpSetLiteral173
    call instance void T_set_123::clear()
    ldloca $tmpSetLiteral173
    ldsfld int32 _G::Ei
    call instance void T_set_123::addValue(int32)
    ldloca $tmpSetLiteral173
    ldsfld int32 _G::Ei
    ldc.i4.1
    add
    call instance void T_set_123::addValue(int32)
    ldloc $tmpSetLiteral173
    stsfld valuetype T_set_123 _G::Sena
    .line 1730
    ldc.i4 9 // ten 
    stloc $tmpEndValue174
    ldc.i4 0 // one 
    dup
    ldloc $tmpEndValue174
    bgt L_for_end_874
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex175
    ldloc $tmpIndex175
    stsfld int32 _G::Ei
L_for_loop_873:
    .line 1730
    ldsfld valuetype T_set_123 _G::Sena
    ldsfld int32 _G::Ei
    call bool _SetContains(valuetype T_set_123 s, int32 val)
    brfalse L_else_875
    .line 1730
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 49 // '1'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_876
L_else_875:
    .line 1730
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 48 // '0'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_876:
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue174
    beq L_for_end_874
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex176
    ldloc $tmpIndex176
    stsfld int32 _G::Ei
    br L_for_loop_873
L_for_end_874:
    pop
    .line 1731
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1732
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "0110000000"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1734
    ldloc $tmpSetLiteral177
    stsfld valuetype T_set_123 _G::Send
    .line 1735
    ldsfld valuetype T_set_123 _G::Send
    dup
    ldc.i4 0
    ldc.i4 4
    call void _SetCheck(valuetype T_set_123 s, int32 min, int32 max)
    call valuetype T_set_124 _SetCastTo_T_set_124(valuetype T_set_123 s)
    stsfld valuetype T_set_124 _G::Sene
    .line 1736
    ldloc $tmpSetLiteral178
    stsfld valuetype T_set_123 _G::Senf
    .line 1737
    ldsfld valuetype T_set_123 _G::Senf
    dup
    ldc.i4 0
    ldc.i4 6
    call void _SetCheck(valuetype T_set_123 s, int32 min, int32 max)
    call valuetype T_set_126 _SetCastTo_T_set_126(valuetype T_set_123 s)
    stsfld valuetype T_set_126 _G::Seng
    .line 1740
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set46: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1741
    ldloc $tmpSetLiteral179
    dup
    ldc.i4 0
    ldc.i4 1
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_118 _SetCastTo_T_set_118(valuetype T_cset s)
    stsfld valuetype T_set_118 _G::Sba
    .line 1742
    ldc.i4 1 // (true)
    stloc $tmpEndValue180
    ldc.i4 0 // (false)
    dup
    ldloc $tmpEndValue180
    bgt L_for_end_878
    stloc $tmpIndex181
    ldloc $tmpIndex181
    stsfld bool _G::Ba
L_for_loop_877:
    .line 1742
    ldsfld bool _G::Ba
    ldc.i4.1
    and
    brfalse L_if_end_879
    .line 1742
    ldloca $tmpSetLiteral182
    call instance void T_set_118::clear()
    ldloca $tmpSetLiteral182
    ldsfld bool _G::Ba
    call instance void T_set_118::addValue(int32)
    ldsfld valuetype T_set_118 _G::Sba
    call valuetype T_cset _SetCastTo_T_cset(valuetype T_set_118 s)
    ldloc $tmpSetLiteral182
    call valuetype T_cset _SetCastTo_T_cset(valuetype T_set_118 s)
    call valuetype T_cset _SetUnion(valuetype T_cset a, valuetype T_cset b)
    dup
    ldc.i4 0
    ldc.i4 1
    call void _SetCheck(valuetype T_cset s, int32 min, int32 max)
    call valuetype T_set_118 _SetCastTo_T_set_118(valuetype T_cset s)
    stsfld valuetype T_set_118 _G::Sba
L_if_end_879:
    ldsfld bool _G::Ba
    dup
    ldloc $tmpEndValue180
    beq L_for_end_878
    ldc.i4.1
    add
    stloc $tmpIndex183
    ldloc $tmpIndex183
    stsfld bool _G::Ba
    br L_for_loop_877
L_for_end_878:
    pop
    .line 1743
    ldc.i4 1 // (true)
    stloc $tmpEndValue184
    ldc.i4 0 // (false)
    dup
    ldloc $tmpEndValue184
    bgt L_for_end_881
    stloc $tmpIndex185
    ldloc $tmpIndex185
    stsfld bool _G::Ba
L_for_loop_880:
    .line 1743
    ldsfld valuetype T_set_118 _G::Sba
    ldsfld bool _G::Ba
    call bool _SetContains(valuetype T_set_118 s, int32 val)
    brfalse L_else_882
    .line 1743
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 49 // '1'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_883
L_else_882:
    .line 1743
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 48 // '0'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_883:
    ldsfld bool _G::Ba
    dup
    ldloc $tmpEndValue184
    beq L_for_end_881
    ldc.i4.1
    add
    stloc $tmpIndex186
    ldloc $tmpIndex186
    stsfld bool _G::Ba
    br L_for_loop_880
L_for_end_881:
    pop
    .line 1744
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1745
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1746
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set47: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1747
    ldloc $tmpSetLiteral187
    stsfld valuetype T_set_118 _G::Sba
    .line 1748
    ldloc $tmpSetLiteral188
    stsfld valuetype T_set_118 _G::Sbb
    .line 1749
    ldc.i4 1 // (true)
    stloc $tmpEndValue189
    ldc.i4 0 // (false)
    dup
    ldloc $tmpEndValue189
    bgt L_for_end_885
    stloc $tmpIndex190
    ldloc $tmpIndex190
    stsfld bool _G::Ba
L_for_loop_884:
    .line 1749
    ldsfld valuetype T_set_118 _G::Sba
    ldsfld valuetype T_set_118 _G::Sbb
    call valuetype T_set_118 _SetUnion(valuetype T_set_118 a, valuetype T_set_118 b)
    ldsfld bool _G::Ba
    call bool _SetContains(valuetype T_set_118 s, int32 val)
    brfalse L_else_886
    .line 1749
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 49 // '1'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_887
L_else_886:
    .line 1749
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 48 // '0'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_887:
    ldsfld bool _G::Ba
    dup
    ldloc $tmpEndValue189
    beq L_for_end_885
    ldc.i4.1
    add
    stloc $tmpIndex191
    ldloc $tmpIndex191
    stsfld bool _G::Ba
    br L_for_loop_884
L_for_end_885:
    pop
    .line 1750
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1751
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "11"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1752
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set48: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1753
    ldloc $tmpSetLiteral192
    stsfld valuetype T_set_118 _G::Sba
    .line 1754
    ldloc $tmpSetLiteral193
    stsfld valuetype T_set_118 _G::Sbb
    .line 1755
    ldc.i4 1 // (true)
    stloc $tmpEndValue194
    ldc.i4 0 // (false)
    dup
    ldloc $tmpEndValue194
    bgt L_for_end_889
    stloc $tmpIndex195
    ldloc $tmpIndex195
    stsfld bool _G::Ba
L_for_loop_888:
    .line 1755
    ldsfld valuetype T_set_118 _G::Sba
    ldsfld valuetype T_set_118 _G::Sbb
    call valuetype T_set_118 _SetIntersection(valuetype T_set_118 a, valuetype T_set_118 b)
    ldsfld bool _G::Ba
    call bool _SetContains(valuetype T_set_118 s, int32 val)
    brfalse L_else_890
    .line 1755
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 49 // '1'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_891
L_else_890:
    .line 1755
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 48 // '0'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_891:
    ldsfld bool _G::Ba
    dup
    ldloc $tmpEndValue194
    beq L_for_end_889
    ldc.i4.1
    add
    stloc $tmpIndex196
    ldloc $tmpIndex196
    stsfld bool _G::Ba
    br L_for_loop_888
L_for_end_889:
    pop
    .line 1756
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1757
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "10"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1758
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set49: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1759
    ldloc $tmpSetLiteral197
    stsfld valuetype T_set_118 _G::Sba
    .line 1760
    ldloc $tmpSetLiteral198
    stsfld valuetype T_set_118 _G::Sbb
    .line 1761
    ldc.i4 1 // (true)
    stloc $tmpEndValue199
    ldc.i4 0 // (false)
    dup
    ldloc $tmpEndValue199
    bgt L_for_end_893
    stloc $tmpIndex200
    ldloc $tmpIndex200
    stsfld bool _G::Ba
L_for_loop_892:
    .line 1761
    ldsfld valuetype T_set_118 _G::Sba
    ldsfld valuetype T_set_118 _G::Sbb
    call valuetype T_set_118 _SetDifference(valuetype T_set_118 a, valuetype T_set_118 b)
    ldsfld bool _G::Ba
    call bool _SetContains(valuetype T_set_118 s, int32 val)
    brfalse L_else_894
    .line 1761
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 49 // '1'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_895
L_else_894:
    .line 1761
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 48 // '0'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_895:
    ldsfld bool _G::Ba
    dup
    ldloc $tmpEndValue199
    beq L_for_end_893
    ldc.i4.1
    add
    stloc $tmpIndex201
    ldloc $tmpIndex201
    stsfld bool _G::Ba
    br L_for_loop_892
L_for_end_893:
    pop
    .line 1762
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1763
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "10"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1764
    ldloc $tmpSetLiteral202
    stsfld valuetype T_set_118 _G::Sba
    .line 1765
    ldloc $tmpSetLiteral203
    stsfld valuetype T_set_118 _G::Sbb
    .line 1766
    ldloc $tmpSetLiteral204
    stsfld valuetype T_set_118 _G::Sbc
    .line 1767
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set50: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_118 _G::Sba
    ldsfld valuetype T_set_118 _G::Sbb
    call bool _SetEqual(valuetype T_set_118 a, valuetype T_set_118 b)
    brtrue L_bool_to_string_true_896
    ldstr "false"
    br L_bool_to_string_false_897
L_bool_to_string_true_896:
    ldstr "true"
L_bool_to_string_false_897:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1768
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set51: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_118 _G::Sba
    ldsfld valuetype T_set_118 _G::Sbc
    call bool _SetEqual(valuetype T_set_118 a, valuetype T_set_118 b)
    brtrue L_bool_to_string_true_898
    ldstr "false"
    br L_bool_to_string_false_899
L_bool_to_string_true_898:
    ldstr "true"
L_bool_to_string_false_899:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1769
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set52: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_118 _G::Sba
    ldsfld valuetype T_set_118 _G::Sbb
    call bool _SetEqual(valuetype T_set_118 a, valuetype T_set_118 b)
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_900
    ldstr "false"
    br L_bool_to_string_false_901
L_bool_to_string_true_900:
    ldstr "true"
L_bool_to_string_false_901:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1770
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set53: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_118 _G::Sba
    ldsfld valuetype T_set_118 _G::Sbc
    call bool _SetEqual(valuetype T_set_118 a, valuetype T_set_118 b)
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_902
    ldstr "false"
    br L_bool_to_string_false_903
L_bool_to_string_true_902:
    ldstr "true"
L_bool_to_string_false_903:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1771
    ldloc $tmpSetLiteral205
    stsfld valuetype T_set_118 _G::Sba
    .line 1772
    ldloc $tmpSetLiteral206
    stsfld valuetype T_set_118 _G::Sbb
    .line 1773
    ldloc $tmpSetLiteral207
    stsfld valuetype T_set_118 _G::Sbc
    .line 1774
    ldloc $tmpSetLiteral208
    stsfld valuetype T_set_118 _G::Sbd
    .line 1775
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set54: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_118 _G::Sbb
    ldsfld valuetype T_set_118 _G::Sba
    call bool _SetIsSubset(valuetype T_set_118 a, valuetype T_set_118 b)
    brtrue L_bool_to_string_true_904
    ldstr "false"
    br L_bool_to_string_false_905
L_bool_to_string_true_904:
    ldstr "true"
L_bool_to_string_false_905:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1776
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set55: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_118 _G::Sbb
    ldsfld valuetype T_set_118 _G::Sbd
    call bool _SetIsSubset(valuetype T_set_118 a, valuetype T_set_118 b)
    brtrue L_bool_to_string_true_906
    ldstr "false"
    br L_bool_to_string_false_907
L_bool_to_string_true_906:
    ldstr "true"
L_bool_to_string_false_907:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1777
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set56: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_118 _G::Sbc
    ldsfld valuetype T_set_118 _G::Sbb
    call bool _SetIsSubset(valuetype T_set_118 a, valuetype T_set_118 b)
    brtrue L_bool_to_string_true_908
    ldstr "false"
    br L_bool_to_string_false_909
L_bool_to_string_true_908:
    ldstr "true"
L_bool_to_string_false_909:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1778
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set57: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_118 _G::Sbb
    ldsfld valuetype T_set_118 _G::Sba
    call bool _SetIsSubset(valuetype T_set_118 a, valuetype T_set_118 b)
    brtrue L_bool_to_string_true_910
    ldstr "false"
    br L_bool_to_string_false_911
L_bool_to_string_true_910:
    ldstr "true"
L_bool_to_string_false_911:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1779
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set58: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_118 _G::Sbb
    ldsfld valuetype T_set_118 _G::Sbd
    call bool _SetIsSubset(valuetype T_set_118 a, valuetype T_set_118 b)
    brtrue L_bool_to_string_true_912
    ldstr "false"
    br L_bool_to_string_false_913
L_bool_to_string_true_912:
    ldstr "true"
L_bool_to_string_false_913:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1780
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set59: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_set_118 _G::Sbc
    ldsfld valuetype T_set_118 _G::Sbb
    call bool _SetIsSubset(valuetype T_set_118 a, valuetype T_set_118 b)
    brtrue L_bool_to_string_true_914
    ldstr "false"
    br L_bool_to_string_false_915
L_bool_to_string_true_914:
    ldstr "true"
L_bool_to_string_false_915:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1781
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Set60: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1782
    ldc.i4 0 // (false)
    stsfld bool _G::Ba
    .line 1783
    ldloca $tmpSetLiteral209
    call instance void T_set_118::clear()
    ldloca $tmpSetLiteral209
    ldsfld bool _G::Ba
    call instance void T_set_118::addValue(int32)
    ldloca $tmpSetLiteral209
    ldsfld bool _G::Ba
    ldc.i4.1
    add
    call instance void T_set_118::addValue(int32)
    ldloc $tmpSetLiteral209
    stsfld valuetype T_set_118 _G::Sba
    .line 1784
    ldc.i4 1 // (true)
    stloc $tmpEndValue210
    ldc.i4 0 // (false)
    dup
    ldloc $tmpEndValue210
    bgt L_for_end_917
    stloc $tmpIndex211
    ldloc $tmpIndex211
    stsfld bool _G::Ba
L_for_loop_916:
    .line 1784
    ldsfld valuetype T_set_118 _G::Sba
    ldsfld bool _G::Ba
    call bool _SetContains(valuetype T_set_118 s, int32 val)
    brfalse L_else_918
    .line 1784
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 49 // '1'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_919
L_else_918:
    .line 1784
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 48 // '0'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_919:
    ldsfld bool _G::Ba
    dup
    ldloc $tmpEndValue210
    beq L_for_end_917
    ldc.i4.1
    add
    stloc $tmpIndex212
    ldloc $tmpIndex212
    stsfld bool _G::Ba
    br L_for_loop_916
L_for_end_917:
    pop
    .line 1785
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1786
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "11"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1788
    ldsfld valuetype T_set_118 _G::Sbd
    stsfld valuetype T_set_118 _G::Sbe
    .line 1789
    ldloc $tmpSetLiteral213
    stsfld valuetype T_set_118 _G::Sbf
    .line 1790
    ldsfld valuetype T_set_118 _G::Sbf
    stsfld valuetype T_set_118 _G::Sbg
    .line 1791
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "set61: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1792
    .line 1792
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Pi1
    .line 1793
    .line 1793
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Pi2
    .line 1794
    ldsfld void* _G::Pi1
    ldc.i4 3
    stobj int32
    .line 1795
    ldsfld void* _G::Pi2
    ldc.i4 5
    stobj int32
    .line 1796
    ldloca $tmpSetLiteral214
    call instance void T_cset::clear()
    ldloca $tmpSetLiteral214
    ldsfld void* _G::Pi1
    ldobj int32
    ldsfld void* _G::Pi2
    ldobj int32
    call instance void T_cset::addRange(int32, int32)
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldloc $tmpSetLiteral214
    ldloc $tmpSetLiteral215
    call bool _SetEqual(valuetype T_cset a, valuetype T_cset b)
    brtrue L_bool_to_string_true_920
    ldstr "false"
    br L_bool_to_string_false_921
L_bool_to_string_true_920:
    ldstr "true"
L_bool_to_string_false_921:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    pop
    .line 1797
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1805
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1806
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "******************* Pointers ******************************"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1807
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1810
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer1:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1811
    .line 1811
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Pti
    .line 1812
    ldsfld void* _G::Pti
    ldc.i4 4594
    stobj int32
    .line 1813
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld void* _G::Pti
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 4594"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1814
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer2:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1815
    .line 1815
    ldc.i4 1
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ptb
    .line 1816
    ldsfld void* _G::Ptb
    ldc.i4 1 // (true)
    stobj bool
    .line 1817
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld void* _G::Ptb
    ldobj bool
    brtrue L_bool_to_string_true_922
    ldstr "false"
    br L_bool_to_string_false_923
L_bool_to_string_true_922:
    ldstr "true"
L_bool_to_string_false_923:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b  true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1818
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer3:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1819
    .line 1819
    ldc.i4 1
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ptb
    .line 1820
    ldsfld void* _G::Ptb
    ldc.i4 0 // (false)
    stobj bool
    .line 1821
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld void* _G::Ptb
    ldobj bool
    brtrue L_bool_to_string_true_924
    ldstr "false"
    br L_bool_to_string_false_925
L_bool_to_string_true_924:
    ldstr "true"
L_bool_to_string_false_925:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1822
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer4:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1823
    .line 1823
    ldc.i4 1
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ptc
    .line 1824
    ldsfld void* _G::Ptc
    ldc.i4 112 // 'p'
    stobj uint8
    .line 1825
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld void* _G::Ptc
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldstr " s/b p"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1826
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer5:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1827
    .line 1827
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Pte
    .line 1828
    ldsfld void* _G::Pte
    ldc.i4 5 // six 
    stobj int32
    .line 1829
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld void* _G::Pte
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 5"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1830
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer6:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1831
    .line 1831
    ldc.i4 1
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ptes
    .line 1832
    ldsfld void* _G::Ptes
    ldc.i4 3 // four 
    dup
    ldc.i4 2
    ldc.i4 5
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    .line 1833
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld void* _G::Ptes
    ldobj int8
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 3"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1834
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer7:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1835
    .line 1835
    ldc.i4 1
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Pts
    .line 1836
    ldsfld void* _G::Pts
    ldc.i4 17
    dup
    ldc.i4 10
    ldc.i4 20
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    .line 1837
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld void* _G::Pts
    ldobj int8
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 17"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1838
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer8:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1839
    .line 1839
    ldc.i4 8
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ptr
    .line 1840
    ldsfld void* _G::Ptr
    ldc.r8 1234.57
    stobj float64
    .line 1841
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4 4
    ldsfld void* _G::Ptr
    ldobj float64
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr " s/b 1234.5678"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1842
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer9:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1843
    .line 1843
    ldc.i4 10
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ptst
    .line 1844
    ldsfld void* _G::Ptst
    ldsfld valuetype T_string10 STRING_8    // "my word is"
    stobj valuetype T_string10
    .line 1845
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld void* _G::Ptst
    ldobj valuetype T_string10
    call string T_string10::arrayToString(valuetype T_string10)
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr " s/b my word is"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1846
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer10:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1847
    .line 1847
    ldc.i4 40
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Pta
    .line 1848
    ldc.i4 10
    stloc $tmpEndValue216
    ldc.i4 1
    dup
    ldloc $tmpEndValue216
    bgt L_for_end_927
    stloc $tmpIndex217
    ldloc $tmpIndex217
    stsfld int32 _G::i
L_for_loop_926:
    .line 1848
    ldsfld void* _G::Pta
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 10
    add
    stobj int32
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue216
    beq L_for_end_927
    ldc.i4.1
    add
    stloc $tmpIndex218
    ldloc $tmpIndex218
    stsfld int32 _G::i
    br L_for_loop_926
L_for_end_927:
    pop
    .line 1849
    ldc.i4 1
    stloc $tmpEndValue219
    ldc.i4 10
    dup
    ldloc $tmpEndValue219
    blt L_for_end_929
    stloc $tmpIndex220
    ldloc $tmpIndex220
    stsfld int32 _G::i
L_for_loop_928:
    .line 1849
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld void* _G::Pta
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue219
    beq L_for_end_929
    ldc.i4.1
    sub
    stloc $tmpIndex221
    ldloc $tmpIndex221
    stsfld int32 _G::i
    br L_for_loop_928
L_for_end_929:
    pop
    .line 1850
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 20 19 18 17 16 15 14 13 12 11"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1851
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer11:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1852
    .line 1852
    ldc.i4 5
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ptrc
    .line 1853
    ldsfld void* _G::Ptrc
    ldc.i4 7234
    stfld int32 T_recs::a
    .line 1854
    ldsfld void* _G::Ptrc
    ldc.i4 121 // 'y'
    stfld uint8 T_recs::b
    .line 1855
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld void* _G::Ptrc
    ldfld int32 T_recs::a
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsfld void* _G::Ptrc
    ldfld uint8 T_recs::b
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldstr " s/b 7234 y"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1856
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer12:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1857
    .line 1857
    ldc.i4 32
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ptstc
    .line 1858
    ldsfld void* _G::Ptstc
    ldloc $tmpSetLiteral222
    stobj valuetype T_cset
    .line 1859
    ldc.i4 106 // 'j'
    stloc $tmpEndValue223
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue223
    bgt L_for_end_931
    stloc $tmpIndex224
    ldloc $tmpIndex224
    stsfld uint8 _G::Ci
L_for_loop_930:
    .line 1859
    ldsfld void* _G::Ptstc
    ldobj valuetype T_cset
    ldsfld uint8 _G::Ci
    call bool _SetContains(valuetype T_cset s, int32 val)
    brfalse L_else_932
    .line 1859
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ci
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_933
L_else_932:
    .line 1859
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 95 // '_'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_933:
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue223
    beq L_for_end_931
    ldc.i4.1
    add
    stloc $tmpIndex225
    ldloc $tmpIndex225
    stsfld uint8 _G::Ci
    br L_for_loop_930
L_for_end_931:
    pop
    .line 1860
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b _b_d____ij"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1861
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer13:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1862
    .line 1862
    ldc.i4 8
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ptp
    .line 1863
    .line 1863
    ldsfld void* _G::Ptp
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stobj void*
    .line 1864
    ldsfld void* _G::Ptp
    ldobj void*
    ldc.i4 3732
    stobj int32
    .line 1865
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld void* _G::Ptp
    ldobj void*
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 3732"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1868
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer14:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1869
    ldnull
    stsfld void* _G::Pti
    .line 1870
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld void* _G::Pti
    ldnull
    ceq
    brtrue L_bool_to_string_true_934
    ldstr "false"
    br L_bool_to_string_false_935
L_bool_to_string_true_934:
    ldstr "true"
L_bool_to_string_false_935:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b  true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1871
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer15:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1872
    .line 1872
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Pti
    .line 1873
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld void* _G::Pti
    ldnull
    ceq
    brtrue L_bool_to_string_true_936
    ldstr "false"
    br L_bool_to_string_false_937
L_bool_to_string_true_936:
    ldstr "true"
L_bool_to_string_false_937:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1874
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer16:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1875
    ldsfld void* _G::Pti
    stsfld void* _G::Pti1
    .line 1876
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld void* _G::Pti
    ldsfld void* _G::Pti1
    ceq
    brtrue L_bool_to_string_true_938
    ldstr "false"
    br L_bool_to_string_false_939
L_bool_to_string_true_938:
    ldstr "true"
L_bool_to_string_false_939:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1877
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer17:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1878
    ldsfld void* _G::Pti
    stsfld void* _G::Pti1
    .line 1879
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld void* _G::Pti
    ldsfld void* _G::Pti1
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_940
    ldstr "false"
    br L_bool_to_string_false_941
L_bool_to_string_true_940:
    ldstr "true"
L_bool_to_string_false_941:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1880
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer18:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1881
    .line 1881
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Pti1
    .line 1882
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld void* _G::Pti
    ldsfld void* _G::Pti1
    ceq
    brtrue L_bool_to_string_true_942
    ldstr "false"
    br L_bool_to_string_false_943
L_bool_to_string_true_942:
    ldstr "true"
L_bool_to_string_false_943:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1883
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer19:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1884
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld void* _G::Pti
    ldsfld void* _G::Pti1
    ceq
    ldc.i4.0
    ceq
    brtrue L_bool_to_string_true_944
    ldstr "false"
    br L_bool_to_string_false_945
L_bool_to_string_true_944:
    ldstr "true"
L_bool_to_string_false_945:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr " s/b  true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1889
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer20:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1890
    .line 1890
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ipa
    .line 1891
    .line 1891
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ipb
    .line 1892
    .line 1892
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ipc
    .line 1893
    ldsfld void* _G::Ipa
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 1893
    ldnull
    stsfld void* _G::Ipa
    .line 1894
    ldsfld void* _G::Ipb
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 1894
    ldnull
    stsfld void* _G::Ipb
    .line 1895
    ldsfld void* _G::Ipc
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 1895
    ldnull
    stsfld void* _G::Ipc
    .line 1896
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "done s/b done"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1900
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer21:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1901
    .line 1901
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ipa
    .line 1902
    .line 1902
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ipb
    .line 1903
    .line 1903
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ipc
    .line 1904
    ldsfld void* _G::Ipc
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 1904
    ldnull
    stsfld void* _G::Ipc
    .line 1905
    ldsfld void* _G::Ipb
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 1905
    ldnull
    stsfld void* _G::Ipb
    .line 1906
    ldsfld void* _G::Ipa
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 1906
    ldnull
    stsfld void* _G::Ipa
    .line 1910
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer22:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1911
    .line 1911
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ipa
    .line 1912
    .line 1912
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ipb
    .line 1913
    .line 1913
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ipc
    .line 1914
    .line 1914
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ipd
    .line 1915
    ldsfld void* _G::Ipb
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 1915
    ldnull
    stsfld void* _G::Ipb
    .line 1916
    ldsfld void* _G::Ipc
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 1916
    ldnull
    stsfld void* _G::Ipc
    .line 1917
    ldsfld void* _G::Ipa
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 1917
    ldnull
    stsfld void* _G::Ipa
    .line 1918
    ldsfld void* _G::Ipd
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 1918
    ldnull
    stsfld void* _G::Ipd
    .line 1919
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "done s/b done"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1922
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer23:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1923
    .line 1923
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ipa
    .line 1924
    .line 1924
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ipb
    .line 1925
    .line 1925
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ipc
    .line 1926
    .line 1926
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ipd
    .line 1927
    .line 1927
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ipe
    .line 1928
    ldsfld void* _G::Ipb
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 1928
    ldnull
    stsfld void* _G::Ipb
    .line 1929
    ldsfld void* _G::Ipd
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 1929
    ldnull
    stsfld void* _G::Ipd
    .line 1930
    ldsfld void* _G::Ipc
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 1930
    ldnull
    stsfld void* _G::Ipc
    .line 1931
    ldsfld void* _G::Ipa
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 1931
    ldnull
    stsfld void* _G::Ipa
    .line 1932
    ldsfld void* _G::Ipe
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 1932
    ldnull
    stsfld void* _G::Ipe
    .line 1933
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "done s/b done"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1936
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer24:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1937
    ldc.i4 100
    stloc $tmpEndValue226
    ldc.i4 1
    dup
    ldloc $tmpEndValue226
    bgt L_for_end_947
    stloc $tmpIndex227
    ldloc $tmpIndex227
    stsfld int32 _G::Cnt
L_for_loop_946:
    .line 1939
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 3
    ldc.i4.0
    ldsfld int32 _G::Cnt
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 1939
    ldsfld int32 _G::Cnt
    ldc.i4 10
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    ldc.i4 0
    ceq
    brfalse L_if_end_948
    .line 1939
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_948:
    .line 1940
    ldc.i4 100
    stloc $tmpEndValue228
    ldc.i4 1
    dup
    ldloc $tmpEndValue228
    bgt L_for_end_950
    stloc $tmpIndex229
    ldloc $tmpIndex229
    stsfld int32 _G::i
L_for_loop_949:
    .line 1940
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldnull
    stobj void*
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue228
    beq L_for_end_950
    ldc.i4.1
    add
    stloc $tmpIndex230
    ldloc $tmpIndex230
    stsfld int32 _G::i
    br L_for_loop_949
L_for_end_950:
    pop
    .line 1941
    ldc.i4 100
    stloc $tmpEndValue231
    ldc.i4 1
    dup
    ldloc $tmpEndValue231
    bgt L_for_end_952
    stloc $tmpIndex232
    ldloc $tmpIndex232
    stsfld int32 _G::i
L_for_loop_951:
    .line 1941
    .line 1941
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stobj void*
    .line 1941
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldobj void*
    ldsfld int32 _G::i
    stobj int32
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue231
    beq L_for_end_952
    ldc.i4.1
    add
    stloc $tmpIndex233
    ldloc $tmpIndex233
    stsfld int32 _G::i
    br L_for_loop_951
L_for_end_952:
    pop
    .line 1942
    ldc.i4 100
    stloc $tmpEndValue234
    ldc.i4 1
    dup
    ldloc $tmpEndValue234
    bgt L_for_end_954
    stloc $tmpIndex235
    ldloc $tmpIndex235
    stsfld int32 _G::i
L_for_loop_953:
    .line 1942
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldobj void*
    ldnull
    ceq
    brfalse L_if_end_955
    .line 1943
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "*** bad allocation of block"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_955:
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue234
    beq L_for_end_954
    ldc.i4.1
    add
    stloc $tmpIndex236
    ldloc $tmpIndex236
    stsfld int32 _G::i
    br L_for_loop_953
L_for_end_954:
    pop
    .line 1944
    ldc.i4 1
    stloc $tmpEndValue237
    ldc.i4 100
    dup
    ldloc $tmpEndValue237
    blt L_for_end_957
    stloc $tmpIndex238
    ldloc $tmpIndex238
    stsfld int32 _G::i
L_for_loop_956:
    .line 1944
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldobj void*
    ldobj int32
    ldsfld int32 _G::i
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_958
    .line 1945
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "*** bad block content"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_958:
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue237
    beq L_for_end_957
    ldc.i4.1
    sub
    stloc $tmpIndex239
    ldloc $tmpIndex239
    stsfld int32 _G::i
    br L_for_loop_956
L_for_end_957:
    pop
    .line 1946
    ldc.i4 100
    stloc $tmpEndValue240
    ldc.i4 1
    dup
    ldloc $tmpEndValue240
    bgt L_for_end_960
    stloc $tmpIndex241
    ldloc $tmpIndex241
    stsfld int32 _G::i
L_for_loop_959:
    .line 1948
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldobj void*
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 1948
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldnull
    stobj void*
    .line 1949
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldnull
    stobj void*
    .line 1950
    ldc.i4 100
    stloc $tmpEndValue242
    ldc.i4 1
    dup
    ldloc $tmpEndValue242
    bgt L_for_end_962
    stloc $tmpIndex243
    ldloc $tmpIndex243
    stsfld int32 _G::x
L_for_loop_961:
    .line 1950
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::x
    call instance void*& T_array_54::ldadr(int32)
    ldobj void*
    ldnull
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_963
    .line 1951
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::x
    call instance void*& T_array_54::ldadr(int32)
    ldobj void*
    ldobj int32
    ldsfld int32 _G::x
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_964
    .line 1952
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "*** bad block content"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_964:
L_if_end_963:
    ldsfld int32 _G::x
    dup
    ldloc $tmpEndValue242
    beq L_for_end_962
    ldc.i4.1
    add
    stloc $tmpIndex244
    ldloc $tmpIndex244
    stsfld int32 _G::x
    br L_for_loop_961
L_for_end_962:
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue240
    beq L_for_end_960
    ldc.i4.1
    add
    stloc $tmpIndex245
    ldloc $tmpIndex245
    stsfld int32 _G::i
    br L_for_loop_959
L_for_end_960:
    pop
    .line 1956
    ldc.i4 100
    stloc $tmpEndValue246
    ldc.i4 1
    dup
    ldloc $tmpEndValue246
    bgt L_for_end_966
    stloc $tmpIndex247
    ldloc $tmpIndex247
    stsfld int32 _G::i
L_for_loop_965:
    .line 1956
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldnull
    stobj void*
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue246
    beq L_for_end_966
    ldc.i4.1
    add
    stloc $tmpIndex248
    ldloc $tmpIndex248
    stsfld int32 _G::i
    br L_for_loop_965
L_for_end_966:
    pop
    .line 1957
    ldc.i4 100
    stloc $tmpEndValue249
    ldc.i4 1
    dup
    ldloc $tmpEndValue249
    bgt L_for_end_968
    stloc $tmpIndex250
    ldloc $tmpIndex250
    stsfld int32 _G::i
L_for_loop_967:
    .line 1957
    .line 1957
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stobj void*
    .line 1957
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldobj void*
    ldsfld int32 _G::i
    stobj int32
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue249
    beq L_for_end_968
    ldc.i4.1
    add
    stloc $tmpIndex251
    ldloc $tmpIndex251
    stsfld int32 _G::i
    br L_for_loop_967
L_for_end_968:
    pop
    .line 1958
    ldc.i4 100
    stloc $tmpEndValue252
    ldc.i4 1
    dup
    ldloc $tmpEndValue252
    bgt L_for_end_970
    stloc $tmpIndex253
    ldloc $tmpIndex253
    stsfld int32 _G::i
L_for_loop_969:
    .line 1958
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldobj void*
    ldnull
    ceq
    brfalse L_if_end_971
    .line 1959
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "*** bad allocation of block"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_971:
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue252
    beq L_for_end_970
    ldc.i4.1
    add
    stloc $tmpIndex254
    ldloc $tmpIndex254
    stsfld int32 _G::i
    br L_for_loop_969
L_for_end_970:
    pop
    .line 1960
    ldc.i4 1
    stloc $tmpEndValue255
    ldc.i4 100
    dup
    ldloc $tmpEndValue255
    blt L_for_end_973
    stloc $tmpIndex256
    ldloc $tmpIndex256
    stsfld int32 _G::i
L_for_loop_972:
    .line 1960
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldobj void*
    ldobj int32
    ldsfld int32 _G::i
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_974
    .line 1961
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "*** bad block content"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_974:
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue255
    beq L_for_end_973
    ldc.i4.1
    sub
    stloc $tmpIndex257
    ldloc $tmpIndex257
    stsfld int32 _G::i
    br L_for_loop_972
L_for_end_973:
    pop
    .line 1962
    ldc.i4 1
    stloc $tmpEndValue258
    ldc.i4 100
    dup
    ldloc $tmpEndValue258
    blt L_for_end_976
    stloc $tmpIndex259
    ldloc $tmpIndex259
    stsfld int32 _G::i
L_for_loop_975:
    .line 1964
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldobj void*
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 1964
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldnull
    stobj void*
    .line 1965
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldnull
    stobj void*
    .line 1966
    ldc.i4 100
    stloc $tmpEndValue260
    ldc.i4 1
    dup
    ldloc $tmpEndValue260
    bgt L_for_end_978
    stloc $tmpIndex261
    ldloc $tmpIndex261
    stsfld int32 _G::x
L_for_loop_977:
    .line 1966
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::x
    call instance void*& T_array_54::ldadr(int32)
    ldobj void*
    ldnull
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_979
    .line 1967
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::x
    call instance void*& T_array_54::ldadr(int32)
    ldobj void*
    ldobj int32
    ldsfld int32 _G::x
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_980
    .line 1968
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "*** bad block content"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_980:
L_if_end_979:
    ldsfld int32 _G::x
    dup
    ldloc $tmpEndValue260
    beq L_for_end_978
    ldc.i4.1
    add
    stloc $tmpIndex262
    ldloc $tmpIndex262
    stsfld int32 _G::x
    br L_for_loop_977
L_for_end_978:
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue258
    beq L_for_end_976
    ldc.i4.1
    sub
    stloc $tmpIndex263
    ldloc $tmpIndex263
    stsfld int32 _G::i
    br L_for_loop_975
L_for_end_976:
    pop
    ldsfld int32 _G::Cnt
    dup
    ldloc $tmpEndValue226
    beq L_for_end_947
    ldc.i4.1
    add
    stloc $tmpIndex264
    ldloc $tmpIndex264
    stsfld int32 _G::Cnt
    br L_for_loop_946
L_for_end_947:
    pop
    .line 1973
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1974
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1975
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1976
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "  1   2   3   4   5   6   7   8   9  10"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1977
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 11  12  13  14  15  16  17  18  19  20"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1978
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 21  22  23  24  25  26  27  28  29  30"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1979
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 31  32  33  34  35  36  37  38  39  40"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1980
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 41  42  43  44  45  46  47  48  49  50"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1981
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 51  52  53  54  55  56  57  58  59  60"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1982
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 61  62  63  64  65  66  67  68  69  70"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1983
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 71  72  73  74  75  76  77  78  79  80"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1984
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 81  82  83  84  85  86  87  88  89  90"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1985
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 91  92  93  94  95  96  97  98  99  100"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1987
    ldc.i4 1
    stsfld int32 _G::Rndseq
    .line 1990
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pointer25:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1991
    ldc.i4 100
    stloc $tmpEndValue265
    ldc.i4 1
    dup
    ldloc $tmpEndValue265
    bgt L_for_end_982
    stloc $tmpIndex266
    ldloc $tmpIndex266
    stsfld int32 _G::i
L_for_loop_981:
    .line 1991
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldnull
    stobj void*
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue265
    beq L_for_end_982
    ldc.i4.1
    add
    stloc $tmpIndex267
    ldloc $tmpIndex267
    stsfld int32 _G::i
    br L_for_loop_981
L_for_end_982:
    pop
    .line 1992
    ldc.i4 100
    stloc $tmpEndValue268
    ldc.i4 1
    dup
    ldloc $tmpEndValue268
    bgt L_for_end_984
    stloc $tmpIndex269
    ldloc $tmpIndex269
    stsfld int32 _G::Cnt2
L_for_loop_983:
    .line 1994
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 3
    ldc.i4.0
    ldsfld int32 _G::Cnt2
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 1994
    ldsfld int32 _G::Cnt2
    ldc.i4 10
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    ldc.i4 0
    ceq
    brfalse L_if_end_985
    .line 1994
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_985:
    .line 1995
    ldc.i4 100
    stloc $tmpEndValue270
    ldc.i4 1
    dup
    ldloc $tmpEndValue270
    bgt L_for_end_987
    stloc $tmpIndex271
    ldloc $tmpIndex271
    stsfld int32 _G::Cnt
L_for_loop_986:
    .line 1998
    ldc.i4 1
    ldc.i4 100
    call int32 Random(int32 Low, int32 Hi)
    stsfld int32 _G::Rn
    .line 1999
    .line 1999
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::Rn
    call instance void*& T_array_54::ldadr(int32)
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stobj void*
    .line 2000
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::Rn
    call instance void*& T_array_54::ldadr(int32)
    ldobj void*
    ldsfld int32 _G::Rn
    stobj int32
    .line 2001
    ldc.i4 100
    stloc $tmpEndValue272
    ldc.i4 1
    dup
    ldloc $tmpEndValue272
    bgt L_for_end_989
    stloc $tmpIndex273
    ldloc $tmpIndex273
    stsfld int32 _G::i
L_for_loop_988:
    .line 2001
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldobj void*
    ldnull
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_990
    .line 2002
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldobj void*
    ldobj int32
    ldsfld int32 _G::i
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_991
    .line 2003
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "*** bad block content"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_991:
L_if_end_990:
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue272
    beq L_for_end_989
    ldc.i4.1
    add
    stloc $tmpIndex274
    ldloc $tmpIndex274
    stsfld int32 _G::i
    br L_for_loop_988
L_for_end_989:
    pop
    .line 2006
    ldc.i4 1
    ldc.i4 100
    call int32 Random(int32 Low, int32 Hi)
    stsfld int32 _G::Rn
    .line 2007
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::Rn
    call instance void*& T_array_54::ldadr(int32)
    ldobj void*
    ldnull
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_992
    .line 2007
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::Rn
    call instance void*& T_array_54::ldadr(int32)
    ldobj void*
    call void [lpcRuntime]LPC.Heap::Free(void*)
    .line 2007
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::Rn
    call instance void*& T_array_54::ldadr(int32)
    ldnull
    stobj void*
L_if_end_992:
    .line 2008
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::Rn
    call instance void*& T_array_54::ldadr(int32)
    ldnull
    stobj void*
    .line 2009
    ldc.i4 100
    stloc $tmpEndValue275
    ldc.i4 1
    dup
    ldloc $tmpEndValue275
    bgt L_for_end_994
    stloc $tmpIndex276
    ldloc $tmpIndex276
    stsfld int32 _G::i
L_for_loop_993:
    .line 2009
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldobj void*
    ldnull
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_995
    .line 2010
    ldsflda valuetype T_array_54 _G::Iap
    ldsfld int32 _G::i
    call instance void*& T_array_54::ldadr(int32)
    ldobj void*
    ldobj int32
    ldsfld int32 _G::i
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_996
    .line 2011
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "*** bad block content"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_996:
L_if_end_995:
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue275
    beq L_for_end_994
    ldc.i4.1
    add
    stloc $tmpIndex277
    ldloc $tmpIndex277
    stsfld int32 _G::i
    br L_for_loop_993
L_for_end_994:
    pop
    /* nop */
    ldsfld int32 _G::Cnt
    dup
    ldloc $tmpEndValue270
    beq L_for_end_987
    ldc.i4.1
    add
    stloc $tmpIndex278
    ldloc $tmpIndex278
    stsfld int32 _G::Cnt
    br L_for_loop_986
L_for_end_987:
    pop
    ldsfld int32 _G::Cnt2
    dup
    ldloc $tmpEndValue268
    beq L_for_end_984
    ldc.i4.1
    add
    stloc $tmpIndex279
    ldloc $tmpIndex279
    stsfld int32 _G::Cnt2
    br L_for_loop_983
L_for_end_984:
    pop
    .line 2016
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2017
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2018
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2019
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "  1   2   3   4   5   6   7   8   9  10"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2020
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 11  12  13  14  15  16  17  18  19  20"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2021
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 21  22  23  24  25  26  27  28  29  30"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2022
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 31  32  33  34  35  36  37  38  39  40"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2023
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 41  42  43  44  45  46  47  48  49  50"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2024
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 51  52  53  54  55  56  57  58  59  60"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2025
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 61  62  63  64  65  66  67  68  69  70"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2026
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 71  72  73  74  75  76  77  78  79  80"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2027
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 81  82  83  84  85  86  87  88  89  90"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2028
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 91  92  93  94  95  96  97  98  99  100"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2036
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2037
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "******************* arrays ******************************"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2038
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2041
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array1:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2042
    ldc.i4 10
    stloc $tmpEndValue280
    ldc.i4 1
    dup
    ldloc $tmpEndValue280
    bgt L_for_end_998
    stloc $tmpIndex281
    ldloc $tmpIndex281
    stsfld int32 _G::i
L_for_loop_997:
    .line 2042
    ldsflda valuetype T_arri _G::Avi
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 10
    add
    stobj int32
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue280
    beq L_for_end_998
    ldc.i4.1
    add
    stloc $tmpIndex282
    ldloc $tmpIndex282
    stsfld int32 _G::i
    br L_for_loop_997
L_for_end_998:
    pop
    .line 2043
    ldc.i4 1
    stloc $tmpEndValue283
    ldc.i4 10
    dup
    ldloc $tmpEndValue283
    blt L_for_end_1000
    stloc $tmpIndex284
    ldloc $tmpIndex284
    stsfld int32 _G::i
L_for_loop_999:
    .line 2043
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_arri _G::Avi
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue283
    beq L_for_end_1000
    ldc.i4.1
    sub
    stloc $tmpIndex285
    ldloc $tmpIndex285
    stsfld int32 _G::i
    br L_for_loop_999
L_for_end_1000:
    pop
    .line 2044
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 20 19 18 17 16 15 14 13 12 11"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2045
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array2:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2046
    ldc.i4 10
    stloc $tmpEndValue286
    ldc.i4 1
    dup
    ldloc $tmpEndValue286
    bgt L_for_end_1002
    stloc $tmpIndex287
    ldloc $tmpIndex287
    stsfld int32 _G::i
L_for_loop_1001:
    .line 2046
    ldsflda valuetype T_arri _G::Pavi
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 10
    add
    stobj int32
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue286
    beq L_for_end_1002
    ldc.i4.1
    add
    stloc $tmpIndex288
    ldloc $tmpIndex288
    stsfld int32 _G::i
    br L_for_loop_1001
L_for_end_1002:
    pop
    .line 2047
    ldc.i4 1
    stloc $tmpEndValue289
    ldc.i4 10
    dup
    ldloc $tmpEndValue289
    blt L_for_end_1004
    stloc $tmpIndex290
    ldloc $tmpIndex290
    stsfld int32 _G::i
L_for_loop_1003:
    .line 2047
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_arri _G::Pavi
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue289
    beq L_for_end_1004
    ldc.i4.1
    sub
    stloc $tmpIndex291
    ldloc $tmpIndex291
    stsfld int32 _G::i
    br L_for_loop_1003
L_for_end_1004:
    pop
    .line 2048
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 20 19 18 17 16 15 14 13 12 11"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2049
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array3:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2050
    ldc.i4 10
    stloc $tmpEndValue292
    ldc.i4 1
    dup
    ldloc $tmpEndValue292
    bgt L_for_end_1006
    stloc $tmpIndex293
    ldloc $tmpIndex293
    stsfld int32 _G::i
L_for_loop_1005:
    .line 2050
    ldsflda valuetype T_array_21 _G::Avis
    ldsfld int32 _G::i
    call instance int8& T_array_21::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 10
    add
    dup
    ldc.i4 10
    ldc.i4 20
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue292
    beq L_for_end_1006
    ldc.i4.1
    add
    stloc $tmpIndex294
    ldloc $tmpIndex294
    stsfld int32 _G::i
    br L_for_loop_1005
L_for_end_1006:
    pop
    .line 2051
    ldc.i4 1
    stloc $tmpEndValue295
    ldc.i4 10
    dup
    ldloc $tmpEndValue295
    blt L_for_end_1008
    stloc $tmpIndex296
    ldloc $tmpIndex296
    stsfld int32 _G::i
L_for_loop_1007:
    .line 2051
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_array_21 _G::Avis
    ldsfld int32 _G::i
    call instance int8& T_array_21::ldadr(int32)
    ldobj int8
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue295
    beq L_for_end_1008
    ldc.i4.1
    sub
    stloc $tmpIndex297
    ldloc $tmpIndex297
    stsfld int32 _G::i
    br L_for_loop_1007
L_for_end_1008:
    pop
    .line 2052
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 20 19 18 17 16 15 14 13 12 11"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2053
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array4:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2054
    ldc.i4 10
    stloc $tmpEndValue298
    ldc.i4 1
    dup
    ldloc $tmpEndValue298
    bgt L_for_end_1010
    stloc $tmpIndex299
    ldloc $tmpIndex299
    stsfld int32 _G::i
L_for_loop_1009:
    .line 2054
    ldsflda valuetype T_array_21 _G::Pavis
    ldsfld int32 _G::i
    call instance int8& T_array_21::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 10
    add
    dup
    ldc.i4 10
    ldc.i4 20
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue298
    beq L_for_end_1010
    ldc.i4.1
    add
    stloc $tmpIndex300
    ldloc $tmpIndex300
    stsfld int32 _G::i
    br L_for_loop_1009
L_for_end_1010:
    pop
    .line 2055
    ldc.i4 1
    stloc $tmpEndValue301
    ldc.i4 10
    dup
    ldloc $tmpEndValue301
    blt L_for_end_1012
    stloc $tmpIndex302
    ldloc $tmpIndex302
    stsfld int32 _G::i
L_for_loop_1011:
    .line 2055
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_array_21 _G::Pavis
    ldsfld int32 _G::i
    call instance int8& T_array_21::ldadr(int32)
    ldobj int8
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue301
    beq L_for_end_1012
    ldc.i4.1
    sub
    stloc $tmpIndex303
    ldloc $tmpIndex303
    stsfld int32 _G::i
    br L_for_loop_1011
L_for_end_1012:
    pop
    .line 2056
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 20 19 18 17 16 15 14 13 12 11"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2057
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array5:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2058
    ldc.i4 10
    stloc $tmpEndValue304
    ldc.i4 1
    dup
    ldloc $tmpEndValue304
    bgt L_for_end_1014
    stloc $tmpIndex305
    ldloc $tmpIndex305
    stsfld int32 _G::i
L_for_loop_1013:
    .line 2058
    ldsflda valuetype T_array_16 _G::Avb
    ldsfld int32 _G::i
    call instance bool& T_array_16::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4.1
    and
    stobj bool
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue304
    beq L_for_end_1014
    ldc.i4.1
    add
    stloc $tmpIndex306
    ldloc $tmpIndex306
    stsfld int32 _G::i
    br L_for_loop_1013
L_for_end_1014:
    pop
    .line 2059
    ldc.i4 1
    stloc $tmpEndValue307
    ldc.i4 10
    dup
    ldloc $tmpEndValue307
    blt L_for_end_1016
    stloc $tmpIndex308
    ldloc $tmpIndex308
    stsfld int32 _G::i
L_for_loop_1015:
    .line 2059
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_16 _G::Avb
    ldsfld int32 _G::i
    call instance bool& T_array_16::ldadr(int32)
    ldobj bool
    brtrue L_bool_to_string_true_1017
    ldstr "false"
    br L_bool_to_string_false_1018
L_bool_to_string_true_1017:
    ldstr "true"
L_bool_to_string_false_1018:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue307
    beq L_for_end_1016
    ldc.i4.1
    sub
    stloc $tmpIndex309
    ldloc $tmpIndex309
    stsfld int32 _G::i
    br L_for_loop_1015
L_for_end_1016:
    pop
    .line 2060
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2061
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "    s/b:   false  true false  true false  true false  true false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr "  true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2063
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array6:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2064
    ldc.i4 10
    stloc $tmpEndValue310
    ldc.i4 1
    dup
    ldloc $tmpEndValue310
    bgt L_for_end_1020
    stloc $tmpIndex311
    ldloc $tmpIndex311
    stsfld int32 _G::i
L_for_loop_1019:
    .line 2064
    ldsflda valuetype T_array_16 _G::Pavb
    ldsfld int32 _G::i
    call instance bool& T_array_16::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4.1
    and
    stobj bool
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue310
    beq L_for_end_1020
    ldc.i4.1
    add
    stloc $tmpIndex312
    ldloc $tmpIndex312
    stsfld int32 _G::i
    br L_for_loop_1019
L_for_end_1020:
    pop
    .line 2065
    ldc.i4 1
    stloc $tmpEndValue313
    ldc.i4 10
    dup
    ldloc $tmpEndValue313
    blt L_for_end_1022
    stloc $tmpIndex314
    ldloc $tmpIndex314
    stsfld int32 _G::i
L_for_loop_1021:
    .line 2065
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_16 _G::Pavb
    ldsfld int32 _G::i
    call instance bool& T_array_16::ldadr(int32)
    ldobj bool
    brtrue L_bool_to_string_true_1023
    ldstr "false"
    br L_bool_to_string_false_1024
L_bool_to_string_true_1023:
    ldstr "true"
L_bool_to_string_false_1024:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue313
    beq L_for_end_1022
    ldc.i4.1
    sub
    stloc $tmpIndex315
    ldloc $tmpIndex315
    stsfld int32 _G::i
    br L_for_loop_1021
L_for_end_1022:
    pop
    .line 2066
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2067
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "    s/b:   false  true false  true false  true false  true false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr "  true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2069
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array7:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2070
    ldc.i4 10
    stloc $tmpEndValue316
    ldc.i4 1
    dup
    ldloc $tmpEndValue316
    bgt L_for_end_1026
    stloc $tmpIndex317
    ldloc $tmpIndex317
    stsfld int32 _G::i
L_for_loop_1025:
    .line 2070
    ldsflda valuetype T_array_26 _G::Avr
    ldsfld int32 _G::i
    call instance float64& T_array_26::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 10
    add
    conv.r8
    ldc.r8 0.120000
    add
    stobj float64
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue316
    beq L_for_end_1026
    ldc.i4.1
    add
    stloc $tmpIndex318
    ldloc $tmpIndex318
    stsfld int32 _G::i
    br L_for_loop_1025
L_for_end_1026:
    pop
    .line 2071
    ldc.i4 1
    stloc $tmpEndValue319
    ldc.i4 10
    dup
    ldloc $tmpEndValue319
    blt L_for_end_1028
    stloc $tmpIndex320
    ldloc $tmpIndex320
    stsfld int32 _G::i
L_for_loop_1027:
    .line 2071
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4 2
    ldsflda valuetype T_array_26 _G::Avr
    ldsfld int32 _G::i
    call instance float64& T_array_26::ldadr(int32)
    ldobj float64
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue319
    beq L_for_end_1028
    ldc.i4.1
    sub
    stloc $tmpIndex321
    ldloc $tmpIndex321
    stsfld int32 _G::i
    br L_for_loop_1027
L_for_end_1028:
    pop
    .line 2072
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2073
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "    s/b:   20.12 19.12 18.12 17.12 16.12 15.12 14.12 "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr "13.12 12.12 11.12"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2075
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array8:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2076
    ldc.i4 10
    stloc $tmpEndValue322
    ldc.i4 1
    dup
    ldloc $tmpEndValue322
    bgt L_for_end_1030
    stloc $tmpIndex323
    ldloc $tmpIndex323
    stsfld int32 _G::i
L_for_loop_1029:
    .line 2076
    ldsflda valuetype T_array_26 _G::Pavr
    ldsfld int32 _G::i
    call instance float64& T_array_26::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 10
    add
    conv.r8
    ldc.r8 0.120000
    add
    stobj float64
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue322
    beq L_for_end_1030
    ldc.i4.1
    add
    stloc $tmpIndex324
    ldloc $tmpIndex324
    stsfld int32 _G::i
    br L_for_loop_1029
L_for_end_1030:
    pop
    .line 2077
    ldc.i4 1
    stloc $tmpEndValue325
    ldc.i4 10
    dup
    ldloc $tmpEndValue325
    blt L_for_end_1032
    stloc $tmpIndex326
    ldloc $tmpIndex326
    stsfld int32 _G::i
L_for_loop_1031:
    .line 2077
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4 2
    ldsflda valuetype T_array_26 _G::Pavr
    ldsfld int32 _G::i
    call instance float64& T_array_26::ldadr(int32)
    ldobj float64
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue325
    beq L_for_end_1032
    ldc.i4.1
    sub
    stloc $tmpIndex327
    ldloc $tmpIndex327
    stsfld int32 _G::i
    br L_for_loop_1031
L_for_end_1032:
    pop
    .line 2078
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2079
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "    s/b:   20.12 19.12 18.12 17.12 16.12 15.12 14.12 "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr "13.12 12.12 11.12"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2081
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array9:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2082
    ldc.i4 10
    stloc $tmpEndValue328
    ldc.i4 1
    dup
    ldloc $tmpEndValue328
    bgt L_for_end_1034
    stloc $tmpIndex329
    ldloc $tmpIndex329
    stsfld int32 _G::i
L_for_loop_1033:
    .line 2082
    ldsflda valuetype T_string10 _G::Avc
    ldsfld int32 _G::i
    call instance uint8& T_string10::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 97 // 'a'
    add
    stobj uint8
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue328
    beq L_for_end_1034
    ldc.i4.1
    add
    stloc $tmpIndex330
    ldloc $tmpIndex330
    stsfld int32 _G::i
    br L_for_loop_1033
L_for_end_1034:
    pop
    .line 2083
    ldc.i4 1
    stloc $tmpEndValue331
    ldc.i4 10
    dup
    ldloc $tmpEndValue331
    blt L_for_end_1036
    stloc $tmpIndex332
    ldloc $tmpIndex332
    stsfld int32 _G::i
L_for_loop_1035:
    .line 2083
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_string10 _G::Avc
    ldsfld int32 _G::i
    call instance uint8& T_string10::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue331
    beq L_for_end_1036
    ldc.i4.1
    sub
    stloc $tmpIndex333
    ldloc $tmpIndex333
    stsfld int32 _G::i
    br L_for_loop_1035
L_for_end_1036:
    pop
    .line 2084
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b k j i h g f e d c b"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2085
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array10:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2086
    ldc.i4 10
    stloc $tmpEndValue334
    ldc.i4 1
    dup
    ldloc $tmpEndValue334
    bgt L_for_end_1038
    stloc $tmpIndex335
    ldloc $tmpIndex335
    stsfld int32 _G::i
L_for_loop_1037:
    .line 2086
    ldsflda valuetype T_string10 _G::Pavc
    ldsfld int32 _G::i
    call instance uint8& T_string10::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 97 // 'a'
    add
    stobj uint8
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue334
    beq L_for_end_1038
    ldc.i4.1
    add
    stloc $tmpIndex336
    ldloc $tmpIndex336
    stsfld int32 _G::i
    br L_for_loop_1037
L_for_end_1038:
    pop
    .line 2087
    ldc.i4 1
    stloc $tmpEndValue337
    ldc.i4 10
    dup
    ldloc $tmpEndValue337
    blt L_for_end_1040
    stloc $tmpIndex338
    ldloc $tmpIndex338
    stsfld int32 _G::i
L_for_loop_1039:
    .line 2087
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_string10 _G::Pavc
    ldsfld int32 _G::i
    call instance uint8& T_string10::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue337
    beq L_for_end_1040
    ldc.i4.1
    sub
    stloc $tmpIndex339
    ldloc $tmpIndex339
    stsfld int32 _G::i
    br L_for_loop_1039
L_for_end_1040:
    pop
    .line 2088
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b k j i h g f e d c b"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2089
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array11:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2090
    ldc.i4 10
    stloc $tmpEndValue340
    ldc.i4 1
    dup
    ldloc $tmpEndValue340
    bgt L_for_end_1042
    stloc $tmpIndex341
    ldloc $tmpIndex341
    stsfld int32 _G::i
L_for_loop_1041:
    .line 2090
    ldsflda valuetype T_string10 _G::Avcs
    ldsfld int32 _G::i
    call instance uint8& T_string10::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 102 // 'f'
    add
    dup
    ldc.i4 103
    ldc.i4 112
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue340
    beq L_for_end_1042
    ldc.i4.1
    add
    stloc $tmpIndex342
    ldloc $tmpIndex342
    stsfld int32 _G::i
    br L_for_loop_1041
L_for_end_1042:
    pop
    .line 2091
    ldc.i4 1
    stloc $tmpEndValue343
    ldc.i4 10
    dup
    ldloc $tmpEndValue343
    blt L_for_end_1044
    stloc $tmpIndex344
    ldloc $tmpIndex344
    stsfld int32 _G::i
L_for_loop_1043:
    .line 2091
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_string10 _G::Avcs
    ldsfld int32 _G::i
    call instance uint8& T_string10::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue343
    beq L_for_end_1044
    ldc.i4.1
    sub
    stloc $tmpIndex345
    ldloc $tmpIndex345
    stsfld int32 _G::i
    br L_for_loop_1043
L_for_end_1044:
    pop
    .line 2092
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b p o n m l k j i h g"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2093
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array12:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2094
    ldc.i4 10
    stloc $tmpEndValue346
    ldc.i4 1
    dup
    ldloc $tmpEndValue346
    bgt L_for_end_1046
    stloc $tmpIndex347
    ldloc $tmpIndex347
    stsfld int32 _G::i
L_for_loop_1045:
    .line 2094
    ldsflda valuetype T_string10 _G::Pavcs
    ldsfld int32 _G::i
    call instance uint8& T_string10::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 102 // 'f'
    add
    dup
    ldc.i4 103
    ldc.i4 112
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue346
    beq L_for_end_1046
    ldc.i4.1
    add
    stloc $tmpIndex348
    ldloc $tmpIndex348
    stsfld int32 _G::i
    br L_for_loop_1045
L_for_end_1046:
    pop
    .line 2095
    ldc.i4 1
    stloc $tmpEndValue349
    ldc.i4 10
    dup
    ldloc $tmpEndValue349
    blt L_for_end_1048
    stloc $tmpIndex350
    ldloc $tmpIndex350
    stsfld int32 _G::i
L_for_loop_1047:
    .line 2095
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_string10 _G::Pavcs
    ldsfld int32 _G::i
    call instance uint8& T_string10::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue349
    beq L_for_end_1048
    ldc.i4.1
    sub
    stloc $tmpIndex351
    ldloc $tmpIndex351
    stsfld int32 _G::i
    br L_for_loop_1047
L_for_end_1048:
    pop
    .line 2096
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b p o n m l k j i h g"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2097
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array13:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2098
    ldc.i4 9 // ten 
    stloc $tmpEndValue352
    ldc.i4 0 // one 
    dup
    ldloc $tmpEndValue352
    bgt L_for_end_1050
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex353
    ldloc $tmpIndex353
    stsfld int32 _G::Ei
L_for_loop_1049:
    .line 2098
    ldsflda valuetype T_arri _G::Ave
    ldsfld int32 _G::Ei
    ldc.i4 1
    add
    call instance int32& T_arri::ldadr(int32)
    ldsfld int32 _G::Ei
    stobj int32
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue352
    beq L_for_end_1050
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex354
    ldloc $tmpIndex354
    stsfld int32 _G::Ei
    br L_for_loop_1049
L_for_end_1050:
    pop
    .line 2099
    ldc.i4 0 // one 
    stloc $tmpEndValue355
    ldc.i4 9 // ten 
    dup
    ldloc $tmpEndValue355
    blt L_for_end_1052
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex356
    ldloc $tmpIndex356
    stsfld int32 _G::Ei
L_for_loop_1051:
    .line 2099
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_arri _G::Ave
    ldsfld int32 _G::Ei
    ldc.i4 1
    add
    call instance int32& T_arri::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue355
    beq L_for_end_1052
    ldc.i4.1
    sub
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex357
    ldloc $tmpIndex357
    stsfld int32 _G::Ei
    br L_for_loop_1051
L_for_end_1052:
    pop
    .line 2100
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 9 8 7 6 5 4 3 2 1 0"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2101
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array14:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2102
    ldc.i4 9 // ten 
    stloc $tmpEndValue358
    ldc.i4 0 // one 
    dup
    ldloc $tmpEndValue358
    bgt L_for_end_1054
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex359
    ldloc $tmpIndex359
    stsfld int32 _G::Ei
L_for_loop_1053:
    .line 2102
    ldsflda valuetype T_arri _G::Pave
    ldsfld int32 _G::Ei
    ldc.i4 1
    add
    call instance int32& T_arri::ldadr(int32)
    ldsfld int32 _G::Ei
    stobj int32
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue358
    beq L_for_end_1054
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex360
    ldloc $tmpIndex360
    stsfld int32 _G::Ei
    br L_for_loop_1053
L_for_end_1054:
    pop
    .line 2103
    ldc.i4 0 // one 
    stloc $tmpEndValue361
    ldc.i4 9 // ten 
    dup
    ldloc $tmpEndValue361
    blt L_for_end_1056
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex362
    ldloc $tmpIndex362
    stsfld int32 _G::Ei
L_for_loop_1055:
    .line 2103
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_arri _G::Ave
    ldsfld int32 _G::Ei
    ldc.i4 1
    add
    call instance int32& T_arri::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue361
    beq L_for_end_1056
    ldc.i4.1
    sub
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex363
    ldloc $tmpIndex363
    stsfld int32 _G::Ei
    br L_for_loop_1055
L_for_end_1056:
    pop
    .line 2104
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 9 8 7 6 5 4 3 2 1 0"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2105
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array15:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2106
    ldc.i4 5 // six 
    stloc $tmpEndValue364
    ldc.i4 2 // three 
    dup
    ldloc $tmpEndValue364
    bgt L_for_end_1058
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex365
    ldloc $tmpIndex365
    stsfld int32 _G::Ei
L_for_loop_1057:
    .line 2106
    ldsflda valuetype T_array_21 _G::Aves
    ldsfld int32 _G::Ei
    ldc.i4 1
    add
    call instance int8& T_array_21::ldadr(int32)
    ldsfld int32 _G::Ei
    dup
    ldc.i4 2
    ldc.i4 5
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue364
    beq L_for_end_1058
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex366
    ldloc $tmpIndex366
    stsfld int32 _G::Ei
    br L_for_loop_1057
L_for_end_1058:
    pop
    .line 2107
    ldc.i4 2 // three 
    stloc $tmpEndValue367
    ldc.i4 5 // six 
    dup
    ldloc $tmpEndValue367
    blt L_for_end_1060
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex368
    ldloc $tmpIndex368
    stsfld int32 _G::Ei
L_for_loop_1059:
    .line 2107
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_array_21 _G::Aves
    ldsfld int32 _G::Ei
    ldc.i4 1
    add
    call instance int8& T_array_21::ldadr(int32)
    ldobj int8
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue367
    beq L_for_end_1060
    ldc.i4.1
    sub
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex369
    ldloc $tmpIndex369
    stsfld int32 _G::Ei
    br L_for_loop_1059
L_for_end_1060:
    pop
    .line 2108
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 5 4 3 2"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2109
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array16:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2110
    ldc.i4 5 // six 
    stloc $tmpEndValue370
    ldc.i4 2 // three 
    dup
    ldloc $tmpEndValue370
    bgt L_for_end_1062
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex371
    ldloc $tmpIndex371
    stsfld int32 _G::Ei
L_for_loop_1061:
    .line 2110
    ldsflda valuetype T_array_21 _G::Paves
    ldsfld int32 _G::Ei
    ldc.i4 1
    add
    call instance int8& T_array_21::ldadr(int32)
    ldsfld int32 _G::Ei
    dup
    ldc.i4 2
    ldc.i4 5
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue370
    beq L_for_end_1062
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex372
    ldloc $tmpIndex372
    stsfld int32 _G::Ei
    br L_for_loop_1061
L_for_end_1062:
    pop
    .line 2111
    ldc.i4 2 // three 
    stloc $tmpEndValue373
    ldc.i4 5 // six 
    dup
    ldloc $tmpEndValue373
    blt L_for_end_1064
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex374
    ldloc $tmpIndex374
    stsfld int32 _G::Ei
L_for_loop_1063:
    .line 2111
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_array_21 _G::Paves
    ldsfld int32 _G::Ei
    ldc.i4 1
    add
    call instance int8& T_array_21::ldadr(int32)
    ldobj int8
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue373
    beq L_for_end_1064
    ldc.i4.1
    sub
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex375
    ldloc $tmpIndex375
    stsfld int32 _G::Ei
    br L_for_loop_1063
L_for_end_1064:
    pop
    .line 2112
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 5 4 3 2"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2113
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array17:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2114
    ldc.i4 10
    stloc $tmpEndValue376
    ldc.i4 1
    dup
    ldloc $tmpEndValue376
    bgt L_for_end_1066
    stloc $tmpIndex377
    ldloc $tmpIndex377
    stsfld int32 _G::i
L_for_loop_1065:
    .line 2114
    ldloca $tmpSetLiteral378
    call instance void T_cset::clear()
    ldloca $tmpSetLiteral378
    ldsfld int32 _G::i
    ldc.i4 97 // 'a'
    add
    call instance void T_cset::addValue(int32)
    ldsflda valuetype T_array_28 _G::Avs
    ldsfld int32 _G::i
    call instance valuetype T_cset& T_array_28::ldadr(int32)
    ldloc $tmpSetLiteral378
    stobj valuetype T_cset
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue376
    beq L_for_end_1066
    ldc.i4.1
    add
    stloc $tmpIndex379
    ldloc $tmpIndex379
    stsfld int32 _G::i
    br L_for_loop_1065
L_for_end_1066:
    pop
    .line 2115
    ldc.i4 1
    stloc $tmpEndValue380
    ldc.i4 10
    dup
    ldloc $tmpEndValue380
    blt L_for_end_1068
    stloc $tmpIndex381
    ldloc $tmpIndex381
    stsfld int32 _G::i
L_for_loop_1067:
    .line 2116
    ldc.i4 122 // 'z'
    stloc $tmpEndValue382
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue382
    bgt L_for_end_1070
    stloc $tmpIndex383
    ldloc $tmpIndex383
    stsfld uint8 _G::Ci
L_for_loop_1069:
    .line 2116
    ldsflda valuetype T_array_28 _G::Avs
    ldsfld int32 _G::i
    call instance valuetype T_cset& T_array_28::ldadr(int32)
    ldobj valuetype T_cset
    ldsfld uint8 _G::Ci
    call bool _SetContains(valuetype T_cset s, int32 val)
    brfalse L_if_end_1071
    .line 2116
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ci
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_1071:
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue382
    beq L_for_end_1070
    ldc.i4.1
    add
    stloc $tmpIndex384
    ldloc $tmpIndex384
    stsfld uint8 _G::Ci
    br L_for_loop_1069
L_for_end_1070:
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue380
    beq L_for_end_1068
    ldc.i4.1
    sub
    stloc $tmpIndex385
    ldloc $tmpIndex385
    stsfld int32 _G::i
    br L_for_loop_1067
L_for_end_1068:
    pop
    .line 2117
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b k j i h g f e d c b"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2118
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array18:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2119
    ldc.i4 10
    stloc $tmpEndValue386
    ldc.i4 1
    dup
    ldloc $tmpEndValue386
    bgt L_for_end_1073
    stloc $tmpIndex387
    ldloc $tmpIndex387
    stsfld int32 _G::i
L_for_loop_1072:
    .line 2119
    ldloca $tmpSetLiteral388
    call instance void T_cset::clear()
    ldloca $tmpSetLiteral388
    ldsfld int32 _G::i
    ldc.i4 97 // 'a'
    add
    call instance void T_cset::addValue(int32)
    ldsflda valuetype T_array_28 _G::Pavs
    ldsfld int32 _G::i
    call instance valuetype T_cset& T_array_28::ldadr(int32)
    ldloc $tmpSetLiteral388
    stobj valuetype T_cset
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue386
    beq L_for_end_1073
    ldc.i4.1
    add
    stloc $tmpIndex389
    ldloc $tmpIndex389
    stsfld int32 _G::i
    br L_for_loop_1072
L_for_end_1073:
    pop
    .line 2120
    ldc.i4 1
    stloc $tmpEndValue390
    ldc.i4 10
    dup
    ldloc $tmpEndValue390
    blt L_for_end_1075
    stloc $tmpIndex391
    ldloc $tmpIndex391
    stsfld int32 _G::i
L_for_loop_1074:
    .line 2121
    ldc.i4 122 // 'z'
    stloc $tmpEndValue392
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue392
    bgt L_for_end_1077
    stloc $tmpIndex393
    ldloc $tmpIndex393
    stsfld uint8 _G::Ci
L_for_loop_1076:
    .line 2121
    ldsflda valuetype T_array_28 _G::Pavs
    ldsfld int32 _G::i
    call instance valuetype T_cset& T_array_28::ldadr(int32)
    ldobj valuetype T_cset
    ldsfld uint8 _G::Ci
    call bool _SetContains(valuetype T_cset s, int32 val)
    brfalse L_if_end_1078
    .line 2121
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ci
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_1078:
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue392
    beq L_for_end_1077
    ldc.i4.1
    add
    stloc $tmpIndex394
    ldloc $tmpIndex394
    stsfld uint8 _G::Ci
    br L_for_loop_1076
L_for_end_1077:
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue390
    beq L_for_end_1075
    ldc.i4.1
    sub
    stloc $tmpIndex395
    ldloc $tmpIndex395
    stsfld int32 _G::i
    br L_for_loop_1074
L_for_end_1075:
    pop
    .line 2122
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b k j i h g f e d c b"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2123
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array19:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2124
    ldc.i4 10
    stloc $tmpEndValue396
    ldc.i4 1
    dup
    ldloc $tmpEndValue396
    bgt L_for_end_1080
    stloc $tmpIndex397
    ldloc $tmpIndex397
    stsfld int32 _G::i
L_for_loop_1079:
    .line 2125
    ldsflda valuetype T_arrr _G::Avrc
    ldsfld int32 _G::i
    call instance valuetype T_recs& T_arrr::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 10
    add
    stfld int32 T_recs::a
    .line 2125
    ldsflda valuetype T_arrr _G::Avrc
    ldsfld int32 _G::i
    call instance valuetype T_recs& T_arrr::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 97 // 'a'
    add
    stfld uint8 T_recs::b
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue396
    beq L_for_end_1080
    ldc.i4.1
    add
    stloc $tmpIndex398
    ldloc $tmpIndex398
    stsfld int32 _G::i
    br L_for_loop_1079
L_for_end_1080:
    pop
    .line 2126
    ldc.i4 1
    stloc $tmpEndValue399
    ldc.i4 10
    dup
    ldloc $tmpEndValue399
    blt L_for_end_1082
    stloc $tmpIndex400
    ldloc $tmpIndex400
    stsfld int32 _G::i
L_for_loop_1081:
    .line 2126
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_arrr _G::Avrc
    ldsfld int32 _G::i
    call instance valuetype T_recs& T_arrr::ldadr(int32)
    ldfld int32 T_recs::a
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsflda valuetype T_arrr _G::Avrc
    ldsfld int32 _G::i
    call instance valuetype T_recs& T_arrr::ldadr(int32)
    ldfld uint8 T_recs::b
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue399
    beq L_for_end_1082
    ldc.i4.1
    sub
    stloc $tmpIndex401
    ldloc $tmpIndex401
    stsfld int32 _G::i
    br L_for_loop_1081
L_for_end_1082:
    pop
    .line 2127
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2128
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "     s/b:  20 k 19 j 18 i 17 h 16 g 15 f 14 e 13 d 12 c 11 b"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2129
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array20:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2130
    ldc.i4 10
    stloc $tmpEndValue402
    ldc.i4 1
    dup
    ldloc $tmpEndValue402
    bgt L_for_end_1084
    stloc $tmpIndex403
    ldloc $tmpIndex403
    stsfld int32 _G::i
L_for_loop_1083:
    .line 2131
    ldsflda valuetype T_arrr _G::Pavrc
    ldsfld int32 _G::i
    call instance valuetype T_recs& T_arrr::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 10
    add
    stfld int32 T_recs::a
    .line 2131
    ldsflda valuetype T_arrr _G::Pavrc
    ldsfld int32 _G::i
    call instance valuetype T_recs& T_arrr::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 97 // 'a'
    add
    stfld uint8 T_recs::b
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue402
    beq L_for_end_1084
    ldc.i4.1
    add
    stloc $tmpIndex404
    ldloc $tmpIndex404
    stsfld int32 _G::i
    br L_for_loop_1083
L_for_end_1084:
    pop
    .line 2132
    ldc.i4 1
    stloc $tmpEndValue405
    ldc.i4 10
    dup
    ldloc $tmpEndValue405
    blt L_for_end_1086
    stloc $tmpIndex406
    ldloc $tmpIndex406
    stsfld int32 _G::i
L_for_loop_1085:
    .line 2132
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_arrr _G::Pavrc
    ldsfld int32 _G::i
    call instance valuetype T_recs& T_arrr::ldadr(int32)
    ldfld int32 T_recs::a
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsflda valuetype T_arrr _G::Pavrc
    ldsfld int32 _G::i
    call instance valuetype T_recs& T_arrr::ldadr(int32)
    ldfld uint8 T_recs::b
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue405
    beq L_for_end_1086
    ldc.i4.1
    sub
    stloc $tmpIndex407
    ldloc $tmpIndex407
    stsfld int32 _G::i
    br L_for_loop_1085
L_for_end_1086:
    pop
    .line 2133
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2134
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "     s/b:  20 k 19 j 18 i 17 h 16 g 15 f 14 e 13 d 12 c 11 b"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2135
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array21:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2136
    ldc.i4 10
    stloc $tmpEndValue408
    ldc.i4 1
    dup
    ldloc $tmpEndValue408
    bgt L_for_end_1088
    stloc $tmpIndex409
    ldloc $tmpIndex409
    stsfld int32 _G::i
L_for_loop_1087:
    .line 2136
    ldsflda valuetype T_array_22 _G::Avf
    ldsfld int32 _G::i
    call instance valuetype [lpcRuntime]LPC.File& T_array_22::ldadr(int32)
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2136
    ldsflda valuetype T_array_22 _G::Avf
    ldsfld int32 _G::i
    call instance valuetype [lpcRuntime]LPC.File& T_array_22::ldadr(int32)
    dup
    ldsfld int32 _G::i
    ldc.i4 10
    add
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue408
    beq L_for_end_1088
    ldc.i4.1
    add
    stloc $tmpIndex410
    ldloc $tmpIndex410
    stsfld int32 _G::i
    br L_for_loop_1087
L_for_end_1088:
    pop
    .line 2137
    ldc.i4 1
    stloc $tmpEndValue411
    ldc.i4 10
    dup
    ldloc $tmpEndValue411
    blt L_for_end_1090
    stloc $tmpIndex412
    ldloc $tmpIndex412
    stsfld int32 _G::i
L_for_loop_1089:
    .line 2138
    ldsflda valuetype T_array_22 _G::Avf
    ldsfld int32 _G::i
    call instance valuetype [lpcRuntime]LPC.File& T_array_22::ldadr(int32)
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2138
    ldsflda valuetype T_array_22 _G::Avf
    ldsfld int32 _G::i
    call instance valuetype [lpcRuntime]LPC.File& T_array_22::ldadr(int32)
    dup
    ldsflda int32 _G::x
    ldc.i4 -2147483648
    ldc.i4 2147483647
    call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 2138
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::x
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue411
    beq L_for_end_1090
    ldc.i4.1
    sub
    stloc $tmpIndex413
    ldloc $tmpIndex413
    stsfld int32 _G::i
    br L_for_loop_1089
L_for_end_1090:
    pop
    .line 2139
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 20 19 18 17 16 15 14 13 12 11"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2140
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array22:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2141
    ldc.i4 10
    stloc $tmpEndValue414
    ldc.i4 1
    dup
    ldloc $tmpEndValue414
    bgt L_for_end_1092
    stloc $tmpIndex415
    ldloc $tmpIndex415
    stsfld int32 _G::i
L_for_loop_1091:
    .line 2141
    ldsflda valuetype T_array_22 _G::Pavf
    ldsfld int32 _G::i
    call instance valuetype [lpcRuntime]LPC.File& T_array_22::ldadr(int32)
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2141
    ldsflda valuetype T_array_22 _G::Pavf
    ldsfld int32 _G::i
    call instance valuetype [lpcRuntime]LPC.File& T_array_22::ldadr(int32)
    dup
    ldsfld int32 _G::i
    ldc.i4 10
    add
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue414
    beq L_for_end_1092
    ldc.i4.1
    add
    stloc $tmpIndex416
    ldloc $tmpIndex416
    stsfld int32 _G::i
    br L_for_loop_1091
L_for_end_1092:
    pop
    .line 2142
    ldc.i4 1
    stloc $tmpEndValue417
    ldc.i4 10
    dup
    ldloc $tmpEndValue417
    blt L_for_end_1094
    stloc $tmpIndex418
    ldloc $tmpIndex418
    stsfld int32 _G::i
L_for_loop_1093:
    .line 2143
    ldsflda valuetype T_array_22 _G::Pavf
    ldsfld int32 _G::i
    call instance valuetype [lpcRuntime]LPC.File& T_array_22::ldadr(int32)
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2143
    ldsflda valuetype T_array_22 _G::Pavf
    ldsfld int32 _G::i
    call instance valuetype [lpcRuntime]LPC.File& T_array_22::ldadr(int32)
    dup
    ldsflda int32 _G::x
    ldc.i4 -2147483648
    ldc.i4 2147483647
    call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 2143
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::x
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue417
    beq L_for_end_1094
    ldc.i4.1
    sub
    stloc $tmpIndex419
    ldloc $tmpIndex419
    stsfld int32 _G::i
    br L_for_loop_1093
L_for_end_1094:
    pop
    .line 2144
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 20 19 18 17 16 15 14 13 12 11"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2145
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array23:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2146
    ldc.i4 10
    stloc $tmpEndValue420
    ldc.i4 1
    dup
    ldloc $tmpEndValue420
    bgt L_for_end_1096
    stloc $tmpIndex421
    ldloc $tmpIndex421
    stsfld int32 _G::i
L_for_loop_1095:
    .line 2146
    .line 2146
    ldsflda valuetype T_array_25 _G::Avp
    ldsfld int32 _G::i
    call instance void*& T_array_25::ldadr(int32)
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stobj void*
    .line 2146
    ldsflda valuetype T_array_25 _G::Avp
    ldsfld int32 _G::i
    call instance void*& T_array_25::ldadr(int32)
    ldobj void*
    ldsfld int32 _G::i
    ldc.i4 10
    add
    stobj int32
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue420
    beq L_for_end_1096
    ldc.i4.1
    add
    stloc $tmpIndex422
    ldloc $tmpIndex422
    stsfld int32 _G::i
    br L_for_loop_1095
L_for_end_1096:
    pop
    .line 2147
    ldc.i4 1
    stloc $tmpEndValue423
    ldc.i4 10
    dup
    ldloc $tmpEndValue423
    blt L_for_end_1098
    stloc $tmpIndex424
    ldloc $tmpIndex424
    stsfld int32 _G::i
L_for_loop_1097:
    .line 2147
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_array_25 _G::Avp
    ldsfld int32 _G::i
    call instance void*& T_array_25::ldadr(int32)
    ldobj void*
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue423
    beq L_for_end_1098
    ldc.i4.1
    sub
    stloc $tmpIndex425
    ldloc $tmpIndex425
    stsfld int32 _G::i
    br L_for_loop_1097
L_for_end_1098:
    pop
    .line 2148
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 20 19 18 17 16 15 14 13 12 11"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2149
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array24:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2150
    ldc.i4 10
    stloc $tmpEndValue426
    ldc.i4 1
    dup
    ldloc $tmpEndValue426
    bgt L_for_end_1100
    stloc $tmpIndex427
    ldloc $tmpIndex427
    stsfld int32 _G::i
L_for_loop_1099:
    .line 2150
    .line 2150
    ldsflda valuetype T_array_25 _G::Pavp
    ldsfld int32 _G::i
    call instance void*& T_array_25::ldadr(int32)
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stobj void*
    .line 2150
    ldsflda valuetype T_array_25 _G::Pavp
    ldsfld int32 _G::i
    call instance void*& T_array_25::ldadr(int32)
    ldobj void*
    ldsfld int32 _G::i
    ldc.i4 10
    add
    stobj int32
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue426
    beq L_for_end_1100
    ldc.i4.1
    add
    stloc $tmpIndex428
    ldloc $tmpIndex428
    stsfld int32 _G::i
    br L_for_loop_1099
L_for_end_1100:
    pop
    .line 2151
    ldc.i4 1
    stloc $tmpEndValue429
    ldc.i4 10
    dup
    ldloc $tmpEndValue429
    blt L_for_end_1102
    stloc $tmpIndex430
    ldloc $tmpIndex430
    stsfld int32 _G::i
L_for_loop_1101:
    .line 2151
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_array_25 _G::Pavp
    ldsfld int32 _G::i
    call instance void*& T_array_25::ldadr(int32)
    ldobj void*
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue429
    beq L_for_end_1102
    ldc.i4.1
    sub
    stloc $tmpIndex431
    ldloc $tmpIndex431
    stsfld int32 _G::i
    br L_for_loop_1101
L_for_end_1102:
    pop
    .line 2152
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 20 19 18 17 16 15 14 13 12 11"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2155
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array25:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2156
    ldc.i4 1 // (true)
    stloc $tmpEndValue432
    ldc.i4 0 // (false)
    dup
    ldloc $tmpEndValue432
    bgt L_for_end_1104
    stloc $tmpIndex433
    ldloc $tmpIndex433
    stsfld bool _G::Ba
L_for_loop_1103:
    .line 2156
    ldsflda valuetype T_array_29 _G::Bia
    ldsfld bool _G::Ba
    call instance int32& T_array_29::ldadr(int32)
    ldsfld bool _G::Ba
    ldc.i4 10
    add
    stobj int32
    ldsfld bool _G::Ba
    dup
    ldloc $tmpEndValue432
    beq L_for_end_1104
    ldc.i4.1
    add
    stloc $tmpIndex434
    ldloc $tmpIndex434
    stsfld bool _G::Ba
    br L_for_loop_1103
L_for_end_1104:
    pop
    .line 2157
    ldc.i4 0 // (false)
    stloc $tmpEndValue435
    ldc.i4 1 // (true)
    dup
    ldloc $tmpEndValue435
    blt L_for_end_1106
    stloc $tmpIndex436
    ldloc $tmpIndex436
    stsfld bool _G::Ba
L_for_loop_1105:
    .line 2157
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_array_29 _G::Bia
    ldsfld bool _G::Ba
    call instance int32& T_array_29::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld bool _G::Ba
    dup
    ldloc $tmpEndValue435
    beq L_for_end_1106
    ldc.i4.1
    sub
    stloc $tmpIndex437
    ldloc $tmpIndex437
    stsfld bool _G::Ba
    br L_for_loop_1105
L_for_end_1106:
    pop
    .line 2158
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 11 10"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2159
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array26:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2160
    ldc.i4 1 // (true)
    stloc $tmpEndValue438
    ldc.i4 0 // (false)
    dup
    ldloc $tmpEndValue438
    bgt L_for_end_1108
    stloc $tmpIndex439
    ldloc $tmpIndex439
    stsfld bool _G::Ba
L_for_loop_1107:
    .line 2160
    ldsflda valuetype T_array_29 _G::Pbia
    ldsfld bool _G::Ba
    call instance int32& T_array_29::ldadr(int32)
    ldsfld bool _G::Ba
    ldc.i4 10
    add
    stobj int32
    ldsfld bool _G::Ba
    dup
    ldloc $tmpEndValue438
    beq L_for_end_1108
    ldc.i4.1
    add
    stloc $tmpIndex440
    ldloc $tmpIndex440
    stsfld bool _G::Ba
    br L_for_loop_1107
L_for_end_1108:
    pop
    .line 2161
    ldc.i4 0 // (false)
    stloc $tmpEndValue441
    ldc.i4 1 // (true)
    dup
    ldloc $tmpEndValue441
    blt L_for_end_1110
    stloc $tmpIndex442
    ldloc $tmpIndex442
    stsfld bool _G::Ba
L_for_loop_1109:
    .line 2161
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_array_29 _G::Pbia
    ldsfld bool _G::Ba
    call instance int32& T_array_29::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld bool _G::Ba
    dup
    ldloc $tmpEndValue441
    beq L_for_end_1110
    ldc.i4.1
    sub
    stloc $tmpIndex443
    ldloc $tmpIndex443
    stsfld bool _G::Ba
    br L_for_loop_1109
L_for_end_1110:
    pop
    .line 2162
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 11 10"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2163
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array27:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2164
    ldc.i4 106 // 'j'
    stloc $tmpEndValue444
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue444
    bgt L_for_end_1112
    stloc $tmpIndex445
    ldloc $tmpIndex445
    stsfld uint8 _G::Ci
L_for_loop_1111:
    .line 2164
    ldsflda valuetype T_array_31 _G::Cia
    ldsfld uint8 _G::Ci
    call instance int32& T_array_31::ldadr(int32)
    ldsfld uint8 _G::Ci
    stobj int32
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue444
    beq L_for_end_1112
    ldc.i4.1
    add
    stloc $tmpIndex446
    ldloc $tmpIndex446
    stsfld uint8 _G::Ci
    br L_for_loop_1111
L_for_end_1112:
    pop
    .line 2165
    ldc.i4 97 // 'a'
    stloc $tmpEndValue447
    ldc.i4 106 // 'j'
    dup
    ldloc $tmpEndValue447
    blt L_for_end_1114
    stloc $tmpIndex448
    ldloc $tmpIndex448
    stsfld uint8 _G::Ci
L_for_loop_1113:
    .line 2165
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsflda valuetype T_array_31 _G::Cia
    ldsfld uint8 _G::Ci
    call instance int32& T_array_31::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue447
    beq L_for_end_1114
    ldc.i4.1
    sub
    stloc $tmpIndex449
    ldloc $tmpIndex449
    stsfld uint8 _G::Ci
    br L_for_loop_1113
L_for_end_1114:
    pop
    .line 2166
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b  j i h g f e d c b a"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2167
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array28:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2168
    ldc.i4 106 // 'j'
    stloc $tmpEndValue450
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue450
    bgt L_for_end_1116
    stloc $tmpIndex451
    ldloc $tmpIndex451
    stsfld uint8 _G::Ci
L_for_loop_1115:
    .line 2168
    ldsflda valuetype T_array_31 _G::Pcia
    ldsfld uint8 _G::Ci
    call instance int32& T_array_31::ldadr(int32)
    ldsfld uint8 _G::Ci
    stobj int32
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue450
    beq L_for_end_1116
    ldc.i4.1
    add
    stloc $tmpIndex452
    ldloc $tmpIndex452
    stsfld uint8 _G::Ci
    br L_for_loop_1115
L_for_end_1116:
    pop
    .line 2169
    ldc.i4 97 // 'a'
    stloc $tmpEndValue453
    ldc.i4 106 // 'j'
    dup
    ldloc $tmpEndValue453
    blt L_for_end_1118
    stloc $tmpIndex454
    ldloc $tmpIndex454
    stsfld uint8 _G::Ci
L_for_loop_1117:
    .line 2169
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsflda valuetype T_array_31 _G::Pcia
    ldsfld uint8 _G::Ci
    call instance int32& T_array_31::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue453
    beq L_for_end_1118
    ldc.i4.1
    sub
    stloc $tmpIndex455
    ldloc $tmpIndex455
    stsfld uint8 _G::Ci
    br L_for_loop_1117
L_for_end_1118:
    pop
    .line 2170
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b  j i h g f e d c b a"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2171
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array29:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2172
    ldc.i4 106 // 'j'
    stloc $tmpEndValue456
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue456
    bgt L_for_end_1120
    stloc $tmpIndex457
    ldloc $tmpIndex457
    stsfld uint8 _G::Ci
L_for_loop_1119:
    .line 2172
    ldsflda valuetype T_array_30 _G::Csia
    ldsfld uint8 _G::Ci
    call instance int32& T_array_30::ldadr(int32)
    ldsfld uint8 _G::Ci
    stobj int32
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue456
    beq L_for_end_1120
    ldc.i4.1
    add
    stloc $tmpIndex458
    ldloc $tmpIndex458
    stsfld uint8 _G::Ci
    br L_for_loop_1119
L_for_end_1120:
    pop
    .line 2173
    ldc.i4 97 // 'a'
    stloc $tmpEndValue459
    ldc.i4 106 // 'j'
    dup
    ldloc $tmpEndValue459
    blt L_for_end_1122
    stloc $tmpIndex460
    ldloc $tmpIndex460
    stsfld uint8 _G::Ci
L_for_loop_1121:
    .line 2173
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsflda valuetype T_array_30 _G::Csia
    ldsfld uint8 _G::Ci
    call instance int32& T_array_30::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue459
    beq L_for_end_1122
    ldc.i4.1
    sub
    stloc $tmpIndex461
    ldloc $tmpIndex461
    stsfld uint8 _G::Ci
    br L_for_loop_1121
L_for_end_1122:
    pop
    .line 2174
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b  j i h g f e d c b a"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2175
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array30:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2176
    ldc.i4 106 // 'j'
    stloc $tmpEndValue462
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue462
    bgt L_for_end_1124
    stloc $tmpIndex463
    ldloc $tmpIndex463
    stsfld uint8 _G::Ci
L_for_loop_1123:
    .line 2176
    ldsflda valuetype T_array_30 _G::Pcsia
    ldsfld uint8 _G::Ci
    call instance int32& T_array_30::ldadr(int32)
    ldsfld uint8 _G::Ci
    stobj int32
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue462
    beq L_for_end_1124
    ldc.i4.1
    add
    stloc $tmpIndex464
    ldloc $tmpIndex464
    stsfld uint8 _G::Ci
    br L_for_loop_1123
L_for_end_1124:
    pop
    .line 2177
    ldc.i4 97 // 'a'
    stloc $tmpEndValue465
    ldc.i4 106 // 'j'
    dup
    ldloc $tmpEndValue465
    blt L_for_end_1126
    stloc $tmpIndex466
    ldloc $tmpIndex466
    stsfld uint8 _G::Ci
L_for_loop_1125:
    .line 2177
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsflda valuetype T_array_30 _G::Pcsia
    ldsfld uint8 _G::Ci
    call instance int32& T_array_30::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue465
    beq L_for_end_1126
    ldc.i4.1
    sub
    stloc $tmpIndex467
    ldloc $tmpIndex467
    stsfld uint8 _G::Ci
    br L_for_loop_1125
L_for_end_1126:
    pop
    .line 2178
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b  j i h g f e d c b a"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2179
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array31:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2180
    ldc.i4 9 // ten 
    stloc $tmpEndValue468
    ldc.i4 0 // one 
    dup
    ldloc $tmpEndValue468
    bgt L_for_end_1128
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex469
    ldloc $tmpIndex469
    stsfld int32 _G::Ei
L_for_loop_1127:
    .line 2180
    ldsflda valuetype T_array_39 _G::Eia
    ldsfld int32 _G::Ei
    call instance int32& T_array_39::ldadr(int32)
    ldsfld int32 _G::Ei
    stobj int32
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue468
    beq L_for_end_1128
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex470
    ldloc $tmpIndex470
    stsfld int32 _G::Ei
    br L_for_loop_1127
L_for_end_1128:
    pop
    .line 2181
    ldc.i4 0 // one 
    stloc $tmpEndValue471
    ldc.i4 9 // ten 
    dup
    ldloc $tmpEndValue471
    blt L_for_end_1130
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex472
    ldloc $tmpIndex472
    stsfld int32 _G::Ei
L_for_loop_1129:
    .line 2181
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_array_39 _G::Eia
    ldsfld int32 _G::Ei
    call instance int32& T_array_39::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue471
    beq L_for_end_1130
    ldc.i4.1
    sub
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex473
    ldloc $tmpIndex473
    stsfld int32 _G::Ei
    br L_for_loop_1129
L_for_end_1130:
    pop
    .line 2182
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b  9 8 7 6 5 4 3 2 1 0"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2183
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array32:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2184
    ldc.i4 9 // ten 
    stloc $tmpEndValue474
    ldc.i4 0 // one 
    dup
    ldloc $tmpEndValue474
    bgt L_for_end_1132
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex475
    ldloc $tmpIndex475
    stsfld int32 _G::Ei
L_for_loop_1131:
    .line 2184
    ldsflda valuetype T_array_39 _G::Peia
    ldsfld int32 _G::Ei
    call instance int32& T_array_39::ldadr(int32)
    ldsfld int32 _G::Ei
    stobj int32
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue474
    beq L_for_end_1132
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex476
    ldloc $tmpIndex476
    stsfld int32 _G::Ei
    br L_for_loop_1131
L_for_end_1132:
    pop
    .line 2185
    ldc.i4 0 // one 
    stloc $tmpEndValue477
    ldc.i4 9 // ten 
    dup
    ldloc $tmpEndValue477
    blt L_for_end_1134
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex478
    ldloc $tmpIndex478
    stsfld int32 _G::Ei
L_for_loop_1133:
    .line 2185
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_array_39 _G::Peia
    ldsfld int32 _G::Ei
    call instance int32& T_array_39::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue477
    beq L_for_end_1134
    ldc.i4.1
    sub
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex479
    ldloc $tmpIndex479
    stsfld int32 _G::Ei
    br L_for_loop_1133
L_for_end_1134:
    pop
    .line 2186
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b  9 8 7 6 5 4 3 2 1 0"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2187
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array33:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2188
    ldc.i4 5 // six 
    stloc $tmpEndValue480
    ldc.i4 1 // two 
    dup
    ldloc $tmpEndValue480
    bgt L_for_end_1136
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex481
    ldloc $tmpIndex481
    stsfld int32 _G::Ei
L_for_loop_1135:
    .line 2188
    ldsflda valuetype T_array_39 _G::Eia
    ldsfld int32 _G::Ei
    call instance int32& T_array_39::ldadr(int32)
    ldsfld int32 _G::Ei
    stobj int32
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue480
    beq L_for_end_1136
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex482
    ldloc $tmpIndex482
    stsfld int32 _G::Ei
    br L_for_loop_1135
L_for_end_1136:
    pop
    .line 2189
    ldc.i4 1 // two 
    stloc $tmpEndValue483
    ldc.i4 5 // six 
    dup
    ldloc $tmpEndValue483
    blt L_for_end_1138
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex484
    ldloc $tmpIndex484
    stsfld int32 _G::Ei
L_for_loop_1137:
    .line 2189
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_array_39 _G::Eia
    ldsfld int32 _G::Ei
    call instance int32& T_array_39::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue483
    beq L_for_end_1138
    ldc.i4.1
    sub
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex485
    ldloc $tmpIndex485
    stsfld int32 _G::Ei
    br L_for_loop_1137
L_for_end_1138:
    pop
    .line 2190
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b  5 4 3 2 1"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2191
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array34:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2192
    ldc.i4 5 // six 
    stloc $tmpEndValue486
    ldc.i4 1 // two 
    dup
    ldloc $tmpEndValue486
    bgt L_for_end_1140
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex487
    ldloc $tmpIndex487
    stsfld int32 _G::Ei
L_for_loop_1139:
    .line 2192
    ldsflda valuetype T_array_39 _G::Peia
    ldsfld int32 _G::Ei
    call instance int32& T_array_39::ldadr(int32)
    ldsfld int32 _G::Ei
    stobj int32
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue486
    beq L_for_end_1140
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex488
    ldloc $tmpIndex488
    stsfld int32 _G::Ei
    br L_for_loop_1139
L_for_end_1140:
    pop
    .line 2193
    ldc.i4 1 // two 
    stloc $tmpEndValue489
    ldc.i4 5 // six 
    dup
    ldloc $tmpEndValue489
    blt L_for_end_1142
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex490
    ldloc $tmpIndex490
    stsfld int32 _G::Ei
L_for_loop_1141:
    .line 2193
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_array_39 _G::Peia
    ldsfld int32 _G::Ei
    call instance int32& T_array_39::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue489
    beq L_for_end_1142
    ldc.i4.1
    sub
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex491
    ldloc $tmpIndex491
    stsfld int32 _G::Ei
    br L_for_loop_1141
L_for_end_1142:
    pop
    .line 2194
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b  5 4 3 2 1"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2197
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array35:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2198
    ldc.i4 0
    stsfld int32 _G::z
    .line 2199
    ldc.i4 10
    stloc $tmpEndValue492
    ldc.i4 1
    dup
    ldloc $tmpEndValue492
    bgt L_for_end_1144
    stloc $tmpIndex493
    ldloc $tmpIndex493
    stsfld int32 _G::x
L_for_loop_1143:
    .line 2200
    ldc.i4 10
    stloc $tmpEndValue494
    ldc.i4 1
    dup
    ldloc $tmpEndValue494
    bgt L_for_end_1146
    stloc $tmpIndex495
    ldloc $tmpIndex495
    stsfld int32 _G::y
L_for_loop_1145:
    .line 2200
    ldsflda valuetype T_array_37 _G::Da
    ldsfld int32 _G::y
    call instance valuetype T_arri& T_array_37::ldadr(int32)
    ldsfld int32 _G::x
    call instance int32& T_arri::ldadr(int32)
    ldsfld int32 _G::z
    stobj int32
    .line 2200
    ldsfld int32 _G::z
    ldc.i4 1
    add
    stsfld int32 _G::z
    ldsfld int32 _G::y
    dup
    ldloc $tmpEndValue494
    beq L_for_end_1146
    ldc.i4.1
    add
    stloc $tmpIndex496
    ldloc $tmpIndex496
    stsfld int32 _G::y
    br L_for_loop_1145
L_for_end_1146:
    pop
    ldsfld int32 _G::x
    dup
    ldloc $tmpEndValue492
    beq L_for_end_1144
    ldc.i4.1
    add
    stloc $tmpIndex497
    ldloc $tmpIndex497
    stsfld int32 _G::x
    br L_for_loop_1143
L_for_end_1144:
    pop
    .line 2201
    ldc.i4 10
    stloc $tmpEndValue498
    ldc.i4 1
    dup
    ldloc $tmpEndValue498
    bgt L_for_end_1148
    stloc $tmpIndex499
    ldloc $tmpIndex499
    stsfld int32 _G::x
L_for_loop_1147:
    .line 2203
    ldc.i4 10
    stloc $tmpEndValue500
    ldc.i4 1
    dup
    ldloc $tmpEndValue500
    bgt L_for_end_1150
    stloc $tmpIndex501
    ldloc $tmpIndex501
    stsfld int32 _G::y
L_for_loop_1149:
    .line 2203
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 2
    ldc.i4.0
    ldsflda valuetype T_array_37 _G::Da
    ldsfld int32 _G::x
    call instance valuetype T_arri& T_array_37::ldadr(int32)
    ldsfld int32 _G::y
    call instance int32& T_arri::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::y
    dup
    ldloc $tmpEndValue500
    beq L_for_end_1150
    ldc.i4.1
    add
    stloc $tmpIndex502
    ldloc $tmpIndex502
    stsfld int32 _G::y
    br L_for_loop_1149
L_for_end_1150:
    pop
    .line 2204
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
    ldsfld int32 _G::x
    dup
    ldloc $tmpEndValue498
    beq L_for_end_1148
    ldc.i4.1
    add
    stloc $tmpIndex503
    ldloc $tmpIndex503
    stsfld int32 _G::x
    br L_for_loop_1147
L_for_end_1148:
    pop
    .line 2206
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2207
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "0 10 20 30 40 50 60 70 80 90"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2208
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "1 11 21 31 41 51 61 71 81 91"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2209
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "2 12 22 32 42 52 62 72 82 92"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2210
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "3 13 23 33 43 53 63 73 83 93"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2211
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "4 14 24 34 44 54 64 74 84 94"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2212
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "5 15 25 35 45 55 65 75 85 95"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2213
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "6 16 26 36 46 56 66 76 86 96"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2214
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "7 17 27 37 47 57 67 77 87 97"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2215
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "8 18 28 38 48 58 68 78 88 98"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2216
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "9 19 29 39 49 59 69 79 89 99"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2217
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array36: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2218
    ldc.i4 0
    stsfld int32 _G::t
    .line 2219
    ldc.i4 2
    stloc $tmpEndValue504
    ldc.i4 1
    dup
    ldloc $tmpEndValue504
    bgt L_for_end_1152
    stloc $tmpIndex505
    ldloc $tmpIndex505
    stsfld int32 _G::i
L_for_loop_1151:
    .line 2220
    ldc.i4 2
    stloc $tmpEndValue506
    ldc.i4 1
    dup
    ldloc $tmpEndValue506
    bgt L_for_end_1154
    stloc $tmpIndex507
    ldloc $tmpIndex507
    stsfld int32 _G::x
L_for_loop_1153:
    .line 2221
    ldc.i4 2
    stloc $tmpEndValue508
    ldc.i4 1
    dup
    ldloc $tmpEndValue508
    bgt L_for_end_1156
    stloc $tmpIndex509
    ldloc $tmpIndex509
    stsfld int32 _G::y
L_for_loop_1155:
    .line 2222
    ldc.i4 2
    stloc $tmpEndValue510
    ldc.i4 1
    dup
    ldloc $tmpEndValue510
    bgt L_for_end_1158
    stloc $tmpIndex511
    ldloc $tmpIndex511
    stsfld int32 _G::z
L_for_loop_1157:
    .line 2223
    ldc.i4 2
    stloc $tmpEndValue512
    ldc.i4 1
    dup
    ldloc $tmpEndValue512
    bgt L_for_end_1160
    stloc $tmpIndex513
    ldloc $tmpIndex513
    stsfld int32 _G::q
L_for_loop_1159:
    .line 2224
    ldc.i4 2
    stloc $tmpEndValue514
    ldc.i4 1
    dup
    ldloc $tmpEndValue514
    bgt L_for_end_1162
    stloc $tmpIndex515
    ldloc $tmpIndex515
    stsfld int32 _G::n
L_for_loop_1161:
    .line 2225
    ldsflda valuetype T_arrim _G::Mdar
    ldsfld int32 _G::i
    call instance valuetype T_array_11& T_arrim::ldadr(int32)
    ldsfld int32 _G::x
    call instance valuetype T_array_12& T_array_11::ldadr(int32)
    ldsfld int32 _G::y
    call instance valuetype T_array_13& T_array_12::ldadr(int32)
    ldsfld int32 _G::z
    call instance valuetype T_array_14& T_array_13::ldadr(int32)
    ldsfld int32 _G::q
    call instance valuetype T_array_15& T_array_14::ldadr(int32)
    ldsfld int32 _G::n
    call instance int32& T_array_15::ldadr(int32)
    ldsfld int32 _G::t
    stobj int32
    .line 2225
    ldsfld int32 _G::t
    ldc.i4 1
    add
    stsfld int32 _G::t
    ldsfld int32 _G::n
    dup
    ldloc $tmpEndValue514
    beq L_for_end_1162
    ldc.i4.1
    add
    stloc $tmpIndex516
    ldloc $tmpIndex516
    stsfld int32 _G::n
    br L_for_loop_1161
L_for_end_1162:
    pop
    ldsfld int32 _G::q
    dup
    ldloc $tmpEndValue512
    beq L_for_end_1160
    ldc.i4.1
    add
    stloc $tmpIndex517
    ldloc $tmpIndex517
    stsfld int32 _G::q
    br L_for_loop_1159
L_for_end_1160:
    pop
    ldsfld int32 _G::z
    dup
    ldloc $tmpEndValue510
    beq L_for_end_1158
    ldc.i4.1
    add
    stloc $tmpIndex518
    ldloc $tmpIndex518
    stsfld int32 _G::z
    br L_for_loop_1157
L_for_end_1158:
    pop
    ldsfld int32 _G::y
    dup
    ldloc $tmpEndValue508
    beq L_for_end_1156
    ldc.i4.1
    add
    stloc $tmpIndex519
    ldloc $tmpIndex519
    stsfld int32 _G::y
    br L_for_loop_1155
L_for_end_1156:
    pop
    ldsfld int32 _G::x
    dup
    ldloc $tmpEndValue506
    beq L_for_end_1154
    ldc.i4.1
    add
    stloc $tmpIndex520
    ldloc $tmpIndex520
    stsfld int32 _G::x
    br L_for_loop_1153
L_for_end_1154:
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue504
    beq L_for_end_1152
    ldc.i4.1
    add
    stloc $tmpIndex521
    ldloc $tmpIndex521
    stsfld int32 _G::i
    br L_for_loop_1151
L_for_end_1152:
    pop
    .line 2226
    ldc.i4 1
    stloc $tmpEndValue522
    ldc.i4 2
    dup
    ldloc $tmpEndValue522
    blt L_for_end_1164
    stloc $tmpIndex523
    ldloc $tmpIndex523
    stsfld int32 _G::i
L_for_loop_1163:
    .line 2227
    ldc.i4 1
    stloc $tmpEndValue524
    ldc.i4 2
    dup
    ldloc $tmpEndValue524
    blt L_for_end_1166
    stloc $tmpIndex525
    ldloc $tmpIndex525
    stsfld int32 _G::x
L_for_loop_1165:
    .line 2228
    ldc.i4 1
    stloc $tmpEndValue526
    ldc.i4 2
    dup
    ldloc $tmpEndValue526
    blt L_for_end_1168
    stloc $tmpIndex527
    ldloc $tmpIndex527
    stsfld int32 _G::y
L_for_loop_1167:
    .line 2230
    ldc.i4 1
    stloc $tmpEndValue528
    ldc.i4 2
    dup
    ldloc $tmpEndValue528
    blt L_for_end_1170
    stloc $tmpIndex529
    ldloc $tmpIndex529
    stsfld int32 _G::z
L_for_loop_1169:
    .line 2231
    ldc.i4 1
    stloc $tmpEndValue530
    ldc.i4 2
    dup
    ldloc $tmpEndValue530
    blt L_for_end_1172
    stloc $tmpIndex531
    ldloc $tmpIndex531
    stsfld int32 _G::q
L_for_loop_1171:
    .line 2232
    ldc.i4 1
    stloc $tmpEndValue532
    ldc.i4 2
    dup
    ldloc $tmpEndValue532
    blt L_for_end_1174
    stloc $tmpIndex533
    ldloc $tmpIndex533
    stsfld int32 _G::n
L_for_loop_1173:
    .line 2232
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 2
    ldc.i4.0
    ldsflda valuetype T_arrim _G::Mdar
    ldsfld int32 _G::i
    call instance valuetype T_array_11& T_arrim::ldadr(int32)
    ldsfld int32 _G::x
    call instance valuetype T_array_12& T_array_11::ldadr(int32)
    ldsfld int32 _G::y
    call instance valuetype T_array_13& T_array_12::ldadr(int32)
    ldsfld int32 _G::z
    call instance valuetype T_array_14& T_array_13::ldadr(int32)
    ldsfld int32 _G::q
    call instance valuetype T_array_15& T_array_14::ldadr(int32)
    ldsfld int32 _G::n
    call instance int32& T_array_15::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::n
    dup
    ldloc $tmpEndValue532
    beq L_for_end_1174
    ldc.i4.1
    sub
    stloc $tmpIndex534
    ldloc $tmpIndex534
    stsfld int32 _G::n
    br L_for_loop_1173
L_for_end_1174:
    pop
    ldsfld int32 _G::q
    dup
    ldloc $tmpEndValue530
    beq L_for_end_1172
    ldc.i4.1
    sub
    stloc $tmpIndex535
    ldloc $tmpIndex535
    stsfld int32 _G::q
    br L_for_loop_1171
L_for_end_1172:
    pop
    ldsfld int32 _G::z
    dup
    ldloc $tmpEndValue528
    beq L_for_end_1170
    ldc.i4.1
    sub
    stloc $tmpIndex536
    ldloc $tmpIndex536
    stsfld int32 _G::z
    br L_for_loop_1169
L_for_end_1170:
    pop
    .line 2233
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
    ldsfld int32 _G::y
    dup
    ldloc $tmpEndValue526
    beq L_for_end_1168
    ldc.i4.1
    sub
    stloc $tmpIndex537
    ldloc $tmpIndex537
    stsfld int32 _G::y
    br L_for_loop_1167
L_for_end_1168:
    pop
    ldsfld int32 _G::x
    dup
    ldloc $tmpEndValue524
    beq L_for_end_1166
    ldc.i4.1
    sub
    stloc $tmpIndex538
    ldloc $tmpIndex538
    stsfld int32 _G::x
    br L_for_loop_1165
L_for_end_1166:
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue522
    beq L_for_end_1164
    ldc.i4.1
    sub
    stloc $tmpIndex539
    ldloc $tmpIndex539
    stsfld int32 _G::i
    br L_for_loop_1163
L_for_end_1164:
    pop
    .line 2236
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2237
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "63 62 61 60 59 58 57 56"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2238
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "55 54 53 52 51 50 49 48"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2239
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "47 46 45 44 43 42 41 40"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2240
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "39 38 37 36 35 34 33 32"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2241
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "31 30 29 28 27 26 25 24"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2242
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "23 22 21 20 19 18 17 16"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2243
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "15 14 13 12 11 10  9  8"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2244
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 7  6  5  4  3  2  1  0"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2247
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array37: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2248
    ldsfld valuetype T_string10 STRING_9    // "hello, guy"
    stsfld valuetype T_string10 _G::Pavc
    .line 2249
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld valuetype T_string10 _G::Pavc
    call string T_string10::arrayToString(valuetype T_string10)
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr " s/b hello, guy"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2250
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array38: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2251
    ldc.i4 10
    stloc $tmpEndValue540
    ldc.i4 1
    dup
    ldloc $tmpEndValue540
    bgt L_for_end_1176
    stloc $tmpIndex541
    ldloc $tmpIndex541
    stsfld int32 _G::i
L_for_loop_1175:
    .line 2251
    ldsflda valuetype T_arri _G::Avi
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 10
    add
    stobj int32
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue540
    beq L_for_end_1176
    ldc.i4.1
    add
    stloc $tmpIndex542
    ldloc $tmpIndex542
    stsfld int32 _G::i
    br L_for_loop_1175
L_for_end_1176:
    pop
    .line 2252
    ldsfld valuetype T_arri _G::Avi
    stsfld valuetype T_arri _G::Avi2
    .line 2253
    ldc.i4 1
    stloc $tmpEndValue543
    ldc.i4 10
    dup
    ldloc $tmpEndValue543
    blt L_for_end_1178
    stloc $tmpIndex544
    ldloc $tmpIndex544
    stsfld int32 _G::i
L_for_loop_1177:
    .line 2253
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_arri _G::Avi2
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue543
    beq L_for_end_1178
    ldc.i4.1
    sub
    stloc $tmpIndex545
    ldloc $tmpIndex545
    stsfld int32 _G::i
    br L_for_loop_1177
L_for_end_1178:
    pop
    .line 2254
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 20 19 18 17 16 15 14 13 12 11"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2255
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array39: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2256
    ldc.i4 0
    stsfld int32 _G::t
    .line 2257
    ldc.i4 2
    stloc $tmpEndValue546
    ldc.i4 1
    dup
    ldloc $tmpEndValue546
    bgt L_for_end_1180
    stloc $tmpIndex547
    ldloc $tmpIndex547
    stsfld int32 _G::i
L_for_loop_1179:
    .line 2258
    ldc.i4 2
    stloc $tmpEndValue548
    ldc.i4 1
    dup
    ldloc $tmpEndValue548
    bgt L_for_end_1182
    stloc $tmpIndex549
    ldloc $tmpIndex549
    stsfld int32 _G::x
L_for_loop_1181:
    .line 2259
    ldc.i4 2
    stloc $tmpEndValue550
    ldc.i4 1
    dup
    ldloc $tmpEndValue550
    bgt L_for_end_1184
    stloc $tmpIndex551
    ldloc $tmpIndex551
    stsfld int32 _G::y
L_for_loop_1183:
    .line 2260
    ldc.i4 2
    stloc $tmpEndValue552
    ldc.i4 1
    dup
    ldloc $tmpEndValue552
    bgt L_for_end_1186
    stloc $tmpIndex553
    ldloc $tmpIndex553
    stsfld int32 _G::z
L_for_loop_1185:
    .line 2261
    ldc.i4 2
    stloc $tmpEndValue554
    ldc.i4 1
    dup
    ldloc $tmpEndValue554
    bgt L_for_end_1188
    stloc $tmpIndex555
    ldloc $tmpIndex555
    stsfld int32 _G::q
L_for_loop_1187:
    .line 2262
    ldc.i4 2
    stloc $tmpEndValue556
    ldc.i4 1
    dup
    ldloc $tmpEndValue556
    bgt L_for_end_1190
    stloc $tmpIndex557
    ldloc $tmpIndex557
    stsfld int32 _G::n
L_for_loop_1189:
    .line 2263
    ldsflda valuetype T_arrim _G::Mdar
    ldsfld int32 _G::i
    call instance valuetype T_array_11& T_arrim::ldadr(int32)
    ldsfld int32 _G::x
    call instance valuetype T_array_12& T_array_11::ldadr(int32)
    ldsfld int32 _G::y
    call instance valuetype T_array_13& T_array_12::ldadr(int32)
    ldsfld int32 _G::z
    call instance valuetype T_array_14& T_array_13::ldadr(int32)
    ldsfld int32 _G::q
    call instance valuetype T_array_15& T_array_14::ldadr(int32)
    ldsfld int32 _G::n
    call instance int32& T_array_15::ldadr(int32)
    ldsfld int32 _G::t
    stobj int32
    .line 2263
    ldsfld int32 _G::t
    ldc.i4 1
    add
    stsfld int32 _G::t
    ldsfld int32 _G::n
    dup
    ldloc $tmpEndValue556
    beq L_for_end_1190
    ldc.i4.1
    add
    stloc $tmpIndex558
    ldloc $tmpIndex558
    stsfld int32 _G::n
    br L_for_loop_1189
L_for_end_1190:
    pop
    ldsfld int32 _G::q
    dup
    ldloc $tmpEndValue554
    beq L_for_end_1188
    ldc.i4.1
    add
    stloc $tmpIndex559
    ldloc $tmpIndex559
    stsfld int32 _G::q
    br L_for_loop_1187
L_for_end_1188:
    pop
    ldsfld int32 _G::z
    dup
    ldloc $tmpEndValue552
    beq L_for_end_1186
    ldc.i4.1
    add
    stloc $tmpIndex560
    ldloc $tmpIndex560
    stsfld int32 _G::z
    br L_for_loop_1185
L_for_end_1186:
    pop
    ldsfld int32 _G::y
    dup
    ldloc $tmpEndValue550
    beq L_for_end_1184
    ldc.i4.1
    add
    stloc $tmpIndex561
    ldloc $tmpIndex561
    stsfld int32 _G::y
    br L_for_loop_1183
L_for_end_1184:
    pop
    ldsfld int32 _G::x
    dup
    ldloc $tmpEndValue548
    beq L_for_end_1182
    ldc.i4.1
    add
    stloc $tmpIndex562
    ldloc $tmpIndex562
    stsfld int32 _G::x
    br L_for_loop_1181
L_for_end_1182:
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue546
    beq L_for_end_1180
    ldc.i4.1
    add
    stloc $tmpIndex563
    ldloc $tmpIndex563
    stsfld int32 _G::i
    br L_for_loop_1179
L_for_end_1180:
    pop
    .line 2264
    ldsfld valuetype T_arrim _G::Mdar
    stsfld valuetype T_arrim _G::Mdar2
    .line 2265
    ldc.i4 1
    stloc $tmpEndValue564
    ldc.i4 2
    dup
    ldloc $tmpEndValue564
    blt L_for_end_1192
    stloc $tmpIndex565
    ldloc $tmpIndex565
    stsfld int32 _G::i
L_for_loop_1191:
    .line 2266
    ldc.i4 1
    stloc $tmpEndValue566
    ldc.i4 2
    dup
    ldloc $tmpEndValue566
    blt L_for_end_1194
    stloc $tmpIndex567
    ldloc $tmpIndex567
    stsfld int32 _G::x
L_for_loop_1193:
    .line 2267
    ldc.i4 1
    stloc $tmpEndValue568
    ldc.i4 2
    dup
    ldloc $tmpEndValue568
    blt L_for_end_1196
    stloc $tmpIndex569
    ldloc $tmpIndex569
    stsfld int32 _G::y
L_for_loop_1195:
    .line 2269
    ldc.i4 1
    stloc $tmpEndValue570
    ldc.i4 2
    dup
    ldloc $tmpEndValue570
    blt L_for_end_1198
    stloc $tmpIndex571
    ldloc $tmpIndex571
    stsfld int32 _G::z
L_for_loop_1197:
    .line 2270
    ldc.i4 1
    stloc $tmpEndValue572
    ldc.i4 2
    dup
    ldloc $tmpEndValue572
    blt L_for_end_1200
    stloc $tmpIndex573
    ldloc $tmpIndex573
    stsfld int32 _G::q
L_for_loop_1199:
    .line 2271
    ldc.i4 1
    stloc $tmpEndValue574
    ldc.i4 2
    dup
    ldloc $tmpEndValue574
    blt L_for_end_1202
    stloc $tmpIndex575
    ldloc $tmpIndex575
    stsfld int32 _G::n
L_for_loop_1201:
    .line 2271
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 2
    ldc.i4.0
    ldsflda valuetype T_arrim _G::Mdar2
    ldsfld int32 _G::i
    call instance valuetype T_array_11& T_arrim::ldadr(int32)
    ldsfld int32 _G::x
    call instance valuetype T_array_12& T_array_11::ldadr(int32)
    ldsfld int32 _G::y
    call instance valuetype T_array_13& T_array_12::ldadr(int32)
    ldsfld int32 _G::z
    call instance valuetype T_array_14& T_array_13::ldadr(int32)
    ldsfld int32 _G::q
    call instance valuetype T_array_15& T_array_14::ldadr(int32)
    ldsfld int32 _G::n
    call instance int32& T_array_15::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::n
    dup
    ldloc $tmpEndValue574
    beq L_for_end_1202
    ldc.i4.1
    sub
    stloc $tmpIndex576
    ldloc $tmpIndex576
    stsfld int32 _G::n
    br L_for_loop_1201
L_for_end_1202:
    pop
    ldsfld int32 _G::q
    dup
    ldloc $tmpEndValue572
    beq L_for_end_1200
    ldc.i4.1
    sub
    stloc $tmpIndex577
    ldloc $tmpIndex577
    stsfld int32 _G::q
    br L_for_loop_1199
L_for_end_1200:
    pop
    ldsfld int32 _G::z
    dup
    ldloc $tmpEndValue570
    beq L_for_end_1198
    ldc.i4.1
    sub
    stloc $tmpIndex578
    ldloc $tmpIndex578
    stsfld int32 _G::z
    br L_for_loop_1197
L_for_end_1198:
    pop
    .line 2272
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
    ldsfld int32 _G::y
    dup
    ldloc $tmpEndValue568
    beq L_for_end_1196
    ldc.i4.1
    sub
    stloc $tmpIndex579
    ldloc $tmpIndex579
    stsfld int32 _G::y
    br L_for_loop_1195
L_for_end_1196:
    pop
    ldsfld int32 _G::x
    dup
    ldloc $tmpEndValue566
    beq L_for_end_1194
    ldc.i4.1
    sub
    stloc $tmpIndex580
    ldloc $tmpIndex580
    stsfld int32 _G::x
    br L_for_loop_1193
L_for_end_1194:
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue564
    beq L_for_end_1192
    ldc.i4.1
    sub
    stloc $tmpIndex581
    ldloc $tmpIndex581
    stsfld int32 _G::i
    br L_for_loop_1191
L_for_end_1192:
    pop
    .line 2275
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2276
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "63 62 61 60 59 58 57 56"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2277
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "55 54 53 52 51 50 49 48"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2278
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "47 46 45 44 43 42 41 40"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2279
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "39 38 37 36 35 34 33 32"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2280
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "31 30 29 28 27 26 25 24"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2281
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "23 22 21 20 19 18 17 16"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2282
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "15 14 13 12 11 10  9  8"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2283
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 7  6  5  4  3  2  1  0"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2286
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array40: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2287
    ldc.i4 10
    stloc $tmpEndValue582
    ldc.i4 1
    dup
    ldloc $tmpEndValue582
    bgt L_for_end_1204
    stloc $tmpIndex583
    ldloc $tmpIndex583
    stsfld int32 _G::i
L_for_loop_1203:
    .line 2287
    ldsflda valuetype T_arri _G::Pavi
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 10
    add
    stobj int32
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue582
    beq L_for_end_1204
    ldc.i4.1
    add
    stloc $tmpIndex584
    ldloc $tmpIndex584
    stsfld int32 _G::i
    br L_for_loop_1203
L_for_end_1204:
    pop
    .line 2288
    ldc.i4 1
    stloc $tmpDstIndex586
    ldc.i4 1
    stloc $tmpSrcIndex585
L_unpack_loop_1205:
    .line 2288
    ldsflda valuetype T_arri _G::Avi
    ldloc $tmpDstIndex586
    call instance int32& T_arri::ldadr(int32)
    ldsflda valuetype T_arri _G::Pavi
    ldloc $tmpSrcIndex585
    call instance int32& T_arri::ldadr(int32)
    ldobj int32
    stobj int32
    ldloc $tmpDstIndex586
    ldc.i4.1
    add
    stloc $tmpDstIndex586
    ldloc $tmpSrcIndex585
    ldc.i4.1
    add
    dup
    stloc $tmpSrcIndex585
    ldc.i4 10
    ble L_unpack_loop_1205
    .line 2289
    ldc.i4 1
    stloc $tmpEndValue587
    ldc.i4 10
    dup
    ldloc $tmpEndValue587
    blt L_for_end_1207
    stloc $tmpIndex588
    ldloc $tmpIndex588
    stsfld int32 _G::i
L_for_loop_1206:
    .line 2289
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_arri _G::Avi
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue587
    beq L_for_end_1207
    ldc.i4.1
    sub
    stloc $tmpIndex589
    ldloc $tmpIndex589
    stsfld int32 _G::i
    br L_for_loop_1206
L_for_end_1207:
    pop
    .line 2290
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 20 19 18 17 16 15 14 13 12 11"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2291
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array41: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2292
    ldc.i4 10
    stloc $tmpEndValue590
    ldc.i4 1
    dup
    ldloc $tmpEndValue590
    bgt L_for_end_1209
    stloc $tmpIndex591
    ldloc $tmpIndex591
    stsfld int32 _G::i
L_for_loop_1208:
    .line 2292
    ldsflda valuetype T_arri _G::Avi
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 20
    add
    stobj int32
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue590
    beq L_for_end_1209
    ldc.i4.1
    add
    stloc $tmpIndex592
    ldloc $tmpIndex592
    stsfld int32 _G::i
    br L_for_loop_1208
L_for_end_1209:
    pop
    .line 2293
    ldc.i4 1
    stloc $tmpSrcIndex593
    ldc.i4 1
    stloc $tmpDstIndex594
L_pack_loop_1210:
    .line 2293
    ldsflda valuetype T_arri _G::Pavi
    ldloc $tmpDstIndex594
    call instance int32& T_arri::ldadr(int32)
    ldsflda valuetype T_arri _G::Avi
    ldloc $tmpSrcIndex593
    call instance int32& T_arri::ldadr(int32)
    ldobj int32
    stobj int32
    ldloc $tmpSrcIndex593
    ldc.i4.1
    add
    stloc $tmpSrcIndex593
    ldloc $tmpDstIndex594
    ldc.i4.1
    add
    dup
    stloc $tmpDstIndex594
    ldc.i4 10
    ble L_pack_loop_1210
    .line 2294
    ldc.i4 1
    stloc $tmpEndValue595
    ldc.i4 10
    dup
    ldloc $tmpEndValue595
    blt L_for_end_1212
    stloc $tmpIndex596
    ldloc $tmpIndex596
    stsfld int32 _G::i
L_for_loop_1211:
    .line 2294
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_arri _G::Pavi
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue595
    beq L_for_end_1212
    ldc.i4.1
    sub
    stloc $tmpIndex597
    ldloc $tmpIndex597
    stsfld int32 _G::i
    br L_for_loop_1211
L_for_end_1212:
    pop
    .line 2295
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 30 29 28 27 26 25 24 23 22 21"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2296
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array42: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2297
    ldc.i4 10
    stloc $tmpEndValue598
    ldc.i4 1
    dup
    ldloc $tmpEndValue598
    bgt L_for_end_1214
    stloc $tmpIndex599
    ldloc $tmpIndex599
    stsfld int32 _G::i
L_for_loop_1213:
    .line 2297
    ldsflda valuetype T_arri _G::Pavi
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 30
    add
    stobj int32
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue598
    beq L_for_end_1214
    ldc.i4.1
    add
    stloc $tmpIndex600
    ldloc $tmpIndex600
    stsfld int32 _G::i
    br L_for_loop_1213
L_for_end_1214:
    pop
    .line 2298
    ldc.i4 103 // 'g'
    stloc $tmpDstIndex602
    ldc.i4 1
    stloc $tmpSrcIndex601
L_unpack_loop_1215:
    .line 2298
    ldsflda valuetype T_array_31 _G::Cia
    ldloc $tmpDstIndex602
    call instance int32& T_array_31::ldadr(int32)
    ldsflda valuetype T_arri _G::Pavi
    ldloc $tmpSrcIndex601
    call instance int32& T_arri::ldadr(int32)
    ldobj int32
    stobj int32
    ldloc $tmpDstIndex602
    ldc.i4.1
    add
    stloc $tmpDstIndex602
    ldloc $tmpSrcIndex601
    ldc.i4.1
    add
    dup
    stloc $tmpSrcIndex601
    ldc.i4 10
    ble L_unpack_loop_1215
    .line 2299
    ldc.i4 103 // 'g'
    stloc $tmpEndValue603
    ldc.i4 112 // 'p'
    dup
    ldloc $tmpEndValue603
    blt L_for_end_1217
    stloc $tmpIndex604
    ldloc $tmpIndex604
    stsfld uint8 _G::Ci
L_for_loop_1216:
    .line 2299
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_array_31 _G::Cia
    ldsfld uint8 _G::Ci
    call instance int32& T_array_31::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue603
    beq L_for_end_1217
    ldc.i4.1
    sub
    stloc $tmpIndex605
    ldloc $tmpIndex605
    stsfld uint8 _G::Ci
    br L_for_loop_1216
L_for_end_1217:
    pop
    .line 2300
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 40 39 38 37 36 35 34 33 32 31"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2301
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Array43: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2302
    ldc.i4 1
    stsfld int32 _G::x
    .line 2303
    ldc.i4 122 // 'z'
    stloc $tmpEndValue606
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue606
    bgt L_for_end_1219
    stloc $tmpIndex607
    ldloc $tmpIndex607
    stsfld uint8 _G::Ci
L_for_loop_1218:
    .line 2303
    ldsflda valuetype T_array_31 _G::Cia
    ldsfld uint8 _G::Ci
    call instance int32& T_array_31::ldadr(int32)
    ldsfld int32 _G::x
    stobj int32
    .line 2303
    ldsfld int32 _G::x
    ldc.i4 1
    add
    stsfld int32 _G::x
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue606
    beq L_for_end_1219
    ldc.i4.1
    add
    stloc $tmpIndex608
    ldloc $tmpIndex608
    stsfld uint8 _G::Ci
    br L_for_loop_1218
L_for_end_1219:
    pop
    .line 2304
    ldc.i4 109 // 'm'
    stloc $tmpSrcIndex609
    ldc.i4 1
    stloc $tmpDstIndex610
L_pack_loop_1220:
    .line 2304
    ldsflda valuetype T_arri _G::Pavi
    ldloc $tmpDstIndex610
    call instance int32& T_arri::ldadr(int32)
    ldsflda valuetype T_array_31 _G::Cia
    ldloc $tmpSrcIndex609
    call instance int32& T_array_31::ldadr(int32)
    ldobj int32
    stobj int32
    ldloc $tmpSrcIndex609
    ldc.i4.1
    add
    stloc $tmpSrcIndex609
    ldloc $tmpDstIndex610
    ldc.i4.1
    add
    dup
    stloc $tmpDstIndex610
    ldc.i4 10
    ble L_pack_loop_1220
    .line 2305
    ldc.i4 1
    stloc $tmpEndValue611
    ldc.i4 10
    dup
    ldloc $tmpEndValue611
    blt L_for_end_1222
    stloc $tmpIndex612
    ldloc $tmpIndex612
    stsfld int32 _G::i
L_for_loop_1221:
    .line 2305
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_arri _G::Pavi
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue611
    beq L_for_end_1222
    ldc.i4.1
    sub
    stloc $tmpIndex613
    ldloc $tmpIndex613
    stsfld int32 _G::i
    br L_for_loop_1221
L_for_end_1222:
    pop
    .line 2306
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 22 21 20 19 18 17 16 15 14 13"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2314
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2315
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "******************* records ******************************"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2316
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2319
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record1:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2320
    ldsflda valuetype T_rec _G::Arec
    ldc.i4 64
    stfld int32 T_rec::i
    .line 2321
    ldsflda valuetype T_rec _G::Arec
    ldc.i4 0 // (false)
    stfld bool T_rec::b
    .line 2322
    ldsflda valuetype T_rec _G::Arec
    ldc.i4 106 // 'j'
    stfld uint8 T_rec::c
    .line 2323
    ldsflda valuetype T_rec _G::Arec
    ldc.i4 1 // two 
    stfld int32 T_rec::e
    .line 2324
    ldsflda valuetype T_rec _G::Arec
    ldc.i4 3 // four 
    dup
    ldc.i4 2
    ldc.i4 5
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_rec::Es
    .line 2325
    ldsflda valuetype T_rec _G::Arec
    ldc.i4 12
    dup
    ldc.i4 10
    ldc.i4 20
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_rec::s
    .line 2326
    ldsflda valuetype T_rec _G::Arec
    ldc.r8 4.54512e-29
    stfld float64 T_rec::r
    .line 2327
    ldsflda valuetype T_rec _G::Arec
    ldsfld valuetype T_string10 STRING_10    // "what ? who"
    stfld valuetype T_string10 T_rec::St
    .line 2328
    ldc.i4 10
    stloc $tmpEndValue614
    ldc.i4 1
    dup
    ldloc $tmpEndValue614
    bgt L_for_end_1224
    stloc $tmpIndex615
    ldloc $tmpIndex615
    stsfld int32 _G::i
L_for_loop_1223:
    .line 2328
    ldsflda valuetype T_rec _G::Arec
    ldflda valuetype T_arri T_rec::a
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 20
    add
    stobj int32
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue614
    beq L_for_end_1224
    ldc.i4.1
    add
    stloc $tmpIndex616
    ldloc $tmpIndex616
    stsfld int32 _G::i
    br L_for_loop_1223
L_for_end_1224:
    pop
    .line 2329
    ldsflda valuetype T_rec _G::Arec
    ldflda valuetype T_recs T_rec::Rc
    ldc.i4 2324
    stfld int32 T_recs::a
    .line 2330
    ldsflda valuetype T_rec _G::Arec
    ldflda valuetype T_recs T_rec::Rc
    ldc.i4 121 // 'y'
    stfld uint8 T_recs::b
    .line 2331
    ldsflda valuetype T_rec _G::Arec
    ldloc $tmpSetLiteral617
    stfld valuetype T_cset T_rec::Stc
    .line 2332
    .line 2332
    ldsflda valuetype T_rec _G::Arec
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stfld void* T_rec::p
    .line 2333
    ldsflda valuetype T_rec _G::Arec
    ldfld void* T_rec::p
    ldc.i4 8454
    stobj int32
    .line 2334
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_rec _G::Arec
    ldfld int32 T_rec::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_rec _G::Arec
    ldfld bool T_rec::b
    brtrue L_bool_to_string_true_1225
    ldstr "false"
    br L_bool_to_string_false_1226
L_bool_to_string_true_1225:
    ldstr "true"
L_bool_to_string_false_1226:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_rec _G::Arec
    ldfld uint8 T_rec::c
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_rec _G::Arec
    ldfld int32 T_rec::e
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_rec _G::Arec
    ldfld int8 T_rec::Es
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_rec _G::Arec
    ldfld int8 T_rec::s
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsflda valuetype T_rec _G::Arec
    ldfld float64 T_rec::r
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsflda valuetype T_rec _G::Arec
    ldfld valuetype T_string10 T_rec::St
    call string T_string10::arrayToString(valuetype T_string10)
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2337
    ldc.i4 10
    stloc $tmpEndValue618
    ldc.i4 1
    dup
    ldloc $tmpEndValue618
    bgt L_for_end_1228
    stloc $tmpIndex619
    ldloc $tmpIndex619
    stsfld int32 _G::i
L_for_loop_1227:
    .line 2337
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_rec _G::Arec
    ldflda valuetype T_arri T_rec::a
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue618
    beq L_for_end_1228
    ldc.i4.1
    add
    stloc $tmpIndex620
    ldloc $tmpIndex620
    stsfld int32 _G::i
    br L_for_loop_1227
L_for_end_1228:
    pop
    .line 2337
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2338
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_rec _G::Arec
    ldflda valuetype T_recs T_rec::Rc
    ldfld int32 T_recs::a
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_rec _G::Arec
    ldflda valuetype T_recs T_rec::Rc
    ldfld uint8 T_recs::b
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2339
    ldc.i4 106 // 'j'
    stloc $tmpEndValue621
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue621
    bgt L_for_end_1230
    stloc $tmpIndex622
    ldloc $tmpIndex622
    stsfld uint8 _G::Ci
L_for_loop_1229:
    .line 2339
    ldsflda valuetype T_rec _G::Arec
    ldfld valuetype T_cset T_rec::Stc
    ldsfld uint8 _G::Ci
    call bool _SetContains(valuetype T_cset s, int32 val)
    brfalse L_else_1231
    .line 2339
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ci
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_1232
L_else_1231:
    .line 2339
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 95 // '_'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_1232:
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue621
    beq L_for_end_1230
    ldc.i4.1
    add
    stloc $tmpIndex623
    ldloc $tmpIndex623
    stsfld uint8 _G::Ci
    br L_for_loop_1229
L_for_end_1230:
    pop
    .line 2340
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2341
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_rec _G::Arec
    ldfld void* T_rec::p
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2342
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2343
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "64 false j 1 3 12  4.54512000e-29 what ? who"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2344
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "21 22 23 24 25 26 27 28 29 30"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2345
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "2324 y"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2346
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "_bcde___i_"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2347
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "8454"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2348
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record2:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2349
    ldsflda valuetype T_prec _G::Parec
    ldc.i4 64
    stfld int32 T_prec::i
    .line 2350
    ldsflda valuetype T_prec _G::Parec
    ldc.i4 0 // (false)
    stfld bool T_prec::b
    .line 2351
    ldsflda valuetype T_prec _G::Parec
    ldc.i4 106 // 'j'
    stfld uint8 T_prec::c
    .line 2352
    ldsflda valuetype T_prec _G::Parec
    ldc.i4 1 // two 
    stfld int32 T_prec::e
    .line 2353
    ldsflda valuetype T_prec _G::Parec
    ldc.i4 3 // four 
    dup
    ldc.i4 2
    ldc.i4 5
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_prec::Es
    .line 2354
    ldsflda valuetype T_prec _G::Parec
    ldc.i4 12
    dup
    ldc.i4 10
    ldc.i4 20
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_prec::s
    .line 2355
    ldsflda valuetype T_prec _G::Parec
    ldc.r8 4.54512e-29
    stfld float64 T_prec::r
    .line 2356
    ldsflda valuetype T_prec _G::Parec
    ldsfld valuetype T_string10 STRING_10    // "what ? who"
    stfld valuetype T_string10 T_prec::St
    .line 2357
    ldc.i4 10
    stloc $tmpEndValue624
    ldc.i4 1
    dup
    ldloc $tmpEndValue624
    bgt L_for_end_1234
    stloc $tmpIndex625
    ldloc $tmpIndex625
    stsfld int32 _G::i
L_for_loop_1233:
    .line 2357
    ldsflda valuetype T_prec _G::Parec
    ldflda valuetype T_arri T_prec::a
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 20
    add
    stobj int32
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue624
    beq L_for_end_1234
    ldc.i4.1
    add
    stloc $tmpIndex626
    ldloc $tmpIndex626
    stsfld int32 _G::i
    br L_for_loop_1233
L_for_end_1234:
    pop
    .line 2358
    ldsflda valuetype T_prec _G::Parec
    ldflda valuetype T_recs T_prec::Rc
    ldc.i4 2324
    stfld int32 T_recs::a
    .line 2359
    ldsflda valuetype T_prec _G::Parec
    ldflda valuetype T_recs T_prec::Rc
    ldc.i4 121 // 'y'
    stfld uint8 T_recs::b
    .line 2360
    ldsflda valuetype T_prec _G::Parec
    ldloc $tmpSetLiteral627
    stfld valuetype T_cset T_prec::Stc
    .line 2361
    .line 2361
    ldsflda valuetype T_prec _G::Parec
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stfld void* T_prec::p
    .line 2362
    ldsflda valuetype T_prec _G::Parec
    ldfld void* T_prec::p
    ldc.i4 8454
    stobj int32
    .line 2363
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_prec _G::Parec
    ldfld int32 T_prec::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_prec _G::Parec
    ldfld bool T_prec::b
    brtrue L_bool_to_string_true_1235
    ldstr "false"
    br L_bool_to_string_false_1236
L_bool_to_string_true_1235:
    ldstr "true"
L_bool_to_string_false_1236:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_prec _G::Parec
    ldfld uint8 T_prec::c
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_prec _G::Parec
    ldfld int32 T_prec::e
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_prec _G::Parec
    ldfld int8 T_prec::Es
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_prec _G::Parec
    ldfld int8 T_prec::s
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 15
    ldc.i4.0
    ldsflda valuetype T_prec _G::Parec
    ldfld float64 T_prec::r
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsflda valuetype T_prec _G::Parec
    ldfld valuetype T_string10 T_prec::St
    call string T_string10::arrayToString(valuetype T_string10)
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2366
    ldc.i4 10
    stloc $tmpEndValue628
    ldc.i4 1
    dup
    ldloc $tmpEndValue628
    bgt L_for_end_1238
    stloc $tmpIndex629
    ldloc $tmpIndex629
    stsfld int32 _G::i
L_for_loop_1237:
    .line 2366
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_prec _G::Parec
    ldflda valuetype T_arri T_prec::a
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue628
    beq L_for_end_1238
    ldc.i4.1
    add
    stloc $tmpIndex630
    ldloc $tmpIndex630
    stsfld int32 _G::i
    br L_for_loop_1237
L_for_end_1238:
    pop
    .line 2366
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2367
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_prec _G::Parec
    ldflda valuetype T_recs T_prec::Rc
    ldfld int32 T_recs::a
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_prec _G::Parec
    ldflda valuetype T_recs T_prec::Rc
    ldfld uint8 T_recs::b
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2368
    ldc.i4 106 // 'j'
    stloc $tmpEndValue631
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue631
    bgt L_for_end_1240
    stloc $tmpIndex632
    ldloc $tmpIndex632
    stsfld uint8 _G::Ci
L_for_loop_1239:
    .line 2368
    ldsflda valuetype T_prec _G::Parec
    ldfld valuetype T_cset T_prec::Stc
    ldsfld uint8 _G::Ci
    call bool _SetContains(valuetype T_cset s, int32 val)
    brfalse L_else_1241
    .line 2368
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ci
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_1242
L_else_1241:
    .line 2368
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 95 // '_'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_1242:
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue631
    beq L_for_end_1240
    ldc.i4.1
    add
    stloc $tmpIndex633
    ldloc $tmpIndex633
    stsfld uint8 _G::Ci
    br L_for_loop_1239
L_for_end_1240:
    pop
    .line 2369
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2370
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_prec _G::Parec
    ldfld void* T_prec::p
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2371
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2372
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "64 false j 1 3 12  4.54512000e-29 what ? who"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2373
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "21 22 23 24 25 26 27 28 29 30"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2374
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "2324 y"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2375
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "_bcde___i_"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2376
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "8454"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2379
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record3:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2380
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 873
    stfld int32 T_record_134::i
    .line 2381
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 0 // vti 
    stfld int32 T_record_134::Vt
    .line 2382
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 427
    stfld int32 T_record_134::a
    .line 2383
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 235
    stfld int32 T_record_134::Vdi
    .line 2384
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::Vt
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::Vdi
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::a
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    .line 2385
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 873 0 235 427"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2386
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record4:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2387
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 873
    stfld int32 T_record_134::i
    .line 2388
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 1 // vtb 
    stfld int32 T_record_134::Vt
    .line 2389
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 427
    stfld int32 T_record_134::b
    .line 2390
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 1 // (true)
    stfld bool T_record_134::Vdb
    .line 2391
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::Vt
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld bool T_record_134::Vdb
    brtrue L_bool_to_string_true_1243
    ldstr "false"
    br L_bool_to_string_false_1244
L_bool_to_string_true_1243:
    ldstr "true"
L_bool_to_string_false_1244:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::b
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    .line 2392
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 873 1  true 427"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2393
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record5:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2394
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 873
    stfld int32 T_record_134::i
    .line 2395
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 2 // vtc 
    stfld int32 T_record_134::Vt
    .line 2396
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 427
    stfld int32 T_record_134::c
    .line 2397
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 102 // 'f'
    stfld uint8 T_record_134::Vdc
    .line 2398
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::Vt
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsflda valuetype T_record_134 _G::Vra
    ldfld uint8 T_record_134::Vdc
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::c
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    .line 2399
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 873 2 f 427"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2400
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record6:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2401
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 873
    stfld int32 T_record_134::i
    .line 2402
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 3 // vte 
    stfld int32 T_record_134::Vt
    .line 2403
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 427
    stfld int32 T_record_134::d
    .line 2404
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 8 // nine 
    stfld int32 T_record_134::Vde
    .line 2405
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::Vt
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::Vde
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::d
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    .line 2406
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 873 3 8 427"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2407
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record7:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2408
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 873
    stfld int32 T_record_134::i
    .line 2409
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 4 // vtes 
    stfld int32 T_record_134::Vt
    .line 2410
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 427
    stfld int32 T_record_134::e
    .line 2411
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 3 // four 
    dup
    ldc.i4 2
    ldc.i4 5
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_record_134::Vdes
    .line 2412
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::Vt
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int8 T_record_134::Vdes
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::e
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    .line 2413
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 873 4 3 427"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2414
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record8:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2415
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 873
    stfld int32 T_record_134::i
    .line 2416
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 5 // vts 
    stfld int32 T_record_134::Vt
    .line 2417
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 427
    stfld int32 T_record_134::f
    .line 2418
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 12
    dup
    ldc.i4 10
    ldc.i4 20
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_record_134::Vds
    .line 2419
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::Vt
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int8 T_record_134::Vds
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::f
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    .line 2420
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 873 5 12 427"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2421
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record9:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2422
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 873
    stfld int32 T_record_134::i
    .line 2423
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 6 // vtr 
    stfld int32 T_record_134::Vt
    .line 2424
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 427
    stfld int32 T_record_134::g
    .line 2425
    ldsflda valuetype T_record_134 _G::Vra
    ldc.r8 8734.84
    stfld float64 T_record_134::Vdr
    .line 2426
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::Vt
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4 4
    ldsflda valuetype T_record_134 _G::Vra
    ldfld float64 T_record_134::Vdr
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::g
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    .line 2427
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 873 6 8734.8389 427"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2428
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record10:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2429
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 873
    stfld int32 T_record_134::i
    .line 2430
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 7 // vtst 
    stfld int32 T_record_134::Vt
    .line 2431
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 427
    stfld int32 T_record_134::h
    .line 2432
    ldsflda valuetype T_record_134 _G::Vra
    ldsfld valuetype T_string10 STRING_11    // "this one ?"
    stfld valuetype T_string10 T_record_134::Vdst
    .line 2433
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::Vt
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsflda valuetype T_record_134 _G::Vra
    ldfld valuetype T_string10 T_record_134::Vdst
    call string T_string10::arrayToString(valuetype T_string10)
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::h
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    .line 2434
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 873 7 this one ? 427"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2435
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record11:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2436
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 873
    stfld int32 T_record_134::i
    .line 2437
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 8 // vta 
    stfld int32 T_record_134::Vt
    .line 2438
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 427
    stfld int32 T_record_134::j
    .line 2439
    ldc.i4 10
    stloc $tmpEndValue634
    ldc.i4 1
    dup
    ldloc $tmpEndValue634
    bgt L_for_end_1246
    stloc $tmpIndex635
    ldloc $tmpIndex635
    stsfld int32 _G::i
L_for_loop_1245:
    .line 2439
    ldsflda valuetype T_record_134 _G::Vra
    ldflda valuetype T_arri T_record_134::Vda
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 10
    add
    stobj int32
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue634
    beq L_for_end_1246
    ldc.i4.1
    add
    stloc $tmpIndex636
    ldloc $tmpIndex636
    stsfld int32 _G::i
    br L_for_loop_1245
L_for_end_1246:
    pop
    .line 2440
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::Vt
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 2441
    ldc.i4 1
    stloc $tmpEndValue637
    ldc.i4 10
    dup
    ldloc $tmpEndValue637
    blt L_for_end_1248
    stloc $tmpIndex638
    ldloc $tmpIndex638
    stsfld int32 _G::i
L_for_loop_1247:
    .line 2441
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldflda valuetype T_arri T_record_134::Vda
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue637
    beq L_for_end_1248
    ldc.i4.1
    sub
    stloc $tmpIndex639
    ldloc $tmpIndex639
    stsfld int32 _G::i
    br L_for_loop_1247
L_for_end_1248:
    pop
    .line 2442
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::j
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2443
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "      s/b:  873 8 20 19 18 17 16 15 14 13 12 11 427"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2444
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record12:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2445
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 873
    stfld int32 T_record_134::i
    .line 2446
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 9 // vtrc 
    stfld int32 T_record_134::Vt
    .line 2447
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 427
    stfld int32 T_record_134::k
    .line 2448
    ldsflda valuetype T_record_134 _G::Vra
    ldflda valuetype T_recs T_record_134::Vdrc
    ldc.i4 2387
    stfld int32 T_recs::a
    .line 2449
    ldsflda valuetype T_record_134 _G::Vra
    ldflda valuetype T_recs T_record_134::Vdrc
    ldc.i4 116 // 't'
    stfld uint8 T_recs::b
    .line 2450
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::Vt
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldflda valuetype T_recs T_record_134::Vdrc
    ldfld int32 T_recs::a
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsflda valuetype T_record_134 _G::Vra
    ldflda valuetype T_recs T_record_134::Vdrc
    ldfld uint8 T_recs::b
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::k
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    .line 2452
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b:  873 9 2387 t 427"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2453
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record13:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2454
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 873
    stfld int32 T_record_134::i
    .line 2455
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 10 // vtstc 
    stfld int32 T_record_134::Vt
    .line 2456
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 427
    stfld int32 T_record_134::l
    .line 2457
    ldsflda valuetype T_record_134 _G::Vra
    ldloc $tmpSetLiteral640
    stfld valuetype T_cset T_record_134::Vdstc
    .line 2458
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::Vt
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 2459
    ldc.i4 97 // 'a'
    stloc $tmpEndValue641
    ldc.i4 106 // 'j'
    dup
    ldloc $tmpEndValue641
    blt L_for_end_1250
    stloc $tmpIndex642
    ldloc $tmpIndex642
    stsfld uint8 _G::Ci
L_for_loop_1249:
    .line 2459
    ldsflda valuetype T_record_134 _G::Vra
    ldfld valuetype T_cset T_record_134::Vdstc
    ldsfld uint8 _G::Ci
    call bool _SetContains(valuetype T_cset s, int32 val)
    brfalse L_else_1251
    .line 2459
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ci
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_1252
L_else_1251:
    .line 2459
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 95 // '_'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_1252:
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue641
    beq L_for_end_1250
    ldc.i4.1
    sub
    stloc $tmpIndex643
    ldloc $tmpIndex643
    stsfld uint8 _G::Ci
    br L_for_loop_1249
L_for_end_1250:
    pop
    .line 2460
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::l
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2461
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "      s/b:  873 10 _i_gfedcb_ 427"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2462
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record14:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2463
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 873
    stfld int32 T_record_134::i
    .line 2464
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 11 // vtp 
    stfld int32 T_record_134::Vt
    .line 2465
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 427
    stfld int32 T_record_134::m
    .line 2466
    .line 2466
    ldsflda valuetype T_record_134 _G::Vra
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stfld void* T_record_134::Vdp
    .line 2467
    ldsflda valuetype T_record_134 _G::Vra
    ldfld void* T_record_134::Vdp
    ldc.i4 2394
    stobj int32
    .line 2468
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::Vt
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld void* T_record_134::Vdp
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_134 _G::Vra
    ldfld int32 T_record_134::m
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    .line 2469
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 873 11 2394 427"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2472
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record15:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2473
    ldsflda valuetype T_record_138 _G::Vvrs
    ldc.i4 10
    dup
    ldc.i4 10
    ldc.i4 20
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_record_138::Vt
    .line 2474
    ldsflda valuetype T_record_138 _G::Vvrs
    ldc.i4 2343
    stfld int32 T_record_138::Vi
    .line 2475
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_138 _G::Vvrs
    ldfld int8 T_record_138::Vt
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_138 _G::Vvrs
    ldfld int32 T_record_138::Vi
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    .line 2476
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 10 2343"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2477
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record16:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2478
    ldsflda valuetype T_record_138 _G::Vvrs
    ldc.i4 19
    dup
    ldc.i4 10
    ldc.i4 20
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_record_138::Vt
    .line 2479
    ldsflda valuetype T_record_138 _G::Vvrs
    ldc.i4 1 // (true)
    stfld bool T_record_138::Vb
    .line 2480
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_138 _G::Vvrs
    ldfld int8 T_record_138::Vt
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_record_138 _G::Vvrs
    ldfld bool T_record_138::Vb
    brtrue L_bool_to_string_true_1253
    ldstr "false"
    br L_bool_to_string_false_1254
L_bool_to_string_true_1253:
    ldstr "true"
L_bool_to_string_false_1254:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    pop
    .line 2481
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 19  true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2482
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record17:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2483
    ldsflda valuetype T_record_135 _G::Vvrb
    ldc.i4 1 // (true)
    stfld bool T_record_135::Vt
    .line 2484
    ldsflda valuetype T_record_135 _G::Vvrb
    ldc.i4 2343
    stfld int32 T_record_135::Vi
    .line 2485
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_record_135 _G::Vvrb
    ldfld bool T_record_135::Vt
    brtrue L_bool_to_string_true_1255
    ldstr "false"
    br L_bool_to_string_false_1256
L_bool_to_string_true_1255:
    ldstr "true"
L_bool_to_string_false_1256:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_135 _G::Vvrb
    ldfld int32 T_record_135::Vi
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    .line 2486
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b  true 2343"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2487
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record18:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2488
    ldsflda valuetype T_record_135 _G::Vvrb
    ldc.i4 0 // (false)
    stfld bool T_record_135::Vt
    .line 2489
    ldsflda valuetype T_record_135 _G::Vvrb
    ldc.i4 1 // (true)
    stfld bool T_record_135::Vb
    .line 2490
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_record_135 _G::Vvrb
    ldfld bool T_record_135::Vt
    brtrue L_bool_to_string_true_1257
    ldstr "false"
    br L_bool_to_string_false_1258
L_bool_to_string_true_1257:
    ldstr "true"
L_bool_to_string_false_1258:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_record_135 _G::Vvrb
    ldfld bool T_record_135::Vb
    brtrue L_bool_to_string_true_1259
    ldstr "false"
    br L_bool_to_string_false_1260
L_bool_to_string_true_1259:
    ldstr "true"
L_bool_to_string_false_1260:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    pop
    .line 2491
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b false  true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2492
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record19:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2493
    ldsflda valuetype T_record_136 _G::Vvre
    ldc.i4 2 // three 
    stfld int32 T_record_136::Vt
    .line 2494
    ldsflda valuetype T_record_136 _G::Vvre
    ldc.i4 2343
    stfld int32 T_record_136::Vi
    .line 2495
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_136 _G::Vvre
    ldfld int32 T_record_136::Vt
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_136 _G::Vvre
    ldfld int32 T_record_136::Vi
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    .line 2496
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 2 2343"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2497
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record20:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2498
    ldsflda valuetype T_record_136 _G::Vvre
    ldc.i4 7 // eight 
    stfld int32 T_record_136::Vt
    .line 2499
    ldsflda valuetype T_record_136 _G::Vvre
    ldc.i4 1 // (true)
    stfld bool T_record_136::Vb
    .line 2500
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_136 _G::Vvre
    ldfld int32 T_record_136::Vt
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_record_136 _G::Vvre
    ldfld bool T_record_136::Vb
    brtrue L_bool_to_string_true_1261
    ldstr "false"
    br L_bool_to_string_false_1262
L_bool_to_string_true_1261:
    ldstr "true"
L_bool_to_string_false_1262:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    pop
    .line 2501
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 7  true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2502
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record21:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2503
    ldsflda valuetype T_record_137 _G::Vvres
    ldc.i4 3 // four 
    dup
    ldc.i4 2
    ldc.i4 5
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_record_137::Vt
    .line 2504
    ldsflda valuetype T_record_137 _G::Vvres
    ldc.i4 2343
    stfld int32 T_record_137::Vi
    .line 2505
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_137 _G::Vvres
    ldfld int8 T_record_137::Vt
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_137 _G::Vvres
    ldfld int32 T_record_137::Vi
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    .line 2506
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 3 2343"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2507
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record22:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2508
    ldsflda valuetype T_record_137 _G::Vvres
    ldc.i4 4 // five 
    dup
    ldc.i4 2
    ldc.i4 5
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_record_137::Vt
    .line 2509
    ldsflda valuetype T_record_137 _G::Vvres
    ldc.i4 1 // (true)
    stfld bool T_record_137::Vb
    .line 2510
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_137 _G::Vvres
    ldfld int8 T_record_137::Vt
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_record_137 _G::Vvres
    ldfld bool T_record_137::Vb
    brtrue L_bool_to_string_true_1263
    ldstr "false"
    br L_bool_to_string_false_1264
L_bool_to_string_true_1263:
    ldstr "true"
L_bool_to_string_false_1264:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    pop
    .line 2511
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 4  true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2514
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record23:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2515
    ldsflda valuetype T_record_57 _G::Nvr
    ldc.i4 1
    stfld int32 T_record_57::i
    .line 2516
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldc.i4 2
    stfld int32 T_record_58::i
    .line 2517
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldc.i4 3
    stfld int32 T_record_59::i
    .line 2518
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldc.i4 4
    stfld int32 T_record_60::i
    .line 2519
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldc.i4 5
    stfld int32 T_record_61::i
    .line 2520
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldc.i4 6
    stfld int32 T_record_62::i
    .line 2521
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldc.i4 7
    stfld int32 T_record_63::i
    .line 2522
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldflda valuetype T_record_64 T_record_63::r
    ldc.i4 8
    stfld int32 T_record_64::i
    .line 2523
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldflda valuetype T_record_64 T_record_63::r
    ldflda valuetype T_record_65 T_record_64::r
    ldc.i4 9
    stfld int32 T_record_65::i
    .line 2524
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldflda valuetype T_record_64 T_record_63::r
    ldflda valuetype T_record_65 T_record_64::r
    ldflda valuetype T_record_66 T_record_65::r
    ldc.i4 10
    stfld int32 T_record_66::i
    .line 2525
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldfld int32 T_record_57::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldfld int32 T_record_58::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldfld int32 T_record_59::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldfld int32 T_record_60::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldfld int32 T_record_61::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldfld int32 T_record_62::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldfld int32 T_record_63::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldflda valuetype T_record_64 T_record_63::r
    ldfld int32 T_record_64::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldflda valuetype T_record_64 T_record_63::r
    ldflda valuetype T_record_65 T_record_64::r
    ldfld int32 T_record_65::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldflda valuetype T_record_64 T_record_63::r
    ldflda valuetype T_record_65 T_record_64::r
    ldflda valuetype T_record_66 T_record_65::r
    ldfld int32 T_record_66::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldstr "s/b 1 2 3 4 5 6 7 8 9 10"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2538
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record24:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2541
    ldsflda valuetype T_record_57 _G::Nvr
    ldc.i4 10
    stfld int32 T_record_57::i
    .line 2544
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldc.i4 9
    stfld int32 T_record_58::i
    .line 2547
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldc.i4 8
    stfld int32 T_record_59::i
    .line 2550
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldc.i4 7
    stfld int32 T_record_60::i
    .line 2553
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldc.i4 6
    stfld int32 T_record_61::i
    .line 2556
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldc.i4 5
    stfld int32 T_record_62::i
    .line 2559
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldc.i4 4
    stfld int32 T_record_63::i
    .line 2562
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldflda valuetype T_record_64 T_record_63::r
    ldc.i4 3
    stfld int32 T_record_64::i
    .line 2565
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldflda valuetype T_record_64 T_record_63::r
    ldflda valuetype T_record_65 T_record_64::r
    ldc.i4 2
    stfld int32 T_record_65::i
    .line 2568
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldflda valuetype T_record_64 T_record_63::r
    ldflda valuetype T_record_65 T_record_64::r
    ldflda valuetype T_record_66 T_record_65::r
    ldc.i4 2
    stfld int32 T_record_66::i
    .line 2571
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldflda valuetype T_record_64 T_record_63::r
    ldflda valuetype T_record_65 T_record_64::r
    ldflda valuetype T_record_66 T_record_65::r
    ldc.i4 1
    stfld int32 T_record_66::i
    .line 2594
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldfld int32 T_record_57::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldfld int32 T_record_58::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldfld int32 T_record_59::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldfld int32 T_record_60::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldfld int32 T_record_61::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldfld int32 T_record_62::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldfld int32 T_record_63::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldflda valuetype T_record_64 T_record_63::r
    ldfld int32 T_record_64::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldflda valuetype T_record_64 T_record_63::r
    ldflda valuetype T_record_65 T_record_64::r
    ldfld int32 T_record_65::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldflda valuetype T_record_64 T_record_63::r
    ldflda valuetype T_record_65 T_record_64::r
    ldflda valuetype T_record_66 T_record_65::r
    ldfld int32 T_record_66::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldstr "s/b 10 9 8 7 6 5 4 3 2 1"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2605
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record25:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2606
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldflda valuetype T_record_64 T_record_63::r
    ldflda valuetype T_record_65 T_record_64::r
    ldflda valuetype T_record_66 T_record_65::r
    ldc.i4 76
    stfld int32 T_record_66::i
    .line 2607
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldfld int32 T_record_57::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldfld int32 T_record_58::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldfld int32 T_record_59::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldfld int32 T_record_60::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldfld int32 T_record_61::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldfld int32 T_record_62::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldfld int32 T_record_63::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldflda valuetype T_record_64 T_record_63::r
    ldfld int32 T_record_64::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldflda valuetype T_record_64 T_record_63::r
    ldflda valuetype T_record_65 T_record_64::r
    ldfld int32 T_record_65::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_record_57 _G::Nvr
    ldflda valuetype T_record_58 T_record_57::r
    ldflda valuetype T_record_59 T_record_58::r
    ldflda valuetype T_record_60 T_record_59::r
    ldflda valuetype T_record_61 T_record_60::r
    ldflda valuetype T_record_62 T_record_61::r
    ldflda valuetype T_record_63 T_record_62::r
    ldflda valuetype T_record_64 T_record_63::r
    ldflda valuetype T_record_65 T_record_64::r
    ldflda valuetype T_record_66 T_record_65::r
    ldfld int32 T_record_66::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldstr "s/b 10 9 8 7 6 5 4 3 2 76"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2618
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record26:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2619
    .line 2619
    ldc.i4 128
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Rpa
    .line 2622
    ldsfld void* _G::Rpa
    ldc.i4 1
    stfld int32 T_rec::i
    .line 2623
    ldsfld void* _G::Rpa
    ldflda valuetype T_recs T_rec::Rc
    ldc.i4 103 // 'g'
    stfld uint8 T_recs::b
    .line 2626
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld void* _G::Rpa
    ldfld int32 T_rec::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsfld void* _G::Rpa
    ldflda valuetype T_recs T_rec::Rc
    ldfld uint8 T_recs::b
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldstr " s/b 1 g"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2627
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Record27:  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2628
    ldc.i4 10
    stloc $tmpEndValue644
    ldc.i4 1
    dup
    ldloc $tmpEndValue644
    bgt L_for_end_1266
    stloc $tmpIndex645
    ldloc $tmpIndex645
    stsfld int32 _G::i
L_for_loop_1265:
    .line 2628
    ldsflda valuetype T_arrr _G::Ara
    ldsfld int32 _G::i
    call instance valuetype T_recs& T_arrr::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 10
    add
    stfld int32 T_recs::a
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue644
    beq L_for_end_1266
    ldc.i4.1
    add
    stloc $tmpIndex646
    ldloc $tmpIndex646
    stsfld int32 _G::i
    br L_for_loop_1265
L_for_end_1266:
    pop
    .line 2629
    ldc.i4 1
    stloc $tmpEndValue647
    ldc.i4 10
    dup
    ldloc $tmpEndValue647
    blt L_for_end_1268
    stloc $tmpIndex648
    ldloc $tmpIndex648
    stsfld int32 _G::i
L_for_loop_1267:
    .line 2629
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_arrr _G::Ara
    ldsfld int32 _G::i
    call instance valuetype T_recs& T_arrr::ldadr(int32)
    ldfld int32 T_recs::a
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue647
    beq L_for_end_1268
    ldc.i4.1
    sub
    stloc $tmpIndex649
    ldloc $tmpIndex649
    stsfld int32 _G::i
    br L_for_loop_1267
L_for_end_1268:
    pop
    .line 2630
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 20 19 18 17 16 15 14 13 12 11"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2638
    ldc.i4 0 // testfile 
    brfalse L_if_end_1269
    .line 2640
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2641
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "******************* files ******************************"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2642
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2645
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "File1:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2646
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fi
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2647
    ldc.i4 10
    stloc $tmpEndValue650
    ldc.i4 1
    dup
    ldloc $tmpEndValue650
    bgt L_for_end_1271
    stloc $tmpIndex651
    ldloc $tmpIndex651
    stsfld int32 _G::i
L_for_loop_1270:
    .line 2647
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fi
    dup
    ldsfld int32 _G::i
    ldc.i4 10
    add
    call instance void [lpcRuntime]LPC.File::Write(int32)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue650
    beq L_for_end_1271
    ldc.i4.1
    add
    stloc $tmpIndex652
    ldloc $tmpIndex652
    stsfld int32 _G::i
    br L_for_loop_1270
L_for_end_1271:
    pop
    .line 2648
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fi
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2649
    ldc.i4 10
    stloc $tmpEndValue653
    ldc.i4 1
    dup
    ldloc $tmpEndValue653
    bgt L_for_end_1273
    stloc $tmpIndex654
    ldloc $tmpIndex654
    stsfld int32 _G::i
L_for_loop_1272:
    .line 2649
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fi
    dup
    ldsflda int32 _G::x
    ldc.i4 -2147483648
    ldc.i4 2147483647
    call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
    pop
    .line 2649
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::x
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue653
    beq L_for_end_1273
    ldc.i4.1
    add
    stloc $tmpIndex655
    ldloc $tmpIndex655
    stsfld int32 _G::i
    br L_for_loop_1272
L_for_end_1273:
    pop
    .line 2650
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 11 12 13 14 15 16 17 18 19 20"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2651
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "File2:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2652
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfi
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2653
    ldc.i4 10
    stloc $tmpEndValue656
    ldc.i4 1
    dup
    ldloc $tmpEndValue656
    bgt L_for_end_1275
    stloc $tmpIndex657
    ldloc $tmpIndex657
    stsfld int32 _G::i
L_for_loop_1274:
    .line 2653
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfi
    dup
    ldsfld int32 _G::i
    ldc.i4 10
    add
    call instance void [lpcRuntime]LPC.File::Write(int32)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue656
    beq L_for_end_1275
    ldc.i4.1
    add
    stloc $tmpIndex658
    ldloc $tmpIndex658
    stsfld int32 _G::i
    br L_for_loop_1274
L_for_end_1275:
    pop
    .line 2654
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfi
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2655
    ldc.i4 10
    stloc $tmpEndValue659
    ldc.i4 1
    dup
    ldloc $tmpEndValue659
    bgt L_for_end_1277
    stloc $tmpIndex660
    ldloc $tmpIndex660
    stsfld int32 _G::i
L_for_loop_1276:
    .line 2655
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfi
    dup
    ldsflda int32 _G::x
    ldc.i4 -2147483648
    ldc.i4 2147483647
    call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
    pop
    .line 2655
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::x
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue659
    beq L_for_end_1277
    ldc.i4.1
    add
    stloc $tmpIndex661
    ldloc $tmpIndex661
    stsfld int32 _G::i
    br L_for_loop_1276
L_for_end_1277:
    pop
    .line 2656
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 11 12 13 14 15 16 17 18 19 20"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2657
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "File3:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2658
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fb
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2659
    ldc.i4 10
    stloc $tmpEndValue662
    ldc.i4 1
    dup
    ldloc $tmpEndValue662
    bgt L_for_end_1279
    stloc $tmpIndex663
    ldloc $tmpIndex663
    stsfld int32 _G::i
L_for_loop_1278:
    .line 2659
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fb
    dup
    ldsfld int32 _G::i
    ldc.i4.1
    and
    brtrue L_bool_to_string_true_1280
    ldstr "false"
    br L_bool_to_string_false_1281
L_bool_to_string_true_1280:
    ldstr "true"
L_bool_to_string_false_1281:
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue662
    beq L_for_end_1279
    ldc.i4.1
    add
    stloc $tmpIndex664
    ldloc $tmpIndex664
    stsfld int32 _G::i
    br L_for_loop_1278
L_for_end_1279:
    pop
    .line 2660
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fb
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2661
    ldc.i4 10
    stloc $tmpEndValue665
    ldc.i4 1
    dup
    ldloc $tmpEndValue665
    bgt L_for_end_1283
    stloc $tmpIndex666
    ldloc $tmpIndex666
    stsfld int32 _G::i
L_for_loop_1282:
    .line 2661
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fb
    dup
    ldsflda bool _G::Ba
    ldc.i4 0
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Read(bool*, int32, int32)
    pop
    .line 2661
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Ba
    brtrue L_bool_to_string_true_1284
    ldstr "false"
    br L_bool_to_string_false_1285
L_bool_to_string_true_1284:
    ldstr "true"
L_bool_to_string_false_1285:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue665
    beq L_for_end_1283
    ldc.i4.1
    add
    stloc $tmpIndex667
    ldloc $tmpIndex667
    stsfld int32 _G::i
    br L_for_loop_1282
L_for_end_1283:
    pop
    .line 2662
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2663
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "   s/b:    true false  true false  true false  true false  true "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr "false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2665
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "File4:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2666
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfb
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2667
    ldc.i4 10
    stloc $tmpEndValue668
    ldc.i4 1
    dup
    ldloc $tmpEndValue668
    bgt L_for_end_1287
    stloc $tmpIndex669
    ldloc $tmpIndex669
    stsfld int32 _G::i
L_for_loop_1286:
    .line 2667
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfb
    dup
    ldsfld int32 _G::i
    ldc.i4.1
    and
    brtrue L_bool_to_string_true_1288
    ldstr "false"
    br L_bool_to_string_false_1289
L_bool_to_string_true_1288:
    ldstr "true"
L_bool_to_string_false_1289:
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue668
    beq L_for_end_1287
    ldc.i4.1
    add
    stloc $tmpIndex670
    ldloc $tmpIndex670
    stsfld int32 _G::i
    br L_for_loop_1286
L_for_end_1287:
    pop
    .line 2668
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfb
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2669
    ldc.i4 10
    stloc $tmpEndValue671
    ldc.i4 1
    dup
    ldloc $tmpEndValue671
    bgt L_for_end_1291
    stloc $tmpIndex672
    ldloc $tmpIndex672
    stsfld int32 _G::i
L_for_loop_1290:
    .line 2669
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfb
    dup
    ldsflda bool _G::Ba
    ldc.i4 0
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Read(bool*, int32, int32)
    pop
    .line 2669
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Ba
    brtrue L_bool_to_string_true_1292
    ldstr "false"
    br L_bool_to_string_false_1293
L_bool_to_string_true_1292:
    ldstr "true"
L_bool_to_string_false_1293:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue671
    beq L_for_end_1291
    ldc.i4.1
    add
    stloc $tmpIndex673
    ldloc $tmpIndex673
    stsfld int32 _G::i
    br L_for_loop_1290
L_for_end_1291:
    pop
    .line 2670
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2671
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "   s/b:    true false  true false  true false  true false  true "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr "false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2673
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "File5:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2674
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fc
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2675
    ldc.i4 106 // 'j'
    stloc $tmpEndValue674
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue674
    bgt L_for_end_1295
    stloc $tmpIndex675
    ldloc $tmpIndex675
    stsfld uint8 _G::Ci
L_for_loop_1294:
    .line 2675
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fc
    dup
    ldsfld uint8 _G::Ci
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue674
    beq L_for_end_1295
    ldc.i4.1
    add
    stloc $tmpIndex676
    ldloc $tmpIndex676
    stsfld uint8 _G::Ci
    br L_for_loop_1294
L_for_end_1295:
    pop
    .line 2676
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fc
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2677
    ldc.i4 106 // 'j'
    stloc $tmpEndValue677
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue677
    bgt L_for_end_1297
    stloc $tmpIndex678
    ldloc $tmpIndex678
    stsfld uint8 _G::Ci
L_for_loop_1296:
    .line 2677
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fc
    dup
    ldsflda uint8 _G::Ca
    ldc.i4 0
    ldc.i4 255
    call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
    pop
    .line 2677
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ca
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue677
    beq L_for_end_1297
    ldc.i4.1
    add
    stloc $tmpIndex679
    ldloc $tmpIndex679
    stsfld uint8 _G::Ci
    br L_for_loop_1296
L_for_end_1297:
    pop
    .line 2678
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b a b c d e f g h i j"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2679
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "File6:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2680
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfc
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2681
    ldc.i4 106 // 'j'
    stloc $tmpEndValue680
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue680
    bgt L_for_end_1299
    stloc $tmpIndex681
    ldloc $tmpIndex681
    stsfld uint8 _G::Ci
L_for_loop_1298:
    .line 2681
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfc
    dup
    ldsfld uint8 _G::Ci
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue680
    beq L_for_end_1299
    ldc.i4.1
    add
    stloc $tmpIndex682
    ldloc $tmpIndex682
    stsfld uint8 _G::Ci
    br L_for_loop_1298
L_for_end_1299:
    pop
    .line 2682
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfc
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2683
    ldc.i4 106 // 'j'
    stloc $tmpEndValue683
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue683
    bgt L_for_end_1301
    stloc $tmpIndex684
    ldloc $tmpIndex684
    stsfld uint8 _G::Ci
L_for_loop_1300:
    .line 2683
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfc
    dup
    ldsflda uint8 _G::Ca
    ldc.i4 0
    ldc.i4 255
    call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
    pop
    .line 2683
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ca
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue683
    beq L_for_end_1301
    ldc.i4.1
    add
    stloc $tmpIndex685
    ldloc $tmpIndex685
    stsfld uint8 _G::Ci
    br L_for_loop_1300
L_for_end_1301:
    pop
    .line 2684
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b a b c d e f g h i j"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2685
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "File7:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2686
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fe
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2687
    ldc.i4 9 // ten 
    stloc $tmpEndValue686
    ldc.i4 0 // one 
    dup
    ldloc $tmpEndValue686
    bgt L_for_end_1303
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex687
    ldloc $tmpIndex687
    stsfld int32 _G::Ei
L_for_loop_1302:
    .line 2687
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fe
    dup
    ldsfld int32 _G::Ei
    call instance void [lpcRuntime]LPC.File::Write(int32)
    pop
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue686
    beq L_for_end_1303
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex688
    ldloc $tmpIndex688
    stsfld int32 _G::Ei
    br L_for_loop_1302
L_for_end_1303:
    pop
    .line 2688
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fe
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2689
    ldc.i4 9 // ten 
    stloc $tmpEndValue689
    ldc.i4 0 // one 
    dup
    ldloc $tmpEndValue689
    bgt L_for_end_1305
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex690
    ldloc $tmpIndex690
    stsfld int32 _G::Ei
L_for_loop_1304:
    .line 2689
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fe
    dup
    ldsflda int32 _G::Ea
    ldc.i4 0
    ldc.i4 9
    call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
    pop
    .line 2689
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Ea
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue689
    beq L_for_end_1305
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex691
    ldloc $tmpIndex691
    stsfld int32 _G::Ei
    br L_for_loop_1304
L_for_end_1305:
    pop
    .line 2690
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 0 1 2 3 4 5 6 7 8 9"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2691
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "File8:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2692
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfe
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2693
    ldc.i4 9 // ten 
    stloc $tmpEndValue692
    ldc.i4 0 // one 
    dup
    ldloc $tmpEndValue692
    bgt L_for_end_1307
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex693
    ldloc $tmpIndex693
    stsfld int32 _G::Ei
L_for_loop_1306:
    .line 2693
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfe
    dup
    ldsfld int32 _G::Ei
    call instance void [lpcRuntime]LPC.File::Write(int32)
    pop
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue692
    beq L_for_end_1307
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex694
    ldloc $tmpIndex694
    stsfld int32 _G::Ei
    br L_for_loop_1306
L_for_end_1307:
    pop
    .line 2694
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfe
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2695
    ldc.i4 9 // ten 
    stloc $tmpEndValue695
    ldc.i4 0 // one 
    dup
    ldloc $tmpEndValue695
    bgt L_for_end_1309
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex696
    ldloc $tmpIndex696
    stsfld int32 _G::Ei
L_for_loop_1308:
    .line 2695
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfe
    dup
    ldsflda int32 _G::Ea
    ldc.i4 0
    ldc.i4 9
    call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
    pop
    .line 2695
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Ea
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue695
    beq L_for_end_1309
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex697
    ldloc $tmpIndex697
    stsfld int32 _G::Ei
    br L_for_loop_1308
L_for_end_1309:
    pop
    .line 2696
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 0 1 2 3 4 5 6 7 8 9"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2699
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "File9:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2700
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2701
    ldc.i4 7384
    stsfld int32 _G::x
    .line 2702
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::x
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2703
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 8342
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2704
    ldc.i4 1 // (true)
    stsfld bool _G::Ba
    .line 2705
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Ba
    brtrue L_bool_to_string_true_1310
    ldstr "false"
    br L_bool_to_string_false_1311
L_bool_to_string_true_1310:
    ldstr "true"
L_bool_to_string_false_1311:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2706
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldc.i4 5
    ldc.i4.0
    ldc.i4 0 // (false)
    brtrue L_bool_to_string_true_1312
    ldstr "false"
    br L_bool_to_string_false_1313
L_bool_to_string_true_1312:
    ldstr "true"
L_bool_to_string_false_1313:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2707
    ldc.i4 109 // 'm'
    stsfld uint8 _G::Ca
    .line 2708
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldsfld uint8 _G::Ca
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2709
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldc.i4 113 // 'q'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2710
    ldc.r8 1.23457
    stsfld float64 _G::Ra
    .line 2711
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Ra
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2712
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldc.i4 1
    ldc.i4 7
    ldsfld float64 _G::Ra
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2713
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldc.i4 15
    ldc.i4.0
    ldc.r8 56.8943
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2714
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldc.i4 1
    ldc.i4 8
    ldc.r8 0.938376
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2715
    ldsfld valuetype T_string10 STRING_12    // "hi there !"
    stsfld valuetype T_string10 _G::s
    .line 2716
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldsfld valuetype T_string10 _G::s
    call string T_string10::arrayToString(valuetype T_string10)
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2717
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld valuetype T_string10 _G::s
    call string T_string10::arrayToString(valuetype T_string10)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2718
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld valuetype T_string10 _G::s
    call string T_string10::arrayToString(valuetype T_string10)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2719
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2720
    br L_while_test_1315
L_while_1314:
    .line 2722
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance bool [lpcRuntime]LPC.File::Eoln()
    brfalse L_else_1316
    .line 2724
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 2725
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_if_end_1317
L_else_1316:
    .line 2729
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldsflda uint8 _G::Ci
    ldc.i4 0
    ldc.i4 255
    call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
    pop
    .line 2730
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ci
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_1317:
L_while_test_1315:
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance bool [lpcRuntime]LPC.File::Eof()
    ldc.i4.0
    ceq
    brtrue L_while_1314
    .line 2735
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2736
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "7384"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2737
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "8342"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2738
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2739
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2740
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 109 // 'm'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2741
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 113 // 'q'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2742
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.2345678000e+00"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2743
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "1.2345678"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2744
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 5.6894321000e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2745
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "0.93837632"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2746
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "hi there !"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2747
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "hi th"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2748
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "     hi there !"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2751
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "file10:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2752
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2753
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldsflda int32 _G::y
    ldc.i4 -2147483648
    ldc.i4 2147483647
    call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 2754
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::y
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2755
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldsflda int32 _G::y
    ldc.i4 -2147483648
    ldc.i4 2147483647
    call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 2756
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::y
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2757
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 2758
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 2759
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldsflda uint8 _G::Ci
    ldc.i4 0
    ldc.i4 255
    call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 2760
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ci
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2761
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldsflda uint8 _G::Ci
    ldc.i4 0
    ldc.i4 255
    call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 2762
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ci
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2763
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldsflda float64 _G::Rb
    call instance void [lpcRuntime]LPC.File::Read(float64*)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 2764
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Rb
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2765
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldsflda float64 _G::Rb
    call instance void [lpcRuntime]LPC.File::Read(float64*)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 2766
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Rb
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2767
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldsflda float64 _G::Rb
    call instance void [lpcRuntime]LPC.File::Read(float64*)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 2768
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Rb
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2769
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldsflda float64 _G::Rb
    call instance void [lpcRuntime]LPC.File::Read(float64*)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 2770
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 15
    ldc.i4.0
    ldsfld float64 _G::Rb
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2771
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2772
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "7384"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2773
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "8342"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2774
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 109 // 'm'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2775
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 113 // 'q'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2776
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.2345678000e+00"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2777
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 1.2345678000e+00"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2778
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 5.6894321000e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2779
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " 9.3837632000e+01"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2782
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "file11:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2783
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2784
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldstr "how now"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2785
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldstr "brown cow"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2786
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2787
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 39 // '''
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 2788
    br L_while_test_1319
L_while_1318:
    .line 2790
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance bool [lpcRuntime]LPC.File::Eoln()
    brfalse L_if_end_1320
    .line 2790
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "<eoln>"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_1320:
    .line 2791
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldsflda uint8 _G::Ca
    ldc.i4 0
    ldc.i4 255
    call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
    pop
    .line 2792
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ca
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_while_test_1319:
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance bool [lpcRuntime]LPC.File::Eof()
    ldc.i4.0
    ceq
    brtrue L_while_1318
    .line 2795
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 39 // '''
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 2796
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 'how now<eoln> brown cow<eoln> '"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2797
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "file12:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2798
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2799
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldstr "too much"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2800
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldstr "too soon"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2801
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2802
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 39 // '''
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 2803
    br L_while_test_1322
L_while_1321:
    .line 2805
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance bool [lpcRuntime]LPC.File::Eoln()
    brfalse L_if_end_1323
    .line 2805
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "<eoln>"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_1323:
    .line 2806
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldsflda uint8 _G::Ca
    ldc.i4 0
    ldc.i4 255
    call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
    pop
    .line 2807
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ca
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_while_test_1322:
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance bool [lpcRuntime]LPC.File::Eof()
    ldc.i4.0
    ceq
    brtrue L_while_1321
    .line 2810
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 39 // '''
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 2811
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 'too much<eoln> too soon<eoln> '"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2814
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "File13:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2815
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fi
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2816
    ldc.i4 10
    stloc $tmpEndValue698
    ldc.i4 1
    dup
    ldloc $tmpEndValue698
    bgt L_for_end_1325
    stloc $tmpIndex699
    ldloc $tmpIndex699
    stsfld int32 _G::i
L_for_loop_1324:
    .line 2816
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fi
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldsfld int32 _G::i
    ldc.i4 10
    add
    stobj int32
    .line 2816
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fi
    call instance void [lpcRuntime]LPC.File::Put()
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue698
    beq L_for_end_1325
    ldc.i4.1
    add
    stloc $tmpIndex700
    ldloc $tmpIndex700
    stsfld int32 _G::i
    br L_for_loop_1324
L_for_end_1325:
    pop
    .line 2817
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fi
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2818
    ldc.i4 10
    stloc $tmpEndValue701
    ldc.i4 1
    dup
    ldloc $tmpEndValue701
    bgt L_for_end_1327
    stloc $tmpIndex702
    ldloc $tmpIndex702
    stsfld int32 _G::i
L_for_loop_1326:
    .line 2818
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fi
    dup
    call instance void [lpcRuntime]LPC.File::VarRead()
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldobj int32
    stsfld int32 _G::x
    .line 2818
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fi
    call instance void [lpcRuntime]LPC.File::Get()
    .line 2818
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::x
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue701
    beq L_for_end_1327
    ldc.i4.1
    add
    stloc $tmpIndex703
    ldloc $tmpIndex703
    stsfld int32 _G::i
    br L_for_loop_1326
L_for_end_1327:
    pop
    .line 2819
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 11 12 13 14 15 16 17 18 19 20"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2820
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "File14:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2821
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfi
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2822
    ldc.i4 10
    stloc $tmpEndValue704
    ldc.i4 1
    dup
    ldloc $tmpEndValue704
    bgt L_for_end_1329
    stloc $tmpIndex705
    ldloc $tmpIndex705
    stsfld int32 _G::i
L_for_loop_1328:
    .line 2822
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfi
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldsfld int32 _G::i
    ldc.i4 10
    add
    stobj int32
    .line 2822
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfi
    call instance void [lpcRuntime]LPC.File::Put()
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue704
    beq L_for_end_1329
    ldc.i4.1
    add
    stloc $tmpIndex706
    ldloc $tmpIndex706
    stsfld int32 _G::i
    br L_for_loop_1328
L_for_end_1329:
    pop
    .line 2823
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfi
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2824
    ldc.i4 10
    stloc $tmpEndValue707
    ldc.i4 1
    dup
    ldloc $tmpEndValue707
    bgt L_for_end_1331
    stloc $tmpIndex708
    ldloc $tmpIndex708
    stsfld int32 _G::i
L_for_loop_1330:
    .line 2824
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfi
    dup
    call instance void [lpcRuntime]LPC.File::VarRead()
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldobj int32
    stsfld int32 _G::x
    .line 2824
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfi
    call instance void [lpcRuntime]LPC.File::Get()
    .line 2824
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::x
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue707
    beq L_for_end_1331
    ldc.i4.1
    add
    stloc $tmpIndex709
    ldloc $tmpIndex709
    stsfld int32 _G::i
    br L_for_loop_1330
L_for_end_1331:
    pop
    .line 2825
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 11 12 13 14 15 16 17 18 19 20"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2826
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "File15:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2827
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fb
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2828
    ldc.i4 10
    stloc $tmpEndValue710
    ldc.i4 1
    dup
    ldloc $tmpEndValue710
    bgt L_for_end_1333
    stloc $tmpIndex711
    ldloc $tmpIndex711
    stsfld int32 _G::i
L_for_loop_1332:
    .line 2828
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fb
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldsfld int32 _G::i
    ldc.i4.1
    and
    stobj bool
    .line 2828
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fb
    call instance void [lpcRuntime]LPC.File::Put()
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue710
    beq L_for_end_1333
    ldc.i4.1
    add
    stloc $tmpIndex712
    ldloc $tmpIndex712
    stsfld int32 _G::i
    br L_for_loop_1332
L_for_end_1333:
    pop
    .line 2829
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fb
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2830
    ldc.i4 10
    stloc $tmpEndValue713
    ldc.i4 1
    dup
    ldloc $tmpEndValue713
    bgt L_for_end_1335
    stloc $tmpIndex714
    ldloc $tmpIndex714
    stsfld int32 _G::i
L_for_loop_1334:
    .line 2830
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fb
    dup
    call instance void [lpcRuntime]LPC.File::VarRead()
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldobj bool
    stsfld bool _G::Ba
    .line 2830
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fb
    call instance void [lpcRuntime]LPC.File::Get()
    .line 2830
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Ba
    brtrue L_bool_to_string_true_1336
    ldstr "false"
    br L_bool_to_string_false_1337
L_bool_to_string_true_1336:
    ldstr "true"
L_bool_to_string_false_1337:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue713
    beq L_for_end_1335
    ldc.i4.1
    add
    stloc $tmpIndex715
    ldloc $tmpIndex715
    stsfld int32 _G::i
    br L_for_loop_1334
L_for_end_1335:
    pop
    .line 2831
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2832
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "   s/b:    true false  true false  true false  true false  true "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr "false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2834
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "File16:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2835
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfb
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2836
    ldc.i4 10
    stloc $tmpEndValue716
    ldc.i4 1
    dup
    ldloc $tmpEndValue716
    bgt L_for_end_1339
    stloc $tmpIndex717
    ldloc $tmpIndex717
    stsfld int32 _G::i
L_for_loop_1338:
    .line 2836
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfb
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldsfld int32 _G::i
    ldc.i4.1
    and
    stobj bool
    .line 2836
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfb
    call instance void [lpcRuntime]LPC.File::Put()
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue716
    beq L_for_end_1339
    ldc.i4.1
    add
    stloc $tmpIndex718
    ldloc $tmpIndex718
    stsfld int32 _G::i
    br L_for_loop_1338
L_for_end_1339:
    pop
    .line 2837
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfb
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2838
    ldc.i4 10
    stloc $tmpEndValue719
    ldc.i4 1
    dup
    ldloc $tmpEndValue719
    bgt L_for_end_1341
    stloc $tmpIndex720
    ldloc $tmpIndex720
    stsfld int32 _G::i
L_for_loop_1340:
    .line 2838
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfb
    dup
    call instance void [lpcRuntime]LPC.File::VarRead()
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldobj bool
    stsfld bool _G::Ba
    .line 2838
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfb
    call instance void [lpcRuntime]LPC.File::Get()
    .line 2838
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld bool _G::Ba
    brtrue L_bool_to_string_true_1342
    ldstr "false"
    br L_bool_to_string_false_1343
L_bool_to_string_true_1342:
    ldstr "true"
L_bool_to_string_false_1343:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue719
    beq L_for_end_1341
    ldc.i4.1
    add
    stloc $tmpIndex721
    ldloc $tmpIndex721
    stsfld int32 _G::i
    br L_for_loop_1340
L_for_end_1341:
    pop
    .line 2839
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2840
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "   s/b:    true false  true false  true false  true false  true "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr "false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2842
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "File17:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2843
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fc
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2844
    ldc.i4 106 // 'j'
    stloc $tmpEndValue722
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue722
    bgt L_for_end_1345
    stloc $tmpIndex723
    ldloc $tmpIndex723
    stsfld uint8 _G::Ci
L_for_loop_1344:
    .line 2844
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fc
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldsfld uint8 _G::Ci
    stobj uint8
    .line 2844
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fc
    call instance void [lpcRuntime]LPC.File::Put()
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue722
    beq L_for_end_1345
    ldc.i4.1
    add
    stloc $tmpIndex724
    ldloc $tmpIndex724
    stsfld uint8 _G::Ci
    br L_for_loop_1344
L_for_end_1345:
    pop
    .line 2845
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fc
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2846
    ldc.i4 106 // 'j'
    stloc $tmpEndValue725
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue725
    bgt L_for_end_1347
    stloc $tmpIndex726
    ldloc $tmpIndex726
    stsfld uint8 _G::Ci
L_for_loop_1346:
    .line 2846
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fc
    dup
    call instance void [lpcRuntime]LPC.File::VarRead()
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldobj uint8
    stsfld uint8 _G::Ca
    .line 2846
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fc
    call instance void [lpcRuntime]LPC.File::Get()
    .line 2846
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ca
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue725
    beq L_for_end_1347
    ldc.i4.1
    add
    stloc $tmpIndex727
    ldloc $tmpIndex727
    stsfld uint8 _G::Ci
    br L_for_loop_1346
L_for_end_1347:
    pop
    .line 2847
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b a b c d e f g h i j"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2848
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "File18:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2849
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfc
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2850
    ldc.i4 106 // 'j'
    stloc $tmpEndValue728
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue728
    bgt L_for_end_1349
    stloc $tmpIndex729
    ldloc $tmpIndex729
    stsfld uint8 _G::Ci
L_for_loop_1348:
    .line 2850
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfc
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldsfld uint8 _G::Ci
    stobj uint8
    .line 2850
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfc
    call instance void [lpcRuntime]LPC.File::Put()
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue728
    beq L_for_end_1349
    ldc.i4.1
    add
    stloc $tmpIndex730
    ldloc $tmpIndex730
    stsfld uint8 _G::Ci
    br L_for_loop_1348
L_for_end_1349:
    pop
    .line 2851
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfc
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2852
    ldc.i4 106 // 'j'
    stloc $tmpEndValue731
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue731
    bgt L_for_end_1351
    stloc $tmpIndex732
    ldloc $tmpIndex732
    stsfld uint8 _G::Ci
L_for_loop_1350:
    .line 2852
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfc
    dup
    call instance void [lpcRuntime]LPC.File::VarRead()
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldobj uint8
    stsfld uint8 _G::Ca
    .line 2852
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfc
    call instance void [lpcRuntime]LPC.File::Get()
    .line 2852
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ca
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld uint8 _G::Ci
    dup
    ldloc $tmpEndValue731
    beq L_for_end_1351
    ldc.i4.1
    add
    stloc $tmpIndex733
    ldloc $tmpIndex733
    stsfld uint8 _G::Ci
    br L_for_loop_1350
L_for_end_1351:
    pop
    .line 2853
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b a b c d e f g h i j"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2854
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "File19:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2855
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fe
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2856
    ldc.i4 9 // ten 
    stloc $tmpEndValue734
    ldc.i4 0 // one 
    dup
    ldloc $tmpEndValue734
    bgt L_for_end_1353
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex735
    ldloc $tmpIndex735
    stsfld int32 _G::Ei
L_for_loop_1352:
    .line 2856
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fe
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldsfld int32 _G::Ei
    stobj int32
    .line 2856
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fe
    call instance void [lpcRuntime]LPC.File::Put()
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue734
    beq L_for_end_1353
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex736
    ldloc $tmpIndex736
    stsfld int32 _G::Ei
    br L_for_loop_1352
L_for_end_1353:
    pop
    .line 2857
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fe
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2858
    ldc.i4 9 // ten 
    stloc $tmpEndValue737
    ldc.i4 0 // one 
    dup
    ldloc $tmpEndValue737
    bgt L_for_end_1355
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex738
    ldloc $tmpIndex738
    stsfld int32 _G::Ei
L_for_loop_1354:
    .line 2858
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fe
    dup
    call instance void [lpcRuntime]LPC.File::VarRead()
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldobj int32
    stsfld int32 _G::Ea
    .line 2858
    ldsflda valuetype [lpcRuntime]LPC.File _G::Fe
    call instance void [lpcRuntime]LPC.File::Get()
    .line 2858
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Ea
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue737
    beq L_for_end_1355
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex739
    ldloc $tmpIndex739
    stsfld int32 _G::Ei
    br L_for_loop_1354
L_for_end_1355:
    pop
    .line 2859
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 0 1 2 3 4 5 6 7 8 9"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2860
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "File20:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2861
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfe
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2862
    ldc.i4 9 // ten 
    stloc $tmpEndValue740
    ldc.i4 0 // one 
    dup
    ldloc $tmpEndValue740
    bgt L_for_end_1357
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex741
    ldloc $tmpIndex741
    stsfld int32 _G::Ei
L_for_loop_1356:
    .line 2862
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfe
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldsfld int32 _G::Ei
    stobj int32
    .line 2862
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfe
    call instance void [lpcRuntime]LPC.File::Put()
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue740
    beq L_for_end_1357
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex742
    ldloc $tmpIndex742
    stsfld int32 _G::Ei
    br L_for_loop_1356
L_for_end_1357:
    pop
    .line 2863
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfe
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2864
    ldc.i4 9 // ten 
    stloc $tmpEndValue743
    ldc.i4 0 // one 
    dup
    ldloc $tmpEndValue743
    bgt L_for_end_1359
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex744
    ldloc $tmpIndex744
    stsfld int32 _G::Ei
L_for_loop_1358:
    .line 2864
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfe
    dup
    call instance void [lpcRuntime]LPC.File::VarRead()
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldobj int32
    stsfld int32 _G::Ea
    .line 2864
    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfe
    call instance void [lpcRuntime]LPC.File::Get()
    .line 2864
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Ea
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldsfld int32 _G::Ei
    dup
    ldloc $tmpEndValue743
    beq L_for_end_1359
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex745
    ldloc $tmpIndex745
    stsfld int32 _G::Ei
    br L_for_loop_1358
L_for_end_1359:
    pop
    .line 2865
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b 0 1 2 3 4 5 6 7 8 9"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2866
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "File21:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2867
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2868
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldstr "50"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2869
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 2870
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    dup
    ldsflda int8 _G::Srx
    ldc.i4 0
    ldc.i4 100
    call instance void [lpcRuntime]LPC.File::Read(int8*, int32, int32)
    pop
    .line 2871
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 50
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2872
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "File22:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2873
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 2874
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance bool [lpcRuntime]LPC.File::Eof()
    brtrue L_bool_to_string_true_1360
    ldstr "false"
    br L_bool_to_string_false_1361
L_bool_to_string_true_1360:
    ldstr "true"
L_bool_to_string_false_1361:
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr " s/b true"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
L_if_end_1269:
    .line 2884
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2885
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "************ Procedures and functions ******************"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2886
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2887
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "ProcedureFunction1:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2888
    ldc.i4 45
    stsfld int32 _G::x
    .line 2888
    ldc.i4 89
    stsfld int32 _G::y
    .line 2889
    ldsfld int32 _G::x
    ldsfld int32 _G::y
    call void Junk1(int32 z, int32 q)
    .line 2890
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 45 89"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2891
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "ProcedureFunction2:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2892
    ldc.i4 45
    stsfld int32 _G::x
    .line 2892
    ldsflda int32 _G::x
    call void Junk2(int32& z)
    .line 2893
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::x
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 46"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2894
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "ProcedureFunction3:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2895
    ldsfld valuetype T_string10 STRING_13    // "total junk"
    stsfld valuetype T_string10 _G::s
    .line 2896
    ldsflda valuetype T_string10 _G::s
    call void Junk3(valuetype T_string10& p)
    .line 2897
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b total junk"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2898
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "ProcedureFunction4:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2899
    ldsfld valuetype T_string10 STRING_13    // "total junk"
    stsfld valuetype T_string10 _G::s
    .line 2900
    ldsfld valuetype T_string10 _G::s
    call void Junk4(valuetype T_string10 p)
    .line 2901
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b tota? junk"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2902
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld valuetype T_string10 _G::s
    call string T_string10::arrayToString(valuetype T_string10)
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr " s/b total junk"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2903
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "ProcedureFunction5:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2904
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 34
    call int32 Junk5(int32 x)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 35"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2905
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "ProcedureFunction6:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2906
    ldc.i4 10
    ldc.i4 9
    ldc.i4 8
    call int32 Junk7(int32 a, int32 b, int32 c)
    stsfld int32 _G::i
    .line 2907
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2908
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b:   10 9 8 6 5 4 3 2 1 78"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2909
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "ProcedureFunction7:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2910
    ldc.i4 10
    stloc $tmpEndValue746
    ldc.i4 1
    dup
    ldloc $tmpEndValue746
    bgt L_for_end_1363
    stloc $tmpIndex747
    ldloc $tmpIndex747
    stsfld int32 _G::i
L_for_loop_1362:
    .line 2910
    ldsflda valuetype T_arri _G::Ai
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 10
    add
    stobj int32
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue746
    beq L_for_end_1363
    ldc.i4.1
    add
    stloc $tmpIndex748
    ldloc $tmpIndex748
    stsfld int32 _G::i
    br L_for_loop_1362
L_for_end_1363:
    pop
    .line 2911
    ldsflda valuetype T_rec _G::Arec
    ldc.i4 64
    stfld int32 T_rec::i
    .line 2912
    ldsflda valuetype T_rec _G::Arec
    ldc.i4 0 // (false)
    stfld bool T_rec::b
    .line 2913
    ldsflda valuetype T_rec _G::Arec
    ldc.i4 106 // 'j'
    stfld uint8 T_rec::c
    .line 2914
    ldsflda valuetype T_rec _G::Arec
    ldc.i4 1 // two 
    stfld int32 T_rec::e
    .line 2915
    ldsflda valuetype T_rec _G::Arec
    ldc.i4 3 // four 
    dup
    ldc.i4 2
    ldc.i4 5
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_rec::Es
    .line 2916
    ldsflda valuetype T_rec _G::Arec
    ldc.i4 12
    dup
    ldc.i4 10
    ldc.i4 20
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_rec::s
    .line 2917
    ldsflda valuetype T_rec _G::Arec
    ldc.r8 4.54512e-29
    stfld float64 T_rec::r
    .line 2918
    ldsflda valuetype T_rec _G::Arec
    ldsfld valuetype T_string10 STRING_10    // "what ? who"
    stfld valuetype T_string10 T_rec::St
    .line 2919
    ldc.i4 10
    stloc $tmpEndValue749
    ldc.i4 1
    dup
    ldloc $tmpEndValue749
    bgt L_for_end_1365
    stloc $tmpIndex750
    ldloc $tmpIndex750
    stsfld int32 _G::i
L_for_loop_1364:
    .line 2919
    ldsflda valuetype T_rec _G::Arec
    ldflda valuetype T_arri T_rec::a
    ldsfld int32 _G::i
    call instance int32& T_arri::ldadr(int32)
    ldsfld int32 _G::i
    ldc.i4 20
    add
    stobj int32
    ldsfld int32 _G::i
    dup
    ldloc $tmpEndValue749
    beq L_for_end_1365
    ldc.i4.1
    add
    stloc $tmpIndex751
    ldloc $tmpIndex751
    stsfld int32 _G::i
    br L_for_loop_1364
L_for_end_1365:
    pop
    .line 2920
    ldsflda valuetype T_rec _G::Arec
    ldflda valuetype T_recs T_rec::Rc
    ldc.i4 2324
    stfld int32 T_recs::a
    .line 2921
    ldsflda valuetype T_rec _G::Arec
    ldflda valuetype T_recs T_rec::Rc
    ldc.i4 121 // 'y'
    stfld uint8 T_recs::b
    .line 2922
    ldsflda valuetype T_rec _G::Arec
    ldloc $tmpSetLiteral752
    stfld valuetype T_cset T_rec::Stc
    .line 2923
    .line 2923
    ldsflda valuetype T_rec _G::Arec
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stfld void* T_rec::p
    .line 2924
    ldsflda valuetype T_rec _G::Arec
    ldfld void* T_rec::p
    ldc.i4 8454
    stobj int32
    .line 2925
    ldsflda valuetype T_recv _G::Vrec
    ldc.i4 23487
    stfld int32 T_recv::a
    .line 2926
    ldsflda valuetype T_recv _G::Vrec
    ldc.i4 110 // 'n'
    stfld uint8 T_recv::b
    .line 2927
    ldsflda valuetype T_recv _G::Vrec
    ldc.i4 0 // (false)
    stfld bool T_recv::c
    .line 2928
    ldsflda valuetype T_recv _G::Vrec
    ldsfld valuetype T_string10 STRING_14    // "help me123"
    stfld valuetype T_string10 T_recv::d
    .line 2929
    .line 2929
    ldc.i4 4
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stsfld void* _G::Ip
    .line 2930
    ldsfld void* _G::Ip
    ldc.i4 734
    stobj int32
    .line 2931
    ldc.i4 93
    ldc.i4 1 // (true)
    ldc.i4 107 // 'k'
    ldc.i4 7 // eight 
    ldc.i4 4 // five 
    dup
    ldc.i4 2
    ldc.i4 5
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldc.i4 10
    dup
    ldc.i4 10
    ldc.i4 20
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldc.r8 3.14140
    ldsfld valuetype T_string10 STRING_9    // "hello, guy"
    ldsfld valuetype T_arri _G::Ai
    ldsfld valuetype T_rec _G::Arec
    ldsfld valuetype T_recv _G::Vrec
    ldloc $tmpSetLiteral753
    ldsfld void* _G::Ip
    call void Junk8(int32 a, bool b, uint8 c, int32 e, int8 Es, int8 s, float64 r, valuetype T_string10 St, valuetype T_arri Ar, valuetype T_rec Rc, valuetype T_recv Rv, valuetype T_cset Stc, void* p)
    .line 2933
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "s/b:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2934
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "93  true k 7 4 10  3.14140000e+00 hello, guy"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2935
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "11 12 13 14 15 16 17 18 19 20"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2936
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "64 false j 1 3 12  4.54500000e-29 what ? who"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2937
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "21 22 23 24 25 26 27 28 29 30"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2938
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "2324 y"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2939
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "_bcde___i_"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2940
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "8454"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2941
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "23487 n false"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2942
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "help me123"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2943
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "abcd___h__"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2944
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "734"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2945
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "ProcedureFunction8:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2946
    ldnull
    ldftn void Junk10(int32 x, int32 y, uint8 Junk10)
    newobj instance void T_subroutine_259::.ctor(object, native uint)
    ldnull
    ldftn int32 Junk11(int32 x)
    newobj instance void T_subroutine_260::.ctor(object, native uint)
    call void Junk9(class T_subroutine_1 Junk9, class T_subroutine_2 y)
    .line 2947
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 9834 8383 j 744"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2948
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "ProcedureFunction9:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2949
    ldnull
    ldftn void Junk13(class T_subroutine_6 Xz)
    newobj instance void T_subroutine_261::.ctor(object, native uint)
    ldnull
    ldftn int32 Junk11(int32 x)
    newobj instance void T_subroutine_260::.ctor(object, native uint)
    call void Junk12(class T_subroutine_4 Xq, class T_subroutine_3 q)
    .line 2950
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 942"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2951
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "ProcedureFunction10:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2952
    call void Junk14()
    .line 2953
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 62 76"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2954
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "ProcedureFunction11:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2955
    ldnull
    ldftn void Junk16()
    newobj instance void T_subroutine_262::.ctor(object, native uint)
    ldc.i4 52
    call void Junk17(class T_subroutine_7 x, int32 i)
    .line 2956
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b 52"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2957
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "ProcedureFunction12:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2958
    call void Junk19()
    .line 2959
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " s/b a"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 2960
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "ProcedureFunction13:   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 2961
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    call int32 Junk20()
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " s/b 37"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
    leave L_Epilogue
}
catch [lpcRuntime]LPC.NonLocalGoto
{
    ldfld int32 [lpcRuntime]LPC.NonLocalGoto::label
    dup
    ldc.i4 1
    beq GOTO_L_2
    rethrow
GOTO_L_2:
    leave L_2
}

L_Epilogue:
    ret

.try L_Entry to L_Epilogue finally
{
    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fa
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fb
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fc
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fe
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fes
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fi
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fp
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fr
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Frc
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fs
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fst
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Fstc
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Ft
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfa
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfb
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfc
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfe
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfes
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfi
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfp
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfr
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfrc
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfs
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfst
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Pfstc
    call instance void [lpcRuntime]LPC.File::Close()

    endfinally
}

}

.line 0xfeefee

//================================================================================
// internal helpers

.method static bool _SetContains(valuetype T_cset s, int32 val)
{
    ldarga s
    ldc.i4 32
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static bool _SetContains(valuetype T_set_118 s, int32 val)
{
    ldarga s
    ldc.i4 4
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static bool _SetContains(valuetype T_set_123 s, int32 val)
{
    ldarga s
    ldc.i4 4
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static bool _SetContains(valuetype T_set_129 s, int32 val)
{
    ldarga s
    ldc.i4 16
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static bool _SetEqual(valuetype T_cset a, valuetype T_cset b)
{
    ldarga a
    ldarga b
    ldc.i4 32
    call bool [lpcRuntime]LPC.Set::Equal(uint8*, uint8*, int32)
    ret
}

.method static bool _SetEqual(valuetype T_set_118 a, valuetype T_set_118 b)
{
    ldarga a
    ldarga b
    ldc.i4 4
    call bool [lpcRuntime]LPC.Set::Equal(uint8*, uint8*, int32)
    ret
}

.method static bool _SetEqual(valuetype T_set_123 a, valuetype T_set_123 b)
{
    ldarga a
    ldarga b
    ldc.i4 4
    call bool [lpcRuntime]LPC.Set::Equal(uint8*, uint8*, int32)
    ret
}

.method static bool _SetEqual(valuetype T_set_129 a, valuetype T_set_129 b)
{
    ldarga a
    ldarga b
    ldc.i4 16
    call bool [lpcRuntime]LPC.Set::Equal(uint8*, uint8*, int32)
    ret
}

.method static bool _SetIsSubset(valuetype T_cset a, valuetype T_cset b)
{
    ldarga a
    ldarga b
    ldc.i4 32
    call bool [lpcRuntime]LPC.Set::IsSubset(uint8*, uint8*, int32)
    ret
}

.method static bool _SetIsSubset(valuetype T_set_118 a, valuetype T_set_118 b)
{
    ldarga a
    ldarga b
    ldc.i4 4
    call bool [lpcRuntime]LPC.Set::IsSubset(uint8*, uint8*, int32)
    ret
}

.method static bool _SetIsSubset(valuetype T_set_123 a, valuetype T_set_123 b)
{
    ldarga a
    ldarga b
    ldc.i4 4
    call bool [lpcRuntime]LPC.Set::IsSubset(uint8*, uint8*, int32)
    ret
}

.method static bool _SetIsSubset(valuetype T_set_129 a, valuetype T_set_129 b)
{
    ldarga a
    ldarga b
    ldc.i4 16
    call bool [lpcRuntime]LPC.Set::IsSubset(uint8*, uint8*, int32)
    ret
}

.method static valuetype T_cset _SetCastTo_T_cset(valuetype T_set_118 s)
{
    .locals init (valuetype T_cset result)

    ldloca result
    ldarga s
    ldc.i4 4
    cpblk
    ldloc result
    ret
}

.method static valuetype T_cset _SetCastTo_T_cset(valuetype T_set_123 s)
{
    .locals init (valuetype T_cset result)

    ldloca result
    ldarga s
    ldc.i4 4
    cpblk
    ldloc result
    ret
}

.method static valuetype T_cset _SetCastTo_T_cset(valuetype T_set_129 s)
{
    .locals init (valuetype T_cset result)

    ldloca result
    ldarga s
    ldc.i4 16
    cpblk
    ldloc result
    ret
}

.method static valuetype T_cset _SetCastTo_T_cset(valuetype T_set_35 s)
{
    .locals init (valuetype T_cset result)

    ldloca result
    ldarga s
    ldc.i4 16
    cpblk
    ldloc result
    ret
}

.method static valuetype T_cset _SetDifference(valuetype T_cset a, valuetype T_cset b)
{
    .locals init (valuetype T_cset result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 32
    call void [lpcRuntime]LPC.Set::Difference(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_cset _SetIntersection(valuetype T_cset a, valuetype T_cset b)
{
    .locals init (valuetype T_cset result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 32
    call void [lpcRuntime]LPC.Set::Intersection(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_cset _SetUnion(valuetype T_cset a, valuetype T_cset b)
{
    .locals init (valuetype T_cset result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 32
    call void [lpcRuntime]LPC.Set::Union(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_set_118 _SetCastTo_T_set_118(valuetype T_cset s)
{
    .locals init (valuetype T_set_118 result)

    ldloca result
    ldarga s
    ldc.i4 4
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_118 _SetDifference(valuetype T_set_118 a, valuetype T_set_118 b)
{
    .locals init (valuetype T_set_118 result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 4
    call void [lpcRuntime]LPC.Set::Difference(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_set_118 _SetIntersection(valuetype T_set_118 a, valuetype T_set_118 b)
{
    .locals init (valuetype T_set_118 result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 4
    call void [lpcRuntime]LPC.Set::Intersection(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_set_118 _SetUnion(valuetype T_set_118 a, valuetype T_set_118 b)
{
    .locals init (valuetype T_set_118 result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 4
    call void [lpcRuntime]LPC.Set::Union(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_set_123 _SetCastTo_T_set_123(valuetype T_cset s)
{
    .locals init (valuetype T_set_123 result)

    ldloca result
    ldarga s
    ldc.i4 4
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_123 _SetDifference(valuetype T_set_123 a, valuetype T_set_123 b)
{
    .locals init (valuetype T_set_123 result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 4
    call void [lpcRuntime]LPC.Set::Difference(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_set_123 _SetIntersection(valuetype T_set_123 a, valuetype T_set_123 b)
{
    .locals init (valuetype T_set_123 result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 4
    call void [lpcRuntime]LPC.Set::Intersection(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_set_123 _SetUnion(valuetype T_set_123 a, valuetype T_set_123 b)
{
    .locals init (valuetype T_set_123 result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 4
    call void [lpcRuntime]LPC.Set::Union(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_set_124 _SetCastTo_T_set_124(valuetype T_set_123 s)
{
    .locals init (valuetype T_set_124 result)

    ldloca result
    ldarga s
    ldc.i4 4
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_126 _SetCastTo_T_set_126(valuetype T_set_123 s)
{
    .locals init (valuetype T_set_126 result)

    ldloca result
    ldarga s
    ldc.i4 4
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_129 _SetCastTo_T_set_129(valuetype T_cset s)
{
    .locals init (valuetype T_set_129 result)

    ldloca result
    ldarga s
    ldc.i4 16
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_129 _SetDifference(valuetype T_set_129 a, valuetype T_set_129 b)
{
    .locals init (valuetype T_set_129 result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 16
    call void [lpcRuntime]LPC.Set::Difference(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_set_129 _SetIntersection(valuetype T_set_129 a, valuetype T_set_129 b)
{
    .locals init (valuetype T_set_129 result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 16
    call void [lpcRuntime]LPC.Set::Intersection(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_set_129 _SetUnion(valuetype T_set_129 a, valuetype T_set_129 b)
{
    .locals init (valuetype T_set_129 result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 16
    call void [lpcRuntime]LPC.Set::Union(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_set_130 _SetCastTo_T_set_130(valuetype T_cset s)
{
    .locals init (valuetype T_set_130 result)

    ldloca result
    ldarga s
    ldc.i4 4
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_130 _SetCastTo_T_set_130(valuetype T_set_129 s)
{
    .locals init (valuetype T_set_130 result)

    ldloca result
    ldarga s
    ldc.i4 4
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_132 _SetCastTo_T_set_132(valuetype T_set_130 s)
{
    .locals init (valuetype T_set_132 result)

    ldloca result
    ldarga s
    ldc.i4 4
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_34 _SetCastTo_T_set_34(valuetype T_cset s)
{
    .locals init (valuetype T_set_34 result)

    ldloca result
    ldarga s
    ldc.i4 16
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_35 _SetCastTo_T_set_35(valuetype T_cset s)
{
    .locals init (valuetype T_set_35 result)

    ldloca result
    ldarga s
    ldc.i4 16
    cpblk
    ldloc result
    ret
}

.method static void _SetCheck(valuetype T_cset s, int32 min, int32 max)
{
    ldarga s
    ldc.i4 32
    ldarg min
    ldarg max
    call void [lpcRuntime]LPC.Set::RTCheck(uint8*, int32, int32, int32)
    ret
}

.method static void _SetCheck(valuetype T_set_123 s, int32 min, int32 max)
{
    ldarga s
    ldc.i4 4
    ldarg min
    ldarg max
    call void [lpcRuntime]LPC.Set::RTCheck(uint8*, int32, int32, int32)
    ret
}

.method static void _SetCheck(valuetype T_set_129 s, int32 min, int32 max)
{
    ldarga s
    ldc.i4 16
    ldarg min
    ldarg max
    call void [lpcRuntime]LPC.Set::RTCheck(uint8*, int32, int32, int32)
    ret
}



.line 0xfeefee

//================================================================================
// global string literals

// "0123456789"
.data STRING_4_DATA = bytearray( 30 31 32 33 34 35 36 37 38 39 )
.field static valuetype T_string10 STRING_4 at STRING_4_DATA

// "crapola   "
.data STRING_7_DATA = bytearray( 63 72 61 70 6f 6c 61 20 20 20 )
.field static valuetype T_string10 STRING_7 at STRING_7_DATA

// "finnork   "
.data STRING_6_DATA = bytearray( 66 69 6e 6e 6f 72 6b 20 20 20 )
.field static valuetype T_string10 STRING_6 at STRING_6_DATA

// "hello, guy"
.data STRING_9_DATA = bytearray( 68 65 6c 6c 6f 2c 20 67 75 79 )
.field static valuetype T_string10 STRING_9 at STRING_9_DATA

// "help me123"
.data STRING_14_DATA = bytearray( 68 65 6c 70 20 6d 65 31 32 33 )
.field static valuetype T_string10 STRING_14 at STRING_14_DATA

// "hi there !"
.data STRING_12_DATA = bytearray( 68 69 20 74 68 65 72 65 20 21 )
.field static valuetype T_string10 STRING_12 at STRING_12_DATA

// "junky01234"
.data STRING_3_DATA = bytearray( 6a 75 6e 6b 79 30 31 32 33 34 )
.field static valuetype T_string10 STRING_3 at STRING_3_DATA

// "my word is"
.data STRING_8_DATA = bytearray( 6d 79 20 77 6f 72 64 20 69 73 )
.field static valuetype T_string10 STRING_8 at STRING_8_DATA

// "parker    "
.data STRING_2_DATA = bytearray( 70 61 72 6b 65 72 20 20 20 20 )
.field static valuetype T_string10 STRING_2 at STRING_2_DATA

// "porker    "
.data STRING_1_DATA = bytearray( 70 6f 72 6b 65 72 20 20 20 20 )
.field static valuetype T_string10 STRING_1 at STRING_1_DATA

// "this one ?"
.data STRING_11_DATA = bytearray( 74 68 69 73 20 6f 6e 65 20 3f )
.field static valuetype T_string10 STRING_11 at STRING_11_DATA

// "total junk"
.data STRING_13_DATA = bytearray( 74 6f 74 61 6c 20 6a 75 6e 6b )
.field static valuetype T_string10 STRING_13 at STRING_13_DATA

// "trash     "
.data STRING_5_DATA = bytearray( 74 72 61 73 68 20 20 20 20 20 )
.field static valuetype T_string10 STRING_5 at STRING_5_DATA

// "what ? who"
.data STRING_10_DATA = bytearray( 77 68 61 74 20 3f 20 77 68 6f )
.field static valuetype T_string10 STRING_10 at STRING_10_DATA


