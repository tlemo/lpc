
#include "commonDefs.il"

.field public static string[] _ProgramArgs

.method static void .cctor()
{
    ldc.i4 4
    newarr string
    dup
    ldc.i4 0
    ldstr "input"
    stelem string
    dup
    ldc.i4 1
    ldstr "output"
    stelem string
    dup
    ldc.i4 2
    ldstr "prd"
    stelem string
    dup
    ldc.i4 3
    ldstr "prr"
    stelem string
    stsfld string[] _ProgramArgs
    ret
}

// "p5_pint.pas"

// line 499
//================================================================================
// scope: getint (level : 2)

// line 0xfeefee

// TYPE array_3 = array [1 .. 4] of uint8;
.class value explicit T_getint_array_3
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
}

// line 0xfeefee

// TYPE record_2 = record;
.class value explicit T_getint_record_2
{
    // alignment = 4
    .size 4
    
    // case true = 1
        
        .field [0] public int32 i
    
    // case false = 0
        
        .field [0] public valuetype T_getint_array_3 b
}

// line 0xfeefee

// TYPE array_4 = array [0 .. 200000] of uint8;
.class value explicit T_array_4
{
    // elem size = 1
    // alignment = 1
    .size 200001

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 200000)
        ldarg index
        ldc.i4 200000
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

.class @getint
{
    // parameters
    .field public int32 a

    // local variables
    .field public int32 _fnvalue
    .field public int8 i
    .field public valuetype T_getint_record_2 r

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 517
//================================================================================
// scope: putint (level : 2)

// line 0xfeefee

// TYPE record_6 = record;
.class value explicit T_putint_record_6
{
    // alignment = 4
    .size 4
    
    // case true = 1
        
        .field [0] public int32 i
    
    // case false = 0
        
        .field [0] public valuetype T_getint_array_3 b
}

.class @putint
{
    // parameters
    .field public int32 a
    .field public int32 x

    // local variables
    .field public int8 i
    .field public valuetype T_putint_record_6 r

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 534
//================================================================================
// scope: getrel (level : 2)

// line 0xfeefee

// TYPE array_10 = array [1 .. 8] of uint8;
.class value explicit T_getrel_array_10
{
    // elem size = 1
    // alignment = 1
    .size 8

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 8)
        ldarg index
        ldc.i4 8
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

// line 0xfeefee

// TYPE record_9 = record;
.class value explicit T_getrel_record_9
{
    // alignment = 8
    .size 8
    
    // case true = 1
        
        .field [0] public float64 r
    
    // case false = 0
        
        .field [0] public valuetype T_getrel_array_10 b
}

.class @getrel
{
    // parameters
    .field public int32 a

    // local variables
    .field public float64 _fnvalue
    .field public int8 i
    .field public valuetype T_getrel_record_9 r

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 551
//================================================================================
// scope: putrel (level : 2)

// line 0xfeefee

// TYPE record_12 = record;
.class value explicit T_putrel_record_12
{
    // alignment = 8
    .size 8
    
    // case true = 1
        
        .field [0] public float64 r
    
    // case false = 0
        
        .field [0] public valuetype T_getrel_array_10 b
}

.class @putrel
{
    // parameters
    .field public int32 a
    .field public float64 f

    // local variables
    .field public int8 i
    .field public valuetype T_putrel_record_12 r

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 568
//================================================================================
// scope: getbol (level : 2)

.class @getbol
{
    // parameters
    .field public int32 a

    // local variables
    .field public bool _fnvalue
    .field public bool b

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 579
//================================================================================
// scope: putbol (level : 2)

.class @putbol
{
    // parameters
    .field public int32 a
    .field public bool b

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 587
//================================================================================
// scope: getset (level : 2)

// line 0xfeefee

// TYPE settype = set of 0 .. 255
.class value explicit T_settype
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
        call instance void T_settype::addValue(int32)
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

// line 0xfeefee

// TYPE array_16 = array [1 .. 32] of uint8;
.class value explicit T_getset_array_16
{
    // elem size = 1
    // alignment = 1
    .size 32

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 32)
        ldarg index
        ldc.i4 32
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

// line 0xfeefee

// TYPE record_15 = record;
.class value explicit T_getset_record_15
{
    // alignment = 4
    .size 32
    
    // case true = 1
        
        .field [0] public valuetype T_settype s
    
    // case false = 0
        
        .field [0] public valuetype T_getset_array_16 b
}

.class @getset
{
    // parameters
    .field public int32 a
    .field public valuetype T_settype* s

    // local variables
    .field public int8 i
    .field public valuetype T_getset_record_15 r

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 604
//================================================================================
// scope: putset (level : 2)

// line 0xfeefee

// TYPE record_18 = record;
.class value explicit T_putset_record_18
{
    // alignment = 4
    .size 32
    
    // case true = 1
        
        .field [0] public valuetype T_settype s
    
    // case false = 0
        
        .field [0] public valuetype T_getset_array_16 b
}

.class @putset
{
    // parameters
    .field public int32 a
    .field public valuetype T_settype s

    // local variables
    .field public int8 i
    .field public valuetype T_putset_record_18 r

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 621
//================================================================================
// scope: getchr (level : 2)

.class @getchr
{
    // parameters
    .field public int32 a

    // local variables
    .field public uint8 _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 629
//================================================================================
// scope: putchr (level : 2)

.class @putchr
{
    // parameters
    .field public int32 a
    .field public uint8 c

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 637
//================================================================================
// scope: getadr (level : 2)

// line 0xfeefee

// TYPE record_21 = record;
.class value explicit T_getadr_record_21
{
    // alignment = 4
    .size 4
    
    // case true = 1
        
        .field [0] public int32 a
    
    // case false = 0
        
        .field [0] public valuetype T_getint_array_3 b
}

.class @getadr
{
    // parameters
    .field public int32 a

    // local variables
    .field public int32 _fnvalue
    .field public int8 i
    .field public valuetype T_getadr_record_21 r

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 654
//================================================================================
// scope: putadr (level : 2)

// line 0xfeefee

// TYPE record_24 = record;
.class value explicit T_putadr_record_24
{
    // alignment = 4
    .size 4
    
    // case true = 1
        
        .field [0] public int32 a
    
    // case false = 0
        
        .field [0] public valuetype T_getint_array_3 b
}

.class @putadr
{
    // parameters
    .field public int32 a
    .field public int32 Ad

    // local variables
    .field public int8 i
    .field public valuetype T_putadr_record_24 r

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 673
//================================================================================
// scope: swpstk (level : 2)

.class @swpstk
{
    // parameters
    .field public int32 l

    // local variables
    .field public int8 i
    .field public int32 p
    .field public valuetype T_getset_array_16 Sb

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 700
//================================================================================
// scope: popint (level : 2)

.class @popint
{
    // parameters
    .field public int32* i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 701
//================================================================================
// scope: pshint (level : 2)

.class @pshint
{
    // parameters
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 702
//================================================================================
// scope: poprel (level : 2)

.class @poprel
{
    // parameters
    .field public float64* r

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 703
//================================================================================
// scope: pshrel (level : 2)

.class @pshrel
{
    // parameters
    .field public float64 r

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 704
//================================================================================
// scope: popset (level : 2)

.class @popset
{
    // parameters
    .field public valuetype T_settype* s

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 705
//================================================================================
// scope: pshset (level : 2)

.class @pshset
{
    // parameters
    .field public valuetype T_settype s

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 706
//================================================================================
// scope: popadr (level : 2)

.class @popadr
{
    // parameters
    .field public int32* a

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 707
//================================================================================
// scope: pshadr (level : 2)

.class @pshadr
{
    // parameters
    .field public int32 a

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 711
//================================================================================
// scope: wrthex (level : 2)

.class @wrthex
{
    // parameters
    .field public int32 f
    .field public int32 v

    // local variables
    .field public int32 d
    .field public int32 i
    .field public int32 p

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 726
//================================================================================
// scope: lstins (level : 2)

// line 0xfeefee

// TYPE array_28 = array [0 .. 255] of bool;
.class value explicit T_array_28
{
    // elem size = 1
    // alignment = 1
    .size 256

    .field [0] public bool elem

    .method public bool& ldadr(int32 index)
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
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

// line 0xfeefee

// TYPE array_30 = array [0 .. 255] of int8;
.class value explicit T_array_30
{
    // elem size = 1
    // alignment = 1
    .size 256

    .field [0] public int8 elem

    .method public int8& ldadr(int32 index)
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
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

// line 0xfeefee

// TYPE alfa = array [1 .. 10] of uint8;
.class value explicit T_alfa
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

    .method public static string arrayToString(valuetype T_alfa)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 10
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

// line 0xfeefee

// TYPE array_31 = array [0 .. 255] of valuetype T_alfa;
.class value explicit T_array_31
{
    // elem size = 10
    // alignment = 1
    .size 2560

    .field [0] public valuetype T_alfa elem

    .method public valuetype T_alfa& ldadr(int32 index)
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

.class @lstins
{
    // parameters
    .field public int32* Ad

    // local variables
    .field public int32 Ads
    .field public uint8 Op
    .field public uint8 p
    .field public int32 q

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 762
//================================================================================
// scope: dmpins (level : 2)

.class @dmpins
{
    // local variables
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 787
//================================================================================
// scope: alignu (level : 2)

.class @alignu
{
    // parameters
    .field public int32 Algn
    .field public int32* Flc

    // local variables
    .field public int32 l

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 796
//================================================================================
// scope: alignd (level : 2)

.class @alignd
{
    // parameters
    .field public int32 Algn
    .field public int32* Flc

    // local variables
    .field public int32 l

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 819
//================================================================================
// scope: load_init (level : 3)

// line 0xfeefee

// TYPE array_208 = array [0 .. 36] of valuetype T_alfa;
.class value explicit T_array_208
{
    // elem size = 10
    // alignment = 1
    .size 370

    .field [0] public valuetype T_alfa elem

    .method public valuetype T_alfa& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 36)
        ldarg index
        ldc.i4 36
        bgt badIndex
    
        ldarg.0
        ldarg index
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

// line 0xfeefee

// TYPE labelrec = record;
.class value explicit T_load_labelrec
{
    // alignment = 4
    .size 8
    
    .field [0] public int32 Val
    .field [4] public int32 St
}

// line 0xfeefee

// TYPE array_247 = array [0 .. 5000] of valuetype T_load_labelrec;
.class value explicit T_load_array_247
{
    // elem size = 8
    // alignment = 4
    .size 40008

    .field [0] public valuetype T_load_labelrec elem

    .method public valuetype T_load_labelrec& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 5000)
        ldarg index
        ldc.i4 5000
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

// line 0xfeefee

// TYPE array_249 = array [1 .. 100] of int32;
.class value explicit T_array_249
{
    // elem size = 4
    // alignment = 4
    .size 400

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
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

.class @load_init
{
    // slink
    .field public class @load _slink

    // local variables
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1047
//================================================================================
// scope: load_errorl (level : 3)

// line 0xfeefee

// TYPE beta = array [1 .. 25] of uint8;
.class value explicit T_beta
{
    // elem size = 1
    // alignment = 1
    .size 25

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 25)
        ldarg index
        ldc.i4 25
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

    .method public static string arrayToString(valuetype T_beta)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 25
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

.class @load_errorl
{
    // slink
    .field public class @load _slink

    // parameters
    .field public valuetype T_beta String

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1053
//================================================================================
// scope: load_dmplabs (level : 3)

.class @load_dmplabs
{
    // slink
    .field public class @load _slink

    // local variables
    .field public int16 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1073
//================================================================================
// scope: load_update (level : 3)

.class @load_update
{
    // slink
    .field public class @load _slink

    // parameters
    .field public int16 x

    // local variables
    .field public int32 Ad
    .field public int32 Curr
    .field public bool Endlist
    .field public uint8 Op
    .field public int32 q
    .field public int32 Succ

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1100
//================================================================================
// scope: load_getnxt (level : 3)

.class @load_getnxt
{
    // slink
    .field public class @load _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1106
//================================================================================
// scope: load_skpspc (level : 3)

.class @load_skpspc
{
    // slink
    .field public class @load _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1111
//================================================================================
// scope: load_getlin (level : 3)

.class @load_getlin
{
    // slink
    .field public class @load _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1119
//================================================================================
// scope: load_generate (level : 3)

.class @load_generate
{
    // slink
    .field public class @load _slink

    // local variables
    .field public bool Again
    .field public int32 x

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1166
//================================================================================
// scope: load_assemble_lookup (level : 4)

.class @load_assemble_lookup
{
    // slink
    .field public class @load_assemble _slink

    // parameters
    .field public int16 x

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1175
//================================================================================
// scope: load_assemble_labelsearch (level : 4)

.class @load_assemble_labelsearch
{
    // slink
    .field public class @load_assemble _slink

    // local variables
    .field public int16 x

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1181
//================================================================================
// scope: load_assemble_getname (level : 4)

.class @load_assemble_getname
{
    // slink
    .field public class @load_assemble _slink

    // local variables
    .field public int8 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1196
//================================================================================
// scope: load_assemble_storeop (level : 4)

.class @load_assemble_storeop
{
    // slink
    .field public class @load_assemble _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1202
//================================================================================
// scope: load_assemble_storep (level : 4)

.class @load_assemble_storep
{
    // slink
    .field public class @load_assemble _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1208
//================================================================================
// scope: load_assemble_storeq (level : 4)

.class @load_assemble_storeq
{
    // slink
    .field public class @load_assemble _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1214
//================================================================================
// scope: load_assemble_storeq1 (level : 4)

.class @load_assemble_storeq1
{
    // slink
    .field public class @load_assemble _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1160
//================================================================================
// scope: load_assemble (level : 3)

// line 0xfeefee

// TYPE array_261 = array [1 .. 1000] of uint8;
.class value explicit T_load_assemble_array_261
{
    // elem size = 1
    // alignment = 1
    .size 1000

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 1000)
        ldarg index
        ldc.i4 1000
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

    .method public static string arrayToString(valuetype T_load_assemble_array_261)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 1000
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

.class @load_assemble
{
    // slink
    .field public class @load _slink

    // local variables
    .field public uint8 c
    .field public int32 i
    .field public int32 l
    .field public int32 Lb
    .field public valuetype T_alfa Name
    .field public float64 r
    .field public valuetype T_settype s
    .field public int32 S1
    .field public valuetype T_load_assemble_array_261 Str
    .field public int32 t
    .field public int32 Ub
    .field public int32 x

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 1166

    .method public
    void Lookup(int16 x)
    {
        .maxstack 32
    
        .locals init(
            class @load_assemble_lookup _F,
            int32 $tmpSwitchValue1)
        
        newobj instance void @load_assemble_lookup::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load_assemble @load_assemble_lookup::_slink
        
        ldloc _F
        ldarg x
        stfld int16 @load_assemble_lookup::x
    
    L_Entry:
        // line 1167
        ldloc _F
        ldfld class @load_assemble @load_assemble_lookup::_slink
        ldfld class @load @load_assemble::_slink
        ldflda valuetype T_load_array_247 @load::Labeltab
        ldloc _F
        ldfld int16 @load_assemble_lookup::x
        call instance valuetype T_load_labelrec& T_load_array_247::ldadr(int32)
        ldfld int32 T_load_labelrec::St
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 0
        bne.un L_check_case_2
        // line 1168
        ldloc _F
        ldfld class @load_assemble @load_assemble_lookup::_slink
        ldfld class @load @load_assemble::_slink
        ldflda valuetype T_load_array_247 @load::Labeltab
        ldloc _F
        ldfld int16 @load_assemble_lookup::x
        call instance valuetype T_load_labelrec& T_load_array_247::ldadr(int32)
        ldfld int32 T_load_labelrec::Val
        stsfld int32 _G::q
        // line 1169
        ldloc _F
        ldfld class @load_assemble @load_assemble_lookup::_slink
        ldfld class @load @load_assemble::_slink
        ldflda valuetype T_load_array_247 @load::Labeltab
        ldloc _F
        ldfld int16 @load_assemble_lookup::x
        call instance valuetype T_load_labelrec& T_load_array_247::ldadr(int32)
        ldsfld int32 _G::Pc
        stfld int32 T_load_labelrec::Val
        br L_case_end_1
    L_check_case_2:
        ldloc $tmpSwitchValue1
        ldc.i4 1
        bne.un L_case_end_1
        // line 1171
        ldloc _F
        ldfld class @load_assemble @load_assemble_lookup::_slink
        ldfld class @load @load_assemble::_slink
        ldflda valuetype T_load_array_247 @load::Labeltab
        ldloc _F
        ldfld int16 @load_assemble_lookup::x
        call instance valuetype T_load_labelrec& T_load_array_247::ldadr(int32)
        ldfld int32 T_load_labelrec::Val
        stsfld int32 _G::q
    L_case_end_1:
    
    L_Epilogue:
        ret
    }

// line 1175

    .method public
    void Labelsearch()
    {
        .maxstack 32
    
        .locals init(class @load_assemble_labelsearch _F)
        
        newobj instance void @load_assemble_labelsearch::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load_assemble @load_assemble_labelsearch::_slink
    
    L_Entry:
        // line 1177
        br L_while_test_2
    L_while_1:
        // line 1177
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldfld class @load_assemble @load_assemble_labelsearch::_slink
        ldfld class @load @load_assemble::_slink
        ldflda uint8 @load::Ch
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        pop
    L_while_test_2:
        ldloc _F
        ldfld class @load_assemble @load_assemble_labelsearch::_slink
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        ldc.i4 108 // 'l'
        ceq
        ldc.i4.0
        ceq
        dup
        brfalse L_AND_shortcut_3
        pop
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        call instance bool [lpcRuntime]LPC.File::Eoln()
        ldc.i4.0
        ceq
    L_AND_shortcut_3:
        brtrue L_while_1
        // line 1178
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldflda int16 @load_assemble_labelsearch::x
        ldc.i4 0
        ldc.i4 5000
        call instance void [lpcRuntime]LPC.File::Read(int16*, int32, int32)
        pop
        // line 1178
        ldloc _F
        ldfld class @load_assemble @load_assemble_labelsearch::_slink
        ldloc _F
        ldfld int16 @load_assemble_labelsearch::x
        call instance void @load_assemble::Lookup(int16 x)
    
    L_Epilogue:
        ret
    }

// line 1181

    .method public
    void Getname()
    {
        .maxstack 32
    
        .locals init(
            class @load_assemble_getname _F,
            int8 $tmpEndValue1,
            int8 $tmpIndex2,
            int8 $tmpIndex3,
            valuetype T_settype $tmpSetLiteral4,
            int8 $tmpSrcIndex5,
            int8 $tmpDstIndex6)
        
        newobj instance void @load_assemble_getname::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load_assemble @load_assemble_getname::_slink
    
        ldloca $tmpSetLiteral4
        ldc.i4 97 // 'a'
        ldc.i4 122 // 'z'
        call instance void T_settype::addRange(int32, int32)
    
    L_Entry:
        // line 1184
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        call instance bool [lpcRuntime]LPC.File::Eof()
        brfalse L_if_end_1
        // line 1184
        ldloc _F
        ldfld class @load_assemble @load_assemble_getname::_slink
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_211    // "unexpected eof on input  "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_1:
        // line 1185
        ldc.i4 10
        stloc $tmpEndValue1
        ldc.i4 1
        dup
        ldloc $tmpEndValue1
        bgt L_for_end_3
        dup
        ldc.i4 1
        ldc.i4 10
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex2
        ldloc _F
        ldloc $tmpIndex2
        stfld int8 @load_assemble_getname::i
    L_for_loop_2:
        // line 1185
        ldloc _F
        ldfld class @load_assemble @load_assemble_getname::_slink
        ldfld class @load @load_assemble::_slink
        ldflda valuetype T_alfa @load::Word
        ldloc _F
        ldfld int8 @load_assemble_getname::i
        call instance uint8& T_alfa::ldadr(int32)
        ldc.i4 32 // ' '
        stobj uint8
        ldloc _F
        ldfld int8 @load_assemble_getname::i
        dup
        ldloc $tmpEndValue1
        beq L_for_end_3
        ldc.i4.1
        add
        dup
        ldc.i4 1
        ldc.i4 10
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex3
        ldloc _F
        ldloc $tmpIndex3
        stfld int8 @load_assemble_getname::i
        br L_for_loop_2
    L_for_end_3:
        pop
        // line 1186
        ldloc _F
        ldc.i4 1
        dup
        ldc.i4 1
        ldc.i4 10
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 @load_assemble_getname::i
        // line 1187
        br L_while_test_5
    L_while_4:
        // line 1188
        ldloc _F
        ldfld int8 @load_assemble_getname::i
        ldc.i4 10
        ceq
        brfalse L_if_end_6
        // line 1188
        ldloc _F
        ldfld class @load_assemble @load_assemble_getname::_slink
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_213    // "Opcode label is too long "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_6:
        // line 1189
        ldloc _F
        ldfld class @load_assemble @load_assemble_getname::_slink
        ldfld class @load @load_assemble::_slink
        ldflda valuetype T_alfa @load::Word
        ldloc _F
        ldfld int8 @load_assemble_getname::i
        call instance uint8& T_alfa::ldadr(int32)
        ldloc _F
        ldfld class @load_assemble @load_assemble_getname::_slink
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        stobj uint8
        // line 1190
        ldloc _F
        ldloc _F
        ldfld int8 @load_assemble_getname::i
        ldc.i4 1
        add
        dup
        ldc.i4 1
        ldc.i4 10
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 @load_assemble_getname::i
        // line 1190
        ldloc _F
        ldfld class @load_assemble @load_assemble_getname::_slink
        ldfld class @load @load_assemble::_slink
        ldc.i4 32 // ' '
        stfld uint8 @load::Ch
        // line 1191
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        call instance bool [lpcRuntime]LPC.File::Eoln()
        ldc.i4.0
        ceq
        brfalse L_if_end_7
        // line 1191
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldfld class @load_assemble @load_assemble_getname::_slink
        ldfld class @load @load_assemble::_slink
        ldflda uint8 @load::Ch
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        pop
    L_if_end_7:
        /* nop */
    L_while_test_5:
        ldloc $tmpSetLiteral4
        ldloc _F
        ldfld class @load_assemble @load_assemble_getname::_slink
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        call bool _SetContains(valuetype T_settype s, int32 val)
        brtrue L_while_4
        // line 1193
        ldc.i4 1
        stloc $tmpSrcIndex5
        ldc.i4 1
        stloc $tmpDstIndex6
    L_pack_loop_8:
        // line 1193
        ldloc _F
        ldfld class @load_assemble @load_assemble_getname::_slink
        ldflda valuetype T_alfa @load_assemble::Name
        ldloc $tmpDstIndex6
        call instance uint8& T_alfa::ldadr(int32)
        ldloc _F
        ldfld class @load_assemble @load_assemble_getname::_slink
        ldfld class @load @load_assemble::_slink
        ldflda valuetype T_alfa @load::Word
        ldloc $tmpSrcIndex5
        call instance uint8& T_alfa::ldadr(int32)
        ldobj uint8
        stobj uint8
        ldloc $tmpSrcIndex5
        ldc.i4.1
        add
        stloc $tmpSrcIndex5
        ldloc $tmpDstIndex6
        ldc.i4.1
        add
        dup
        stloc $tmpDstIndex6
        ldc.i4 10
        ble L_pack_loop_8
    
    L_Epilogue:
        ret
    }

// line 1196

    .method public
    void Storeop()
    {
        .maxstack 32
    
        .locals init(class @load_assemble_storeop _F)
        
        newobj instance void @load_assemble_storeop::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load_assemble @load_assemble_storeop::_slink
    
    L_Entry:
        // line 1198
        ldsfld int32 _G::Pc
        ldc.i4 1
        add
        ldsfld int32 _G::Cp
        cgt
        brfalse L_if_end_1
        // line 1198
        ldloc _F
        ldfld class @load_assemble @load_assemble_storeop::_slink
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_214    // "Program code overflow    "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_1:
        // line 1199
        ldsflda valuetype T_array_4 _G::Store
        ldsfld int32 _G::Pc
        call instance uint8& T_array_4::ldadr(int32)
        ldsfld uint8 _G::Op
        stobj uint8
        // line 1199
        ldsfld int32 _G::Pc
        ldc.i4 1
        add
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int32 _G::Pc
    
    L_Epilogue:
        ret
    }

// line 1202

    .method public
    void Storep()
    {
        .maxstack 32
    
        .locals init(class @load_assemble_storep _F)
        
        newobj instance void @load_assemble_storep::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load_assemble @load_assemble_storep::_slink
    
    L_Entry:
        // line 1204
        ldsfld int32 _G::Pc
        ldc.i4 1
        add
        ldsfld int32 _G::Cp
        cgt
        brfalse L_if_end_1
        // line 1204
        ldloc _F
        ldfld class @load_assemble @load_assemble_storep::_slink
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_214    // "Program code overflow    "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_1:
        // line 1205
        ldsflda valuetype T_array_4 _G::Store
        ldsfld int32 _G::Pc
        call instance uint8& T_array_4::ldadr(int32)
        ldsfld uint8 _G::p
        stobj uint8
        // line 1205
        ldsfld int32 _G::Pc
        ldc.i4 1
        add
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int32 _G::Pc
    
    L_Epilogue:
        ret
    }

// line 1208

    .method public
    void Storeq()
    {
        .maxstack 32
    
        .locals init(class @load_assemble_storeq _F)
        
        newobj instance void @load_assemble_storeq::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load_assemble @load_assemble_storeq::_slink
    
    L_Entry:
        // line 1210
        ldsfld int32 _G::Pc
        ldc.i4 4
        add
        ldsfld int32 _G::Cp
        cgt
        brfalse L_if_end_1
        // line 1210
        ldloc _F
        ldfld class @load_assemble @load_assemble_storeq::_slink
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_214    // "Program code overflow    "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_1:
        // line 1211
        ldsfld int32 _G::Pc
        ldsfld int32 _G::q
        call void Putadr(int32 a, int32 Ad)
        // line 1211
        ldsfld int32 _G::Pc
        ldc.i4 4
        add
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int32 _G::Pc
    
    L_Epilogue:
        ret
    }

// line 1214

    .method public
    void Storeq1()
    {
        .maxstack 32
    
        .locals init(class @load_assemble_storeq1 _F)
        
        newobj instance void @load_assemble_storeq1::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load_assemble @load_assemble_storeq1::_slink
    
    L_Entry:
        // line 1216
        ldsfld int32 _G::Pc
        ldc.i4 4
        add
        ldsfld int32 _G::Cp
        cgt
        brfalse L_if_end_1
        // line 1216
        ldloc _F
        ldfld class @load_assemble @load_assemble_storeq1::_slink
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_214    // "Program code overflow    "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_1:
        // line 1217
        ldsfld int32 _G::Pc
        ldsfld int32 _G::Q1
        call void Putadr(int32 a, int32 Ad)
        // line 1217
        ldsfld int32 _G::Pc
        ldc.i4 4
        add
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int32 _G::Pc
    
    L_Epilogue:
        ret
    }
}


// line 807
//================================================================================
// scope: load (level : 2)

.class @load
{
    // local variables
    .field public uint8 Ch
    .field public int32 Iline
    .field public valuetype T_load_array_247 Labeltab
    .field public int32 Labelvalue
    .field public valuetype T_alfa Word

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 819

    .method public
    void Init()
    {
        .maxstack 32
    
        .locals init(
            class @load_init _F,
            int32 $tmpEndValue1,
            int32 $tmpIndex2,
            int32 $tmpIndex3,
            int32 $tmpEndValue4,
            int32 $tmpIndex5,
            int32 $tmpIndex6,
            int32 $tmpEndValue7,
            int32 $tmpIndex8,
            int32 $tmpIndex9,
            int32 $tmpEndValue10,
            int32 $tmpIndex11,
            int32 $tmpIndex12)
        
        newobj instance void @load_init::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load @load_init::_slink
    
    L_Entry:
        // line 821
        ldc.i4 255
        stloc $tmpEndValue1
        ldc.i4 0
        dup
        ldloc $tmpEndValue1
        bgt L_for_end_2
        stloc $tmpIndex2
        ldloc _F
        ldloc $tmpIndex2
        stfld int32 @load_init::i
    L_for_loop_1:
        // line 821
        ldsflda valuetype T_array_31 _G::Instr
        ldloc _F
        ldfld int32 @load_init::i
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_1    // "          "
        stobj valuetype T_alfa
        ldloc _F
        ldfld int32 @load_init::i
        dup
        ldloc $tmpEndValue1
        beq L_for_end_2
        ldc.i4.1
        add
        stloc $tmpIndex3
        ldloc _F
        ldloc $tmpIndex3
        stfld int32 @load_init::i
        br L_for_loop_1
    L_for_end_2:
        pop
        // line 836
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 0
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_2    // "lodi      "
        stobj valuetype T_alfa
        // line 836
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 0
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 1 // (true)
        stobj bool
        // line 836
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 0
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 837
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 1
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_3    // "ldoi      "
        stobj valuetype T_alfa
        // line 837
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 1
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 837
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 1
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 838
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 2
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_4    // "stri      "
        stobj valuetype T_alfa
        // line 838
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 2
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 1 // (true)
        stobj bool
        // line 838
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 2
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 839
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 3
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_5    // "sroi      "
        stobj valuetype T_alfa
        // line 839
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 3
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 839
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 3
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 840
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 4
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_6    // "lda       "
        stobj valuetype T_alfa
        // line 840
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 4
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 1 // (true)
        stobj bool
        // line 840
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 4
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 841
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 5
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_7    // "lao       "
        stobj valuetype T_alfa
        // line 841
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 5
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 841
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 5
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 842
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 6
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_8    // "stoi      "
        stobj valuetype T_alfa
        // line 842
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 6
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 842
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 6
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 843
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 7
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_9    // "ldc       "
        stobj valuetype T_alfa
        // line 843
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 7
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 843
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 7
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 844
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 8
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_10    // "---       "
        stobj valuetype T_alfa
        // line 844
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 8
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 844
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 8
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 845
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 9
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_11    // "indi      "
        stobj valuetype T_alfa
        // line 845
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 9
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 845
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 9
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 846
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 10
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_12    // "inci      "
        stobj valuetype T_alfa
        // line 846
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 10
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 846
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 10
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 847
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 11
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_13    // "mst       "
        stobj valuetype T_alfa
        // line 847
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 11
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 1 // (true)
        stobj bool
        // line 847
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 11
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 848
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 12
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_14    // "cup       "
        stobj valuetype T_alfa
        // line 848
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 12
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 1 // (true)
        stobj bool
        // line 848
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 12
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 849
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 13
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_15    // "ents      "
        stobj valuetype T_alfa
        // line 849
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 13
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 849
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 13
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 850
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 14
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_16    // "retp      "
        stobj valuetype T_alfa
        // line 850
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 14
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 850
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 14
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 851
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 15
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_17    // "csp       "
        stobj valuetype T_alfa
        // line 851
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 15
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 851
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 15
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 852
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 16
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_18    // "ixa       "
        stobj valuetype T_alfa
        // line 852
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 16
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 852
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 16
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 853
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 17
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_19    // "equa      "
        stobj valuetype T_alfa
        // line 853
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 17
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 853
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 17
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 854
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 18
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_20    // "neqa      "
        stobj valuetype T_alfa
        // line 854
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 18
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 854
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 18
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 855
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 19
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_21    // "geqa      "
        stobj valuetype T_alfa
        // line 855
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 19
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 855
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 19
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 856
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 20
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_22    // "grta      "
        stobj valuetype T_alfa
        // line 856
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 20
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 856
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 20
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 857
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 21
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_23    // "leqa      "
        stobj valuetype T_alfa
        // line 857
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 21
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 857
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 21
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 858
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 22
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_24    // "lesa      "
        stobj valuetype T_alfa
        // line 858
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 22
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 858
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 22
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 859
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 23
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_25    // "ujp       "
        stobj valuetype T_alfa
        // line 859
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 23
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 859
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 23
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 860
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 24
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_26    // "fjp       "
        stobj valuetype T_alfa
        // line 860
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 24
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 860
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 24
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 861
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 25
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_27    // "xjp       "
        stobj valuetype T_alfa
        // line 861
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 25
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 861
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 25
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 862
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 26
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_28    // "chki      "
        stobj valuetype T_alfa
        // line 862
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 26
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 862
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 26
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 863
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 27
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_29    // "eof       "
        stobj valuetype T_alfa
        // line 863
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 27
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 863
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 27
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 864
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 28
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_30    // "adi       "
        stobj valuetype T_alfa
        // line 864
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 28
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 864
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 28
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 865
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 29
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_31    // "adr       "
        stobj valuetype T_alfa
        // line 865
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 29
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 865
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 29
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 866
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 30
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_32    // "sbi       "
        stobj valuetype T_alfa
        // line 866
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 30
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 866
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 30
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 867
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 31
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_33    // "sbr       "
        stobj valuetype T_alfa
        // line 867
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 31
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 867
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 31
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 868
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 32
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_34    // "sgs       "
        stobj valuetype T_alfa
        // line 868
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 32
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 868
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 32
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 869
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 33
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_35    // "flt       "
        stobj valuetype T_alfa
        // line 869
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 33
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 869
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 33
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 870
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 34
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_36    // "flo       "
        stobj valuetype T_alfa
        // line 870
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 34
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 870
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 34
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 871
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 35
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_37    // "trc       "
        stobj valuetype T_alfa
        // line 871
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 35
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 871
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 35
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 872
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 36
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_38    // "ngi       "
        stobj valuetype T_alfa
        // line 872
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 36
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 872
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 36
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 873
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 37
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_39    // "ngr       "
        stobj valuetype T_alfa
        // line 873
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 37
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 873
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 37
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 874
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 38
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_40    // "sqi       "
        stobj valuetype T_alfa
        // line 874
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 38
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 874
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 38
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 875
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 39
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_41    // "sqr       "
        stobj valuetype T_alfa
        // line 875
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 39
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 875
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 39
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 876
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 40
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_42    // "abi       "
        stobj valuetype T_alfa
        // line 876
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 40
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 876
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 40
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 877
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 41
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_43    // "abr       "
        stobj valuetype T_alfa
        // line 877
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 41
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 877
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 41
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 878
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 42
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_44    // "not       "
        stobj valuetype T_alfa
        // line 878
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 42
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 878
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 42
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 879
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 43
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_45    // "and       "
        stobj valuetype T_alfa
        // line 879
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 43
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 879
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 43
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 880
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 44
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_46    // "ior       "
        stobj valuetype T_alfa
        // line 880
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 44
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 880
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 44
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 881
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 45
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_47    // "dif       "
        stobj valuetype T_alfa
        // line 881
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 45
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 881
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 45
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 882
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 46
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_48    // "int       "
        stobj valuetype T_alfa
        // line 882
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 46
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 882
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 46
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 883
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 47
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_49    // "uni       "
        stobj valuetype T_alfa
        // line 883
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 47
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 883
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 47
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 884
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 48
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_50    // "inn       "
        stobj valuetype T_alfa
        // line 884
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 48
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 884
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 48
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 885
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 49
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_51    // "mod       "
        stobj valuetype T_alfa
        // line 885
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 49
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 885
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 49
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 886
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 50
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_52    // "odd       "
        stobj valuetype T_alfa
        // line 886
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 50
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 886
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 50
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 887
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 51
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_53    // "mpi       "
        stobj valuetype T_alfa
        // line 887
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 51
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 887
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 51
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 888
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 52
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_54    // "mpr       "
        stobj valuetype T_alfa
        // line 888
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 52
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 888
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 52
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 889
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 53
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_55    // "dvi       "
        stobj valuetype T_alfa
        // line 889
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 53
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 889
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 53
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 890
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 54
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_56    // "dvr       "
        stobj valuetype T_alfa
        // line 890
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 54
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 890
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 54
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 891
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 55
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_57    // "mov       "
        stobj valuetype T_alfa
        // line 891
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 55
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 891
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 55
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 892
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 56
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_58    // "lca       "
        stobj valuetype T_alfa
        // line 892
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 56
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 892
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 56
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 893
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 57
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_59    // "deci      "
        stobj valuetype T_alfa
        // line 893
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 57
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 893
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 57
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 894
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 58
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_60    // "stp       "
        stobj valuetype T_alfa
        // line 894
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 58
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 894
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 58
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 895
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 59
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_61    // "ordi      "
        stobj valuetype T_alfa
        // line 895
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 59
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 895
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 59
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 896
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 60
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_62    // "chr       "
        stobj valuetype T_alfa
        // line 896
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 60
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 896
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 60
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 897
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 61
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_63    // "ujc       "
        stobj valuetype T_alfa
        // line 897
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 61
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 897
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 61
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 898
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 62
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_64    // "rnd       "
        stobj valuetype T_alfa
        // line 898
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 62
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 898
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 62
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 899
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 63
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_65    // "pck       "
        stobj valuetype T_alfa
        // line 899
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 63
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 899
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 63
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 900
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 64
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_66    // "upk       "
        stobj valuetype T_alfa
        // line 900
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 64
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 900
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 64
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 901
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 65
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_67    // "ldoa      "
        stobj valuetype T_alfa
        // line 901
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 65
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 901
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 65
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 902
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 66
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_68    // "ldor      "
        stobj valuetype T_alfa
        // line 902
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 66
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 902
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 66
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 903
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 67
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_69    // "ldos      "
        stobj valuetype T_alfa
        // line 903
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 67
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 903
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 67
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 904
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 68
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_70    // "ldob      "
        stobj valuetype T_alfa
        // line 904
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 68
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 904
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 68
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 905
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 69
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_71    // "ldoc      "
        stobj valuetype T_alfa
        // line 905
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 69
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 905
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 69
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 906
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 70
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_72    // "stra      "
        stobj valuetype T_alfa
        // line 906
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 70
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 1 // (true)
        stobj bool
        // line 906
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 70
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 907
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 71
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_73    // "strr      "
        stobj valuetype T_alfa
        // line 907
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 71
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 1 // (true)
        stobj bool
        // line 907
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 71
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 908
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 72
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_74    // "strs      "
        stobj valuetype T_alfa
        // line 908
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 72
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 1 // (true)
        stobj bool
        // line 908
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 72
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 909
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 73
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_75    // "strb      "
        stobj valuetype T_alfa
        // line 909
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 73
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 1 // (true)
        stobj bool
        // line 909
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 73
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 910
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 74
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_76    // "strc      "
        stobj valuetype T_alfa
        // line 910
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 74
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 1 // (true)
        stobj bool
        // line 910
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 74
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 911
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 75
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_77    // "sroa      "
        stobj valuetype T_alfa
        // line 911
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 75
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 911
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 75
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 912
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 76
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_78    // "sror      "
        stobj valuetype T_alfa
        // line 912
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 76
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 912
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 76
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 913
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 77
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_79    // "sros      "
        stobj valuetype T_alfa
        // line 913
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 77
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 913
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 77
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 914
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 78
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_80    // "srob      "
        stobj valuetype T_alfa
        // line 914
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 78
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 914
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 78
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 915
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 79
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_81    // "sroc      "
        stobj valuetype T_alfa
        // line 915
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 79
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 915
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 79
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 916
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 80
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_82    // "stoa      "
        stobj valuetype T_alfa
        // line 916
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 80
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 916
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 80
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 917
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 81
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_83    // "stor      "
        stobj valuetype T_alfa
        // line 917
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 81
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 917
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 81
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 918
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 82
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_84    // "stos      "
        stobj valuetype T_alfa
        // line 918
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 82
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 918
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 82
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 919
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 83
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_85    // "stob      "
        stobj valuetype T_alfa
        // line 919
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 83
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 919
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 83
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 920
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 84
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_86    // "stoc      "
        stobj valuetype T_alfa
        // line 920
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 84
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 920
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 84
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 921
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 85
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_87    // "inda      "
        stobj valuetype T_alfa
        // line 921
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 85
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 921
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 85
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 922
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 86
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_88    // "indr      "
        stobj valuetype T_alfa
        // line 922
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 86
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 922
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 86
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 923
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 87
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_89    // "inds      "
        stobj valuetype T_alfa
        // line 923
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 87
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 923
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 87
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 924
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 88
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_90    // "indb      "
        stobj valuetype T_alfa
        // line 924
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 88
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 924
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 88
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 925
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 89
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_91    // "indc      "
        stobj valuetype T_alfa
        // line 925
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 89
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 925
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 89
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 926
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 90
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_92    // "inca      "
        stobj valuetype T_alfa
        // line 926
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 90
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 926
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 90
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 927
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 91
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_93    // "incr      "
        stobj valuetype T_alfa
        // line 927
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 91
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 927
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 91
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 928
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 92
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_94    // "incs      "
        stobj valuetype T_alfa
        // line 928
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 92
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 928
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 92
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 929
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 93
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_95    // "incb      "
        stobj valuetype T_alfa
        // line 929
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 93
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 929
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 93
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 930
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 94
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_96    // "incc      "
        stobj valuetype T_alfa
        // line 930
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 94
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 930
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 94
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 931
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 95
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_97    // "chka      "
        stobj valuetype T_alfa
        // line 931
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 95
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 931
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 95
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 932
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 96
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_98    // "chkr      "
        stobj valuetype T_alfa
        // line 932
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 96
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 932
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 96
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 933
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 97
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_99    // "chks      "
        stobj valuetype T_alfa
        // line 933
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 97
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 933
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 97
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 934
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 98
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_100    // "chkb      "
        stobj valuetype T_alfa
        // line 934
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 98
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 934
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 98
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 935
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 99
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_101    // "chkc      "
        stobj valuetype T_alfa
        // line 935
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 99
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 935
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 99
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 936
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 100
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_102    // "deca      "
        stobj valuetype T_alfa
        // line 936
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 100
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 936
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 100
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 937
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 101
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_103    // "decr      "
        stobj valuetype T_alfa
        // line 937
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 101
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 937
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 101
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 938
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 102
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_104    // "decs      "
        stobj valuetype T_alfa
        // line 938
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 102
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 938
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 102
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 939
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 103
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_105    // "decb      "
        stobj valuetype T_alfa
        // line 939
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 103
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 939
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 103
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 940
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 104
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_106    // "decc      "
        stobj valuetype T_alfa
        // line 940
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 104
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 940
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 104
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 941
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 105
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_107    // "loda      "
        stobj valuetype T_alfa
        // line 941
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 105
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 1 // (true)
        stobj bool
        // line 941
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 105
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 942
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 106
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_108    // "lodr      "
        stobj valuetype T_alfa
        // line 942
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 106
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 1 // (true)
        stobj bool
        // line 942
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 106
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 943
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 107
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_109    // "lods      "
        stobj valuetype T_alfa
        // line 943
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 107
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 1 // (true)
        stobj bool
        // line 943
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 107
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 944
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 108
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_110    // "lodb      "
        stobj valuetype T_alfa
        // line 944
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 108
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 1 // (true)
        stobj bool
        // line 944
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 108
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 945
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 109
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_111    // "lodc      "
        stobj valuetype T_alfa
        // line 945
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 109
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 1 // (true)
        stobj bool
        // line 945
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 109
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 946
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 110
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_112    // "rgs       "
        stobj valuetype T_alfa
        // line 946
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 110
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 946
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 110
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 947
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 111
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_113    // "fbv       "
        stobj valuetype T_alfa
        // line 947
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 111
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 947
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 111
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 948
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 112
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_114    // "ipj       "
        stobj valuetype T_alfa
        // line 948
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 112
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 1 // (true)
        stobj bool
        // line 948
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 112
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 949
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 113
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_115    // "cip       "
        stobj valuetype T_alfa
        // line 949
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 113
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 1 // (true)
        stobj bool
        // line 949
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 113
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 950
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 114
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_116    // "lpa       "
        stobj valuetype T_alfa
        // line 950
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 114
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 1 // (true)
        stobj bool
        // line 950
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 114
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 951
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 115
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_117    // "efb       "
        stobj valuetype T_alfa
        // line 951
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 115
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 951
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 115
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 952
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 116
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_118    // "fvb       "
        stobj valuetype T_alfa
        // line 952
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 116
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 952
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 116
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 953
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 117
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_119    // "dmp       "
        stobj valuetype T_alfa
        // line 953
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 117
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 953
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 117
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 954
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 118
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_120    // "swp       "
        stobj valuetype T_alfa
        // line 954
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 118
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 954
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 118
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 955
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 119
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_121    // "tjp       "
        stobj valuetype T_alfa
        // line 955
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 119
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 955
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 119
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 956
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 120
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_122    // "lip       "
        stobj valuetype T_alfa
        // line 956
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 120
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 1 // (true)
        stobj bool
        // line 956
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 120
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 957
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 121
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_10    // "---       "
        stobj valuetype T_alfa
        // line 957
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 121
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 957
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 121
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 958
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 122
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_10    // "---       "
        stobj valuetype T_alfa
        // line 958
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 122
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 958
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 122
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 959
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 123
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_123    // "ldci      "
        stobj valuetype T_alfa
        // line 959
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 123
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 959
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 123
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 960
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 124
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_124    // "ldcr      "
        stobj valuetype T_alfa
        // line 960
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 124
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 960
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 124
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 961
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 125
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_125    // "ldcn      "
        stobj valuetype T_alfa
        // line 961
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 125
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 961
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 125
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 962
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 126
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_126    // "ldcb      "
        stobj valuetype T_alfa
        // line 962
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 126
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 962
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 126
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 1
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 963
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 127
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_127    // "ldcc      "
        stobj valuetype T_alfa
        // line 963
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 127
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 963
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 127
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 1
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 964
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 128
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_128    // "reti      "
        stobj valuetype T_alfa
        // line 964
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 128
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 964
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 128
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 965
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 129
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_129    // "retr      "
        stobj valuetype T_alfa
        // line 965
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 129
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 965
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 129
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 966
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 130
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_130    // "retc      "
        stobj valuetype T_alfa
        // line 966
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 130
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 966
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 130
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 967
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 131
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_131    // "retb      "
        stobj valuetype T_alfa
        // line 967
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 131
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 967
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 131
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 968
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 132
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_132    // "reta      "
        stobj valuetype T_alfa
        // line 968
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 132
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 968
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 132
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 969
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 133
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_133    // "ordr      "
        stobj valuetype T_alfa
        // line 969
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 133
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 969
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 133
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 970
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 134
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_134    // "ordb      "
        stobj valuetype T_alfa
        // line 970
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 134
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 970
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 134
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 971
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 135
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_135    // "ords      "
        stobj valuetype T_alfa
        // line 971
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 135
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 971
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 135
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 972
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 136
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_136    // "ordc      "
        stobj valuetype T_alfa
        // line 972
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 136
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 972
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 136
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 973
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 137
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_137    // "equi      "
        stobj valuetype T_alfa
        // line 973
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 137
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 973
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 137
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 974
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 138
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_138    // "equr      "
        stobj valuetype T_alfa
        // line 974
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 138
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 974
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 138
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 975
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 139
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_139    // "equb      "
        stobj valuetype T_alfa
        // line 975
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 139
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 975
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 139
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 976
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 140
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_140    // "equs      "
        stobj valuetype T_alfa
        // line 976
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 140
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 976
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 140
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 977
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 141
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_141    // "equc      "
        stobj valuetype T_alfa
        // line 977
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 141
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 977
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 141
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 978
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 142
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_142    // "equm      "
        stobj valuetype T_alfa
        // line 978
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 142
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 978
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 142
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 979
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 143
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_143    // "neqi      "
        stobj valuetype T_alfa
        // line 979
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 143
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 979
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 143
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 980
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 144
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_144    // "neqr      "
        stobj valuetype T_alfa
        // line 980
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 144
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 980
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 144
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 981
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 145
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_145    // "neqb      "
        stobj valuetype T_alfa
        // line 981
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 145
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 981
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 145
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 982
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 146
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_146    // "neqs      "
        stobj valuetype T_alfa
        // line 982
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 146
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 982
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 146
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 983
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 147
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_147    // "neqc      "
        stobj valuetype T_alfa
        // line 983
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 147
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 983
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 147
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 984
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 148
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_148    // "neqm      "
        stobj valuetype T_alfa
        // line 984
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 148
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 984
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 148
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 985
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 149
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_149    // "geqi      "
        stobj valuetype T_alfa
        // line 985
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 149
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 985
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 149
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 986
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 150
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_150    // "geqr      "
        stobj valuetype T_alfa
        // line 986
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 150
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 986
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 150
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 987
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 151
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_151    // "geqb      "
        stobj valuetype T_alfa
        // line 987
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 151
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 987
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 151
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 988
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 152
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_152    // "geqs      "
        stobj valuetype T_alfa
        // line 988
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 152
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 988
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 152
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 989
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 153
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_153    // "geqc      "
        stobj valuetype T_alfa
        // line 989
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 153
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 989
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 153
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 990
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 154
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_154    // "geqm      "
        stobj valuetype T_alfa
        // line 990
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 154
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 990
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 154
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 991
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 155
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_155    // "grti      "
        stobj valuetype T_alfa
        // line 991
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 155
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 991
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 155
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 992
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 156
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_156    // "grtr      "
        stobj valuetype T_alfa
        // line 992
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 156
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 992
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 156
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 993
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 157
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_157    // "grtb      "
        stobj valuetype T_alfa
        // line 993
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 157
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 993
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 157
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 994
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 158
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_158    // "grts      "
        stobj valuetype T_alfa
        // line 994
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 158
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 994
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 158
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 995
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 159
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_159    // "grtc      "
        stobj valuetype T_alfa
        // line 995
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 159
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 995
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 159
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 996
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 160
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_160    // "grtm      "
        stobj valuetype T_alfa
        // line 996
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 160
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 996
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 160
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 997
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 161
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_161    // "leqi      "
        stobj valuetype T_alfa
        // line 997
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 161
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 997
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 161
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 998
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 162
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_162    // "leqr      "
        stobj valuetype T_alfa
        // line 998
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 162
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 998
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 162
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 999
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 163
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_163    // "leqb      "
        stobj valuetype T_alfa
        // line 999
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 163
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 999
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 163
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 1000
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 164
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_164    // "leqs      "
        stobj valuetype T_alfa
        // line 1000
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 164
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 1000
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 164
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 1001
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 165
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_165    // "leqc      "
        stobj valuetype T_alfa
        // line 1001
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 165
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 1001
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 165
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 1002
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 166
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_166    // "leqm      "
        stobj valuetype T_alfa
        // line 1002
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 166
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 1002
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 166
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 1003
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 167
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_167    // "lesi      "
        stobj valuetype T_alfa
        // line 1003
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 167
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 1003
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 167
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 1004
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 168
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_168    // "lesr      "
        stobj valuetype T_alfa
        // line 1004
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 168
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 1004
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 168
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 1005
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 169
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_169    // "lesb      "
        stobj valuetype T_alfa
        // line 1005
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 169
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 1005
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 169
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 1006
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 170
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_170    // "less      "
        stobj valuetype T_alfa
        // line 1006
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 170
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 1006
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 170
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 1007
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 171
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_171    // "lesc      "
        stobj valuetype T_alfa
        // line 1007
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 171
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 1007
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 171
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 1008
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 172
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_172    // "lesm      "
        stobj valuetype T_alfa
        // line 1008
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 172
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 1008
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 172
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 1009
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 173
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_173    // "ente      "
        stobj valuetype T_alfa
        // line 1009
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 173
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 1009
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 173
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 1010
        ldsflda valuetype T_array_31 _G::Instr
        ldc.i4 174
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldsfld valuetype T_alfa STRING_174    // "mrkl*     "
        stobj valuetype T_alfa
        // line 1010
        ldsflda valuetype T_array_28 _G::Insp
        ldc.i4 174
        call instance bool& T_array_28::ldadr(int32)
        ldc.i4 0 // (false)
        stobj bool
        // line 1010
        ldsflda valuetype T_array_30 _G::Insq
        ldc.i4 174
        call instance int8& T_array_30::ldadr(int32)
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        // line 1013
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 0
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_175    // "get       "
        stobj valuetype T_alfa
        // line 1013
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 1
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_176    // "put       "
        stobj valuetype T_alfa
        // line 1014
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 2
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_10    // "---       "
        stobj valuetype T_alfa
        // line 1014
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 3
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_177    // "rln       "
        stobj valuetype T_alfa
        // line 1015
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 4
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_178    // "new       "
        stobj valuetype T_alfa
        // line 1015
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 5
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_179    // "wln       "
        stobj valuetype T_alfa
        // line 1016
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 6
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_180    // "wrs       "
        stobj valuetype T_alfa
        // line 1016
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 7
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_181    // "eln       "
        stobj valuetype T_alfa
        // line 1017
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 8
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_182    // "wri       "
        stobj valuetype T_alfa
        // line 1017
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 9
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_183    // "wrr       "
        stobj valuetype T_alfa
        // line 1018
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 10
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_184    // "wrc       "
        stobj valuetype T_alfa
        // line 1018
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 11
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_185    // "rdi       "
        stobj valuetype T_alfa
        // line 1019
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 12
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_186    // "rdr       "
        stobj valuetype T_alfa
        // line 1019
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 13
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_187    // "rdc       "
        stobj valuetype T_alfa
        // line 1020
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 14
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_188    // "sin       "
        stobj valuetype T_alfa
        // line 1020
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 15
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_189    // "cos       "
        stobj valuetype T_alfa
        // line 1021
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 16
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_190    // "exp       "
        stobj valuetype T_alfa
        // line 1021
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 17
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_191    // "log       "
        stobj valuetype T_alfa
        // line 1022
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 18
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_192    // "sqt       "
        stobj valuetype T_alfa
        // line 1022
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 19
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_193    // "atn       "
        stobj valuetype T_alfa
        // line 1023
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 20
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_10    // "---       "
        stobj valuetype T_alfa
        // line 1023
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 21
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_194    // "pag       "
        stobj valuetype T_alfa
        // line 1024
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 22
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_195    // "rsf       "
        stobj valuetype T_alfa
        // line 1024
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 23
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_196    // "rwf       "
        stobj valuetype T_alfa
        // line 1025
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 24
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_197    // "wrb       "
        stobj valuetype T_alfa
        // line 1025
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 25
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_198    // "wrf       "
        stobj valuetype T_alfa
        // line 1026
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 26
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_199    // "dsp       "
        stobj valuetype T_alfa
        // line 1026
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 27
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_200    // "wbf       "
        stobj valuetype T_alfa
        // line 1027
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 28
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_201    // "wbi       "
        stobj valuetype T_alfa
        // line 1027
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 29
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_202    // "wbr       "
        stobj valuetype T_alfa
        // line 1028
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 30
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_203    // "wbc       "
        stobj valuetype T_alfa
        // line 1028
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 31
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_204    // "wbb       "
        stobj valuetype T_alfa
        // line 1029
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 32
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_205    // "rbf       "
        stobj valuetype T_alfa
        // line 1029
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 33
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_206    // "rsb       "
        stobj valuetype T_alfa
        // line 1030
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 34
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_207    // "rwb       "
        stobj valuetype T_alfa
        // line 1030
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 35
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_208    // "gbf       "
        stobj valuetype T_alfa
        // line 1031
        ldsflda valuetype T_array_208 _G::Sptable
        ldc.i4 36
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldsfld valuetype T_alfa STRING_209    // "pbf       "
        stobj valuetype T_alfa
        // line 1033
        ldc.i4 9
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int32 _G::Pc
        // line 1034
        ldc.i4 200000
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int32 _G::Cp
        // line 1035
        ldc.i4 10
        stloc $tmpEndValue4
        ldc.i4 1
        dup
        ldloc $tmpEndValue4
        bgt L_for_end_4
        stloc $tmpIndex5
        ldloc _F
        ldloc $tmpIndex5
        stfld int32 @load_init::i
    L_for_loop_3:
        // line 1035
        ldloc _F
        ldfld class @load @load_init::_slink
        ldflda valuetype T_alfa @load::Word
        ldloc _F
        ldfld int32 @load_init::i
        call instance uint8& T_alfa::ldadr(int32)
        ldc.i4 32 // ' '
        stobj uint8
        ldloc _F
        ldfld int32 @load_init::i
        dup
        ldloc $tmpEndValue4
        beq L_for_end_4
        ldc.i4.1
        add
        stloc $tmpIndex6
        ldloc _F
        ldloc $tmpIndex6
        stfld int32 @load_init::i
        br L_for_loop_3
    L_for_end_4:
        pop
        // line 1036
        ldc.i4 5000
        stloc $tmpEndValue7
        ldc.i4 0
        dup
        ldloc $tmpEndValue7
        bgt L_for_end_6
        stloc $tmpIndex8
        ldloc _F
        ldloc $tmpIndex8
        stfld int32 @load_init::i
    L_for_loop_5:
        // line 1037
        ldloc _F
        ldfld class @load @load_init::_slink
        ldflda valuetype T_load_array_247 @load::Labeltab
        ldloc _F
        ldfld int32 @load_init::i
        call instance valuetype T_load_labelrec& T_load_array_247::ldadr(int32)
        ldc.i4 1
        neg
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_load_labelrec::Val
        // line 1037
        ldloc _F
        ldfld class @load @load_init::_slink
        ldflda valuetype T_load_array_247 @load::Labeltab
        ldloc _F
        ldfld int32 @load_init::i
        call instance valuetype T_load_labelrec& T_load_array_247::ldadr(int32)
        ldc.i4 0
        stfld int32 T_load_labelrec::St
        ldloc _F
        ldfld int32 @load_init::i
        dup
        ldloc $tmpEndValue7
        beq L_for_end_6
        ldc.i4.1
        add
        stloc $tmpIndex9
        ldloc _F
        ldloc $tmpIndex9
        stfld int32 @load_init::i
        br L_for_loop_5
    L_for_end_6:
        pop
        // line 1039
        ldc.i4 100
        stloc $tmpEndValue10
        ldc.i4 1
        dup
        ldloc $tmpEndValue10
        bgt L_for_end_8
        stloc $tmpIndex11
        ldloc _F
        ldloc $tmpIndex11
        stfld int32 @load_init::i
    L_for_loop_7:
        // line 1039
        ldsflda valuetype T_array_249 _G::Filstate
        ldloc _F
        ldfld int32 @load_init::i
        call instance int32& T_array_249::ldadr(int32)
        ldc.i4 0
        stobj int32
        ldloc _F
        ldfld int32 @load_init::i
        dup
        ldloc $tmpEndValue10
        beq L_for_end_8
        ldc.i4.1
        add
        stloc $tmpIndex12
        ldloc _F
        ldloc $tmpIndex12
        stfld int32 @load_init::i
        br L_for_loop_7
    L_for_end_8:
        pop
        // line 1042
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        call instance void [lpcRuntime]LPC.File::Reset()
        // line 1044
        ldloc _F
        ldfld class @load @load_init::_slink
        ldc.i4 1
        stfld int32 @load::Iline
    
    L_Epilogue:
        ret
    }

// line 1047

    .method public
    void Errorl(valuetype T_beta String)
    {
        .maxstack 32
    
        .locals init(class @load_errorl _F)
        
        newobj instance void @load_errorl::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load @load_errorl::_slink
        
        ldloc _F
        ldarg String
        stfld valuetype T_beta @load_errorl::String
    
    L_Entry:
        // line 1048
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        // line 1049
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "*** Program load error: ["
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldc.i4 1
        ldc.i4.0
        ldloc _F
        ldfld class @load @load_errorl::_slink
        ldfld int32 @load::Iline
        call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
        dup
        ldstr "] "
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldloc _F
        ldfld valuetype T_beta @load_errorl::String
        call string T_beta::arrayToString(valuetype T_beta)
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        // line 1050
        ldc.i4 1
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
    
    L_Epilogue:
        ret
    }

// line 1053

    .method public
    void Dmplabs()
    {
        .maxstack 32
    
        .locals init(
            class @load_dmplabs _F,
            int16 $tmpEndValue1,
            int16 $tmpIndex2,
            int16 $tmpIndex3)
        
        newobj instance void @load_dmplabs::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load @load_dmplabs::_slink
    
    L_Entry:
        // line 1059
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        // line 1060
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "Label table"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        // line 1061
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        // line 1062
        ldc.i4 5000
        stloc $tmpEndValue1
        ldc.i4 1
        dup
        ldloc $tmpEndValue1
        bgt L_for_end_2
        dup
        ldc.i4 0
        ldc.i4 5000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex2
        ldloc _F
        ldloc $tmpIndex2
        stfld int16 @load_dmplabs::i
    L_for_loop_1:
        // line 1062
        ldloc _F
        ldfld class @load @load_dmplabs::_slink
        ldflda valuetype T_load_array_247 @load::Labeltab
        ldloc _F
        ldfld int16 @load_dmplabs::i
        call instance valuetype T_load_labelrec& T_load_array_247::ldadr(int32)
        ldfld int32 T_load_labelrec::Val
        ldc.i4 1
        neg
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_3
        // line 1064
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "Label: "
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldc.i4 5
        ldc.i4.0
        ldloc _F
        ldfld int16 @load_dmplabs::i
        call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
        dup
        ldstr " value: "
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldloc _F
        ldfld class @load @load_dmplabs::_slink
        ldflda valuetype T_load_array_247 @load::Labeltab
        ldloc _F
        ldfld int16 @load_dmplabs::i
        call instance valuetype T_load_labelrec& T_load_array_247::ldadr(int32)
        ldfld int32 T_load_labelrec::Val
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldc.i4 32 // ' '
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        pop
        // line 1065
        ldloc _F
        ldfld class @load @load_dmplabs::_slink
        ldflda valuetype T_load_array_247 @load::Labeltab
        ldloc _F
        ldfld int16 @load_dmplabs::i
        call instance valuetype T_load_labelrec& T_load_array_247::ldadr(int32)
        ldfld int32 T_load_labelrec::St
        ldc.i4 0
        ceq
        brfalse L_else_4
        // line 1065
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "Entered"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        br L_if_end_5
    L_else_4:
        // line 1066
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "Defined"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
    L_if_end_5:
    L_if_end_3:
        ldloc _F
        ldfld int16 @load_dmplabs::i
        dup
        ldloc $tmpEndValue1
        beq L_for_end_2
        ldc.i4.1
        add
        dup
        ldc.i4 0
        ldc.i4 5000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex3
        ldloc _F
        ldloc $tmpIndex3
        stfld int16 @load_dmplabs::i
        br L_for_loop_1
    L_for_end_2:
        pop
        // line 1069
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
    
    L_Epilogue:
        ret
    }

// line 1073

    .method public
    void Update(int16 x)
    {
        .maxstack 32
    
        .locals init(class @load_update _F)
        
        newobj instance void @load_update::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load @load_update::_slink
        
        ldloc _F
        ldarg x
        stfld int16 @load_update::x
    
    L_Entry:
        // line 1079
        ldloc _F
        ldfld class @load @load_update::_slink
        ldflda valuetype T_load_array_247 @load::Labeltab
        ldloc _F
        ldfld int16 @load_update::x
        call instance valuetype T_load_labelrec& T_load_array_247::ldadr(int32)
        ldfld int32 T_load_labelrec::St
        ldc.i4 1
        ceq
        brfalse L_else_1
        // line 1079
        ldloc _F
        ldfld class @load @load_update::_slink
        ldsfld valuetype T_beta STRING_210    // "duplicated label         "
        call instance void @load::Errorl(valuetype T_beta String)
        br L_if_end_2
    L_else_1:
        // line 1081
        ldloc _F
        ldfld class @load @load_update::_slink
        ldflda valuetype T_load_array_247 @load::Labeltab
        ldloc _F
        ldfld int16 @load_update::x
        call instance valuetype T_load_labelrec& T_load_array_247::ldadr(int32)
        ldfld int32 T_load_labelrec::Val
        ldc.i4 1
        neg
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_3
        // line 1082
        ldloc _F
        ldloc _F
        ldfld class @load @load_update::_slink
        ldflda valuetype T_load_array_247 @load::Labeltab
        ldloc _F
        ldfld int16 @load_update::x
        call instance valuetype T_load_labelrec& T_load_array_247::ldadr(int32)
        ldfld int32 T_load_labelrec::Val
        stfld int32 @load_update::Curr
        // line 1082
        ldloc _F
        ldc.i4 0 // (false)
        stfld bool @load_update::Endlist
        // line 1083
        br L_while_test_5
    L_while_4:
        // line 1084
        ldloc _F
        ldloc _F
        ldfld int32 @load_update::Curr
        stfld int32 @load_update::Ad
        // line 1085
        ldloc _F
        ldsflda valuetype T_array_4 _G::Store
        ldloc _F
        ldfld int32 @load_update::Ad
        call instance uint8& T_array_4::ldadr(int32)
        ldobj uint8
        stfld uint8 @load_update::Op
        // line 1086
        ldloc _F
        ldloc _F
        ldfld int32 @load_update::Ad
        ldc.i4 1
        add
        ldsflda valuetype T_array_28 _G::Insp
        ldloc _F
        ldfld uint8 @load_update::Op
        call instance bool& T_array_28::ldadr(int32)
        ldobj bool
        add
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        call int32 Getadr(int32 a)
        stfld int32 @load_update::q
        // line 1087
        ldloc _F
        ldloc _F
        ldfld int32 @load_update::q
        stfld int32 @load_update::Succ
        // line 1088
        ldloc _F
        ldloc _F
        ldfld class @load @load_update::_slink
        ldfld int32 @load::Labelvalue
        stfld int32 @load_update::q
        // line 1089
        ldloc _F
        ldloc _F
        ldfld int32 @load_update::Curr
        stfld int32 @load_update::Ad
        // line 1090
        ldloc _F
        ldfld int32 @load_update::Ad
        ldc.i4 1
        add
        ldsflda valuetype T_array_28 _G::Insp
        ldloc _F
        ldfld uint8 @load_update::Op
        call instance bool& T_array_28::ldadr(int32)
        ldobj bool
        add
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        ldloc _F
        ldfld int32 @load_update::q
        call void Putadr(int32 a, int32 Ad)
        // line 1091
        ldloc _F
        ldfld int32 @load_update::Succ
        ldc.i4 1
        neg
        ceq
        brfalse L_else_6
        // line 1091
        ldloc _F
        ldc.i4 1 // (true)
        stfld bool @load_update::Endlist
        br L_if_end_7
    L_else_6:
        // line 1092
        ldloc _F
        ldloc _F
        ldfld int32 @load_update::Succ
        stfld int32 @load_update::Curr
    L_if_end_7:
    L_while_test_5:
        ldloc _F
        ldfld bool @load_update::Endlist
        ldc.i4.0
        ceq
        brtrue L_while_4
    L_if_end_3:
        // line 1095
        ldloc _F
        ldfld class @load @load_update::_slink
        ldflda valuetype T_load_array_247 @load::Labeltab
        ldloc _F
        ldfld int16 @load_update::x
        call instance valuetype T_load_labelrec& T_load_array_247::ldadr(int32)
        ldc.i4 1
        stfld int32 T_load_labelrec::St
        // line 1096
        ldloc _F
        ldfld class @load @load_update::_slink
        ldflda valuetype T_load_array_247 @load::Labeltab
        ldloc _F
        ldfld int16 @load_update::x
        call instance valuetype T_load_labelrec& T_load_array_247::ldadr(int32)
        ldloc _F
        ldfld class @load @load_update::_slink
        ldfld int32 @load::Labelvalue
        stfld int32 T_load_labelrec::Val
        /* nop */
    L_if_end_2:
    
    L_Epilogue:
        ret
    }

// line 1100

    .method public
    void Getnxt()
    {
        .maxstack 32
    
        .locals init(class @load_getnxt _F)
        
        newobj instance void @load_getnxt::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load @load_getnxt::_slink
    
    L_Entry:
        // line 1102
        ldloc _F
        ldfld class @load @load_getnxt::_slink
        ldc.i4 32 // ' '
        stfld uint8 @load::Ch
        // line 1103
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        call instance bool [lpcRuntime]LPC.File::Eoln()
        ldc.i4.0
        ceq
        brfalse L_if_end_1
        // line 1103
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldfld class @load @load_getnxt::_slink
        ldflda uint8 @load::Ch
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        pop
    L_if_end_1:
    
    L_Epilogue:
        ret
    }

// line 1106

    .method public
    void Skpspc()
    {
        .maxstack 32
    
        .locals init(class @load_skpspc _F)
        
        newobj instance void @load_skpspc::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load @load_skpspc::_slink
    
    L_Entry:
        // line 1108
        br L_while_test_2
    L_while_1:
        // line 1108
        ldloc _F
        ldfld class @load @load_skpspc::_slink
        call instance void @load::Getnxt()
    L_while_test_2:
        ldloc _F
        ldfld class @load @load_skpspc::_slink
        ldfld uint8 @load::Ch
        ldc.i4 32 // ' '
        ceq
        dup
        brfalse L_AND_shortcut_3
        pop
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        call instance bool [lpcRuntime]LPC.File::Eoln()
        ldc.i4.0
        ceq
    L_AND_shortcut_3:
        brtrue L_while_1
    
    L_Epilogue:
        ret
    }

// line 1111

    .method public
    void Getlin()
    {
        .maxstack 32
    
        .locals init(class @load_getlin _F)
        
        newobj instance void @load_getlin::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load @load_getlin::_slink
    
    L_Entry:
        // line 1113
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        call instance void [lpcRuntime]LPC.File::ReadLn()
        // line 1114
        ldloc _F
        ldfld class @load @load_getlin::_slink
        ldloc _F
        ldfld class @load @load_getlin::_slink
        ldfld int32 @load::Iline
        ldc.i4 1
        add
        stfld int32 @load::Iline
    
    L_Epilogue:
        ret
    }

// line 1119

    .method public
    void Generate()
    {
        .maxstack 32
    
        .locals init(
            class @load_generate _F,
            valuetype T_settype $tmpSetLiteral1,
            uint8 $tmpSwitchValue2)
        
        newobj instance void @load_generate::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load @load_generate::_slink
    
        ldloca $tmpSetLiteral1
        ldc.i4 105 // 'i'
        call instance void T_settype::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 108 // 'l'
        call instance void T_settype::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 113 // 'q'
        call instance void T_settype::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 32 // ' '
        call instance void T_settype::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 33 // '!'
        call instance void T_settype::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 58 // ':'
        call instance void T_settype::addValue(int32)
    
    L_Entry:
        // line 1123
        ldloc _F
        ldc.i4 1 // (true)
        stfld bool @load_generate::Again
        // line 1124
        br L_while_test_2
    L_while_1:
        // line 1125
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        call instance bool [lpcRuntime]LPC.File::Eof()
        brfalse L_if_end_3
        // line 1125
        ldloc _F
        ldfld class @load @load_generate::_slink
        ldsfld valuetype T_beta STRING_211    // "unexpected eof on input  "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_3:
        // line 1126
        ldloc _F
        ldfld class @load @load_generate::_slink
        call instance void @load::Getnxt()
        // line 1127
        ldloc $tmpSetLiteral1
        ldloc _F
        ldfld class @load @load_generate::_slink
        ldfld uint8 @load::Ch
        call bool _SetContains(valuetype T_settype s, int32 val)
        ldc.i4.0
        ceq
        brfalse L_if_end_4
        // line 1128
        ldloc _F
        ldfld class @load @load_generate::_slink
        ldsfld valuetype T_beta STRING_212    // "unexpected line start    "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_4:
        // line 1129
        ldloc _F
        ldfld class @load @load_generate::_slink
        ldfld uint8 @load::Ch
        stloc $tmpSwitchValue2
        ldloc $tmpSwitchValue2
        ldc.i4 105 // 'i'
        bne.un L_check_case_6
        // line 1130
        ldloc _F
        ldfld class @load @load_generate::_slink
        call instance void @load::Getlin()
        br L_case_end_5
    L_check_case_6:
        ldloc $tmpSwitchValue2
        ldc.i4 108 // 'l'
        bne.un L_check_case_7
        // line 1131
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldflda int32 @load_generate::x
        ldc.i4 -2147483648
        ldc.i4 2147483647
        call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
        pop
        // line 1132
        ldloc _F
        ldfld class @load @load_generate::_slink
        call instance void @load::Getnxt()
        // line 1133
        ldloc _F
        ldfld class @load @load_generate::_slink
        ldfld uint8 @load::Ch
        ldc.i4 61 // '='
        ceq
        brfalse L_else_8
        // line 1133
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldfld class @load @load_generate::_slink
        ldflda int32 @load::Labelvalue
        ldc.i4 -200000
        ldc.i4 200000
        call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
        pop
        br L_if_end_9
    L_else_8:
        // line 1134
        ldloc _F
        ldfld class @load @load_generate::_slink
        ldsfld int32 _G::Pc
        stfld int32 @load::Labelvalue
    L_if_end_9:
        // line 1135
        ldloc _F
        ldfld class @load @load_generate::_slink
        ldloc _F
        ldfld int32 @load_generate::x
        dup
        ldc.i4 0
        ldc.i4 5000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        call instance void @load::Update(int16 x)
        // line 1135
        ldloc _F
        ldfld class @load @load_generate::_slink
        call instance void @load::Getlin()
        br L_case_end_5
    L_check_case_7:
        ldloc $tmpSwitchValue2
        ldc.i4 113 // 'q'
        bne.un L_check_case_10
        // line 1137
        ldloc _F
        ldc.i4 0 // (false)
        stfld bool @load_generate::Again
        // line 1137
        ldloc _F
        ldfld class @load @load_generate::_slink
        call instance void @load::Getlin()
        br L_case_end_5
    L_check_case_10:
        ldloc $tmpSwitchValue2
        ldc.i4 32 // ' '
        bne.un L_check_case_11
        // line 1138
        ldloc _F
        ldfld class @load @load_generate::_slink
        call instance void @load::Getnxt()
        // line 1138
        ldloc _F
        ldfld class @load @load_generate::_slink
        call instance void @load::Assemble()
        br L_case_end_5
    L_check_case_11:
        ldloc $tmpSwitchValue2
        ldc.i4 58 // ':'
        bne.un L_case_end_5
        // line 1141
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldflda int32 @load_generate::x
        ldc.i4 -2147483648
        ldc.i4 2147483647
        call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
        pop
        // line 1142
        ldc.i4 1 // (true)
        brfalse L_if_end_12
        // line 1145
        ldsflda valuetype T_array_4 _G::Store
        ldsfld int32 _G::Pc
        call instance uint8& T_array_4::ldadr(int32)
        ldc.i4 174
        dup
        ldc.i4 0
        ldc.i4 255
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj uint8
        // line 1145
        ldsfld int32 _G::Pc
        ldc.i4 1
        add
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int32 _G::Pc
        // line 1146
        ldsfld int32 _G::Pc
        ldloc _F
        ldfld int32 @load_generate::x
        call void Putint(int32 a, int32 x)
        // line 1146
        ldsfld int32 _G::Pc
        ldc.i4 4
        add
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int32 _G::Pc
    L_if_end_12:
        // line 1151
        br L_while_test_14
    L_while_13:
        // line 1152
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldsflda uint8 _G::c
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        pop
    L_while_test_14:
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        call instance bool [lpcRuntime]LPC.File::Eoln()
        ldc.i4.0
        ceq
        brtrue L_while_13
        // line 1153
        ldloc _F
        ldfld class @load @load_generate::_slink
        call instance void @load::Getlin()
    L_case_end_5:
        /* nop */
    L_while_test_2:
        ldloc _F
        ldfld bool @load_generate::Again
        brtrue L_while_1
    
    L_Epilogue:
        ret
    }

// line 1160

    .method public
    void Assemble()
    {
        .maxstack 32
    
        .locals init(
            class @load_assemble _F,
            uint8 $tmpSwitchValue1,
            uint8 $tmpSwitchValue2,
            valuetype T_settype $tmpSetLiteral3,
            valuetype T_settype $tmpSetLiteral4,
            int32 $tmpEndValue5,
            int32 $tmpIndex6,
            int32 $tmpIndex7,
            int32 $tmpEndValue8,
            int32 $tmpIndex9,
            int32 $tmpIndex10)
        
        newobj instance void @load_assemble::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load @load_assemble::_slink
    
    
    L_Entry:
        // line 1220
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 255
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld uint8 _G::p
        // line 1220
        ldc.i4 0
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int32 _G::q
        // line 1220
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 255
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld uint8 _G::Op
        // line 1221
        ldloc _F
        call instance void @load_assemble::Getname()
        // line 1223
        br L_while_test_2
    L_while_1:
        // line 1223
        ldsfld uint8 _G::Op
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 255
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld uint8 _G::Op
    L_while_test_2:
        ldsflda valuetype T_array_31 _G::Instr
        ldsfld uint8 _G::Op
        call instance valuetype T_alfa& T_array_31::ldadr(int32)
        ldobj valuetype T_alfa
        call string T_alfa::arrayToString(valuetype T_alfa)
        ldloc _F
        ldfld valuetype T_alfa @load_assemble::Name
        call string T_alfa::arrayToString(valuetype T_alfa)
        call bool [lpcRuntime]LPC.Helpers::StrcmpNE(string, string)
        dup
        brfalse L_AND_shortcut_3
        pop
        ldsfld uint8 _G::Op
        ldc.i4 255
        clt
    L_AND_shortcut_3:
        brtrue L_while_1
        // line 1224
        ldsfld uint8 _G::Op
        ldc.i4 255
        ceq
        brfalse L_if_end_4
        // line 1224
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_215    // "illegal instruction      "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_4:
        // line 1226
        ldsfld uint8 _G::Op
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 0
        beq L_case_7
        ldloc $tmpSwitchValue1
        ldc.i4 105
        beq L_case_7
        ldloc $tmpSwitchValue1
        ldc.i4 106
        beq L_case_7
        ldloc $tmpSwitchValue1
        ldc.i4 107
        beq L_case_7
        ldloc $tmpSwitchValue1
        ldc.i4 108
        beq L_case_7
        ldloc $tmpSwitchValue1
        ldc.i4 109
        beq L_case_7
        ldloc $tmpSwitchValue1
        ldc.i4 2
        beq L_case_7
        ldloc $tmpSwitchValue1
        ldc.i4 70
        beq L_case_7
        ldloc $tmpSwitchValue1
        ldc.i4 71
        beq L_case_7
        ldloc $tmpSwitchValue1
        ldc.i4 72
        beq L_case_7
        ldloc $tmpSwitchValue1
        ldc.i4 73
        beq L_case_7
        ldloc $tmpSwitchValue1
        ldc.i4 74
        beq L_case_7
        ldloc $tmpSwitchValue1
        ldc.i4 4
        beq L_case_7
        ldloc $tmpSwitchValue1
        ldc.i4 120
        beq L_case_7
        br L_check_case_6
    L_case_7:
        // line 1230
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldsflda uint8 _G::p
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::Read(uint8*, int32, int32)
        dup
        ldsflda int32 _G::q
        ldc.i4 -200000
        ldc.i4 200000
        call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
        pop
        // line 1230
        ldloc _F
        call instance void @load_assemble::Storeop()
        // line 1230
        ldloc _F
        call instance void @load_assemble::Storep()
        // line 1231
        ldloc _F
        call instance void @load_assemble::Storeq()
        br L_case_end_5
    L_check_case_6:
        ldloc $tmpSwitchValue1
        ldc.i4 12
        bne.un L_check_case_8
        // line 1236
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldflda int32 @load_assemble::t
        ldc.i4 -2147483648
        ldc.i4 2147483647
        call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
        pop
        // line 1236
        ldloc _F
        ldfld int32 @load_assemble::t
        dup
        ldc.i4 0
        ldc.i4 255
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld uint8 _G::p
        // line 1236
        ldloc _F
        call instance void @load_assemble::Labelsearch()
        // line 1236
        ldloc _F
        call instance void @load_assemble::Storeop()
        // line 1237
        ldloc _F
        call instance void @load_assemble::Storep()
        // line 1237
        ldloc _F
        call instance void @load_assemble::Storeq()
        br L_case_end_5
    L_check_case_8:
        ldloc $tmpSwitchValue1
        ldc.i4 11
        beq L_case_10
        ldloc $tmpSwitchValue1
        ldc.i4 113
        beq L_case_10
        br L_check_case_9
    L_case_10:
        // line 1240
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldsflda uint8 _G::p
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::Read(uint8*, int32, int32)
        pop
        // line 1240
        ldloc _F
        call instance void @load_assemble::Storeop()
        // line 1240
        ldloc _F
        call instance void @load_assemble::Storep()
        br L_case_end_5
    L_check_case_9:
        ldloc $tmpSwitchValue1
        ldc.i4 142
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 148
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 154
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 160
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 166
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 172
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 5
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 16
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 55
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 117
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 118
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 1
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 65
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 66
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 67
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 68
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 69
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 3
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 75
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 76
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 77
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 78
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 79
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 9
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 85
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 86
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 87
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 88
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 89
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 10
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 90
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 91
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 92
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 93
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 94
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 57
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 100
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 101
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 102
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 103
        beq L_case_12
        ldloc $tmpSwitchValue1
        ldc.i4 104
        beq L_case_12
        br L_check_case_11
    L_case_12:
        // line 1253
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldsflda int32 _G::q
        ldc.i4 -200000
        ldc.i4 200000
        call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
        pop
        // line 1253
        ldloc _F
        call instance void @load_assemble::Storeop()
        // line 1253
        ldloc _F
        call instance void @load_assemble::Storeq()
        br L_case_end_5
    L_check_case_11:
        ldloc $tmpSwitchValue1
        ldc.i4 63
        beq L_case_14
        ldloc $tmpSwitchValue1
        ldc.i4 64
        beq L_case_14
        br L_check_case_13
    L_case_14:
        // line 1256
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldsflda int32 _G::q
        ldc.i4 -200000
        ldc.i4 200000
        call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
        pop
        // line 1256
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldsflda int32 _G::Q1
        ldc.i4 -200000
        ldc.i4 200000
        call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
        pop
        // line 1256
        ldloc _F
        call instance void @load_assemble::Storeop()
        // line 1256
        ldloc _F
        call instance void @load_assemble::Storeq()
        // line 1256
        ldloc _F
        call instance void @load_assemble::Storeq1()
        br L_case_end_5
    L_check_case_13:
        ldloc $tmpSwitchValue1
        ldc.i4 23
        beq L_case_16
        ldloc $tmpSwitchValue1
        ldc.i4 24
        beq L_case_16
        ldloc $tmpSwitchValue1
        ldc.i4 25
        beq L_case_16
        ldloc $tmpSwitchValue1
        ldc.i4 119
        beq L_case_16
        ldloc $tmpSwitchValue1
        ldc.i4 13
        beq L_case_16
        ldloc $tmpSwitchValue1
        ldc.i4 173
        beq L_case_16
        br L_check_case_15
    L_case_16:
        // line 1262
        ldloc _F
        call instance void @load_assemble::Labelsearch()
        // line 1262
        ldloc _F
        call instance void @load_assemble::Storeop()
        // line 1262
        ldloc _F
        call instance void @load_assemble::Storeq()
        br L_case_end_5
    L_check_case_15:
        ldloc $tmpSwitchValue1
        ldc.i4 112
        beq L_case_18
        ldloc $tmpSwitchValue1
        ldc.i4 114
        beq L_case_18
        br L_check_case_17
    L_case_18:
        // line 1265
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldsflda uint8 _G::p
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::Read(uint8*, int32, int32)
        pop
        // line 1265
        ldloc _F
        call instance void @load_assemble::Labelsearch()
        // line 1265
        ldloc _F
        call instance void @load_assemble::Storeop()
        // line 1265
        ldloc _F
        call instance void @load_assemble::Storep()
        // line 1265
        ldloc _F
        call instance void @load_assemble::Storeq()
        br L_case_end_5
    L_check_case_17:
        ldloc $tmpSwitchValue1
        ldc.i4 15
        bne.un L_check_case_19
        // line 1267
        ldloc _F
        ldfld class @load @load_assemble::_slink
        call instance void @load::Skpspc()
        // line 1267
        ldloc _F
        call instance void @load_assemble::Getname()
        // line 1268
        br L_while_test_21
    L_while_20:
        // line 1269
        ldsfld int32 _G::q
        ldc.i4 1
        add
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int32 _G::q
        // line 1269
        ldsfld int32 _G::q
        ldc.i4 36
        cgt
        brfalse L_if_end_22
        // line 1270
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_216    // "std proc/func not found  "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_22:
    L_while_test_21:
        ldloc _F
        ldfld valuetype T_alfa @load_assemble::Name
        call string T_alfa::arrayToString(valuetype T_alfa)
        ldsflda valuetype T_array_208 _G::Sptable
        ldsfld int32 _G::q
        call instance valuetype T_alfa& T_array_208::ldadr(int32)
        ldobj valuetype T_alfa
        call string T_alfa::arrayToString(valuetype T_alfa)
        call bool [lpcRuntime]LPC.Helpers::StrcmpNE(string, string)
        brtrue L_while_20
        // line 1272
        ldloc _F
        call instance void @load_assemble::Storeop()
        // line 1272
        ldloc _F
        call instance void @load_assemble::Storeq()
        br L_case_end_5
    L_check_case_19:
        ldloc $tmpSwitchValue1
        ldc.i4 7
        beq L_case_24
        ldloc $tmpSwitchValue1
        ldc.i4 123
        beq L_case_24
        ldloc $tmpSwitchValue1
        ldc.i4 124
        beq L_case_24
        ldloc $tmpSwitchValue1
        ldc.i4 125
        beq L_case_24
        ldloc $tmpSwitchValue1
        ldc.i4 126
        beq L_case_24
        ldloc $tmpSwitchValue1
        ldc.i4 127
        beq L_case_24
        br L_check_case_23
    L_case_24:
        // line 1275
        ldsfld uint8 _G::Op
        stloc $tmpSwitchValue2
        ldloc $tmpSwitchValue2
        ldc.i4 123
        bne.un L_check_case_26
        // line 1276
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldflda int32 @load_assemble::i
        ldc.i4 -2147483648
        ldc.i4 2147483647
        call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
        pop
        // line 1276
        ldloc _F
        call instance void @load_assemble::Storeop()
        // line 1277
        ldsfld int32 _G::Pc
        ldc.i4 4
        add
        ldsfld int32 _G::Cp
        cgt
        brfalse L_if_end_27
        // line 1278
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_214    // "Program code overflow    "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_27:
        // line 1279
        ldsfld int32 _G::Pc
        ldloc _F
        ldfld int32 @load_assemble::i
        call void Putint(int32 a, int32 x)
        // line 1279
        ldsfld int32 _G::Pc
        ldc.i4 4
        add
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int32 _G::Pc
        br L_case_end_25
    L_check_case_26:
        ldloc $tmpSwitchValue2
        ldc.i4 124
        bne.un L_check_case_28
        // line 1282
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldflda float64 @load_assemble::r
        call instance void [lpcRuntime]LPC.File::Read(float64*)
        pop
        // line 1283
        ldsfld int32 _G::Cp
        ldc.i4 8
        sub
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int32 _G::Cp
        // line 1284
        ldc.i4 4
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        ldsflda int32 _G::Cp
        call void Alignd(int32 Algn, int32& Flc)
        // line 1285
        ldsfld int32 _G::Cp
        ldc.i4 0
        cgt
        ldc.i4.0
        ceq
        brfalse L_if_end_29
        // line 1286
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_217    // "constant table overflow  "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_29:
        // line 1287
        ldsfld int32 _G::Cp
        ldloc _F
        ldfld float64 @load_assemble::r
        call void Putrel(int32 a, float64 f)
        // line 1287
        ldsfld int32 _G::Cp
        stsfld int32 _G::q
        // line 1288
        ldloc _F
        call instance void @load_assemble::Storeop()
        // line 1288
        ldloc _F
        call instance void @load_assemble::Storeq()
        br L_case_end_25
    L_check_case_28:
        ldloc $tmpSwitchValue2
        ldc.i4 125
        bne.un L_check_case_30
        // line 1291
        ldloc _F
        call instance void @load_assemble::Storeop()
        br L_case_end_25
    L_check_case_30:
        ldloc $tmpSwitchValue2
        ldc.i4 126
        bne.un L_check_case_31
        // line 1293
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldsflda int32 _G::q
        ldc.i4 -200000
        ldc.i4 200000
        call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
        pop
        // line 1293
        ldloc _F
        call instance void @load_assemble::Storeop()
        // line 1294
        ldsfld int32 _G::Pc
        ldc.i4 1
        add
        ldsfld int32 _G::Cp
        cgt
        brfalse L_if_end_32
        // line 1295
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_214    // "Program code overflow    "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_32:
        // line 1296
        ldsfld int32 _G::Pc
        ldsfld int32 _G::q
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        call void Putbol(int32 a, bool b)
        // line 1296
        ldsfld int32 _G::Pc
        ldc.i4 1
        add
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int32 _G::Pc
        br L_case_end_25
    L_check_case_31:
        ldloc $tmpSwitchValue2
        ldc.i4 127
        bne.un L_check_case_33
        // line 1299
        ldloc _F
        ldfld class @load @load_assemble::_slink
        call instance void @load::Skpspc()
        // line 1300
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        ldc.i4 39 // '''
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_34
        // line 1301
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_218    // "illegal character        "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_34:
        // line 1302
        ldloc _F
        ldfld class @load @load_assemble::_slink
        call instance void @load::Getnxt()
        // line 1302
        ldloc _F
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        stfld uint8 @load_assemble::c
        // line 1303
        ldloc _F
        ldfld class @load @load_assemble::_slink
        call instance void @load::Getnxt()
        // line 1304
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        ldc.i4 39 // '''
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_35
        // line 1305
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_218    // "illegal character        "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_35:
        // line 1306
        ldloc _F
        call instance void @load_assemble::Storeop()
        // line 1307
        ldsfld int32 _G::Pc
        ldc.i4 1
        add
        ldsfld int32 _G::Cp
        cgt
        brfalse L_if_end_36
        // line 1308
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_214    // "Program code overflow    "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_36:
        // line 1309
        ldsfld int32 _G::Pc
        ldloc _F
        ldfld uint8 @load_assemble::c
        call void Putchr(int32 a, uint8 c)
        // line 1309
        ldsfld int32 _G::Pc
        ldc.i4 1
        add
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int32 _G::Pc
        br L_case_end_25
    L_check_case_33:
        ldloc $tmpSwitchValue2
        ldc.i4 7
        bne.un L_case_end_25
        // line 1311
        ldloc _F
        ldfld class @load @load_assemble::_slink
        call instance void @load::Skpspc()
        // line 1312
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        ldc.i4 40 // '('
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_37
        // line 1312
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_219    // "ldc() expected           "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_37:
        // line 1313
        ldloc _F
        ldloc $tmpSetLiteral3
        stfld valuetype T_settype @load_assemble::s
        // line 1313
        ldloc _F
        ldfld class @load @load_assemble::_slink
        call instance void @load::Getnxt()
        // line 1314
        br L_while_test_39
    L_while_38:
        // line 1315
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldflda int32 @load_assemble::S1
        ldc.i4 -2147483648
        ldc.i4 2147483647
        call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
        pop
        // line 1315
        ldloc _F
        ldfld class @load @load_assemble::_slink
        call instance void @load::Getnxt()
        // line 1315
        ldloca $tmpSetLiteral4
        call instance void T_settype::clear()
        ldloca $tmpSetLiteral4
        ldloc _F
        ldfld int32 @load_assemble::S1
        call instance void T_settype::addValue(int32)
        ldloc _F
        ldloc _F
        ldfld valuetype T_settype @load_assemble::s
        ldloc $tmpSetLiteral4
        call valuetype T_settype _SetUnion(valuetype T_settype a, valuetype T_settype b)
        stfld valuetype T_settype @load_assemble::s
    L_while_test_39:
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        ldc.i4 41 // ')'
        ceq
        ldc.i4.0
        ceq
        brtrue L_while_38
        // line 1317
        ldsfld int32 _G::Cp
        ldc.i4 32
        sub
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int32 _G::Cp
        // line 1318
        ldc.i4 1
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        ldsflda int32 _G::Cp
        call void Alignd(int32 Algn, int32& Flc)
        // line 1319
        ldsfld int32 _G::Cp
        ldc.i4 0
        cgt
        ldc.i4.0
        ceq
        brfalse L_if_end_40
        // line 1320
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_217    // "constant table overflow  "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_40:
        // line 1321
        ldsfld int32 _G::Cp
        ldloc _F
        ldfld valuetype T_settype @load_assemble::s
        call void Putset(int32 a, valuetype T_settype s)
        // line 1322
        ldsfld int32 _G::Cp
        stsfld int32 _G::q
        // line 1323
        ldloc _F
        call instance void @load_assemble::Storeop()
        // line 1323
        ldloc _F
        call instance void @load_assemble::Storeq()
    L_case_end_25:
        br L_case_end_5
    L_check_case_23:
        ldloc $tmpSwitchValue1
        ldc.i4 26
        beq L_case_42
        ldloc $tmpSwitchValue1
        ldc.i4 95
        beq L_case_42
        ldloc $tmpSwitchValue1
        ldc.i4 96
        beq L_case_42
        ldloc $tmpSwitchValue1
        ldc.i4 97
        beq L_case_42
        ldloc $tmpSwitchValue1
        ldc.i4 98
        beq L_case_42
        ldloc $tmpSwitchValue1
        ldc.i4 99
        beq L_case_42
        br L_check_case_41
    L_case_42:
        // line 1329
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldflda int32 @load_assemble::Lb
        ldc.i4 -2147483648
        ldc.i4 2147483647
        call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
        dup
        ldloc _F
        ldflda int32 @load_assemble::Ub
        ldc.i4 -2147483648
        ldc.i4 2147483647
        call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
        pop
        // line 1330
        ldsfld uint8 _G::Op
        ldc.i4 95
        ceq
        brfalse L_else_43
        // line 1330
        ldloc _F
        ldfld int32 @load_assemble::Lb
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int32 _G::q
        br L_if_end_44
    L_else_43:
        // line 1333
        ldsfld int32 _G::Cp
        ldc.i4 4
        sub
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int32 _G::Cp
        // line 1334
        ldc.i4 4
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        ldsflda int32 _G::Cp
        call void Alignd(int32 Algn, int32& Flc)
        // line 1335
        ldsfld int32 _G::Cp
        ldc.i4 0
        cgt
        ldc.i4.0
        ceq
        brfalse L_if_end_45
        // line 1335
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_217    // "constant table overflow  "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_45:
        // line 1336
        ldsfld int32 _G::Cp
        ldloc _F
        ldfld int32 @load_assemble::Ub
        call void Putint(int32 a, int32 x)
        // line 1337
        ldsfld int32 _G::Cp
        ldc.i4 4
        sub
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int32 _G::Cp
        // line 1338
        ldc.i4 4
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        ldsflda int32 _G::Cp
        call void Alignd(int32 Algn, int32& Flc)
        // line 1339
        ldsfld int32 _G::Cp
        ldc.i4 0
        cgt
        ldc.i4.0
        ceq
        brfalse L_if_end_46
        // line 1339
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_217    // "constant table overflow  "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_46:
        // line 1340
        ldsfld int32 _G::Cp
        ldloc _F
        ldfld int32 @load_assemble::Lb
        call void Putint(int32 a, int32 x)
        // line 1340
        ldsfld int32 _G::Cp
        stsfld int32 _G::q
    L_if_end_44:
        // line 1342
        ldloc _F
        call instance void @load_assemble::Storeop()
        // line 1342
        ldloc _F
        call instance void @load_assemble::Storeq()
        br L_case_end_5
    L_check_case_41:
        ldloc $tmpSwitchValue1
        ldc.i4 56
        bne.un L_check_case_47
        // line 1345
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldflda int32 @load_assemble::l
        ldc.i4 -2147483648
        ldc.i4 2147483647
        call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
        pop
        // line 1345
        ldloc _F
        ldfld class @load @load_assemble::_slink
        call instance void @load::Skpspc()
        // line 1346
        ldc.i4 1000
        stloc $tmpEndValue5
        ldc.i4 1
        dup
        ldloc $tmpEndValue5
        bgt L_for_end_49
        stloc $tmpIndex6
        ldloc _F
        ldloc $tmpIndex6
        stfld int32 @load_assemble::i
    L_for_loop_48:
        // line 1346
        ldloc _F
        ldflda valuetype T_load_assemble_array_261 @load_assemble::Str
        ldloc _F
        ldfld int32 @load_assemble::i
        call instance uint8& T_load_assemble_array_261::ldadr(int32)
        ldc.i4 32 // ' '
        stobj uint8
        ldloc _F
        ldfld int32 @load_assemble::i
        dup
        ldloc $tmpEndValue5
        beq L_for_end_49
        ldc.i4.1
        add
        stloc $tmpIndex7
        ldloc _F
        ldloc $tmpIndex7
        stfld int32 @load_assemble::i
        br L_for_loop_48
    L_for_end_49:
        pop
        // line 1347
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        ldc.i4 39 // '''
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_50
        // line 1347
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_220    // "bad string format        "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_50:
        // line 1348
        ldloc _F
        ldc.i4 0
        stfld int32 @load_assemble::i
        // line 1349
    L_repeat_51:
        // line 1350
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        call instance bool [lpcRuntime]LPC.File::Eoln()
        brfalse L_if_end_52
        // line 1350
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_221    // "unterminated string      "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_52:
        // line 1351
        ldloc _F
        ldfld class @load @load_assemble::_slink
        call instance void @load::Getnxt()
        // line 1352
        ldloc _F
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        stfld uint8 @load_assemble::c
        // line 1352
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        ldc.i4 39 // '''
        ceq
        dup
        brfalse L_AND_shortcut_53
        pop
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        call instance void [lpcRuntime]LPC.File::VarRead()
        ldflda uint8 [lpcRuntime]LPC.File::FileVar
        ldobj uint8
        ldc.i4 39 // '''
        ceq
    L_AND_shortcut_53:
        brfalse L_if_end_54
        // line 1353
        ldloc _F
        ldfld class @load @load_assemble::_slink
        call instance void @load::Getnxt()
        // line 1353
        ldloc _F
        ldc.i4 32 // ' '
        stfld uint8 @load_assemble::c
    L_if_end_54:
        // line 1355
        ldloc _F
        ldfld uint8 @load_assemble::c
        ldc.i4 39 // '''
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_55
        // line 1356
        ldloc _F
        ldfld int32 @load_assemble::i
        ldc.i4 1000
        clt
        ldc.i4.0
        ceq
        brfalse L_if_end_56
        // line 1356
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_222    // "string overflow          "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_56:
        // line 1357
        ldloc _F
        ldflda valuetype T_load_assemble_array_261 @load_assemble::Str
        ldloc _F
        ldfld int32 @load_assemble::i
        ldc.i4 1
        add
        call instance uint8& T_load_assemble_array_261::ldadr(int32)
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        stobj uint8
        // line 1358
        ldloc _F
        ldloc _F
        ldfld int32 @load_assemble::i
        ldc.i4 1
        add
        stfld int32 @load_assemble::i
    L_if_end_55:
        ldloc _F
        ldfld uint8 @load_assemble::c
        ldc.i4 39 // '''
        ceq
        brfalse L_repeat_51
        // line 1362
        ldsfld int32 _G::Cp
        ldloc _F
        ldfld int32 @load_assemble::l
        sub
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int32 _G::Cp
        // line 1363
        ldsfld int32 _G::Cp
        ldc.i4 0
        cgt
        ldc.i4.0
        ceq
        brfalse L_if_end_57
        // line 1363
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_217    // "constant table overflow  "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_57:
        // line 1364
        ldsfld int32 _G::Cp
        stsfld int32 _G::q
        // line 1365
        ldloc _F
        ldfld int32 @load_assemble::l
        stloc $tmpEndValue8
        ldc.i4 1
        dup
        ldloc $tmpEndValue8
        bgt L_for_end_59
        stloc $tmpIndex9
        ldloc _F
        ldloc $tmpIndex9
        stfld int32 @load_assemble::x
    L_for_loop_58:
        // line 1365
        ldsfld int32 _G::q
        ldloc _F
        ldfld int32 @load_assemble::x
        add
        ldc.i4 1
        sub
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        ldloc _F
        ldflda valuetype T_load_assemble_array_261 @load_assemble::Str
        ldloc _F
        ldfld int32 @load_assemble::x
        call instance uint8& T_load_assemble_array_261::ldadr(int32)
        ldobj uint8
        call void Putchr(int32 a, uint8 c)
        ldloc _F
        ldfld int32 @load_assemble::x
        dup
        ldloc $tmpEndValue8
        beq L_for_end_59
        ldc.i4.1
        add
        stloc $tmpIndex10
        ldloc _F
        ldloc $tmpIndex10
        stfld int32 @load_assemble::x
        br L_for_loop_58
    L_for_end_59:
        pop
        // line 1371
        ldloc _F
        call instance void @load_assemble::Storeop()
        // line 1371
        ldloc _F
        call instance void @load_assemble::Storeq()
        br L_case_end_5
    L_check_case_47:
        ldloc $tmpSwitchValue1
        ldc.i4 14
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 128
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 129
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 130
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 131
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 132
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 17
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 137
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 138
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 139
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 140
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 141
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 18
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 143
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 144
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 145
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 146
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 147
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 19
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 149
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 150
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 151
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 152
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 153
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 20
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 155
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 156
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 157
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 158
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 159
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 21
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 161
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 162
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 163
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 164
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 165
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 22
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 167
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 168
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 169
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 170
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 171
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 59
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 133
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 134
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 135
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 136
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 6
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 80
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 81
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 82
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 83
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 84
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 27
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 28
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 29
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 30
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 31
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 32
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 33
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 34
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 35
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 36
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 37
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 38
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 39
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 40
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 41
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 42
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 43
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 44
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 45
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 46
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 47
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 48
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 49
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 50
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 51
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 52
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 53
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 54
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 58
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 60
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 62
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 110
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 111
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 115
        beq L_case_61
        ldloc $tmpSwitchValue1
        ldc.i4 116
        beq L_case_61
        br L_check_case_60
    L_case_61:
        // line 1393
        ldloc _F
        call instance void @load_assemble::Storeop()
        br L_case_end_5
    L_check_case_60:
        ldloc $tmpSwitchValue1
        ldc.i4 61
        bne.un L_case_end_5
        // line 1397
        ldloc _F
        call instance void @load_assemble::Storeop()
        // line 1397
        ldc.i4 0
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int32 _G::q
        // line 1397
        ldloc _F
        call instance void @load_assemble::Storeq()
    L_case_end_5:
        // line 1401
        ldloc _F
        ldfld class @load @load_assemble::_slink
        call instance void @load::Getlin()
    
    L_Epilogue:
        ret
    }
}


// line 1439
//================================================================================
// scope: pmd_pt (level : 3)

.class @pmd_pt
{
    // slink
    .field public class @pmd _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1436
//================================================================================
// scope: pmd (level : 2)

.class @pmd
{
    // local variables
    .field public int32 i
    .field public int32 s

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 1439

    .method public
    void Pt()
    {
        .maxstack 32
    
        .locals init(class @pmd_pt _F)
        
        newobj instance void @pmd_pt::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @pmd @pmd_pt::_slink
    
    L_Entry:
        // line 1440
        ldloc _F
        ldfld class @pmd @pmd_pt::_slink
        ldfld int32 @pmd::i
        ldc.i4 0
        ceq
        brfalse L_if_end_1
        // line 1440
        ldloc _F
        ldfld class @pmd @pmd_pt::_slink
        ldfld int32 @pmd::s
        ldc.i4 6
        call void Wrthex(int32 v, int32 f)
        // line 1440
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr ": "
        call instance void [lpcRuntime]LPC.File::Write(string)
        pop
    L_if_end_1:
        // line 1441
        ldsflda valuetype T_array_4 _G::Store
        ldloc _F
        ldfld class @pmd @pmd_pt::_slink
        ldfld int32 @pmd::s
        call instance uint8& T_array_4::ldadr(int32)
        ldobj uint8
        ldc.i4 2
        call void Wrthex(int32 v, int32 f)
        // line 1441
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldc.i4 32 // ' '
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        pop
        // line 1442
        ldloc _F
        ldfld class @pmd @pmd_pt::_slink
        ldloc _F
        ldfld class @pmd @pmd_pt::_slink
        ldfld int32 @pmd::s
        ldc.i4 1
        sub
        stfld int32 @pmd::s
        // line 1443
        ldloc _F
        ldfld class @pmd @pmd_pt::_slink
        ldloc _F
        ldfld class @pmd @pmd_pt::_slink
        ldfld int32 @pmd::i
        ldc.i4 1
        add
        stfld int32 @pmd::i
        // line 1444
        ldloc _F
        ldfld class @pmd @pmd_pt::_slink
        ldfld int32 @pmd::i
        ldc.i4 16
        ceq
        brfalse L_if_end_2
        // line 1445
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        // line 1445
        ldloc _F
        ldfld class @pmd @pmd_pt::_slink
        ldc.i4 0
        stfld int32 @pmd::i
    L_if_end_2:
        /* nop */
    
    L_Epilogue:
        ret
    }
}


// line 1482
//================================================================================
// scope: errori (level : 2)

.class @errori
{
    // parameters
    .field public valuetype T_beta String

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1489
//================================================================================
// scope: base (level : 2)

.class @base
{
    // parameters
    .field public int32 Ld

    // local variables
    .field public int32 _fnvalue
    .field public int32 Ad

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1496
//================================================================================
// scope: compare (level : 2)

.class @compare
{
    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1507
//================================================================================
// scope: valfil (level : 2)

.class @valfil
{
    // parameters
    .field public int32 Fa

    // local variables
    .field public int32 Ff
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1528
//================================================================================
// scope: valfilwm (level : 2)

.class @valfilwm
{
    // parameters
    .field public int32 Fa

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1534
//================================================================================
// scope: valfilrm (level : 2)

.class @valfilrm
{
    // parameters
    .field public int32 Fa

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1540
//================================================================================
// scope: getop (level : 2)

.class @getop
{
    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1548
//================================================================================
// scope: getp (level : 2)

.class @getp
{
    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1556
//================================================================================
// scope: getq (level : 2)

.class @getq
{
    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1564
//================================================================================
// scope: getq1 (level : 2)

.class @getq1
{
    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1585
//================================================================================
// scope: repspc (level : 2)

.class @repspc
{
    // local variables
    .field public int32 Ad
    .field public int32 l

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1602
//================================================================================
// scope: fndfre (level : 2)

.class @fndfre
{
    // parameters
    .field public int32* Blk
    .field public int32 Len

    // local variables
    .field public int32 b
    .field public int32 l

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1626
//================================================================================
// scope: cscspc (level : 2)

.class @cscspc
{
    // local variables
    .field public int32 Ad
    .field public int32 Ad1
    .field public bool Done
    .field public int32 l
    .field public int32 L1

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1655
//================================================================================
// scope: newspc (level : 2)

.class @newspc
{
    // parameters
    .field public int32* Blk
    .field public int32 Len

    // local variables
    .field public int32 Ad
    .field public int32 Ad1

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1673
//================================================================================
// scope: dspspc (level : 2)

.class @dspspc
{
    // parameters
    .field public int32 Blk
    .field public int32 Len

    // local variables
    .field public int32 Ad

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1690
//================================================================================
// scope: isfree (level : 2)

.class @isfree
{
    // parameters
    .field public int32 Blk

    // local variables
    .field public bool _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1706
//================================================================================
// scope: callsp_readi (level : 3)

.class @callsp_readi
{
    // slink
    .field public class @callsp _slink

    // parameters
    .field public valuetype [lpcRuntime]LPC.File* f
    .field public int32* i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1711
//================================================================================
// scope: callsp_readr (level : 3)

.class @callsp_readr
{
    // slink
    .field public class @callsp _slink

    // parameters
    .field public valuetype [lpcRuntime]LPC.File* f
    .field public float64* r

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1716
//================================================================================
// scope: callsp_readc (level : 3)

.class @callsp_readc
{
    // slink
    .field public class @callsp _slink

    // parameters
    .field public uint8* c
    .field public valuetype [lpcRuntime]LPC.File* f

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1721
//================================================================================
// scope: callsp_writestr (level : 3)

.class @callsp_writestr
{
    // slink
    .field public class @callsp _slink

    // parameters
    .field public int32 Ad
    .field public valuetype [lpcRuntime]LPC.File* f
    .field public int32 l
    .field public int32 w

    // local variables
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1729
//================================================================================
// scope: callsp_getfile (level : 3)

.class @callsp_getfile
{
    // slink
    .field public class @callsp _slink

    // parameters
    .field public valuetype [lpcRuntime]LPC.File* f

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1734
//================================================================================
// scope: callsp_putfile (level : 3)

.class @callsp_putfile
{
    // slink
    .field public class @callsp _slink

    // parameters
    .field public int32* Ad
    .field public valuetype [lpcRuntime]LPC.File* f

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1697
//================================================================================
// scope: callsp (level : 2)

// line 0xfeefee

// TYPE array_297 = array [1 .. 100] of valuetype [lpcRuntime]LPC.File;
.class value explicit T_array_297
{
    // elem size = 8
    // alignment = 8
    .size 800

    .field [0] public valuetype [lpcRuntime]LPC.File elem

    .method public valuetype [lpcRuntime]LPC.File& ldadr(int32 index)
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

// line 0xfeefee

// TYPE array_352 = array [1 .. 100] of bool;
.class value explicit T_array_352
{
    // elem size = 1
    // alignment = 1
    .size 100

    .field [0] public bool elem

    .method public bool& ldadr(int32 index)
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
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

.class @callsp
{
    // local variables
    .field public int32 Ad
    .field public int32 Ad1
    .field public bool b
    .field public uint8 c
    .field public int32 f
    .field public int8 Fn
    .field public int32 i
    .field public int32 j
    .field public int32 l
    .field public bool Line
    .field public float64 r
    .field public int32 w

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 1706

    .method public
    void Readi(valuetype [lpcRuntime]LPC.File& f, int32& i)
    {
        .maxstack 32
    
        .locals init(class @callsp_readi _F,
            valuetype [lpcRuntime]LPC.File& pinned $f,
            int32& pinned $i)
        
        newobj instance void @callsp_readi::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @callsp @callsp_readi::_slink
        
        ldarg f
        stloc $f
        
        ldloc _F
        ldarg f
        stfld valuetype [lpcRuntime]LPC.File* @callsp_readi::f
        
        ldarg i
        stloc $i
        
        ldloc _F
        ldarg i
        stfld int32* @callsp_readi::i
    
    L_Entry:
        // line 1707
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_readi::f
        call instance bool [lpcRuntime]LPC.File::Eof()
        brfalse L_if_end_1
        // line 1707
        ldsfld valuetype T_beta STRING_231    // "End of file              "
        call void Errori(valuetype T_beta String)
    L_if_end_1:
        // line 1708
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_readi::f
        dup
        ldloc _F
        ldfld int32* @callsp_readi::i
        ldc.i4 -2147483648
        ldc.i4 2147483647
        call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
        pop
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 1711

    .method public
    void Readr(valuetype [lpcRuntime]LPC.File& f, float64& r)
    {
        .maxstack 32
    
        .locals init(class @callsp_readr _F,
            valuetype [lpcRuntime]LPC.File& pinned $f,
            float64& pinned $r)
        
        newobj instance void @callsp_readr::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @callsp @callsp_readr::_slink
        
        ldarg f
        stloc $f
        
        ldloc _F
        ldarg f
        stfld valuetype [lpcRuntime]LPC.File* @callsp_readr::f
        
        ldarg r
        stloc $r
        
        ldloc _F
        ldarg r
        stfld float64* @callsp_readr::r
    
    L_Entry:
        // line 1712
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_readr::f
        call instance bool [lpcRuntime]LPC.File::Eof()
        brfalse L_if_end_1
        // line 1712
        ldsfld valuetype T_beta STRING_231    // "End of file              "
        call void Errori(valuetype T_beta String)
    L_if_end_1:
        // line 1713
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_readr::f
        dup
        ldloc _F
        ldfld float64* @callsp_readr::r
        call instance void [lpcRuntime]LPC.File::Read(float64*)
        pop
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 1716

    .method public
    void Readc(valuetype [lpcRuntime]LPC.File& f, uint8& c)
    {
        .maxstack 32
    
        .locals init(class @callsp_readc _F,
            uint8& pinned $c,
            valuetype [lpcRuntime]LPC.File& pinned $f)
        
        newobj instance void @callsp_readc::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @callsp @callsp_readc::_slink
        
        ldarg c
        stloc $c
        
        ldloc _F
        ldarg c
        stfld uint8* @callsp_readc::c
        
        ldarg f
        stloc $f
        
        ldloc _F
        ldarg f
        stfld valuetype [lpcRuntime]LPC.File* @callsp_readc::f
    
    L_Entry:
        // line 1717
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_readc::f
        call instance bool [lpcRuntime]LPC.File::Eof()
        brfalse L_if_end_1
        // line 1717
        ldsfld valuetype T_beta STRING_231    // "End of file              "
        call void Errori(valuetype T_beta String)
    L_if_end_1:
        // line 1718
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_readc::f
        dup
        ldloc _F
        ldfld uint8* @callsp_readc::c
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        pop
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 1721

    .method public
    void Writestr(valuetype [lpcRuntime]LPC.File& f, int32 Ad, int32 w, int32 l)
    {
        .maxstack 32
    
        .locals init(
            class @callsp_writestr _F,
            int32 $tmpEndValue1,
            int32 $tmpIndex2,
            int32 $tmpIndex3,
            int32 $tmpEndValue4,
            int32 $tmpIndex5,
            int32 $tmpIndex6,
            valuetype [lpcRuntime]LPC.File& pinned $f)
        
        newobj instance void @callsp_writestr::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @callsp @callsp_writestr::_slink
        
        ldloc _F
        ldarg Ad
        stfld int32 @callsp_writestr::Ad
        
        ldarg f
        stloc $f
        
        ldloc _F
        ldarg f
        stfld valuetype [lpcRuntime]LPC.File* @callsp_writestr::f
        
        ldloc _F
        ldarg l
        stfld int32 @callsp_writestr::l
        
        ldloc _F
        ldarg w
        stfld int32 @callsp_writestr::w
    
    L_Entry:
        // line 1724
        ldloc _F
        ldfld int32 @callsp_writestr::w
        ldloc _F
        ldfld int32 @callsp_writestr::l
        cgt
        brfalse L_else_1
        // line 1724
        ldloc _F
        ldfld int32 @callsp_writestr::w
        ldloc _F
        ldfld int32 @callsp_writestr::l
        sub
        stloc $tmpEndValue1
        ldc.i4 1
        dup
        ldloc $tmpEndValue1
        bgt L_for_end_4
        stloc $tmpIndex2
        ldloc _F
        ldloc $tmpIndex2
        stfld int32 @callsp_writestr::i
    L_for_loop_3:
        // line 1724
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_writestr::f
        dup
        ldc.i4 32 // ' '
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        pop
        ldloc _F
        ldfld int32 @callsp_writestr::i
        dup
        ldloc $tmpEndValue1
        beq L_for_end_4
        ldc.i4.1
        add
        stloc $tmpIndex3
        ldloc _F
        ldloc $tmpIndex3
        stfld int32 @callsp_writestr::i
        br L_for_loop_3
    L_for_end_4:
        pop
        br L_if_end_2
    L_else_1:
        // line 1725
        ldloc _F
        ldloc _F
        ldfld int32 @callsp_writestr::w
        stfld int32 @callsp_writestr::l
    L_if_end_2:
        // line 1726
        ldloc _F
        ldfld int32 @callsp_writestr::l
        ldc.i4 1
        sub
        stloc $tmpEndValue4
        ldc.i4 0
        dup
        ldloc $tmpEndValue4
        bgt L_for_end_6
        stloc $tmpIndex5
        ldloc _F
        ldloc $tmpIndex5
        stfld int32 @callsp_writestr::i
    L_for_loop_5:
        // line 1726
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_writestr::f
        dup
        ldloc _F
        ldfld int32 @callsp_writestr::Ad
        ldloc _F
        ldfld int32 @callsp_writestr::i
        add
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        call uint8 Getchr(int32 a)
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        pop
        ldloc _F
        ldfld int32 @callsp_writestr::i
        dup
        ldloc $tmpEndValue4
        beq L_for_end_6
        ldc.i4.1
        add
        stloc $tmpIndex6
        ldloc _F
        ldloc $tmpIndex6
        stfld int32 @callsp_writestr::i
        br L_for_loop_5
    L_for_end_6:
        pop
    
    L_Epilogue:
        ret
    }

// line 1729

    .method public
    void Getfile(valuetype [lpcRuntime]LPC.File& f)
    {
        .maxstack 32
    
        .locals init(class @callsp_getfile _F,
            valuetype [lpcRuntime]LPC.File& pinned $f)
        
        newobj instance void @callsp_getfile::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @callsp @callsp_getfile::_slink
        
        ldarg f
        stloc $f
        
        ldloc _F
        ldarg f
        stfld valuetype [lpcRuntime]LPC.File* @callsp_getfile::f
    
    L_Entry:
        // line 1730
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_getfile::f
        call instance bool [lpcRuntime]LPC.File::Eof()
        brfalse L_if_end_1
        // line 1730
        ldsfld valuetype T_beta STRING_231    // "End of file              "
        call void Errori(valuetype T_beta String)
    L_if_end_1:
        // line 1731
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_getfile::f
        call instance void [lpcRuntime]LPC.File::Get()
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 1734

    .method public
    void Putfile(valuetype [lpcRuntime]LPC.File& f, int32& Ad)
    {
        .maxstack 32
    
        .locals init(class @callsp_putfile _F,
            int32& pinned $Ad,
            valuetype [lpcRuntime]LPC.File& pinned $f)
        
        newobj instance void @callsp_putfile::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @callsp @callsp_putfile::_slink
        
        ldarg Ad
        stloc $Ad
        
        ldloc _F
        ldarg Ad
        stfld int32* @callsp_putfile::Ad
        
        ldarg f
        stloc $f
        
        ldloc _F
        ldarg f
        stfld valuetype [lpcRuntime]LPC.File* @callsp_putfile::f
    
    L_Entry:
        // line 1735
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_putfile::f
        ldflda uint8 [lpcRuntime]LPC.File::FileVar
        ldloc _F
        ldfld int32* @callsp_putfile::Ad
        ldobj int32
        ldc.i4 1
        add
        dup
        ldc.i4 -200000
        ldc.i4 200000
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        call uint8 Getchr(int32 a)
        stobj uint8
        // line 1735
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_putfile::f
        call instance void [lpcRuntime]LPC.File::Put()
    
    L_Epilogue:
        ret
    }
}


// line 262
//================================================================================
// scope: program scope (level : 1)

// global variables
.class _G
{
    .field public static int32 A1
    .field public static int32 A2
    .field public static int32 A3
    .field public static int32 Ad
    .field public static int32 Ad1
    .field public static bool b
    .field public static bool B1
    .field public static bool B2
    .field public static valuetype T_array_297 Bfiltable
    .field public static uint8 c
    .field public static uint8 C1
    .field public static uint8 C2
    .field public static int32 Cp
    .field public static int32 Ep
    .field public static valuetype T_array_352 Filbuff
    .field public static valuetype T_array_249 Filstate
    .field public static valuetype T_array_297 Filtable
    .field public static int8 Fn
    .field public static int32 i
    .field public static int32 I1
    .field public static int32 I2
    .field public static int32 I3
    .field public static int32 I4
    .field public static valuetype [lpcRuntime]LPC.File Input
    .field public static valuetype T_array_28 Insp
    .field public static valuetype T_array_30 Insq
    .field public static valuetype T_array_31 Instr
    .field public static bool Interpreting
    .field public static int32 j
    .field public static int32 Mp
    .field public static int32 Np
    .field public static uint8 Op
    .field public static valuetype [lpcRuntime]LPC.File Output
    .field public static uint8 p
    .field public static int32 Pa
    .field public static int32 Pc
    .field public static int32 Pcs
    .field public static int32 Pctop
    .field public static valuetype [lpcRuntime]LPC.File Prd
    .field public static valuetype [lpcRuntime]LPC.File Prr
    .field public static int32 q
    .field public static int32 Q1
    .field public static float64 R1
    .field public static float64 R2
    .field public static valuetype T_settype S1
    .field public static valuetype T_settype S2
    .field public static int32 Sp
    .field public static valuetype T_array_208 Sptable
    .field public static int32 Srclin
    .field public static valuetype T_array_4 Store
}

// line 499

.method static
int32 Getint(int32 a)
{
    .maxstack 32

    .locals init(
        class @getint _F,
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        int8 $tmpIndex3)
    
    newobj instance void @getint::.ctor()
    stloc _F
    
    ldloc _F
    ldarg a
    stfld int32 @getint::a

L_Entry:
    // line 511
    ldc.i4 4
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 1
    ldc.i4 4
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int8 @getint::i
L_for_loop_1:
    // line 511
    ldloc _F
    ldflda valuetype T_getint_record_2 @getint::r
    ldflda valuetype T_getint_array_3 T_getint_record_2::b
    ldloc _F
    ldfld int8 @getint::i
    call instance uint8& T_getint_array_3::ldadr(int32)
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @getint::a
    ldloc _F
    ldfld int8 @getint::i
    add
    ldc.i4 1
    sub
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    stobj uint8
    ldloc _F
    ldfld int8 @getint::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 1
    ldc.i4 4
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int8 @getint::i
    br L_for_loop_1
L_for_end_2:
    pop
    // line 513
    ldloc _F
    ldloc _F
    ldflda valuetype T_getint_record_2 @getint::r
    ldfld int32 T_getint_record_2::i
    stfld int32 @getint::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld int32 @getint::_fnvalue
    ret
}

// line 517

.method static
void Putint(int32 a, int32 x)
{
    .maxstack 32

    .locals init(
        class @putint _F,
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        int8 $tmpIndex3)
    
    newobj instance void @putint::.ctor()
    stloc _F
    
    ldloc _F
    ldarg a
    stfld int32 @putint::a
    
    ldloc _F
    ldarg x
    stfld int32 @putint::x

L_Entry:
    // line 529
    ldloc _F
    ldflda valuetype T_putint_record_6 @putint::r
    ldloc _F
    ldfld int32 @putint::x
    stfld int32 T_putint_record_6::i
    // line 530
    ldc.i4 4
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 1
    ldc.i4 4
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int8 @putint::i
L_for_loop_1:
    // line 530
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @putint::a
    ldloc _F
    ldfld int8 @putint::i
    add
    ldc.i4 1
    sub
    call instance uint8& T_array_4::ldadr(int32)
    ldloc _F
    ldflda valuetype T_putint_record_6 @putint::r
    ldflda valuetype T_getint_array_3 T_putint_record_6::b
    ldloc _F
    ldfld int8 @putint::i
    call instance uint8& T_getint_array_3::ldadr(int32)
    ldobj uint8
    stobj uint8
    ldloc _F
    ldfld int8 @putint::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 1
    ldc.i4 4
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int8 @putint::i
    br L_for_loop_1
L_for_end_2:
    pop

L_Epilogue:
    ret
}

// line 534

.method static
float64 Getrel(int32 a)
{
    .maxstack 32

    .locals init(
        class @getrel _F,
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        int8 $tmpIndex3)
    
    newobj instance void @getrel::.ctor()
    stloc _F
    
    ldloc _F
    ldarg a
    stfld int32 @getrel::a

L_Entry:
    // line 546
    ldc.i4 8
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 1
    ldc.i4 8
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int8 @getrel::i
L_for_loop_1:
    // line 546
    ldloc _F
    ldflda valuetype T_getrel_record_9 @getrel::r
    ldflda valuetype T_getrel_array_10 T_getrel_record_9::b
    ldloc _F
    ldfld int8 @getrel::i
    call instance uint8& T_getrel_array_10::ldadr(int32)
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @getrel::a
    ldloc _F
    ldfld int8 @getrel::i
    add
    ldc.i4 1
    sub
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    stobj uint8
    ldloc _F
    ldfld int8 @getrel::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 1
    ldc.i4 8
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int8 @getrel::i
    br L_for_loop_1
L_for_end_2:
    pop
    // line 547
    ldloc _F
    ldloc _F
    ldflda valuetype T_getrel_record_9 @getrel::r
    ldfld float64 T_getrel_record_9::r
    stfld float64 @getrel::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld float64 @getrel::_fnvalue
    ret
}

// line 551

.method static
void Putrel(int32 a, float64 f)
{
    .maxstack 32

    .locals init(
        class @putrel _F,
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        int8 $tmpIndex3)
    
    newobj instance void @putrel::.ctor()
    stloc _F
    
    ldloc _F
    ldarg a
    stfld int32 @putrel::a
    
    ldloc _F
    ldarg f
    stfld float64 @putrel::f

L_Entry:
    // line 563
    ldloc _F
    ldflda valuetype T_putrel_record_12 @putrel::r
    ldloc _F
    ldfld float64 @putrel::f
    stfld float64 T_putrel_record_12::r
    // line 564
    ldc.i4 8
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 1
    ldc.i4 8
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int8 @putrel::i
L_for_loop_1:
    // line 564
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @putrel::a
    ldloc _F
    ldfld int8 @putrel::i
    add
    ldc.i4 1
    sub
    call instance uint8& T_array_4::ldadr(int32)
    ldloc _F
    ldflda valuetype T_putrel_record_12 @putrel::r
    ldflda valuetype T_getrel_array_10 T_putrel_record_12::b
    ldloc _F
    ldfld int8 @putrel::i
    call instance uint8& T_getrel_array_10::ldadr(int32)
    ldobj uint8
    stobj uint8
    ldloc _F
    ldfld int8 @putrel::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 1
    ldc.i4 8
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int8 @putrel::i
    br L_for_loop_1
L_for_end_2:
    pop

L_Epilogue:
    ret
}

// line 568

.method static
bool Getbol(int32 a)
{
    .maxstack 32

    .locals init(class @getbol _F)
    
    newobj instance void @getbol::.ctor()
    stloc _F
    
    ldloc _F
    ldarg a
    stfld int32 @getbol::a

L_Entry:
    // line 574
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @getbol::a
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    ldc.i4 0
    ceq
    brfalse L_else_1
    // line 574
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @getbol::b
    br L_if_end_2
L_else_1:
    // line 574
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @getbol::b
L_if_end_2:
    // line 575
    ldloc _F
    ldloc _F
    ldfld bool @getbol::b
    stfld bool @getbol::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld bool @getbol::_fnvalue
    ret
}

// line 579

.method static
void Putbol(int32 a, bool b)
{
    .maxstack 32

    .locals init(class @putbol _F)
    
    newobj instance void @putbol::.ctor()
    stloc _F
    
    ldloc _F
    ldarg a
    stfld int32 @putbol::a
    
    ldloc _F
    ldarg b
    stfld bool @putbol::b

L_Entry:
    // line 583
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @putbol::a
    call instance uint8& T_array_4::ldadr(int32)
    ldloc _F
    ldfld bool @putbol::b
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8

L_Epilogue:
    ret
}

// line 587

.method static
void Getset(int32 a, valuetype T_settype& s)
{
    .maxstack 32

    .locals init(
        class @getset _F,
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        int8 $tmpIndex3,
        valuetype T_settype& pinned $s)
    
    newobj instance void @getset::.ctor()
    stloc _F
    
    ldloc _F
    ldarg a
    stfld int32 @getset::a
    
    ldarg s
    stloc $s
    
    ldloc _F
    ldarg s
    stfld valuetype T_settype* @getset::s

L_Entry:
    // line 599
    ldc.i4 32
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 1
    ldc.i4 32
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int8 @getset::i
L_for_loop_1:
    // line 599
    ldloc _F
    ldflda valuetype T_getset_record_15 @getset::r
    ldflda valuetype T_getset_array_16 T_getset_record_15::b
    ldloc _F
    ldfld int8 @getset::i
    call instance uint8& T_getset_array_16::ldadr(int32)
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @getset::a
    ldloc _F
    ldfld int8 @getset::i
    add
    ldc.i4 1
    sub
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    stobj uint8
    ldloc _F
    ldfld int8 @getset::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 1
    ldc.i4 32
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int8 @getset::i
    br L_for_loop_1
L_for_end_2:
    pop
    // line 600
    ldloc _F
    ldfld valuetype T_settype* @getset::s
    ldloc _F
    ldflda valuetype T_getset_record_15 @getset::r
    ldfld valuetype T_settype T_getset_record_15::s
    stobj valuetype T_settype

L_Epilogue:
    ret
}

// line 604

.method static
void Putset(int32 a, valuetype T_settype s)
{
    .maxstack 32

    .locals init(
        class @putset _F,
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        int8 $tmpIndex3)
    
    newobj instance void @putset::.ctor()
    stloc _F
    
    ldloc _F
    ldarg a
    stfld int32 @putset::a
    
    ldloc _F
    ldarg s
    stfld valuetype T_settype @putset::s

L_Entry:
    // line 616
    ldloc _F
    ldflda valuetype T_putset_record_18 @putset::r
    ldloc _F
    ldfld valuetype T_settype @putset::s
    stfld valuetype T_settype T_putset_record_18::s
    // line 617
    ldc.i4 32
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 1
    ldc.i4 32
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int8 @putset::i
L_for_loop_1:
    // line 617
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @putset::a
    ldloc _F
    ldfld int8 @putset::i
    add
    ldc.i4 1
    sub
    call instance uint8& T_array_4::ldadr(int32)
    ldloc _F
    ldflda valuetype T_putset_record_18 @putset::r
    ldflda valuetype T_getset_array_16 T_putset_record_18::b
    ldloc _F
    ldfld int8 @putset::i
    call instance uint8& T_getset_array_16::ldadr(int32)
    ldobj uint8
    stobj uint8
    ldloc _F
    ldfld int8 @putset::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 1
    ldc.i4 32
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int8 @putset::i
    br L_for_loop_1
L_for_end_2:
    pop

L_Epilogue:
    ret
}

// line 621

.method static
uint8 Getchr(int32 a)
{
    .maxstack 32

    .locals init(class @getchr _F)
    
    newobj instance void @getchr::.ctor()
    stloc _F
    
    ldloc _F
    ldarg a
    stfld int32 @getchr::a

L_Entry:
    // line 625
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @getchr::a
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    stfld uint8 @getchr::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld uint8 @getchr::_fnvalue
    ret
}

// line 629

.method static
void Putchr(int32 a, uint8 c)
{
    .maxstack 32

    .locals init(class @putchr _F)
    
    newobj instance void @putchr::.ctor()
    stloc _F
    
    ldloc _F
    ldarg a
    stfld int32 @putchr::a
    
    ldloc _F
    ldarg c
    stfld uint8 @putchr::c

L_Entry:
    // line 633
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @putchr::a
    call instance uint8& T_array_4::ldadr(int32)
    ldloc _F
    ldfld uint8 @putchr::c
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8

L_Epilogue:
    ret
}

// line 637

.method static
int32 Getadr(int32 a)
{
    .maxstack 32

    .locals init(
        class @getadr _F,
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        int8 $tmpIndex3)
    
    newobj instance void @getadr::.ctor()
    stloc _F
    
    ldloc _F
    ldarg a
    stfld int32 @getadr::a

L_Entry:
    // line 649
    ldc.i4 4
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 1
    ldc.i4 4
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int8 @getadr::i
L_for_loop_1:
    // line 649
    ldloc _F
    ldflda valuetype T_getadr_record_21 @getadr::r
    ldflda valuetype T_getint_array_3 T_getadr_record_21::b
    ldloc _F
    ldfld int8 @getadr::i
    call instance uint8& T_getint_array_3::ldadr(int32)
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @getadr::a
    ldloc _F
    ldfld int8 @getadr::i
    add
    ldc.i4 1
    sub
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    stobj uint8
    ldloc _F
    ldfld int8 @getadr::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 1
    ldc.i4 4
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int8 @getadr::i
    br L_for_loop_1
L_for_end_2:
    pop
    // line 650
    ldloc _F
    ldloc _F
    ldflda valuetype T_getadr_record_21 @getadr::r
    ldfld int32 T_getadr_record_21::a
    stfld int32 @getadr::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld int32 @getadr::_fnvalue
    ret
}

// line 654

.method static
void Putadr(int32 a, int32 Ad)
{
    .maxstack 32

    .locals init(
        class @putadr _F,
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        int8 $tmpIndex3)
    
    newobj instance void @putadr::.ctor()
    stloc _F
    
    ldloc _F
    ldarg a
    stfld int32 @putadr::a
    
    ldloc _F
    ldarg Ad
    stfld int32 @putadr::Ad

L_Entry:
    // line 666
    ldloc _F
    ldflda valuetype T_putadr_record_24 @putadr::r
    ldloc _F
    ldfld int32 @putadr::Ad
    stfld int32 T_putadr_record_24::a
    // line 667
    ldc.i4 4
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 1
    ldc.i4 4
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int8 @putadr::i
L_for_loop_1:
    // line 667
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @putadr::a
    ldloc _F
    ldfld int8 @putadr::i
    add
    ldc.i4 1
    sub
    call instance uint8& T_array_4::ldadr(int32)
    ldloc _F
    ldflda valuetype T_putadr_record_24 @putadr::r
    ldflda valuetype T_getint_array_3 T_putadr_record_24::b
    ldloc _F
    ldfld int8 @putadr::i
    call instance uint8& T_getint_array_3::ldadr(int32)
    ldobj uint8
    stobj uint8
    ldloc _F
    ldfld int8 @putadr::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 1
    ldc.i4 4
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int8 @putadr::i
    br L_for_loop_1
L_for_end_2:
    pop

L_Epilogue:
    ret
}

// line 673

.method static
void Swpstk(int32 l)
{
    .maxstack 32

    .locals init(
        class @swpstk _F,
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        int8 $tmpIndex3,
        int8 $tmpEndValue4,
        int8 $tmpIndex5,
        int8 $tmpIndex6)
    
    newobj instance void @swpstk::.ctor()
    stloc _F
    
    ldloc _F
    ldarg l
    stfld int32 @swpstk::l

L_Entry:
    // line 682
    ldloc _F
    ldsfld int32 _G::Sp
    ldc.i4 4
    sub
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stfld int32 @swpstk::p
    // line 684
    ldloc _F
    ldfld int32 @swpstk::l
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 1
    ldc.i4 32
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int8 @swpstk::i
L_for_loop_1:
    // line 684
    ldloc _F
    ldflda valuetype T_getset_array_16 @swpstk::Sb
    ldloc _F
    ldfld int8 @swpstk::i
    call instance uint8& T_getset_array_16::ldadr(int32)
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::Sp
    ldc.i4 4
    sub
    ldloc _F
    ldfld int32 @swpstk::l
    sub
    ldloc _F
    ldfld int8 @swpstk::i
    add
    ldc.i4 1
    sub
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    stobj uint8
    ldloc _F
    ldfld int8 @swpstk::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 1
    ldc.i4 32
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int8 @swpstk::i
    br L_for_loop_1
L_for_end_2:
    pop
    // line 685
    ldsfld int32 _G::Sp
    ldc.i4 4
    sub
    ldloc _F
    ldfld int32 @swpstk::l
    sub
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldloc _F
    ldfld int32 @swpstk::p
    call void Putadr(int32 a, int32 Ad)
    // line 686
    ldloc _F
    ldfld int32 @swpstk::l
    stloc $tmpEndValue4
    ldc.i4 1
    dup
    ldloc $tmpEndValue4
    bgt L_for_end_4
    dup
    ldc.i4 1
    ldc.i4 32
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex5
    ldloc _F
    ldloc $tmpIndex5
    stfld int8 @swpstk::i
L_for_loop_3:
    // line 686
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::Sp
    ldloc _F
    ldfld int32 @swpstk::l
    sub
    ldloc _F
    ldfld int8 @swpstk::i
    add
    ldc.i4 1
    sub
    call instance uint8& T_array_4::ldadr(int32)
    ldloc _F
    ldflda valuetype T_getset_array_16 @swpstk::Sb
    ldloc _F
    ldfld int8 @swpstk::i
    call instance uint8& T_getset_array_16::ldadr(int32)
    ldobj uint8
    stobj uint8
    ldloc _F
    ldfld int8 @swpstk::i
    dup
    ldloc $tmpEndValue4
    beq L_for_end_4
    ldc.i4.1
    add
    dup
    ldc.i4 1
    ldc.i4 32
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex6
    ldloc _F
    ldloc $tmpIndex6
    stfld int8 @swpstk::i
    br L_for_loop_3
L_for_end_4:
    pop

L_Epilogue:
    ret
}

// line 700

.method static
void Popint(int32& i)
{
    .maxstack 32

    .locals init(class @popint _F,
        int32& pinned $i)
    
    newobj instance void @popint::.ctor()
    stloc _F
    
    ldarg i
    stloc $i
    
    ldloc _F
    ldarg i
    stfld int32* @popint::i

L_Entry:
    // line 700
    ldsfld int32 _G::Sp
    ldc.i4 4
    sub
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Sp
    // line 700
    ldloc _F
    ldfld int32* @popint::i
    ldsfld int32 _G::Sp
    call int32 Getint(int32 a)
    stobj int32

L_Epilogue:
    ret
}

// line 701

.method static
void Pshint(int32 i)
{
    .maxstack 32

    .locals init(class @pshint _F)
    
    newobj instance void @pshint::.ctor()
    stloc _F
    
    ldloc _F
    ldarg i
    stfld int32 @pshint::i

L_Entry:
    // line 701
    ldsfld int32 _G::Sp
    ldloc _F
    ldfld int32 @pshint::i
    call void Putint(int32 a, int32 x)
    // line 701
    ldsfld int32 _G::Sp
    ldc.i4 4
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Sp

L_Epilogue:
    ret
}

// line 702

.method static
void Poprel(float64& r)
{
    .maxstack 32

    .locals init(class @poprel _F,
        float64& pinned $r)
    
    newobj instance void @poprel::.ctor()
    stloc _F
    
    ldarg r
    stloc $r
    
    ldloc _F
    ldarg r
    stfld float64* @poprel::r

L_Entry:
    // line 702
    ldsfld int32 _G::Sp
    ldc.i4 8
    sub
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Sp
    // line 702
    ldloc _F
    ldfld float64* @poprel::r
    ldsfld int32 _G::Sp
    call float64 Getrel(int32 a)
    stobj float64

L_Epilogue:
    ret
}

// line 703

.method static
void Pshrel(float64 r)
{
    .maxstack 32

    .locals init(class @pshrel _F)
    
    newobj instance void @pshrel::.ctor()
    stloc _F
    
    ldloc _F
    ldarg r
    stfld float64 @pshrel::r

L_Entry:
    // line 703
    ldsfld int32 _G::Sp
    ldloc _F
    ldfld float64 @pshrel::r
    call void Putrel(int32 a, float64 f)
    // line 703
    ldsfld int32 _G::Sp
    ldc.i4 8
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Sp
    /* nop */

L_Epilogue:
    ret
}

// line 704

.method static
void Popset(valuetype T_settype& s)
{
    .maxstack 32

    .locals init(class @popset _F,
        valuetype T_settype& pinned $s)
    
    newobj instance void @popset::.ctor()
    stloc _F
    
    ldarg s
    stloc $s
    
    ldloc _F
    ldarg s
    stfld valuetype T_settype* @popset::s

L_Entry:
    // line 704
    ldsfld int32 _G::Sp
    ldc.i4 32
    sub
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Sp
    // line 704
    ldsfld int32 _G::Sp
    ldloc _F
    ldfld valuetype T_settype* @popset::s
    call void Getset(int32 a, valuetype T_settype& s)

L_Epilogue:
    ret
}

// line 705

.method static
void Pshset(valuetype T_settype s)
{
    .maxstack 32

    .locals init(class @pshset _F)
    
    newobj instance void @pshset::.ctor()
    stloc _F
    
    ldloc _F
    ldarg s
    stfld valuetype T_settype @pshset::s

L_Entry:
    // line 705
    ldsfld int32 _G::Sp
    ldloc _F
    ldfld valuetype T_settype @pshset::s
    call void Putset(int32 a, valuetype T_settype s)
    // line 705
    ldsfld int32 _G::Sp
    ldc.i4 32
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Sp

L_Epilogue:
    ret
}

// line 706

.method static
void Popadr(int32& a)
{
    .maxstack 32

    .locals init(class @popadr _F,
        int32& pinned $a)
    
    newobj instance void @popadr::.ctor()
    stloc _F
    
    ldarg a
    stloc $a
    
    ldloc _F
    ldarg a
    stfld int32* @popadr::a

L_Entry:
    // line 706
    ldsfld int32 _G::Sp
    ldc.i4 4
    sub
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Sp
    // line 706
    ldloc _F
    ldfld int32* @popadr::a
    ldsfld int32 _G::Sp
    call int32 Getadr(int32 a)
    stobj int32

L_Epilogue:
    ret
}

// line 707

.method static
void Pshadr(int32 a)
{
    .maxstack 32

    .locals init(class @pshadr _F)
    
    newobj instance void @pshadr::.ctor()
    stloc _F
    
    ldloc _F
    ldarg a
    stfld int32 @pshadr::a

L_Entry:
    // line 707
    ldsfld int32 _G::Sp
    ldloc _F
    ldfld int32 @pshadr::a
    call void Putadr(int32 a, int32 Ad)
    // line 707
    ldsfld int32 _G::Sp
    ldc.i4 4
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Sp

L_Epilogue:
    ret
}

// line 711

.method static
void Wrthex(int32 v, int32 f)
{
    .maxstack 32

    .locals init(
        class @wrthex _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3)
    
    newobj instance void @wrthex::.ctor()
    stloc _F
    
    ldloc _F
    ldarg f
    stfld int32 @wrthex::f
    
    ldloc _F
    ldarg v
    stfld int32 @wrthex::v

L_Entry:
    // line 714
    ldloc _F
    ldc.i4 1
    stfld int32 @wrthex::p
    // line 715
    ldloc _F
    ldfld int32 @wrthex::f
    ldc.i4 1
    sub
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @wrthex::i
L_for_loop_1:
    // line 715
    ldloc _F
    ldloc _F
    ldfld int32 @wrthex::p
    ldc.i4 16
    mul
    stfld int32 @wrthex::p
    ldloc _F
    ldfld int32 @wrthex::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @wrthex::i
    br L_for_loop_1
L_for_end_2:
    pop
    // line 716
    br L_while_test_4
L_while_3:
    // line 717
    ldloc _F
    ldloc _F
    ldfld int32 @wrthex::v
    ldloc _F
    ldfld int32 @wrthex::p
    div
    ldc.i4 16
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    stfld int32 @wrthex::d
    // line 718
    ldloc _F
    ldfld int32 @wrthex::d
    ldc.i4 10
    clt
    brfalse L_else_5
    // line 718
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld int32 @wrthex::d
    ldc.i4 48 // '0'
    add
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_6
L_else_5:
    // line 719
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld int32 @wrthex::d
    ldc.i4 10
    sub
    ldc.i4 65 // 'A'
    add
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_6:
    // line 720
    ldloc _F
    ldloc _F
    ldfld int32 @wrthex::p
    ldc.i4 16
    div
    stfld int32 @wrthex::p
L_while_test_4:
    ldloc _F
    ldfld int32 @wrthex::p
    ldc.i4 0
    cgt
    brtrue L_while_3

L_Epilogue:
    ret
}

// line 726

.method static
void Lstins(int32& Ad)
{
    .maxstack 32

    .locals init(
        class @lstins _F,
        int8 $tmpSwitchValue1,
        int32& pinned $Ad)
    
    newobj instance void @lstins::.ctor()
    stloc _F
    
    ldarg Ad
    stloc $Ad
    
    ldloc _F
    ldarg Ad
    stfld int32* @lstins::Ad

L_Entry:
    // line 734
    ldloc _F
    ldloc _F
    ldfld int32* @lstins::Ad
    ldobj int32
    stfld int32 @lstins::Ads
    // line 735
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32* @lstins::Ad
    ldobj int32
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    stfld uint8 @lstins::Op
    // line 735
    ldloc _F
    ldfld int32* @lstins::Ad
    ldloc _F
    ldfld int32* @lstins::Ad
    ldobj int32
    ldc.i4 1
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int32
    // line 736
    ldsflda valuetype T_array_28 _G::Insp
    ldloc _F
    ldfld uint8 @lstins::Op
    call instance bool& T_array_28::ldadr(int32)
    ldobj bool
    brfalse L_if_end_1
    // line 736
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32* @lstins::Ad
    ldobj int32
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    stfld uint8 @lstins::p
    // line 736
    ldloc _F
    ldfld int32* @lstins::Ad
    ldloc _F
    ldfld int32* @lstins::Ad
    ldobj int32
    ldc.i4 1
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int32
L_if_end_1:
    // line 737
    ldsflda valuetype T_array_30 _G::Insq
    ldloc _F
    ldfld uint8 @lstins::Op
    call instance int8& T_array_30::ldadr(int32)
    ldobj int8
    ldc.i4 0
    cgt
    brfalse L_if_end_2
    // line 739
    ldsflda valuetype T_array_30 _G::Insq
    ldloc _F
    ldfld uint8 @lstins::Op
    call instance int8& T_array_30::ldadr(int32)
    ldobj int8
    stloc $tmpSwitchValue1
    ldloc $tmpSwitchValue1
    ldc.i4 1
    bne.un L_check_case_4
    // line 741
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32* @lstins::Ad
    ldobj int32
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    stfld int32 @lstins::q
    br L_case_end_3
L_check_case_4:
    ldloc $tmpSwitchValue1
    ldc.i4 4
    bne.un L_case_end_3
    // line 742
    ldloc _F
    ldloc _F
    ldfld int32* @lstins::Ad
    ldobj int32
    call int32 Getint(int32 a)
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 @lstins::q
L_case_end_3:
    // line 745
    ldloc _F
    ldfld int32* @lstins::Ad
    ldloc _F
    ldfld int32* @lstins::Ad
    ldobj int32
    ldsflda valuetype T_array_30 _G::Insq
    ldloc _F
    ldfld uint8 @lstins::Op
    call instance int8& T_array_30::ldadr(int32)
    ldobj int8
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int32
L_if_end_2:
    // line 748
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr ": "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 749
    ldloc _F
    ldfld uint8 @lstins::Op
    ldc.i4 2
    call void Wrthex(int32 v, int32 f)
    // line 750
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 10
    ldc.i4.0
    ldsflda valuetype T_array_31 _G::Instr
    ldloc _F
    ldfld uint8 @lstins::Op
    call instance valuetype T_alfa& T_array_31::ldadr(int32)
    ldobj valuetype T_alfa
    call string T_alfa::arrayToString(valuetype T_alfa)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldstr "  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 751
    ldsflda valuetype T_array_28 _G::Insp
    ldloc _F
    ldfld uint8 @lstins::Op
    call instance bool& T_array_28::ldadr(int32)
    ldobj bool
    brfalse L_else_5
    // line 753
    ldloc _F
    ldfld uint8 @lstins::p
    ldc.i4 2
    call void Wrthex(int32 v, int32 f)
    // line 754
    ldsflda valuetype T_array_30 _G::Insq
    ldloc _F
    ldfld uint8 @lstins::Op
    call instance int8& T_array_30::ldadr(int32)
    ldobj int8
    ldc.i4 0
    cgt
    brfalse L_if_end_7
    // line 754
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 44 // ','
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    // line 754
    ldloc _F
    ldfld int32 @lstins::q
    ldc.i4 6
    call void Wrthex(int32 v, int32 f)
L_if_end_7:
    br L_if_end_6
L_else_5:
    // line 756
    ldsflda valuetype T_array_30 _G::Insq
    ldloc _F
    ldfld uint8 @lstins::Op
    call instance int8& T_array_30::ldadr(int32)
    ldobj int8
    ldc.i4 0
    cgt
    brfalse L_if_end_8
    // line 756
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 756
    ldloc _F
    ldfld int32 @lstins::q
    ldc.i4 6
    call void Wrthex(int32 v, int32 f)
L_if_end_8:
L_if_end_6:

L_Epilogue:
    ret
}

// line 762

.method static
void Dmpins()
{
    .maxstack 32

    .locals init(class @dmpins _F)
    
    newobj instance void @dmpins::.ctor()
    stloc _F

L_Entry:
    // line 768
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 769
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Contents of instruction memory"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 770
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 771
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "  Addr  Opc Ins          P       Q"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 772
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "----------------------------------"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 773
    ldloc _F
    ldc.i4 0
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 @dmpins::i
    // line 774
    br L_while_test_2
L_while_1:
    // line 776
    ldloc _F
    ldfld int32 @dmpins::i
    ldc.i4 6
    call void Wrthex(int32 v, int32 f)
    // line 777
    ldloc _F
    ldflda int32 @dmpins::i
    call void Lstins(int32& Ad)
    // line 778
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_while_test_2:
    ldloc _F
    ldfld int32 @dmpins::i
    ldsfld int32 _G::Pctop
    clt
    brtrue L_while_1
    // line 781
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()

L_Epilogue:
    ret
}

// line 787

.method static
void Alignu(int32 Algn, int32& Flc)
{
    .maxstack 32

    .locals init(class @alignu _F,
        int32& pinned $Flc)
    
    newobj instance void @alignu::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Algn
    stfld int32 @alignu::Algn
    
    ldarg Flc
    stloc $Flc
    
    ldloc _F
    ldarg Flc
    stfld int32* @alignu::Flc

L_Entry:
    // line 790
    ldloc _F
    ldloc _F
    ldfld int32* @alignu::Flc
    ldobj int32
    ldc.i4 1
    sub
    stfld int32 @alignu::l
    // line 791
    ldloc _F
    ldfld int32* @alignu::Flc
    ldloc _F
    ldfld int32 @alignu::l
    ldloc _F
    ldfld int32 @alignu::Algn
    add
    ldloc _F
    ldfld int32 @alignu::Algn
    ldloc _F
    ldfld int32 @alignu::l
    add
    ldloc _F
    ldfld int32 @alignu::Algn
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    sub
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int32

L_Epilogue:
    ret
}

// line 796

.method static
void Alignd(int32 Algn, int32& Flc)
{
    .maxstack 32

    .locals init(class @alignd _F,
        int32& pinned $Flc)
    
    newobj instance void @alignd::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Algn
    stfld int32 @alignd::Algn
    
    ldarg Flc
    stloc $Flc
    
    ldloc _F
    ldarg Flc
    stfld int32* @alignd::Flc

L_Entry:
    // line 799
    ldloc _F
    ldloc _F
    ldfld int32* @alignd::Flc
    ldobj int32
    ldc.i4 1
    add
    stfld int32 @alignd::l
    // line 800
    ldloc _F
    ldfld int32* @alignd::Flc
    ldloc _F
    ldfld int32 @alignd::l
    ldloc _F
    ldfld int32 @alignd::Algn
    sub
    ldloc _F
    ldfld int32 @alignd::Algn
    ldloc _F
    ldfld int32 @alignd::l
    sub
    ldloc _F
    ldfld int32 @alignd::Algn
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int32

L_Epilogue:
    ret
}

// line 807

.method static
void Load()
{
    .maxstack 32

    .locals init(class @load _F)
    
    newobj instance void @load::.ctor()
    stloc _F

L_Entry:
    // line 1407
    ldloc _F
    call instance void @load::Init()
    // line 1408
    ldloc _F
    call instance void @load::Generate()
    // line 1409
    ldsfld int32 _G::Pc
    stsfld int32 _G::Pctop
    // line 1410
    ldc.i4 0
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Pc
    // line 1411
    ldloc _F
    call instance void @load::Generate()
    // line 1412
    ldc.i4 4
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsflda int32 _G::Pctop
    call void Alignu(int32 Algn, int32& Flc)
    // line 1413
    ldc.i4 4
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsflda int32 _G::Cp
    call void Alignd(int32 Algn, int32& Flc)
    // line 1415
    ldc.i4 0 // (false)
    brfalse L_if_end_1
    // line 1417
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1418
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Storage areas occupied"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1419
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1420
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Program     "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 1420
    ldc.i4 0
    ldc.i4 6
    call void Wrthex(int32 v, int32 f)
    // line 1420
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 45 // '-'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    // line 1420
    ldsfld int32 _G::Pctop
    ldc.i4 1
    sub
    ldc.i4 6
    call void Wrthex(int32 v, int32 f)
    // line 1421
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " ("
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 8
    ldc.i4.0
    ldsfld int32 _G::Pctop
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 41 // ')'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1422
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Stack/Heap  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 1422
    ldsfld int32 _G::Pctop
    ldc.i4 6
    call void Wrthex(int32 v, int32 f)
    // line 1422
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 45 // '-'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    // line 1422
    ldsfld int32 _G::Cp
    ldc.i4 1
    sub
    ldc.i4 6
    call void Wrthex(int32 v, int32 f)
    // line 1423
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " ("
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 8
    ldc.i4.0
    ldsfld int32 _G::Cp
    ldsfld int32 _G::Pctop
    sub
    ldc.i4 1
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 41 // ')'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1424
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Constants   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 1424
    ldsfld int32 _G::Cp
    ldc.i4 6
    call void Wrthex(int32 v, int32 f)
    // line 1424
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 45 // '-'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    // line 1424
    ldc.i4 200000
    ldc.i4 6
    call void Wrthex(int32 v, int32 f)
    // line 1425
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " ("
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 8
    ldc.i4.0
    ldc.i4 200000
    ldsfld int32 _G::Cp
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 41 // ')'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1426
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_1:
    // line 1429
    ldc.i4 0 // (false)
    brfalse L_if_end_2
    // line 1429
    call void Dmpins()
L_if_end_2:
    // line 1430
    ldc.i4 0 // (false)
    brfalse L_if_end_3
    // line 1430
    ldloc _F
    call instance void @load::Dmplabs()
L_if_end_3:

L_Epilogue:
    ret
}

// line 1436

.method static
void Pmd()
{
    .maxstack 32

    .locals init(class @pmd _F)
    
    newobj instance void @pmd::.ctor()
    stloc _F

L_Entry:
    // line 1449
    ldc.i4 0 // (false)
    brfalse L_if_end_1
    // line 1450
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1451
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "pc = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 1451
    ldsfld int32 _G::Pc
    ldc.i4 1
    sub
    ldc.i4 6
    call void Wrthex(int32 v, int32 f)
    // line 1452
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " op = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 3
    ldc.i4.0
    ldsfld uint8 _G::Op
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    // line 1453
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " sp = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 1453
    ldsfld int32 _G::Sp
    ldc.i4 6
    call void Wrthex(int32 v, int32 f)
    // line 1454
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " mp = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 1454
    ldsfld int32 _G::Mp
    ldc.i4 6
    call void Wrthex(int32 v, int32 f)
    // line 1455
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " np = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 1455
    ldsfld int32 _G::Np
    ldc.i4 6
    call void Wrthex(int32 v, int32 f)
    // line 1456
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " cp = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 1456
    ldsfld int32 _G::Cp
    ldc.i4 6
    call void Wrthex(int32 v, int32 f)
    // line 1457
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1458
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "------------------------------------------------------------"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 1459
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "-------------"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1461
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1462
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Stack"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1463
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1464
    ldloc _F
    ldsfld int32 _G::Sp
    stfld int32 @pmd::s
    // line 1464
    ldloc _F
    ldc.i4 0
    stfld int32 @pmd::i
    // line 1465
    br L_while_test_3
L_while_2:
    // line 1465
    ldloc _F
    call instance void @pmd::Pt()
L_while_test_3:
    ldloc _F
    ldfld int32 @pmd::s
    ldsfld int32 _G::Pctop
    clt
    ldc.i4.0
    ceq
    brtrue L_while_2
    // line 1466
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1467
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1468
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Constants"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1469
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1470
    ldloc _F
    ldc.i4 200000
    stfld int32 @pmd::s
    // line 1470
    ldloc _F
    ldc.i4 0
    stfld int32 @pmd::i
    // line 1471
    br L_while_test_5
L_while_4:
    // line 1471
    ldloc _F
    call instance void @pmd::Pt()
L_while_test_5:
    ldloc _F
    ldfld int32 @pmd::s
    ldsfld int32 _G::Cp
    clt
    ldc.i4.0
    ceq
    brtrue L_while_4
    // line 1472
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1473
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1474
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Heap"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1475
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1476
    ldloc _F
    ldsfld int32 _G::Cp
    ldc.i4 1
    sub
    stfld int32 @pmd::s
    // line 1476
    ldloc _F
    ldc.i4 0
    stfld int32 @pmd::i
    // line 1477
    br L_while_test_7
L_while_6:
    // line 1477
    ldloc _F
    call instance void @pmd::Pt()
L_while_test_7:
    ldloc _F
    ldfld int32 @pmd::s
    ldsfld int32 _G::Np
    clt
    ldc.i4.0
    ceq
    brtrue L_while_6
    // line 1478
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
L_if_end_1:

L_Epilogue:
    ret
}

// line 1482

.method static
void Errori(valuetype T_beta String)
{
    .maxstack 32

    .locals init(class @errori _F)
    
    newobj instance void @errori::.ctor()
    stloc _F
    
    ldloc _F
    ldarg String
    stfld valuetype T_beta @errori::String

L_Entry:
    // line 1483
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1483
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "*** Runtime error"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 1484
    ldsfld int32 _G::Srclin
    ldc.i4 0
    cgt
    brfalse L_if_end_1
    // line 1484
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " ["
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Srclin
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 93 // ']'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_1:
    // line 1485
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr ": "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldloc _F
    ldfld valuetype T_beta @errori::String
    call string T_beta::arrayToString(valuetype T_beta)
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1486
    call void Pmd()
    // line 1486
    ldc.i4 1
    newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
    throw

L_Epilogue:
    ret
}

// line 1489

.method static
int32 Base(int32 Ld)
{
    .maxstack 32

    .locals init(class @base _F)
    
    newobj instance void @base::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Ld
    stfld int32 @base::Ld

L_Entry:
    // line 1491
    ldloc _F
    ldsfld int32 _G::Mp
    stfld int32 @base::Ad
    // line 1492
    br L_while_test_2
L_while_1:
    // line 1492
    ldloc _F
    ldloc _F
    ldfld int32 @base::Ad
    ldc.i4 8
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stfld int32 @base::Ad
    // line 1492
    ldloc _F
    ldloc _F
    ldfld int32 @base::Ld
    ldc.i4 1
    sub
    stfld int32 @base::Ld
L_while_test_2:
    ldloc _F
    ldfld int32 @base::Ld
    ldc.i4 0
    cgt
    brtrue L_while_1
    // line 1493
    ldloc _F
    ldloc _F
    ldfld int32 @base::Ad
    stfld int32 @base::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld int32 @base::_fnvalue
    ret
}

// line 1496

.method static
void Compare()
{
    .maxstack 32

    .locals init(class @compare _F)
    
    newobj instance void @compare::.ctor()
    stloc _F

L_Entry:
    // line 1499
    ldsflda int32 _G::A2
    call void Popadr(int32& a)
    // line 1500
    ldsflda int32 _G::A1
    call void Popadr(int32& a)
    // line 1501
    ldc.i4 0
    stsfld int32 _G::i
    // line 1501
    ldc.i4 1 // (true)
    stsfld bool _G::b
    // line 1502
    br L_while_test_2
L_while_1:
    // line 1503
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::A1
    ldsfld int32 _G::i
    add
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::A2
    ldsfld int32 _G::i
    add
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    ceq
    brfalse L_else_3
    // line 1503
    ldsfld int32 _G::i
    ldc.i4 1
    add
    stsfld int32 _G::i
    br L_if_end_4
L_else_3:
    // line 1504
    ldc.i4 0 // (false)
    stsfld bool _G::b
L_if_end_4:
L_while_test_2:
    ldsfld bool _G::b
    dup
    brfalse L_AND_shortcut_5
    pop
    ldsfld int32 _G::i
    ldsfld int32 _G::q
    ceq
    ldc.i4.0
    ceq
L_AND_shortcut_5:
    brtrue L_while_1

L_Epilogue:
    ret
}

// line 1507

.method static
void Valfil(int32 Fa)
{
    .maxstack 32

    .locals init(class @valfil _F)
    
    newobj instance void @valfil::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Fa
    stfld int32 @valfil::Fa

L_Entry:
    // line 1510
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @valfil::Fa
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    ldc.i4 0
    ceq
    brfalse L_if_end_1
    // line 1511
    ldloc _F
    ldfld int32 @valfil::Fa
    ldsfld int32 _G::Pctop
    ldc.i4 32
    add
    ceq
    brfalse L_else_2
    // line 1511
    ldloc _F
    ldc.i4 1
    stfld int32 @valfil::Ff
    br L_if_end_3
L_else_2:
    // line 1512
    ldloc _F
    ldfld int32 @valfil::Fa
    ldsfld int32 _G::Pctop
    ldc.i4 34
    add
    ceq
    brfalse L_else_4
    // line 1512
    ldloc _F
    ldc.i4 2
    stfld int32 @valfil::Ff
    br L_if_end_5
L_else_4:
    // line 1513
    ldloc _F
    ldfld int32 @valfil::Fa
    ldsfld int32 _G::Pctop
    ldc.i4 36
    add
    ceq
    brfalse L_else_6
    // line 1513
    ldloc _F
    ldc.i4 3
    stfld int32 @valfil::Ff
    br L_if_end_7
L_else_6:
    // line 1514
    ldloc _F
    ldfld int32 @valfil::Fa
    ldsfld int32 _G::Pctop
    ldc.i4 38
    add
    ceq
    brfalse L_else_8
    // line 1514
    ldloc _F
    ldc.i4 4
    stfld int32 @valfil::Ff
    br L_if_end_9
L_else_8:
    // line 1516
    ldloc _F
    ldc.i4 5
    stfld int32 @valfil::i
    // line 1517
    ldloc _F
    ldc.i4 0
    stfld int32 @valfil::Ff
    // line 1518
    br L_while_test_11
L_while_10:
    // line 1519
    ldsflda valuetype T_array_249 _G::Filstate
    ldloc _F
    ldfld int32 @valfil::i
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 0
    ceq
    brfalse L_if_end_12
    // line 1519
    ldloc _F
    ldloc _F
    ldfld int32 @valfil::i
    stfld int32 @valfil::Ff
    // line 1519
    ldloc _F
    ldc.i4 100
    stfld int32 @valfil::i
L_if_end_12:
    // line 1520
    ldloc _F
    ldloc _F
    ldfld int32 @valfil::i
    ldc.i4 1
    add
    stfld int32 @valfil::i
L_while_test_11:
    ldloc _F
    ldfld int32 @valfil::i
    ldc.i4 100
    cgt
    ldc.i4.0
    ceq
    brtrue L_while_10
    // line 1522
    ldloc _F
    ldfld int32 @valfil::Ff
    ldc.i4 0
    ceq
    brfalse L_if_end_13
    // line 1522
    ldsfld valuetype T_beta STRING_223    // "To many files            "
    call void Errori(valuetype T_beta String)
L_if_end_13:
    /* nop */
L_if_end_9:
L_if_end_7:
L_if_end_5:
L_if_end_3:
    // line 1524
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @valfil::Fa
    call instance uint8& T_array_4::ldadr(int32)
    ldloc _F
    ldfld int32 @valfil::Ff
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
L_if_end_1:

L_Epilogue:
    ret
}

// line 1528

.method static
void Valfilwm(int32 Fa)
{
    .maxstack 32

    .locals init(class @valfilwm _F)
    
    newobj instance void @valfilwm::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Fa
    stfld int32 @valfilwm::Fa

L_Entry:
    // line 1530
    ldloc _F
    ldfld int32 @valfilwm::Fa
    call void Valfil(int32 Fa)
    // line 1531
    ldsflda valuetype T_array_249 _G::Filstate
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @valfilwm::Fa
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 2
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_1
    // line 1531
    ldsfld valuetype T_beta STRING_224    // "File not in write mode   "
    call void Errori(valuetype T_beta String)
L_if_end_1:

L_Epilogue:
    ret
}

// line 1534

.method static
void Valfilrm(int32 Fa)
{
    .maxstack 32

    .locals init(class @valfilrm _F)
    
    newobj instance void @valfilrm::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Fa
    stfld int32 @valfilrm::Fa

L_Entry:
    // line 1536
    ldloc _F
    ldfld int32 @valfilrm::Fa
    call void Valfil(int32 Fa)
    // line 1537
    ldsflda valuetype T_array_249 _G::Filstate
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @valfilrm::Fa
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 1
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_1
    // line 1537
    ldsfld valuetype T_beta STRING_225    // "File not in read mode    "
    call void Errori(valuetype T_beta String)
L_if_end_1:

L_Epilogue:
    ret
}

// line 1540

.method static
void Getop()
{
    .maxstack 32

    .locals init(class @getop _F)
    
    newobj instance void @getop::.ctor()
    stloc _F

L_Entry:
    // line 1544
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::Pc
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    stsfld uint8 _G::Op
    // line 1544
    ldsfld int32 _G::Pc
    ldc.i4 1
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Pc

L_Epilogue:
    ret
}

// line 1548

.method static
void Getp()
{
    .maxstack 32

    .locals init(class @getp _F)
    
    newobj instance void @getp::.ctor()
    stloc _F

L_Entry:
    // line 1552
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::Pc
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    stsfld uint8 _G::p
    // line 1552
    ldsfld int32 _G::Pc
    ldc.i4 1
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Pc

L_Epilogue:
    ret
}

// line 1556

.method static
void Getq()
{
    .maxstack 32

    .locals init(class @getq _F)
    
    newobj instance void @getq::.ctor()
    stloc _F

L_Entry:
    // line 1560
    ldsfld int32 _G::Pc
    call int32 Getadr(int32 a)
    stsfld int32 _G::q
    // line 1560
    ldsfld int32 _G::Pc
    ldc.i4 4
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Pc

L_Epilogue:
    ret
}

// line 1564

.method static
void Getq1()
{
    .maxstack 32

    .locals init(class @getq1 _F)
    
    newobj instance void @getq1::.ctor()
    stloc _F

L_Entry:
    // line 1568
    ldsfld int32 _G::Pc
    call int32 Getadr(int32 a)
    stsfld int32 _G::Q1
    // line 1568
    ldsfld int32 _G::Pc
    ldc.i4 4
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Pc

L_Epilogue:
    ret
}

// line 1585

.method static
void Repspc()
{
    .maxstack 32

    .locals init(class @repspc _F)
    
    newobj instance void @repspc::.ctor()
    stloc _F

L_Entry:
    // line 1588
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1589
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Heap space breakdown"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1590
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1591
    ldloc _F
    ldsfld int32 _G::Np
    stfld int32 @repspc::Ad
    // line 1592
    br L_while_test_2
L_while_1:
    // line 1593
    ldloc _F
    ldloc _F
    ldfld int32 @repspc::Ad
    call int32 Getadr(int32 a)
    stfld int32 @repspc::l
    // line 1594
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "addr: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 1594
    ldloc _F
    ldfld int32 @repspc::Ad
    ldc.i4 6
    call void Wrthex(int32 v, int32 f)
    // line 1594
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr ": "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 6
    ldc.i4.0
    ldloc _F
    ldfld int32 @repspc::l
    dup
    ldc.i4 0
    bge L_abs_question_3
    neg
L_abs_question_3:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr ": "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 1595
    ldloc _F
    ldfld int32 @repspc::l
    ldc.i4 0
    clt
    ldc.i4.0
    ceq
    brfalse L_else_4
    // line 1595
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "free"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_if_end_5
L_else_4:
    // line 1595
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "alloc"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_5:
    // line 1596
    ldloc _F
    ldloc _F
    ldfld int32 @repspc::Ad
    ldloc _F
    ldfld int32 @repspc::l
    dup
    ldc.i4 0
    bge L_abs_question_6
    neg
L_abs_question_6:
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 @repspc::Ad
L_while_test_2:
    ldloc _F
    ldfld int32 @repspc::Ad
    ldsfld int32 _G::Cp
    clt
    brtrue L_while_1

L_Epilogue:
    ret
}

// line 1602

.method static
void Fndfre(int32 Len, int32& Blk)
{
    .maxstack 32

    .locals init(class @fndfre _F,
        int32& pinned $Blk)
    
    newobj instance void @fndfre::.ctor()
    stloc _F
    
    ldarg Blk
    stloc $Blk
    
    ldloc _F
    ldarg Blk
    stfld int32* @fndfre::Blk
    
    ldloc _F
    ldarg Len
    stfld int32 @fndfre::Len

L_Entry:
    // line 1605
    ldloc _F
    ldc.i4 0
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 @fndfre::b
    // line 1606
    ldloc _F
    ldfld int32* @fndfre::Blk
    ldsfld int32 _G::Np
    stobj int32
    // line 1607
    br L_while_test_2
L_while_1:
    // line 1608
    ldloc _F
    ldloc _F
    ldfld int32* @fndfre::Blk
    ldobj int32
    call int32 Getadr(int32 a)
    stfld int32 @fndfre::l
    // line 1609
    ldloc _F
    ldfld int32 @fndfre::l
    ldloc _F
    ldfld int32 @fndfre::Len
    ldc.i4 4
    add
    clt
    ldc.i4.0
    ceq
    brfalse L_else_3
    // line 1609
    ldloc _F
    ldloc _F
    ldfld int32* @fndfre::Blk
    ldobj int32
    stfld int32 @fndfre::b
    // line 1609
    ldloc _F
    ldfld int32* @fndfre::Blk
    ldsfld int32 _G::Cp
    stobj int32
    br L_if_end_4
L_else_3:
    // line 1610
    ldloc _F
    ldfld int32* @fndfre::Blk
    ldloc _F
    ldfld int32* @fndfre::Blk
    ldobj int32
    ldloc _F
    ldfld int32 @fndfre::l
    dup
    ldc.i4 0
    bge L_abs_question_5
    neg
L_abs_question_5:
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int32
L_if_end_4:
L_while_test_2:
    ldloc _F
    ldfld int32* @fndfre::Blk
    ldobj int32
    ldsfld int32 _G::Cp
    clt
    brtrue L_while_1
    // line 1612
    ldloc _F
    ldfld int32 @fndfre::b
    ldc.i4 0
    cgt
    brfalse L_else_6
    // line 1613
    ldloc _F
    ldfld int32 @fndfre::b
    ldloc _F
    ldfld int32 @fndfre::Len
    ldc.i4 4
    add
    neg
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call void Putadr(int32 a, int32 Ad)
    // line 1614
    ldloc _F
    ldfld int32* @fndfre::Blk
    ldloc _F
    ldfld int32 @fndfre::b
    ldc.i4 4
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int32
    // line 1615
    ldloc _F
    ldfld int32 @fndfre::l
    ldloc _F
    ldfld int32 @fndfre::Len
    ldc.i4 4
    add
    ldc.i4 4
    add
    ldc.i4 0
    add
    cgt
    brfalse L_if_end_8
    // line 1618
    ldloc _F
    ldloc _F
    ldfld int32 @fndfre::b
    ldloc _F
    ldfld int32 @fndfre::Len
    add
    ldc.i4 4
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 @fndfre::b
    // line 1619
    ldloc _F
    ldfld int32 @fndfre::b
    ldloc _F
    ldfld int32 @fndfre::l
    ldloc _F
    ldfld int32 @fndfre::Len
    ldc.i4 4
    add
    sub
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call void Putadr(int32 a, int32 Ad)
L_if_end_8:
    br L_if_end_7
L_else_6:
    // line 1621
    ldloc _F
    ldfld int32* @fndfre::Blk
    ldc.i4 0
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int32
L_if_end_7:

L_Epilogue:
    ret
}

// line 1626

.method static
void Cscspc()
{
    .maxstack 32

    .locals init(class @cscspc _F)
    
    newobj instance void @cscspc::.ctor()
    stloc _F

L_Entry:
    // line 1631
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @cscspc::Done
    // line 1632
    br L_while_test_2
L_while_1:
    // line 1633
    ldloc _F
    ldsfld int32 _G::Np
    call int32 Getadr(int32 a)
    stfld int32 @cscspc::l
    // line 1634
    ldloc _F
    ldfld int32 @cscspc::l
    ldc.i4 0
    clt
    ldc.i4.0
    ceq
    brfalse L_else_3
    // line 1634
    ldsfld int32 _G::Np
    ldsfld int32 _G::Np
    call int32 Getadr(int32 a)
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Np
    br L_if_end_4
L_else_3:
    // line 1635
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @cscspc::Done
L_if_end_4:
L_while_test_2:
    ldloc _F
    ldfld bool @cscspc::Done
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_5
    pop
    ldsfld int32 _G::Np
    ldsfld int32 _G::Cp
    clt
L_AND_shortcut_5:
    brtrue L_while_1
    // line 1638
    ldloc _F
    ldsfld int32 _G::Np
    stfld int32 @cscspc::Ad
    // line 1639
    br L_while_test_7
L_while_6:
    // line 1640
    ldloc _F
    ldloc _F
    ldfld int32 @cscspc::Ad
    call int32 Getadr(int32 a)
    stfld int32 @cscspc::l
    // line 1641
    ldloc _F
    ldfld int32 @cscspc::l
    ldc.i4 0
    clt
    ldc.i4.0
    ceq
    brfalse L_else_8
    // line 1642
    ldloc _F
    ldloc _F
    ldfld int32 @cscspc::Ad
    ldloc _F
    ldfld int32 @cscspc::l
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 @cscspc::Ad1
    // line 1643
    ldloc _F
    ldfld int32 @cscspc::Ad1
    ldsfld int32 _G::Cp
    clt
    brfalse L_else_10
    // line 1644
    ldloc _F
    ldloc _F
    ldfld int32 @cscspc::Ad1
    call int32 Getadr(int32 a)
    stfld int32 @cscspc::L1
    // line 1645
    ldloc _F
    ldfld int32 @cscspc::L1
    ldc.i4 0
    clt
    ldc.i4.0
    ceq
    brfalse L_else_12
    // line 1646
    ldloc _F
    ldfld int32 @cscspc::Ad
    ldloc _F
    ldfld int32 @cscspc::l
    ldloc _F
    ldfld int32 @cscspc::L1
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call void Putadr(int32 a, int32 Ad)
    br L_if_end_13
L_else_12:
    // line 1647
    ldloc _F
    ldloc _F
    ldfld int32 @cscspc::Ad
    ldloc _F
    ldfld int32 @cscspc::l
    add
    ldloc _F
    ldfld int32 @cscspc::L1
    dup
    ldc.i4 0
    bge L_abs_question_14
    neg
L_abs_question_14:
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 @cscspc::Ad
L_if_end_13:
    br L_if_end_11
L_else_10:
    // line 1648
    ldloc _F
    ldloc _F
    ldfld int32 @cscspc::Ad
    ldloc _F
    ldfld int32 @cscspc::l
    add
    ldloc _F
    ldfld int32 @cscspc::L1
    dup
    ldc.i4 0
    bge L_abs_question_15
    neg
L_abs_question_15:
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 @cscspc::Ad
L_if_end_11:
    br L_if_end_9
L_else_8:
    // line 1649
    ldloc _F
    ldloc _F
    ldfld int32 @cscspc::Ad
    ldloc _F
    ldfld int32 @cscspc::l
    dup
    ldc.i4 0
    bge L_abs_question_16
    neg
L_abs_question_16:
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 @cscspc::Ad
L_if_end_9:
L_while_test_7:
    ldloc _F
    ldfld int32 @cscspc::Ad
    ldsfld int32 _G::Cp
    clt
    brtrue L_while_6

L_Epilogue:
    ret
}

// line 1655

.method static
void Newspc(int32 Len, int32& Blk)
{
    .maxstack 32

    .locals init(class @newspc _F,
        int32& pinned $Blk)
    
    newobj instance void @newspc::.ctor()
    stloc _F
    
    ldarg Blk
    stloc $Blk
    
    ldloc _F
    ldarg Blk
    stfld int32* @newspc::Blk
    
    ldloc _F
    ldarg Len
    stfld int32 @newspc::Len

L_Entry:
    // line 1658
    ldloc _F
    ldfld int32 @newspc::Len
    ldloc _F
    ldfld int32* @newspc::Blk
    call void Fndfre(int32 Len, int32& Blk)
    // line 1659
    ldloc _F
    ldfld int32* @newspc::Blk
    ldobj int32
    ldc.i4 0
    ceq
    brfalse L_if_end_1
    // line 1660
    ldloc _F
    ldsfld int32 _G::Np
    ldloc _F
    ldfld int32 @newspc::Len
    ldc.i4 4
    add
    sub
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 @newspc::Ad
    // line 1661
    ldloc _F
    ldloc _F
    ldfld int32 @newspc::Ad
    stfld int32 @newspc::Ad1
    // line 1662
    ldc.i4 4
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldloc _F
    ldflda int32 @newspc::Ad
    call void Alignd(int32 Algn, int32& Flc)
    // line 1663
    ldloc _F
    ldloc _F
    ldfld int32 @newspc::Len
    ldloc _F
    ldfld int32 @newspc::Ad1
    ldloc _F
    ldfld int32 @newspc::Ad
    sub
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 @newspc::Len
    // line 1664
    ldloc _F
    ldfld int32 @newspc::Ad
    ldsfld int32 _G::Ep
    cgt
    ldc.i4.0
    ceq
    brfalse L_if_end_2
    // line 1664
    ldsfld valuetype T_beta STRING_226    // "store overflow           "
    call void Errori(valuetype T_beta String)
L_if_end_2:
    // line 1665
    ldloc _F
    ldfld int32 @newspc::Ad
    stsfld int32 _G::Np
    // line 1666
    ldloc _F
    ldfld int32 @newspc::Ad
    ldloc _F
    ldfld int32 @newspc::Len
    ldc.i4 4
    add
    neg
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call void Putadr(int32 a, int32 Ad)
    // line 1667
    ldloc _F
    ldfld int32* @newspc::Blk
    ldloc _F
    ldfld int32 @newspc::Ad
    ldc.i4 4
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int32
L_if_end_1:

L_Epilogue:
    ret
}

// line 1673

.method static
void Dspspc(int32 Len, int32 Blk)
{
    .maxstack 32

    .locals init(class @dspspc _F)
    
    newobj instance void @dspspc::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Blk
    stfld int32 @dspspc::Blk
    
    ldloc _F
    ldarg Len
    stfld int32 @dspspc::Len

L_Entry:
    // line 1676
    ldloc _F
    ldloc _F
    ldfld int32 @dspspc::Len
    stfld int32 @dspspc::Len
    // line 1677
    ldloc _F
    ldfld int32 @dspspc::Blk
    ldc.i4 0
    ceq
    brfalse L_else_1
    // line 1677
    ldsfld valuetype T_beta STRING_227    // "dispose uninit pointer   "
    call void Errori(valuetype T_beta String)
    br L_if_end_2
L_else_1:
    // line 1678
    ldloc _F
    ldfld int32 @dspspc::Blk
    ldc.i4 1
    ceq
    brfalse L_else_3
    // line 1678
    ldsfld valuetype T_beta STRING_228    // "Dispose nil pointer      "
    call void Errori(valuetype T_beta String)
    br L_if_end_4
L_else_3:
    // line 1679
    ldloc _F
    ldfld int32 @dspspc::Blk
    ldsfld int32 _G::Np
    clt
    dup
    brtrue L_OR_shortcut_5
    pop
    ldloc _F
    ldfld int32 @dspspc::Blk
    ldsfld int32 _G::Cp
    clt
    ldc.i4.0
    ceq
L_OR_shortcut_5:
    brfalse L_if_end_6
    // line 1679
    ldsfld valuetype T_beta STRING_229    // "bad pointer value        "
    call void Errori(valuetype T_beta String)
L_if_end_6:
L_if_end_4:
L_if_end_2:
    // line 1680
    ldloc _F
    ldloc _F
    ldfld int32 @dspspc::Blk
    ldc.i4 4
    sub
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 @dspspc::Ad
    // line 1681
    ldloc _F
    ldfld int32 @dspspc::Ad
    call int32 Getadr(int32 a)
    ldc.i4 0
    clt
    ldc.i4.0
    ceq
    brfalse L_if_end_7
    // line 1681
    ldsfld valuetype T_beta STRING_230    // "block already freed      "
    call void Errori(valuetype T_beta String)
L_if_end_7:
    // line 1682
    ldc.i4 1 // (true)
    dup
    brfalse L_AND_shortcut_8
    pop
    ldc.i4 0 // (false)
    ldc.i4.0
    ceq
L_AND_shortcut_8:
    brfalse L_if_end_9
    // line 1683
    ldloc _F
    ldfld int32 @dspspc::Ad
    ldloc _F
    ldfld int32 @dspspc::Ad
    call int32 Getadr(int32 a)
    dup
    ldc.i4 0
    bge L_abs_question_10
    neg
L_abs_question_10:
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call void Putadr(int32 a, int32 Ad)
    // line 1684
    call void Cscspc()
L_if_end_9:

L_Epilogue:
    ret
}

// line 1690

.method static
bool Isfree(int32 Blk)
{
    .maxstack 32

    .locals init(class @isfree _F)
    
    newobj instance void @isfree::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Blk
    stfld int32 @isfree::Blk

L_Entry:
    // line 1692
    ldloc _F
    ldloc _F
    ldfld int32 @isfree::Blk
    ldc.i4 4
    sub
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    ldc.i4 0
    clt
    ldc.i4.0
    ceq
    stfld bool @isfree::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld bool @isfree::_fnvalue
    ret
}

// line 1697

.method static
void Callsp()
{
    .maxstack 32

    .locals init(
        class @callsp _F,
        int32 $tmpSwitchValue1,
        int8 $tmpSwitchValue2,
        int8 $tmpSwitchValue3,
        int8 $tmpSwitchValue4,
        int8 $tmpSwitchValue5,
        int8 $tmpSwitchValue6,
        int8 $tmpSwitchValue7,
        int8 $tmpSwitchValue8,
        int8 $tmpSwitchValue9,
        int8 $tmpSwitchValue10,
        int8 $tmpSwitchValue11,
        int8 $tmpSwitchValue12,
        int8 $tmpSwitchValue13,
        int8 $tmpSwitchValue14,
        int8 $tmpSwitchValue15,
        int8 $tmpSwitchValue16,
        int8 $tmpSwitchValue17,
        int8 $tmpSwitchValue18,
        int32 $tmpEndValue19,
        int32 $tmpIndex20,
        int32 $tmpIndex21,
        int32 $tmpEndValue22,
        int32 $tmpIndex23,
        int32 $tmpIndex24,
        int32 $tmpEndValue25,
        int32 $tmpIndex26,
        int32 $tmpIndex27,
        int32 $tmpEndValue28,
        int32 $tmpIndex29,
        int32 $tmpIndex30,
        int32 $tmpEndValue31,
        int32 $tmpIndex32,
        int32 $tmpIndex33,
        int32 $tmpEndValue34,
        int32 $tmpIndex35,
        int32 $tmpIndex36,
        int32 $tmpEndValue37,
        int32 $tmpIndex38,
        int32 $tmpIndex39,
        int32 $tmpEndValue40,
        int32 $tmpIndex41,
        int32 $tmpIndex42,
        int32 $tmpEndValue43,
        int32 $tmpIndex44,
        int32 $tmpIndex45)
    
    newobj instance void @callsp::.ctor()
    stloc _F

L_Entry:
    // line 1739
    ldsfld int32 _G::q
    ldc.i4 36
    cgt
    brfalse L_if_end_1
    // line 1739
    ldsfld valuetype T_beta STRING_232    // "invalid std proc/func    "
    call void Errori(valuetype T_beta String)
L_if_end_1:
    // line 1742
    ldc.i4 0 // (false)
    brfalse L_if_end_2
    // line 1742
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 6
    ldc.i4.0
    ldsfld int32 _G::Pc
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 47 // '/'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 6
    ldc.i4.0
    ldsfld int32 _G::Sp
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr "-> "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 2
    ldc.i4.0
    ldsfld int32 _G::q
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_2:
    // line 1744
    ldsfld int32 _G::q
    stloc $tmpSwitchValue1
    ldloc $tmpSwitchValue1
    ldc.i4 0
    bne.un L_check_case_4
    // line 1745
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 1745
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfil(int32 Fa)
    // line 1745
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 1746
    ldloc _F
    ldfld int8 @callsp::Fn
    ldc.i4 4
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_5
    // line 1746
    ldloc _F
    ldfld int8 @callsp::Fn
    stloc $tmpSwitchValue2
    ldloc $tmpSwitchValue2
    ldc.i4 1
    bne.un L_check_case_8
    // line 1747
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance void @callsp::Getfile(valuetype [lpcRuntime]LPC.File& f)
    br L_case_end_7
L_check_case_8:
    ldloc $tmpSwitchValue2
    ldc.i4 2
    bne.un L_check_case_9
    // line 1748
    ldsfld valuetype T_beta STRING_233    // "get on output file       "
    call void Errori(valuetype T_beta String)
    br L_case_end_7
L_check_case_9:
    ldloc $tmpSwitchValue2
    ldc.i4 3
    bne.un L_check_case_10
    // line 1749
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
    call instance void @callsp::Getfile(valuetype [lpcRuntime]LPC.File& f)
    br L_case_end_7
L_check_case_10:
    ldloc $tmpSwitchValue2
    ldc.i4 4
    bne.un L_case_end_7
    // line 1750
    ldsfld valuetype T_beta STRING_234    // "get on prr file          "
    call void Errori(valuetype T_beta String)
L_case_end_7:
    br L_if_end_6
L_else_5:
    // line 1752
    ldsflda valuetype T_array_249 _G::Filstate
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 1
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_11
    // line 1753
    ldsfld valuetype T_beta STRING_225    // "File not in read mode    "
    call void Errori(valuetype T_beta String)
L_if_end_11:
    // line 1754
    ldloc _F
    ldsflda valuetype T_array_297 _G::Filtable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    call instance void @callsp::Getfile(valuetype [lpcRuntime]LPC.File& f)
L_if_end_6:
    br L_case_end_3
L_check_case_4:
    ldloc $tmpSwitchValue1
    ldc.i4 1
    bne.un L_check_case_12
    // line 1757
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 1757
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfil(int32 Fa)
    // line 1757
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 1758
    ldloc _F
    ldfld int8 @callsp::Fn
    ldc.i4 4
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_13
    // line 1758
    ldloc _F
    ldfld int8 @callsp::Fn
    stloc $tmpSwitchValue3
    ldloc $tmpSwitchValue3
    ldc.i4 1
    bne.un L_check_case_16
    // line 1759
    ldsfld valuetype T_beta STRING_235    // "put on read file         "
    call void Errori(valuetype T_beta String)
    br L_case_end_15
L_check_case_16:
    ldloc $tmpSwitchValue3
    ldc.i4 2
    bne.un L_check_case_17
    // line 1760
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    ldloc _F
    ldflda int32 @callsp::Ad
    call instance void @callsp::Putfile(valuetype [lpcRuntime]LPC.File& f, int32& Ad)
    br L_case_end_15
L_check_case_17:
    ldloc $tmpSwitchValue3
    ldc.i4 3
    bne.un L_check_case_18
    // line 1761
    ldsfld valuetype T_beta STRING_236    // "put on prd file          "
    call void Errori(valuetype T_beta String)
    br L_case_end_15
L_check_case_18:
    ldloc $tmpSwitchValue3
    ldc.i4 4
    bne.un L_case_end_15
    // line 1762
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prr
    ldloc _F
    ldflda int32 @callsp::Ad
    call instance void @callsp::Putfile(valuetype [lpcRuntime]LPC.File& f, int32& Ad)
L_case_end_15:
    br L_if_end_14
L_else_13:
    // line 1764
    ldsflda valuetype T_array_249 _G::Filstate
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 2
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_19
    // line 1765
    ldsfld valuetype T_beta STRING_224    // "File not in write mode   "
    call void Errori(valuetype T_beta String)
L_if_end_19:
    // line 1766
    ldloc _F
    ldsflda valuetype T_array_297 _G::Filtable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    ldloc _F
    ldflda int32 @callsp::Ad
    call instance void @callsp::Putfile(valuetype [lpcRuntime]LPC.File& f, int32& Ad)
L_if_end_14:
    br L_case_end_3
L_check_case_12:
    ldloc $tmpSwitchValue1
    ldc.i4 2
    bne.un L_check_case_20
    // line 1770
    ldsfld valuetype T_beta STRING_232    // "invalid std proc/func    "
    call void Errori(valuetype T_beta String)
    br L_case_end_3
L_check_case_20:
    ldloc $tmpSwitchValue1
    ldc.i4 3
    bne.un L_check_case_21
    // line 1771
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 1771
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Pshadr(int32 a)
    // line 1771
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfil(int32 Fa)
    // line 1771
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 1772
    ldloc _F
    ldfld int8 @callsp::Fn
    ldc.i4 4
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_22
    // line 1772
    ldloc _F
    ldfld int8 @callsp::Fn
    stloc $tmpSwitchValue4
    ldloc $tmpSwitchValue4
    ldc.i4 1
    bne.un L_check_case_25
    // line 1774
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance bool [lpcRuntime]LPC.File::Eof()
    brfalse L_if_end_26
    // line 1774
    ldsfld valuetype T_beta STRING_231    // "End of file              "
    call void Errori(valuetype T_beta String)
L_if_end_26:
    // line 1775
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance void [lpcRuntime]LPC.File::ReadLn()
    br L_case_end_24
L_check_case_25:
    ldloc $tmpSwitchValue4
    ldc.i4 2
    bne.un L_check_case_27
    // line 1777
    ldsfld valuetype T_beta STRING_237    // "readln on output file    "
    call void Errori(valuetype T_beta String)
    br L_case_end_24
L_check_case_27:
    ldloc $tmpSwitchValue4
    ldc.i4 3
    bne.un L_check_case_28
    // line 1779
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
    call instance bool [lpcRuntime]LPC.File::Eof()
    brfalse L_if_end_29
    // line 1779
    ldsfld valuetype T_beta STRING_231    // "End of file              "
    call void Errori(valuetype T_beta String)
L_if_end_29:
    // line 1780
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
    call instance void [lpcRuntime]LPC.File::ReadLn()
    br L_case_end_24
L_check_case_28:
    ldloc $tmpSwitchValue4
    ldc.i4 4
    bne.un L_case_end_24
    // line 1782
    ldsfld valuetype T_beta STRING_238    // "readln on prr file       "
    call void Errori(valuetype T_beta String)
L_case_end_24:
    br L_if_end_23
L_else_22:
    // line 1784
    ldsflda valuetype T_array_249 _G::Filstate
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 1
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_30
    // line 1785
    ldsfld valuetype T_beta STRING_225    // "File not in read mode    "
    call void Errori(valuetype T_beta String)
L_if_end_30:
    // line 1786
    ldsflda valuetype T_array_297 _G::Filtable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    call instance bool [lpcRuntime]LPC.File::Eof()
    brfalse L_if_end_31
    // line 1786
    ldsfld valuetype T_beta STRING_231    // "End of file              "
    call void Errori(valuetype T_beta String)
L_if_end_31:
    // line 1787
    ldsflda valuetype T_array_297 _G::Filtable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
L_if_end_23:
    br L_case_end_3
L_check_case_21:
    ldloc $tmpSwitchValue1
    ldc.i4 4
    bne.un L_check_case_32
    // line 1790
    ldloc _F
    ldflda int32 @callsp::Ad1
    call void Popadr(int32& a)
    // line 1790
    ldloc _F
    ldfld int32 @callsp::Ad1
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Newspc(int32 Len, int32& Blk)
    // line 1792
    ldloc _F
    ldflda int32 @callsp::Ad1
    call void Popadr(int32& a)
    // line 1792
    ldloc _F
    ldfld int32 @callsp::Ad1
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Putadr(int32 a, int32 Ad)
    br L_case_end_3
L_check_case_32:
    ldloc $tmpSwitchValue1
    ldc.i4 5
    bne.un L_check_case_33
    // line 1794
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 1794
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Pshadr(int32 a)
    // line 1794
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfil(int32 Fa)
    // line 1794
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 1795
    ldloc _F
    ldfld int8 @callsp::Fn
    ldc.i4 4
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_34
    // line 1795
    ldloc _F
    ldfld int8 @callsp::Fn
    stloc $tmpSwitchValue5
    ldloc $tmpSwitchValue5
    ldc.i4 1
    bne.un L_check_case_37
    // line 1796
    ldsfld valuetype T_beta STRING_239    // "writeln on input file    "
    call void Errori(valuetype T_beta String)
    br L_case_end_36
L_check_case_37:
    ldloc $tmpSwitchValue5
    ldc.i4 2
    bne.un L_check_case_38
    // line 1797
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_36
L_check_case_38:
    ldloc $tmpSwitchValue5
    ldc.i4 3
    bne.un L_check_case_39
    // line 1798
    ldsfld valuetype T_beta STRING_240    // "writeln on prd file      "
    call void Errori(valuetype T_beta String)
    br L_case_end_36
L_check_case_39:
    ldloc $tmpSwitchValue5
    ldc.i4 4
    bne.un L_case_end_36
    // line 1799
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prr
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_case_end_36:
    br L_if_end_35
L_else_34:
    // line 1801
    ldsflda valuetype T_array_249 _G::Filstate
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 2
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_40
    // line 1802
    ldsfld valuetype T_beta STRING_224    // "File not in write mode   "
    call void Errori(valuetype T_beta String)
L_if_end_40:
    // line 1803
    ldsflda valuetype T_array_297 _G::Filtable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_35:
    br L_case_end_3
L_check_case_33:
    ldloc $tmpSwitchValue1
    ldc.i4 6
    bne.un L_check_case_41
    // line 1806
    ldloc _F
    ldflda int32 @callsp::l
    call void Popint(int32& i)
    // line 1806
    ldloc _F
    ldflda int32 @callsp::w
    call void Popint(int32& i)
    // line 1806
    ldloc _F
    ldflda int32 @callsp::Ad1
    call void Popadr(int32& a)
    // line 1807
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 1807
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Pshadr(int32 a)
    // line 1807
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfil(int32 Fa)
    // line 1807
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 1808
    ldloc _F
    ldfld int8 @callsp::Fn
    ldc.i4 4
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_42
    // line 1808
    ldloc _F
    ldfld int8 @callsp::Fn
    stloc $tmpSwitchValue6
    ldloc $tmpSwitchValue6
    ldc.i4 1
    bne.un L_check_case_45
    // line 1809
    ldsfld valuetype T_beta STRING_241    // "write on input file      "
    call void Errori(valuetype T_beta String)
    br L_case_end_44
L_check_case_45:
    ldloc $tmpSwitchValue6
    ldc.i4 2
    bne.un L_check_case_46
    // line 1810
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    ldloc _F
    ldfld int32 @callsp::Ad1
    ldloc _F
    ldfld int32 @callsp::w
    ldloc _F
    ldfld int32 @callsp::l
    call instance void @callsp::Writestr(valuetype [lpcRuntime]LPC.File& f, int32 Ad, int32 w, int32 l)
    br L_case_end_44
L_check_case_46:
    ldloc $tmpSwitchValue6
    ldc.i4 3
    bne.un L_check_case_47
    // line 1811
    ldsfld valuetype T_beta STRING_242    // "write on prd file        "
    call void Errori(valuetype T_beta String)
    br L_case_end_44
L_check_case_47:
    ldloc $tmpSwitchValue6
    ldc.i4 4
    bne.un L_case_end_44
    // line 1812
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prr
    ldloc _F
    ldfld int32 @callsp::Ad1
    ldloc _F
    ldfld int32 @callsp::w
    ldloc _F
    ldfld int32 @callsp::l
    call instance void @callsp::Writestr(valuetype [lpcRuntime]LPC.File& f, int32 Ad, int32 w, int32 l)
L_case_end_44:
    br L_if_end_43
L_else_42:
    // line 1814
    ldsflda valuetype T_array_249 _G::Filstate
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 2
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_48
    // line 1815
    ldsfld valuetype T_beta STRING_224    // "File not in write mode   "
    call void Errori(valuetype T_beta String)
L_if_end_48:
    // line 1816
    ldloc _F
    ldsflda valuetype T_array_297 _G::Filtable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    ldloc _F
    ldfld int32 @callsp::Ad1
    ldloc _F
    ldfld int32 @callsp::w
    ldloc _F
    ldfld int32 @callsp::l
    call instance void @callsp::Writestr(valuetype [lpcRuntime]LPC.File& f, int32 Ad, int32 w, int32 l)
L_if_end_43:
    /* nop */
    br L_case_end_3
L_check_case_41:
    ldloc $tmpSwitchValue1
    ldc.i4 7
    bne.un L_check_case_49
    // line 1819
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 1819
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfil(int32 Fa)
    // line 1819
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 1820
    ldloc _F
    ldfld int8 @callsp::Fn
    ldc.i4 4
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_50
    // line 1820
    ldloc _F
    ldfld int8 @callsp::Fn
    stloc $tmpSwitchValue7
    ldloc $tmpSwitchValue7
    ldc.i4 1
    bne.un L_check_case_53
    // line 1821
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance bool [lpcRuntime]LPC.File::Eoln()
    stfld bool @callsp::Line
    br L_case_end_52
L_check_case_53:
    ldloc $tmpSwitchValue7
    ldc.i4 2
    bne.un L_check_case_54
    // line 1822
    ldsfld valuetype T_beta STRING_243    // "eoln output file         "
    call void Errori(valuetype T_beta String)
    br L_case_end_52
L_check_case_54:
    ldloc $tmpSwitchValue7
    ldc.i4 3
    bne.un L_check_case_55
    // line 1823
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
    call instance bool [lpcRuntime]LPC.File::Eoln()
    stfld bool @callsp::Line
    br L_case_end_52
L_check_case_55:
    ldloc $tmpSwitchValue7
    ldc.i4 4
    bne.un L_case_end_52
    // line 1824
    ldsfld valuetype T_beta STRING_244    // "eoln on prr file         "
    call void Errori(valuetype T_beta String)
L_case_end_52:
    br L_if_end_51
L_else_50:
    // line 1827
    ldsflda valuetype T_array_249 _G::Filstate
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 1
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_56
    // line 1828
    ldsfld valuetype T_beta STRING_225    // "File not in read mode    "
    call void Errori(valuetype T_beta String)
L_if_end_56:
    // line 1829
    ldloc _F
    ldsflda valuetype T_array_297 _G::Filtable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    call instance bool [lpcRuntime]LPC.File::Eoln()
    stfld bool @callsp::Line
L_if_end_51:
    // line 1831
    ldloc _F
    ldfld bool @callsp::Line
    call void Pshint(int32 i)
    br L_case_end_3
L_check_case_49:
    ldloc $tmpSwitchValue1
    ldc.i4 8
    bne.un L_check_case_57
    // line 1833
    ldloc _F
    ldflda int32 @callsp::w
    call void Popint(int32& i)
    // line 1833
    ldloc _F
    ldflda int32 @callsp::i
    call void Popint(int32& i)
    // line 1833
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 1833
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Pshadr(int32 a)
    // line 1834
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfil(int32 Fa)
    // line 1834
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 1835
    ldloc _F
    ldfld int8 @callsp::Fn
    ldc.i4 4
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_58
    // line 1835
    ldloc _F
    ldfld int8 @callsp::Fn
    stloc $tmpSwitchValue8
    ldloc $tmpSwitchValue8
    ldc.i4 1
    bne.un L_check_case_61
    // line 1836
    ldsfld valuetype T_beta STRING_241    // "write on input file      "
    call void Errori(valuetype T_beta String)
    br L_case_end_60
L_check_case_61:
    ldloc $tmpSwitchValue8
    ldc.i4 2
    bne.un L_check_case_62
    // line 1837
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld int32 @callsp::w
    ldc.i4.0
    ldloc _F
    ldfld int32 @callsp::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    br L_case_end_60
L_check_case_62:
    ldloc $tmpSwitchValue8
    ldc.i4 3
    bne.un L_check_case_63
    // line 1838
    ldsfld valuetype T_beta STRING_242    // "write on prd file        "
    call void Errori(valuetype T_beta String)
    br L_case_end_60
L_check_case_63:
    ldloc $tmpSwitchValue8
    ldc.i4 4
    bne.un L_case_end_60
    // line 1839
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prr
    dup
    ldloc _F
    ldfld int32 @callsp::w
    ldc.i4.0
    ldloc _F
    ldfld int32 @callsp::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
L_case_end_60:
    br L_if_end_59
L_else_58:
    // line 1842
    ldsflda valuetype T_array_249 _G::Filstate
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 2
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_64
    // line 1843
    ldsfld valuetype T_beta STRING_224    // "File not in write mode   "
    call void Errori(valuetype T_beta String)
L_if_end_64:
    // line 1844
    ldsflda valuetype T_array_297 _G::Filtable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    dup
    ldloc _F
    ldfld int32 @callsp::w
    ldc.i4.0
    ldloc _F
    ldfld int32 @callsp::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
L_if_end_59:
    br L_case_end_3
L_check_case_57:
    ldloc $tmpSwitchValue1
    ldc.i4 9
    bne.un L_check_case_65
    // line 1847
    ldloc _F
    ldflda int32 @callsp::w
    call void Popint(int32& i)
    // line 1847
    ldloc _F
    ldflda float64 @callsp::r
    call void Poprel(float64& r)
    // line 1847
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 1847
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Pshadr(int32 a)
    // line 1848
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfil(int32 Fa)
    // line 1848
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 1849
    ldloc _F
    ldfld int8 @callsp::Fn
    ldc.i4 4
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_66
    // line 1849
    ldloc _F
    ldfld int8 @callsp::Fn
    stloc $tmpSwitchValue9
    ldloc $tmpSwitchValue9
    ldc.i4 1
    bne.un L_check_case_69
    // line 1850
    ldsfld valuetype T_beta STRING_241    // "write on input file      "
    call void Errori(valuetype T_beta String)
    br L_case_end_68
L_check_case_69:
    ldloc $tmpSwitchValue9
    ldc.i4 2
    bne.un L_check_case_70
    // line 1851
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld int32 @callsp::w
    ldc.i4.0
    ldloc _F
    ldfld float64 @callsp::r
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    pop
    br L_case_end_68
L_check_case_70:
    ldloc $tmpSwitchValue9
    ldc.i4 3
    bne.un L_check_case_71
    // line 1852
    ldsfld valuetype T_beta STRING_242    // "write on prd file        "
    call void Errori(valuetype T_beta String)
    br L_case_end_68
L_check_case_71:
    ldloc $tmpSwitchValue9
    ldc.i4 4
    bne.un L_case_end_68
    // line 1853
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prr
    dup
    ldloc _F
    ldfld int32 @callsp::w
    ldc.i4.0
    ldloc _F
    ldfld float64 @callsp::r
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    pop
L_case_end_68:
    br L_if_end_67
L_else_66:
    // line 1856
    ldsflda valuetype T_array_249 _G::Filstate
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 2
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_72
    // line 1857
    ldsfld valuetype T_beta STRING_224    // "File not in write mode   "
    call void Errori(valuetype T_beta String)
L_if_end_72:
    // line 1858
    ldsflda valuetype T_array_297 _G::Filtable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    dup
    ldloc _F
    ldfld int32 @callsp::w
    ldc.i4.0
    ldloc _F
    ldfld float64 @callsp::r
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    pop
L_if_end_67:
    /* nop */
    br L_case_end_3
L_check_case_65:
    ldloc $tmpSwitchValue1
    ldc.i4 10
    bne.un L_check_case_73
    // line 1861
    ldloc _F
    ldflda int32 @callsp::w
    call void Popint(int32& i)
    // line 1861
    ldloc _F
    ldflda int32 @callsp::i
    call void Popint(int32& i)
    // line 1861
    ldloc _F
    ldloc _F
    ldfld int32 @callsp::i
    stfld uint8 @callsp::c
    // line 1861
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 1862
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Pshadr(int32 a)
    // line 1862
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfil(int32 Fa)
    // line 1862
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 1863
    ldloc _F
    ldfld int8 @callsp::Fn
    ldc.i4 4
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_74
    // line 1863
    ldloc _F
    ldfld int8 @callsp::Fn
    stloc $tmpSwitchValue10
    ldloc $tmpSwitchValue10
    ldc.i4 1
    bne.un L_check_case_77
    // line 1864
    ldsfld valuetype T_beta STRING_241    // "write on input file      "
    call void Errori(valuetype T_beta String)
    br L_case_end_76
L_check_case_77:
    ldloc $tmpSwitchValue10
    ldc.i4 2
    bne.un L_check_case_78
    // line 1865
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld int32 @callsp::w
    ldc.i4.0
    ldloc _F
    ldfld uint8 @callsp::c
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    pop
    br L_case_end_76
L_check_case_78:
    ldloc $tmpSwitchValue10
    ldc.i4 3
    bne.un L_check_case_79
    // line 1866
    ldsfld valuetype T_beta STRING_242    // "write on prd file        "
    call void Errori(valuetype T_beta String)
    br L_case_end_76
L_check_case_79:
    ldloc $tmpSwitchValue10
    ldc.i4 4
    bne.un L_case_end_76
    // line 1867
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prr
    dup
    ldloc _F
    ldfld int32 @callsp::w
    ldc.i4.0
    ldloc _F
    ldfld uint8 @callsp::c
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    pop
L_case_end_76:
    br L_if_end_75
L_else_74:
    // line 1870
    ldsflda valuetype T_array_249 _G::Filstate
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 2
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_80
    // line 1871
    ldsfld valuetype T_beta STRING_224    // "File not in write mode   "
    call void Errori(valuetype T_beta String)
L_if_end_80:
    // line 1872
    ldsflda valuetype T_array_297 _G::Filtable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    dup
    ldloc _F
    ldfld int32 @callsp::w
    ldc.i4.0
    ldloc _F
    ldfld uint8 @callsp::c
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    pop
L_if_end_75:
    br L_case_end_3
L_check_case_73:
    ldloc $tmpSwitchValue1
    ldc.i4 11
    bne.un L_check_case_81
    // line 1875
    ldloc _F
    ldflda int32 @callsp::Ad1
    call void Popadr(int32& a)
    // line 1875
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 1875
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Pshadr(int32 a)
    // line 1875
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfil(int32 Fa)
    // line 1876
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 1877
    ldloc _F
    ldfld int8 @callsp::Fn
    ldc.i4 4
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_82
    // line 1877
    ldloc _F
    ldfld int8 @callsp::Fn
    stloc $tmpSwitchValue11
    ldloc $tmpSwitchValue11
    ldc.i4 1
    bne.un L_check_case_85
    // line 1878
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    ldloc _F
    ldflda int32 @callsp::i
    call instance void @callsp::Readi(valuetype [lpcRuntime]LPC.File& f, int32& i)
    // line 1878
    ldloc _F
    ldfld int32 @callsp::Ad1
    ldloc _F
    ldfld int32 @callsp::i
    call void Putint(int32 a, int32 x)
    br L_case_end_84
L_check_case_85:
    ldloc $tmpSwitchValue11
    ldc.i4 2
    bne.un L_check_case_86
    // line 1879
    ldsfld valuetype T_beta STRING_245    // "read on output file      "
    call void Errori(valuetype T_beta String)
    br L_case_end_84
L_check_case_86:
    ldloc $tmpSwitchValue11
    ldc.i4 3
    bne.un L_check_case_87
    // line 1880
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
    ldloc _F
    ldflda int32 @callsp::i
    call instance void @callsp::Readi(valuetype [lpcRuntime]LPC.File& f, int32& i)
    // line 1880
    ldloc _F
    ldfld int32 @callsp::Ad1
    ldloc _F
    ldfld int32 @callsp::i
    call void Putint(int32 a, int32 x)
    br L_case_end_84
L_check_case_87:
    ldloc $tmpSwitchValue11
    ldc.i4 4
    bne.un L_case_end_84
    // line 1881
    ldsfld valuetype T_beta STRING_246    // "read on prr file         "
    call void Errori(valuetype T_beta String)
L_case_end_84:
    br L_if_end_83
L_else_82:
    // line 1884
    ldsflda valuetype T_array_249 _G::Filstate
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 1
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_88
    // line 1885
    ldsfld valuetype T_beta STRING_225    // "File not in read mode    "
    call void Errori(valuetype T_beta String)
L_if_end_88:
    // line 1886
    ldloc _F
    ldsflda valuetype T_array_297 _G::Filtable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    ldloc _F
    ldflda int32 @callsp::i
    call instance void @callsp::Readi(valuetype [lpcRuntime]LPC.File& f, int32& i)
    // line 1887
    ldloc _F
    ldfld int32 @callsp::Ad1
    ldloc _F
    ldfld int32 @callsp::i
    call void Putint(int32 a, int32 x)
L_if_end_83:
    br L_case_end_3
L_check_case_81:
    ldloc $tmpSwitchValue1
    ldc.i4 12
    bne.un L_check_case_89
    // line 1890
    ldloc _F
    ldflda int32 @callsp::Ad1
    call void Popadr(int32& a)
    // line 1890
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 1890
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Pshadr(int32 a)
    // line 1890
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfil(int32 Fa)
    // line 1891
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 1892
    ldloc _F
    ldfld int8 @callsp::Fn
    ldc.i4 4
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_90
    // line 1892
    ldloc _F
    ldfld int8 @callsp::Fn
    stloc $tmpSwitchValue12
    ldloc $tmpSwitchValue12
    ldc.i4 1
    bne.un L_check_case_93
    // line 1893
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    ldloc _F
    ldflda float64 @callsp::r
    call instance void @callsp::Readr(valuetype [lpcRuntime]LPC.File& f, float64& r)
    // line 1893
    ldloc _F
    ldfld int32 @callsp::Ad1
    ldloc _F
    ldfld float64 @callsp::r
    call void Putrel(int32 a, float64 f)
    br L_case_end_92
L_check_case_93:
    ldloc $tmpSwitchValue12
    ldc.i4 2
    bne.un L_check_case_94
    // line 1894
    ldsfld valuetype T_beta STRING_245    // "read on output file      "
    call void Errori(valuetype T_beta String)
    br L_case_end_92
L_check_case_94:
    ldloc $tmpSwitchValue12
    ldc.i4 3
    bne.un L_check_case_95
    // line 1895
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
    ldloc _F
    ldflda float64 @callsp::r
    call instance void @callsp::Readr(valuetype [lpcRuntime]LPC.File& f, float64& r)
    // line 1895
    ldloc _F
    ldfld int32 @callsp::Ad1
    ldloc _F
    ldfld float64 @callsp::r
    call void Putrel(int32 a, float64 f)
    br L_case_end_92
L_check_case_95:
    ldloc $tmpSwitchValue12
    ldc.i4 4
    bne.un L_case_end_92
    // line 1896
    ldsfld valuetype T_beta STRING_246    // "read on prr file         "
    call void Errori(valuetype T_beta String)
L_case_end_92:
    br L_if_end_91
L_else_90:
    // line 1899
    ldsflda valuetype T_array_249 _G::Filstate
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 1
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_96
    // line 1900
    ldsfld valuetype T_beta STRING_225    // "File not in read mode    "
    call void Errori(valuetype T_beta String)
L_if_end_96:
    // line 1901
    ldloc _F
    ldsflda valuetype T_array_297 _G::Filtable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    ldloc _F
    ldflda float64 @callsp::r
    call instance void @callsp::Readr(valuetype [lpcRuntime]LPC.File& f, float64& r)
    // line 1902
    ldloc _F
    ldfld int32 @callsp::Ad1
    ldloc _F
    ldfld float64 @callsp::r
    call void Putrel(int32 a, float64 f)
L_if_end_91:
    br L_case_end_3
L_check_case_89:
    ldloc $tmpSwitchValue1
    ldc.i4 13
    bne.un L_check_case_97
    // line 1905
    ldloc _F
    ldflda int32 @callsp::Ad1
    call void Popadr(int32& a)
    // line 1905
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 1905
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Pshadr(int32 a)
    // line 1905
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfil(int32 Fa)
    // line 1906
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 1907
    ldloc _F
    ldfld int8 @callsp::Fn
    ldc.i4 4
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_98
    // line 1907
    ldloc _F
    ldfld int8 @callsp::Fn
    stloc $tmpSwitchValue13
    ldloc $tmpSwitchValue13
    ldc.i4 1
    bne.un L_check_case_101
    // line 1908
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    ldloc _F
    ldflda uint8 @callsp::c
    call instance void @callsp::Readc(valuetype [lpcRuntime]LPC.File& f, uint8& c)
    // line 1908
    ldloc _F
    ldfld int32 @callsp::Ad1
    ldloc _F
    ldfld uint8 @callsp::c
    call void Putchr(int32 a, uint8 c)
    br L_case_end_100
L_check_case_101:
    ldloc $tmpSwitchValue13
    ldc.i4 2
    bne.un L_check_case_102
    // line 1909
    ldsfld valuetype T_beta STRING_245    // "read on output file      "
    call void Errori(valuetype T_beta String)
    br L_case_end_100
L_check_case_102:
    ldloc $tmpSwitchValue13
    ldc.i4 3
    bne.un L_check_case_103
    // line 1910
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
    ldloc _F
    ldflda uint8 @callsp::c
    call instance void @callsp::Readc(valuetype [lpcRuntime]LPC.File& f, uint8& c)
    // line 1910
    ldloc _F
    ldfld int32 @callsp::Ad1
    ldloc _F
    ldfld uint8 @callsp::c
    call void Putchr(int32 a, uint8 c)
    br L_case_end_100
L_check_case_103:
    ldloc $tmpSwitchValue13
    ldc.i4 4
    bne.un L_case_end_100
    // line 1911
    ldsfld valuetype T_beta STRING_246    // "read on prr file         "
    call void Errori(valuetype T_beta String)
L_case_end_100:
    br L_if_end_99
L_else_98:
    // line 1914
    ldsflda valuetype T_array_249 _G::Filstate
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 1
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_104
    // line 1915
    ldsfld valuetype T_beta STRING_225    // "File not in read mode    "
    call void Errori(valuetype T_beta String)
L_if_end_104:
    // line 1916
    ldloc _F
    ldsflda valuetype T_array_297 _G::Filtable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    ldloc _F
    ldflda uint8 @callsp::c
    call instance void @callsp::Readc(valuetype [lpcRuntime]LPC.File& f, uint8& c)
    // line 1917
    ldloc _F
    ldfld int32 @callsp::Ad1
    ldloc _F
    ldfld uint8 @callsp::c
    call void Putchr(int32 a, uint8 c)
L_if_end_99:
    br L_case_end_3
L_check_case_97:
    ldloc $tmpSwitchValue1
    ldc.i4 14
    bne.un L_check_case_105
    // line 1920
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 1920
    ldsfld float64 _G::R1
    call float64 [lpcRuntime]LPC.Helpers::Sin(float64)
    call void Pshrel(float64 r)
    br L_case_end_3
L_check_case_105:
    ldloc $tmpSwitchValue1
    ldc.i4 15
    bne.un L_check_case_106
    // line 1921
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 1921
    ldsfld float64 _G::R1
    call float64 [lpcRuntime]LPC.Helpers::Cos(float64)
    call void Pshrel(float64 r)
    br L_case_end_3
L_check_case_106:
    ldloc $tmpSwitchValue1
    ldc.i4 16
    bne.un L_check_case_107
    // line 1922
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 1922
    ldsfld float64 _G::R1
    call float64 [lpcRuntime]LPC.Helpers::Exp(float64)
    call void Pshrel(float64 r)
    br L_case_end_3
L_check_case_107:
    ldloc $tmpSwitchValue1
    ldc.i4 17
    bne.un L_check_case_108
    // line 1923
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 1923
    ldsfld float64 _G::R1
    call float64 [lpcRuntime]LPC.Helpers::Ln(float64)
    call void Pshrel(float64 r)
    br L_case_end_3
L_check_case_108:
    ldloc $tmpSwitchValue1
    ldc.i4 18
    bne.un L_check_case_109
    // line 1924
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 1924
    ldsfld float64 _G::R1
    call float64 [lpcRuntime]LPC.Helpers::Sqrt(float64)
    call void Pshrel(float64 r)
    br L_case_end_3
L_check_case_109:
    ldloc $tmpSwitchValue1
    ldc.i4 19
    bne.un L_check_case_110
    // line 1925
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 1925
    ldsfld float64 _G::R1
    call float64 [lpcRuntime]LPC.Helpers::Arctan(float64)
    call void Pshrel(float64 r)
    br L_case_end_3
L_check_case_110:
    ldloc $tmpSwitchValue1
    ldc.i4 20
    bne.un L_check_case_111
    // line 1927
    ldsfld valuetype T_beta STRING_232    // "invalid std proc/func    "
    call void Errori(valuetype T_beta String)
    br L_case_end_3
L_check_case_111:
    ldloc $tmpSwitchValue1
    ldc.i4 21
    bne.un L_check_case_112
    // line 1928
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 1928
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfil(int32 Fa)
    // line 1928
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 1929
    ldloc _F
    ldfld int8 @callsp::Fn
    ldc.i4 4
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_113
    // line 1929
    ldloc _F
    ldfld int8 @callsp::Fn
    stloc $tmpSwitchValue14
    ldloc $tmpSwitchValue14
    ldc.i4 1
    bne.un L_check_case_116
    // line 1930
    ldsfld valuetype T_beta STRING_247    // "page on read file        "
    call void Errori(valuetype T_beta String)
    br L_case_end_115
L_check_case_116:
    ldloc $tmpSwitchValue14
    ldc.i4 2
    bne.un L_check_case_117
    // line 1931
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::Page()
    br L_case_end_115
L_check_case_117:
    ldloc $tmpSwitchValue14
    ldc.i4 3
    bne.un L_check_case_118
    // line 1932
    ldsfld valuetype T_beta STRING_248    // "page on prd file         "
    call void Errori(valuetype T_beta String)
    br L_case_end_115
L_check_case_118:
    ldloc $tmpSwitchValue14
    ldc.i4 4
    bne.un L_case_end_115
    // line 1933
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prr
    call instance void [lpcRuntime]LPC.File::Page()
L_case_end_115:
    br L_if_end_114
L_else_113:
    // line 1936
    ldsflda valuetype T_array_249 _G::Filstate
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 2
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_119
    // line 1937
    ldsfld valuetype T_beta STRING_224    // "File not in write mode   "
    call void Errori(valuetype T_beta String)
L_if_end_119:
    // line 1938
    ldsflda valuetype T_array_297 _G::Filtable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    call instance void [lpcRuntime]LPC.File::Page()
L_if_end_114:
    br L_case_end_3
L_check_case_112:
    ldloc $tmpSwitchValue1
    ldc.i4 22
    bne.un L_check_case_120
    // line 1941
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 1941
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfil(int32 Fa)
    // line 1941
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 1942
    ldloc _F
    ldfld int8 @callsp::Fn
    ldc.i4 4
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_121
    // line 1942
    ldloc _F
    ldfld int8 @callsp::Fn
    stloc $tmpSwitchValue15
    ldloc $tmpSwitchValue15
    ldc.i4 1
    bne.un L_check_case_124
    // line 1943
    ldsfld valuetype T_beta STRING_249    // "reset on input file      "
    call void Errori(valuetype T_beta String)
    br L_case_end_123
L_check_case_124:
    ldloc $tmpSwitchValue15
    ldc.i4 2
    bne.un L_check_case_125
    // line 1944
    ldsfld valuetype T_beta STRING_250    // "reset on output file     "
    call void Errori(valuetype T_beta String)
    br L_case_end_123
L_check_case_125:
    ldloc $tmpSwitchValue15
    ldc.i4 3
    bne.un L_check_case_126
    // line 1945
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
    call instance void [lpcRuntime]LPC.File::Reset()
    br L_case_end_123
L_check_case_126:
    ldloc $tmpSwitchValue15
    ldc.i4 4
    bne.un L_case_end_123
    // line 1946
    ldsfld valuetype T_beta STRING_251    // "reset on prr file        "
    call void Errori(valuetype T_beta String)
L_case_end_123:
    br L_if_end_122
L_else_121:
    // line 1949
    ldsflda valuetype T_array_249 _G::Filstate
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldc.i4 1
    stobj int32
    // line 1950
    ldsflda valuetype T_array_297 _G::Filtable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    call instance void [lpcRuntime]LPC.File::Reset()
    /* nop */
L_if_end_122:
    br L_case_end_3
L_check_case_120:
    ldloc $tmpSwitchValue1
    ldc.i4 23
    bne.un L_check_case_127
    // line 1953
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 1953
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfil(int32 Fa)
    // line 1953
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 1954
    ldloc _F
    ldfld int8 @callsp::Fn
    ldc.i4 4
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_128
    // line 1954
    ldloc _F
    ldfld int8 @callsp::Fn
    stloc $tmpSwitchValue16
    ldloc $tmpSwitchValue16
    ldc.i4 1
    bne.un L_check_case_131
    // line 1955
    ldsfld valuetype T_beta STRING_252    // "rewrite on input file    "
    call void Errori(valuetype T_beta String)
    br L_case_end_130
L_check_case_131:
    ldloc $tmpSwitchValue16
    ldc.i4 2
    bne.un L_check_case_132
    // line 1956
    ldsfld valuetype T_beta STRING_253    // "rewrite on output file   "
    call void Errori(valuetype T_beta String)
    br L_case_end_130
L_check_case_132:
    ldloc $tmpSwitchValue16
    ldc.i4 3
    bne.un L_check_case_133
    // line 1957
    ldsfld valuetype T_beta STRING_254    // "rewrite on prd file      "
    call void Errori(valuetype T_beta String)
    br L_case_end_130
L_check_case_133:
    ldloc $tmpSwitchValue16
    ldc.i4 4
    bne.un L_case_end_130
    // line 1958
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prr
    call instance void [lpcRuntime]LPC.File::Rewrite()
L_case_end_130:
    br L_if_end_129
L_else_128:
    // line 1961
    ldsflda valuetype T_array_249 _G::Filstate
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldc.i4 2
    stobj int32
    // line 1962
    ldsflda valuetype T_array_297 _G::Filtable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    call instance void [lpcRuntime]LPC.File::Rewrite()
    /* nop */
L_if_end_129:
    br L_case_end_3
L_check_case_127:
    ldloc $tmpSwitchValue1
    ldc.i4 24
    bne.un L_check_case_134
    // line 1965
    ldloc _F
    ldflda int32 @callsp::w
    call void Popint(int32& i)
    // line 1965
    ldloc _F
    ldflda int32 @callsp::i
    call void Popint(int32& i)
    // line 1965
    ldloc _F
    ldloc _F
    ldfld int32 @callsp::i
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    stfld bool @callsp::b
    // line 1965
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 1966
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Pshadr(int32 a)
    // line 1966
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfil(int32 Fa)
    // line 1966
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 1967
    ldloc _F
    ldfld int8 @callsp::Fn
    ldc.i4 4
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_135
    // line 1967
    ldloc _F
    ldfld int8 @callsp::Fn
    stloc $tmpSwitchValue17
    ldloc $tmpSwitchValue17
    ldc.i4 1
    bne.un L_check_case_138
    // line 1968
    ldsfld valuetype T_beta STRING_241    // "write on input file      "
    call void Errori(valuetype T_beta String)
    br L_case_end_137
L_check_case_138:
    ldloc $tmpSwitchValue17
    ldc.i4 2
    bne.un L_check_case_139
    // line 1969
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld int32 @callsp::w
    ldc.i4.0
    ldloc _F
    ldfld bool @callsp::b
    brtrue L_bool_to_string_true_140
    ldstr "false"
    br L_bool_to_string_false_141
L_bool_to_string_true_140:
    ldstr "true"
L_bool_to_string_false_141:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    pop
    br L_case_end_137
L_check_case_139:
    ldloc $tmpSwitchValue17
    ldc.i4 3
    bne.un L_check_case_142
    // line 1970
    ldsfld valuetype T_beta STRING_242    // "write on prd file        "
    call void Errori(valuetype T_beta String)
    br L_case_end_137
L_check_case_142:
    ldloc $tmpSwitchValue17
    ldc.i4 4
    bne.un L_case_end_137
    // line 1971
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prr
    dup
    ldloc _F
    ldfld int32 @callsp::w
    ldc.i4.0
    ldloc _F
    ldfld bool @callsp::b
    brtrue L_bool_to_string_true_143
    ldstr "false"
    br L_bool_to_string_false_144
L_bool_to_string_true_143:
    ldstr "true"
L_bool_to_string_false_144:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    pop
L_case_end_137:
    br L_if_end_136
L_else_135:
    // line 1974
    ldsflda valuetype T_array_249 _G::Filstate
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 2
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_145
    // line 1975
    ldsfld valuetype T_beta STRING_224    // "File not in write mode   "
    call void Errori(valuetype T_beta String)
L_if_end_145:
    // line 1976
    ldsflda valuetype T_array_297 _G::Filtable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    dup
    ldloc _F
    ldfld int32 @callsp::w
    ldc.i4.0
    ldloc _F
    ldfld bool @callsp::b
    brtrue L_bool_to_string_true_146
    ldstr "false"
    br L_bool_to_string_false_147
L_bool_to_string_true_146:
    ldstr "true"
L_bool_to_string_false_147:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    pop
L_if_end_136:
    br L_case_end_3
L_check_case_134:
    ldloc $tmpSwitchValue1
    ldc.i4 25
    bne.un L_check_case_148
    // line 1979
    ldloc _F
    ldflda int32 @callsp::f
    call void Popint(int32& i)
    // line 1979
    ldloc _F
    ldflda int32 @callsp::w
    call void Popint(int32& i)
    // line 1979
    ldloc _F
    ldflda float64 @callsp::r
    call void Poprel(float64& r)
    // line 1979
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 1979
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Pshadr(int32 a)
    // line 1980
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfil(int32 Fa)
    // line 1980
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 1981
    ldloc _F
    ldfld int8 @callsp::Fn
    ldc.i4 4
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_149
    // line 1981
    ldloc _F
    ldfld int8 @callsp::Fn
    stloc $tmpSwitchValue18
    ldloc $tmpSwitchValue18
    ldc.i4 1
    bne.un L_check_case_152
    // line 1982
    ldsfld valuetype T_beta STRING_241    // "write on input file      "
    call void Errori(valuetype T_beta String)
    br L_case_end_151
L_check_case_152:
    ldloc $tmpSwitchValue18
    ldc.i4 2
    bne.un L_check_case_153
    // line 1983
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld int32 @callsp::w
    ldloc _F
    ldfld int32 @callsp::f
    ldloc _F
    ldfld float64 @callsp::r
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    pop
    br L_case_end_151
L_check_case_153:
    ldloc $tmpSwitchValue18
    ldc.i4 3
    bne.un L_check_case_154
    // line 1984
    ldsfld valuetype T_beta STRING_242    // "write on prd file        "
    call void Errori(valuetype T_beta String)
    br L_case_end_151
L_check_case_154:
    ldloc $tmpSwitchValue18
    ldc.i4 4
    bne.un L_case_end_151
    // line 1985
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prr
    dup
    ldloc _F
    ldfld int32 @callsp::w
    ldloc _F
    ldfld int32 @callsp::f
    ldloc _F
    ldfld float64 @callsp::r
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    pop
L_case_end_151:
    br L_if_end_150
L_else_149:
    // line 1988
    ldsflda valuetype T_array_249 _G::Filstate
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 2
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_155
    // line 1989
    ldsfld valuetype T_beta STRING_224    // "File not in write mode   "
    call void Errori(valuetype T_beta String)
L_if_end_155:
    // line 1990
    ldsflda valuetype T_array_297 _G::Filtable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    dup
    ldloc _F
    ldfld int32 @callsp::w
    ldloc _F
    ldfld int32 @callsp::f
    ldloc _F
    ldfld float64 @callsp::r
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    pop
L_if_end_150:
    br L_case_end_3
L_check_case_148:
    ldloc $tmpSwitchValue1
    ldc.i4 26
    bne.un L_check_case_156
    // line 1994
    ldloc _F
    ldflda int32 @callsp::Ad1
    call void Popadr(int32& a)
    // line 1994
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 1994
    ldloc _F
    ldfld int32 @callsp::Ad1
    ldloc _F
    ldfld int32 @callsp::Ad
    call int32 Getadr(int32 a)
    call void Dspspc(int32 Len, int32 Blk)
    br L_case_end_3
L_check_case_156:
    ldloc $tmpSwitchValue1
    ldc.i4 27
    bne.un L_check_case_157
    // line 1996
    ldloc _F
    ldflda int32 @callsp::l
    call void Popint(int32& i)
    // line 1996
    ldloc _F
    ldflda int32 @callsp::Ad1
    call void Popadr(int32& a)
    // line 1996
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 1997
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfilwm(int32 Fa)
    // line 1997
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 1998
    ldloc _F
    ldfld int32 @callsp::l
    stloc $tmpEndValue19
    ldc.i4 1
    dup
    ldloc $tmpEndValue19
    bgt L_for_end_159
    stloc $tmpIndex20
    ldloc _F
    ldloc $tmpIndex20
    stfld int32 @callsp::i
L_for_loop_158:
    // line 1999
    ldsflda valuetype T_array_297 _G::Bfiltable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    dup
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad1
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Write(int32)
    pop
    // line 2000
    ldloc _F
    ldloc _F
    ldfld int32 @callsp::Ad1
    ldc.i4 1
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 @callsp::Ad1
    ldloc _F
    ldfld int32 @callsp::i
    dup
    ldloc $tmpEndValue19
    beq L_for_end_159
    ldc.i4.1
    add
    stloc $tmpIndex21
    ldloc _F
    ldloc $tmpIndex21
    stfld int32 @callsp::i
    br L_for_loop_158
L_for_end_159:
    pop
    br L_case_end_3
L_check_case_157:
    ldloc $tmpSwitchValue1
    ldc.i4 28
    bne.un L_check_case_160
    // line 2003
    ldloc _F
    ldflda int32 @callsp::i
    call void Popint(int32& i)
    // line 2003
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 2003
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Pshadr(int32 a)
    // line 2003
    ldloc _F
    ldfld int32 @callsp::i
    call void Pshint(int32 i)
    // line 2004
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfilwm(int32 Fa)
    // line 2004
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 2005
    ldc.i4 4
    stloc $tmpEndValue22
    ldc.i4 1
    dup
    ldloc $tmpEndValue22
    bgt L_for_end_162
    stloc $tmpIndex23
    ldloc _F
    ldloc $tmpIndex23
    stfld int32 @callsp::i
L_for_loop_161:
    // line 2006
    ldsflda valuetype T_array_297 _G::Bfiltable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    dup
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::Sp
    ldc.i4 4
    sub
    ldloc _F
    ldfld int32 @callsp::i
    add
    ldc.i4 1
    sub
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Write(int32)
    pop
    ldloc _F
    ldfld int32 @callsp::i
    dup
    ldloc $tmpEndValue22
    beq L_for_end_162
    ldc.i4.1
    add
    stloc $tmpIndex24
    ldloc _F
    ldloc $tmpIndex24
    stfld int32 @callsp::i
    br L_for_loop_161
L_for_end_162:
    pop
    // line 2007
    ldloc _F
    ldflda int32 @callsp::i
    call void Popint(int32& i)
    br L_case_end_3
L_check_case_160:
    ldloc $tmpSwitchValue1
    ldc.i4 29
    bne.un L_check_case_163
    // line 2009
    ldloc _F
    ldflda float64 @callsp::r
    call void Poprel(float64& r)
    // line 2009
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 2009
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Pshadr(int32 a)
    // line 2009
    ldloc _F
    ldfld float64 @callsp::r
    call void Pshrel(float64 r)
    // line 2010
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfilwm(int32 Fa)
    // line 2010
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 2011
    ldc.i4 8
    stloc $tmpEndValue25
    ldc.i4 1
    dup
    ldloc $tmpEndValue25
    bgt L_for_end_165
    stloc $tmpIndex26
    ldloc _F
    ldloc $tmpIndex26
    stfld int32 @callsp::i
L_for_loop_164:
    // line 2012
    ldsflda valuetype T_array_297 _G::Bfiltable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    dup
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::Sp
    ldc.i4 8
    sub
    ldloc _F
    ldfld int32 @callsp::i
    add
    ldc.i4 1
    sub
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Write(int32)
    pop
    ldloc _F
    ldfld int32 @callsp::i
    dup
    ldloc $tmpEndValue25
    beq L_for_end_165
    ldc.i4.1
    add
    stloc $tmpIndex27
    ldloc _F
    ldloc $tmpIndex27
    stfld int32 @callsp::i
    br L_for_loop_164
L_for_end_165:
    pop
    // line 2013
    ldloc _F
    ldflda float64 @callsp::r
    call void Poprel(float64& r)
    br L_case_end_3
L_check_case_163:
    ldloc $tmpSwitchValue1
    ldc.i4 30
    bne.un L_check_case_166
    // line 2015
    ldloc _F
    ldflda int32 @callsp::i
    call void Popint(int32& i)
    // line 2015
    ldloc _F
    ldloc _F
    ldfld int32 @callsp::i
    stfld uint8 @callsp::c
    // line 2015
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 2015
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Pshadr(int32 a)
    // line 2015
    ldloc _F
    ldfld int32 @callsp::i
    call void Pshint(int32 i)
    // line 2016
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfilwm(int32 Fa)
    // line 2016
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 2017
    ldc.i4 1
    stloc $tmpEndValue28
    ldc.i4 1
    dup
    ldloc $tmpEndValue28
    bgt L_for_end_168
    stloc $tmpIndex29
    ldloc _F
    ldloc $tmpIndex29
    stfld int32 @callsp::i
L_for_loop_167:
    // line 2018
    ldsflda valuetype T_array_297 _G::Bfiltable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    dup
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::Sp
    ldc.i4 4
    sub
    ldloc _F
    ldfld int32 @callsp::i
    add
    ldc.i4 1
    sub
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Write(int32)
    pop
    ldloc _F
    ldfld int32 @callsp::i
    dup
    ldloc $tmpEndValue28
    beq L_for_end_168
    ldc.i4.1
    add
    stloc $tmpIndex30
    ldloc _F
    ldloc $tmpIndex30
    stfld int32 @callsp::i
    br L_for_loop_167
L_for_end_168:
    pop
    // line 2019
    ldloc _F
    ldflda int32 @callsp::i
    call void Popint(int32& i)
    br L_case_end_3
L_check_case_166:
    ldloc $tmpSwitchValue1
    ldc.i4 31
    bne.un L_check_case_169
    // line 2021
    ldloc _F
    ldflda int32 @callsp::i
    call void Popint(int32& i)
    // line 2021
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 2021
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Pshadr(int32 a)
    // line 2021
    ldloc _F
    ldfld int32 @callsp::i
    call void Pshint(int32 i)
    // line 2022
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfilwm(int32 Fa)
    // line 2022
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 2023
    ldc.i4 1
    stloc $tmpEndValue31
    ldc.i4 1
    dup
    ldloc $tmpEndValue31
    bgt L_for_end_171
    stloc $tmpIndex32
    ldloc _F
    ldloc $tmpIndex32
    stfld int32 @callsp::i
L_for_loop_170:
    // line 2024
    ldsflda valuetype T_array_297 _G::Bfiltable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    dup
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::Sp
    ldc.i4 4
    sub
    ldloc _F
    ldfld int32 @callsp::i
    add
    ldc.i4 1
    sub
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Write(int32)
    pop
    ldloc _F
    ldfld int32 @callsp::i
    dup
    ldloc $tmpEndValue31
    beq L_for_end_171
    ldc.i4.1
    add
    stloc $tmpIndex33
    ldloc _F
    ldloc $tmpIndex33
    stfld int32 @callsp::i
    br L_for_loop_170
L_for_end_171:
    pop
    // line 2025
    ldloc _F
    ldflda int32 @callsp::i
    call void Popint(int32& i)
    br L_case_end_3
L_check_case_169:
    ldloc $tmpSwitchValue1
    ldc.i4 32
    bne.un L_check_case_172
    // line 2027
    ldloc _F
    ldflda int32 @callsp::l
    call void Popint(int32& i)
    // line 2027
    ldloc _F
    ldflda int32 @callsp::Ad1
    call void Popadr(int32& a)
    // line 2027
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 2027
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Pshadr(int32 a)
    // line 2028
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfilrm(int32 Fa)
    // line 2028
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 2029
    ldsflda valuetype T_array_352 _G::Filbuff
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance bool& T_array_352::ldadr(int32)
    ldobj bool
    brfalse L_else_173
    // line 2030
    ldloc _F
    ldfld int32 @callsp::l
    stloc $tmpEndValue34
    ldc.i4 1
    dup
    ldloc $tmpEndValue34
    bgt L_for_end_176
    stloc $tmpIndex35
    ldloc _F
    ldloc $tmpIndex35
    stfld int32 @callsp::i
L_for_loop_175:
    // line 2031
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad1
    ldloc _F
    ldfld int32 @callsp::i
    add
    ldc.i4 1
    sub
    call instance uint8& T_array_4::ldadr(int32)
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    ldc.i4 1
    add
    ldloc _F
    ldfld int32 @callsp::i
    add
    ldc.i4 1
    sub
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    stobj uint8
    ldloc _F
    ldfld int32 @callsp::i
    dup
    ldloc $tmpEndValue34
    beq L_for_end_176
    ldc.i4.1
    add
    stloc $tmpIndex36
    ldloc _F
    ldloc $tmpIndex36
    stfld int32 @callsp::i
    br L_for_loop_175
L_for_end_176:
    pop
    br L_if_end_174
L_else_173:
    // line 2033
    ldsflda valuetype T_array_297 _G::Bfiltable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    call instance bool [lpcRuntime]LPC.File::Eof()
    brfalse L_if_end_177
    // line 2033
    ldsfld valuetype T_beta STRING_231    // "End of file              "
    call void Errori(valuetype T_beta String)
L_if_end_177:
    // line 2034
    ldloc _F
    ldfld int32 @callsp::l
    stloc $tmpEndValue37
    ldc.i4 1
    dup
    ldloc $tmpEndValue37
    bgt L_for_end_179
    stloc $tmpIndex38
    ldloc _F
    ldloc $tmpIndex38
    stfld int32 @callsp::i
L_for_loop_178:
    // line 2035
    ldsflda valuetype T_array_297 _G::Bfiltable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    dup
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad1
    call instance uint8& T_array_4::ldadr(int32)
    ldc.i4 0
    ldc.i4 255
    call instance void [lpcRuntime]LPC.File::Read(uint8*, int32, int32)
    pop
    // line 2036
    ldloc _F
    ldloc _F
    ldfld int32 @callsp::Ad1
    ldc.i4 1
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 @callsp::Ad1
    ldloc _F
    ldfld int32 @callsp::i
    dup
    ldloc $tmpEndValue37
    beq L_for_end_179
    ldc.i4.1
    add
    stloc $tmpIndex39
    ldloc _F
    ldloc $tmpIndex39
    stfld int32 @callsp::i
    br L_for_loop_178
L_for_end_179:
    pop
L_if_end_174:
    br L_case_end_3
L_check_case_172:
    ldloc $tmpSwitchValue1
    ldc.i4 33
    bne.un L_check_case_180
    // line 2040
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 2040
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfil(int32 Fa)
    // line 2040
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 2041
    ldsflda valuetype T_array_249 _G::Filstate
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldc.i4 1
    stobj int32
    // line 2042
    ldsflda valuetype T_array_297 _G::Bfiltable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    call instance void [lpcRuntime]LPC.File::Reset()
    // line 2043
    ldsflda valuetype T_array_352 _G::Filbuff
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance bool& T_array_352::ldadr(int32)
    ldc.i4 0 // (false)
    stobj bool
    br L_case_end_3
L_check_case_180:
    ldloc $tmpSwitchValue1
    ldc.i4 34
    bne.un L_check_case_181
    // line 2045
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 2045
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfil(int32 Fa)
    // line 2045
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 2046
    ldsflda valuetype T_array_249 _G::Filstate
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldc.i4 2
    stobj int32
    // line 2047
    ldsflda valuetype T_array_297 _G::Bfiltable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    call instance void [lpcRuntime]LPC.File::Rewrite()
    // line 2048
    ldsflda valuetype T_array_352 _G::Filbuff
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance bool& T_array_352::ldadr(int32)
    ldc.i4 0 // (false)
    stobj bool
    br L_case_end_3
L_check_case_181:
    ldloc $tmpSwitchValue1
    ldc.i4 35
    bne.un L_check_case_182
    // line 2050
    ldloc _F
    ldflda int32 @callsp::i
    call void Popint(int32& i)
    // line 2050
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 2050
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfilrm(int32 Fa)
    // line 2050
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 2051
    ldsflda valuetype T_array_352 _G::Filbuff
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance bool& T_array_352::ldadr(int32)
    ldobj bool
    brfalse L_else_183
    // line 2051
    ldsflda valuetype T_array_352 _G::Filbuff
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance bool& T_array_352::ldadr(int32)
    ldc.i4 0 // (false)
    stobj bool
    br L_if_end_184
L_else_183:
    // line 2053
    ldloc _F
    ldfld int32 @callsp::i
    stloc $tmpEndValue40
    ldc.i4 1
    dup
    ldloc $tmpEndValue40
    bgt L_for_end_186
    stloc $tmpIndex41
    ldloc _F
    ldloc $tmpIndex41
    stfld int32 @callsp::j
L_for_loop_185:
    // line 2054
    ldsflda valuetype T_array_297 _G::Bfiltable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    dup
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    ldc.i4 1
    add
    ldloc _F
    ldfld int32 @callsp::j
    add
    ldc.i4 1
    sub
    call instance uint8& T_array_4::ldadr(int32)
    ldc.i4 0
    ldc.i4 255
    call instance void [lpcRuntime]LPC.File::Read(uint8*, int32, int32)
    pop
    ldloc _F
    ldfld int32 @callsp::j
    dup
    ldloc $tmpEndValue40
    beq L_for_end_186
    ldc.i4.1
    add
    stloc $tmpIndex42
    ldloc _F
    ldloc $tmpIndex42
    stfld int32 @callsp::j
    br L_for_loop_185
L_for_end_186:
    pop
L_if_end_184:
    br L_case_end_3
L_check_case_182:
    ldloc $tmpSwitchValue1
    ldc.i4 36
    bne.un L_case_end_3
    // line 2056
    ldloc _F
    ldflda int32 @callsp::i
    call void Popint(int32& i)
    // line 2056
    ldloc _F
    ldflda int32 @callsp::Ad
    call void Popadr(int32& a)
    // line 2056
    ldloc _F
    ldfld int32 @callsp::Ad
    call void Valfilwm(int32 Fa)
    // line 2056
    ldloc _F
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @callsp::Fn
    // line 2057
    ldloc _F
    ldfld int32 @callsp::i
    stloc $tmpEndValue43
    ldc.i4 1
    dup
    ldloc $tmpEndValue43
    bgt L_for_end_188
    stloc $tmpIndex44
    ldloc _F
    ldloc $tmpIndex44
    stfld int32 @callsp::j
L_for_loop_187:
    // line 2058
    ldsflda valuetype T_array_297 _G::Bfiltable
    ldloc _F
    ldfld int8 @callsp::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    dup
    ldsflda valuetype T_array_4 _G::Store
    ldloc _F
    ldfld int32 @callsp::Ad
    ldc.i4 1
    add
    ldloc _F
    ldfld int32 @callsp::j
    add
    ldc.i4 1
    sub
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Write(int32)
    pop
    ldloc _F
    ldfld int32 @callsp::j
    dup
    ldloc $tmpEndValue43
    beq L_for_end_188
    ldc.i4.1
    add
    stloc $tmpIndex45
    ldloc _F
    ldloc $tmpIndex45
    stfld int32 @callsp::j
    br L_for_loop_187
L_for_end_188:
    pop
    /* nop */
L_case_end_3:
    /* nop */

L_Epilogue:
    ret
}

// line 0
//================================================================================
// scope: global scope (level : 0)

// line 262

.method static
void _Program()
{
    .maxstack 32

    .locals init(
        uint8 $tmpSwitchValue1,
        int8 $tmpSwitchValue2,
        valuetype T_settype $tmpSetLiteral3,
        int32 $tmpEndValue4,
        int32 $tmpIndex5,
        int32 $tmpIndex6,
        int32 $tmpEndValue7,
        int32 $tmpIndex8,
        int32 $tmpIndex9,
        int32 $tmpEndValue10,
        int32 $tmpIndex11,
        int32 $tmpIndex12,
        valuetype T_settype $tmpSetLiteral13,
        int32 $tmpEndValue14,
        int32 $tmpIndex15,
        int32 $tmpIndex16)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    ldc.i4 0
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
    ldc.i4 2
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Prr
    ldc.i4 3
    call instance void [lpcRuntime]LPC.File::Init(int32)

L_Entry:
.try
{
    // line 2065
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "P5 Pascal interpreter vs. "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 1 // majorver 
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 46 // '.'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldc.i4 0 // minorver 
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 2066
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 2069
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prr
    call instance void [lpcRuntime]LPC.File::Rewrite()
    // line 2071
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Assembling/loading program"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 2072
    call void Load()
    // line 2073
    ldc.i4 0
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Pc
    // line 2073
    ldsfld int32 _G::Pctop
    stsfld int32 _G::Sp
    // line 2073
    ldsfld int32 _G::Pctop
    stsfld int32 _G::Mp
    // line 2073
    ldsfld int32 _G::Cp
    stsfld int32 _G::Np
    // line 2073
    ldc.i4 5
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Ep
    // line 2073
    ldc.i4 0
    stsfld int32 _G::Srclin
    // line 2075
    ldc.i4 1 // (true)
    stsfld bool _G::Interpreting
    // line 2077
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Running program"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 2078
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 2079
    br L_while_test_2
L_while_1:
    // line 2083
    ldsfld int32 _G::Pc
    stsfld int32 _G::Pcs
    // line 2084
    call void Getop()
    // line 2089
    ldc.i4 0 // dotrcins 
    brfalse L_if_end_3
    // line 2091
    ldsfld int32 _G::Pcs
    ldc.i4 6 // maxdigh 
    call void Wrthex(int32 v, int32 f)
    // line 2092
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 47 // '/'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    // line 2093
    ldsfld int32 _G::Sp
    ldc.i4 6 // maxdigh 
    call void Wrthex(int32 v, int32 f)
    // line 2094
    ldsflda int32 _G::Pcs
    call void Lstins(int32& Ad)
    // line 2095
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_3:
    // line 2098
    ldsfld uint8 _G::Op
    stloc $tmpSwitchValue1
    ldloc $tmpSwitchValue1
    ldc.i4 0
    bne.un L_check_case_5
    // line 2100
    call void Getp()
    // line 2100
    call void Getq()
    // line 2100
    ldsfld uint8 _G::p
    call int32 Base(int32 Ld)
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getint(int32 a)
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_5:
    ldloc $tmpSwitchValue1
    ldc.i4 105
    bne.un L_check_case_6
    // line 2101
    call void Getp()
    // line 2101
    call void Getq()
    // line 2101
    ldsfld uint8 _G::p
    call int32 Base(int32 Ld)
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    call void Pshadr(int32 a)
    br L_case_end_4
L_check_case_6:
    ldloc $tmpSwitchValue1
    ldc.i4 106
    bne.un L_check_case_7
    // line 2102
    call void Getp()
    // line 2102
    call void Getq()
    // line 2102
    ldsfld uint8 _G::p
    call int32 Base(int32 Ld)
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call float64 Getrel(int32 a)
    call void Pshrel(float64 r)
    br L_case_end_4
L_check_case_7:
    ldloc $tmpSwitchValue1
    ldc.i4 107
    bne.un L_check_case_8
    // line 2103
    call void Getp()
    // line 2103
    call void Getq()
    // line 2103
    ldsfld uint8 _G::p
    call int32 Base(int32 Ld)
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsflda valuetype T_settype _G::S1
    call void Getset(int32 a, valuetype T_settype& s)
    // line 2103
    ldsfld valuetype T_settype _G::S1
    call void Pshset(valuetype T_settype s)
    br L_case_end_4
L_check_case_8:
    ldloc $tmpSwitchValue1
    ldc.i4 108
    bne.un L_check_case_9
    // line 2104
    call void Getp()
    // line 2104
    call void Getq()
    // line 2104
    ldsfld uint8 _G::p
    call int32 Base(int32 Ld)
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call bool Getbol(int32 a)
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_9:
    ldloc $tmpSwitchValue1
    ldc.i4 109
    bne.un L_check_case_10
    // line 2105
    call void Getp()
    // line 2105
    call void Getq()
    // line 2105
    ldsfld uint8 _G::p
    call int32 Base(int32 Ld)
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call uint8 Getchr(int32 a)
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_10:
    ldloc $tmpSwitchValue1
    ldc.i4 1
    bne.un L_check_case_11
    // line 2107
    call void Getq()
    // line 2107
    ldsfld int32 _G::Pctop
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getint(int32 a)
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_11:
    ldloc $tmpSwitchValue1
    ldc.i4 65
    bne.un L_check_case_12
    // line 2108
    call void Getq()
    // line 2108
    ldsfld int32 _G::Pctop
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    call void Pshadr(int32 a)
    br L_case_end_4
L_check_case_12:
    ldloc $tmpSwitchValue1
    ldc.i4 66
    bne.un L_check_case_13
    // line 2109
    call void Getq()
    // line 2109
    ldsfld int32 _G::Pctop
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call float64 Getrel(int32 a)
    call void Pshrel(float64 r)
    br L_case_end_4
L_check_case_13:
    ldloc $tmpSwitchValue1
    ldc.i4 67
    bne.un L_check_case_14
    // line 2110
    call void Getq()
    // line 2110
    ldsfld int32 _G::Pctop
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsflda valuetype T_settype _G::S1
    call void Getset(int32 a, valuetype T_settype& s)
    // line 2110
    ldsfld valuetype T_settype _G::S1
    call void Pshset(valuetype T_settype s)
    br L_case_end_4
L_check_case_14:
    ldloc $tmpSwitchValue1
    ldc.i4 68
    bne.un L_check_case_15
    // line 2111
    call void Getq()
    // line 2111
    ldsfld int32 _G::Pctop
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call bool Getbol(int32 a)
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_15:
    ldloc $tmpSwitchValue1
    ldc.i4 69
    bne.un L_check_case_16
    // line 2112
    call void Getq()
    // line 2112
    ldsfld int32 _G::Pctop
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call uint8 Getchr(int32 a)
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_16:
    ldloc $tmpSwitchValue1
    ldc.i4 2
    bne.un L_check_case_17
    // line 2114
    call void Getp()
    // line 2114
    call void Getq()
    // line 2114
    ldsflda int32 _G::i
    call void Popint(int32& i)
    // line 2114
    ldsfld uint8 _G::p
    call int32 Base(int32 Ld)
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsfld int32 _G::i
    call void Putint(int32 a, int32 x)
    br L_case_end_4
L_check_case_17:
    ldloc $tmpSwitchValue1
    ldc.i4 70
    bne.un L_check_case_18
    // line 2115
    call void Getp()
    // line 2115
    call void Getq()
    // line 2115
    ldsflda int32 _G::Ad
    call void Popadr(int32& a)
    // line 2115
    ldsfld uint8 _G::p
    call int32 Base(int32 Ld)
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsfld int32 _G::Ad
    call void Putadr(int32 a, int32 Ad)
    br L_case_end_4
L_check_case_18:
    ldloc $tmpSwitchValue1
    ldc.i4 71
    bne.un L_check_case_19
    // line 2116
    call void Getp()
    // line 2116
    call void Getq()
    // line 2116
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 2116
    ldsfld uint8 _G::p
    call int32 Base(int32 Ld)
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsfld float64 _G::R1
    call void Putrel(int32 a, float64 f)
    br L_case_end_4
L_check_case_19:
    ldloc $tmpSwitchValue1
    ldc.i4 72
    bne.un L_check_case_20
    // line 2117
    call void Getp()
    // line 2117
    call void Getq()
    // line 2117
    ldsflda valuetype T_settype _G::S1
    call void Popset(valuetype T_settype& s)
    // line 2117
    ldsfld uint8 _G::p
    call int32 Base(int32 Ld)
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsfld valuetype T_settype _G::S1
    call void Putset(int32 a, valuetype T_settype s)
    br L_case_end_4
L_check_case_20:
    ldloc $tmpSwitchValue1
    ldc.i4 73
    bne.un L_check_case_21
    // line 2118
    call void Getp()
    // line 2118
    call void Getq()
    // line 2118
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2118
    ldsfld int32 _G::I1
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    stsfld bool _G::B1
    // line 2119
    ldsfld uint8 _G::p
    call int32 Base(int32 Ld)
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsfld bool _G::B1
    call void Putbol(int32 a, bool b)
    br L_case_end_4
L_check_case_21:
    ldloc $tmpSwitchValue1
    ldc.i4 74
    bne.un L_check_case_22
    // line 2120
    call void Getp()
    // line 2120
    call void Getq()
    // line 2120
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2120
    ldsfld int32 _G::I1
    stsfld uint8 _G::C1
    // line 2121
    ldsfld uint8 _G::p
    call int32 Base(int32 Ld)
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsfld uint8 _G::C1
    call void Putchr(int32 a, uint8 c)
    br L_case_end_4
L_check_case_22:
    ldloc $tmpSwitchValue1
    ldc.i4 3
    bne.un L_check_case_23
    // line 2123
    call void Getq()
    // line 2123
    ldsflda int32 _G::i
    call void Popint(int32& i)
    // line 2123
    ldsfld int32 _G::Pctop
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsfld int32 _G::i
    call void Putint(int32 a, int32 x)
    /* nop */
    br L_case_end_4
L_check_case_23:
    ldloc $tmpSwitchValue1
    ldc.i4 75
    bne.un L_check_case_24
    // line 2124
    call void Getq()
    // line 2124
    ldsflda int32 _G::Ad
    call void Popadr(int32& a)
    // line 2124
    ldsfld int32 _G::Pctop
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsfld int32 _G::Ad
    call void Putadr(int32 a, int32 Ad)
    /* nop */
    br L_case_end_4
L_check_case_24:
    ldloc $tmpSwitchValue1
    ldc.i4 76
    bne.un L_check_case_25
    // line 2125
    call void Getq()
    // line 2125
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 2125
    ldsfld int32 _G::Pctop
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsfld float64 _G::R1
    call void Putrel(int32 a, float64 f)
    /* nop */
    br L_case_end_4
L_check_case_25:
    ldloc $tmpSwitchValue1
    ldc.i4 77
    bne.un L_check_case_26
    // line 2126
    call void Getq()
    // line 2126
    ldsflda valuetype T_settype _G::S1
    call void Popset(valuetype T_settype& s)
    // line 2126
    ldsfld int32 _G::Pctop
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsfld valuetype T_settype _G::S1
    call void Putset(int32 a, valuetype T_settype s)
    /* nop */
    br L_case_end_4
L_check_case_26:
    ldloc $tmpSwitchValue1
    ldc.i4 78
    bne.un L_check_case_27
    // line 2127
    call void Getq()
    // line 2127
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2127
    ldsfld int32 _G::I1
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    stsfld bool _G::B1
    // line 2127
    ldsfld int32 _G::Pctop
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsfld bool _G::B1
    call void Putbol(int32 a, bool b)
    /* nop */
    br L_case_end_4
L_check_case_27:
    ldloc $tmpSwitchValue1
    ldc.i4 79
    bne.un L_check_case_28
    // line 2128
    call void Getq()
    // line 2128
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2128
    ldsfld int32 _G::I1
    stsfld uint8 _G::C1
    // line 2128
    ldsfld int32 _G::Pctop
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsfld uint8 _G::C1
    call void Putchr(int32 a, uint8 c)
    /* nop */
    br L_case_end_4
L_check_case_28:
    ldloc $tmpSwitchValue1
    ldc.i4 4
    bne.un L_check_case_29
    // line 2130
    call void Getp()
    // line 2130
    call void Getq()
    // line 2130
    ldsfld uint8 _G::p
    call int32 Base(int32 Ld)
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call void Pshadr(int32 a)
    br L_case_end_4
L_check_case_29:
    ldloc $tmpSwitchValue1
    ldc.i4 5
    bne.un L_check_case_30
    // line 2131
    call void Getq()
    // line 2131
    ldsfld int32 _G::Pctop
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call void Pshadr(int32 a)
    br L_case_end_4
L_check_case_30:
    ldloc $tmpSwitchValue1
    ldc.i4 6
    bne.un L_check_case_31
    // line 2133
    ldsflda int32 _G::i
    call void Popint(int32& i)
    // line 2133
    ldsflda int32 _G::Ad
    call void Popadr(int32& a)
    // line 2133
    ldsfld int32 _G::Ad
    ldsfld int32 _G::i
    call void Putint(int32 a, int32 x)
    br L_case_end_4
L_check_case_31:
    ldloc $tmpSwitchValue1
    ldc.i4 80
    bne.un L_check_case_32
    // line 2134
    ldsflda int32 _G::Ad1
    call void Popadr(int32& a)
    // line 2134
    ldsflda int32 _G::Ad
    call void Popadr(int32& a)
    // line 2134
    ldsfld int32 _G::Ad
    ldsfld int32 _G::Ad1
    call void Putadr(int32 a, int32 Ad)
    br L_case_end_4
L_check_case_32:
    ldloc $tmpSwitchValue1
    ldc.i4 81
    bne.un L_check_case_33
    // line 2135
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 2135
    ldsflda int32 _G::Ad
    call void Popadr(int32& a)
    // line 2135
    ldsfld int32 _G::Ad
    ldsfld float64 _G::R1
    call void Putrel(int32 a, float64 f)
    br L_case_end_4
L_check_case_33:
    ldloc $tmpSwitchValue1
    ldc.i4 82
    bne.un L_check_case_34
    // line 2136
    ldsflda valuetype T_settype _G::S1
    call void Popset(valuetype T_settype& s)
    // line 2136
    ldsflda int32 _G::Ad
    call void Popadr(int32& a)
    // line 2136
    ldsfld int32 _G::Ad
    ldsfld valuetype T_settype _G::S1
    call void Putset(int32 a, valuetype T_settype s)
    br L_case_end_4
L_check_case_34:
    ldloc $tmpSwitchValue1
    ldc.i4 83
    bne.un L_check_case_35
    // line 2137
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2137
    ldsfld int32 _G::I1
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    stsfld bool _G::B1
    // line 2137
    ldsflda int32 _G::Ad
    call void Popadr(int32& a)
    // line 2138
    ldsfld int32 _G::Ad
    ldsfld bool _G::B1
    call void Putbol(int32 a, bool b)
    br L_case_end_4
L_check_case_35:
    ldloc $tmpSwitchValue1
    ldc.i4 84
    bne.un L_check_case_36
    // line 2139
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2139
    ldsfld int32 _G::I1
    stsfld uint8 _G::C1
    // line 2139
    ldsflda int32 _G::Ad
    call void Popadr(int32& a)
    // line 2140
    ldsfld int32 _G::Ad
    ldsfld uint8 _G::C1
    call void Putchr(int32 a, uint8 c)
    br L_case_end_4
L_check_case_36:
    ldloc $tmpSwitchValue1
    ldc.i4 127
    bne.un L_check_case_37
    // line 2142
    ldsfld int32 _G::Pc
    call uint8 Getchr(int32 a)
    call void Pshint(int32 i)
    // line 2142
    ldsfld int32 _G::Pc
    ldc.i4 1
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Pc
    br L_case_end_4
L_check_case_37:
    ldloc $tmpSwitchValue1
    ldc.i4 126
    bne.un L_check_case_38
    // line 2143
    ldsfld int32 _G::Pc
    call bool Getbol(int32 a)
    call void Pshint(int32 i)
    // line 2143
    ldsfld int32 _G::Pc
    ldc.i4 1
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Pc
    br L_case_end_4
L_check_case_38:
    ldloc $tmpSwitchValue1
    ldc.i4 123
    bne.un L_check_case_39
    // line 2144
    ldsfld int32 _G::Pc
    call int32 Getint(int32 a)
    stsfld int32 _G::i
    // line 2144
    ldsfld int32 _G::Pc
    ldc.i4 4 // intsize 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Pc
    // line 2144
    ldsfld int32 _G::i
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_39:
    ldloc $tmpSwitchValue1
    ldc.i4 125
    bne.un L_check_case_40
    // line 2145
    ldc.i4 1 // nilval 
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call void Pshadr(int32 a)
    br L_case_end_4
L_check_case_40:
    ldloc $tmpSwitchValue1
    ldc.i4 124
    bne.un L_check_case_41
    // line 2146
    call void Getq()
    // line 2146
    ldsfld int32 _G::q
    call float64 Getrel(int32 a)
    call void Pshrel(float64 r)
    br L_case_end_4
L_check_case_41:
    ldloc $tmpSwitchValue1
    ldc.i4 7
    bne.un L_check_case_42
    // line 2147
    call void Getq()
    // line 2147
    ldsfld int32 _G::q
    ldsflda valuetype T_settype _G::S1
    call void Getset(int32 a, valuetype T_settype& s)
    // line 2147
    ldsfld valuetype T_settype _G::S1
    call void Pshset(valuetype T_settype s)
    br L_case_end_4
L_check_case_42:
    ldloc $tmpSwitchValue1
    ldc.i4 9
    bne.un L_check_case_43
    // line 2149
    call void Getq()
    // line 2149
    ldsflda int32 _G::Ad
    call void Popadr(int32& a)
    // line 2149
    ldsfld int32 _G::Ad
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getint(int32 a)
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_43:
    ldloc $tmpSwitchValue1
    ldc.i4 85
    bne.un L_check_case_44
    // line 2150
    call void Getq()
    // line 2150
    ldsflda int32 _G::Ad
    call void Popadr(int32& a)
    // line 2150
    ldsfld int32 _G::Ad
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Ad1
    // line 2150
    ldsfld int32 _G::Ad1
    call void Pshadr(int32 a)
    br L_case_end_4
L_check_case_44:
    ldloc $tmpSwitchValue1
    ldc.i4 86
    bne.un L_check_case_45
    // line 2151
    call void Getq()
    // line 2151
    ldsflda int32 _G::Ad
    call void Popadr(int32& a)
    // line 2151
    ldsfld int32 _G::Ad
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call float64 Getrel(int32 a)
    call void Pshrel(float64 r)
    br L_case_end_4
L_check_case_45:
    ldloc $tmpSwitchValue1
    ldc.i4 87
    bne.un L_check_case_46
    // line 2152
    call void Getq()
    // line 2152
    ldsflda int32 _G::Ad
    call void Popadr(int32& a)
    // line 2152
    ldsfld int32 _G::Ad
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsflda valuetype T_settype _G::S1
    call void Getset(int32 a, valuetype T_settype& s)
    // line 2152
    ldsfld valuetype T_settype _G::S1
    call void Pshset(valuetype T_settype s)
    br L_case_end_4
L_check_case_46:
    ldloc $tmpSwitchValue1
    ldc.i4 88
    bne.un L_check_case_47
    // line 2153
    call void Getq()
    // line 2153
    ldsflda int32 _G::Ad
    call void Popadr(int32& a)
    // line 2153
    ldsfld int32 _G::Ad
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call bool Getbol(int32 a)
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_47:
    ldloc $tmpSwitchValue1
    ldc.i4 89
    bne.un L_check_case_48
    // line 2154
    call void Getq()
    // line 2154
    ldsflda int32 _G::Ad
    call void Popadr(int32& a)
    // line 2154
    ldsfld int32 _G::Ad
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call uint8 Getchr(int32 a)
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_48:
    ldloc $tmpSwitchValue1
    ldc.i4 93
    beq L_case_50
    ldloc $tmpSwitchValue1
    ldc.i4 94
    beq L_case_50
    ldloc $tmpSwitchValue1
    ldc.i4 10
    beq L_case_50
    br L_check_case_49
L_case_50:
    // line 2158
    call void Getq()
    // line 2158
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2158
    ldsfld int32 _G::I1
    ldsfld int32 _G::q
    add
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_49:
    ldloc $tmpSwitchValue1
    ldc.i4 90
    bne.un L_check_case_51
    // line 2159
    call void Getq()
    // line 2159
    ldsflda int32 _G::A1
    call void Popadr(int32& a)
    // line 2159
    ldsfld int32 _G::A1
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call void Pshadr(int32 a)
    br L_case_end_4
L_check_case_51:
    ldloc $tmpSwitchValue1
    ldc.i4 91
    beq L_case_53
    ldloc $tmpSwitchValue1
    ldc.i4 92
    beq L_case_53
    br L_check_case_52
L_case_53:
    // line 2161
    ldsfld valuetype T_beta STRING_255    // "Instruction error        "
    call void Errori(valuetype T_beta String)
    br L_case_end_4
L_check_case_52:
    ldloc $tmpSwitchValue1
    ldc.i4 11
    bne.un L_check_case_54
    // line 2167
    call void Getp()
    // line 2168
    ldsfld int32 _G::Sp
    stsfld int32 _G::Ad
    // line 2169
    ldsfld int32 _G::Sp
    ldc.i4 32 // marksize 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Sp
    // line 2170
    ldsfld int32 _G::Ad
    ldc.i4 8 // marksl 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsfld uint8 _G::p
    call int32 Base(int32 Ld)
    call void Putadr(int32 a, int32 Ad)
    // line 2172
    ldsfld int32 _G::Ad
    ldc.i4 12 // markdl 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsfld int32 _G::Mp
    call void Putadr(int32 a, int32 Ad)
    // line 2174
    ldsfld int32 _G::Ad
    ldc.i4 16 // markep 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsfld int32 _G::Ep
    call void Putadr(int32 a, int32 Ad)
    /* nop */
    br L_case_end_4
L_check_case_54:
    ldloc $tmpSwitchValue1
    ldc.i4 12
    bne.un L_check_case_55
    // line 2179
    call void Getp()
    // line 2179
    call void Getq()
    // line 2180
    ldsfld int32 _G::Sp
    ldsfld uint8 _G::p
    ldc.i4 32 // marksize 
    add
    sub
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Mp
    // line 2181
    ldsfld int32 _G::Mp
    ldc.i4 28 // markra 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsfld int32 _G::Pc
    call void Putadr(int32 a, int32 Ad)
    // line 2182
    ldsfld int32 _G::q
    stsfld int32 _G::Pc
    br L_case_end_4
L_check_case_55:
    ldloc $tmpSwitchValue1
    ldc.i4 13
    bne.un L_check_case_56
    // line 2185
    call void Getq()
    // line 2185
    ldsfld int32 _G::Mp
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Ad
    // line 2186
    ldsfld int32 _G::Sp
    ldsfld int32 _G::Np
    clt
    ldc.i4.0
    ceq
    brfalse L_if_end_57
    // line 2186
    ldsfld valuetype T_beta STRING_226    // "store overflow           "
    call void Errori(valuetype T_beta String)
L_if_end_57:
    // line 2188
    br L_while_test_59
L_while_58:
    // line 2188
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::Sp
    call instance uint8& T_array_4::ldadr(int32)
    ldc.i4 0
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj uint8
    // line 2188
    ldsfld int32 _G::Sp
    ldc.i4 1
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Sp
L_while_test_59:
    ldsfld int32 _G::Sp
    ldsfld int32 _G::Ad
    clt
    brtrue L_while_58
    // line 2189
    ldsfld int32 _G::Mp
    ldc.i4 20 // marksb 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsfld int32 _G::Sp
    call void Putadr(int32 a, int32 Ad)
    br L_case_end_4
L_check_case_56:
    ldloc $tmpSwitchValue1
    ldc.i4 173
    bne.un L_check_case_60
    // line 2192
    call void Getq()
    // line 2192
    ldsfld int32 _G::Sp
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Ep
    // line 2193
    ldsfld int32 _G::Ep
    ldsfld int32 _G::Np
    clt
    ldc.i4.0
    ceq
    brfalse L_if_end_61
    // line 2193
    ldsfld valuetype T_beta STRING_226    // "store overflow           "
    call void Errori(valuetype T_beta String)
L_if_end_61:
    // line 2194
    ldsfld int32 _G::Mp
    ldc.i4 24 // market 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsfld int32 _G::Ep
    call void Putadr(int32 a, int32 Ad)
    br L_case_end_4
L_check_case_60:
    ldloc $tmpSwitchValue1
    ldc.i4 14
    bne.un L_check_case_62
    // line 2199
    ldsfld int32 _G::Mp
    stsfld int32 _G::Sp
    // line 2200
    ldsfld int32 _G::Mp
    ldc.i4 28 // markra 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Pc
    // line 2201
    ldsfld int32 _G::Mp
    ldc.i4 16 // markep 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Ep
    // line 2202
    ldsfld int32 _G::Mp
    ldc.i4 12 // markdl 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Mp
    br L_case_end_4
L_check_case_62:
    ldloc $tmpSwitchValue1
    ldc.i4 130
    bne.un L_check_case_63
    // line 2207
    ldsfld int32 _G::Mp
    ldsfld int32 _G::Mp
    call uint8 Getchr(int32 a)
    call void Putint(int32 a, int32 x)
    // line 2208
    ldsfld int32 _G::Mp
    ldc.i4 4 // intsize 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Sp
    // line 2209
    ldsfld int32 _G::Mp
    ldc.i4 28 // markra 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Pc
    // line 2210
    ldsfld int32 _G::Mp
    ldc.i4 16 // markep 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Ep
    // line 2211
    ldsfld int32 _G::Mp
    ldc.i4 12 // markdl 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Mp
    br L_case_end_4
L_check_case_63:
    ldloc $tmpSwitchValue1
    ldc.i4 131
    bne.un L_check_case_64
    // line 2214
    ldsfld int32 _G::Mp
    ldsfld int32 _G::Mp
    call bool Getbol(int32 a)
    call void Putint(int32 a, int32 x)
    // line 2215
    ldsfld int32 _G::Mp
    ldc.i4 4 // intsize 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Sp
    // line 2216
    ldsfld int32 _G::Mp
    ldc.i4 28 // markra 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Pc
    // line 2217
    ldsfld int32 _G::Mp
    ldc.i4 16 // markep 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Ep
    // line 2218
    ldsfld int32 _G::Mp
    ldc.i4 12 // markdl 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Mp
    br L_case_end_4
L_check_case_64:
    ldloc $tmpSwitchValue1
    ldc.i4 128
    bne.un L_check_case_65
    // line 2221
    ldsfld int32 _G::Mp
    ldc.i4 4 // intsize 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Sp
    // line 2222
    ldsfld int32 _G::Mp
    ldc.i4 28 // markra 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Pc
    // line 2223
    ldsfld int32 _G::Mp
    ldc.i4 16 // markep 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Ep
    // line 2224
    ldsfld int32 _G::Mp
    ldc.i4 12 // markdl 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Mp
    br L_case_end_4
L_check_case_65:
    ldloc $tmpSwitchValue1
    ldc.i4 129
    bne.un L_check_case_66
    // line 2227
    ldsfld int32 _G::Mp
    ldc.i4 8 // realsize 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Sp
    // line 2228
    ldsfld int32 _G::Mp
    ldc.i4 28 // markra 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Pc
    // line 2229
    ldsfld int32 _G::Mp
    ldc.i4 16 // markep 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Ep
    // line 2230
    ldsfld int32 _G::Mp
    ldc.i4 12 // markdl 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Mp
    br L_case_end_4
L_check_case_66:
    ldloc $tmpSwitchValue1
    ldc.i4 132
    bne.un L_check_case_67
    // line 2233
    ldsfld int32 _G::Mp
    ldc.i4 4 // adrsize 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Sp
    // line 2234
    ldsfld int32 _G::Mp
    ldc.i4 28 // markra 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Pc
    // line 2235
    ldsfld int32 _G::Mp
    ldc.i4 16 // markep 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Ep
    // line 2236
    ldsfld int32 _G::Mp
    ldc.i4 12 // markdl 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Mp
    br L_case_end_4
L_check_case_67:
    ldloc $tmpSwitchValue1
    ldc.i4 15
    bne.un L_check_case_68
    // line 2239
    call void Getq()
    // line 2239
    call void Callsp()
    br L_case_end_4
L_check_case_68:
    ldloc $tmpSwitchValue1
    ldc.i4 16
    bne.un L_check_case_69
    // line 2241
    call void Getq()
    // line 2241
    ldsflda int32 _G::i
    call void Popint(int32& i)
    // line 2241
    ldsflda int32 _G::A1
    call void Popadr(int32& a)
    // line 2241
    ldsfld int32 _G::q
    ldsfld int32 _G::i
    mul
    ldsfld int32 _G::A1
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call void Pshadr(int32 a)
    br L_case_end_4
L_check_case_69:
    ldloc $tmpSwitchValue1
    ldc.i4 17
    bne.un L_check_case_70
    // line 2243
    ldsflda int32 _G::A2
    call void Popadr(int32& a)
    // line 2243
    ldsflda int32 _G::A1
    call void Popadr(int32& a)
    // line 2243
    ldsfld int32 _G::A1
    ldsfld int32 _G::A2
    ceq
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_70:
    ldloc $tmpSwitchValue1
    ldc.i4 139
    beq L_case_72
    ldloc $tmpSwitchValue1
    ldc.i4 141
    beq L_case_72
    ldloc $tmpSwitchValue1
    ldc.i4 137
    beq L_case_72
    br L_check_case_71
L_case_72:
    // line 2246
    ldsflda int32 _G::I2
    call void Popint(int32& i)
    // line 2246
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2246
    ldsfld int32 _G::I1
    ldsfld int32 _G::I2
    ceq
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_71:
    ldloc $tmpSwitchValue1
    ldc.i4 138
    bne.un L_check_case_73
    // line 2247
    ldsflda float64 _G::R2
    call void Poprel(float64& r)
    // line 2247
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 2247
    ldsfld float64 _G::R1
    ldsfld float64 _G::R2
    ceq
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_73:
    ldloc $tmpSwitchValue1
    ldc.i4 140
    bne.un L_check_case_74
    // line 2248
    ldsflda valuetype T_settype _G::S2
    call void Popset(valuetype T_settype& s)
    // line 2248
    ldsflda valuetype T_settype _G::S1
    call void Popset(valuetype T_settype& s)
    // line 2248
    ldsfld valuetype T_settype _G::S1
    ldsfld valuetype T_settype _G::S2
    call bool _SetEqual(valuetype T_settype a, valuetype T_settype b)
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_74:
    ldloc $tmpSwitchValue1
    ldc.i4 142
    bne.un L_check_case_75
    // line 2249
    call void Getq()
    // line 2249
    call void Compare()
    // line 2249
    ldsfld bool _G::b
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_75:
    ldloc $tmpSwitchValue1
    ldc.i4 18
    bne.un L_check_case_76
    // line 2251
    ldsflda int32 _G::A2
    call void Popadr(int32& a)
    // line 2251
    ldsflda int32 _G::A1
    call void Popadr(int32& a)
    // line 2251
    ldsfld int32 _G::A1
    ldsfld int32 _G::A2
    ceq
    ldc.i4.0
    ceq
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_76:
    ldloc $tmpSwitchValue1
    ldc.i4 145
    beq L_case_78
    ldloc $tmpSwitchValue1
    ldc.i4 147
    beq L_case_78
    ldloc $tmpSwitchValue1
    ldc.i4 143
    beq L_case_78
    br L_check_case_77
L_case_78:
    // line 2254
    ldsflda int32 _G::I2
    call void Popint(int32& i)
    // line 2254
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2254
    ldsfld int32 _G::I1
    ldsfld int32 _G::I2
    ceq
    ldc.i4.0
    ceq
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_77:
    ldloc $tmpSwitchValue1
    ldc.i4 144
    bne.un L_check_case_79
    // line 2255
    ldsflda float64 _G::R2
    call void Poprel(float64& r)
    // line 2255
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 2255
    ldsfld float64 _G::R1
    ldsfld float64 _G::R2
    ceq
    ldc.i4.0
    ceq
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_79:
    ldloc $tmpSwitchValue1
    ldc.i4 146
    bne.un L_check_case_80
    // line 2256
    ldsflda valuetype T_settype _G::S2
    call void Popset(valuetype T_settype& s)
    // line 2256
    ldsflda valuetype T_settype _G::S1
    call void Popset(valuetype T_settype& s)
    // line 2256
    ldsfld valuetype T_settype _G::S1
    ldsfld valuetype T_settype _G::S2
    call bool _SetEqual(valuetype T_settype a, valuetype T_settype b)
    ldc.i4.0
    ceq
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_80:
    ldloc $tmpSwitchValue1
    ldc.i4 148
    bne.un L_check_case_81
    // line 2257
    call void Getq()
    // line 2257
    call void Compare()
    // line 2257
    ldsfld bool _G::b
    ldc.i4.0
    ceq
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_81:
    ldloc $tmpSwitchValue1
    ldc.i4 19
    bne.un L_check_case_82
    // line 2259
    ldsfld valuetype T_beta STRING_256    // "<,<=,>,>= for address    "
    call void Errori(valuetype T_beta String)
    br L_case_end_4
L_check_case_82:
    ldloc $tmpSwitchValue1
    ldc.i4 151
    beq L_case_84
    ldloc $tmpSwitchValue1
    ldc.i4 153
    beq L_case_84
    ldloc $tmpSwitchValue1
    ldc.i4 149
    beq L_case_84
    br L_check_case_83
L_case_84:
    // line 2262
    ldsflda int32 _G::I2
    call void Popint(int32& i)
    // line 2262
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2262
    ldsfld int32 _G::I1
    ldsfld int32 _G::I2
    clt
    ldc.i4.0
    ceq
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_83:
    ldloc $tmpSwitchValue1
    ldc.i4 150
    bne.un L_check_case_85
    // line 2263
    ldsflda float64 _G::R2
    call void Poprel(float64& r)
    // line 2263
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 2263
    ldsfld float64 _G::R1
    ldsfld float64 _G::R2
    clt
    ldc.i4.0
    ceq
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_85:
    ldloc $tmpSwitchValue1
    ldc.i4 152
    bne.un L_check_case_86
    // line 2264
    ldsflda valuetype T_settype _G::S2
    call void Popset(valuetype T_settype& s)
    // line 2264
    ldsflda valuetype T_settype _G::S1
    call void Popset(valuetype T_settype& s)
    // line 2264
    ldsfld valuetype T_settype _G::S2
    ldsfld valuetype T_settype _G::S1
    call bool _SetIsSubset(valuetype T_settype a, valuetype T_settype b)
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_86:
    ldloc $tmpSwitchValue1
    ldc.i4 154
    bne.un L_check_case_87
    // line 2265
    call void Getq()
    // line 2265
    call void Compare()
    // line 2265
    ldsfld bool _G::b
    dup
    brtrue L_OR_shortcut_88
    pop
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::A1
    ldsfld int32 _G::i
    add
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::A2
    ldsfld int32 _G::i
    add
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    clt
    ldc.i4.0
    ceq
L_OR_shortcut_88:
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_87:
    ldloc $tmpSwitchValue1
    ldc.i4 20
    bne.un L_check_case_89
    // line 2267
    ldsfld valuetype T_beta STRING_256    // "<,<=,>,>= for address    "
    call void Errori(valuetype T_beta String)
    br L_case_end_4
L_check_case_89:
    ldloc $tmpSwitchValue1
    ldc.i4 157
    beq L_case_91
    ldloc $tmpSwitchValue1
    ldc.i4 159
    beq L_case_91
    ldloc $tmpSwitchValue1
    ldc.i4 155
    beq L_case_91
    br L_check_case_90
L_case_91:
    // line 2270
    ldsflda int32 _G::I2
    call void Popint(int32& i)
    // line 2270
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2270
    ldsfld int32 _G::I1
    ldsfld int32 _G::I2
    cgt
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_90:
    ldloc $tmpSwitchValue1
    ldc.i4 156
    bne.un L_check_case_92
    // line 2271
    ldsflda float64 _G::R2
    call void Poprel(float64& r)
    // line 2271
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 2271
    ldsfld float64 _G::R1
    ldsfld float64 _G::R2
    cgt
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_92:
    ldloc $tmpSwitchValue1
    ldc.i4 158
    bne.un L_check_case_93
    // line 2272
    ldsfld valuetype T_beta STRING_257    // "set inclusion            "
    call void Errori(valuetype T_beta String)
    br L_case_end_4
L_check_case_93:
    ldloc $tmpSwitchValue1
    ldc.i4 160
    bne.un L_check_case_94
    // line 2273
    call void Getq()
    // line 2273
    call void Compare()
    // line 2273
    ldsfld bool _G::b
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_95
    pop
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::A1
    ldsfld int32 _G::i
    add
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::A2
    ldsfld int32 _G::i
    add
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    cgt
L_AND_shortcut_95:
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_94:
    ldloc $tmpSwitchValue1
    ldc.i4 21
    bne.un L_check_case_96
    // line 2275
    ldsfld valuetype T_beta STRING_256    // "<,<=,>,>= for address    "
    call void Errori(valuetype T_beta String)
    br L_case_end_4
L_check_case_96:
    ldloc $tmpSwitchValue1
    ldc.i4 163
    beq L_case_98
    ldloc $tmpSwitchValue1
    ldc.i4 165
    beq L_case_98
    ldloc $tmpSwitchValue1
    ldc.i4 161
    beq L_case_98
    br L_check_case_97
L_case_98:
    // line 2278
    ldsflda int32 _G::I2
    call void Popint(int32& i)
    // line 2278
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2278
    ldsfld int32 _G::I1
    ldsfld int32 _G::I2
    cgt
    ldc.i4.0
    ceq
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_97:
    ldloc $tmpSwitchValue1
    ldc.i4 162
    bne.un L_check_case_99
    // line 2279
    ldsflda float64 _G::R2
    call void Poprel(float64& r)
    // line 2279
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 2279
    ldsfld float64 _G::R1
    ldsfld float64 _G::R2
    cgt
    ldc.i4.0
    ceq
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_99:
    ldloc $tmpSwitchValue1
    ldc.i4 164
    bne.un L_check_case_100
    // line 2280
    ldsflda valuetype T_settype _G::S2
    call void Popset(valuetype T_settype& s)
    // line 2280
    ldsflda valuetype T_settype _G::S1
    call void Popset(valuetype T_settype& s)
    // line 2280
    ldsfld valuetype T_settype _G::S1
    ldsfld valuetype T_settype _G::S2
    call bool _SetIsSubset(valuetype T_settype a, valuetype T_settype b)
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_100:
    ldloc $tmpSwitchValue1
    ldc.i4 166
    bne.un L_check_case_101
    // line 2281
    call void Getq()
    // line 2281
    call void Compare()
    // line 2281
    ldsfld bool _G::b
    dup
    brtrue L_OR_shortcut_102
    pop
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::A1
    ldsfld int32 _G::i
    add
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::A2
    ldsfld int32 _G::i
    add
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    cgt
    ldc.i4.0
    ceq
L_OR_shortcut_102:
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_101:
    ldloc $tmpSwitchValue1
    ldc.i4 22
    bne.un L_check_case_103
    // line 2283
    ldsfld valuetype T_beta STRING_256    // "<,<=,>,>= for address    "
    call void Errori(valuetype T_beta String)
    br L_case_end_4
L_check_case_103:
    ldloc $tmpSwitchValue1
    ldc.i4 169
    beq L_case_105
    ldloc $tmpSwitchValue1
    ldc.i4 171
    beq L_case_105
    ldloc $tmpSwitchValue1
    ldc.i4 167
    beq L_case_105
    br L_check_case_104
L_case_105:
    // line 2286
    ldsflda int32 _G::I2
    call void Popint(int32& i)
    // line 2286
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2286
    ldsfld int32 _G::I1
    ldsfld int32 _G::I2
    clt
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_104:
    ldloc $tmpSwitchValue1
    ldc.i4 168
    bne.un L_check_case_106
    // line 2287
    ldsflda float64 _G::R2
    call void Poprel(float64& r)
    // line 2287
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 2287
    ldsfld float64 _G::R1
    ldsfld float64 _G::R2
    clt
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_106:
    ldloc $tmpSwitchValue1
    ldc.i4 170
    bne.un L_check_case_107
    // line 2288
    ldsfld valuetype T_beta STRING_257    // "set inclusion            "
    call void Errori(valuetype T_beta String)
    br L_case_end_4
L_check_case_107:
    ldloc $tmpSwitchValue1
    ldc.i4 172
    bne.un L_check_case_108
    // line 2289
    call void Getq()
    // line 2289
    call void Compare()
    // line 2289
    ldsfld bool _G::b
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_109
    pop
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::A1
    ldsfld int32 _G::i
    add
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::A2
    ldsfld int32 _G::i
    add
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    clt
L_AND_shortcut_109:
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_108:
    ldloc $tmpSwitchValue1
    ldc.i4 23
    bne.un L_check_case_110
    // line 2291
    call void Getq()
    // line 2291
    ldsfld int32 _G::q
    stsfld int32 _G::Pc
    br L_case_end_4
L_check_case_110:
    ldloc $tmpSwitchValue1
    ldc.i4 24
    bne.un L_check_case_111
    // line 2292
    call void Getq()
    // line 2292
    ldsflda int32 _G::i
    call void Popint(int32& i)
    // line 2292
    ldsfld int32 _G::i
    ldc.i4 0
    ceq
    brfalse L_if_end_112
    // line 2292
    ldsfld int32 _G::q
    stsfld int32 _G::Pc
L_if_end_112:
    br L_case_end_4
L_check_case_111:
    ldloc $tmpSwitchValue1
    ldc.i4 25
    bne.un L_check_case_113
    // line 2293
    call void Getq()
    // line 2293
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2293
    ldsfld int32 _G::I1
    ldc.i4 5 // ujplen 
    mul
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Pc
    br L_case_end_4
L_check_case_113:
    ldloc $tmpSwitchValue1
    ldc.i4 95
    bne.un L_check_case_114
    // line 2295
    call void Getq()
    // line 2295
    ldsflda int32 _G::A1
    call void Popadr(int32& a)
    // line 2295
    ldsfld int32 _G::A1
    call void Pshadr(int32 a)
    // line 2298
    ldsfld int32 _G::A1
    ldc.i4 0
    ceq
    brfalse L_else_115
    // line 2300
    ldsfld valuetype T_beta STRING_258    // "uninitialized pointer    "
    call void Errori(valuetype T_beta String)
    br L_if_end_116
L_else_115:
    // line 2301
    ldsfld int32 _G::q
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_117
    pop
    ldsfld int32 _G::A1
    ldc.i4 1 // nilval 
    ceq
L_AND_shortcut_117:
    brfalse L_else_118
    // line 2304
    ldsfld valuetype T_beta STRING_259    // "Dereference of nil ptr   "
    call void Errori(valuetype T_beta String)
    br L_if_end_119
L_else_118:
    // line 2305
    ldsfld int32 _G::A1
    ldsfld int32 _G::Np
    clt
    dup
    brtrue L_OR_shortcut_121
    pop
    ldsfld int32 _G::A1
    ldsfld int32 _G::Cp
    clt
    ldc.i4.0
    ceq
L_OR_shortcut_121:
    dup
    brfalse L_AND_shortcut_120
    pop
    ldsfld int32 _G::A1
    ldc.i4 1 // nilval 
    ceq
    ldc.i4.0
    ceq
L_AND_shortcut_120:
    brfalse L_else_122
    // line 2309
    ldsfld valuetype T_beta STRING_229    // "bad pointer value        "
    call void Errori(valuetype T_beta String)
    br L_if_end_123
L_else_122:
    // line 2310
    ldc.i4 0 // dochkrpt 
    dup
    brfalse L_AND_shortcut_124
    pop
    ldsfld int32 _G::A1
    ldc.i4 1 // nilval 
    ceq
    ldc.i4.0
    ceq
L_AND_shortcut_124:
    brfalse L_if_end_125
    // line 2312
    ldsfld int32 _G::A1
    call bool Isfree(int32 Blk)
    brfalse L_if_end_126
    // line 2315
    ldsfld valuetype T_beta STRING_260    // "Ptr used after dispose op"
    call void Errori(valuetype T_beta String)
L_if_end_126:
L_if_end_125:
L_if_end_123:
L_if_end_119:
L_if_end_116:
    br L_case_end_4
L_check_case_114:
    ldloc $tmpSwitchValue1
    ldc.i4 96
    beq L_case_128
    ldloc $tmpSwitchValue1
    ldc.i4 97
    beq L_case_128
    br L_check_case_127
L_case_128:
    // line 2319
    ldsfld valuetype T_beta STRING_255    // "Instruction error        "
    call void Errori(valuetype T_beta String)
    br L_case_end_4
L_check_case_127:
    ldloc $tmpSwitchValue1
    ldc.i4 98
    beq L_case_130
    ldloc $tmpSwitchValue1
    ldc.i4 99
    beq L_case_130
    ldloc $tmpSwitchValue1
    ldc.i4 26
    beq L_case_130
    br L_check_case_129
L_case_130:
    // line 2322
    call void Getq()
    // line 2322
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2322
    ldsfld int32 _G::I1
    call void Pshint(int32 i)
    // line 2323
    ldsfld int32 _G::I1
    ldsfld int32 _G::q
    call int32 Getint(int32 a)
    clt
    dup
    brtrue L_OR_shortcut_131
    pop
    ldsfld int32 _G::I1
    ldsfld int32 _G::q
    ldc.i4 4 // intsize 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getint(int32 a)
    cgt
L_OR_shortcut_131:
    brfalse L_if_end_132
    // line 2324
    ldsfld valuetype T_beta STRING_261    // "value out of range       "
    call void Errori(valuetype T_beta String)
L_if_end_132:
    br L_case_end_4
L_check_case_129:
    ldloc $tmpSwitchValue1
    ldc.i4 27
    bne.un L_check_case_133
    // line 2327
    ldsflda int32 _G::Ad
    call void Popadr(int32& a)
    // line 2327
    ldsfld int32 _G::Ad
    call void Valfil(int32 Fa)
    // line 2327
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int8 _G::Fn
    // line 2328
    ldsfld int8 _G::Fn
    ldc.i4 4 // prrfn 
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_134
    // line 2328
    ldsfld int8 _G::Fn
    stloc $tmpSwitchValue2
    ldloc $tmpSwitchValue2
    ldc.i4 1 // inputfn 
    bne.un L_check_case_137
    // line 2329
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance bool [lpcRuntime]LPC.File::Eof()
    call void Pshint(int32 i)
    br L_case_end_136
L_check_case_137:
    ldloc $tmpSwitchValue2
    ldc.i4 3 // prdfn 
    bne.un L_check_case_138
    // line 2330
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
    call instance bool [lpcRuntime]LPC.File::Eof()
    call void Pshint(int32 i)
    br L_case_end_136
L_check_case_138:
    ldloc $tmpSwitchValue2
    ldc.i4 2 // outputfn 
    beq L_case_139
    ldloc $tmpSwitchValue2
    ldc.i4 4 // prrfn 
    beq L_case_139
    br L_case_end_136
L_case_139:
    // line 2332
    ldsfld valuetype T_beta STRING_262    // "eof test on output file  "
    call void Errori(valuetype T_beta String)
L_case_end_136:
    br L_if_end_135
L_else_134:
    // line 2334
    ldsflda valuetype T_array_249 _G::Filstate
    ldsfld int8 _G::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 2 // fwrite 
    ceq
    brfalse L_else_140
    // line 2334
    ldc.i4 1 // (true)
    call void Pshint(int32 i)
    br L_if_end_141
L_else_140:
    // line 2335
    ldsflda valuetype T_array_249 _G::Filstate
    ldsfld int8 _G::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 1 // fread 
    ceq
    brfalse L_else_142
    // line 2336
    ldsflda valuetype T_array_297 _G::Filtable
    ldsfld int8 _G::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    call instance bool [lpcRuntime]LPC.File::Eof()
    dup
    brfalse L_AND_shortcut_144
    pop
    ldsflda valuetype T_array_352 _G::Filbuff
    ldsfld int8 _G::Fn
    call instance bool& T_array_352::ldadr(int32)
    ldobj bool
    ldc.i4.0
    ceq
L_AND_shortcut_144:
    call void Pshint(int32 i)
    br L_if_end_143
L_else_142:
    // line 2337
    ldsfld valuetype T_beta STRING_263    // "file is not open         "
    call void Errori(valuetype T_beta String)
L_if_end_143:
L_if_end_141:
L_if_end_135:
    br L_case_end_4
L_check_case_133:
    ldloc $tmpSwitchValue1
    ldc.i4 28
    bne.un L_check_case_145
    // line 2341
    ldsflda int32 _G::I2
    call void Popint(int32& i)
    // line 2341
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2341
    ldsfld int32 _G::I1
    ldsfld int32 _G::I2
    add
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_145:
    ldloc $tmpSwitchValue1
    ldc.i4 29
    bne.un L_check_case_146
    // line 2342
    ldsflda float64 _G::R2
    call void Poprel(float64& r)
    // line 2342
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 2342
    ldsfld float64 _G::R1
    ldsfld float64 _G::R2
    add
    call void Pshrel(float64 r)
    br L_case_end_4
L_check_case_146:
    ldloc $tmpSwitchValue1
    ldc.i4 30
    bne.un L_check_case_147
    // line 2343
    ldsflda int32 _G::I2
    call void Popint(int32& i)
    // line 2343
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2343
    ldsfld int32 _G::I1
    ldsfld int32 _G::I2
    sub
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_147:
    ldloc $tmpSwitchValue1
    ldc.i4 31
    bne.un L_check_case_148
    // line 2344
    ldsflda float64 _G::R2
    call void Poprel(float64& r)
    // line 2344
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 2344
    ldsfld float64 _G::R1
    ldsfld float64 _G::R2
    sub
    call void Pshrel(float64 r)
    br L_case_end_4
L_check_case_148:
    ldloc $tmpSwitchValue1
    ldc.i4 32
    bne.un L_check_case_149
    // line 2345
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2345
    ldloca $tmpSetLiteral3
    call instance void T_settype::clear()
    ldloca $tmpSetLiteral3
    ldsfld int32 _G::I1
    call instance void T_settype::addValue(int32)
    ldloc $tmpSetLiteral3
    call void Pshset(valuetype T_settype s)
    /* nop */
    br L_case_end_4
L_check_case_149:
    ldloc $tmpSwitchValue1
    ldc.i4 33
    bne.un L_check_case_150
    // line 2346
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2346
    ldsfld int32 _G::I1
    conv.r8
    call void Pshrel(float64 r)
    br L_case_end_4
L_check_case_150:
    ldloc $tmpSwitchValue1
    ldc.i4 34
    bne.un L_check_case_151
    // line 2349
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 2349
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2349
    ldsfld int32 _G::I1
    conv.r8
    call void Pshrel(float64 r)
    // line 2349
    ldsfld float64 _G::R1
    call void Pshrel(float64 r)
    br L_case_end_4
L_check_case_151:
    ldloc $tmpSwitchValue1
    ldc.i4 35
    bne.un L_check_case_152
    // line 2351
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 2351
    ldsfld float64 _G::R1
    call int32 [lpcRuntime]LPC.Helpers::Trunc(float64)
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_152:
    ldloc $tmpSwitchValue1
    ldc.i4 36
    bne.un L_check_case_153
    // line 2352
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2352
    ldsfld int32 _G::I1
    neg
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_153:
    ldloc $tmpSwitchValue1
    ldc.i4 37
    bne.un L_check_case_154
    // line 2353
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 2353
    ldsfld float64 _G::R1
    neg
    call void Pshrel(float64 r)
    br L_case_end_4
L_check_case_154:
    ldloc $tmpSwitchValue1
    ldc.i4 38
    bne.un L_check_case_155
    // line 2354
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2354
    ldsfld int32 _G::I1
    dup
    mul
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_155:
    ldloc $tmpSwitchValue1
    ldc.i4 39
    bne.un L_check_case_156
    // line 2355
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 2355
    ldsfld float64 _G::R1
    dup
    mul
    call void Pshrel(float64 r)
    br L_case_end_4
L_check_case_156:
    ldloc $tmpSwitchValue1
    ldc.i4 40
    bne.un L_check_case_157
    // line 2356
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2356
    ldsfld int32 _G::I1
    dup
    ldc.i4 0
    bge L_abs_question_158
    neg
L_abs_question_158:
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_157:
    ldloc $tmpSwitchValue1
    ldc.i4 41
    bne.un L_check_case_159
    // line 2357
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 2357
    ldsfld float64 _G::R1
    dup
    ldc.r8 0
    bge L_abs_question_160
    neg
L_abs_question_160:
    call void Pshrel(float64 r)
    br L_case_end_4
L_check_case_159:
    ldloc $tmpSwitchValue1
    ldc.i4 42
    bne.un L_check_case_161
    // line 2358
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2358
    ldsfld int32 _G::I1
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    stsfld bool _G::B1
    // line 2358
    ldsfld bool _G::B1
    ldc.i4.0
    ceq
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_161:
    ldloc $tmpSwitchValue1
    ldc.i4 43
    bne.un L_check_case_162
    // line 2359
    ldsflda int32 _G::I2
    call void Popint(int32& i)
    // line 2359
    ldsfld int32 _G::I2
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    stsfld bool _G::B2
    // line 2360
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2360
    ldsfld int32 _G::I1
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    stsfld bool _G::B1
    // line 2361
    ldsfld bool _G::B1
    dup
    brfalse L_AND_shortcut_163
    pop
    ldsfld bool _G::B2
L_AND_shortcut_163:
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_162:
    ldloc $tmpSwitchValue1
    ldc.i4 44
    bne.un L_check_case_164
    // line 2362
    ldsflda int32 _G::I2
    call void Popint(int32& i)
    // line 2362
    ldsfld int32 _G::I2
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    stsfld bool _G::B2
    // line 2363
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2363
    ldsfld int32 _G::I1
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    stsfld bool _G::B1
    // line 2364
    ldsfld bool _G::B1
    dup
    brtrue L_OR_shortcut_165
    pop
    ldsfld bool _G::B2
L_OR_shortcut_165:
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_164:
    ldloc $tmpSwitchValue1
    ldc.i4 45
    bne.un L_check_case_166
    // line 2365
    ldsflda valuetype T_settype _G::S2
    call void Popset(valuetype T_settype& s)
    // line 2365
    ldsflda valuetype T_settype _G::S1
    call void Popset(valuetype T_settype& s)
    // line 2365
    ldsfld valuetype T_settype _G::S1
    ldsfld valuetype T_settype _G::S2
    call valuetype T_settype _SetDifference(valuetype T_settype a, valuetype T_settype b)
    call void Pshset(valuetype T_settype s)
    br L_case_end_4
L_check_case_166:
    ldloc $tmpSwitchValue1
    ldc.i4 46
    bne.un L_check_case_167
    // line 2366
    ldsflda valuetype T_settype _G::S2
    call void Popset(valuetype T_settype& s)
    // line 2366
    ldsflda valuetype T_settype _G::S1
    call void Popset(valuetype T_settype& s)
    // line 2366
    ldsfld valuetype T_settype _G::S1
    ldsfld valuetype T_settype _G::S2
    call valuetype T_settype _SetIntersection(valuetype T_settype a, valuetype T_settype b)
    call void Pshset(valuetype T_settype s)
    br L_case_end_4
L_check_case_167:
    ldloc $tmpSwitchValue1
    ldc.i4 47
    bne.un L_check_case_168
    // line 2367
    ldsflda valuetype T_settype _G::S2
    call void Popset(valuetype T_settype& s)
    // line 2367
    ldsflda valuetype T_settype _G::S1
    call void Popset(valuetype T_settype& s)
    // line 2367
    ldsfld valuetype T_settype _G::S1
    ldsfld valuetype T_settype _G::S2
    call valuetype T_settype _SetUnion(valuetype T_settype a, valuetype T_settype b)
    call void Pshset(valuetype T_settype s)
    br L_case_end_4
L_check_case_168:
    ldloc $tmpSwitchValue1
    ldc.i4 48
    bne.un L_check_case_169
    // line 2368
    ldsflda valuetype T_settype _G::S1
    call void Popset(valuetype T_settype& s)
    // line 2368
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2368
    ldsfld valuetype T_settype _G::S1
    ldsfld int32 _G::I1
    call bool _SetContains(valuetype T_settype s, int32 val)
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_169:
    ldloc $tmpSwitchValue1
    ldc.i4 49
    bne.un L_check_case_170
    // line 2369
    ldsflda int32 _G::I2
    call void Popint(int32& i)
    // line 2369
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2369
    ldsfld int32 _G::I1
    ldsfld int32 _G::I2
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_170:
    ldloc $tmpSwitchValue1
    ldc.i4 50
    bne.un L_check_case_171
    // line 2370
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2370
    ldsfld int32 _G::I1
    ldc.i4.1
    and
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_171:
    ldloc $tmpSwitchValue1
    ldc.i4 51
    bne.un L_check_case_172
    // line 2371
    ldsflda int32 _G::I2
    call void Popint(int32& i)
    // line 2371
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2371
    ldsfld int32 _G::I1
    ldsfld int32 _G::I2
    mul
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_172:
    ldloc $tmpSwitchValue1
    ldc.i4 52
    bne.un L_check_case_173
    // line 2372
    ldsflda float64 _G::R2
    call void Poprel(float64& r)
    // line 2372
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 2372
    ldsfld float64 _G::R1
    ldsfld float64 _G::R2
    mul
    call void Pshrel(float64 r)
    br L_case_end_4
L_check_case_173:
    ldloc $tmpSwitchValue1
    ldc.i4 53
    bne.un L_check_case_174
    // line 2373
    ldsflda int32 _G::I2
    call void Popint(int32& i)
    // line 2373
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2374
    ldsfld int32 _G::I2
    ldc.i4 0
    ceq
    brfalse L_if_end_175
    // line 2374
    ldsfld valuetype T_beta STRING_264    // "Zero divide              "
    call void Errori(valuetype T_beta String)
L_if_end_175:
    // line 2375
    ldsfld int32 _G::I1
    ldsfld int32 _G::I2
    div
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_174:
    ldloc $tmpSwitchValue1
    ldc.i4 54
    bne.un L_check_case_176
    // line 2376
    ldsflda float64 _G::R2
    call void Poprel(float64& r)
    // line 2376
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 2377
    ldsfld float64 _G::R2
    ldc.r8 0.000000
    ceq
    brfalse L_if_end_177
    // line 2377
    ldsfld valuetype T_beta STRING_264    // "Zero divide              "
    call void Errori(valuetype T_beta String)
L_if_end_177:
    // line 2378
    ldsfld float64 _G::R1
    ldsfld float64 _G::R2
    div
    call void Pshrel(float64 r)
    br L_case_end_4
L_check_case_176:
    ldloc $tmpSwitchValue1
    ldc.i4 55
    bne.un L_check_case_178
    // line 2379
    call void Getq()
    // line 2379
    ldsflda int32 _G::I2
    call void Popint(int32& i)
    // line 2379
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2380
    ldsfld int32 _G::q
    ldc.i4 1
    sub
    stloc $tmpEndValue4
    ldc.i4 0
    dup
    ldloc $tmpEndValue4
    bgt L_for_end_180
    stloc $tmpIndex5
    ldloc $tmpIndex5
    stsfld int32 _G::I3
L_for_loop_179:
    // line 2380
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::I1
    ldsfld int32 _G::I3
    add
    call instance uint8& T_array_4::ldadr(int32)
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::I2
    ldsfld int32 _G::I3
    add
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    stobj uint8
    ldsfld int32 _G::I3
    dup
    ldloc $tmpEndValue4
    beq L_for_end_180
    ldc.i4.1
    add
    stloc $tmpIndex6
    ldloc $tmpIndex6
    stsfld int32 _G::I3
    br L_for_loop_179
L_for_end_180:
    pop
    br L_case_end_4
L_check_case_178:
    ldloc $tmpSwitchValue1
    ldc.i4 56
    bne.un L_check_case_181
    // line 2383
    call void Getq()
    // line 2383
    ldsfld int32 _G::q
    call void Pshadr(int32 a)
    br L_case_end_4
L_check_case_181:
    ldloc $tmpSwitchValue1
    ldc.i4 103
    beq L_case_183
    ldloc $tmpSwitchValue1
    ldc.i4 104
    beq L_case_183
    ldloc $tmpSwitchValue1
    ldc.i4 57
    beq L_case_183
    br L_check_case_182
L_case_183:
    // line 2387
    call void Getq()
    // line 2387
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2387
    ldsfld int32 _G::I1
    ldsfld int32 _G::q
    sub
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_182:
    ldloc $tmpSwitchValue1
    ldc.i4 100
    beq L_case_185
    ldloc $tmpSwitchValue1
    ldc.i4 101
    beq L_case_185
    ldloc $tmpSwitchValue1
    ldc.i4 102
    beq L_case_185
    br L_check_case_184
L_case_185:
    // line 2390
    ldsfld valuetype T_beta STRING_255    // "Instruction error        "
    call void Errori(valuetype T_beta String)
    br L_case_end_4
L_check_case_184:
    ldloc $tmpSwitchValue1
    ldc.i4 58
    bne.un L_check_case_186
    // line 2392
    ldc.i4 0 // (false)
    stsfld bool _G::Interpreting
    br L_case_end_4
L_check_case_186:
    ldloc $tmpSwitchValue1
    ldc.i4 134
    beq L_case_188
    ldloc $tmpSwitchValue1
    ldc.i4 136
    beq L_case_188
    ldloc $tmpSwitchValue1
    ldc.i4 59
    beq L_case_188
    br L_check_case_187
L_case_188:
    /* nop */
    br L_case_end_4
L_check_case_187:
    ldloc $tmpSwitchValue1
    ldc.i4 133
    beq L_case_190
    ldloc $tmpSwitchValue1
    ldc.i4 135
    beq L_case_190
    br L_check_case_189
L_case_190:
    // line 2398
    ldsfld valuetype T_beta STRING_255    // "Instruction error        "
    call void Errori(valuetype T_beta String)
    br L_case_end_4
L_check_case_189:
    ldloc $tmpSwitchValue1
    ldc.i4 60
    bne.un L_check_case_191
    /* nop */
    br L_case_end_4
L_check_case_191:
    ldloc $tmpSwitchValue1
    ldc.i4 61
    bne.un L_check_case_192
    // line 2402
    ldsfld valuetype T_beta STRING_265    // "case - error             "
    call void Errori(valuetype T_beta String)
    br L_case_end_4
L_check_case_192:
    ldloc $tmpSwitchValue1
    ldc.i4 62
    bne.un L_check_case_193
    // line 2403
    ldsflda float64 _G::R1
    call void Poprel(float64& r)
    // line 2403
    ldsfld float64 _G::R1
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_193:
    ldloc $tmpSwitchValue1
    ldc.i4 63
    bne.un L_check_case_194
    // line 2405
    call void Getq()
    // line 2405
    call void Getq1()
    // line 2405
    ldsflda int32 _G::A3
    call void Popadr(int32& a)
    // line 2405
    ldsflda int32 _G::A2
    call void Popadr(int32& a)
    // line 2405
    ldsflda int32 _G::A1
    call void Popadr(int32& a)
    // line 2406
    ldsfld int32 _G::A2
    ldsfld int32 _G::q
    add
    ldsfld int32 _G::Q1
    cgt
    brfalse L_if_end_195
    // line 2406
    ldsfld valuetype T_beta STRING_266    // "pack elements out of bnds"
    call void Errori(valuetype T_beta String)
L_if_end_195:
    // line 2407
    ldsfld int32 _G::q
    ldc.i4 1
    sub
    stloc $tmpEndValue7
    ldc.i4 0
    dup
    ldloc $tmpEndValue7
    bgt L_for_end_197
    stloc $tmpIndex8
    ldloc $tmpIndex8
    stsfld int32 _G::I4
L_for_loop_196:
    // line 2408
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::A3
    ldsfld int32 _G::I4
    add
    call instance uint8& T_array_4::ldadr(int32)
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::A1
    ldsfld int32 _G::A2
    add
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    stobj uint8
    // line 2409
    ldsfld int32 _G::A2
    ldc.i4 1
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::A2
    ldsfld int32 _G::I4
    dup
    ldloc $tmpEndValue7
    beq L_for_end_197
    ldc.i4.1
    add
    stloc $tmpIndex9
    ldloc $tmpIndex9
    stsfld int32 _G::I4
    br L_for_loop_196
L_for_end_197:
    pop
    br L_case_end_4
L_check_case_194:
    ldloc $tmpSwitchValue1
    ldc.i4 64
    bne.un L_check_case_198
    // line 2412
    call void Getq()
    // line 2412
    call void Getq1()
    // line 2412
    ldsflda int32 _G::A3
    call void Popadr(int32& a)
    // line 2412
    ldsflda int32 _G::A2
    call void Popadr(int32& a)
    // line 2412
    ldsflda int32 _G::A1
    call void Popadr(int32& a)
    // line 2413
    ldsfld int32 _G::A3
    ldsfld int32 _G::q
    add
    ldsfld int32 _G::Q1
    cgt
    brfalse L_if_end_199
    // line 2413
    ldsfld valuetype T_beta STRING_267    // "unpack elem out of bnds  "
    call void Errori(valuetype T_beta String)
L_if_end_199:
    // line 2414
    ldsfld int32 _G::q
    ldc.i4 1
    sub
    stloc $tmpEndValue10
    ldc.i4 0
    dup
    ldloc $tmpEndValue10
    bgt L_for_end_201
    stloc $tmpIndex11
    ldloc $tmpIndex11
    stsfld int32 _G::I4
L_for_loop_200:
    // line 2415
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::A2
    ldsfld int32 _G::A3
    add
    call instance uint8& T_array_4::ldadr(int32)
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::A1
    ldsfld int32 _G::I4
    add
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    stobj uint8
    // line 2416
    ldsfld int32 _G::A3
    ldc.i4 1
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::A3
    ldsfld int32 _G::I4
    dup
    ldloc $tmpEndValue10
    beq L_for_end_201
    ldc.i4.1
    add
    stloc $tmpIndex12
    ldloc $tmpIndex12
    stsfld int32 _G::I4
    br L_for_loop_200
L_for_end_201:
    pop
    br L_case_end_4
L_check_case_198:
    ldloc $tmpSwitchValue1
    ldc.i4 110
    bne.un L_check_case_202
    // line 2420
    ldsflda int32 _G::I2
    call void Popint(int32& i)
    // line 2420
    ldsflda int32 _G::I1
    call void Popint(int32& i)
    // line 2420
    ldloca $tmpSetLiteral13
    call instance void T_settype::clear()
    ldloca $tmpSetLiteral13
    ldsfld int32 _G::I1
    ldsfld int32 _G::I2
    call instance void T_settype::addRange(int32, int32)
    ldloc $tmpSetLiteral13
    call void Pshset(valuetype T_settype s)
    br L_case_end_4
L_check_case_202:
    ldloc $tmpSwitchValue1
    ldc.i4 111
    bne.un L_check_case_203
    // line 2421
    ldsflda int32 _G::Ad
    call void Popadr(int32& a)
    // line 2421
    ldsfld int32 _G::Ad
    call void Pshadr(int32 a)
    // line 2421
    ldsfld int32 _G::Ad
    call void Valfil(int32 Fa)
    // line 2421
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int8 _G::Fn
    // line 2422
    ldsfld int8 _G::Fn
    ldc.i4 1 // inputfn 
    ceq
    brfalse L_else_204
    // line 2422
    ldsfld int32 _G::Ad
    ldc.i4 1 // fileidsize 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    dup
    call instance void [lpcRuntime]LPC.File::VarRead()
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldobj uint8
    call void Putchr(int32 a, uint8 c)
    br L_if_end_205
L_else_204:
    // line 2423
    ldsfld int8 _G::Fn
    ldc.i4 3 // prdfn 
    ceq
    brfalse L_else_206
    // line 2423
    ldsfld int32 _G::Ad
    ldc.i4 1 // fileidsize 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
    dup
    call instance void [lpcRuntime]LPC.File::VarRead()
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldobj uint8
    call void Putchr(int32 a, uint8 c)
    br L_if_end_207
L_else_206:
    // line 2425
    ldsflda valuetype T_array_249 _G::Filstate
    ldsfld int8 _G::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 1 // fread 
    ceq
    brfalse L_if_end_208
    // line 2426
    ldsfld int32 _G::Ad
    ldc.i4 1 // fileidsize 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsflda valuetype T_array_297 _G::Filtable
    ldsfld int8 _G::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    dup
    call instance void [lpcRuntime]LPC.File::VarRead()
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldobj uint8
    call void Putchr(int32 a, uint8 c)
L_if_end_208:
L_if_end_207:
L_if_end_205:
    br L_case_end_4
L_check_case_203:
    ldloc $tmpSwitchValue1
    ldc.i4 112
    bne.un L_check_case_209
    // line 2429
    call void Getp()
    // line 2429
    call void Getq()
    // line 2429
    ldsfld int32 _G::q
    stsfld int32 _G::Pc
    // line 2430
    ldsfld uint8 _G::p
    call int32 Base(int32 Ld)
    stsfld int32 _G::Mp
    // line 2432
    ldsfld int32 _G::Mp
    ldc.i4 20 // marksb 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Sp
    // line 2433
    ldsfld int32 _G::Mp
    ldc.i4 24 // market 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Ep
    br L_case_end_4
L_check_case_209:
    ldloc $tmpSwitchValue1
    ldc.i4 113
    bne.un L_check_case_210
    // line 2435
    call void Getp()
    // line 2435
    ldsflda int32 _G::Ad
    call void Popadr(int32& a)
    // line 2436
    ldsfld int32 _G::Sp
    ldsfld uint8 _G::p
    ldc.i4 32 // marksize 
    add
    sub
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Mp
    // line 2438
    ldsfld int32 _G::Mp
    ldc.i4 8 // marksl 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsfld int32 _G::Ad
    call int32 Getadr(int32 a)
    call void Putadr(int32 a, int32 Ad)
    // line 2439
    ldsfld int32 _G::Mp
    ldc.i4 28 // markra 
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsfld int32 _G::Pc
    call void Putadr(int32 a, int32 Ad)
    // line 2440
    ldsfld int32 _G::Ad
    ldc.i4 1
    ldc.i4 4 // ptrsize 
    mul
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::Pc
    br L_case_end_4
L_check_case_210:
    ldloc $tmpSwitchValue1
    ldc.i4 114
    bne.un L_check_case_211
    // line 2442
    call void Getp()
    // line 2442
    call void Getq()
    // line 2443
    ldsfld uint8 _G::p
    call int32 Base(int32 Ld)
    call void Pshadr(int32 a)
    // line 2444
    ldsfld int32 _G::q
    call void Pshadr(int32 a)
    br L_case_end_4
L_check_case_211:
    ldloc $tmpSwitchValue1
    ldc.i4 115
    bne.un L_check_case_212
    // line 2447
    ldsflda int32 _G::Ad
    call void Popadr(int32& a)
    // line 2447
    ldsfld int32 _G::Ad
    call void Pshadr(int32 a)
    // line 2447
    ldsfld int32 _G::Ad
    call void Valfilrm(int32 Fa)
    // line 2447
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int8 _G::Fn
    // line 2449
    ldsflda valuetype T_array_297 _G::Bfiltable
    ldsfld int8 _G::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    call instance bool [lpcRuntime]LPC.File::Eof()
    dup
    brfalse L_AND_shortcut_213
    pop
    ldsflda valuetype T_array_352 _G::Filbuff
    ldsfld int8 _G::Fn
    call instance bool& T_array_352::ldadr(int32)
    ldobj bool
    ldc.i4.0
    ceq
L_AND_shortcut_213:
    call void Pshint(int32 i)
    br L_case_end_4
L_check_case_212:
    ldloc $tmpSwitchValue1
    ldc.i4 116
    bne.un L_check_case_214
    // line 2451
    ldsflda int32 _G::i
    call void Popint(int32& i)
    // line 2451
    ldsflda int32 _G::Ad
    call void Popadr(int32& a)
    // line 2451
    ldsfld int32 _G::Ad
    call void Pshadr(int32 a)
    // line 2451
    ldsfld int32 _G::Ad
    call void Valfil(int32 Fa)
    // line 2452
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::Ad
    call instance uint8& T_array_4::ldadr(int32)
    ldobj uint8
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int8 _G::Fn
    // line 2454
    ldsflda valuetype T_array_249 _G::Filstate
    ldsfld int8 _G::Fn
    call instance int32& T_array_249::ldadr(int32)
    ldobj int32
    ldc.i4 1 // fread 
    ceq
    dup
    brfalse L_AND_shortcut_215
    pop
    ldsflda valuetype T_array_352 _G::Filbuff
    ldsfld int8 _G::Fn
    call instance bool& T_array_352::ldadr(int32)
    ldobj bool
    ldc.i4.0
    ceq
L_AND_shortcut_215:
    brfalse L_if_end_216
    // line 2455
    ldsfld int32 _G::i
    stloc $tmpEndValue14
    ldc.i4 1
    dup
    ldloc $tmpEndValue14
    bgt L_for_end_218
    stloc $tmpIndex15
    ldloc $tmpIndex15
    stsfld int32 _G::j
L_for_loop_217:
    // line 2456
    ldsflda valuetype T_array_297 _G::Bfiltable
    ldsfld int8 _G::Fn
    call instance valuetype [lpcRuntime]LPC.File& T_array_297::ldadr(int32)
    dup
    ldsflda valuetype T_array_4 _G::Store
    ldsfld int32 _G::Ad
    ldc.i4 1 // fileidsize 
    add
    ldsfld int32 _G::j
    add
    ldc.i4 1
    sub
    call instance uint8& T_array_4::ldadr(int32)
    ldc.i4 0
    ldc.i4 255
    call instance void [lpcRuntime]LPC.File::Read(uint8*, int32, int32)
    pop
    ldsfld int32 _G::j
    dup
    ldloc $tmpEndValue14
    beq L_for_end_218
    ldc.i4.1
    add
    stloc $tmpIndex16
    ldloc $tmpIndex16
    stsfld int32 _G::j
    br L_for_loop_217
L_for_end_218:
    pop
    // line 2457
    ldsflda valuetype T_array_352 _G::Filbuff
    ldsfld int8 _G::Fn
    call instance bool& T_array_352::ldadr(int32)
    ldc.i4 1 // (true)
    stobj bool
L_if_end_216:
    br L_case_end_4
L_check_case_214:
    ldloc $tmpSwitchValue1
    ldc.i4 117
    bne.un L_check_case_219
    // line 2460
    call void Getq()
    // line 2460
    ldsfld int32 _G::Sp
    ldsfld int32 _G::q
    sub
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Sp
    br L_case_end_4
L_check_case_219:
    ldloc $tmpSwitchValue1
    ldc.i4 118
    bne.un L_check_case_220
    // line 2462
    call void Getq()
    // line 2462
    ldsfld int32 _G::q
    call void Swpstk(int32 l)
    br L_case_end_4
L_check_case_220:
    ldloc $tmpSwitchValue1
    ldc.i4 119
    bne.un L_check_case_221
    // line 2464
    call void Getq()
    // line 2464
    ldsflda int32 _G::i
    call void Popint(int32& i)
    // line 2464
    ldsfld int32 _G::i
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_222
    // line 2464
    ldsfld int32 _G::q
    stsfld int32 _G::Pc
L_if_end_222:
    br L_case_end_4
L_check_case_221:
    ldloc $tmpSwitchValue1
    ldc.i4 120
    bne.un L_check_case_223
    // line 2466
    call void Getp()
    // line 2466
    call void Getq()
    // line 2466
    ldsfld uint8 _G::p
    call int32 Base(int32 Ld)
    ldsfld int32 _G::q
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::Ad
    // line 2467
    ldsfld int32 _G::Ad
    call int32 Getadr(int32 a)
    stsfld int32 _G::i
    // line 2467
    ldsfld int32 _G::Ad
    ldc.i4 1
    ldc.i4 4 // ptrsize 
    mul
    add
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call int32 Getadr(int32 a)
    stsfld int32 _G::A1
    // line 2468
    ldsfld int32 _G::i
    dup
    ldc.i4 -200000
    ldc.i4 200000
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call void Pshadr(int32 a)
    // line 2468
    ldsfld int32 _G::A1
    call void Pshadr(int32 a)
    br L_case_end_4
L_check_case_223:
    ldloc $tmpSwitchValue1
    ldc.i4 174
    bne.un L_check_case_224
    // line 2471
    call void Getq()
    // line 2471
    ldsfld int32 _G::q
    stsfld int32 _G::Srclin
    // line 2472
    ldc.i4 0 // dotrcsrc 
    brfalse L_if_end_225
    // line 2473
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Source line executed: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::q
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_225:
    br L_case_end_4
L_check_case_224:
    ldloc $tmpSwitchValue1
    ldc.i4 8
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 121
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 122
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 175
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 176
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 177
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 178
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 180
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 181
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 182
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 183
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 184
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 185
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 186
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 187
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 188
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 189
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 190
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 191
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 192
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 193
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 194
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 195
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 196
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 197
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 198
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 199
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 200
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 201
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 202
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 203
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 204
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 205
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 206
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 207
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 208
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 209
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 210
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 211
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 212
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 213
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 214
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 215
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 216
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 217
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 218
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 219
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 220
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 221
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 222
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 223
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 224
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 225
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 226
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 227
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 228
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 229
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 230
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 231
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 232
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 233
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 234
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 235
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 236
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 237
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 238
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 239
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 240
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 241
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 242
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 243
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 244
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 245
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 246
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 247
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 248
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 249
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 250
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 251
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 252
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 253
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 254
    beq L_case_226
    ldloc $tmpSwitchValue1
    ldc.i4 255
    beq L_case_226
    br L_case_end_4
L_case_226:
    // line 2486
    ldsfld valuetype T_beta STRING_215    // "illegal instruction      "
    call void Errori(valuetype T_beta String)
L_case_end_4:
L_while_test_2:
    ldsfld bool _G::Interpreting
    brtrue L_while_1
    // line 2492
    ldc.i4 0 // dodmpspc 
    brfalse L_if_end_227
    // line 2492
    call void Repspc()
L_if_end_227:
    // line 2496
L_1:
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 2497
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "program complete"
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
    beq GOTO_L_1
    rethrow
GOTO_L_1:
    leave L_1
}

L_Epilogue:
    ret

.try L_Entry to L_Epilogue finally
{
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Prr
    call instance void [lpcRuntime]LPC.File::Close()

    endfinally
}

}

// line 0xfeefee

//================================================================================
// internal helpers

.method static bool _SetContains(valuetype T_settype s, int32 val)
{
    ldarga s
    ldc.i4 32
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static bool _SetEqual(valuetype T_settype a, valuetype T_settype b)
{
    ldarga a
    ldarga b
    ldc.i4 32
    call bool [lpcRuntime]LPC.Set::Equal(uint8*, uint8*, int32)
    ret
}

.method static bool _SetIsSubset(valuetype T_settype a, valuetype T_settype b)
{
    ldarga a
    ldarga b
    ldc.i4 32
    call bool [lpcRuntime]LPC.Set::IsSubset(uint8*, uint8*, int32)
    ret
}

.method static valuetype T_settype _SetDifference(valuetype T_settype a, valuetype T_settype b)
{
    .locals init (valuetype T_settype result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 32
    call void [lpcRuntime]LPC.Set::Difference(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_settype _SetIntersection(valuetype T_settype a, valuetype T_settype b)
{
    .locals init (valuetype T_settype result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 32
    call void [lpcRuntime]LPC.Set::Intersection(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_settype _SetUnion(valuetype T_settype a, valuetype T_settype b)
{
    .locals init (valuetype T_settype result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 32
    call void [lpcRuntime]LPC.Set::Union(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}



// line 0xfeefee

//================================================================================
// global string literals

// "          "
.data STRING_1_DATA = bytearray( 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_1 at STRING_1_DATA

// "---       "
.data STRING_10_DATA = bytearray( 2d 2d 2d 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_10 at STRING_10_DATA

// "<,<=,>,>= for address    "
.data STRING_256_DATA = bytearray( 3c 2c 3c 3d 2c 3e 2c 3e 3d 20 66 6f 72 20 61 64 64 72 65 73 73 20 20 20 20 )
.field static valuetype T_beta STRING_256 at STRING_256_DATA

// "Dereference of nil ptr   "
.data STRING_259_DATA = bytearray( 44 65 72 65 66 65 72 65 6e 63 65 20 6f 66 20 6e 69 6c 20 70 74 72 20 20 20 )
.field static valuetype T_beta STRING_259 at STRING_259_DATA

// "Dispose nil pointer      "
.data STRING_228_DATA = bytearray( 44 69 73 70 6f 73 65 20 6e 69 6c 20 70 6f 69 6e 74 65 72 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_228 at STRING_228_DATA

// "End of file              "
.data STRING_231_DATA = bytearray( 45 6e 64 20 6f 66 20 66 69 6c 65 20 20 20 20 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_231 at STRING_231_DATA

// "File not in read mode    "
.data STRING_225_DATA = bytearray( 46 69 6c 65 20 6e 6f 74 20 69 6e 20 72 65 61 64 20 6d 6f 64 65 20 20 20 20 )
.field static valuetype T_beta STRING_225 at STRING_225_DATA

// "File not in write mode   "
.data STRING_224_DATA = bytearray( 46 69 6c 65 20 6e 6f 74 20 69 6e 20 77 72 69 74 65 20 6d 6f 64 65 20 20 20 )
.field static valuetype T_beta STRING_224 at STRING_224_DATA

// "Instruction error        "
.data STRING_255_DATA = bytearray( 49 6e 73 74 72 75 63 74 69 6f 6e 20 65 72 72 6f 72 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_255 at STRING_255_DATA

// "Opcode label is too long "
.data STRING_213_DATA = bytearray( 4f 70 63 6f 64 65 20 6c 61 62 65 6c 20 69 73 20 74 6f 6f 20 6c 6f 6e 67 20 )
.field static valuetype T_beta STRING_213 at STRING_213_DATA

// "Program code overflow    "
.data STRING_214_DATA = bytearray( 50 72 6f 67 72 61 6d 20 63 6f 64 65 20 6f 76 65 72 66 6c 6f 77 20 20 20 20 )
.field static valuetype T_beta STRING_214 at STRING_214_DATA

// "Ptr used after dispose op"
.data STRING_260_DATA = bytearray( 50 74 72 20 75 73 65 64 20 61 66 74 65 72 20 64 69 73 70 6f 73 65 20 6f 70 )
.field static valuetype T_beta STRING_260 at STRING_260_DATA

// "To many files            "
.data STRING_223_DATA = bytearray( 54 6f 20 6d 61 6e 79 20 66 69 6c 65 73 20 20 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_223 at STRING_223_DATA

// "Zero divide              "
.data STRING_264_DATA = bytearray( 5a 65 72 6f 20 64 69 76 69 64 65 20 20 20 20 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_264 at STRING_264_DATA

// "abi       "
.data STRING_42_DATA = bytearray( 61 62 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_42 at STRING_42_DATA

// "abr       "
.data STRING_43_DATA = bytearray( 61 62 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_43 at STRING_43_DATA

// "adi       "
.data STRING_30_DATA = bytearray( 61 64 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_30 at STRING_30_DATA

// "adr       "
.data STRING_31_DATA = bytearray( 61 64 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_31 at STRING_31_DATA

// "and       "
.data STRING_45_DATA = bytearray( 61 6e 64 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_45 at STRING_45_DATA

// "atn       "
.data STRING_193_DATA = bytearray( 61 74 6e 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_193 at STRING_193_DATA

// "bad pointer value        "
.data STRING_229_DATA = bytearray( 62 61 64 20 70 6f 69 6e 74 65 72 20 76 61 6c 75 65 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_229 at STRING_229_DATA

// "bad string format        "
.data STRING_220_DATA = bytearray( 62 61 64 20 73 74 72 69 6e 67 20 66 6f 72 6d 61 74 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_220 at STRING_220_DATA

// "block already freed      "
.data STRING_230_DATA = bytearray( 62 6c 6f 63 6b 20 61 6c 72 65 61 64 79 20 66 72 65 65 64 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_230 at STRING_230_DATA

// "case - error             "
.data STRING_265_DATA = bytearray( 63 61 73 65 20 2d 20 65 72 72 6f 72 20 20 20 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_265 at STRING_265_DATA

// "chka      "
.data STRING_97_DATA = bytearray( 63 68 6b 61 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_97 at STRING_97_DATA

// "chkb      "
.data STRING_100_DATA = bytearray( 63 68 6b 62 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_100 at STRING_100_DATA

// "chkc      "
.data STRING_101_DATA = bytearray( 63 68 6b 63 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_101 at STRING_101_DATA

// "chki      "
.data STRING_28_DATA = bytearray( 63 68 6b 69 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_28 at STRING_28_DATA

// "chkr      "
.data STRING_98_DATA = bytearray( 63 68 6b 72 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_98 at STRING_98_DATA

// "chks      "
.data STRING_99_DATA = bytearray( 63 68 6b 73 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_99 at STRING_99_DATA

// "chr       "
.data STRING_62_DATA = bytearray( 63 68 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_62 at STRING_62_DATA

// "cip       "
.data STRING_115_DATA = bytearray( 63 69 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_115 at STRING_115_DATA

// "constant table overflow  "
.data STRING_217_DATA = bytearray( 63 6f 6e 73 74 61 6e 74 20 74 61 62 6c 65 20 6f 76 65 72 66 6c 6f 77 20 20 )
.field static valuetype T_beta STRING_217 at STRING_217_DATA

// "cos       "
.data STRING_189_DATA = bytearray( 63 6f 73 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_189 at STRING_189_DATA

// "csp       "
.data STRING_17_DATA = bytearray( 63 73 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_17 at STRING_17_DATA

// "cup       "
.data STRING_14_DATA = bytearray( 63 75 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_14 at STRING_14_DATA

// "deca      "
.data STRING_102_DATA = bytearray( 64 65 63 61 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_102 at STRING_102_DATA

// "decb      "
.data STRING_105_DATA = bytearray( 64 65 63 62 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_105 at STRING_105_DATA

// "decc      "
.data STRING_106_DATA = bytearray( 64 65 63 63 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_106 at STRING_106_DATA

// "deci      "
.data STRING_59_DATA = bytearray( 64 65 63 69 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_59 at STRING_59_DATA

// "decr      "
.data STRING_103_DATA = bytearray( 64 65 63 72 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_103 at STRING_103_DATA

// "decs      "
.data STRING_104_DATA = bytearray( 64 65 63 73 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_104 at STRING_104_DATA

// "dif       "
.data STRING_47_DATA = bytearray( 64 69 66 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_47 at STRING_47_DATA

// "dispose uninit pointer   "
.data STRING_227_DATA = bytearray( 64 69 73 70 6f 73 65 20 75 6e 69 6e 69 74 20 70 6f 69 6e 74 65 72 20 20 20 )
.field static valuetype T_beta STRING_227 at STRING_227_DATA

// "dmp       "
.data STRING_119_DATA = bytearray( 64 6d 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_119 at STRING_119_DATA

// "dsp       "
.data STRING_199_DATA = bytearray( 64 73 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_199 at STRING_199_DATA

// "duplicated label         "
.data STRING_210_DATA = bytearray( 64 75 70 6c 69 63 61 74 65 64 20 6c 61 62 65 6c 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_210 at STRING_210_DATA

// "dvi       "
.data STRING_55_DATA = bytearray( 64 76 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_55 at STRING_55_DATA

// "dvr       "
.data STRING_56_DATA = bytearray( 64 76 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_56 at STRING_56_DATA

// "efb       "
.data STRING_117_DATA = bytearray( 65 66 62 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_117 at STRING_117_DATA

// "eln       "
.data STRING_181_DATA = bytearray( 65 6c 6e 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_181 at STRING_181_DATA

// "ente      "
.data STRING_173_DATA = bytearray( 65 6e 74 65 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_173 at STRING_173_DATA

// "ents      "
.data STRING_15_DATA = bytearray( 65 6e 74 73 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_15 at STRING_15_DATA

// "eof       "
.data STRING_29_DATA = bytearray( 65 6f 66 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_29 at STRING_29_DATA

// "eof test on output file  "
.data STRING_262_DATA = bytearray( 65 6f 66 20 74 65 73 74 20 6f 6e 20 6f 75 74 70 75 74 20 66 69 6c 65 20 20 )
.field static valuetype T_beta STRING_262 at STRING_262_DATA

// "eoln on prr file         "
.data STRING_244_DATA = bytearray( 65 6f 6c 6e 20 6f 6e 20 70 72 72 20 66 69 6c 65 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_244 at STRING_244_DATA

// "eoln output file         "
.data STRING_243_DATA = bytearray( 65 6f 6c 6e 20 6f 75 74 70 75 74 20 66 69 6c 65 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_243 at STRING_243_DATA

// "equa      "
.data STRING_19_DATA = bytearray( 65 71 75 61 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_19 at STRING_19_DATA

// "equb      "
.data STRING_139_DATA = bytearray( 65 71 75 62 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_139 at STRING_139_DATA

// "equc      "
.data STRING_141_DATA = bytearray( 65 71 75 63 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_141 at STRING_141_DATA

// "equi      "
.data STRING_137_DATA = bytearray( 65 71 75 69 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_137 at STRING_137_DATA

// "equm      "
.data STRING_142_DATA = bytearray( 65 71 75 6d 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_142 at STRING_142_DATA

// "equr      "
.data STRING_138_DATA = bytearray( 65 71 75 72 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_138 at STRING_138_DATA

// "equs      "
.data STRING_140_DATA = bytearray( 65 71 75 73 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_140 at STRING_140_DATA

// "exp       "
.data STRING_190_DATA = bytearray( 65 78 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_190 at STRING_190_DATA

// "fbv       "
.data STRING_113_DATA = bytearray( 66 62 76 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_113 at STRING_113_DATA

// "file is not open         "
.data STRING_263_DATA = bytearray( 66 69 6c 65 20 69 73 20 6e 6f 74 20 6f 70 65 6e 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_263 at STRING_263_DATA

// "fjp       "
.data STRING_26_DATA = bytearray( 66 6a 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_26 at STRING_26_DATA

// "flo       "
.data STRING_36_DATA = bytearray( 66 6c 6f 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_36 at STRING_36_DATA

// "flt       "
.data STRING_35_DATA = bytearray( 66 6c 74 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_35 at STRING_35_DATA

// "fvb       "
.data STRING_118_DATA = bytearray( 66 76 62 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_118 at STRING_118_DATA

// "gbf       "
.data STRING_208_DATA = bytearray( 67 62 66 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_208 at STRING_208_DATA

// "geqa      "
.data STRING_21_DATA = bytearray( 67 65 71 61 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_21 at STRING_21_DATA

// "geqb      "
.data STRING_151_DATA = bytearray( 67 65 71 62 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_151 at STRING_151_DATA

// "geqc      "
.data STRING_153_DATA = bytearray( 67 65 71 63 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_153 at STRING_153_DATA

// "geqi      "
.data STRING_149_DATA = bytearray( 67 65 71 69 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_149 at STRING_149_DATA

// "geqm      "
.data STRING_154_DATA = bytearray( 67 65 71 6d 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_154 at STRING_154_DATA

// "geqr      "
.data STRING_150_DATA = bytearray( 67 65 71 72 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_150 at STRING_150_DATA

// "geqs      "
.data STRING_152_DATA = bytearray( 67 65 71 73 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_152 at STRING_152_DATA

// "get       "
.data STRING_175_DATA = bytearray( 67 65 74 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_175 at STRING_175_DATA

// "get on output file       "
.data STRING_233_DATA = bytearray( 67 65 74 20 6f 6e 20 6f 75 74 70 75 74 20 66 69 6c 65 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_233 at STRING_233_DATA

// "get on prr file          "
.data STRING_234_DATA = bytearray( 67 65 74 20 6f 6e 20 70 72 72 20 66 69 6c 65 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_234 at STRING_234_DATA

// "grta      "
.data STRING_22_DATA = bytearray( 67 72 74 61 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_22 at STRING_22_DATA

// "grtb      "
.data STRING_157_DATA = bytearray( 67 72 74 62 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_157 at STRING_157_DATA

// "grtc      "
.data STRING_159_DATA = bytearray( 67 72 74 63 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_159 at STRING_159_DATA

// "grti      "
.data STRING_155_DATA = bytearray( 67 72 74 69 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_155 at STRING_155_DATA

// "grtm      "
.data STRING_160_DATA = bytearray( 67 72 74 6d 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_160 at STRING_160_DATA

// "grtr      "
.data STRING_156_DATA = bytearray( 67 72 74 72 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_156 at STRING_156_DATA

// "grts      "
.data STRING_158_DATA = bytearray( 67 72 74 73 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_158 at STRING_158_DATA

// "illegal character        "
.data STRING_218_DATA = bytearray( 69 6c 6c 65 67 61 6c 20 63 68 61 72 61 63 74 65 72 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_218 at STRING_218_DATA

// "illegal instruction      "
.data STRING_215_DATA = bytearray( 69 6c 6c 65 67 61 6c 20 69 6e 73 74 72 75 63 74 69 6f 6e 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_215 at STRING_215_DATA

// "inca      "
.data STRING_92_DATA = bytearray( 69 6e 63 61 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_92 at STRING_92_DATA

// "incb      "
.data STRING_95_DATA = bytearray( 69 6e 63 62 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_95 at STRING_95_DATA

// "incc      "
.data STRING_96_DATA = bytearray( 69 6e 63 63 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_96 at STRING_96_DATA

// "inci      "
.data STRING_12_DATA = bytearray( 69 6e 63 69 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_12 at STRING_12_DATA

// "incr      "
.data STRING_93_DATA = bytearray( 69 6e 63 72 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_93 at STRING_93_DATA

// "incs      "
.data STRING_94_DATA = bytearray( 69 6e 63 73 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_94 at STRING_94_DATA

// "inda      "
.data STRING_87_DATA = bytearray( 69 6e 64 61 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_87 at STRING_87_DATA

// "indb      "
.data STRING_90_DATA = bytearray( 69 6e 64 62 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_90 at STRING_90_DATA

// "indc      "
.data STRING_91_DATA = bytearray( 69 6e 64 63 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_91 at STRING_91_DATA

// "indi      "
.data STRING_11_DATA = bytearray( 69 6e 64 69 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_11 at STRING_11_DATA

// "indr      "
.data STRING_88_DATA = bytearray( 69 6e 64 72 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_88 at STRING_88_DATA

// "inds      "
.data STRING_89_DATA = bytearray( 69 6e 64 73 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_89 at STRING_89_DATA

// "inn       "
.data STRING_50_DATA = bytearray( 69 6e 6e 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_50 at STRING_50_DATA

// "int       "
.data STRING_48_DATA = bytearray( 69 6e 74 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_48 at STRING_48_DATA

// "invalid std proc/func    "
.data STRING_232_DATA = bytearray( 69 6e 76 61 6c 69 64 20 73 74 64 20 70 72 6f 63 2f 66 75 6e 63 20 20 20 20 )
.field static valuetype T_beta STRING_232 at STRING_232_DATA

// "ior       "
.data STRING_46_DATA = bytearray( 69 6f 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_46 at STRING_46_DATA

// "ipj       "
.data STRING_114_DATA = bytearray( 69 70 6a 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_114 at STRING_114_DATA

// "ixa       "
.data STRING_18_DATA = bytearray( 69 78 61 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_18 at STRING_18_DATA

// "lao       "
.data STRING_7_DATA = bytearray( 6c 61 6f 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_7 at STRING_7_DATA

// "lca       "
.data STRING_58_DATA = bytearray( 6c 63 61 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_58 at STRING_58_DATA

// "lda       "
.data STRING_6_DATA = bytearray( 6c 64 61 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_6 at STRING_6_DATA

// "ldc       "
.data STRING_9_DATA = bytearray( 6c 64 63 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_9 at STRING_9_DATA

// "ldc() expected           "
.data STRING_219_DATA = bytearray( 6c 64 63 28 29 20 65 78 70 65 63 74 65 64 20 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_219 at STRING_219_DATA

// "ldcb      "
.data STRING_126_DATA = bytearray( 6c 64 63 62 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_126 at STRING_126_DATA

// "ldcc      "
.data STRING_127_DATA = bytearray( 6c 64 63 63 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_127 at STRING_127_DATA

// "ldci      "
.data STRING_123_DATA = bytearray( 6c 64 63 69 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_123 at STRING_123_DATA

// "ldcn      "
.data STRING_125_DATA = bytearray( 6c 64 63 6e 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_125 at STRING_125_DATA

// "ldcr      "
.data STRING_124_DATA = bytearray( 6c 64 63 72 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_124 at STRING_124_DATA

// "ldoa      "
.data STRING_67_DATA = bytearray( 6c 64 6f 61 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_67 at STRING_67_DATA

// "ldob      "
.data STRING_70_DATA = bytearray( 6c 64 6f 62 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_70 at STRING_70_DATA

// "ldoc      "
.data STRING_71_DATA = bytearray( 6c 64 6f 63 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_71 at STRING_71_DATA

// "ldoi      "
.data STRING_3_DATA = bytearray( 6c 64 6f 69 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_3 at STRING_3_DATA

// "ldor      "
.data STRING_68_DATA = bytearray( 6c 64 6f 72 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_68 at STRING_68_DATA

// "ldos      "
.data STRING_69_DATA = bytearray( 6c 64 6f 73 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_69 at STRING_69_DATA

// "leqa      "
.data STRING_23_DATA = bytearray( 6c 65 71 61 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_23 at STRING_23_DATA

// "leqb      "
.data STRING_163_DATA = bytearray( 6c 65 71 62 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_163 at STRING_163_DATA

// "leqc      "
.data STRING_165_DATA = bytearray( 6c 65 71 63 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_165 at STRING_165_DATA

// "leqi      "
.data STRING_161_DATA = bytearray( 6c 65 71 69 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_161 at STRING_161_DATA

// "leqm      "
.data STRING_166_DATA = bytearray( 6c 65 71 6d 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_166 at STRING_166_DATA

// "leqr      "
.data STRING_162_DATA = bytearray( 6c 65 71 72 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_162 at STRING_162_DATA

// "leqs      "
.data STRING_164_DATA = bytearray( 6c 65 71 73 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_164 at STRING_164_DATA

// "lesa      "
.data STRING_24_DATA = bytearray( 6c 65 73 61 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_24 at STRING_24_DATA

// "lesb      "
.data STRING_169_DATA = bytearray( 6c 65 73 62 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_169 at STRING_169_DATA

// "lesc      "
.data STRING_171_DATA = bytearray( 6c 65 73 63 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_171 at STRING_171_DATA

// "lesi      "
.data STRING_167_DATA = bytearray( 6c 65 73 69 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_167 at STRING_167_DATA

// "lesm      "
.data STRING_172_DATA = bytearray( 6c 65 73 6d 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_172 at STRING_172_DATA

// "lesr      "
.data STRING_168_DATA = bytearray( 6c 65 73 72 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_168 at STRING_168_DATA

// "less      "
.data STRING_170_DATA = bytearray( 6c 65 73 73 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_170 at STRING_170_DATA

// "lip       "
.data STRING_122_DATA = bytearray( 6c 69 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_122 at STRING_122_DATA

// "loda      "
.data STRING_107_DATA = bytearray( 6c 6f 64 61 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_107 at STRING_107_DATA

// "lodb      "
.data STRING_110_DATA = bytearray( 6c 6f 64 62 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_110 at STRING_110_DATA

// "lodc      "
.data STRING_111_DATA = bytearray( 6c 6f 64 63 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_111 at STRING_111_DATA

// "lodi      "
.data STRING_2_DATA = bytearray( 6c 6f 64 69 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_2 at STRING_2_DATA

// "lodr      "
.data STRING_108_DATA = bytearray( 6c 6f 64 72 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_108 at STRING_108_DATA

// "lods      "
.data STRING_109_DATA = bytearray( 6c 6f 64 73 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_109 at STRING_109_DATA

// "log       "
.data STRING_191_DATA = bytearray( 6c 6f 67 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_191 at STRING_191_DATA

// "lpa       "
.data STRING_116_DATA = bytearray( 6c 70 61 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_116 at STRING_116_DATA

// "mod       "
.data STRING_51_DATA = bytearray( 6d 6f 64 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_51 at STRING_51_DATA

// "mov       "
.data STRING_57_DATA = bytearray( 6d 6f 76 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_57 at STRING_57_DATA

// "mpi       "
.data STRING_53_DATA = bytearray( 6d 70 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_53 at STRING_53_DATA

// "mpr       "
.data STRING_54_DATA = bytearray( 6d 70 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_54 at STRING_54_DATA

// "mrkl*     "
.data STRING_174_DATA = bytearray( 6d 72 6b 6c 2a 20 20 20 20 20 )
.field static valuetype T_alfa STRING_174 at STRING_174_DATA

// "mst       "
.data STRING_13_DATA = bytearray( 6d 73 74 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_13 at STRING_13_DATA

// "neqa      "
.data STRING_20_DATA = bytearray( 6e 65 71 61 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_20 at STRING_20_DATA

// "neqb      "
.data STRING_145_DATA = bytearray( 6e 65 71 62 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_145 at STRING_145_DATA

// "neqc      "
.data STRING_147_DATA = bytearray( 6e 65 71 63 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_147 at STRING_147_DATA

// "neqi      "
.data STRING_143_DATA = bytearray( 6e 65 71 69 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_143 at STRING_143_DATA

// "neqm      "
.data STRING_148_DATA = bytearray( 6e 65 71 6d 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_148 at STRING_148_DATA

// "neqr      "
.data STRING_144_DATA = bytearray( 6e 65 71 72 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_144 at STRING_144_DATA

// "neqs      "
.data STRING_146_DATA = bytearray( 6e 65 71 73 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_146 at STRING_146_DATA

// "new       "
.data STRING_178_DATA = bytearray( 6e 65 77 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_178 at STRING_178_DATA

// "ngi       "
.data STRING_38_DATA = bytearray( 6e 67 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_38 at STRING_38_DATA

// "ngr       "
.data STRING_39_DATA = bytearray( 6e 67 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_39 at STRING_39_DATA

// "not       "
.data STRING_44_DATA = bytearray( 6e 6f 74 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_44 at STRING_44_DATA

// "odd       "
.data STRING_52_DATA = bytearray( 6f 64 64 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_52 at STRING_52_DATA

// "ordb      "
.data STRING_134_DATA = bytearray( 6f 72 64 62 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_134 at STRING_134_DATA

// "ordc      "
.data STRING_136_DATA = bytearray( 6f 72 64 63 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_136 at STRING_136_DATA

// "ordi      "
.data STRING_61_DATA = bytearray( 6f 72 64 69 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_61 at STRING_61_DATA

// "ordr      "
.data STRING_133_DATA = bytearray( 6f 72 64 72 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_133 at STRING_133_DATA

// "ords      "
.data STRING_135_DATA = bytearray( 6f 72 64 73 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_135 at STRING_135_DATA

// "pack elements out of bnds"
.data STRING_266_DATA = bytearray( 70 61 63 6b 20 65 6c 65 6d 65 6e 74 73 20 6f 75 74 20 6f 66 20 62 6e 64 73 )
.field static valuetype T_beta STRING_266 at STRING_266_DATA

// "pag       "
.data STRING_194_DATA = bytearray( 70 61 67 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_194 at STRING_194_DATA

// "page on prd file         "
.data STRING_248_DATA = bytearray( 70 61 67 65 20 6f 6e 20 70 72 64 20 66 69 6c 65 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_248 at STRING_248_DATA

// "page on read file        "
.data STRING_247_DATA = bytearray( 70 61 67 65 20 6f 6e 20 72 65 61 64 20 66 69 6c 65 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_247 at STRING_247_DATA

// "pbf       "
.data STRING_209_DATA = bytearray( 70 62 66 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_209 at STRING_209_DATA

// "pck       "
.data STRING_65_DATA = bytearray( 70 63 6b 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_65 at STRING_65_DATA

// "put       "
.data STRING_176_DATA = bytearray( 70 75 74 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_176 at STRING_176_DATA

// "put on prd file          "
.data STRING_236_DATA = bytearray( 70 75 74 20 6f 6e 20 70 72 64 20 66 69 6c 65 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_236 at STRING_236_DATA

// "put on read file         "
.data STRING_235_DATA = bytearray( 70 75 74 20 6f 6e 20 72 65 61 64 20 66 69 6c 65 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_235 at STRING_235_DATA

// "rbf       "
.data STRING_205_DATA = bytearray( 72 62 66 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_205 at STRING_205_DATA

// "rdc       "
.data STRING_187_DATA = bytearray( 72 64 63 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_187 at STRING_187_DATA

// "rdi       "
.data STRING_185_DATA = bytearray( 72 64 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_185 at STRING_185_DATA

// "rdr       "
.data STRING_186_DATA = bytearray( 72 64 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_186 at STRING_186_DATA

// "read on output file      "
.data STRING_245_DATA = bytearray( 72 65 61 64 20 6f 6e 20 6f 75 74 70 75 74 20 66 69 6c 65 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_245 at STRING_245_DATA

// "read on prr file         "
.data STRING_246_DATA = bytearray( 72 65 61 64 20 6f 6e 20 70 72 72 20 66 69 6c 65 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_246 at STRING_246_DATA

// "readln on output file    "
.data STRING_237_DATA = bytearray( 72 65 61 64 6c 6e 20 6f 6e 20 6f 75 74 70 75 74 20 66 69 6c 65 20 20 20 20 )
.field static valuetype T_beta STRING_237 at STRING_237_DATA

// "readln on prr file       "
.data STRING_238_DATA = bytearray( 72 65 61 64 6c 6e 20 6f 6e 20 70 72 72 20 66 69 6c 65 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_238 at STRING_238_DATA

// "reset on input file      "
.data STRING_249_DATA = bytearray( 72 65 73 65 74 20 6f 6e 20 69 6e 70 75 74 20 66 69 6c 65 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_249 at STRING_249_DATA

// "reset on output file     "
.data STRING_250_DATA = bytearray( 72 65 73 65 74 20 6f 6e 20 6f 75 74 70 75 74 20 66 69 6c 65 20 20 20 20 20 )
.field static valuetype T_beta STRING_250 at STRING_250_DATA

// "reset on prr file        "
.data STRING_251_DATA = bytearray( 72 65 73 65 74 20 6f 6e 20 70 72 72 20 66 69 6c 65 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_251 at STRING_251_DATA

// "reta      "
.data STRING_132_DATA = bytearray( 72 65 74 61 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_132 at STRING_132_DATA

// "retb      "
.data STRING_131_DATA = bytearray( 72 65 74 62 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_131 at STRING_131_DATA

// "retc      "
.data STRING_130_DATA = bytearray( 72 65 74 63 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_130 at STRING_130_DATA

// "reti      "
.data STRING_128_DATA = bytearray( 72 65 74 69 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_128 at STRING_128_DATA

// "retp      "
.data STRING_16_DATA = bytearray( 72 65 74 70 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_16 at STRING_16_DATA

// "retr      "
.data STRING_129_DATA = bytearray( 72 65 74 72 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_129 at STRING_129_DATA

// "rewrite on input file    "
.data STRING_252_DATA = bytearray( 72 65 77 72 69 74 65 20 6f 6e 20 69 6e 70 75 74 20 66 69 6c 65 20 20 20 20 )
.field static valuetype T_beta STRING_252 at STRING_252_DATA

// "rewrite on output file   "
.data STRING_253_DATA = bytearray( 72 65 77 72 69 74 65 20 6f 6e 20 6f 75 74 70 75 74 20 66 69 6c 65 20 20 20 )
.field static valuetype T_beta STRING_253 at STRING_253_DATA

// "rewrite on prd file      "
.data STRING_254_DATA = bytearray( 72 65 77 72 69 74 65 20 6f 6e 20 70 72 64 20 66 69 6c 65 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_254 at STRING_254_DATA

// "rgs       "
.data STRING_112_DATA = bytearray( 72 67 73 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_112 at STRING_112_DATA

// "rln       "
.data STRING_177_DATA = bytearray( 72 6c 6e 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_177 at STRING_177_DATA

// "rnd       "
.data STRING_64_DATA = bytearray( 72 6e 64 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_64 at STRING_64_DATA

// "rsb       "
.data STRING_206_DATA = bytearray( 72 73 62 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_206 at STRING_206_DATA

// "rsf       "
.data STRING_195_DATA = bytearray( 72 73 66 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_195 at STRING_195_DATA

// "rwb       "
.data STRING_207_DATA = bytearray( 72 77 62 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_207 at STRING_207_DATA

// "rwf       "
.data STRING_196_DATA = bytearray( 72 77 66 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_196 at STRING_196_DATA

// "sbi       "
.data STRING_32_DATA = bytearray( 73 62 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_32 at STRING_32_DATA

// "sbr       "
.data STRING_33_DATA = bytearray( 73 62 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_33 at STRING_33_DATA

// "set inclusion            "
.data STRING_257_DATA = bytearray( 73 65 74 20 69 6e 63 6c 75 73 69 6f 6e 20 20 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_257 at STRING_257_DATA

// "sgs       "
.data STRING_34_DATA = bytearray( 73 67 73 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_34 at STRING_34_DATA

// "sin       "
.data STRING_188_DATA = bytearray( 73 69 6e 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_188 at STRING_188_DATA

// "sqi       "
.data STRING_40_DATA = bytearray( 73 71 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_40 at STRING_40_DATA

// "sqr       "
.data STRING_41_DATA = bytearray( 73 71 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_41 at STRING_41_DATA

// "sqt       "
.data STRING_192_DATA = bytearray( 73 71 74 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_192 at STRING_192_DATA

// "sroa      "
.data STRING_77_DATA = bytearray( 73 72 6f 61 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_77 at STRING_77_DATA

// "srob      "
.data STRING_80_DATA = bytearray( 73 72 6f 62 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_80 at STRING_80_DATA

// "sroc      "
.data STRING_81_DATA = bytearray( 73 72 6f 63 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_81 at STRING_81_DATA

// "sroi      "
.data STRING_5_DATA = bytearray( 73 72 6f 69 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_5 at STRING_5_DATA

// "sror      "
.data STRING_78_DATA = bytearray( 73 72 6f 72 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_78 at STRING_78_DATA

// "sros      "
.data STRING_79_DATA = bytearray( 73 72 6f 73 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_79 at STRING_79_DATA

// "std proc/func not found  "
.data STRING_216_DATA = bytearray( 73 74 64 20 70 72 6f 63 2f 66 75 6e 63 20 6e 6f 74 20 66 6f 75 6e 64 20 20 )
.field static valuetype T_beta STRING_216 at STRING_216_DATA

// "stoa      "
.data STRING_82_DATA = bytearray( 73 74 6f 61 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_82 at STRING_82_DATA

// "stob      "
.data STRING_85_DATA = bytearray( 73 74 6f 62 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_85 at STRING_85_DATA

// "stoc      "
.data STRING_86_DATA = bytearray( 73 74 6f 63 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_86 at STRING_86_DATA

// "stoi      "
.data STRING_8_DATA = bytearray( 73 74 6f 69 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_8 at STRING_8_DATA

// "stor      "
.data STRING_83_DATA = bytearray( 73 74 6f 72 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_83 at STRING_83_DATA

// "store overflow           "
.data STRING_226_DATA = bytearray( 73 74 6f 72 65 20 6f 76 65 72 66 6c 6f 77 20 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_226 at STRING_226_DATA

// "stos      "
.data STRING_84_DATA = bytearray( 73 74 6f 73 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_84 at STRING_84_DATA

// "stp       "
.data STRING_60_DATA = bytearray( 73 74 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_60 at STRING_60_DATA

// "stra      "
.data STRING_72_DATA = bytearray( 73 74 72 61 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_72 at STRING_72_DATA

// "strb      "
.data STRING_75_DATA = bytearray( 73 74 72 62 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_75 at STRING_75_DATA

// "strc      "
.data STRING_76_DATA = bytearray( 73 74 72 63 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_76 at STRING_76_DATA

// "stri      "
.data STRING_4_DATA = bytearray( 73 74 72 69 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_4 at STRING_4_DATA

// "string overflow          "
.data STRING_222_DATA = bytearray( 73 74 72 69 6e 67 20 6f 76 65 72 66 6c 6f 77 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_222 at STRING_222_DATA

// "strr      "
.data STRING_73_DATA = bytearray( 73 74 72 72 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_73 at STRING_73_DATA

// "strs      "
.data STRING_74_DATA = bytearray( 73 74 72 73 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_74 at STRING_74_DATA

// "swp       "
.data STRING_120_DATA = bytearray( 73 77 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_120 at STRING_120_DATA

// "tjp       "
.data STRING_121_DATA = bytearray( 74 6a 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_121 at STRING_121_DATA

// "trc       "
.data STRING_37_DATA = bytearray( 74 72 63 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_37 at STRING_37_DATA

// "ujc       "
.data STRING_63_DATA = bytearray( 75 6a 63 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_63 at STRING_63_DATA

// "ujp       "
.data STRING_25_DATA = bytearray( 75 6a 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_25 at STRING_25_DATA

// "unexpected eof on input  "
.data STRING_211_DATA = bytearray( 75 6e 65 78 70 65 63 74 65 64 20 65 6f 66 20 6f 6e 20 69 6e 70 75 74 20 20 )
.field static valuetype T_beta STRING_211 at STRING_211_DATA

// "unexpected line start    "
.data STRING_212_DATA = bytearray( 75 6e 65 78 70 65 63 74 65 64 20 6c 69 6e 65 20 73 74 61 72 74 20 20 20 20 )
.field static valuetype T_beta STRING_212 at STRING_212_DATA

// "uni       "
.data STRING_49_DATA = bytearray( 75 6e 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_49 at STRING_49_DATA

// "uninitialized pointer    "
.data STRING_258_DATA = bytearray( 75 6e 69 6e 69 74 69 61 6c 69 7a 65 64 20 70 6f 69 6e 74 65 72 20 20 20 20 )
.field static valuetype T_beta STRING_258 at STRING_258_DATA

// "unpack elem out of bnds  "
.data STRING_267_DATA = bytearray( 75 6e 70 61 63 6b 20 65 6c 65 6d 20 6f 75 74 20 6f 66 20 62 6e 64 73 20 20 )
.field static valuetype T_beta STRING_267 at STRING_267_DATA

// "unterminated string      "
.data STRING_221_DATA = bytearray( 75 6e 74 65 72 6d 69 6e 61 74 65 64 20 73 74 72 69 6e 67 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_221 at STRING_221_DATA

// "upk       "
.data STRING_66_DATA = bytearray( 75 70 6b 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_66 at STRING_66_DATA

// "value out of range       "
.data STRING_261_DATA = bytearray( 76 61 6c 75 65 20 6f 75 74 20 6f 66 20 72 61 6e 67 65 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_261 at STRING_261_DATA

// "wbb       "
.data STRING_204_DATA = bytearray( 77 62 62 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_204 at STRING_204_DATA

// "wbc       "
.data STRING_203_DATA = bytearray( 77 62 63 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_203 at STRING_203_DATA

// "wbf       "
.data STRING_200_DATA = bytearray( 77 62 66 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_200 at STRING_200_DATA

// "wbi       "
.data STRING_201_DATA = bytearray( 77 62 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_201 at STRING_201_DATA

// "wbr       "
.data STRING_202_DATA = bytearray( 77 62 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_202 at STRING_202_DATA

// "wln       "
.data STRING_179_DATA = bytearray( 77 6c 6e 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_179 at STRING_179_DATA

// "wrb       "
.data STRING_197_DATA = bytearray( 77 72 62 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_197 at STRING_197_DATA

// "wrc       "
.data STRING_184_DATA = bytearray( 77 72 63 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_184 at STRING_184_DATA

// "wrf       "
.data STRING_198_DATA = bytearray( 77 72 66 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_198 at STRING_198_DATA

// "wri       "
.data STRING_182_DATA = bytearray( 77 72 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_182 at STRING_182_DATA

// "write on input file      "
.data STRING_241_DATA = bytearray( 77 72 69 74 65 20 6f 6e 20 69 6e 70 75 74 20 66 69 6c 65 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_241 at STRING_241_DATA

// "write on prd file        "
.data STRING_242_DATA = bytearray( 77 72 69 74 65 20 6f 6e 20 70 72 64 20 66 69 6c 65 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_242 at STRING_242_DATA

// "writeln on input file    "
.data STRING_239_DATA = bytearray( 77 72 69 74 65 6c 6e 20 6f 6e 20 69 6e 70 75 74 20 66 69 6c 65 20 20 20 20 )
.field static valuetype T_beta STRING_239 at STRING_239_DATA

// "writeln on prd file      "
.data STRING_240_DATA = bytearray( 77 72 69 74 65 6c 6e 20 6f 6e 20 70 72 64 20 66 69 6c 65 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_240 at STRING_240_DATA

// "wrr       "
.data STRING_183_DATA = bytearray( 77 72 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_183 at STRING_183_DATA

// "wrs       "
.data STRING_180_DATA = bytearray( 77 72 73 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_180 at STRING_180_DATA

// "xjp       "
.data STRING_27_DATA = bytearray( 78 6a 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_27 at STRING_27_DATA


