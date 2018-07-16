
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

// "chess05ISO.pas"

// line 290
//================================================================================
// scope: MAX (level : 2)

.class @MAX
{
    // parameters
    .field public int32 A
    .field public int32 B

    // local variables
    .field public int32 _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 300
//================================================================================
// scope: MIN (level : 2)

.class @MIN
{
    // parameters
    .field public int32 A
    .field public int32 B

    // local variables
    .field public int32 _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 310
//================================================================================
// scope: SIGN (level : 2)

.class @SIGN
{
    // parameters
    .field public int32 A
    .field public int32 B

    // local variables
    .field public int32 _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 320
//================================================================================
// scope: SORTIT (level : 2)

// line 0xfeefee

// TYPE RE = array [1 .. 500] of int16;
.class value explicit T_RE
{
    // elem size = 2
    // alignment = 2
    .size 1000

    .field [0] public int16 elem

    .method public int16& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 500)
        ldarg index
        ldc.i4 500
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 1
        sub
        ldc.i4 2
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

// TYPE RM = record;
.class value explicit T_RM
{
    // alignment = 4
    .size 48
    
    .field [0] public int8 RMFR
    .field [1] public int8 RMTO
    .field [4] public int32 RMCP
    .field [8] public bool RMCA
    .field [9] public bool RMAC
    .field [10] public bool RMCH
    .field [11] public bool RMMT
    .field [12] public bool RMIL
    .field [13] public bool RMSU
    
    // variable fields selector
    .field [14] public bool RMPR
    
    // case false = 0
        
        // variable fields selector
        .field [15] public bool RMOO
        
        // case false = 0
            
            .field [16] public bool RMEP
        
        // case true = 1
            
            .field [16] public bool RMQS
    
    // case true = 1
        
        .field [16] public int32 RMPP
}

// line 0xfeefee

// TYPE RF = array [1 .. 500] of valuetype T_RM;
.class value explicit T_RF
{
    // elem size = 48
    // alignment = 4
    .size 24000

    .field [0] public valuetype T_RM elem

    .method public valuetype T_RM& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 500)
        ldarg index
        ldc.i4 500
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 1
        sub
        ldc.i4 48
        mul
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

.class @SORTIT
{
    // parameters
    .field public valuetype T_RE* A
    .field public valuetype T_RF* B
    .field public int16 C

    // local variables
    .field public valuetype T_RM INRM
    .field public bool INTB
    .field public int32 INTI
    .field public int16 INTV
    .field public int16 INTW

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 354
//================================================================================
// scope: ANDRS (level : 2)

// line 0xfeefee

// TYPE SX = set of 0 .. 31
.class value explicit T_SX
{
    .field [0] public uint32 bits0

    .method public void addValue(int32 val)
    {
        // check(value >= 0)
        ldarg val
        ldc.i4 0
        blt badValue
    
        // check(value <= 31)
        ldarg val
        ldc.i4 31
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
        call instance void T_SX::addValue(int32)
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

// TYPE array_1 = array [0 .. 1] of valuetype T_SX;
.class value explicit T_array_1
{
    // elem size = 4
    // alignment = 4
    .size 8

    .field [0] public valuetype T_SX elem

    .method public valuetype T_SX& ldadr(int32 index)
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

// line 0xfeefee

// TYPE array_2 = array [0 .. 1] of int32;
.class value explicit T_array_2
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

// line 0xfeefee

// TYPE RS = record;
.class value explicit T_RS
{
    // alignment = 4
    .size 8
    
    // case false = 0
        
        .field [0] public valuetype T_array_1 RSSS
    
    // case true = 1
        
        .field [0] public valuetype T_array_2 RSTI
}

.class @ANDRS
{
    // parameters
    .field public valuetype T_RS A
    .field public valuetype T_RS B
    .field public valuetype T_RS* C

    // local variables
    .field public int8 INTY

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 368
//================================================================================
// scope: CLRRS (level : 2)

// line 0xfeefee

// TYPE array_3 = array [0 .. 63] of int8;
.class value explicit T_array_3
{
    // elem size = 1
    // alignment = 1
    .size 64

    .field [0] public int8 elem

    .method public int8& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 63)
        ldarg index
        ldc.i4 63
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

// TYPE array_4 = array [0 .. 63] of valuetype T_SX;
.class value explicit T_array_4
{
    // elem size = 4
    // alignment = 4
    .size 256

    .field [0] public valuetype T_SX elem

    .method public valuetype T_SX& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 63)
        ldarg index
        ldc.i4 63
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

.class @CLRRS
{
    // parameters
    .field public int8 A
    .field public valuetype T_RS* C

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 377
//================================================================================
// scope: CPYRS (level : 2)

.class @CPYRS
{
    // parameters
    .field public valuetype T_RS A
    .field public valuetype T_RS* C

    // local variables
    .field public int8 INTY

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 390
//================================================================================
// scope: IORRS (level : 2)

.class @IORRS
{
    // parameters
    .field public valuetype T_RS A
    .field public valuetype T_RS B
    .field public valuetype T_RS* C

    // local variables
    .field public int8 INTY

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 403
//================================================================================
// scope: NEWRS (level : 2)

// line 0xfeefee

// TYPE set_5 = set of 0 .. 255
.class value explicit T_set_5
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
        call instance void T_set_5::addValue(int32)
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

.class @NEWRS
{
    // parameters
    .field public valuetype T_RS* A

    // local variables
    .field public int8 INTY

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 415
//================================================================================
// scope: NOTRS (level : 2)

.class @NOTRS
{
    // parameters
    .field public valuetype T_RS A
    .field public valuetype T_RS* C

    // local variables
    .field public int8 INTY

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 427
//================================================================================
// scope: NXTTS (level : 2)

.class @NXTTS
{
    // parameters
    .field public valuetype T_RS* A
    .field public int8* B

    // local variables
    .field public bool _fnvalue
    .field public int8 INTX
    .field public int8 INTY

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 477
//================================================================================
// scope: CNTRS (level : 2)

.class @CNTRS
{
    // parameters
    .field public valuetype T_RS A

    // local variables
    .field public int8 _fnvalue
    .field public int8 IMTS
    .field public valuetype T_RS INRS
    .field public int8 INTS

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 502
//================================================================================
// scope: SETRS (level : 2)

.class @SETRS
{
    // parameters
    .field public int8 A
    .field public valuetype T_RS* C

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 511
//================================================================================
// scope: SFTRS (level : 2)

// line 0xfeefee

// TYPE array_9 = array [0 .. 119] of int8;
.class value explicit T_array_9
{
    // elem size = 1
    // alignment = 1
    .size 120

    .field [0] public int8 elem

    .method public int8& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 119)
        ldarg index
        ldc.i4 119
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

// TYPE array_11 = array [0 .. 15] of int8;
.class value explicit T_array_11
{
    // elem size = 1
    // alignment = 1
    .size 16

    .field [0] public int8 elem

    .method public int8& ldadr(int32 index)
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

.class @SFTRS
{
    // parameters
    .field public valuetype T_RS* A
    .field public valuetype T_RS B
    .field public int32 C

    // local variables
    .field public int8 INTS

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 619
//================================================================================
// scope: INRSTB (level : 2)

.class @INRSTB
{
    // parameters
    .field public valuetype T_RS A
    .field public int8 B

    // local variables
    .field public bool _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 627
//================================================================================
// scope: NULRS (level : 2)

.class @NULRS
{
    // parameters
    .field public valuetype T_RS A

    // local variables
    .field public bool _fnvalue
    .field public bool INTB
    .field public int8 INTY

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 643
//================================================================================
// scope: NULMVB (level : 2)

.class @NULMVB
{
    // parameters
    .field public valuetype T_RM A

    // local variables
    .field public bool _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 670
//================================================================================
// scope: INICON_INISYN (level : 3)

// line 0xfeefee

// TYPE RA = array [1 .. 10] of uint8;
.class value explicit T_RA
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

    .method public static string arrayToString(valuetype T_RA)
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

// TYPE RD = record;
.class value explicit T_RD
{
    // alignment = 1
    .size 5
    
    .field [0] public bool RDPC
    .field [1] public bool RDSL
    .field [2] public bool RDKQ
    .field [3] public bool RDNB
    .field [4] public bool RDRK
}

// line 0xfeefee

// TYPE RY = record;
.class value explicit T_RY
{
    // alignment = 1
    .size 11
    
    .field [0] public valuetype T_RD RYLS
    .field [5] public uint8 RYCH
    .field [6] public valuetype T_RD RYRS
}

// line 0xfeefee

// TYPE array_12 = array [1 .. 47] of valuetype T_RY;
.class value explicit T_array_12
{
    // elem size = 11
    // alignment = 1
    .size 517

    .field [0] public valuetype T_RY elem

    .method public valuetype T_RY& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 47)
        ldarg index
        ldc.i4 47
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 1
        sub
        ldc.i4 11
        mul
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

.class @INICON_INISYN
{
    // slink
    .field public class @INICON _slink

    // parameters
    .field public valuetype T_RA A

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 698
//================================================================================
// scope: INICON_INIXTP (level : 3)

// line 0xfeefee

// TYPE array_13 = array [0 .. 12] of uint8;
.class value explicit T_array_13
{
    // elem size = 1
    // alignment = 1
    .size 13

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 12)
        ldarg index
        ldc.i4 12
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

// TYPE array_14 = array [0 .. 12] of int32;
.class value explicit T_array_14
{
    // elem size = 4
    // alignment = 4
    .size 52

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 12)
        ldarg index
        ldc.i4 12
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

// TYPE array_15 = array [0 .. 12] of bool;
.class value explicit T_array_15
{
    // elem size = 1
    // alignment = 1
    .size 13

    .field [0] public bool elem

    .method public bool& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 12)
        ldarg index
        ldc.i4 12
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

// TYPE array_17 = array [0 .. 12] of int16;
.class value explicit T_array_17
{
    // elem size = 2
    // alignment = 2
    .size 26

    .field [0] public int16 elem

    .method public int16& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 12)
        ldarg index
        ldc.i4 12
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 2
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

// TYPE array_18 = array [0 .. 2] of int32;
.class value explicit T_array_18
{
    // elem size = 4
    // alignment = 4
    .size 12

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
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

// TYPE array_19 = array [0 .. 5] of valuetype T_array_18;
.class value explicit T_array_19
{
    // elem size = 12
    // alignment = 4
    .size 72

    .field [0] public valuetype T_array_18 elem

    .method public valuetype T_array_18& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 5)
        ldarg index
        ldc.i4 5
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

.class @INICON_INIXTP
{
    // slink
    .field public class @INICON _slink

    // parameters
    .field public int32 A
    .field public uint8 B
    .field public int32 C
    .field public int32 D
    .field public bool E
    .field public int32 F
    .field public int32 G
    .field public int16 H

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 653
//================================================================================
// scope: INICON (level : 2)

// line 0xfeefee

// TYPE array_21 = array [0 .. 3] of valuetype T_array_18;
.class value explicit T_array_21
{
    // elem size = 12
    // alignment = 4
    .size 48

    .field [0] public valuetype T_array_18 elem

    .method public valuetype T_array_18& ldadr(int32 index)
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

// line 0xfeefee

// TYPE array_22 = array [0 .. 3] of uint8;
.class value explicit T_array_22
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

// TYPE array_23 = array [0 .. 5] of uint8;
.class value explicit T_array_23
{
    // elem size = 1
    // alignment = 1
    .size 6

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 5)
        ldarg index
        ldc.i4 5
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

// TYPE array_24 = array [0 .. 1] of uint8;
.class value explicit T_array_24
{
    // elem size = 1
    // alignment = 1
    .size 2

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
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
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

// line 0xfeefee

// TYPE array_26 = array [0 .. 2] of int16;
.class value explicit T_array_26
{
    // elem size = 2
    // alignment = 2
    .size 6

    .field [0] public int16 elem

    .method public int16& ldadr(int32 index)
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
        ldc.i4 2
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

// TYPE array_27 = array [0 .. 2] of valuetype T_RA;
.class value explicit T_array_27
{
    // elem size = 10
    // alignment = 1
    .size 30

    .field [0] public valuetype T_RA elem

    .method public valuetype T_RA& ldadr(int32 index)
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

// TYPE array_31 = array [0 .. 3] of valuetype T_RA;
.class value explicit T_array_31
{
    // elem size = 10
    // alignment = 1
    .size 40

    .field [0] public valuetype T_RA elem

    .method public valuetype T_RA& ldadr(int32 index)
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

// TYPE array_36 = array [0 .. 7] of int8;
.class value explicit T_array_36
{
    // elem size = 1
    // alignment = 1
    .size 8

    .field [0] public int8 elem

    .method public int8& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 7)
        ldarg index
        ldc.i4 7
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

// TYPE array_37 = array [0 .. 7] of valuetype T_array_36;
.class value explicit T_array_37
{
    // elem size = 8
    // alignment = 1
    .size 64

    .field [0] public valuetype T_array_36 elem

    .method public valuetype T_array_36& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 7)
        ldarg index
        ldc.i4 7
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

// TYPE array_38 = array [0 .. 63] of int32;
.class value explicit T_array_38
{
    // elem size = 4
    // alignment = 4
    .size 256

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 63)
        ldarg index
        ldc.i4 63
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

// TYPE RX = array [0 .. 63] of valuetype T_RS;
.class value explicit T_RX
{
    // elem size = 8
    // alignment = 4
    .size 512

    .field [0] public valuetype T_RS elem

    .method public valuetype T_RS& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 63)
        ldarg index
        ldc.i4 63
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

// TYPE arraytrofrs = array [0 .. 7] of valuetype T_RS;
.class value explicit T_arraytrofrs
{
    // elem size = 8
    // alignment = 4
    .size 64

    .field [0] public valuetype T_RS elem

    .method public valuetype T_RS& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 7)
        ldarg index
        ldc.i4 7
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

// TYPE array_43 = array [0 .. 15] of valuetype T_RS;
.class value explicit T_array_43
{
    // elem size = 8
    // alignment = 4
    .size 128

    .field [0] public valuetype T_RS elem

    .method public valuetype T_RS& ldadr(int32 index)
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

// TYPE array_44 = array [-119 .. 119] of int8;
.class value explicit T_array_44
{
    // elem size = 1
    // alignment = 1
    .size 239

    .field [0] public int8 elem

    .method public int8& ldadr(int32 index)
    {
        // check(index >= -119)
        ldarg index
        ldc.i4 -119
        blt badIndex
    
        // check(index <= 119)
        ldarg index
        ldc.i4 119
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 -119
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

// TYPE arraytqofrs = array [0 .. 3] of valuetype T_RS;
.class value explicit T_arraytqofrs
{
    // elem size = 8
    // alignment = 4
    .size 32

    .field [0] public valuetype T_RS elem

    .method public valuetype T_RS& ldadr(int32 index)
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

// TYPE array_45 = array [0 .. 3] of valuetype T_RM;
.class value explicit T_array_45
{
    // elem size = 48
    // alignment = 4
    .size 192

    .field [0] public valuetype T_RM elem

    .method public valuetype T_RM& ldadr(int32 index)
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
        ldc.i4 48
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

// TYPE array_47 = array [0 .. 3] of int8;
.class value explicit T_array_47
{
    // elem size = 1
    // alignment = 1
    .size 4

    .field [0] public int8 elem

    .method public int8& ldadr(int32 index)
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

// TYPE RJ = array [0 .. 73] of uint8;
.class value explicit T_RJ
{
    // elem size = 1
    // alignment = 1
    .size 74

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 73)
        ldarg index
        ldc.i4 73
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

// TYPE array_95 = array [0 .. 7] of int32;
.class value explicit T_array_95
{
    // elem size = 4
    // alignment = 4
    .size 32

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 7)
        ldarg index
        ldc.i4 7
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

.class @INICON
{
    // local variables
    .field public int32 IMTI
    .field public valuetype T_RS INRS
    .field public int8 INTD
    .field public int32 INTE
    .field public int32 INTF
    .field public int32 INTI
    .field public int32 INTI1
    .field public int8 INTL
    .field public int32 INTQ
    .field public int32 INTR
    .field public int8 INTT
    .field public int8 INTX
    .field public int8 INTY

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 670

    .method public
    void INISYN(valuetype T_RA A)
    {
        .maxstack 32
    
        .locals init(class @INICON_INISYN _F)
        
        newobj instance void @INICON_INISYN::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @INICON @INICON_INISYN::_slink
        
        ldloc _F
        ldarg A
        stfld valuetype T_RA @INICON_INISYN::A
    
    L_Entry:
        // line 678
        ldsflda valuetype T_array_12 _G::SYNTX
        ldloc _F
        ldfld class @INICON @INICON_INISYN::_slink
        ldfld int32 @INICON::INTI
        call instance valuetype T_RY& T_array_12::ldadr(int32)
        ldflda valuetype T_RD T_RY::RYLS
        ldc.i4 1 // (true)
        stfld bool T_RD::RDPC
        // line 679
        ldsflda valuetype T_array_12 _G::SYNTX
        ldloc _F
        ldfld class @INICON @INICON_INISYN::_slink
        ldfld int32 @INICON::INTI
        call instance valuetype T_RY& T_array_12::ldadr(int32)
        ldflda valuetype T_RD T_RY::RYLS
        ldloc _F
        ldflda valuetype T_RA @INICON_INISYN::A
        ldc.i4 1
        ldc.i4 0
        add
        call instance uint8& T_RA::ldadr(int32)
        ldobj uint8
        ldc.i4 32 // ' '
        ceq
        ldc.i4.0
        ceq
        stfld bool T_RD::RDSL
        // line 680
        ldsflda valuetype T_array_12 _G::SYNTX
        ldloc _F
        ldfld class @INICON @INICON_INISYN::_slink
        ldfld int32 @INICON::INTI
        call instance valuetype T_RY& T_array_12::ldadr(int32)
        ldflda valuetype T_RD T_RY::RYLS
        ldloc _F
        ldflda valuetype T_RA @INICON_INISYN::A
        ldc.i4 1
        ldc.i4 1
        add
        call instance uint8& T_RA::ldadr(int32)
        ldobj uint8
        ldc.i4 32 // ' '
        ceq
        ldc.i4.0
        ceq
        stfld bool T_RD::RDKQ
        // line 681
        ldsflda valuetype T_array_12 _G::SYNTX
        ldloc _F
        ldfld class @INICON @INICON_INISYN::_slink
        ldfld int32 @INICON::INTI
        call instance valuetype T_RY& T_array_12::ldadr(int32)
        ldflda valuetype T_RD T_RY::RYLS
        ldloc _F
        ldflda valuetype T_RA @INICON_INISYN::A
        ldc.i4 1
        ldc.i4 2
        add
        call instance uint8& T_RA::ldadr(int32)
        ldobj uint8
        ldc.i4 32 // ' '
        ceq
        ldc.i4.0
        ceq
        stfld bool T_RD::RDNB
        // line 682
        ldsflda valuetype T_array_12 _G::SYNTX
        ldloc _F
        ldfld class @INICON @INICON_INISYN::_slink
        ldfld int32 @INICON::INTI
        call instance valuetype T_RY& T_array_12::ldadr(int32)
        ldflda valuetype T_RD T_RY::RYLS
        ldloc _F
        ldflda valuetype T_RA @INICON_INISYN::A
        ldc.i4 1
        ldc.i4 3
        add
        call instance uint8& T_RA::ldadr(int32)
        ldobj uint8
        ldc.i4 32 // ' '
        ceq
        ldc.i4.0
        ceq
        stfld bool T_RD::RDRK
        /* nop */
        // line 684
        ldsflda valuetype T_array_12 _G::SYNTX
        ldloc _F
        ldfld class @INICON @INICON_INISYN::_slink
        ldfld int32 @INICON::INTI
        call instance valuetype T_RY& T_array_12::ldadr(int32)
        ldloc _F
        ldflda valuetype T_RA @INICON_INISYN::A
        ldc.i4 1
        ldc.i4 4
        add
        call instance uint8& T_RA::ldadr(int32)
        ldobj uint8
        stfld uint8 T_RY::RYCH
        // line 687
        ldsflda valuetype T_array_12 _G::SYNTX
        ldloc _F
        ldfld class @INICON @INICON_INISYN::_slink
        ldfld int32 @INICON::INTI
        call instance valuetype T_RY& T_array_12::ldadr(int32)
        ldflda valuetype T_RD T_RY::RYRS
        ldloc _F
        ldflda valuetype T_RA @INICON_INISYN::A
        ldc.i4 1
        ldc.i4 5
        add
        call instance uint8& T_RA::ldadr(int32)
        ldobj uint8
        ldc.i4 32 // ' '
        ceq
        ldc.i4.0
        ceq
        stfld bool T_RD::RDPC
        // line 688
        ldsflda valuetype T_array_12 _G::SYNTX
        ldloc _F
        ldfld class @INICON @INICON_INISYN::_slink
        ldfld int32 @INICON::INTI
        call instance valuetype T_RY& T_array_12::ldadr(int32)
        ldflda valuetype T_RD T_RY::RYRS
        ldloc _F
        ldflda valuetype T_RA @INICON_INISYN::A
        ldc.i4 1
        ldc.i4 6
        add
        call instance uint8& T_RA::ldadr(int32)
        ldobj uint8
        ldc.i4 32 // ' '
        ceq
        ldc.i4.0
        ceq
        stfld bool T_RD::RDSL
        // line 689
        ldsflda valuetype T_array_12 _G::SYNTX
        ldloc _F
        ldfld class @INICON @INICON_INISYN::_slink
        ldfld int32 @INICON::INTI
        call instance valuetype T_RY& T_array_12::ldadr(int32)
        ldflda valuetype T_RD T_RY::RYRS
        ldloc _F
        ldflda valuetype T_RA @INICON_INISYN::A
        ldc.i4 1
        ldc.i4 7
        add
        call instance uint8& T_RA::ldadr(int32)
        ldobj uint8
        ldc.i4 32 // ' '
        ceq
        ldc.i4.0
        ceq
        stfld bool T_RD::RDKQ
        // line 690
        ldsflda valuetype T_array_12 _G::SYNTX
        ldloc _F
        ldfld class @INICON @INICON_INISYN::_slink
        ldfld int32 @INICON::INTI
        call instance valuetype T_RY& T_array_12::ldadr(int32)
        ldflda valuetype T_RD T_RY::RYRS
        ldloc _F
        ldflda valuetype T_RA @INICON_INISYN::A
        ldc.i4 1
        ldc.i4 8
        add
        call instance uint8& T_RA::ldadr(int32)
        ldobj uint8
        ldc.i4 32 // ' '
        ceq
        ldc.i4.0
        ceq
        stfld bool T_RD::RDNB
        // line 691
        ldsflda valuetype T_array_12 _G::SYNTX
        ldloc _F
        ldfld class @INICON @INICON_INISYN::_slink
        ldfld int32 @INICON::INTI
        call instance valuetype T_RY& T_array_12::ldadr(int32)
        ldflda valuetype T_RD T_RY::RYRS
        ldloc _F
        ldflda valuetype T_RA @INICON_INISYN::A
        ldc.i4 1
        ldc.i4 9
        add
        call instance uint8& T_RA::ldadr(int32)
        ldobj uint8
        ldc.i4 32 // ' '
        ceq
        ldc.i4.0
        ceq
        stfld bool T_RD::RDRK
        /* nop */
        /* nop */
        // line 694
        ldloc _F
        ldfld class @INICON @INICON_INISYN::_slink
        ldloc _F
        ldfld class @INICON @INICON_INISYN::_slink
        ldfld int32 @INICON::INTI
        ldc.i4 1
        add
        stfld int32 @INICON::INTI
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 698

    .method public
    void INIXTP(int32 A, uint8 B, int32 C, int32 D, bool E, int32 F, int32 G, int16 H)
    {
        .maxstack 32
    
        .locals init(class @INICON_INIXTP _F)
        
        newobj instance void @INICON_INIXTP::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @INICON @INICON_INIXTP::_slink
        
        ldloc _F
        ldarg A
        stfld int32 @INICON_INIXTP::A
        
        ldloc _F
        ldarg B
        stfld uint8 @INICON_INIXTP::B
        
        ldloc _F
        ldarg C
        stfld int32 @INICON_INIXTP::C
        
        ldloc _F
        ldarg D
        stfld int32 @INICON_INIXTP::D
        
        ldloc _F
        ldarg E
        stfld bool @INICON_INIXTP::E
        
        ldloc _F
        ldarg F
        stfld int32 @INICON_INIXTP::F
        
        ldloc _F
        ldarg G
        stfld int32 @INICON_INIXTP::G
        
        ldloc _F
        ldarg H
        stfld int16 @INICON_INIXTP::H
    
    L_Entry:
        // line 710
        ldsflda valuetype T_array_13 _G::XTPC
        ldloc _F
        ldfld int32 @INICON_INIXTP::A
        call instance uint8& T_array_13::ldadr(int32)
        ldloc _F
        ldfld uint8 @INICON_INIXTP::B
        stobj uint8
        // line 711
        ldsflda valuetype T_array_14 _G::XTPM
        ldloc _F
        ldfld int32 @INICON_INIXTP::A
        call instance int32& T_array_14::ldadr(int32)
        ldloc _F
        ldfld int32 @INICON_INIXTP::C
        stobj int32
        // line 712
        ldsflda valuetype T_array_15 _G::XSPB
        ldloc _F
        ldfld int32 @INICON_INIXTP::A
        call instance bool& T_array_15::ldadr(int32)
        ldloc _F
        ldfld bool @INICON_INIXTP::E
        stobj bool
        // line 713
        ldsflda valuetype T_array_14 _G::XFPE
        ldloc _F
        ldfld int32 @INICON_INIXTP::A
        call instance int32& T_array_14::ldadr(int32)
        ldloc _F
        ldfld int32 @INICON_INIXTP::F
        stobj int32
        // line 714
        ldsflda valuetype T_array_14 _G::XLPE
        ldloc _F
        ldfld int32 @INICON_INIXTP::A
        call instance int32& T_array_14::ldadr(int32)
        ldloc _F
        ldfld int32 @INICON_INIXTP::G
        stobj int32
        // line 715
        ldsflda valuetype T_array_14 _G::XTPU
        ldloc _F
        ldfld int32 @INICON_INIXTP::A
        call instance int32& T_array_14::ldadr(int32)
        ldloc _F
        ldfld int32 @INICON_INIXTP::D
        stobj int32
        // line 716
        ldsflda valuetype T_array_17 _G::XTPV
        ldloc _F
        ldfld int32 @INICON_INIXTP::A
        call instance int16& T_array_17::ldadr(int32)
        ldloc _F
        ldfld int16 @INICON_INIXTP::H
        stobj int16
        // line 717
        ldloc _F
        ldfld int32 @INICON_INIXTP::A
        ldc.i4 12
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_1
        // line 718
        ldsflda valuetype T_array_19 _G::XTUMP
        ldloc _F
        ldfld int32 @INICON_INIXTP::D
        call instance valuetype T_array_18& T_array_19::ldadr(int32)
        ldloc _F
        ldfld int32 @INICON_INIXTP::C
        call instance int32& T_array_18::ldadr(int32)
        ldloc _F
        ldfld int32 @INICON_INIXTP::A
        stobj int32
    L_if_end_1:
        /* nop */
    
    L_Epilogue:
        ret
    }
}


// line 1057
//================================================================================
// scope: INITAL (level : 2)

// line 0xfeefee

// TYPE SQ = set of 0 .. 3
.class value explicit T_SQ
{
    .field [0] public uint32 bits0

    .method public void addValue(int32 val)
    {
        // check(value >= 0)
        ldarg val
        ldc.i4 0
        blt badValue
    
        // check(value <= 3)
        ldarg val
        ldc.i4 3
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
        call instance void T_SQ::addValue(int32)
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

// TYPE array_96 = array [0 .. 7] of valuetype T_array_95;
.class value explicit T_array_96
{
    // elem size = 32
    // alignment = 4
    .size 256

    .field [0] public valuetype T_array_95 elem

    .method public valuetype T_array_95& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 7)
        ldarg index
        ldc.i4 7
        bgt badIndex
    
        ldarg.0
        ldarg index
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

// line 0xfeefee

// TYPE RB = record;
.class value explicit T_RB
{
    // alignment = 4
    .size 288
    
    .field [0] public int32 RBTM
    .field [4] public int8 RBTS
    .field [8] public int32 RBTI
    .field [12] public valuetype T_SQ RBSQ
    
    // case false = 0
        
        .field [16] public valuetype T_array_38 RBIS
    
    // case true = 1
        
        .field [16] public valuetype T_array_96 RBIRF
}

// line 0xfeefee

// TYPE array_99 = array [1 .. 30] of uint8;
.class value explicit T_array_99
{
    // elem size = 1
    // alignment = 1
    .size 30

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 30)
        ldarg index
        ldc.i4 30
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

    .method public static string arrayToString(valuetype T_array_99)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 30
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

.class @INITAL
{
    // parameters
    .field public valuetype T_RB* A

    // local variables
    .field public int32 INTF
    .field public int32 INTR

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1101
//================================================================================
// scope: PAUSER (level : 2)

.class @PAUSER
{
    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1112
//================================================================================
// scope: PRIMOV (level : 2)

.class @PRIMOV
{
    // parameters
    .field public valuetype T_RM A

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1168
//================================================================================
// scope: PRINTB (level : 2)

.class @PRINTB
{
    // parameters
    .field public valuetype T_array_38 A

    // local variables
    .field public int32 INTF
    .field public int32 INTR

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1208
//================================================================================
// scope: PRINAM (level : 2)

// line 0xfeefee

// TYPE set_100 = set of 0 .. 7
.class value explicit T_set_100
{
    .field [0] public uint32 bits0

    .method public void addValue(int32 val)
    {
        // check(value >= 0)
        ldarg val
        ldc.i4 0
        blt badValue
    
        // check(value <= 7)
        ldarg val
        ldc.i4 7
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
        call instance void T_set_100::addValue(int32)
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

.class @PRINAM
{
    // parameters
    .field public valuetype T_RX A

    // local variables
    .field public int32 INTF
    .field public int32 INTR
    .field public int32 JNTF
    .field public int32 JNTR

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1237
//================================================================================
// scope: PRISWI (level : 2)

.class @PRISWI
{
    // parameters
    .field public valuetype T_RA A
    .field public bool B

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1248
//================================================================================
// scope: MBEVAL (level : 2)

// line 0xfeefee

// TYPE array_102 = array [0 .. 16] of int16;
.class value explicit T_array_102
{
    // elem size = 2
    // alignment = 2
    .size 34

    .field [0] public int16 elem

    .method public int16& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 16)
        ldarg index
        ldc.i4 16
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 2
        mul
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

.class @MBEVAL
{
    // local variables
    .field public int32 INTI

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1267
//================================================================================
// scope: MBCAPT (level : 2)

.class @MBCAPT
{
    // parameters
    .field public int32 A

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1281
//================================================================================
// scope: MBTPAC (level : 2)

.class @MBTPAC
{
    // parameters
    .field public int32 A

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1294
//================================================================================
// scope: MBPROM (level : 2)

.class @MBPROM
{
    // parameters
    .field public int32 A

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1308
//================================================================================
// scope: MBMORP (level : 2)

.class @MBMORP
{
    // parameters
    .field public int32 A

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1321
//================================================================================
// scope: ADDATK (level : 2)

// line 0xfeefee

// TYPE arraytmofrs = array [0 .. 2] of valuetype T_RS;
.class value explicit T_arraytmofrs
{
    // elem size = 8
    // alignment = 4
    .size 24

    .field [0] public valuetype T_RS elem

    .method public valuetype T_RS& ldadr(int32 index)
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

.class @ADDATK
{
    // parameters
    .field public int8 A

    // local variables
    .field public bool INTB
    .field public int8 INTD
    .field public int32 INTE
    .field public int32 INTM
    .field public int32 INTP
    .field public int8 INTT

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1359
//================================================================================
// scope: ADDLOC (level : 2)

// line 0xfeefee

// TYPE array_103 = array [0 .. 12] of valuetype T_RS;
.class value explicit T_array_103
{
    // elem size = 8
    // alignment = 4
    .size 104

    .field [0] public valuetype T_RS elem

    .method public valuetype T_RS& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 12)
        ldarg index
        ldc.i4 12
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

// TYPE arraytkofrs = array [0 .. 16] of valuetype T_RS;
.class value explicit T_arraytkofrs
{
    // elem size = 8
    // alignment = 4
    .size 136

    .field [0] public valuetype T_RS elem

    .method public valuetype T_RS& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 16)
        ldarg index
        ldc.i4 16
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

.class @ADDLOC
{
    // parameters
    .field public int8 A
    .field public int32 B

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1372
//================================================================================
// scope: CLSTAT (level : 2)

.class @CLSTAT
{
    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1384
//================================================================================
// scope: CUTATK (level : 2)

.class @CUTATK
{
    // parameters
    .field public int8 A

    // local variables
    .field public valuetype T_RS IMRS
    .field public valuetype T_RS INRS
    .field public int8 INTD
    .field public int8 INTL
    .field public int32 INTM
    .field public int8 INTS
    .field public int8 INTT

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1428
//================================================================================
// scope: DELATK (level : 2)

.class @DELATK
{
    // parameters
    .field public int8 A

    // local variables
    .field public valuetype T_RS IMRS
    .field public valuetype T_RS INRS
    .field public int32 INTM
    .field public int8 INTS

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1462
//================================================================================
// scope: PRPATK (level : 2)

.class @PRPATK
{
    // parameters
    .field public int8 A

    // local variables
    .field public valuetype T_RS INRS
    .field public int8 INTD
    .field public int8 INTL
    .field public int32 INTM
    .field public int8 INTS
    .field public int8 INTT

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1502
//================================================================================
// scope: GAINIT (level : 2)

.class @GAINIT
{
    // parameters
    .field public valuetype T_RM A

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1520
//================================================================================
// scope: LOSEIT (level : 2)

.class @LOSEIT
{
    // parameters
    .field public valuetype T_RM A

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1540
//================================================================================
// scope: MOVEIT (level : 2)

.class @MOVEIT
{
    // parameters
    .field public valuetype T_RM A

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1558
//================================================================================
// scope: RTRKIT (level : 2)

.class @RTRKIT
{
    // parameters
    .field public valuetype T_RM A

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1578
//================================================================================
// scope: PAWNIT (level : 2)

.class @PAWNIT
{
    // parameters
    .field public valuetype T_RM A

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1590
//================================================================================
// scope: PROACA (level : 2)

.class @PROACA
{
    // parameters
    .field public int8 A

    // local variables
    .field public valuetype T_RS IMRS
    .field public valuetype T_RS INRS

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1614
//================================================================================
// scope: PROACS (level : 2)

.class @PROACS
{
    // parameters
    .field public valuetype T_RM A

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1629
//================================================================================
// scope: PROMOT (level : 2)

.class @PROMOT
{
    // parameters
    .field public valuetype T_RM A

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1641
//================================================================================
// scope: CREATE (level : 2)

// line 0xfeefee

// TYPE array_105 = array [0 .. 16] of int32;
.class value explicit T_array_105
{
    // elem size = 4
    // alignment = 4
    .size 68

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 16)
        ldarg index
        ldc.i4 16
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

.class @CREATE
{
    // local variables
    .field public valuetype T_RS INRS
    .field public int32 INTM
    .field public int32 INTP
    .field public int32 INTQ
    .field public int8 INTS

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1718
//================================================================================
// scope: DNDATE (level : 2)

.class @DNDATE
{
    // parameters
    .field public valuetype T_RM A

    // local variables
    .field public int32 INTF
    .field public int32 INTR
    .field public int8 INTS
    .field public int8 RKFR
    .field public int8 RKTO

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1792
//================================================================================
// scope: UPDATE (level : 2)

.class @UPDATE
{
    // parameters
    .field public valuetype T_RM* A

    // local variables
    .field public bool _fnvalue
    .field public valuetype T_RS IMRS
    .field public valuetype T_RS INRS
    .field public int32 INTF
    .field public int32 INTR
    .field public int8 INTS
    .field public int8 RKFR
    .field public int8 RKTO

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1919
//================================================================================
// scope: GENONE (level : 2)

.class @GENONE
{
    // parameters
    .field public int8 A
    .field public int8 B

    // local variables
    .field public valuetype T_RS INRS

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1950
//================================================================================
// scope: PWNPRO (level : 2)

.class @PWNPRO
{
    // local variables
    .field public int32 INTG

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1967
//================================================================================
// scope: GENPWN (level : 2)

.class @GENPWN
{
    // parameters
    .field public valuetype T_RS A
    .field public valuetype T_RS B

    // local variables
    .field public valuetype T_RS IMRS
    .field public valuetype T_RS INRS
    .field public int8 INTS

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2095
//================================================================================
// scope: GENFSL (level : 2)

.class @GENFSL
{
    // parameters
    .field public valuetype T_RS A

    // local variables
    .field public valuetype T_RS IMRS
    .field public int8 IMTS
    .field public valuetype T_RS INRS
    .field public int8 INTS
    .field public valuetype T_RS IPRS

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2124
//================================================================================
// scope: GENTSL (level : 2)

.class @GENTSL
{
    // parameters
    .field public valuetype T_RS A

    // local variables
    .field public valuetype T_RS IMRS
    .field public int8 IMTS
    .field public valuetype T_RS INRS
    .field public int8 INTS
    .field public valuetype T_RS IPRS

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2151
//================================================================================
// scope: GENCAP (level : 2)

.class @GENCAP
{
    // local variables
    .field public valuetype T_RS INRS

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2163
//================================================================================
// scope: GENCAS (level : 2)

.class @GENCAS
{
    // local variables
    .field public valuetype T_RS IMRS
    .field public valuetype T_RS INRS
    .field public int32 INTQ

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2191
//================================================================================
// scope: GENALL (level : 2)

.class @GENALL
{
    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2199
//================================================================================
// scope: LSTMOV (level : 2)

.class @LSTMOV
{
    // local variables
    .field public int16 INTW

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2215
//================================================================================
// scope: THEMOV (level : 2)

.class @THEMOV
{
    // parameters
    .field public valuetype T_RM A

    // local variables
    .field public valuetype T_RS INRS
    .field public bool INTB
    .field public int32 INTQ
    .field public int8 INTS

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2254
//================================================================================
// scope: EVALU8_EVKING (level : 3)

.class @EVALU8_EVKING
{
    // slink
    .field public class @EVALU8 _slink

    // parameters
    .field public valuetype T_RS A
    .field public valuetype T_RS B

    // local variables
    .field public int16 _fnvalue
    .field public valuetype T_RS INRS
    .field public int8 INTS
    .field public int16 INTV

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2280
//================================================================================
// scope: EVALU8_EVMOBL (level : 3)

.class @EVALU8_EVMOBL
{
    // slink
    .field public class @EVALU8 _slink

    // parameters
    .field public int32 A
    .field public int32 B

    // local variables
    .field public int16 _fnvalue
    .field public valuetype T_RS INRS
    .field public int8 INTS
    .field public int16 INTV

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2297
//================================================================================
// scope: EVALU8_EVPAWN (level : 3)

.class @EVALU8_EVPAWN
{
    // slink
    .field public class @EVALU8 _slink

    // parameters
    .field public valuetype T_RS A
    .field public int32 B
    .field public int32 C

    // local variables
    .field public int16 _fnvalue
    .field public valuetype T_RS IMRS
    .field public valuetype T_RS INRS
    .field public int8 INTS
    .field public int16 INTV

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2332
//================================================================================
// scope: EVALU8_EVROOK (level : 3)

.class @EVALU8_EVROOK
{
    // slink
    .field public class @EVALU8 _slink

    // parameters
    .field public valuetype T_RS A
    .field public valuetype T_RS B

    // local variables
    .field public int16 _fnvalue
    .field public valuetype T_RS INRS
    .field public int32 INTI
    .field public int8 INTS
    .field public int16 INTV

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2249
//================================================================================
// scope: EVALU8 (level : 2)

// line 0xfeefee

// TYPE array_109 = array [-2 .. 17] of int16;
.class value explicit T_array_109
{
    // elem size = 2
    // alignment = 2
    .size 40

    .field [0] public int16 elem

    .method public int16& ldadr(int32 index)
    {
        // check(index >= -2)
        ldarg index
        ldc.i4 -2
        blt badIndex
    
        // check(index <= 17)
        ldarg index
        ldc.i4 17
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 -2
        sub
        ldc.i4 2
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

// TYPE array_110 = array [0 .. 17] of int16;
.class value explicit T_array_110
{
    // elem size = 2
    // alignment = 2
    .size 36

    .field [0] public int16 elem

    .method public int16& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 17)
        ldarg index
        ldc.i4 17
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 2
        mul
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

.class @EVALU8
{
    // local variables
    .field public int16 INTV

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 2254

    .method public
    int16 EVKING(valuetype T_RS A, valuetype T_RS B)
    {
        .maxstack 32
    
        .locals init(class @EVALU8_EVKING _F)
        
        newobj instance void @EVALU8_EVKING::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @EVALU8 @EVALU8_EVKING::_slink
        
        ldloc _F
        ldarg A
        stfld valuetype T_RS @EVALU8_EVKING::A
        
        ldloc _F
        ldarg B
        stfld valuetype T_RS @EVALU8_EVKING::B
    
    L_Entry:
        // line 2264
        ldloc _F
        ldflda valuetype T_RS @EVALU8_EVKING::INRS
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVKING::A
        ldsfld valuetype T_RS _G::CORNR
        call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
        // line 2265
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVKING::INRS
        call bool NULRS(valuetype T_RS A)
        brfalse L_else_1
        // line 2266
        ldloc _F
        ldc.i4 0
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @EVALU8_EVKING::INTV
        br L_if_end_2
    L_else_1:
        // line 2268
        ldloc _F
        ldsfld int32 _G::FKSANQ
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @EVALU8_EVKING::INTV
    L_if_end_2:
        // line 2269
        ldloc _F
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVKING::A
        stfld valuetype T_RS @EVALU8_EVKING::INRS
        // line 2270
        ldloc _F
        ldflda valuetype T_RS @EVALU8_EVKING::INRS
        ldloc _F
        ldflda int8 @EVALU8_EVKING::INTS
        call bool NXTTS(valuetype T_RS& A, int8& B)
        brfalse L_if_end_3
        // line 2272
        ldloc _F
        ldflda valuetype T_RS @EVALU8_EVKING::INRS
        ldsflda valuetype T_RX _G::ATKFR
        ldloc _F
        ldfld int8 @EVALU8_EVKING::INTS
        call instance valuetype T_RS& T_RX::ldadr(int32)
        ldobj valuetype T_RS
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVKING::B
        call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
        // line 2273
        ldloc _F
        ldloc _F
        ldfld int16 @EVALU8_EVKING::INTV
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVKING::INRS
        call int8 CNTRS(valuetype T_RS A)
        ldsfld int32 _G::FKPSHD
        mul
        add
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @EVALU8_EVKING::INTV
        /* nop */
    L_if_end_3:
        // line 2276
        ldloc _F
        ldloc _F
        ldfld int16 @EVALU8_EVKING::INTV
        stfld int16 @EVALU8_EVKING::_fnvalue
        /* nop */
    
    L_Epilogue:
        ldloc _F
        ldfld int16 @EVALU8_EVKING::_fnvalue
        ret
    }

// line 2280

    .method public
    int16 EVMOBL(int32 A, int32 B)
    {
        .maxstack 32
    
        .locals init(class @EVALU8_EVMOBL _F)
        
        newobj instance void @EVALU8_EVMOBL::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @EVALU8 @EVALU8_EVMOBL::_slink
        
        ldloc _F
        ldarg A
        stfld int32 @EVALU8_EVMOBL::A
        
        ldloc _F
        ldarg B
        stfld int32 @EVALU8_EVMOBL::B
    
    L_Entry:
        // line 2289
        ldloc _F
        ldflda valuetype T_RS @EVALU8_EVMOBL::INRS
        ldsflda valuetype T_array_103 _G::TPLOC
        ldloc _F
        ldfld int32 @EVALU8_EVMOBL::A
        call instance valuetype T_RS& T_array_103::ldadr(int32)
        ldobj valuetype T_RS
        ldsflda valuetype T_array_103 _G::TPLOC
        ldloc _F
        ldfld int32 @EVALU8_EVMOBL::B
        call instance valuetype T_RS& T_array_103::ldadr(int32)
        ldobj valuetype T_RS
        call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
        // line 2290
        ldloc _F
        ldc.i4 0
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @EVALU8_EVMOBL::INTV
        // line 2291
        br L_while_test_2
    L_while_1:
        // line 2292
        ldloc _F
        ldloc _F
        ldfld int16 @EVALU8_EVMOBL::INTV
        ldsflda valuetype T_RX _G::ATKFR
        ldloc _F
        ldfld int8 @EVALU8_EVMOBL::INTS
        call instance valuetype T_RS& T_RX::ldadr(int32)
        ldobj valuetype T_RS
        call int8 CNTRS(valuetype T_RS A)
        add
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @EVALU8_EVMOBL::INTV
    L_while_test_2:
        ldloc _F
        ldflda valuetype T_RS @EVALU8_EVMOBL::INRS
        ldloc _F
        ldflda int8 @EVALU8_EVMOBL::INTS
        call bool NXTTS(valuetype T_RS& A, int8& B)
        brtrue L_while_1
        // line 2293
        ldloc _F
        ldloc _F
        ldfld int16 @EVALU8_EVMOBL::INTV
        stfld int16 @EVALU8_EVMOBL::_fnvalue
        /* nop */
    
    L_Epilogue:
        ldloc _F
        ldfld int16 @EVALU8_EVMOBL::_fnvalue
        ret
    }

// line 2297

    .method public
    int16 EVPAWN(valuetype T_RS A, int32 B, int32 C)
    {
        .maxstack 32
    
        .locals init(class @EVALU8_EVPAWN _F)
        
        newobj instance void @EVALU8_EVPAWN::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @EVALU8 @EVALU8_EVPAWN::_slink
        
        ldloc _F
        ldarg A
        stfld valuetype T_RS @EVALU8_EVPAWN::A
        
        ldloc _F
        ldarg B
        stfld int32 @EVALU8_EVPAWN::B
        
        ldloc _F
        ldarg C
        stfld int32 @EVALU8_EVPAWN::C
    
    L_Entry:
        // line 2309
        ldloc _F
        ldflda valuetype T_RS @EVALU8_EVPAWN::INRS
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVPAWN::A
        ldc.i4 4
        call void SFTRS(valuetype T_RS& A, valuetype T_RS B, int32 C)
        // line 2310
        ldloc _F
        ldflda valuetype T_RS @EVALU8_EVPAWN::INRS
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVPAWN::INRS
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVPAWN::A
        call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
        // line 2311
        ldloc _F
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVPAWN::INRS
        call int8 CNTRS(valuetype T_RS A)
        ldsfld int32 _G::FPFLNX
        mul
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @EVALU8_EVPAWN::INTV
        // line 2312
        ldloc _F
        ldflda valuetype T_RS @EVALU8_EVPAWN::INRS
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVPAWN::A
        ldc.i4 0
        call void SFTRS(valuetype T_RS& A, valuetype T_RS B, int32 C)
        // line 2313
        ldloc _F
        ldflda valuetype T_RS @EVALU8_EVPAWN::INRS
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVPAWN::INRS
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVPAWN::A
        call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
        // line 2314
        ldloc _F
        ldloc _F
        ldfld int16 @EVALU8_EVPAWN::INTV
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVPAWN::INRS
        call int8 CNTRS(valuetype T_RS A)
        ldsfld int32 _G::FPCONN
        mul
        add
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @EVALU8_EVPAWN::INTV
        // line 2315
        ldloc _F
        ldflda valuetype T_RS @EVALU8_EVPAWN::INRS
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVPAWN::A
        ldc.i4 1
        call void SFTRS(valuetype T_RS& A, valuetype T_RS B, int32 C)
        // line 2316
        ldloc _F
        ldflda valuetype T_RS @EVALU8_EVPAWN::INRS
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVPAWN::INRS
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVPAWN::A
        call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
        // line 2317
        ldloc _F
        ldloc _F
        ldfld int16 @EVALU8_EVPAWN::INTV
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVPAWN::INRS
        call int8 CNTRS(valuetype T_RS A)
        ldsfld int32 _G::FPCONN
        mul
        add
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @EVALU8_EVPAWN::INTV
        // line 2319
        ldloc _F
        ldflda valuetype T_RS @EVALU8_EVPAWN::INRS
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVPAWN::A
        ldloc _F
        ldfld int32 @EVALU8_EVPAWN::B
        call void SFTRS(valuetype T_RS& A, valuetype T_RS B, int32 C)
        // line 2320
        ldloc _F
        ldflda valuetype T_RS @EVALU8_EVPAWN::IMRS
        ldsflda valuetype T_array_103 _G::TPLOC
        ldc.i4 12
        call instance valuetype T_RS& T_array_103::ldadr(int32)
        ldobj valuetype T_RS
        call void NOTRS(valuetype T_RS& C, valuetype T_RS A)
        // line 2321
        ldloc _F
        ldflda valuetype T_RS @EVALU8_EVPAWN::INRS
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVPAWN::INRS
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVPAWN::IMRS
        call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
        // line 2322
        ldloc _F
        ldloc _F
        ldfld int16 @EVALU8_EVPAWN::INTV
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVPAWN::INRS
        call int8 CNTRS(valuetype T_RS A)
        ldsfld int32 _G::FPBLOK
        mul
        sub
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @EVALU8_EVPAWN::INTV
        // line 2324
        ldloc _F
        ldflda valuetype T_RS @EVALU8_EVPAWN::INRS
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVPAWN::A
        call void CPYRS(valuetype T_RS& C, valuetype T_RS A)
        // line 2325
        br L_while_test_2
    L_while_1:
        // line 2326
        ldloc _F
        ldloc _F
        ldfld int16 @EVALU8_EVPAWN::INTV
        ldloc _F
        ldfld int32 @EVALU8_EVPAWN::C
        ldsflda valuetype T_array_38 _G::XTSR
        ldloc _F
        ldfld int8 @EVALU8_EVPAWN::INTS
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        sub
        dup
        ldc.i4 0
        bge L_abs_question_3
        neg
    L_abs_question_3:
        ldsflda valuetype T_array_95 _G::FPADCR
        ldsflda valuetype T_array_38 _G::XTSF
        ldloc _F
        ldfld int8 @EVALU8_EVPAWN::INTS
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        call instance int32& T_array_95::ldadr(int32)
        ldobj int32
        mul
        add
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @EVALU8_EVPAWN::INTV
    L_while_test_2:
        ldloc _F
        ldflda valuetype T_RS @EVALU8_EVPAWN::IMRS
        ldloc _F
        ldflda int8 @EVALU8_EVPAWN::INTS
        call bool NXTTS(valuetype T_RS& A, int8& B)
        brtrue L_while_1
        // line 2328
        ldloc _F
        ldloc _F
        ldfld int16 @EVALU8_EVPAWN::INTV
        stfld int16 @EVALU8_EVPAWN::_fnvalue
        /* nop */
    
    L_Epilogue:
        ldloc _F
        ldfld int16 @EVALU8_EVPAWN::_fnvalue
        ret
    }

// line 2332

    .method public
    int16 EVROOK(valuetype T_RS A, valuetype T_RS B)
    {
        .maxstack 32
    
        .locals init(class @EVALU8_EVROOK _F)
        
        newobj instance void @EVALU8_EVROOK::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @EVALU8 @EVALU8_EVROOK::_slink
        
        ldloc _F
        ldarg A
        stfld valuetype T_RS @EVALU8_EVROOK::A
        
        ldloc _F
        ldarg B
        stfld valuetype T_RS @EVALU8_EVROOK::B
    
    L_Entry:
        // line 2343
        ldloc _F
        ldc.i4 0
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @EVALU8_EVROOK::INTV
        // line 2344
        ldloc _F
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVROOK::A
        stfld valuetype T_RS @EVALU8_EVROOK::INRS
        // line 2345
        ldloc _F
        ldflda valuetype T_RS @EVALU8_EVROOK::INRS
        ldloc _F
        ldflda int8 @EVALU8_EVROOK::INTS
        call bool NXTTS(valuetype T_RS& A, int8& B)
        brfalse L_if_end_1
        // line 2347
        ldloc _F
        ldflda valuetype T_RS @EVALU8_EVROOK::INRS
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVROOK::A
        ldsflda valuetype T_RX _G::ATKFR
        ldloc _F
        ldfld int8 @EVALU8_EVROOK::INTS
        call instance valuetype T_RS& T_RX::ldadr(int32)
        ldobj valuetype T_RS
        call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
        // line 2348
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVROOK::INRS
        call bool NULRS(valuetype T_RS A)
        ldc.i4.0
        ceq
        brfalse L_if_end_2
        // line 2349
        ldloc _F
        ldloc _F
        ldfld int16 @EVALU8_EVROOK::INTV
        ldsfld int32 _G::FRDUBL
        add
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @EVALU8_EVROOK::INTV
    L_if_end_2:
        /* nop */
    L_if_end_1:
        // line 2351
        ldloc _F
        ldflda valuetype T_RS @EVALU8_EVROOK::INRS
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVROOK::A
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVROOK::B
        call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
        // line 2352
        ldloc _F
        ldloc _F
        ldfld valuetype T_RS @EVALU8_EVROOK::INRS
        call int8 CNTRS(valuetype T_RS A)
        stfld int32 @EVALU8_EVROOK::INTI
        // line 2353
        ldloc _F
        ldloc _F
        ldfld int16 @EVALU8_EVROOK::INTV
        ldloc _F
        ldfld int32 @EVALU8_EVROOK::INTI
        ldloc _F
        ldfld int32 @EVALU8_EVROOK::INTI
        mul
        ldsfld int32 _G::FRK7TH
        mul
        add
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @EVALU8_EVROOK::_fnvalue
        /* nop */
    
    L_Epilogue:
        ldloc _F
        ldfld int16 @EVALU8_EVROOK::_fnvalue
        ret
    }
}


// line 2395
//================================================================================
// scope: SEARCH_NEWBST (level : 3)

// line 0xfeefee

// TYPE array_111 = array [0 .. 16] of valuetype T_RM;
.class value explicit T_array_111
{
    // elem size = 48
    // alignment = 4
    .size 816

    .field [0] public valuetype T_RM elem

    .method public valuetype T_RM& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 16)
        ldarg index
        ldc.i4 16
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 48
        mul
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

.class @SEARCH_NEWBST
{
    // slink
    .field public class @SEARCH _slink

    // parameters
    .field public int8 A

    // local variables
    .field public valuetype T_RM INRM
    .field public int16 INTW

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2418
//================================================================================
// scope: SEARCH_MINMAX (level : 3)

.class @SEARCH_MINMAX
{
    // slink
    .field public class @SEARCH _slink

    // parameters
    .field public int8 A

    // local variables
    .field public bool _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2440
//================================================================================
// scope: SEARCH_SCOREM (level : 3)

.class @SEARCH_SCOREM
{
    // slink
    .field public class @SEARCH _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2467
//================================================================================
// scope: SEARCH_SELECT_SELDON (level : 4)

.class @SEARCH_SELECT_SELDON
{
    // slink
    .field public class @SEARCH_SELECT _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2482
//================================================================================
// scope: SEARCH_SELECT_SELMOV (level : 4)

.class @SEARCH_SELECT_SELMOV
{
    // slink
    .field public class @SEARCH_SELECT _slink

    // parameters
    .field public int16 A

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2501
//================================================================================
// scope: SEARCH_SELECT_SELNXT (level : 4)

.class @SEARCH_SELECT_SELNXT
{
    // slink
    .field public class @SEARCH_SELECT _slink

    // parameters
    .field public int32 A

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2513
//================================================================================
// scope: SEARCH_SELECT_SELANY (level : 4)

.class @SEARCH_SELECT_SELANY
{
    // slink
    .field public class @SEARCH_SELECT _slink

    // local variables
    .field public int16 INTW

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2453
//================================================================================
// scope: SEARCH_SELECT (level : 3)

.class @SEARCH_SELECT
{
    // slink
    .field public class @SEARCH _slink

    // local variables
    .field public bool _fnvalue
    .field public int16 IMTW
    .field public bool INTB
    .field public int8 INTK
    .field public int16 INTV
    .field public int16 INTW

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 2467

    .method public
    void SELDON()
    {
        .maxstack 32
    
        .locals init(class @SEARCH_SELECT_SELDON _F)
        
        newobj instance void @SEARCH_SELECT_SELDON::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @SEARCH_SELECT @SEARCH_SELECT_SELDON::_slink
    
    L_Entry:
        // line 2475
        ldloc _F
        ldfld class @SEARCH_SELECT @SEARCH_SELECT_SELDON::_slink
        ldc.i4 0 // (false)
        stfld bool @SEARCH_SELECT::INTB
        // line 2476
        ldsfld bool _G::SWTR
        brfalse L_if_end_1
        // line 2477
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr " SELECT"
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldsfld int8 _G::JNTK
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldstr " END."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
    L_if_end_1:
        // line 2478
        ldc.i4 1
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 2482

    .method public
    void SELMOV(int16 A)
    {
        .maxstack 32
    
        .locals init(class @SEARCH_SELECT_SELMOV _F)
        
        newobj instance void @SEARCH_SELECT_SELMOV::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @SEARCH_SELECT @SEARCH_SELECT_SELMOV::_slink
        
        ldloc _F
        ldarg A
        stfld int16 @SEARCH_SELECT_SELMOV::A
    
    L_Entry:
        // line 2489
        ldloc _F
        ldfld class @SEARCH_SELECT @SEARCH_SELECT_SELMOV::_slink
        ldc.i4 1 // (true)
        stfld bool @SEARCH_SELECT::INTB
        // line 2490
        ldsflda valuetype T_array_110 _G::INDEX
        ldsfld int8 _G::JNTK
        ldc.i4 1
        add
        call instance int16& T_array_110::ldadr(int32)
        ldloc _F
        ldfld int16 @SEARCH_SELECT_SELMOV::A
        stobj int16
        // line 2491
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @SEARCH_SELECT_SELMOV::A
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldc.i4 1 // (true)
        stfld bool T_RM::RMSU
        // line 2492
        ldsfld bool _G::SWTR
        brfalse L_if_end_1
        // line 2494
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr " SELECT"
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldsfld int8 _G::JNTK
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldsflda valuetype T_array_105 _G::SRCHM
        ldsfld int8 _G::JNTK
        call instance int32& T_array_105::ldadr(int32)
        ldobj int32
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldloc _F
        ldfld int16 @SEARCH_SELECT_SELMOV::A
        call instance void [lpcRuntime]LPC.File::Write(int32)
        pop
        // line 2495
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @SEARCH_SELECT_SELMOV::A
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldobj valuetype T_RM
        call void PRIMOV(valuetype T_RM A)
        /* nop */
    L_if_end_1:
        // line 2497
        ldc.i4 1
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 2501

    .method public
    void SELNXT(int32 A)
    {
        .maxstack 32
    
        .locals init(class @SEARCH_SELECT_SELNXT _F)
        
        newobj instance void @SEARCH_SELECT_SELNXT::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @SEARCH_SELECT @SEARCH_SELECT_SELNXT::_slink
        
        ldloc _F
        ldarg A
        stfld int32 @SEARCH_SELECT_SELNXT::A
    
    L_Entry:
        // line 2507
        ldsflda valuetype T_array_110 _G::INDEX
        ldsfld int8 _G::JNTK
        ldc.i4 1
        add
        call instance int16& T_array_110::ldadr(int32)
        ldsflda valuetype T_array_102 _G::LINDX
        ldsfld int8 _G::JNTK
        call instance int16& T_array_102::ldadr(int32)
        ldobj int16
        ldc.i4 1
        sub
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int16
        // line 2508
        ldsflda valuetype T_array_105 _G::SRCHM
        ldsfld int8 _G::JNTK
        call instance int32& T_array_105::ldadr(int32)
        ldloc _F
        ldfld int32 @SEARCH_SELECT_SELNXT::A
        stobj int32
        // line 2509
        ldc.i4 2
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 2513

    .method public
    void SELANY()
    {
        .maxstack 32
    
        .locals init(
            class @SEARCH_SELECT_SELANY _F,
            int16 $tmpEndValue1,
            int16 $tmpIndex2,
            int16 $tmpIndex3)
        
        newobj instance void @SEARCH_SELECT_SELANY::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @SEARCH_SELECT @SEARCH_SELECT_SELANY::_slink
    
    L_Entry:
        // line 2520
        ldsfld int16 _G::JNTW
        ldc.i4 1
        sub
        stloc $tmpEndValue1
        ldsflda valuetype T_array_110 _G::INDEX
        ldsfld int8 _G::JNTK
        ldc.i4 1
        add
        call instance int16& T_array_110::ldadr(int32)
        ldobj int16
        ldc.i4 1
        add
        dup
        ldloc $tmpEndValue1
        bgt L_for_end_2
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex2
        ldloc _F
        ldloc $tmpIndex2
        stfld int16 @SEARCH_SELECT_SELANY::INTW
    L_for_loop_1:
        // line 2521
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @SEARCH_SELECT_SELANY::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld bool T_RM::RMSU
        ldc.i4.0
        ceq
        brfalse L_if_end_3
        // line 2522
        ldloc _F
        ldfld class @SEARCH_SELECT @SEARCH_SELECT_SELANY::_slink
        ldloc _F
        ldfld int16 @SEARCH_SELECT_SELANY::INTW
        call instance void @SEARCH_SELECT::SELMOV(int16 A)
    L_if_end_3:
        ldloc _F
        ldfld int16 @SEARCH_SELECT_SELANY::INTW
        dup
        ldloc $tmpEndValue1
        beq L_for_end_2
        ldc.i4.1
        add
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex3
        ldloc _F
        ldloc $tmpIndex3
        stfld int16 @SEARCH_SELECT_SELANY::INTW
        br L_for_loop_1
    L_for_end_2:
        pop
        /* nop */
    
    L_Epilogue:
        ret
    }
}


// line 2382
//================================================================================
// scope: SEARCH (level : 2)

.class @SEARCH
{
    // local variables
    .field public int16 _fnvalue
    .field public bool Jumpin

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 2395

    .method public
    void NEWBST(int8 A)
    {
        .maxstack 32
    
        .locals init(
            class @SEARCH_NEWBST _F,
            int16 $tmpEndValue1,
            int16 $tmpIndex2,
            int16 $tmpIndex3)
        
        newobj instance void @SEARCH_NEWBST::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @SEARCH @SEARCH_NEWBST::_slink
        
        ldloc _F
        ldarg A
        stfld int8 @SEARCH_NEWBST::A
    
    L_Entry:
        // line 2403
        ldsflda valuetype T_array_102 _G::BSTMV
        ldloc _F
        ldfld int8 @SEARCH_NEWBST::A
        call instance int16& T_array_102::ldadr(int32)
        ldsflda valuetype T_array_110 _G::INDEX
        ldloc _F
        ldfld int8 @SEARCH_NEWBST::A
        ldc.i4 1
        add
        call instance int16& T_array_110::ldadr(int32)
        ldobj int16
        stobj int16
        // line 2404
        ldloc _F
        ldfld int8 @SEARCH_NEWBST::A
        ldc.i4 0
        ceq
        brfalse L_else_1
        // line 2406
        ldloc _F
        ldsflda valuetype T_RF _G::MOVES
        ldsflda valuetype T_array_102 _G::BSTMV
        ldloc _F
        ldfld int8 @SEARCH_NEWBST::A
        call instance int16& T_array_102::ldadr(int32)
        ldobj int16
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldobj valuetype T_RM
        stfld valuetype T_RM @SEARCH_NEWBST::INRM
        // line 2407
        ldc.i4 1
        ldc.i4 1
        add
        stloc $tmpEndValue1
        ldsflda valuetype T_array_102 _G::BSTMV
        ldloc _F
        ldfld int8 @SEARCH_NEWBST::A
        call instance int16& T_array_102::ldadr(int32)
        ldobj int16
        ldc.i4 1
        sub
        dup
        ldloc $tmpEndValue1
        blt L_for_end_4
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex2
        ldloc _F
        ldloc $tmpIndex2
        stfld int16 @SEARCH_NEWBST::INTW
    L_for_loop_3:
        // line 2408
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @SEARCH_NEWBST::INTW
        ldc.i4 1
        add
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @SEARCH_NEWBST::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldobj valuetype T_RM
        stobj valuetype T_RM
        ldloc _F
        ldfld int16 @SEARCH_NEWBST::INTW
        dup
        ldloc $tmpEndValue1
        beq L_for_end_4
        ldc.i4.1
        sub
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex3
        ldloc _F
        ldloc $tmpIndex3
        stfld int16 @SEARCH_NEWBST::INTW
        br L_for_loop_3
    L_for_end_4:
        pop
        // line 2409
        ldsflda valuetype T_RF _G::MOVES
        ldc.i4 1
        ldc.i4 1
        add
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldloc _F
        ldfld valuetype T_RM @SEARCH_NEWBST::INRM
        stobj valuetype T_RM
        // line 2410
        ldsflda valuetype T_array_102 _G::BSTMV
        ldc.i4 0
        call instance int16& T_array_102::ldadr(int32)
        ldc.i4 1
        ldc.i4 1
        add
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int16
        /* nop */
        br L_if_end_2
    L_else_1:
        // line 2413
        ldsflda valuetype T_RF _G::MOVES
        ldsflda valuetype T_array_102 _G::BSTMV
        ldloc _F
        ldfld int8 @SEARCH_NEWBST::A
        call instance int16& T_array_102::ldadr(int32)
        ldobj int16
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld bool T_RM::RMCA
        ldc.i4.0
        ceq
        brfalse L_if_end_5
        // line 2414
        ldsflda valuetype T_array_111 _G::KILLR
        ldsfld int8 _G::JNTK
        call instance valuetype T_RM& T_array_111::ldadr(int32)
        ldsflda valuetype T_RF _G::MOVES
        ldsflda valuetype T_array_102 _G::BSTMV
        ldloc _F
        ldfld int8 @SEARCH_NEWBST::A
        call instance int16& T_array_102::ldadr(int32)
        ldobj int16
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldobj valuetype T_RM
        stobj valuetype T_RM
    L_if_end_5:
    L_if_end_2:
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 2418

    .method public
    bool MINMAX(int8 A)
    {
        .maxstack 32
    
        .locals init(class @SEARCH_MINMAX _F)
        
        newobj instance void @SEARCH_MINMAX::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @SEARCH @SEARCH_MINMAX::_slink
        
        ldloc _F
        ldarg A
        stfld int8 @SEARCH_MINMAX::A
    
    L_Entry:
        // line 2423
        ldloc _F
        ldc.i4 0 // (false)
        stfld bool @SEARCH_MINMAX::_fnvalue
        // line 2424
        ldsfld bool _G::SWTR
        brfalse L_if_end_1
        // line 2425
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr " MINMAX"
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldloc _F
        ldfld int8 @SEARCH_MINMAX::A
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldsflda valuetype T_array_109 _G::BSTVL
        ldloc _F
        ldfld int8 @SEARCH_MINMAX::A
        ldc.i4 1
        sub
        call instance int16& T_array_109::ldadr(int32)
        ldobj int16
        neg
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldsflda valuetype T_array_109 _G::BSTVL
        ldloc _F
        ldfld int8 @SEARCH_MINMAX::A
        call instance int16& T_array_109::ldadr(int32)
        ldobj int16
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldsflda valuetype T_array_109 _G::BSTVL
        ldloc _F
        ldfld int8 @SEARCH_MINMAX::A
        ldc.i4 1
        add
        call instance int16& T_array_109::ldadr(int32)
        ldobj int16
        neg
        call instance void [lpcRuntime]LPC.File::Write(int32)
        pop
    L_if_end_1:
        // line 2426
        ldsflda valuetype T_array_109 _G::BSTVL
        ldloc _F
        ldfld int8 @SEARCH_MINMAX::A
        ldc.i4 1
        add
        call instance int16& T_array_109::ldadr(int32)
        ldobj int16
        neg
        ldsflda valuetype T_array_109 _G::BSTVL
        ldloc _F
        ldfld int8 @SEARCH_MINMAX::A
        call instance int16& T_array_109::ldadr(int32)
        ldobj int16
        cgt
        brfalse L_if_end_2
        // line 2428
        ldsflda valuetype T_array_109 _G::BSTVL
        ldloc _F
        ldfld int8 @SEARCH_MINMAX::A
        call instance int16& T_array_109::ldadr(int32)
        ldsflda valuetype T_array_109 _G::BSTVL
        ldloc _F
        ldfld int8 @SEARCH_MINMAX::A
        ldc.i4 1
        add
        call instance int16& T_array_109::ldadr(int32)
        ldobj int16
        neg
        stobj int16
        // line 2429
        ldloc _F
        ldfld class @SEARCH @SEARCH_MINMAX::_slink
        ldloc _F
        ldfld int8 @SEARCH_MINMAX::A
        call instance void @SEARCH::NEWBST(int8 A)
        // line 2430
        ldloc _F
        ldsflda valuetype T_array_109 _G::BSTVL
        ldloc _F
        ldfld int8 @SEARCH_MINMAX::A
        ldc.i4 1
        add
        call instance int16& T_array_109::ldadr(int32)
        ldobj int16
        ldsflda valuetype T_array_109 _G::BSTVL
        ldloc _F
        ldfld int8 @SEARCH_MINMAX::A
        ldc.i4 1
        sub
        call instance int16& T_array_109::ldadr(int32)
        ldobj int16
        cgt
        ldc.i4.0
        ceq
        stfld bool @SEARCH_MINMAX::_fnvalue
        // line 2432
        ldsfld bool _G::SWTR
        brfalse L_if_end_3
        // line 2433
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr " NEW BEST. PRUNE: "
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldsflda valuetype T_array_109 _G::BSTVL
        ldloc _F
        ldfld int8 @SEARCH_MINMAX::A
        ldc.i4 1
        add
        call instance int16& T_array_109::ldadr(int32)
        ldobj int16
        ldsflda valuetype T_array_109 _G::BSTVL
        ldloc _F
        ldfld int8 @SEARCH_MINMAX::A
        ldc.i4 1
        sub
        call instance int16& T_array_109::ldadr(int32)
        ldobj int16
        cgt
        ldc.i4.0
        ceq
        brtrue L_bool_to_string_true_4
        ldstr "false"
        br L_bool_to_string_false_5
    L_bool_to_string_true_4:
        ldstr "true"
    L_bool_to_string_false_5:
        call instance void [lpcRuntime]LPC.File::Write(string)
        pop
    L_if_end_3:
        /* nop */
    L_if_end_2:
        // line 2435
        ldsfld bool _G::SWTR
        brfalse L_if_end_6
        // line 2436
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
    L_if_end_6:
        /* nop */
    
    L_Epilogue:
        ldloc _F
        ldfld bool @SEARCH_MINMAX::_fnvalue
        ret
    }

// line 2440

    .method public
    void SCOREM()
    {
        .maxstack 32
    
        .locals init(class @SEARCH_SCOREM _F)
        
        newobj instance void @SEARCH_SCOREM::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @SEARCH @SEARCH_SCOREM::_slink
    
    L_Entry:
        // line 2443
        ldsflda valuetype T_RF _G::MOVES
        ldsflda valuetype T_array_110 _G::INDEX
        ldsfld int8 _G::JNTK
        call instance int16& T_array_110::ldadr(int32)
        ldobj int16
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldc.i4 1 // (true)
        stfld bool T_RM::RMMT
        // line 2444
        ldsflda valuetype T_RF _G::MOVES
        ldsflda valuetype T_array_110 _G::INDEX
        ldsfld int8 _G::JNTK
        call instance int16& T_array_110::ldadr(int32)
        ldobj int16
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld bool T_RM::RMCH
        brfalse L_else_1
        // line 2445
        ldsflda valuetype T_RE _G::VALUE
        ldsflda valuetype T_array_110 _G::INDEX
        ldsfld int8 _G::JNTK
        call instance int16& T_array_110::ldadr(int32)
        ldobj int16
        call instance int16& T_RE::ldadr(int32)
        ldc.i4 64
        ldsfld int8 _G::JNTK
        mul
        ldc.i4 32767
        sub
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int16
        br L_if_end_2
    L_else_1:
        // line 2447
        ldsflda valuetype T_RE _G::VALUE
        ldsflda valuetype T_array_110 _G::INDEX
        ldsfld int8 _G::JNTK
        call instance int16& T_array_110::ldadr(int32)
        ldobj int16
        call instance int16& T_RE::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int16
    L_if_end_2:
        // line 2448
        ldsfld bool _G::SWTR
        brfalse L_if_end_3
        // line 2449
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr " SCOREM"
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldsfld int8 _G::JNTK
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldsfld int16 _G::JNTW
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldsflda valuetype T_array_110 _G::INDEX
        ldsfld int8 _G::JNTK
        call instance int16& T_array_110::ldadr(int32)
        ldobj int16
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldsflda valuetype T_RE _G::VALUE
        ldsflda valuetype T_array_110 _G::INDEX
        ldsfld int8 _G::JNTK
        call instance int16& T_array_110::ldadr(int32)
        ldobj int16
        call instance int16& T_RE::ldadr(int32)
        ldobj int16
        call instance void [lpcRuntime]LPC.File::Write(int32)
        call instance void [lpcRuntime]LPC.File::WriteLn()
    L_if_end_3:
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 2453

    .method public
    bool SELECT()
    {
        .maxstack 32
    
        .locals init(
            class @SEARCH_SELECT _F,
            int32 $tmpSwitchValue1,
            int16 $tmpEndValue2,
            int16 $tmpIndex3,
            int16 $tmpIndex4,
            int8 $tmpEndValue5,
            int8 $tmpIndex6,
            int8 $tmpIndex7,
            int16 $tmpEndValue8,
            int16 $tmpIndex9,
            int16 $tmpIndex10,
            int16 $tmpEndValue11,
            int16 $tmpIndex12,
            int16 $tmpIndex13,
            int16 $tmpEndValue14,
            int16 $tmpIndex15,
            int16 $tmpIndex16,
            int16 $tmpEndValue17,
            int16 $tmpIndex18,
            int16 $tmpIndex19,
            int16 $tmpEndValue20,
            int16 $tmpIndex21,
            int16 $tmpIndex22)
        
        newobj instance void @SEARCH_SELECT::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @SEARCH @SEARCH_SELECT::_slink
    
    L_Entry:
    .try
    {
        // line 2528
    L_21:
        ldsflda valuetype T_array_105 _G::SRCHM
        ldsfld int8 _G::JNTK
        call instance int32& T_array_105::ldadr(int32)
        ldobj int32
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 0
        bne.un L_check_case_2
        // line 2532
        ldsflda valuetype T_array_105 _G::MVSEL
        ldsfld int8 _G::JNTK
        call instance int32& T_array_105::ldadr(int32)
        ldc.i4 0
        stobj int32
        // line 2533
        ldloc _F
        ldsflda valuetype T_array_109 _G::BSTVL
        ldsfld int8 _G::JNTK
        ldc.i4 2
        sub
        call instance int16& T_array_109::ldadr(int32)
        ldobj int16
        stfld int16 @SEARCH_SELECT::INTV
        // line 2534
        ldsflda valuetype T_array_109 _G::BSTVL
        ldsfld int8 _G::JNTK
        ldc.i4 2
        sub
        call instance int16& T_array_109::ldadr(int32)
        ldc.i4 32767
        neg
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int16
        // line 2535
        ldc.i4 0
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::MAXPS
        // line 2537
        call void GENALL()
        // line 2538
        ldsfld int16 _G::JNTW
        ldc.i4 1
        sub
        stloc $tmpEndValue2
        ldc.i4 1
        ldc.i4 1
        add
        dup
        ldloc $tmpEndValue2
        bgt L_for_end_4
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex3
        ldloc _F
        ldloc $tmpIndex3
        stfld int16 @SEARCH_SELECT::INTW
    L_for_loop_3:
        // line 2540
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        call bool UPDATE(valuetype T_RM& A)
        brfalse L_if_end_5
        // line 2542
        ldsflda valuetype T_array_110 _G::INDEX
        ldsfld int8 _G::JNTK
        call instance int16& T_array_110::ldadr(int32)
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTW
        stobj int16
        // line 2543
        call void EVALU8()
        /* nop */
    L_if_end_5:
        // line 2545
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldobj valuetype T_RM
        call void DNDATE(valuetype T_RM A)
        /* nop */
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTW
        dup
        ldloc $tmpEndValue2
        beq L_for_end_4
        ldc.i4.1
        add
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex4
        ldloc _F
        ldloc $tmpIndex4
        stfld int16 @SEARCH_SELECT::INTW
        br L_for_loop_3
    L_for_end_4:
        pop
        // line 2547
        ldsflda valuetype T_array_109 _G::BSTVL
        ldsfld int8 _G::JNTK
        ldc.i4 2
        sub
        call instance int16& T_array_109::ldadr(int32)
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTV
        stobj int16
        // line 2548
        ldsflda valuetype T_RE _G::VALUE
        ldsflda valuetype T_RF _G::MOVES
        ldsfld int16 _G::JNTW
        ldc.i4 1
        sub
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        call void SORTIT(valuetype T_RE& A, valuetype T_RF& B, int16 C)
        // line 2550
        ldc.i4 16
        stloc $tmpEndValue5
        ldc.i4 0
        dup
        ldloc $tmpEndValue5
        bgt L_for_end_7
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex6
        ldloc _F
        ldloc $tmpIndex6
        stfld int8 @SEARCH_SELECT::INTK
    L_for_loop_6:
        // line 2551
        ldsflda valuetype T_array_111 _G::KILLR
        ldloc _F
        ldfld int8 @SEARCH_SELECT::INTK
        call instance valuetype T_RM& T_array_111::ldadr(int32)
        ldsfld valuetype T_RM _G::NULMV
        stobj valuetype T_RM
        ldloc _F
        ldfld int8 @SEARCH_SELECT::INTK
        dup
        ldloc $tmpEndValue5
        beq L_for_end_7
        ldc.i4.1
        add
        dup
        ldc.i4 0
        ldc.i4 16
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex7
        ldloc _F
        ldloc $tmpIndex7
        stfld int8 @SEARCH_SELECT::INTK
        br L_for_loop_6
    L_for_end_7:
        pop
        // line 2552
        ldsfld bool _G::SWTR
        dup
        brtrue L_OR_shortcut_8
        pop
        ldsfld bool _G::SWPS
    L_OR_shortcut_8:
        brfalse L_if_end_9
        // line 2553
        ldsfld int16 _G::JNTW
        ldc.i4 1
        sub
        stloc $tmpEndValue8
        ldc.i4 1
        ldc.i4 1
        add
        dup
        ldloc $tmpEndValue8
        bgt L_for_end_11
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex9
        ldloc _F
        ldloc $tmpIndex9
        stfld int16 @SEARCH_SELECT::INTW
    L_for_loop_10:
        // line 2555
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr " PRELIM"
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTW
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldsflda valuetype T_RE _G::VALUE
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTW
        call instance int16& T_RE::ldadr(int32)
        ldobj int16
        call instance void [lpcRuntime]LPC.File::Write(int32)
        pop
        // line 2556
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldobj valuetype T_RM
        call void PRIMOV(valuetype T_RM A)
        // line 2557
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTW
        conv.r8
        ldc.i4 20
        conv.r8
        div
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTW
        ldc.i4 20
        div
        conv.r8
        ceq
        brfalse L_if_end_12
        // line 2558
        call void PAUSER()
    L_if_end_12:
        /* nop */
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTW
        dup
        ldloc $tmpEndValue8
        beq L_for_end_11
        ldc.i4.1
        add
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex10
        ldloc _F
        ldloc $tmpIndex10
        stfld int16 @SEARCH_SELECT::INTW
        br L_for_loop_10
    L_for_end_11:
        pop
    L_if_end_9:
        // line 2560
        ldloc _F
        ldc.i4 6
        call instance void @SEARCH_SELECT::SELNXT(int32 A)
        /* nop */
        br L_case_end_1
    L_check_case_2:
        ldloc $tmpSwitchValue1
        ldc.i4 1
        bne.un L_check_case_13
        // line 2565
        ldsflda valuetype T_array_105 _G::MVSEL
        ldsfld int8 _G::JNTK
        call instance int32& T_array_105::ldadr(int32)
        ldc.i4 0
        stobj int32
        // line 2566
        ldsfld int8 _G::JNTK
        ldsfld int8 _G::JMTK
        cgt
        brfalse L_else_14
        // line 2568
        call void EVALU8()
        // line 2569
        ldsflda valuetype T_array_110 _G::INDEX
        ldsfld int8 _G::JNTK
        ldc.i4 1
        add
        call instance int16& T_array_110::ldadr(int32)
        ldc.i4 1
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int16
        // line 2570
        ldsflda valuetype T_array_109 _G::BSTVL
        ldsfld int8 _G::JNTK
        ldc.i4 1
        add
        call instance int16& T_array_109::ldadr(int32)
        ldsflda valuetype T_RE _G::VALUE
        ldsflda valuetype T_array_110 _G::INDEX
        ldsfld int8 _G::JNTK
        call instance int16& T_array_110::ldadr(int32)
        ldobj int16
        call instance int16& T_RE::ldadr(int32)
        ldobj int16
        neg
        stobj int16
        // line 2571
        ldloc _F
        ldfld class @SEARCH @SEARCH_SELECT::_slink
        ldsfld int8 _G::JNTK
        call instance bool @SEARCH::MINMAX(int8 A)
        dup
        brtrue L_OR_shortcut_16
        pop
        ldsfld int8 _G::JNTK
        ldc.i4 16
        ceq
    L_OR_shortcut_16:
        brfalse L_if_end_17
        // line 2572
        ldloc _F
        call instance void @SEARCH_SELECT::SELDON()
    L_if_end_17:
        // line 2573
        ldsflda valuetype T_array_105 _G::SRCHM
        ldsfld int8 _G::JNTK
        call instance int32& T_array_105::ldadr(int32)
        ldc.i4 2
        stobj int32
        /* nop */
        br L_if_end_15
    L_else_14:
        // line 2576
        ldsflda valuetype T_array_105 _G::SRCHM
        ldsfld int8 _G::JNTK
        call instance int32& T_array_105::ldadr(int32)
        ldc.i4 3
        stobj int32
    L_if_end_15:
        // line 2577
        call void GENCAP()
        // line 2578
        ldloc _F
        ldsflda valuetype T_array_105 _G::SRCHM
        ldsfld int8 _G::JNTK
        call instance int32& T_array_105::ldadr(int32)
        ldobj int32
        call instance void @SEARCH_SELECT::SELNXT(int32 A)
        /* nop */
        br L_case_end_1
    L_check_case_13:
        ldloc $tmpSwitchValue1
        ldc.i4 2
        bne.un L_check_case_18
        // line 2583
        ldloc _F
        ldc.i4 1
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @SEARCH_SELECT::INTW
        // line 2584
        ldloc _F
        ldc.i4 -32767
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @SEARCH_SELECT::INTV
        // line 2585
        ldsfld int16 _G::JNTW
        ldc.i4 1
        sub
        stloc $tmpEndValue11
        ldsflda valuetype T_array_102 _G::LINDX
        ldsfld int8 _G::JNTK
        call instance int16& T_array_102::ldadr(int32)
        ldobj int16
        dup
        ldloc $tmpEndValue11
        bgt L_for_end_20
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex12
        ldloc _F
        ldloc $tmpIndex12
        stfld int16 @SEARCH_SELECT::IMTW
    L_for_loop_19:
        // line 2587
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @SEARCH_SELECT::IMTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld bool T_RM::RMSU
        ldc.i4.0
        ceq
        brfalse L_if_end_21
        // line 2588
        ldsflda valuetype T_array_17 _G::XTPV
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @SEARCH_SELECT::IMTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld int32 T_RM::RMCP
        call instance int16& T_array_17::ldadr(int32)
        ldobj int16
        dup
        ldc.i4 0
        bge L_abs_question_22
        neg
    L_abs_question_22:
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTV
        cgt
        brfalse L_if_end_23
        // line 2590
        ldloc _F
        ldsflda valuetype T_array_17 _G::XTPV
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @SEARCH_SELECT::IMTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld int32 T_RM::RMCP
        call instance int16& T_array_17::ldadr(int32)
        ldobj int16
        dup
        ldc.i4 0
        bge L_abs_question_24
        neg
    L_abs_question_24:
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @SEARCH_SELECT::INTV
        // line 2591
        ldloc _F
        ldloc _F
        ldfld int16 @SEARCH_SELECT::IMTW
        stfld int16 @SEARCH_SELECT::INTW
        /* nop */
    L_if_end_23:
    L_if_end_21:
        ldloc _F
        ldfld int16 @SEARCH_SELECT::IMTW
        dup
        ldloc $tmpEndValue11
        beq L_for_end_20
        ldc.i4.1
        add
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex13
        ldloc _F
        ldloc $tmpIndex13
        stfld int16 @SEARCH_SELECT::IMTW
        br L_for_loop_19
    L_for_end_20:
        pop
        // line 2593
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTW
        ldc.i4 1
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_25
        // line 2594
        ldloc _F
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTW
        call instance void @SEARCH_SELECT::SELMOV(int16 A)
        br L_if_end_26
    L_else_25:
        // line 2596
        ldloc _F
        call instance void @SEARCH_SELECT::SELDON()
    L_if_end_26:
        /* nop */
        br L_case_end_1
    L_check_case_18:
        ldloc $tmpSwitchValue1
        ldc.i4 3
        bne.un L_check_case_27
        // line 2601
        ldloc _F
        ldc.i4 1
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @SEARCH_SELECT::INTW
        // line 2602
        ldloc _F
        ldc.i4 -32767
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @SEARCH_SELECT::INTV
        // line 2603
        ldsfld int16 _G::JNTW
        ldc.i4 1
        sub
        stloc $tmpEndValue14
        ldsflda valuetype T_array_102 _G::LINDX
        ldsfld int8 _G::JNTK
        call instance int16& T_array_102::ldadr(int32)
        ldobj int16
        dup
        ldloc $tmpEndValue14
        bgt L_for_end_29
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex15
        ldloc _F
        ldloc $tmpIndex15
        stfld int16 @SEARCH_SELECT::IMTW
    L_for_loop_28:
        // line 2605
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @SEARCH_SELECT::IMTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld bool T_RM::RMSU
        ldc.i4.0
        ceq
        brfalse L_if_end_30
        // line 2606
        ldsflda valuetype T_array_17 _G::XTPV
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @SEARCH_SELECT::IMTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld int32 T_RM::RMCP
        call instance int16& T_array_17::ldadr(int32)
        ldobj int16
        dup
        ldc.i4 0
        bge L_abs_question_31
        neg
    L_abs_question_31:
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTV
        cgt
        brfalse L_if_end_32
        // line 2608
        ldloc _F
        ldsflda valuetype T_array_17 _G::XTPV
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @SEARCH_SELECT::IMTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld int32 T_RM::RMCP
        call instance int16& T_array_17::ldadr(int32)
        ldobj int16
        dup
        ldc.i4 0
        bge L_abs_question_33
        neg
    L_abs_question_33:
        dup
        ldc.i4 -32767
        ldc.i4 32767
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @SEARCH_SELECT::INTV
        // line 2609
        ldloc _F
        ldloc _F
        ldfld int16 @SEARCH_SELECT::IMTW
        stfld int16 @SEARCH_SELECT::INTW
        /* nop */
    L_if_end_32:
    L_if_end_30:
        ldloc _F
        ldfld int16 @SEARCH_SELECT::IMTW
        dup
        ldloc $tmpEndValue14
        beq L_for_end_29
        ldc.i4.1
        add
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex16
        ldloc _F
        ldloc $tmpIndex16
        stfld int16 @SEARCH_SELECT::IMTW
        br L_for_loop_28
    L_for_end_29:
        pop
        // line 2611
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTW
        ldc.i4 1
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_34
        // line 2612
        ldloc _F
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTW
        call instance void @SEARCH_SELECT::SELMOV(int16 A)
        br L_if_end_35
    L_else_34:
        // line 2614
        ldsflda valuetype T_array_111 _G::KILLR
        ldsfld int8 _G::JNTK
        call instance valuetype T_RM& T_array_111::ldadr(int32)
        ldobj valuetype T_RM
        call bool NULMVB(valuetype T_RM A)
        ldc.i4.0
        ceq
        brfalse L_if_end_36
        // line 2616
        ldloc _F
        ldsfld int16 _G::JNTW
        stfld int16 @SEARCH_SELECT::IMTW
        // line 2617
        ldsflda valuetype T_RX _G::XRSS
        ldsflda valuetype T_array_111 _G::KILLR
        ldsfld int8 _G::JNTK
        call instance valuetype T_RM& T_array_111::ldadr(int32)
        ldfld int8 T_RM::RMFR
        call instance valuetype T_RS& T_RX::ldadr(int32)
        ldobj valuetype T_RS
        call void GENFSL(valuetype T_RS A)
        // line 2619
        ldsflda valuetype T_array_105 _G::SRCHM
        ldsfld int8 _G::JNTK
        call instance int32& T_array_105::ldadr(int32)
        ldc.i4 4
        stobj int32
        // line 2620
        ldsfld int16 _G::JNTW
        ldc.i4 1
        sub
        stloc $tmpEndValue17
        ldloc _F
        ldfld int16 @SEARCH_SELECT::IMTW
        dup
        ldloc $tmpEndValue17
        bgt L_for_end_38
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex18
        ldloc _F
        ldloc $tmpIndex18
        stfld int16 @SEARCH_SELECT::INTW
    L_for_loop_37:
        // line 2622
        ldsflda valuetype T_array_111 _G::KILLR
        ldsfld int8 _G::JNTK
        call instance valuetype T_RM& T_array_111::ldadr(int32)
        ldfld int8 T_RM::RMTO
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld int8 T_RM::RMTO
        ceq
        brfalse L_if_end_39
        // line 2623
        ldloc _F
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTW
        call instance void @SEARCH_SELECT::SELMOV(int16 A)
    L_if_end_39:
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTW
        dup
        ldloc $tmpEndValue17
        beq L_for_end_38
        ldc.i4.1
        add
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex19
        ldloc _F
        ldloc $tmpIndex19
        stfld int16 @SEARCH_SELECT::INTW
        br L_for_loop_37
    L_for_end_38:
        pop
        /* nop */
    L_if_end_36:
    L_if_end_35:
        // line 2625
        ldloc _F
        ldc.i4 4
        call instance void @SEARCH_SELECT::SELNXT(int32 A)
        /* nop */
        br L_case_end_1
    L_check_case_27:
        ldloc $tmpSwitchValue1
        ldc.i4 4
        bne.un L_check_case_40
        // line 2631
        call void GENCAS()
        // line 2632
        ldloc _F
        ldc.i4 5
        call instance void @SEARCH_SELECT::SELNXT(int32 A)
        /* nop */
        br L_case_end_1
    L_check_case_40:
        ldloc $tmpSwitchValue1
        ldc.i4 5
        bne.un L_check_case_41
        // line 2638
        ldloc _F
        call instance void @SEARCH_SELECT::SELANY()
        // line 2639
        ldsflda valuetype T_arraytkofrs _G::ALLOC
        ldsfld int8 _G::JNTK
        call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
        ldobj valuetype T_RS
        call void GENFSL(valuetype T_RS A)
        // line 2640
        ldloc _F
        ldc.i4 6
        call instance void @SEARCH_SELECT::SELNXT(int32 A)
        /* nop */
        br L_case_end_1
    L_check_case_41:
        ldloc $tmpSwitchValue1
        ldc.i4 6
        bne.un L_check_case_42
        // line 2645
        ldloc _F
        call instance void @SEARCH_SELECT::SELANY()
        // line 2646
        ldsflda valuetype T_array_105 _G::MVSEL
        ldsfld int8 _G::JNTK
        call instance int32& T_array_105::ldadr(int32)
        ldobj int32
        ldc.i4 0
        ceq
        brfalse L_if_end_43
        // line 2647
        ldloc _F
        ldfld class @SEARCH @SEARCH_SELECT::_slink
        call instance void @SEARCH::SCOREM()
    L_if_end_43:
        // line 2648
        ldloc _F
        call instance void @SEARCH_SELECT::SELDON()
        /* nop */
        br L_case_end_1
    L_check_case_42:
        ldloc $tmpSwitchValue1
        ldc.i4 7
        bne.un L_case_end_1
        // line 2653
        ldsflda valuetype T_array_102 _G::LINDX
        ldc.i4 0
        ldc.i4 1
        add
        call instance int16& T_array_102::ldadr(int32)
        ldobj int16
        stsfld int16 _G::JNTW
        // line 2654
        ldsflda valuetype T_array_105 _G::MVSEL
        ldc.i4 0
        call instance int32& T_array_105::ldadr(int32)
        ldc.i4 0
        stobj int32
        // line 2655
        ldsfld int16 _G::JNTW
        ldc.i4 1
        sub
        stloc $tmpEndValue20
        ldc.i4 1
        ldc.i4 1
        add
        dup
        ldloc $tmpEndValue20
        bgt L_for_end_45
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex21
        ldloc _F
        ldloc $tmpIndex21
        stfld int16 @SEARCH_SELECT::INTW
    L_for_loop_44:
        // line 2656
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldc.i4 0 // (false)
        stfld bool T_RM::RMSU
        ldloc _F
        ldfld int16 @SEARCH_SELECT::INTW
        dup
        ldloc $tmpEndValue20
        beq L_for_end_45
        ldc.i4.1
        add
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex22
        ldloc _F
        ldloc $tmpIndex22
        stfld int16 @SEARCH_SELECT::INTW
        br L_for_loop_44
    L_for_end_45:
        pop
        // line 2658
        ldsfld bool _G::SWTR
        brfalse L_if_end_46
        // line 2659
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr " REDO "
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldsfld int8 _G::JNTK
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldsflda valuetype T_array_109 _G::BSTVL
        ldc.i4 0
        ldc.i4 2
        sub
        call instance int16& T_array_109::ldadr(int32)
        ldobj int16
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldsflda valuetype T_array_109 _G::BSTVL
        ldc.i4 0
        ldc.i4 1
        sub
        call instance int16& T_array_109::ldadr(int32)
        ldobj int16
        call instance void [lpcRuntime]LPC.File::Write(int32)
        call instance void [lpcRuntime]LPC.File::WriteLn()
    L_if_end_46:
        // line 2660
        ldloc _F
        ldc.i4 6
        call instance void @SEARCH_SELECT::SELNXT(int32 A)
        /* nop */
    L_case_end_1:
        // line 2665
    L_22:
        ldloc _F
        ldloc _F
        ldfld bool @SEARCH_SELECT::INTB
        stfld bool @SEARCH_SELECT::_fnvalue
        /* nop */
        leave L_Epilogue
    }
    catch [lpcRuntime]LPC.NonLocalGoto
    {
        ldfld int32 [lpcRuntime]LPC.NonLocalGoto::label
        dup
        ldc.i4 2
        beq GOTO_L_21
        dup
        ldc.i4 1
        beq GOTO_L_22
        rethrow
    GOTO_L_21:
        leave L_21
    GOTO_L_22:
        leave L_22
    }
    
    L_Epilogue:
        ldloc _F
        ldfld bool @SEARCH_SELECT::_fnvalue
        ret
    }
}


// line 2757
//================================================================================
// scope: READER_RDRERR (level : 3)

.class @READER_RDRERR
{
    // slink
    .field public class @READER _slink

    // parameters
    .field public valuetype T_array_99 A

    // local variables
    .field public int8 INTJ
    .field public int8 INTN

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2782
//================================================================================
// scope: READER_RDRGNT (level : 3)

.class @READER_RDRGNT
{
    // slink
    .field public class @READER _slink

    // parameters
    .field public valuetype T_RA* A

    // local variables
    .field public bool _fnvalue
    .field public int8 INTJ

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2812
//================================================================================
// scope: READER_RDRSFT (level : 3)

.class @READER_RDRSFT
{
    // slink
    .field public class @READER _slink

    // local variables
    .field public valuetype T_RA INRA
    .field public bool INTB

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2825
//================================================================================
// scope: READER_RDRCMD (level : 3)

// line 0xfeefee

// TYPE subroutine_115 = procedure^;
.class sealed T_READER_subroutine_115 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

.class @READER_RDRCMD
{
    // slink
    .field public class @READER _slink

    // parameters
    .field public valuetype T_RA A
    .field public class T_READER_subroutine_115 XXXCMD

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2840
//================================================================================
// scope: READER_RDLINE (level : 3)

.class @READER_RDLINE
{
    // slink
    .field public class @READER _slink

    // local variables
    .field public uint8 INTC
    .field public int8 INTJ

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2867
//================================================================================
// scope: READER_RDRMOV (level : 3)

.class @READER_RDRMOV
{
    // slink
    .field public class @READER _slink

    // local variables
    .field public bool _fnvalue
    .field public int8 IMTJ

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2898
//================================================================================
// scope: READER_RDRNUM (level : 3)

.class @READER_RDRNUM
{
    // slink
    .field public class @READER _slink

    // local variables
    .field public int32 _fnvalue
    .field public bool INTB
    .field public int32 INTI

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2946
//================================================================================
// scope: READER_BOACMD_BOAADV (level : 4)

.class @READER_BOACMD_BOAADV
{
    // slink
    .field public class @READER_BOACMD _slink

    // parameters
    .field public int32 A

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2956
//================================================================================
// scope: READER_BOACMD_BOASTO (level : 4)

.class @READER_BOACMD_BOASTO
{
    // slink
    .field public class @READER_BOACMD _slink

    // parameters
    .field public int32 A

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2938
//================================================================================
// scope: READER_BOACMD (level : 3)

.class @READER_BOACMD
{
    // slink
    .field public class @READER _slink

    // local variables
    .field public int32 INTM
    .field public int8 INTS
    .field public int8 INTS1

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 2946

    .method public
    void BOAADV(int32 A)
    {
        .maxstack 32
    
        .locals init(class @READER_BOACMD_BOAADV _F)
        
        newobj instance void @READER_BOACMD_BOAADV::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER_BOACMD @READER_BOACMD_BOAADV::_slink
        
        ldloc _F
        ldarg A
        stfld int32 @READER_BOACMD_BOAADV::A
    
    L_Entry:
        // line 2949
        ldloc _F
        ldfld class @READER_BOACMD @READER_BOACMD_BOAADV::_slink
        ldfld int8 @READER_BOACMD::INTS
        ldloc _F
        ldfld int32 @READER_BOACMD_BOAADV::A
        add
        ldc.i4 63
        clt
        brfalse L_else_1
        // line 2950
        ldloc _F
        ldfld class @READER_BOACMD @READER_BOACMD_BOAADV::_slink
        ldloc _F
        ldfld class @READER_BOACMD @READER_BOACMD_BOAADV::_slink
        ldfld int8 @READER_BOACMD::INTS
        ldloc _F
        ldfld int32 @READER_BOACMD_BOAADV::A
        add
        dup
        ldc.i4 0
        ldc.i4 63
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 @READER_BOACMD::INTS
        br L_if_end_2
    L_else_1:
        // line 2952
        ldloc _F
        ldfld class @READER_BOACMD @READER_BOACMD_BOAADV::_slink
        ldc.i4 63
        dup
        ldc.i4 0
        ldc.i4 63
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 @READER_BOACMD::INTS
    L_if_end_2:
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 2956

    .method public
    void BOASTO(int32 A)
    {
        .maxstack 32
    
        .locals init(class @READER_BOACMD_BOASTO _F)
        
        newobj instance void @READER_BOACMD_BOASTO::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER_BOACMD @READER_BOACMD_BOASTO::_slink
        
        ldloc _F
        ldarg A
        stfld int32 @READER_BOACMD_BOASTO::A
    
    L_Entry:
        // line 2959
        ldsflda valuetype T_RB _G::BOARD
        ldflda valuetype T_array_38 T_RB::RBIS
        ldloc _F
        ldfld class @READER_BOACMD @READER_BOACMD_BOASTO::_slink
        ldfld int8 @READER_BOACMD::INTS
        call instance int32& T_array_38::ldadr(int32)
        ldloc _F
        ldfld int32 @READER_BOACMD_BOASTO::A
        stobj int32
        // line 2960
        ldloc _F
        ldfld class @READER_BOACMD @READER_BOACMD_BOASTO::_slink
        ldfld int8 @READER_BOACMD::INTS
        ldc.i4 63
        clt
        brfalse L_if_end_1
        // line 2960
        ldloc _F
        ldfld class @READER_BOACMD @READER_BOACMD_BOASTO::_slink
        ldloc _F
        ldfld class @READER_BOACMD @READER_BOACMD_BOASTO::_slink
        ldfld int8 @READER_BOACMD::INTS
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 63
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 @READER_BOACMD::INTS
    L_if_end_1:
        /* nop */
    
    L_Epilogue:
        ret
    }
}


// line 2996
//================================================================================
// scope: READER_ENDCMD (level : 3)

.class @READER_ENDCMD
{
    // slink
    .field public class @READER _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3003
//================================================================================
// scope: READER_GONCMD (level : 3)

.class @READER_GONCMD
{
    // slink
    .field public class @READER _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3015
//================================================================================
// scope: READER_INICMD (level : 3)

.class @READER_INICMD
{
    // slink
    .field public class @READER _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3027
//================================================================================
// scope: READER_LETCMD_LETONE (level : 4)

.class @READER_LETCMD_LETONE
{
    // slink
    .field public class @READER_LETCMD _slink

    // parameters
    .field public valuetype T_RA A
    .field public int32* B

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3022
//================================================================================
// scope: READER_LETCMD (level : 3)

.class @READER_LETCMD
{
    // slink
    .field public class @READER _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 3027

    .method public
    void LETONE(valuetype T_RA A, int32& B)
    {
        .maxstack 32
    
        .locals init(class @READER_LETCMD_LETONE _F,
            int32& pinned $B)
        
        newobj instance void @READER_LETCMD_LETONE::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER_LETCMD @READER_LETCMD_LETONE::_slink
        
        ldloc _F
        ldarg A
        stfld valuetype T_RA @READER_LETCMD_LETONE::A
        
        ldarg B
        stloc $B
        
        ldloc _F
        ldarg B
        stfld int32* @READER_LETCMD_LETONE::B
    
    L_Entry:
        // line 3032
        ldloc _F
        ldfld valuetype T_RA @READER_LETCMD_LETONE::A
        call string T_RA::arrayToString(valuetype T_RA)
        ldloc _F
        ldfld class @READER_LETCMD @READER_LETCMD_LETONE::_slink
        ldfld class @READER @READER_LETCMD::_slink
        ldfld valuetype T_RA @READER::INRA
        call string T_RA::arrayToString(valuetype T_RA)
        call bool [lpcRuntime]LPC.Helpers::StrcmpEQ(string, string)
        brfalse L_if_end_1
        // line 3034
        ldloc _F
        ldfld int32* @READER_LETCMD_LETONE::B
        ldloc _F
        ldfld class @READER_LETCMD @READER_LETCMD_LETONE::_slink
        ldfld class @READER @READER_LETCMD::_slink
        call instance int32 @READER::RDRNUM()
        stobj int32
        // line 3035
        ldc.i4 7
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        /* nop */
    L_if_end_1:
        /* nop */
    
    L_Epilogue:
        ret
    }
}


// line 3081
//================================================================================
// scope: READER_PLECMD_PRIONE (level : 4)

.class @READER_PLECMD_PRIONE
{
    // slink
    .field public class @READER_PLECMD _slink

    // parameters
    .field public valuetype T_RA A
    .field public int32 B

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3076
//================================================================================
// scope: READER_PLECMD (level : 3)

.class @READER_PLECMD
{
    // slink
    .field public class @READER _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 3081

    .method public
    void PRIONE(valuetype T_RA A, int32 B)
    {
        .maxstack 32
    
        .locals init(class @READER_PLECMD_PRIONE _F)
        
        newobj instance void @READER_PLECMD_PRIONE::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER_PLECMD @READER_PLECMD_PRIONE::_slink
        
        ldloc _F
        ldarg A
        stfld valuetype T_RA @READER_PLECMD_PRIONE::A
        
        ldloc _F
        ldarg B
        stfld int32 @READER_PLECMD_PRIONE::B
    
    L_Entry:
        // line 3086
        ldloc _F
        ldfld class @READER_PLECMD @READER_PLECMD_PRIONE::_slink
        ldfld class @READER @READER_PLECMD::_slink
        ldfld valuetype T_RA @READER::INRA
        call string T_RA::arrayToString(valuetype T_RA)
        ldloc _F
        ldfld valuetype T_RA @READER_PLECMD_PRIONE::A
        call string T_RA::arrayToString(valuetype T_RA)
        call bool [lpcRuntime]LPC.Helpers::StrcmpEQ(string, string)
        brfalse L_if_end_1
        // line 3088
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldloc _F
        ldfld valuetype T_RA @READER_PLECMD_PRIONE::A
        call string T_RA::arrayToString(valuetype T_RA)
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldloc _F
        ldfld int32 @READER_PLECMD_PRIONE::B
        call instance void [lpcRuntime]LPC.File::Write(int32)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        // line 3089
        ldc.i4 8
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        /* nop */
    L_if_end_1:
        /* nop */
    
    L_Epilogue:
        ret
    }
}


// line 3131
//================================================================================
// scope: READER_PRICMD (level : 3)

.class @READER_PRICMD
{
    // slink
    .field public class @READER _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3141
//================================================================================
// scope: READER_PAMCMD (level : 3)

.class @READER_PAMCMD
{
    // slink
    .field public class @READER _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3155
//================================================================================
// scope: READER_POPCMD (level : 3)

.class @READER_POPCMD
{
    // slink
    .field public class @READER _slink

    // local variables
    .field public int32 INTQ

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3173
//================================================================================
// scope: READER_PMVCMD (level : 3)

.class @READER_PMVCMD
{
    // slink
    .field public class @READER _slink

    // local variables
    .field public int16 INTW

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3195
//================================================================================
// scope: READER_SWICMD_SWIONE (level : 4)

.class @READER_SWICMD_SWIONE
{
    // slink
    .field public class @READER_SWICMD _slink

    // parameters
    .field public valuetype T_RA A
    .field public bool* B

    // local variables
    .field public int8 IMTJ

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3190
//================================================================================
// scope: READER_SWICMD (level : 3)

.class @READER_SWICMD
{
    // slink
    .field public class @READER _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 3195

    .method public
    void SWIONE(valuetype T_RA A, bool& B)
    {
        .maxstack 32
    
        .locals init(class @READER_SWICMD_SWIONE _F,
            bool& pinned $B)
        
        newobj instance void @READER_SWICMD_SWIONE::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER_SWICMD @READER_SWICMD_SWIONE::_slink
        
        ldloc _F
        ldarg A
        stfld valuetype T_RA @READER_SWICMD_SWIONE::A
        
        ldarg B
        stloc $B
        
        ldloc _F
        ldarg B
        stfld bool* @READER_SWICMD_SWIONE::B
    
    L_Entry:
        // line 3203
        ldloc _F
        ldfld class @READER_SWICMD @READER_SWICMD_SWIONE::_slink
        ldfld class @READER @READER_SWICMD::_slink
        ldfld valuetype T_RA @READER::INRA
        call string T_RA::arrayToString(valuetype T_RA)
        ldloc _F
        ldfld valuetype T_RA @READER_SWICMD_SWIONE::A
        call string T_RA::arrayToString(valuetype T_RA)
        call bool [lpcRuntime]LPC.Helpers::StrcmpEQ(string, string)
        brfalse L_if_end_1
        // line 3205
        ldloc _F
        ldsfld int8 _G::JNTJ
        stfld int8 @READER_SWICMD_SWIONE::IMTJ
        // line 3206
        ldloc _F
        ldfld class @READER_SWICMD @READER_SWICMD_SWIONE::_slink
        ldfld class @READER @READER_SWICMD::_slink
        ldloc _F
        ldfld class @READER_SWICMD @READER_SWICMD_SWIONE::_slink
        ldfld class @READER @READER_SWICMD::_slink
        ldflda valuetype T_RA @READER::INRA
        call instance bool @READER::RDRGNT(valuetype T_RA& A)
        brfalse L_else_2
        // line 3208
        ldloc _F
        ldfld class @READER_SWICMD @READER_SWICMD_SWIONE::_slink
        ldfld class @READER @READER_SWICMD::_slink
        ldfld valuetype T_RA @READER::INRA
        call string T_RA::arrayToString(valuetype T_RA)
        ldstr "ON        "
        call bool [lpcRuntime]LPC.Helpers::StrcmpEQ(string, string)
        brfalse L_else_4
        // line 3209
        ldloc _F
        ldfld bool* @READER_SWICMD_SWIONE::B
        ldc.i4 1 // (true)
        stobj bool
        br L_if_end_5
    L_else_4:
        // line 3211
        ldloc _F
        ldfld class @READER_SWICMD @READER_SWICMD_SWIONE::_slink
        ldfld class @READER @READER_SWICMD::_slink
        ldfld valuetype T_RA @READER::INRA
        call string T_RA::arrayToString(valuetype T_RA)
        ldstr "OFF       "
        call bool [lpcRuntime]LPC.Helpers::StrcmpEQ(string, string)
        brfalse L_else_6
        // line 3212
        ldloc _F
        ldfld bool* @READER_SWICMD_SWIONE::B
        ldc.i4 0 // (false)
        stobj bool
        br L_if_end_7
    L_else_6:
        // line 3214
        ldloc _F
        ldfld int8 @READER_SWICMD_SWIONE::IMTJ
        stsfld int8 _G::JNTJ
    L_if_end_7:
    L_if_end_5:
        // line 3215
        ldloc _F
        ldfld valuetype T_RA @READER_SWICMD_SWIONE::A
        ldloc _F
        ldfld bool* @READER_SWICMD_SWIONE::B
        ldobj bool
        call void PRISWI(valuetype T_RA A, bool B)
        /* nop */
        br L_if_end_3
    L_else_2:
        // line 3219
        ldloc _F
        ldfld valuetype T_RA @READER_SWICMD_SWIONE::A
        ldloc _F
        ldfld bool* @READER_SWICMD_SWIONE::B
        ldobj bool
        call void PRISWI(valuetype T_RA A, bool B)
        /* nop */
    L_if_end_3:
        // line 3221
        ldc.i4 9
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        /* nop */
    L_if_end_1:
        /* nop */
    
    L_Epilogue:
        ret
    }
}


// line 3250
//================================================================================
// scope: READER_STACMD_STAEPF (level : 4)

.class @READER_STACMD_STAEPF
{
    // slink
    .field public class @READER_STACMD _slink

    // parameters
    .field public valuetype T_RA A
    .field public int32 B

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3266
//================================================================================
// scope: READER_STACMD_STACAK (level : 4)

.class @READER_STACMD_STACAK
{
    // slink
    .field public class @READER_STACMD _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3276
//================================================================================
// scope: READER_STACMD_STACAQ (level : 4)

.class @READER_STACMD_STACAQ
{
    // slink
    .field public class @READER_STACMD _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3286
//================================================================================
// scope: READER_STACMD_STADRK (level : 4)

.class @READER_STACMD_STADRK
{
    // slink
    .field public class @READER_STACMD _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3293
//================================================================================
// scope: READER_STACMD_STAENP (level : 4)

.class @READER_STACMD_STAENP
{
    // slink
    .field public class @READER_STACMD _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3314
//================================================================================
// scope: READER_STACMD_STAGOS (level : 4)

.class @READER_STACMD_STAGOS
{
    // slink
    .field public class @READER_STACMD _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3322
//================================================================================
// scope: READER_STACMD_STALIT (level : 4)

.class @READER_STACMD_STALIT
{
    // slink
    .field public class @READER_STACMD _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3329
//================================================================================
// scope: READER_STACMD_STANUM (level : 4)

.class @READER_STACMD_STANUM
{
    // slink
    .field public class @READER_STACMD _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3336
//================================================================================
// scope: READER_STACMD_STAOPT (level : 4)

// line 0xfeefee

// TYPE subroutine_201 = procedure^;
.class sealed T_READER_STACMD_subroutine_201 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

.class @READER_STACMD_STAOPT
{
    // slink
    .field public class @READER_STACMD _slink

    // parameters
    .field public valuetype T_RA A
    .field public class T_READER_STACMD_subroutine_201 STAXXX

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3241
//================================================================================
// scope: READER_STACMD (level : 3)

// line 0xfeefee

// TYPE subroutine_203 = procedure^;
.class sealed T_READER_STACMD_subroutine_203 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_205 = procedure^;
.class sealed T_READER_STACMD_subroutine_205 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_207 = procedure^;
.class sealed T_READER_STACMD_subroutine_207 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_209 = procedure^;
.class sealed T_READER_STACMD_subroutine_209 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_211 = procedure^;
.class sealed T_READER_STACMD_subroutine_211 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_213 = procedure^;
.class sealed T_READER_STACMD_subroutine_213 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_215 = procedure^;
.class sealed T_READER_STACMD_subroutine_215 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

.class @READER_STACMD
{
    // slink
    .field public class @READER _slink

    // local variables
    .field public valuetype T_RA INRA
    .field public int32 INTM

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 3250

    .method public
    void STAEPF(valuetype T_RA A, int32 B)
    {
        .maxstack 32
    
        .locals init(class @READER_STACMD_STAEPF _F)
        
        newobj instance void @READER_STACMD_STAEPF::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER_STACMD @READER_STACMD_STAEPF::_slink
        
        ldloc _F
        ldarg A
        stfld valuetype T_RA @READER_STACMD_STAEPF::A
        
        ldloc _F
        ldarg B
        stfld int32 @READER_STACMD_STAEPF::B
    
    L_Entry:
        // line 3255
        ldloc _F
        ldfld valuetype T_RA @READER_STACMD_STAEPF::A
        call string T_RA::arrayToString(valuetype T_RA)
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STAEPF::_slink
        ldfld valuetype T_RA @READER_STACMD::INRA
        call string T_RA::arrayToString(valuetype T_RA)
        call bool [lpcRuntime]LPC.Helpers::StrcmpEQ(string, string)
        brfalse L_if_end_1
        // line 3257
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STAEPF::_slink
        ldfld int32 @READER_STACMD::INTM
        ldc.i4 0
        ceq
        brfalse L_else_2
        // line 3258
        ldsflda valuetype T_RB _G::BOARD
        ldsflda valuetype T_array_37 _G::XTRFS
        ldc.i4 5
        call instance valuetype T_array_36& T_array_37::ldadr(int32)
        ldloc _F
        ldfld int32 @READER_STACMD_STAEPF::B
        call instance int8& T_array_36::ldadr(int32)
        ldobj int8
        stfld int8 T_RB::RBTS
        br L_if_end_3
    L_else_2:
        // line 3260
        ldsflda valuetype T_RB _G::BOARD
        ldsflda valuetype T_array_37 _G::XTRFS
        ldc.i4 2
        call instance valuetype T_array_36& T_array_37::ldadr(int32)
        ldloc _F
        ldfld int32 @READER_STACMD_STAEPF::B
        call instance int8& T_array_36::ldadr(int32)
        ldobj int8
        stfld int8 T_RB::RBTS
    L_if_end_3:
        // line 3261
        ldc.i4 10
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        /* nop */
    L_if_end_1:
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3266

    .method public
    void STACAK()
    {
        .maxstack 32
    
        .locals init(
            class @READER_STACMD_STACAK _F,
            valuetype T_SQ $tmpSetLiteral1,
            valuetype T_SQ $tmpSetLiteral2)
        
        newobj instance void @READER_STACMD_STACAK::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER_STACMD @READER_STACMD_STACAK::_slink
    
        ldloca $tmpSetLiteral1
        ldc.i4 0
        call instance void T_SQ::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 2
        call instance void T_SQ::addValue(int32)
    
    L_Entry:
        // line 3269
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STACAK::_slink
        ldfld int32 @READER_STACMD::INTM
        ldc.i4 0
        ceq
        brfalse L_else_1
        // line 3270
        ldsflda valuetype T_RB _G::BOARD
        ldsflda valuetype T_RB _G::BOARD
        ldfld valuetype T_SQ T_RB::RBSQ
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_SQ s)
        ldloc $tmpSetLiteral1
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_SQ s)
        call valuetype T_set_5 _SetUnion(valuetype T_set_5 a, valuetype T_set_5 b)
        dup
        ldc.i4 0
        ldc.i4 3
        call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
        call valuetype T_SQ _SetCastTo_T_SQ(valuetype T_set_5 s)
        stfld valuetype T_SQ T_RB::RBSQ
        br L_if_end_2
    L_else_1:
        // line 3272
        ldsflda valuetype T_RB _G::BOARD
        ldsflda valuetype T_RB _G::BOARD
        ldfld valuetype T_SQ T_RB::RBSQ
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_SQ s)
        ldloc $tmpSetLiteral2
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_SQ s)
        call valuetype T_set_5 _SetUnion(valuetype T_set_5 a, valuetype T_set_5 b)
        dup
        ldc.i4 0
        ldc.i4 3
        call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
        call valuetype T_SQ _SetCastTo_T_SQ(valuetype T_set_5 s)
        stfld valuetype T_SQ T_RB::RBSQ
    L_if_end_2:
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3276

    .method public
    void STACAQ()
    {
        .maxstack 32
    
        .locals init(
            class @READER_STACMD_STACAQ _F,
            valuetype T_SQ $tmpSetLiteral1,
            valuetype T_SQ $tmpSetLiteral2)
        
        newobj instance void @READER_STACMD_STACAQ::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER_STACMD @READER_STACMD_STACAQ::_slink
    
        ldloca $tmpSetLiteral1
        ldc.i4 1
        call instance void T_SQ::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 3
        call instance void T_SQ::addValue(int32)
    
    L_Entry:
        // line 3279
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STACAQ::_slink
        ldfld int32 @READER_STACMD::INTM
        ldc.i4 0
        ceq
        brfalse L_else_1
        // line 3280
        ldsflda valuetype T_RB _G::BOARD
        ldsflda valuetype T_RB _G::BOARD
        ldfld valuetype T_SQ T_RB::RBSQ
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_SQ s)
        ldloc $tmpSetLiteral1
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_SQ s)
        call valuetype T_set_5 _SetUnion(valuetype T_set_5 a, valuetype T_set_5 b)
        dup
        ldc.i4 0
        ldc.i4 3
        call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
        call valuetype T_SQ _SetCastTo_T_SQ(valuetype T_set_5 s)
        stfld valuetype T_SQ T_RB::RBSQ
        br L_if_end_2
    L_else_1:
        // line 3282
        ldsflda valuetype T_RB _G::BOARD
        ldsflda valuetype T_RB _G::BOARD
        ldfld valuetype T_SQ T_RB::RBSQ
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_SQ s)
        ldloc $tmpSetLiteral2
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_SQ s)
        call valuetype T_set_5 _SetUnion(valuetype T_set_5 a, valuetype T_set_5 b)
        dup
        ldc.i4 0
        ldc.i4 3
        call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
        call valuetype T_SQ _SetCastTo_T_SQ(valuetype T_set_5 s)
        stfld valuetype T_SQ T_RB::RBSQ
    L_if_end_2:
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3286

    .method public
    void STADRK()
    {
        .maxstack 32
    
        .locals init(class @READER_STACMD_STADRK _F)
        
        newobj instance void @READER_STACMD_STADRK::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER_STACMD @READER_STACMD_STADRK::_slink
    
    L_Entry:
        // line 3289
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STADRK::_slink
        ldc.i4 1
        stfld int32 @READER_STACMD::INTM
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3293

    .method public
    void STAENP()
    {
        .maxstack 32
    
        .locals init(class @READER_STACMD_STAENP _F)
        
        newobj instance void @READER_STACMD_STAENP::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER_STACMD @READER_STACMD_STAENP::_slink
    
    L_Entry:
        // line 3296
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STAENP::_slink
        ldfld class @READER @READER_STACMD::_slink
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STAENP::_slink
        ldflda valuetype T_RA @READER_STACMD::INRA
        call instance bool @READER::RDRGNT(valuetype T_RA& A)
        ldc.i4.0
        ceq
        brfalse L_if_end_1
        // line 3298
        call void CLSTAT()
        // line 3299
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STAENP::_slink
        ldfld class @READER @READER_STACMD::_slink
        ldsfld valuetype T_array_99 STRING_98    // " ENPASSANT FILE OMITTED       "
        call instance void @READER::RDRERR(valuetype T_array_99 A)
        /* nop */
    L_if_end_1:
        // line 3301
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STAENP::_slink
        ldsfld valuetype T_RA STRING_99    // "QR        "
        ldc.i4 0
        call instance void @READER_STACMD::STAEPF(valuetype T_RA A, int32 B)
        // line 3302
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STAENP::_slink
        ldsfld valuetype T_RA STRING_100    // "QN        "
        ldc.i4 1
        call instance void @READER_STACMD::STAEPF(valuetype T_RA A, int32 B)
        // line 3303
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STAENP::_slink
        ldsfld valuetype T_RA STRING_101    // "QB        "
        ldc.i4 2
        call instance void @READER_STACMD::STAEPF(valuetype T_RA A, int32 B)
        // line 3304
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STAENP::_slink
        ldsfld valuetype T_RA STRING_102    // "Q         "
        ldc.i4 3
        call instance void @READER_STACMD::STAEPF(valuetype T_RA A, int32 B)
        // line 3305
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STAENP::_slink
        ldsfld valuetype T_RA STRING_103    // "K         "
        ldc.i4 4
        call instance void @READER_STACMD::STAEPF(valuetype T_RA A, int32 B)
        // line 3306
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STAENP::_slink
        ldsfld valuetype T_RA STRING_104    // "KB        "
        ldc.i4 5
        call instance void @READER_STACMD::STAEPF(valuetype T_RA A, int32 B)
        // line 3307
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STAENP::_slink
        ldsfld valuetype T_RA STRING_105    // "KN        "
        ldc.i4 6
        call instance void @READER_STACMD::STAEPF(valuetype T_RA A, int32 B)
        // line 3308
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STAENP::_slink
        ldsfld valuetype T_RA STRING_106    // "KR        "
        ldc.i4 7
        call instance void @READER_STACMD::STAEPF(valuetype T_RA A, int32 B)
        // line 3309
        call void CLSTAT()
        // line 3310
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STAENP::_slink
        ldfld class @READER @READER_STACMD::_slink
        ldsfld valuetype T_array_99 STRING_107    // " ILLEGAL ENPASSANT FILE       "
        call instance void @READER::RDRERR(valuetype T_array_99 A)
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3314

    .method public
    void STAGOS()
    {
        .maxstack 32
    
        .locals init(class @READER_STACMD_STAGOS _F)
        
        newobj instance void @READER_STACMD_STAGOS::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER_STACMD @READER_STACMD_STAGOS::_slink
    
    L_Entry:
        // line 3317
        ldsflda valuetype T_RB _G::BOARD
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STAGOS::_slink
        ldfld int32 @READER_STACMD::INTM
        stfld int32 T_RB::RBTM
        // line 3318
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STAGOS::_slink
        ldfld int32 @READER_STACMD::INTM
        stsfld int32 _G::JNTM
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3322

    .method public
    void STALIT()
    {
        .maxstack 32
    
        .locals init(class @READER_STACMD_STALIT _F)
        
        newobj instance void @READER_STACMD_STALIT::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER_STACMD @READER_STACMD_STALIT::_slink
    
    L_Entry:
        // line 3325
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STALIT::_slink
        ldc.i4 0
        stfld int32 @READER_STACMD::INTM
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3329

    .method public
    void STANUM()
    {
        .maxstack 32
    
        .locals init(class @READER_STACMD_STANUM _F)
        
        newobj instance void @READER_STACMD_STANUM::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER_STACMD @READER_STACMD_STANUM::_slink
    
    L_Entry:
        // line 3332
        ldsflda valuetype T_RB _G::BOARD
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STANUM::_slink
        ldfld class @READER @READER_STACMD::_slink
        call instance int32 @READER::RDRNUM()
        stfld int32 T_RB::RBTI
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3336

    .method public
    void STAOPT(valuetype T_RA A, class T_READER_STACMD_subroutine_201 STAXXX)
    {
        .maxstack 32
    
        .locals init(class @READER_STACMD_STAOPT _F)
        
        newobj instance void @READER_STACMD_STAOPT::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER_STACMD @READER_STACMD_STAOPT::_slink
        
        ldloc _F
        ldarg A
        stfld valuetype T_RA @READER_STACMD_STAOPT::A
        
        ldloc _F
        ldarg STAXXX
        stfld class T_READER_STACMD_subroutine_201 @READER_STACMD_STAOPT::STAXXX
    
    L_Entry:
        // line 3341
        ldloc _F
        ldfld class @READER_STACMD @READER_STACMD_STAOPT::_slink
        ldfld valuetype T_RA @READER_STACMD::INRA
        call string T_RA::arrayToString(valuetype T_RA)
        ldloc _F
        ldfld valuetype T_RA @READER_STACMD_STAOPT::A
        call string T_RA::arrayToString(valuetype T_RA)
        call bool [lpcRuntime]LPC.Helpers::StrcmpEQ(string, string)
        brfalse L_if_end_1
        // line 3343
        ldloc _F
        ldfld class T_READER_STACMD_subroutine_201 @READER_STACMD_STAOPT::STAXXX
        call instance void T_READER_STACMD_subroutine_201::Invoke()
        // line 3344
        ldc.i4 10
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        /* nop */
    L_if_end_1:
        /* nop */
    
    L_Epilogue:
        ret
    }
}


// line 3368
//================================================================================
// scope: READER_WHACMD (level : 3)

.class @READER_WHACMD
{
    // slink
    .field public class @READER _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2748
//================================================================================
// scope: READER (level : 2)

// line 0xfeefee

// TYPE subroutine_220 = procedure^;
.class sealed T_READER_subroutine_220 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_222 = procedure^;
.class sealed T_READER_subroutine_222 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_224 = procedure^;
.class sealed T_READER_subroutine_224 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_226 = procedure^;
.class sealed T_READER_subroutine_226 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_228 = procedure^;
.class sealed T_READER_subroutine_228 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_230 = procedure^;
.class sealed T_READER_subroutine_230 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_232 = procedure^;
.class sealed T_READER_subroutine_232 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_234 = procedure^;
.class sealed T_READER_subroutine_234 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_236 = procedure^;
.class sealed T_READER_subroutine_236 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_238 = procedure^;
.class sealed T_READER_subroutine_238 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_240 = procedure^;
.class sealed T_READER_subroutine_240 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_242 = procedure^;
.class sealed T_READER_subroutine_242 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_244 = procedure^;
.class sealed T_READER_subroutine_244 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

.class @READER
{
    // local variables
    .field public valuetype T_RA INRA
    .field public int8 INTJ

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 2757

    .method public
    void RDRERR(valuetype T_array_99 A)
    {
        .maxstack 32
    
        .locals init(
            class @READER_RDRERR _F,
            int8 $tmpEndValue1,
            int8 $tmpIndex2,
            int8 $tmpIndex3,
            int8 $tmpEndValue4,
            int8 $tmpIndex5,
            int8 $tmpIndex6,
            int8 $tmpEndValue7,
            int8 $tmpIndex8,
            int8 $tmpIndex9)
        
        newobj instance void @READER_RDRERR::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER @READER_RDRERR::_slink
        
        ldloc _F
        ldarg A
        stfld valuetype T_array_99 @READER_RDRERR::A
    
    L_Entry:
        // line 2764
        ldsfld bool _G::SWEC
        ldc.i4.0
        ceq
        brfalse L_if_end_1
        // line 2767
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldc.i4 32 // ' '
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        pop
        // line 2768
        ldc.i4 73
        ldc.i4 1
        sub
        stloc $tmpEndValue1
        ldc.i4 0
        dup
        ldloc $tmpEndValue1
        bgt L_for_end_3
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex2
        ldloc _F
        ldloc $tmpIndex2
        stfld int8 @READER_RDRERR::INTJ
    L_for_loop_2:
        // line 2769
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldsflda valuetype T_RJ _G::ILINE
        ldloc _F
        ldfld int8 @READER_RDRERR::INTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        pop
        ldloc _F
        ldfld int8 @READER_RDRERR::INTJ
        dup
        ldloc $tmpEndValue1
        beq L_for_end_3
        ldc.i4.1
        add
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex3
        ldloc _F
        ldloc $tmpIndex3
        stfld int8 @READER_RDRERR::INTJ
        br L_for_loop_2
    L_for_end_3:
        pop
        // line 2770
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldc.i4 32 // ' '
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        /* nop */
    L_if_end_1:
        // line 2772
        ldsfld int8 _G::JNTJ
        stloc $tmpEndValue4
        ldc.i4 0
        dup
        ldloc $tmpEndValue4
        bgt L_for_end_5
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex5
        ldloc _F
        ldloc $tmpIndex5
        stfld int8 @READER_RDRERR::INTJ
    L_for_loop_4:
        // line 2773
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldc.i4 32 // ' '
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        pop
        ldloc _F
        ldfld int8 @READER_RDRERR::INTJ
        dup
        ldloc $tmpEndValue4
        beq L_for_end_5
        ldc.i4.1
        add
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex6
        ldloc _F
        ldloc $tmpIndex6
        stfld int8 @READER_RDRERR::INTJ
        br L_for_loop_4
    L_for_end_5:
        pop
        // line 2774
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldc.i4 94 // '^'
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        // line 2775
        ldc.i4 30
        stloc $tmpEndValue7
        ldc.i4 1
        dup
        ldloc $tmpEndValue7
        bgt L_for_end_7
        dup
        ldc.i4 1
        ldc.i4 30
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex8
        ldloc _F
        ldloc $tmpIndex8
        stfld int8 @READER_RDRERR::INTN
    L_for_loop_6:
        // line 2776
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldloc _F
        ldflda valuetype T_array_99 @READER_RDRERR::A
        ldloc _F
        ldfld int8 @READER_RDRERR::INTN
        call instance uint8& T_array_99::ldadr(int32)
        ldobj uint8
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        pop
        ldloc _F
        ldfld int8 @READER_RDRERR::INTN
        dup
        ldloc $tmpEndValue7
        beq L_for_end_7
        ldc.i4.1
        add
        dup
        ldc.i4 1
        ldc.i4 30
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex9
        ldloc _F
        ldloc $tmpIndex9
        stfld int8 @READER_RDRERR::INTN
        br L_for_loop_6
    L_for_end_7:
        pop
        // line 2777
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        // line 2778
        ldc.i4 3
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 2782

    .method public
    bool RDRGNT(valuetype T_RA& A)
    {
        .maxstack 32
    
        .locals init(
            class @READER_RDRGNT _F,
            valuetype T_set_5 $tmpSetLiteral1,
            valuetype T_set_5 $tmpSetLiteral2,
            valuetype T_RA& pinned $A)
        
        newobj instance void @READER_RDRGNT::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER @READER_RDRGNT::_slink
        
        ldarg A
        stloc $A
        
        ldloc _F
        ldarg A
        stfld valuetype T_RA* @READER_RDRGNT::A
    
        ldloca $tmpSetLiteral1
        ldc.i4 65 // 'A'
        ldc.i4 90 // 'Z'
        call instance void T_set_5::addRange(int32, int32)
        ldloca $tmpSetLiteral1
        ldc.i4 48 // '0'
        ldc.i4 57 // '9'
        call instance void T_set_5::addRange(int32, int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 65 // 'A'
        ldc.i4 90 // 'Z'
        call instance void T_set_5::addRange(int32, int32)
        ldloca $tmpSetLiteral2
        ldc.i4 48 // '0'
        ldc.i4 57 // '9'
        call instance void T_set_5::addRange(int32, int32)
    
    L_Entry:
        // line 2796
        br L_while_test_2
    L_while_1:
        // line 2797
        ldsfld int8 _G::JNTJ
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::JNTJ
    L_while_test_2:
        ldsfld int8 _G::JNTJ
        ldc.i4 73
        clt
        dup
        brfalse L_AND_shortcut_3
        pop
        ldsflda valuetype T_RJ _G::ILINE
        ldsfld int8 _G::JNTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        ldc.i4 43 // '+'
        clt
        ldc.i4.0
        ceq
    L_AND_shortcut_3:
        brtrue L_while_1
        // line 2798
        ldloc _F
        ldfld valuetype T_RA* @READER_RDRGNT::A
        ldsfld valuetype T_RA STRING_56    // "          "
        stobj valuetype T_RA
        // line 2799
        ldloc _F
        ldc.i4 1
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 @READER_RDRGNT::INTJ
        // line 2800
        br L_while_test_5
    L_while_4:
        // line 2802
        ldloc _F
        ldfld valuetype T_RA* @READER_RDRGNT::A
        ldloc _F
        ldfld int8 @READER_RDRGNT::INTJ
        call instance uint8& T_RA::ldadr(int32)
        ldsflda valuetype T_RJ _G::ILINE
        ldsfld int8 _G::JNTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        stobj uint8
        // line 2803
        ldloc _F
        ldloc _F
        ldfld int8 @READER_RDRGNT::INTJ
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 @READER_RDRGNT::INTJ
        // line 2804
        ldsfld int8 _G::JNTJ
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::JNTJ
        /* nop */
    L_while_test_5:
        ldsfld int8 _G::JNTJ
        ldc.i4 73
        clt
        dup
        brfalse L_AND_shortcut_7
        pop
        ldloc _F
        ldfld int8 @READER_RDRGNT::INTJ
        ldc.i4 10
        clt
    L_AND_shortcut_7:
        dup
        brfalse L_AND_shortcut_6
        pop
        ldloc $tmpSetLiteral1
        ldsflda valuetype T_RJ _G::ILINE
        ldsfld int8 _G::JNTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        call bool _SetContains(valuetype T_set_5 s, int32 val)
    L_AND_shortcut_6:
        brtrue L_while_4
        // line 2806
        ldloc _F
        ldloc _F
        ldfld int8 @READER_RDRGNT::INTJ
        ldc.i4 1
        ceq
        ldc.i4.0
        ceq
        stfld bool @READER_RDRGNT::_fnvalue
        // line 2807
        br L_while_test_9
    L_while_8:
        // line 2808
        ldsfld int8 _G::JNTJ
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::JNTJ
    L_while_test_9:
        ldloc _F
        ldfld int8 @READER_RDRGNT::INTJ
        ldc.i4 73
        clt
        dup
        brfalse L_AND_shortcut_11
        pop
        ldsfld int8 _G::JNTJ
        ldc.i4 73
        clt
    L_AND_shortcut_11:
        dup
        brfalse L_AND_shortcut_10
        pop
        ldloc $tmpSetLiteral2
        ldsflda valuetype T_RJ _G::ILINE
        ldsfld int8 _G::JNTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        call bool _SetContains(valuetype T_set_5 s, int32 val)
    L_AND_shortcut_10:
        brtrue L_while_8
        /* nop */
    
    L_Epilogue:
        ldloc _F
        ldfld bool @READER_RDRGNT::_fnvalue
        ret
    }

// line 2812

    .method public
    void RDRSFT()
    {
        .maxstack 32
    
        .locals init(class @READER_RDRSFT _F)
        
        newobj instance void @READER_RDRSFT::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER @READER_RDRSFT::_slink
    
    L_Entry:
        // line 2820
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::JNTJ
        // line 2821
        ldloc _F
        ldloc _F
        ldfld class @READER @READER_RDRSFT::_slink
        ldloc _F
        ldflda valuetype T_RA @READER_RDRSFT::INRA
        call instance bool @READER::RDRGNT(valuetype T_RA& A)
        stfld bool @READER_RDRSFT::INTB
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 2825

    .method public
    void RDRCMD(valuetype T_RA A, class T_READER_subroutine_115 XXXCMD)
    {
        .maxstack 32
    
        .locals init(class @READER_RDRCMD _F)
        
        newobj instance void @READER_RDRCMD::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER @READER_RDRCMD::_slink
        
        ldloc _F
        ldarg A
        stfld valuetype T_RA @READER_RDRCMD::A
        
        ldloc _F
        ldarg XXXCMD
        stfld class T_READER_subroutine_115 @READER_RDRCMD::XXXCMD
    
    L_Entry:
        // line 2832
        ldloc _F
        ldfld class @READER @READER_RDRCMD::_slink
        ldfld valuetype T_RA @READER::INRA
        call string T_RA::arrayToString(valuetype T_RA)
        ldloc _F
        ldfld valuetype T_RA @READER_RDRCMD::A
        call string T_RA::arrayToString(valuetype T_RA)
        call bool [lpcRuntime]LPC.Helpers::StrcmpEQ(string, string)
        brfalse L_if_end_1
        // line 2834
        ldloc _F
        ldfld class T_READER_subroutine_115 @READER_RDRCMD::XXXCMD
        call instance void T_READER_subroutine_115::Invoke()
        // line 2835
        ldc.i4 3
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        /* nop */
    L_if_end_1:
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 2840

    .method public
    void RDLINE()
    {
        .maxstack 32
    
        .locals init(class @READER_RDLINE _F)
        
        newobj instance void @READER_RDLINE::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER @READER_RDLINE::_slink
    
    L_Entry:
        // line 2848
        ldsflda valuetype [lpcRuntime]LPC.File _G::Input
        call instance void [lpcRuntime]LPC.File::ReadLn()
        // line 2849
        ldloc _F
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 @READER_RDLINE::INTJ
        // line 2850
        br L_while_test_2
    L_while_1:
        // line 2852
        ldsflda valuetype [lpcRuntime]LPC.File _G::Input
        dup
        ldsflda valuetype T_RJ _G::ICARD
        ldloc _F
        ldfld int8 @READER_RDLINE::INTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        pop
        // line 2853
        ldloc _F
        ldloc _F
        ldfld int8 @READER_RDLINE::INTJ
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 @READER_RDLINE::INTJ
        /* nop */
    L_while_test_2:
        ldsflda valuetype [lpcRuntime]LPC.File _G::Input
        call instance bool [lpcRuntime]LPC.File::Eoln()
        ldc.i4.0
        ceq
        dup
        brfalse L_AND_shortcut_3
        pop
        ldloc _F
        ldfld int8 @READER_RDLINE::INTJ
        ldc.i4 73
        clt
    L_AND_shortcut_3:
        brtrue L_while_1
        // line 2855
        br L_while_test_5
    L_while_4:
        // line 2856
        ldsflda valuetype [lpcRuntime]LPC.File _G::Input
        dup
        ldloc _F
        ldflda uint8 @READER_RDLINE::INTC
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        pop
    L_while_test_5:
        ldsflda valuetype [lpcRuntime]LPC.File _G::Input
        call instance bool [lpcRuntime]LPC.File::Eoln()
        ldc.i4.0
        ceq
        brtrue L_while_4
        // line 2857
        br L_while_test_7
    L_while_6:
        // line 2859
        ldsflda valuetype T_RJ _G::ICARD
        ldloc _F
        ldfld int8 @READER_RDLINE::INTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldc.i4 32 // ' '
        stobj uint8
        // line 2860
        ldloc _F
        ldloc _F
        ldfld int8 @READER_RDLINE::INTJ
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 @READER_RDLINE::INTJ
        /* nop */
    L_while_test_7:
        ldloc _F
        ldfld int8 @READER_RDLINE::INTJ
        ldc.i4 73
        clt
        brtrue L_while_6
        // line 2862
        ldsflda valuetype T_RJ _G::ICARD
        ldc.i4 73
        call instance uint8& T_RJ::ldadr(int32)
        ldc.i4 59 // ';'
        stobj uint8
        // line 2863
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::JMTJ
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 2867

    .method public
    bool RDRMOV()
    {
        .maxstack 32
    
        .locals init(class @READER_RDRMOV _F)
        
        newobj instance void @READER_RDRMOV::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER @READER_RDRMOV::_slink
    
    L_Entry:
        // line 2876
        br L_while_test_2
    L_while_1:
        // line 2877
        ldsfld int8 _G::JMTJ
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::JMTJ
    L_while_test_2:
        ldsfld int8 _G::JMTJ
        ldc.i4 73
        clt
        dup
        brfalse L_AND_shortcut_3
        pop
        ldsflda valuetype T_RJ _G::ICARD
        ldsfld int8 _G::JMTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        ldc.i4 32 // ' '
        ceq
    L_AND_shortcut_3:
        brtrue L_while_1
        // line 2878
        ldloc _F
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 @READER_RDRMOV::IMTJ
        // line 2879
        br L_while_test_5
    L_while_4:
        // line 2881
        ldsflda valuetype T_RJ _G::ILINE
        ldloc _F
        ldfld int8 @READER_RDRMOV::IMTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldsflda valuetype T_RJ _G::ICARD
        ldsfld int8 _G::JMTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        stobj uint8
        // line 2882
        ldloc _F
        ldloc _F
        ldfld int8 @READER_RDRMOV::IMTJ
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 @READER_RDRMOV::IMTJ
        // line 2883
        ldsfld int8 _G::JMTJ
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::JMTJ
        /* nop */
    L_while_test_5:
        ldsfld int8 _G::JMTJ
        ldc.i4 73
        clt
        dup
        brfalse L_AND_shortcut_6
        pop
        ldsflda valuetype T_RJ _G::ICARD
        ldsfld int8 _G::JMTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        ldc.i4 59 // ';'
        ceq
        ldc.i4.0
        ceq
    L_AND_shortcut_6:
        brtrue L_while_4
        // line 2885
        ldsflda valuetype T_RJ _G::ICARD
        ldsfld int8 _G::JMTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        ldc.i4 59 // ';'
        ceq
        dup
        brfalse L_AND_shortcut_7
        pop
        ldsfld int8 _G::JMTJ
        ldc.i4 73
        clt
    L_AND_shortcut_7:
        brfalse L_if_end_8
        // line 2886
        ldsfld int8 _G::JMTJ
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::JMTJ
    L_if_end_8:
        // line 2887
        ldloc _F
        ldloc _F
        ldfld int8 @READER_RDRMOV::IMTJ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        stfld bool @READER_RDRMOV::_fnvalue
        // line 2888
        br L_while_test_10
    L_while_9:
        // line 2890
        ldsflda valuetype T_RJ _G::ILINE
        ldloc _F
        ldfld int8 @READER_RDRMOV::IMTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldc.i4 32 // ' '
        stobj uint8
        // line 2891
        ldloc _F
        ldloc _F
        ldfld int8 @READER_RDRMOV::IMTJ
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 @READER_RDRMOV::IMTJ
        /* nop */
    L_while_test_10:
        ldloc _F
        ldfld int8 @READER_RDRMOV::IMTJ
        ldc.i4 73
        clt
        brtrue L_while_9
        // line 2893
        ldsflda valuetype T_RJ _G::ILINE
        ldc.i4 73
        call instance uint8& T_RJ::ldadr(int32)
        ldc.i4 59 // ';'
        stobj uint8
        // line 2894
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::JNTJ
        /* nop */
    
    L_Epilogue:
        ldloc _F
        ldfld bool @READER_RDRMOV::_fnvalue
        ret
    }

// line 2898

    .method public
    int32 RDRNUM()
    {
        .maxstack 32
    
        .locals init(
            class @READER_RDRNUM _F,
            valuetype T_set_5 $tmpSetLiteral1,
            valuetype T_set_5 $tmpSetLiteral2)
        
        newobj instance void @READER_RDRNUM::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER @READER_RDRNUM::_slink
    
        ldloca $tmpSetLiteral1
        ldc.i4 48 // '0'
        ldc.i4 57 // '9'
        call instance void T_set_5::addRange(int32, int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 65 // 'A'
        ldc.i4 90 // 'Z'
        call instance void T_set_5::addRange(int32, int32)
    
    L_Entry:
        // line 2908
        br L_while_test_2
    L_while_1:
        // line 2909
        ldsfld int8 _G::JNTJ
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::JNTJ
    L_while_test_2:
        ldsfld int8 _G::JNTJ
        ldc.i4 73
        clt
        dup
        brfalse L_AND_shortcut_3
        pop
        ldsflda valuetype T_RJ _G::ILINE
        ldsfld int8 _G::JNTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        ldc.i4 32 // ' '
        ceq
    L_AND_shortcut_3:
        brtrue L_while_1
        // line 2910
        ldsflda valuetype T_RJ _G::ILINE
        ldsfld int8 _G::JNTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        ldc.i4 45 // '-'
        ceq
        brfalse L_else_4
        // line 2912
        ldloc _F
        ldc.i4 1 // (true)
        stfld bool @READER_RDRNUM::INTB
        // line 2913
        ldsfld int8 _G::JNTJ
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::JNTJ
        /* nop */
        br L_if_end_5
    L_else_4:
        // line 2917
        ldloc _F
        ldc.i4 0 // (false)
        stfld bool @READER_RDRNUM::INTB
        // line 2918
        ldsflda valuetype T_RJ _G::ILINE
        ldsfld int8 _G::JNTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        ldc.i4 43 // '+'
        ceq
        brfalse L_if_end_6
        // line 2919
        ldsfld int8 _G::JNTJ
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::JNTJ
    L_if_end_6:
        /* nop */
    L_if_end_5:
        // line 2921
        ldloc _F
        ldc.i4 0
        stfld int32 @READER_RDRNUM::INTI
        // line 2922
        br L_while_test_8
    L_while_7:
        // line 2924
        ldloc _F
        ldfld int32 @READER_RDRNUM::INTI
        conv.r8
        ldc.i4 2147483647
        conv.r8
        ldc.i4 10
        conv.r8
        div
        clt
        brfalse L_else_9
        // line 2925
        ldloc _F
        ldc.i4 10
        ldloc _F
        ldfld int32 @READER_RDRNUM::INTI
        mul
        ldsflda valuetype T_RJ _G::ILINE
        ldsfld int8 _G::JNTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        add
        ldc.i4 48 // '0'
        sub
        stfld int32 @READER_RDRNUM::INTI
        br L_if_end_10
    L_else_9:
        // line 2927
        ldloc _F
        ldfld class @READER @READER_RDRNUM::_slink
        ldsfld valuetype T_array_99 STRING_57    // " NUMBER TOO LARGE             "
        call instance void @READER::RDRERR(valuetype T_array_99 A)
    L_if_end_10:
        // line 2928
        ldsfld int8 _G::JNTJ
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::JNTJ
        /* nop */
    L_while_test_8:
        ldloc $tmpSetLiteral1
        ldsflda valuetype T_RJ _G::ILINE
        ldsfld int8 _G::JNTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        call bool _SetContains(valuetype T_set_5 s, int32 val)
        brtrue L_while_7
        // line 2930
        ldloc $tmpSetLiteral2
        ldsflda valuetype T_RJ _G::ILINE
        ldsfld int8 _G::JNTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        call bool _SetContains(valuetype T_set_5 s, int32 val)
        brfalse L_if_end_11
        // line 2931
        ldloc _F
        ldfld class @READER @READER_RDRNUM::_slink
        ldsfld valuetype T_array_99 STRING_58    // " DIGIT EXPECTED               "
        call instance void @READER::RDRERR(valuetype T_array_99 A)
    L_if_end_11:
        // line 2932
        ldloc _F
        ldfld bool @READER_RDRNUM::INTB
        brfalse L_if_end_12
        // line 2933
        ldloc _F
        ldloc _F
        ldfld int32 @READER_RDRNUM::INTI
        neg
        stfld int32 @READER_RDRNUM::INTI
    L_if_end_12:
        // line 2934
        ldloc _F
        ldloc _F
        ldfld int32 @READER_RDRNUM::INTI
        stfld int32 @READER_RDRNUM::_fnvalue
        /* nop */
    
    L_Epilogue:
        ldloc _F
        ldfld int32 @READER_RDRNUM::_fnvalue
        ret
    }

// line 2938

    .method public
    void BOACMD()
    {
        .maxstack 32
    
        .locals init(
            class @READER_BOACMD _F,
            int8 $tmpEndValue1,
            int8 $tmpIndex2,
            int8 $tmpIndex3,
            valuetype T_set_5 $tmpSetLiteral4,
            uint8 $tmpSwitchValue5,
            valuetype T_set_5 $tmpSetLiteral6,
            int8 $tmpEndValue7,
            int8 $tmpIndex8,
            int8 $tmpIndex9)
        
        newobj instance void @READER_BOACMD::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER @READER_BOACMD::_slink
    
        ldloca $tmpSetLiteral4
        ldc.i4 80 // 'P'
        call instance void T_set_5::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 82 // 'R'
        call instance void T_set_5::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 78 // 'N'
        call instance void T_set_5::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 66 // 'B'
        call instance void T_set_5::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 81 // 'Q'
        call instance void T_set_5::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 75 // 'K'
        call instance void T_set_5::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 76 // 'L'
        call instance void T_set_5::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 68 // 'D'
        call instance void T_set_5::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 49 // '1'
        ldc.i4 56 // '8'
        call instance void T_set_5::addRange(int32, int32)
    
        ldloca $tmpSetLiteral6
        ldc.i4 65 // 'A'
        ldc.i4 90 // 'Z'
        call instance void T_set_5::addRange(int32, int32)
        ldloca $tmpSetLiteral6
        ldc.i4 48 // '0'
        ldc.i4 57 // '9'
        call instance void T_set_5::addRange(int32, int32)
    
    L_Entry:
        // line 2964
        call void CLSTAT()
        // line 2965
        ldsfld valuetype T_RM _G::NULMV
        stsfld valuetype T_RM _G::LSTMV
        // line 2966
        ldc.i4 63
        stloc $tmpEndValue1
        ldc.i4 0
        dup
        ldloc $tmpEndValue1
        bgt L_for_end_2
        dup
        ldc.i4 0
        ldc.i4 63
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex2
        ldloc _F
        ldloc $tmpIndex2
        stfld int8 @READER_BOACMD::INTS1
    L_for_loop_1:
        // line 2967
        ldsflda valuetype T_RB _G::BOARD
        ldflda valuetype T_array_38 T_RB::RBIS
        ldloc _F
        ldfld int8 @READER_BOACMD::INTS1
        call instance int32& T_array_38::ldadr(int32)
        ldc.i4 12
        stobj int32
        ldloc _F
        ldfld int8 @READER_BOACMD::INTS1
        dup
        ldloc $tmpEndValue1
        beq L_for_end_2
        ldc.i4.1
        add
        dup
        ldc.i4 0
        ldc.i4 63
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex3
        ldloc _F
        ldloc $tmpIndex3
        stfld int8 @READER_BOACMD::INTS1
        br L_for_loop_1
    L_for_end_2:
        pop
        // line 2968
        ldloc _F
        ldc.i4 0
        stfld int32 @READER_BOACMD::INTM
        // line 2969
        ldloc _F
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 63
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 @READER_BOACMD::INTS
        // line 2970
    L_repeat_3:
        // line 2971
        ldloc $tmpSetLiteral4
        ldsflda valuetype T_RJ _G::ILINE
        ldsfld int8 _G::JNTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        call bool _SetContains(valuetype T_set_5 s, int32 val)
        brfalse L_else_4
        // line 2972
        ldsflda valuetype T_RJ _G::ILINE
        ldsfld int8 _G::JNTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        stloc $tmpSwitchValue5
        ldloc $tmpSwitchValue5
        ldc.i4 80 // 'P'
        bne.un L_check_case_7
        // line 2973
        ldloc _F
        ldsflda valuetype T_array_19 _G::XTUMP
        ldc.i4 0
        call instance valuetype T_array_18& T_array_19::ldadr(int32)
        ldloc _F
        ldfld int32 @READER_BOACMD::INTM
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        call instance void @READER_BOACMD::BOASTO(int32 A)
        br L_case_end_6
    L_check_case_7:
        ldloc $tmpSwitchValue5
        ldc.i4 82 // 'R'
        bne.un L_check_case_8
        // line 2974
        ldloc _F
        ldsflda valuetype T_array_19 _G::XTUMP
        ldc.i4 1
        call instance valuetype T_array_18& T_array_19::ldadr(int32)
        ldloc _F
        ldfld int32 @READER_BOACMD::INTM
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        call instance void @READER_BOACMD::BOASTO(int32 A)
        br L_case_end_6
    L_check_case_8:
        ldloc $tmpSwitchValue5
        ldc.i4 78 // 'N'
        bne.un L_check_case_9
        // line 2975
        ldloc _F
        ldsflda valuetype T_array_19 _G::XTUMP
        ldc.i4 2
        call instance valuetype T_array_18& T_array_19::ldadr(int32)
        ldloc _F
        ldfld int32 @READER_BOACMD::INTM
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        call instance void @READER_BOACMD::BOASTO(int32 A)
        br L_case_end_6
    L_check_case_9:
        ldloc $tmpSwitchValue5
        ldc.i4 66 // 'B'
        bne.un L_check_case_10
        // line 2976
        ldloc _F
        ldsflda valuetype T_array_19 _G::XTUMP
        ldc.i4 3
        call instance valuetype T_array_18& T_array_19::ldadr(int32)
        ldloc _F
        ldfld int32 @READER_BOACMD::INTM
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        call instance void @READER_BOACMD::BOASTO(int32 A)
        br L_case_end_6
    L_check_case_10:
        ldloc $tmpSwitchValue5
        ldc.i4 81 // 'Q'
        bne.un L_check_case_11
        // line 2977
        ldloc _F
        ldsflda valuetype T_array_19 _G::XTUMP
        ldc.i4 4
        call instance valuetype T_array_18& T_array_19::ldadr(int32)
        ldloc _F
        ldfld int32 @READER_BOACMD::INTM
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        call instance void @READER_BOACMD::BOASTO(int32 A)
        br L_case_end_6
    L_check_case_11:
        ldloc $tmpSwitchValue5
        ldc.i4 75 // 'K'
        bne.un L_check_case_12
        // line 2978
        ldloc _F
        ldsflda valuetype T_array_19 _G::XTUMP
        ldc.i4 5
        call instance valuetype T_array_18& T_array_19::ldadr(int32)
        ldloc _F
        ldfld int32 @READER_BOACMD::INTM
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        call instance void @READER_BOACMD::BOASTO(int32 A)
        br L_case_end_6
    L_check_case_12:
        ldloc $tmpSwitchValue5
        ldc.i4 76 // 'L'
        bne.un L_check_case_13
        // line 2979
        ldloc _F
        ldc.i4 0
        stfld int32 @READER_BOACMD::INTM
        br L_case_end_6
    L_check_case_13:
        ldloc $tmpSwitchValue5
        ldc.i4 68 // 'D'
        bne.un L_check_case_14
        // line 2980
        ldloc _F
        ldc.i4 1
        stfld int32 @READER_BOACMD::INTM
        br L_case_end_6
    L_check_case_14:
        ldloc $tmpSwitchValue5
        ldc.i4 49 // '1'
        beq L_case_15
        ldloc $tmpSwitchValue5
        ldc.i4 50 // '2'
        beq L_case_15
        ldloc $tmpSwitchValue5
        ldc.i4 51 // '3'
        beq L_case_15
        ldloc $tmpSwitchValue5
        ldc.i4 52 // '4'
        beq L_case_15
        ldloc $tmpSwitchValue5
        ldc.i4 53 // '5'
        beq L_case_15
        ldloc $tmpSwitchValue5
        ldc.i4 54 // '6'
        beq L_case_15
        ldloc $tmpSwitchValue5
        ldc.i4 55 // '7'
        beq L_case_15
        ldloc $tmpSwitchValue5
        ldc.i4 56 // '8'
        beq L_case_15
        br L_case_end_6
    L_case_15:
        // line 2981
        ldloc _F
        ldsflda valuetype T_RJ _G::ILINE
        ldsfld int8 _G::JNTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        ldc.i4 48 // '0'
        sub
        call instance void @READER_BOACMD::BOAADV(int32 A)
    L_case_end_6:
        br L_if_end_5
    L_else_4:
        // line 2984
        ldloc $tmpSetLiteral6
        ldsflda valuetype T_RJ _G::ILINE
        ldsfld int8 _G::JNTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        call bool _SetContains(valuetype T_set_5 s, int32 val)
        brfalse L_if_end_16
        // line 2986
        ldc.i4 63
        stloc $tmpEndValue7
        ldc.i4 0
        dup
        ldloc $tmpEndValue7
        bgt L_for_end_18
        dup
        ldc.i4 0
        ldc.i4 63
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex8
        ldloc _F
        ldloc $tmpIndex8
        stfld int8 @READER_BOACMD::INTS1
    L_for_loop_17:
        // line 2987
        ldsflda valuetype T_RB _G::BOARD
        ldflda valuetype T_array_38 T_RB::RBIS
        ldloc _F
        ldfld int8 @READER_BOACMD::INTS1
        call instance int32& T_array_38::ldadr(int32)
        ldc.i4 12
        stobj int32
        ldloc _F
        ldfld int8 @READER_BOACMD::INTS1
        dup
        ldloc $tmpEndValue7
        beq L_for_end_18
        ldc.i4.1
        add
        dup
        ldc.i4 0
        ldc.i4 63
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex9
        ldloc _F
        ldloc $tmpIndex9
        stfld int8 @READER_BOACMD::INTS1
        br L_for_loop_17
    L_for_end_18:
        pop
        // line 2988
        call void CLSTAT()
        // line 2989
        ldloc _F
        ldfld class @READER @READER_BOACMD::_slink
        ldsfld valuetype T_array_99 STRING_59    // " ILLEGAL BOARD OPTION         "
        call instance void @READER::RDRERR(valuetype T_array_99 A)
        /* nop */
    L_if_end_16:
    L_if_end_5:
        // line 2991
        ldsfld int8 _G::JNTJ
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::JNTJ
        /* nop */
        ldsfld int8 _G::JNTJ
        ldc.i4 73
        ceq
        brfalse L_repeat_3
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 2996

    .method public
    void ENDCMD()
    {
        .maxstack 32
    
        .locals init(class @READER_ENDCMD _F)
        
        newobj instance void @READER_ENDCMD::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER @READER_ENDCMD::_slink
    
    L_Entry:
        // line 2999
        ldc.i4 4
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3003

    .method public
    void GONCMD()
    {
        .maxstack 32
    
        .locals init(class @READER_GONCMD _F)
        
        newobj instance void @READER_GONCMD::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER @READER_GONCMD::_slink
    
    L_Entry:
        // line 3006
        ldloc _F
        ldfld class @READER @READER_GONCMD::_slink
        call instance int32 @READER::RDRNUM()
        stsfld int32 _G::GOING
        // line 3007
        ldsfld int32 _G::GOING
        ldc.i4 0
        cgt
        ldc.i4.0
        ceq
        brfalse L_if_end_1
        // line 3007
        ldc.i4 1
        stsfld int32 _G::GOING
    L_if_end_1:
        // line 3009
        ldc.i4 1 // (true)
        stsfld bool _G::Jumpin
        // line 3011
        ldc.i4 5
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3015

    .method public
    void INICMD()
    {
        .maxstack 32
    
        .locals init(class @READER_INICMD _F)
        
        newobj instance void @READER_INICMD::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER @READER_INICMD::_slink
    
    L_Entry:
        // line 3018
        ldc.i4 6
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3022

    .method public
    void LETCMD()
    {
        .maxstack 32
    
        .locals init(class @READER_LETCMD _F)
        
        newobj instance void @READER_LETCMD::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER @READER_LETCMD::_slink
    
    L_Entry:
    .try
    {
        // line 3041
        ldloc _F
        ldfld class @READER @READER_LETCMD::_slink
        ldloc _F
        ldfld class @READER @READER_LETCMD::_slink
        ldflda valuetype T_RA @READER::INRA
        call instance bool @READER::RDRGNT(valuetype T_RA& A)
        brfalse L_if_end_1
        // line 3043
        ldloc _F
        ldsfld valuetype T_RA STRING_60    // "FKPSHD    "
        ldsflda int32 _G::FKPSHD
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3044
        ldloc _F
        ldsfld valuetype T_RA STRING_61    // "FKSANQ    "
        ldsflda int32 _G::FKSANQ
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3045
        ldloc _F
        ldsfld valuetype T_RA STRING_62    // "FMAXMT    "
        ldsflda int32 _G::FMAXMT
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3046
        ldloc _F
        ldsfld valuetype T_RA STRING_63    // "FNODEL    "
        ldsflda int32 _G::FNODEL
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3047
        ldloc _F
        ldsfld valuetype T_RA STRING_64    // "FPADQR    "
        ldsflda valuetype T_array_95 _G::FPADCR
        ldc.i4 0
        call instance int32& T_array_95::ldadr(int32)
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3048
        ldloc _F
        ldsfld valuetype T_RA STRING_65    // "FPADQN    "
        ldsflda valuetype T_array_95 _G::FPADCR
        ldc.i4 1
        call instance int32& T_array_95::ldadr(int32)
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3049
        ldloc _F
        ldsfld valuetype T_RA STRING_66    // "FPADQB    "
        ldsflda valuetype T_array_95 _G::FPADCR
        ldc.i4 2
        call instance int32& T_array_95::ldadr(int32)
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3050
        ldloc _F
        ldsfld valuetype T_RA STRING_67    // "FPADQF    "
        ldsflda valuetype T_array_95 _G::FPADCR
        ldc.i4 3
        call instance int32& T_array_95::ldadr(int32)
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3051
        ldloc _F
        ldsfld valuetype T_RA STRING_68    // "FPADKF    "
        ldsflda valuetype T_array_95 _G::FPADCR
        ldc.i4 4
        call instance int32& T_array_95::ldadr(int32)
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3052
        ldloc _F
        ldsfld valuetype T_RA STRING_69    // "FPADKB    "
        ldsflda valuetype T_array_95 _G::FPADCR
        ldc.i4 5
        call instance int32& T_array_95::ldadr(int32)
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3053
        ldloc _F
        ldsfld valuetype T_RA STRING_70    // "FPADKN    "
        ldsflda valuetype T_array_95 _G::FPADCR
        ldc.i4 6
        call instance int32& T_array_95::ldadr(int32)
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3054
        ldloc _F
        ldsfld valuetype T_RA STRING_71    // "FPADWR    "
        ldsflda valuetype T_array_95 _G::FPADCR
        ldc.i4 7
        call instance int32& T_array_95::ldadr(int32)
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3055
        ldloc _F
        ldsfld valuetype T_RA STRING_72    // "FPBLOK    "
        ldsflda int32 _G::FPBLOK
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3056
        ldloc _F
        ldsfld valuetype T_RA STRING_73    // "FPCONN    "
        ldsflda int32 _G::FPCONN
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3057
        ldloc _F
        ldsfld valuetype T_RA STRING_74    // "FPFLNX    "
        ldsflda int32 _G::FPFLNX
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3058
        ldloc _F
        ldsfld valuetype T_RA STRING_75    // "FRDUBL    "
        ldsflda int32 _G::FRDUBL
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3059
        ldloc _F
        ldsfld valuetype T_RA STRING_76    // "FRK7TH    "
        ldsflda int32 _G::FRK7TH
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3060
        ldloc _F
        ldsfld valuetype T_RA STRING_77    // "FTRADE    "
        ldsflda int32 _G::FTRADE
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3061
        ldloc _F
        ldsfld valuetype T_RA STRING_78    // "FTRDSL    "
        ldsflda int32 _G::FTRDSL
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3062
        ldloc _F
        ldsfld valuetype T_RA STRING_79    // "FTRPDK    "
        ldsflda int32 _G::FTRPDK
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3063
        ldloc _F
        ldsfld valuetype T_RA STRING_80    // "FTRPWN    "
        ldsflda int32 _G::FTRPWN
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3064
        ldloc _F
        ldsfld valuetype T_RA STRING_81    // "FWKING    "
        ldsflda int32 _G::FWKING
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3065
        ldloc _F
        ldsfld valuetype T_RA STRING_82    // "FWMAJM    "
        ldsflda int32 _G::FWMAJM
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3066
        ldloc _F
        ldsfld valuetype T_RA STRING_83    // "FWMINM    "
        ldsflda int32 _G::FWMINM
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3067
        ldloc _F
        ldsfld valuetype T_RA STRING_84    // "FWPAWN    "
        ldsflda int32 _G::FWPAWN
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3068
        ldloc _F
        ldsfld valuetype T_RA STRING_85    // "FWROOK    "
        ldsflda int32 _G::FWROOK
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3069
        ldloc _F
        ldsfld valuetype T_RA STRING_86    // "WINDOW    "
        ldsflda int32 _G::WINDOW
        call instance void @READER_LETCMD::LETONE(valuetype T_RA A, int32& B)
        // line 3070
        ldloc _F
        ldfld class @READER @READER_LETCMD::_slink
        ldsfld valuetype T_array_99 STRING_87    // "ILLEGAL LET VARIABLE NAME     "
        call instance void @READER::RDRERR(valuetype T_array_99 A)
        /* nop */
    L_if_end_1:
    L_21:
        /* nop */
        leave L_Epilogue
    }
    catch [lpcRuntime]LPC.NonLocalGoto
    {
        ldfld int32 [lpcRuntime]LPC.NonLocalGoto::label
        dup
        ldc.i4 7
        beq GOTO_L_21
        rethrow
    GOTO_L_21:
        leave L_21
    }
    
    L_Epilogue:
        ret
    }

// line 3076

    .method public
    void PLECMD()
    {
        .maxstack 32
    
        .locals init(class @READER_PLECMD _F)
        
        newobj instance void @READER_PLECMD::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER @READER_PLECMD::_slink
    
    L_Entry:
    .try
    {
        // line 3096
    L_21:
        br L_while_test_2
    L_while_1:
        // line 3098
        ldloc _F
        ldsfld valuetype T_RA STRING_60    // "FKPSHD    "
        ldsfld int32 _G::FKPSHD
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3099
        ldloc _F
        ldsfld valuetype T_RA STRING_61    // "FKSANQ    "
        ldsfld int32 _G::FKSANQ
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3100
        ldloc _F
        ldsfld valuetype T_RA STRING_62    // "FMAXMT    "
        ldsfld int32 _G::FMAXMT
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3101
        ldloc _F
        ldsfld valuetype T_RA STRING_63    // "FNODEL    "
        ldsfld int32 _G::FNODEL
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3102
        ldloc _F
        ldsfld valuetype T_RA STRING_64    // "FPADQR    "
        ldsflda valuetype T_array_95 _G::FPADCR
        ldc.i4 0
        call instance int32& T_array_95::ldadr(int32)
        ldobj int32
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3103
        ldloc _F
        ldsfld valuetype T_RA STRING_65    // "FPADQN    "
        ldsflda valuetype T_array_95 _G::FPADCR
        ldc.i4 1
        call instance int32& T_array_95::ldadr(int32)
        ldobj int32
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3104
        ldloc _F
        ldsfld valuetype T_RA STRING_66    // "FPADQB    "
        ldsflda valuetype T_array_95 _G::FPADCR
        ldc.i4 2
        call instance int32& T_array_95::ldadr(int32)
        ldobj int32
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3105
        ldloc _F
        ldsfld valuetype T_RA STRING_67    // "FPADQF    "
        ldsflda valuetype T_array_95 _G::FPADCR
        ldc.i4 3
        call instance int32& T_array_95::ldadr(int32)
        ldobj int32
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3106
        ldloc _F
        ldsfld valuetype T_RA STRING_68    // "FPADKF    "
        ldsflda valuetype T_array_95 _G::FPADCR
        ldc.i4 4
        call instance int32& T_array_95::ldadr(int32)
        ldobj int32
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3107
        ldloc _F
        ldsfld valuetype T_RA STRING_69    // "FPADKB    "
        ldsflda valuetype T_array_95 _G::FPADCR
        ldc.i4 5
        call instance int32& T_array_95::ldadr(int32)
        ldobj int32
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3108
        ldloc _F
        ldsfld valuetype T_RA STRING_70    // "FPADKN    "
        ldsflda valuetype T_array_95 _G::FPADCR
        ldc.i4 6
        call instance int32& T_array_95::ldadr(int32)
        ldobj int32
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3109
        ldloc _F
        ldsfld valuetype T_RA STRING_88    // "FPADKR    "
        ldsflda valuetype T_array_95 _G::FPADCR
        ldc.i4 7
        call instance int32& T_array_95::ldadr(int32)
        ldobj int32
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3110
        ldloc _F
        ldsfld valuetype T_RA STRING_72    // "FPBLOK    "
        ldsfld int32 _G::FPBLOK
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3111
        ldloc _F
        ldsfld valuetype T_RA STRING_73    // "FPCONN    "
        ldsfld int32 _G::FPCONN
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3112
        ldloc _F
        ldsfld valuetype T_RA STRING_74    // "FPFLNX    "
        ldsfld int32 _G::FPFLNX
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3113
        ldloc _F
        ldsfld valuetype T_RA STRING_75    // "FRDUBL    "
        ldsfld int32 _G::FRDUBL
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3114
        ldloc _F
        ldsfld valuetype T_RA STRING_76    // "FRK7TH    "
        ldsfld int32 _G::FRK7TH
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3115
        ldloc _F
        ldsfld valuetype T_RA STRING_77    // "FTRADE    "
        ldsfld int32 _G::FTRADE
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3116
        ldloc _F
        ldsfld valuetype T_RA STRING_78    // "FTRDSL    "
        ldsfld int32 _G::FTRDSL
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3117
        ldloc _F
        ldsfld valuetype T_RA STRING_79    // "FTRPDK    "
        ldsfld int32 _G::FTRPDK
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3118
        ldloc _F
        ldsfld valuetype T_RA STRING_80    // "FTRPWN    "
        ldsfld int32 _G::FTRPWN
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3119
        ldloc _F
        ldsfld valuetype T_RA STRING_81    // "FWKING    "
        ldsfld int32 _G::FWKING
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3120
        ldloc _F
        ldsfld valuetype T_RA STRING_82    // "FWMAJM    "
        ldsfld int32 _G::FWMAJM
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3121
        ldloc _F
        ldsfld valuetype T_RA STRING_83    // "FWMINM    "
        ldsfld int32 _G::FWMINM
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3122
        ldloc _F
        ldsfld valuetype T_RA STRING_84    // "FWPAWN    "
        ldsfld int32 _G::FWPAWN
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3123
        ldloc _F
        ldsfld valuetype T_RA STRING_85    // "FWROOK    "
        ldsfld int32 _G::FWROOK
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3124
        ldloc _F
        ldsfld valuetype T_RA STRING_86    // "WINDOW    "
        ldsfld int32 _G::WINDOW
        call instance void @READER_PLECMD::PRIONE(valuetype T_RA A, int32 B)
        // line 3125
        ldloc _F
        ldfld class @READER @READER_PLECMD::_slink
        ldsfld valuetype T_array_99 STRING_89    // " ILLEGAL  VARIABLE NAME       "
        call instance void @READER::RDRERR(valuetype T_array_99 A)
        /* nop */
    L_while_test_2:
        ldloc _F
        ldfld class @READER @READER_PLECMD::_slink
        ldloc _F
        ldfld class @READER @READER_PLECMD::_slink
        ldflda valuetype T_RA @READER::INRA
        call instance bool @READER::RDRGNT(valuetype T_RA& A)
        brtrue L_while_1
        /* nop */
        leave L_Epilogue
    }
    catch [lpcRuntime]LPC.NonLocalGoto
    {
        ldfld int32 [lpcRuntime]LPC.NonLocalGoto::label
        dup
        ldc.i4 8
        beq GOTO_L_21
        rethrow
    GOTO_L_21:
        leave L_21
    }
    
    L_Epilogue:
        ret
    }

// line 3131

    .method public
    void PRICMD()
    {
        .maxstack 32
    
        .locals init(class @READER_PRICMD _F)
        
        newobj instance void @READER_PRICMD::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER @READER_PRICMD::_slink
    
    L_Entry:
        // line 3134
        ldloc _F
        ldfld class @READER @READER_PRICMD::_slink
        ldloc _F
        ldfld class @READER @READER_PRICMD::_slink
        ldflda valuetype T_RA @READER::INRA
        call instance bool @READER::RDRGNT(valuetype T_RA& A)
        brfalse L_else_1
        // line 3135
        ldsfld valuetype T_array_38 _G::MBORD
        call void PRINTB(valuetype T_array_38 A)
        br L_if_end_2
    L_else_1:
        // line 3137
        ldsflda valuetype T_RB _G::BOARD
        ldfld valuetype T_array_38 T_RB::RBIS
        call void PRINTB(valuetype T_array_38 A)
    L_if_end_2:
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3141

    .method public
    void PAMCMD()
    {
        .maxstack 32
    
        .locals init(class @READER_PAMCMD _F)
        
        newobj instance void @READER_PAMCMD::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER @READER_PAMCMD::_slink
    
    L_Entry:
        // line 3144
        br L_while_test_2
    L_while_1:
        // line 3145
        ldloc _F
        ldfld class @READER @READER_PAMCMD::_slink
        ldflda valuetype T_RA @READER::INRA
        ldc.i4 1
        call instance uint8& T_RA::ldadr(int32)
        ldobj uint8
        ldc.i4 84 // 'T'
        ceq
        brfalse L_else_3
        // line 3146
        ldsfld valuetype T_RX _G::ATKTO
        call void PRINAM(valuetype T_RX A)
        br L_if_end_4
    L_else_3:
        // line 3148
        ldloc _F
        ldfld class @READER @READER_PAMCMD::_slink
        ldflda valuetype T_RA @READER::INRA
        ldc.i4 1
        call instance uint8& T_RA::ldadr(int32)
        ldobj uint8
        ldc.i4 70 // 'F'
        ceq
        brfalse L_else_5
        // line 3149
        ldsfld valuetype T_RX _G::ATKFR
        call void PRINAM(valuetype T_RX A)
        br L_if_end_6
    L_else_5:
        // line 3151
        ldloc _F
        ldfld class @READER @READER_PAMCMD::_slink
        ldsfld valuetype T_array_99 STRING_90    // " ATTACK MAP NOT TO OR FROM    "
        call instance void @READER::RDRERR(valuetype T_array_99 A)
    L_if_end_6:
    L_if_end_4:
    L_while_test_2:
        ldloc _F
        ldfld class @READER @READER_PAMCMD::_slink
        ldloc _F
        ldfld class @READER @READER_PAMCMD::_slink
        ldflda valuetype T_RA @READER::INRA
        call instance bool @READER::RDRGNT(valuetype T_RA& A)
        brtrue L_while_1
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3155

    .method public
    void POPCMD()
    {
        .maxstack 32
    
        .locals init(
            class @READER_POPCMD _F,
            int32 $tmpEndValue1,
            int32 $tmpIndex2,
            int32 $tmpIndex3)
        
        newobj instance void @READER_POPCMD::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER @READER_POPCMD::_slink
    
    L_Entry:
        // line 3163
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldsflda valuetype T_array_27 _G::XTMA
        ldsflda valuetype T_RB _G::BOARD
        ldfld int32 T_RB::RBTM
        call instance valuetype T_RA& T_array_27::ldadr(int32)
        ldobj valuetype T_RA
        call string T_RA::arrayToString(valuetype T_RA)
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldstr " TO MOVE."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        // line 3164
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldsflda valuetype T_RB _G::BOARD
        ldfld int8 T_RB::RBTS
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldstr " ENPASSANT."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        // line 3165
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "MOVE NUMBER "
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldsflda valuetype T_RB _G::BOARD
        ldfld int32 T_RB::RBTI
        call instance void [lpcRuntime]LPC.File::Write(int32)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        // line 3166
        ldc.i4 3
        stloc $tmpEndValue1
        ldc.i4 0
        dup
        ldloc $tmpEndValue1
        bgt L_for_end_2
        dup
        ldc.i4 0
        ldc.i4 3
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex2
        ldloc _F
        ldloc $tmpIndex2
        stfld int32 @READER_POPCMD::INTQ
    L_for_loop_1:
        // line 3167
        ldsflda valuetype T_RB _G::BOARD
        ldfld valuetype T_SQ T_RB::RBSQ
        ldloc _F
        ldfld int32 @READER_POPCMD::INTQ
        call bool _SetContains(valuetype T_SQ s, int32 val)
        brfalse L_if_end_3
        // line 3168
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldsflda valuetype T_array_31 _G::XTQA
        ldloc _F
        ldfld int32 @READER_POPCMD::INTQ
        call instance valuetype T_RA& T_array_31::ldadr(int32)
        ldobj valuetype T_RA
        call string T_RA::arrayToString(valuetype T_RA)
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldstr " SIDE CASTLE LEGAL."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
    L_if_end_3:
        ldloc _F
        ldfld int32 @READER_POPCMD::INTQ
        dup
        ldloc $tmpEndValue1
        beq L_for_end_2
        ldc.i4.1
        add
        dup
        ldc.i4 0
        ldc.i4 3
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex3
        ldloc _F
        ldloc $tmpIndex3
        stfld int32 @READER_POPCMD::INTQ
        br L_for_loop_1
    L_for_end_2:
        pop
        /* nop */
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3173

    .method public
    void PMVCMD()
    {
        .maxstack 32
    
        .locals init(
            class @READER_PMVCMD _F,
            int16 $tmpEndValue1,
            int16 $tmpIndex2,
            int16 $tmpIndex3)
        
        newobj instance void @READER_PMVCMD::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER @READER_PMVCMD::_slink
    
    L_Entry:
        // line 3179
        call void LSTMOV()
        // line 3180
        ldsfld int16 _G::JNTW
        ldc.i4 1
        sub
        stloc $tmpEndValue1
        ldc.i4 1
        dup
        ldloc $tmpEndValue1
        bgt L_for_end_2
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex2
        ldloc _F
        ldloc $tmpIndex2
        stfld int16 @READER_PMVCMD::INTW
    L_for_loop_1:
        // line 3182
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldc.i4 4
        ldc.i4.0
        ldloc _F
        ldfld int16 @READER_PMVCMD::INTW
        call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
        dup
        ldstr "   "
        call instance void [lpcRuntime]LPC.File::Write(string)
        pop
        // line 3183
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @READER_PMVCMD::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldobj valuetype T_RM
        call void PRIMOV(valuetype T_RM A)
        // line 3184
        ldloc _F
        ldfld int16 @READER_PMVCMD::INTW
        conv.r8
        ldc.i4 20
        conv.r8
        div
        ldloc _F
        ldfld int16 @READER_PMVCMD::INTW
        ldc.i4 20
        div
        conv.r8
        ceq
        brfalse L_if_end_3
        // line 3185
        call void PAUSER()
    L_if_end_3:
        /* nop */
        ldloc _F
        ldfld int16 @READER_PMVCMD::INTW
        dup
        ldloc $tmpEndValue1
        beq L_for_end_2
        ldc.i4.1
        add
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex3
        ldloc _F
        ldloc $tmpIndex3
        stfld int16 @READER_PMVCMD::INTW
        br L_for_loop_1
    L_for_end_2:
        pop
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3190

    .method public
    void SWICMD()
    {
        .maxstack 32
    
        .locals init(class @READER_SWICMD _F)
        
        newobj instance void @READER_SWICMD::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER @READER_SWICMD::_slink
    
    L_Entry:
    .try
    {
        // line 3228
    L_21:
        br L_while_test_2
    L_while_1:
        // line 3230
        ldloc _F
        ldsfld valuetype T_RA STRING_91    // "EC        "
        ldsflda bool _G::SWEC
        call instance void @READER_SWICMD::SWIONE(valuetype T_RA A, bool& B)
        // line 3231
        ldloc _F
        ldsfld valuetype T_RA STRING_92    // "PA        "
        ldsflda bool _G::SWPA
        call instance void @READER_SWICMD::SWIONE(valuetype T_RA A, bool& B)
        // line 3232
        ldloc _F
        ldsfld valuetype T_RA STRING_93    // "PS        "
        ldsflda bool _G::SWPS
        call instance void @READER_SWICMD::SWIONE(valuetype T_RA A, bool& B)
        // line 3233
        ldloc _F
        ldsfld valuetype T_RA STRING_94    // "RE        "
        ldsflda bool _G::SWRE
        call instance void @READER_SWICMD::SWIONE(valuetype T_RA A, bool& B)
        // line 3234
        ldloc _F
        ldsfld valuetype T_RA STRING_95    // "SU        "
        ldsflda bool _G::SWSU
        call instance void @READER_SWICMD::SWIONE(valuetype T_RA A, bool& B)
        // line 3235
        ldloc _F
        ldsfld valuetype T_RA STRING_96    // "TR        "
        ldsflda bool _G::SWTR
        call instance void @READER_SWICMD::SWIONE(valuetype T_RA A, bool& B)
        // line 3236
        ldloc _F
        ldfld class @READER @READER_SWICMD::_slink
        ldsfld valuetype T_array_99 STRING_97    // " INVALID SWITCH OPTION        "
        call instance void @READER::RDRERR(valuetype T_array_99 A)
        /* nop */
    L_while_test_2:
        ldloc _F
        ldfld class @READER @READER_SWICMD::_slink
        ldloc _F
        ldfld class @READER @READER_SWICMD::_slink
        ldflda valuetype T_RA @READER::INRA
        call instance bool @READER::RDRGNT(valuetype T_RA& A)
        brtrue L_while_1
        /* nop */
        leave L_Epilogue
    }
    catch [lpcRuntime]LPC.NonLocalGoto
    {
        ldfld int32 [lpcRuntime]LPC.NonLocalGoto::label
        dup
        ldc.i4 9
        beq GOTO_L_21
        rethrow
    GOTO_L_21:
        leave L_21
    }
    
    L_Epilogue:
        ret
    }

// line 3241

    .method public
    void STACMD()
    {
        .maxstack 32
    
        .locals init(class @READER_STACMD _F)
        
        newobj instance void @READER_STACMD::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER @READER_STACMD::_slink
    
    L_Entry:
    .try
    {
        // line 3350
        call void CLSTAT()
        // line 3351
        ldloc _F
        ldc.i4 0
        stfld int32 @READER_STACMD::INTM
        // line 3353
    L_21:
        br L_while_test_2
    L_while_1:
        // line 3355
        ldloc _F
        ldsfld valuetype T_RA STRING_108    // "D         "
        ldloc _F
        ldftn instance void @READER_STACMD::STADRK()
        newobj instance void T_READER_STACMD_subroutine_203::.ctor(object, native uint)
        call instance void @READER_STACMD::STAOPT(valuetype T_RA A, class T_READER_STACMD_subroutine_201 STAXXX)
        // line 3356
        ldloc _F
        ldsfld valuetype T_RA STRING_109    // "EP        "
        ldloc _F
        ldftn instance void @READER_STACMD::STAENP()
        newobj instance void T_READER_STACMD_subroutine_205::.ctor(object, native uint)
        call instance void @READER_STACMD::STAOPT(valuetype T_RA A, class T_READER_STACMD_subroutine_201 STAXXX)
        // line 3357
        ldloc _F
        ldsfld valuetype T_RA STRING_110    // "G         "
        ldloc _F
        ldftn instance void @READER_STACMD::STAGOS()
        newobj instance void T_READER_STACMD_subroutine_207::.ctor(object, native uint)
        call instance void @READER_STACMD::STAOPT(valuetype T_RA A, class T_READER_STACMD_subroutine_201 STAXXX)
        // line 3358
        ldloc _F
        ldsfld valuetype T_RA STRING_111    // "L         "
        ldloc _F
        ldftn instance void @READER_STACMD::STALIT()
        newobj instance void T_READER_STACMD_subroutine_209::.ctor(object, native uint)
        call instance void @READER_STACMD::STAOPT(valuetype T_RA A, class T_READER_STACMD_subroutine_201 STAXXX)
        // line 3359
        ldloc _F
        ldsfld valuetype T_RA STRING_112    // "N         "
        ldloc _F
        ldftn instance void @READER_STACMD::STANUM()
        newobj instance void T_READER_STACMD_subroutine_211::.ctor(object, native uint)
        call instance void @READER_STACMD::STAOPT(valuetype T_RA A, class T_READER_STACMD_subroutine_201 STAXXX)
        // line 3360
        ldloc _F
        ldsfld valuetype T_RA STRING_113    // "OO        "
        ldloc _F
        ldftn instance void @READER_STACMD::STACAK()
        newobj instance void T_READER_STACMD_subroutine_213::.ctor(object, native uint)
        call instance void @READER_STACMD::STAOPT(valuetype T_RA A, class T_READER_STACMD_subroutine_201 STAXXX)
        // line 3361
        ldloc _F
        ldsfld valuetype T_RA STRING_114    // "OOO       "
        ldloc _F
        ldftn instance void @READER_STACMD::STACAQ()
        newobj instance void T_READER_STACMD_subroutine_215::.ctor(object, native uint)
        call instance void @READER_STACMD::STAOPT(valuetype T_RA A, class T_READER_STACMD_subroutine_201 STAXXX)
        // line 3362
        call void CLSTAT()
        // line 3363
        ldloc _F
        ldfld class @READER @READER_STACMD::_slink
        ldsfld valuetype T_array_99 STRING_115    // " INVALID STATUS OPTION        "
        call instance void @READER::RDRERR(valuetype T_array_99 A)
        /* nop */
    L_while_test_2:
        ldloc _F
        ldfld class @READER @READER_STACMD::_slink
        ldloc _F
        ldflda valuetype T_RA @READER_STACMD::INRA
        call instance bool @READER::RDRGNT(valuetype T_RA& A)
        brtrue L_while_1
        /* nop */
        leave L_Epilogue
    }
    catch [lpcRuntime]LPC.NonLocalGoto
    {
        ldfld int32 [lpcRuntime]LPC.NonLocalGoto::label
        dup
        ldc.i4 10
        beq GOTO_L_21
        rethrow
    GOTO_L_21:
        leave L_21
    }
    
    L_Epilogue:
        ret
    }

// line 3368

    .method public
    void WHACMD()
    {
        .maxstack 32
    
        .locals init(class @READER_WHACMD _F)
        
        newobj instance void @READER_WHACMD::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @READER @READER_WHACMD::_slink
    
    L_Entry:
        // line 3371
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldsfld valuetype T_array_99 _G::MOVMS
        call string T_array_99::arrayToString(valuetype T_array_99)
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        /* nop */
    
    L_Epilogue:
        ret
    }
}


// line 3418
//================================================================================
// scope: MINENG_ADDCHR (level : 3)

.class @MINENG_ADDCHR
{
    // slink
    .field public class @MINENG _slink

    // parameters
    .field public uint8 A

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3428
//================================================================================
// scope: MINENG_ADDSQR (level : 3)

.class @MINENG_ADDSQR
{
    // slink
    .field public class @MINENG _slink

    // parameters
    .field public int8 A
    .field public valuetype T_RD B

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3478
//================================================================================
// scope: MINENG_ADDWRD (level : 3)

.class @MINENG_ADDWRD
{
    // slink
    .field public class @MINENG _slink

    // parameters
    .field public valuetype T_RA A
    .field public int8 B

    // local variables
    .field public int8 INTA

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3491
//================================================================================
// scope: MINENG_DIFFER (level : 3)

.class @MINENG_DIFFER
{
    // slink
    .field public class @MINENG _slink

    // parameters
    .field public valuetype T_RM A
    .field public valuetype T_RM B

    // local variables
    .field public bool _fnvalue
    .field public bool INTB

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3516
//================================================================================
// scope: MINENG_SETSQD (level : 3)

.class @MINENG_SETSQD
{
    // slink
    .field public class @MINENG _slink

    // parameters
    .field public int8 A
    .field public valuetype T_RD B
    .field public valuetype T_set_100* C
    .field public valuetype T_set_100* O

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3544
//================================================================================
// scope: MINENG_MINGEN (level : 3)

.class @MINENG_MINGEN
{
    // slink
    .field public class @MINENG _slink

    // parameters
    .field public valuetype T_RM A
    .field public int32 B
    .field public int32 C

    // local variables
    .field public valuetype T_set_100 INLF
    .field public valuetype T_set_100 INLR
    .field public valuetype T_set_100 INRF
    .field public valuetype T_set_100 INRR
    .field public int32 INTG
    .field public int32 INTI
    .field public int16 INTW

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3410
//================================================================================
// scope: MINENG (level : 2)

.class @MINENG
{
    // parameters
    .field public valuetype T_RM A
    .field public valuetype T_RA B

    // local variables
    .field public int8 INTN

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 3418

    .method public
    void ADDCHR(uint8 A)
    {
        .maxstack 32
    
        .locals init(class @MINENG_ADDCHR _F)
        
        newobj instance void @MINENG_ADDCHR::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @MINENG @MINENG_ADDCHR::_slink
        
        ldloc _F
        ldarg A
        stfld uint8 @MINENG_ADDCHR::A
    
    L_Entry:
        // line 3422
        ldsflda valuetype T_array_99 _G::MOVMS
        ldloc _F
        ldfld class @MINENG @MINENG_ADDCHR::_slink
        ldfld int8 @MINENG::INTN
        call instance uint8& T_array_99::ldadr(int32)
        ldloc _F
        ldfld uint8 @MINENG_ADDCHR::A
        stobj uint8
        // line 3423
        ldloc _F
        ldfld class @MINENG @MINENG_ADDCHR::_slink
        ldfld int8 @MINENG::INTN
        ldc.i4 30
        clt
        brfalse L_if_end_1
        // line 3424
        ldloc _F
        ldfld class @MINENG @MINENG_ADDCHR::_slink
        ldloc _F
        ldfld class @MINENG @MINENG_ADDCHR::_slink
        ldfld int8 @MINENG::INTN
        ldc.i4 1
        add
        dup
        ldc.i4 1
        ldc.i4 30
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 @MINENG::INTN
    L_if_end_1:
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3428

    .method public
    void ADDSQR(int8 A, valuetype T_RD B)
    {
        .maxstack 32
    
        .locals init(
            class @MINENG_ADDSQR _F,
            valuetype T_set_100 $tmpSetLiteral1,
            int32 $tmpSwitchValue2,
            int32 $tmpSwitchValue3,
            int32 $tmpSwitchValue4)
        
        newobj instance void @MINENG_ADDSQR::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @MINENG @MINENG_ADDSQR::_slink
        
        ldloc _F
        ldarg A
        stfld int8 @MINENG_ADDSQR::A
        
        ldloc _F
        ldarg B
        stfld valuetype T_RD @MINENG_ADDSQR::B
    
        ldloca $tmpSetLiteral1
        ldc.i4 0
        ldc.i4 3
        call instance void T_set_100::addRange(int32, int32)
    
    L_Entry:
        // line 3435
        ldloc _F
        ldflda valuetype T_RD @MINENG_ADDSQR::B
        ldfld bool T_RD::RDPC
        brfalse L_if_end_1
        // line 3436
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldsflda valuetype T_array_23 _G::XTUC
        ldsflda valuetype T_array_14 _G::XTPU
        ldsflda valuetype T_array_38 _G::MBORD
        ldloc _F
        ldfld int8 @MINENG_ADDSQR::A
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        call instance int32& T_array_14::ldadr(int32)
        ldobj int32
        call instance uint8& T_array_23::ldadr(int32)
        ldobj uint8
        call instance void @MINENG::ADDCHR(uint8 A)
    L_if_end_1:
        // line 3437
        ldloc _F
        ldflda valuetype T_RD @MINENG_ADDSQR::B
        ldfld bool T_RD::RDSL
        brfalse L_if_end_2
        // line 3438
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 47 // '/'
        call instance void @MINENG::ADDCHR(uint8 A)
    L_if_end_2:
        // line 3439
        ldloc _F
        ldflda valuetype T_RD @MINENG_ADDSQR::B
        ldfld bool T_RD::RDKQ
        brfalse L_if_end_3
        // line 3440
        ldloc $tmpSetLiteral1
        ldsflda valuetype T_array_38 _G::XTSF
        ldloc _F
        ldfld int8 @MINENG_ADDSQR::A
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        call bool _SetContains(valuetype T_set_100 s, int32 val)
        brfalse L_else_4
        // line 3441
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 81 // 'Q'
        call instance void @MINENG::ADDCHR(uint8 A)
        br L_if_end_5
    L_else_4:
        // line 3442
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 75 // 'K'
        call instance void @MINENG::ADDCHR(uint8 A)
    L_if_end_5:
    L_if_end_3:
        // line 3443
        ldloc _F
        ldflda valuetype T_RD @MINENG_ADDSQR::B
        ldfld bool T_RD::RDNB
        brfalse L_if_end_6
        // line 3444
        ldsflda valuetype T_array_38 _G::XTSF
        ldloc _F
        ldfld int8 @MINENG_ADDSQR::A
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        stloc $tmpSwitchValue2
        ldloc $tmpSwitchValue2
        ldc.i4 0
        beq L_case_9
        ldloc $tmpSwitchValue2
        ldc.i4 7
        beq L_case_9
        br L_check_case_8
    L_case_9:
        // line 3445
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 82 // 'R'
        call instance void @MINENG::ADDCHR(uint8 A)
        br L_case_end_7
    L_check_case_8:
        ldloc $tmpSwitchValue2
        ldc.i4 1
        beq L_case_11
        ldloc $tmpSwitchValue2
        ldc.i4 6
        beq L_case_11
        br L_check_case_10
    L_case_11:
        // line 3446
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 78 // 'N'
        call instance void @MINENG::ADDCHR(uint8 A)
        br L_case_end_7
    L_check_case_10:
        ldloc $tmpSwitchValue2
        ldc.i4 2
        beq L_case_13
        ldloc $tmpSwitchValue2
        ldc.i4 5
        beq L_case_13
        br L_check_case_12
    L_case_13:
        // line 3447
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 66 // 'B'
        call instance void @MINENG::ADDCHR(uint8 A)
        br L_case_end_7
    L_check_case_12:
        ldloc $tmpSwitchValue2
        ldc.i4 3
        bne.un L_check_case_14
        // line 3448
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 81 // 'Q'
        call instance void @MINENG::ADDCHR(uint8 A)
        br L_case_end_7
    L_check_case_14:
        ldloc $tmpSwitchValue2
        ldc.i4 4
        bne.un L_case_end_7
        // line 3449
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 75 // 'K'
        call instance void @MINENG::ADDCHR(uint8 A)
    L_case_end_7:
    L_if_end_6:
        // line 3451
        ldloc _F
        ldflda valuetype T_RD @MINENG_ADDSQR::B
        ldfld bool T_RD::RDRK
        brfalse L_if_end_15
        // line 3452
        ldsfld int32 _G::JNTM
        ldc.i4 0
        ceq
        brfalse L_else_16
        // line 3453
        ldsflda valuetype T_array_38 _G::XTSR
        ldloc _F
        ldfld int8 @MINENG_ADDSQR::A
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        stloc $tmpSwitchValue3
        ldloc $tmpSwitchValue3
        ldc.i4 0
        bne.un L_check_case_19
        // line 3454
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 49 // '1'
        call instance void @MINENG::ADDCHR(uint8 A)
        br L_case_end_18
    L_check_case_19:
        ldloc $tmpSwitchValue3
        ldc.i4 1
        bne.un L_check_case_20
        // line 3455
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 50 // '2'
        call instance void @MINENG::ADDCHR(uint8 A)
        br L_case_end_18
    L_check_case_20:
        ldloc $tmpSwitchValue3
        ldc.i4 2
        bne.un L_check_case_21
        // line 3456
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 51 // '3'
        call instance void @MINENG::ADDCHR(uint8 A)
        br L_case_end_18
    L_check_case_21:
        ldloc $tmpSwitchValue3
        ldc.i4 3
        bne.un L_check_case_22
        // line 3457
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 52 // '4'
        call instance void @MINENG::ADDCHR(uint8 A)
        br L_case_end_18
    L_check_case_22:
        ldloc $tmpSwitchValue3
        ldc.i4 4
        bne.un L_check_case_23
        // line 3458
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 53 // '5'
        call instance void @MINENG::ADDCHR(uint8 A)
        br L_case_end_18
    L_check_case_23:
        ldloc $tmpSwitchValue3
        ldc.i4 5
        bne.un L_check_case_24
        // line 3459
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 54 // '6'
        call instance void @MINENG::ADDCHR(uint8 A)
        br L_case_end_18
    L_check_case_24:
        ldloc $tmpSwitchValue3
        ldc.i4 6
        bne.un L_check_case_25
        // line 3460
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 55 // '7'
        call instance void @MINENG::ADDCHR(uint8 A)
        br L_case_end_18
    L_check_case_25:
        ldloc $tmpSwitchValue3
        ldc.i4 7
        bne.un L_case_end_18
        // line 3461
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 56 // '8'
        call instance void @MINENG::ADDCHR(uint8 A)
    L_case_end_18:
        br L_if_end_17
    L_else_16:
        // line 3464
        ldsflda valuetype T_array_38 _G::XTSR
        ldloc _F
        ldfld int8 @MINENG_ADDSQR::A
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        stloc $tmpSwitchValue4
        ldloc $tmpSwitchValue4
        ldc.i4 0
        bne.un L_check_case_27
        // line 3465
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 56 // '8'
        call instance void @MINENG::ADDCHR(uint8 A)
        br L_case_end_26
    L_check_case_27:
        ldloc $tmpSwitchValue4
        ldc.i4 1
        bne.un L_check_case_28
        // line 3466
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 55 // '7'
        call instance void @MINENG::ADDCHR(uint8 A)
        br L_case_end_26
    L_check_case_28:
        ldloc $tmpSwitchValue4
        ldc.i4 2
        bne.un L_check_case_29
        // line 3467
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 54 // '6'
        call instance void @MINENG::ADDCHR(uint8 A)
        br L_case_end_26
    L_check_case_29:
        ldloc $tmpSwitchValue4
        ldc.i4 3
        bne.un L_check_case_30
        // line 3468
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 53 // '5'
        call instance void @MINENG::ADDCHR(uint8 A)
        br L_case_end_26
    L_check_case_30:
        ldloc $tmpSwitchValue4
        ldc.i4 4
        bne.un L_check_case_31
        // line 3469
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 52 // '4'
        call instance void @MINENG::ADDCHR(uint8 A)
        br L_case_end_26
    L_check_case_31:
        ldloc $tmpSwitchValue4
        ldc.i4 5
        bne.un L_check_case_32
        // line 3470
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 51 // '3'
        call instance void @MINENG::ADDCHR(uint8 A)
        br L_case_end_26
    L_check_case_32:
        ldloc $tmpSwitchValue4
        ldc.i4 6
        bne.un L_check_case_33
        // line 3471
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 50 // '2'
        call instance void @MINENG::ADDCHR(uint8 A)
        br L_case_end_26
    L_check_case_33:
        ldloc $tmpSwitchValue4
        ldc.i4 7
        bne.un L_case_end_26
        // line 3472
        ldloc _F
        ldfld class @MINENG @MINENG_ADDSQR::_slink
        ldc.i4 49 // '1'
        call instance void @MINENG::ADDCHR(uint8 A)
    L_case_end_26:
    L_if_end_17:
    L_if_end_15:
        /* nop */
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3478

    .method public
    void ADDWRD(valuetype T_RA A, int8 B)
    {
        .maxstack 32
    
        .locals init(
            class @MINENG_ADDWRD _F,
            int8 $tmpEndValue1,
            int8 $tmpIndex2,
            int8 $tmpIndex3)
        
        newobj instance void @MINENG_ADDWRD::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @MINENG @MINENG_ADDWRD::_slink
        
        ldloc _F
        ldarg A
        stfld valuetype T_RA @MINENG_ADDWRD::A
        
        ldloc _F
        ldarg B
        stfld int8 @MINENG_ADDWRD::B
    
    L_Entry:
        // line 3486
        ldloc _F
        ldfld int8 @MINENG_ADDWRD::B
        stloc $tmpEndValue1
        ldc.i4 1
        dup
        ldloc $tmpEndValue1
        bgt L_for_end_2
        dup
        ldc.i4 1
        ldc.i4 10
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex2
        ldloc _F
        ldloc $tmpIndex2
        stfld int8 @MINENG_ADDWRD::INTA
    L_for_loop_1:
        // line 3487
        ldloc _F
        ldfld class @MINENG @MINENG_ADDWRD::_slink
        ldloc _F
        ldflda valuetype T_RA @MINENG_ADDWRD::A
        ldloc _F
        ldfld int8 @MINENG_ADDWRD::INTA
        call instance uint8& T_RA::ldadr(int32)
        ldobj uint8
        call instance void @MINENG::ADDCHR(uint8 A)
        ldloc _F
        ldfld int8 @MINENG_ADDWRD::INTA
        dup
        ldloc $tmpEndValue1
        beq L_for_end_2
        ldc.i4.1
        add
        dup
        ldc.i4 1
        ldc.i4 10
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex3
        ldloc _F
        ldloc $tmpIndex3
        stfld int8 @MINENG_ADDWRD::INTA
        br L_for_loop_1
    L_for_end_2:
        pop
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3491

    .method public
    bool DIFFER(valuetype T_RM A, valuetype T_RM B)
    {
        .maxstack 32
    
        .locals init(class @MINENG_DIFFER _F)
        
        newobj instance void @MINENG_DIFFER::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @MINENG @MINENG_DIFFER::_slink
        
        ldloc _F
        ldarg A
        stfld valuetype T_RM @MINENG_DIFFER::A
        
        ldloc _F
        ldarg B
        stfld valuetype T_RM @MINENG_DIFFER::B
    
    L_Entry:
        // line 3499
        ldloc _F
        ldloc _F
        ldflda valuetype T_RM @MINENG_DIFFER::A
        ldfld int8 T_RM::RMFR
        ldloc _F
        ldflda valuetype T_RM @MINENG_DIFFER::B
        ldfld int8 T_RM::RMFR
        ceq
        ldc.i4.0
        ceq
        dup
        brtrue L_OR_shortcut_2
        pop
        ldloc _F
        ldflda valuetype T_RM @MINENG_DIFFER::A
        ldfld int8 T_RM::RMTO
        ldloc _F
        ldflda valuetype T_RM @MINENG_DIFFER::B
        ldfld int8 T_RM::RMTO
        ceq
        ldc.i4.0
        ceq
    L_OR_shortcut_2:
        dup
        brtrue L_OR_shortcut_1
        pop
        ldloc _F
        ldflda valuetype T_RM @MINENG_DIFFER::A
        ldfld int32 T_RM::RMCP
        ldloc _F
        ldflda valuetype T_RM @MINENG_DIFFER::B
        ldfld int32 T_RM::RMCP
        ceq
        ldc.i4.0
        ceq
    L_OR_shortcut_1:
        stfld bool @MINENG_DIFFER::INTB
        // line 3500
        ldloc _F
        ldflda valuetype T_RM @MINENG_DIFFER::A
        ldfld bool T_RM::RMPR
        ldloc _F
        ldflda valuetype T_RM @MINENG_DIFFER::B
        ldfld bool T_RM::RMPR
        ceq
        brfalse L_else_3
        // line 3501
        ldloc _F
        ldflda valuetype T_RM @MINENG_DIFFER::A
        ldfld bool T_RM::RMPR
        brfalse L_else_5
        // line 3502
        ldloc _F
        ldloc _F
        ldfld bool @MINENG_DIFFER::INTB
        dup
        brtrue L_OR_shortcut_7
        pop
        ldloc _F
        ldflda valuetype T_RM @MINENG_DIFFER::A
        ldfld int32 T_RM::RMPP
        ldloc _F
        ldflda valuetype T_RM @MINENG_DIFFER::B
        ldfld int32 T_RM::RMPP
        ceq
        ldc.i4.0
        ceq
    L_OR_shortcut_7:
        stfld bool @MINENG_DIFFER::_fnvalue
        br L_if_end_6
    L_else_5:
        // line 3504
        ldloc _F
        ldflda valuetype T_RM @MINENG_DIFFER::A
        ldfld bool T_RM::RMOO
        ldloc _F
        ldflda valuetype T_RM @MINENG_DIFFER::B
        ldfld bool T_RM::RMOO
        ceq
        brfalse L_else_8
        // line 3505
        ldloc _F
        ldflda valuetype T_RM @MINENG_DIFFER::A
        ldfld bool T_RM::RMOO
        brfalse L_else_10
        // line 3506
        ldloc _F
        ldloc _F
        ldfld bool @MINENG_DIFFER::INTB
        dup
        brtrue L_OR_shortcut_12
        pop
        ldloc _F
        ldflda valuetype T_RM @MINENG_DIFFER::A
        ldfld bool T_RM::RMQS
        ldloc _F
        ldflda valuetype T_RM @MINENG_DIFFER::B
        ldfld bool T_RM::RMQS
        ceq
        ldc.i4.0
        ceq
    L_OR_shortcut_12:
        stfld bool @MINENG_DIFFER::_fnvalue
        br L_if_end_11
    L_else_10:
        // line 3508
        ldloc _F
        ldloc _F
        ldfld bool @MINENG_DIFFER::INTB
        stfld bool @MINENG_DIFFER::_fnvalue
    L_if_end_11:
        br L_if_end_9
    L_else_8:
        // line 3510
        ldloc _F
        ldc.i4 1 // (true)
        stfld bool @MINENG_DIFFER::_fnvalue
    L_if_end_9:
    L_if_end_6:
        br L_if_end_4
    L_else_3:
        // line 3512
        ldloc _F
        ldc.i4 1 // (true)
        stfld bool @MINENG_DIFFER::_fnvalue
    L_if_end_4:
        /* nop */
    
    L_Epilogue:
        ldloc _F
        ldfld bool @MINENG_DIFFER::_fnvalue
        ret
    }

// line 3516

    .method public
    void SETSQD(int8 A, valuetype T_RD B, valuetype T_set_100& C, valuetype T_set_100& O)
    {
        .maxstack 32
    
        .locals init(
            class @MINENG_SETSQD _F,
            valuetype T_set_100 $tmpSetLiteral1,
            valuetype T_set_100 $tmpSetLiteral2,
            valuetype T_set_100 $tmpSetLiteral3,
            int32 $tmpSwitchValue4,
            valuetype T_set_100 $tmpSetLiteral5,
            valuetype T_set_100 $tmpSetLiteral6,
            valuetype T_set_100 $tmpSetLiteral7,
            valuetype T_set_100 $tmpSetLiteral8,
            valuetype T_set_100 $tmpSetLiteral9,
            valuetype T_set_100 $tmpSetLiteral10,
            valuetype T_set_100& pinned $C,
            valuetype T_set_100& pinned $O)
        
        newobj instance void @MINENG_SETSQD::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @MINENG @MINENG_SETSQD::_slink
        
        ldloc _F
        ldarg A
        stfld int8 @MINENG_SETSQD::A
        
        ldloc _F
        ldarg B
        stfld valuetype T_RD @MINENG_SETSQD::B
        
        ldarg C
        stloc $C
        
        ldloc _F
        ldarg C
        stfld valuetype T_set_100* @MINENG_SETSQD::C
        
        ldarg O
        stloc $O
        
        ldloc _F
        ldarg O
        stfld valuetype T_set_100* @MINENG_SETSQD::O
    
        ldloca $tmpSetLiteral1
        ldc.i4 0
        ldc.i4 7
        call instance void T_set_100::addRange(int32, int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 0
        ldc.i4 7
        call instance void T_set_100::addRange(int32, int32)
    
        ldloca $tmpSetLiteral5
        ldc.i4 0
        call instance void T_set_100::addValue(int32)
        ldloca $tmpSetLiteral5
        ldc.i4 7
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral6
        ldc.i4 1
        call instance void T_set_100::addValue(int32)
        ldloca $tmpSetLiteral6
        ldc.i4 6
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral7
        ldc.i4 2
        call instance void T_set_100::addValue(int32)
        ldloca $tmpSetLiteral7
        ldc.i4 5
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral8
        ldc.i4 3
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral9
        ldc.i4 4
        call instance void T_set_100::addValue(int32)
    
    L_Entry:
        // line 3524
        ldloc _F
        ldfld valuetype T_set_100* @MINENG_SETSQD::C
        ldloc $tmpSetLiteral1
        stobj valuetype T_set_100
        // line 3525
        ldloc _F
        ldfld valuetype T_set_100* @MINENG_SETSQD::O
        ldloc $tmpSetLiteral2
        stobj valuetype T_set_100
        // line 3528
        ldloc _F
        ldflda valuetype T_RD @MINENG_SETSQD::B
        ldfld bool T_RD::RDKQ
        dup
        brfalse L_AND_shortcut_1
        pop
        ldloc _F
        ldflda valuetype T_RD @MINENG_SETSQD::B
        ldfld bool T_RD::RDNB
    L_AND_shortcut_1:
        brfalse L_if_end_2
        // line 3529
        ldloca $tmpSetLiteral3
        call instance void T_set_100::clear()
        ldloca $tmpSetLiteral3
        ldsflda valuetype T_array_38 _G::XTSF
        ldloc _F
        ldfld int8 @MINENG_SETSQD::A
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        call instance void T_set_100::addValue(int32)
        ldloc _F
        ldfld valuetype T_set_100* @MINENG_SETSQD::O
        ldloc $tmpSetLiteral3
        stobj valuetype T_set_100
    L_if_end_2:
        // line 3530
        ldloc _F
        ldflda valuetype T_RD @MINENG_SETSQD::B
        ldfld bool T_RD::RDKQ
        ldc.i4.0
        ceq
        dup
        brfalse L_AND_shortcut_3
        pop
        ldloc _F
        ldflda valuetype T_RD @MINENG_SETSQD::B
        ldfld bool T_RD::RDNB
    L_AND_shortcut_3:
        brfalse L_if_end_4
        // line 3531
        ldsflda valuetype T_array_38 _G::XTSF
        ldloc _F
        ldfld int8 @MINENG_SETSQD::A
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        stloc $tmpSwitchValue4
        ldloc $tmpSwitchValue4
        ldc.i4 0
        beq L_case_7
        ldloc $tmpSwitchValue4
        ldc.i4 7
        beq L_case_7
        br L_check_case_6
    L_case_7:
        // line 3532
        ldloc _F
        ldfld valuetype T_set_100* @MINENG_SETSQD::O
        ldloc $tmpSetLiteral5
        stobj valuetype T_set_100
        br L_case_end_5
    L_check_case_6:
        ldloc $tmpSwitchValue4
        ldc.i4 1
        beq L_case_9
        ldloc $tmpSwitchValue4
        ldc.i4 6
        beq L_case_9
        br L_check_case_8
    L_case_9:
        // line 3533
        ldloc _F
        ldfld valuetype T_set_100* @MINENG_SETSQD::O
        ldloc $tmpSetLiteral6
        stobj valuetype T_set_100
        br L_case_end_5
    L_check_case_8:
        ldloc $tmpSwitchValue4
        ldc.i4 2
        beq L_case_11
        ldloc $tmpSwitchValue4
        ldc.i4 5
        beq L_case_11
        br L_check_case_10
    L_case_11:
        // line 3534
        ldloc _F
        ldfld valuetype T_set_100* @MINENG_SETSQD::O
        ldloc $tmpSetLiteral7
        stobj valuetype T_set_100
        br L_case_end_5
    L_check_case_10:
        ldloc $tmpSwitchValue4
        ldc.i4 3
        bne.un L_check_case_12
        // line 3535
        ldloc _F
        ldfld valuetype T_set_100* @MINENG_SETSQD::O
        ldloc $tmpSetLiteral8
        stobj valuetype T_set_100
        br L_case_end_5
    L_check_case_12:
        ldloc $tmpSwitchValue4
        ldc.i4 4
        bne.un L_case_end_5
        // line 3536
        ldloc _F
        ldfld valuetype T_set_100* @MINENG_SETSQD::O
        ldloc $tmpSetLiteral9
        stobj valuetype T_set_100
    L_case_end_5:
    L_if_end_4:
        // line 3538
        ldloc _F
        ldflda valuetype T_RD @MINENG_SETSQD::B
        ldfld bool T_RD::RDRK
        brfalse L_if_end_13
        // line 3539
        ldloca $tmpSetLiteral10
        call instance void T_set_100::clear()
        ldloca $tmpSetLiteral10
        ldsflda valuetype T_array_38 _G::XTSR
        ldloc _F
        ldfld int8 @MINENG_SETSQD::A
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        call instance void T_set_100::addValue(int32)
        ldloc _F
        ldfld valuetype T_set_100* @MINENG_SETSQD::C
        ldloc $tmpSetLiteral10
        stobj valuetype T_set_100
    L_if_end_13:
        /* nop */
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3544

    .method public
    void MINGEN(valuetype T_RM A, int32 B, int32 C)
    {
        .maxstack 32
    
        .locals init(
            class @MINENG_MINGEN _F,
            int32 $tmpEndValue1,
            int32 $tmpIndex2,
            int16 $tmpEndValue3,
            int16 $tmpIndex4,
            int16 $tmpIndex5,
            int32 $tmpIndex6)
        
        newobj instance void @MINENG_MINGEN::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @MINENG @MINENG_MINGEN::_slink
        
        ldloc _F
        ldarg A
        stfld valuetype T_RM @MINENG_MINGEN::A
        
        ldloc _F
        ldarg B
        stfld int32 @MINENG_MINGEN::B
        
        ldloc _F
        ldarg C
        stfld int32 @MINENG_MINGEN::C
    
    L_Entry:
        // line 3565
        ldloc _F
        ldfld int32 @MINENG_MINGEN::C
        stloc $tmpEndValue1
        ldloc _F
        ldfld int32 @MINENG_MINGEN::B
        dup
        ldloc $tmpEndValue1
        bgt L_for_end_2
        stloc $tmpIndex2
        ldloc _F
        ldloc $tmpIndex2
        stfld int32 @MINENG_MINGEN::INTI
    L_for_loop_1:
        // line 3568
        ldloc _F
        ldflda valuetype T_RM @MINENG_MINGEN::A
        ldfld bool T_RM::RMPR
        brfalse L_else_3
        // line 3569
        ldloc _F
        ldloc _F
        ldflda valuetype T_RM @MINENG_MINGEN::A
        ldfld int32 T_RM::RMPP
        stfld int32 @MINENG_MINGEN::INTG
        br L_if_end_4
    L_else_3:
        // line 3571
        ldloc _F
        ldc.i4 3
        stfld int32 @MINENG_MINGEN::INTG
    L_if_end_4:
        // line 3572
        ldloc _F
        ldfld class @MINENG @MINENG_MINGEN::_slink
        ldloc _F
        ldflda valuetype T_RM @MINENG_MINGEN::A
        ldfld int8 T_RM::RMFR
        ldsflda valuetype T_array_12 _G::SYNTX
        ldloc _F
        ldfld int32 @MINENG_MINGEN::INTI
        call instance valuetype T_RY& T_array_12::ldadr(int32)
        ldfld valuetype T_RD T_RY::RYLS
        ldloc _F
        ldflda valuetype T_set_100 @MINENG_MINGEN::INLR
        ldloc _F
        ldflda valuetype T_set_100 @MINENG_MINGEN::INLF
        call instance void @MINENG::SETSQD(int8 A, valuetype T_RD B, valuetype T_set_100& C, valuetype T_set_100& O)
        // line 3573
        ldloc _F
        ldfld class @MINENG @MINENG_MINGEN::_slink
        ldloc _F
        ldflda valuetype T_RM @MINENG_MINGEN::A
        ldfld int8 T_RM::RMTO
        ldsflda valuetype T_array_12 _G::SYNTX
        ldloc _F
        ldfld int32 @MINENG_MINGEN::INTI
        call instance valuetype T_RY& T_array_12::ldadr(int32)
        ldfld valuetype T_RD T_RY::RYRS
        ldloc _F
        ldflda valuetype T_set_100 @MINENG_MINGEN::INRR
        ldloc _F
        ldflda valuetype T_set_100 @MINENG_MINGEN::INRF
        call instance void @MINENG::SETSQD(int8 A, valuetype T_RD B, valuetype T_set_100& C, valuetype T_set_100& O)
        // line 3574
        ldsfld int16 _G::JNTW
        ldc.i4 1
        sub
        stloc $tmpEndValue3
        ldc.i4 1
        ldc.i4 1
        add
        dup
        ldloc $tmpEndValue3
        bgt L_for_end_6
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex4
        ldloc _F
        ldloc $tmpIndex4
        stfld int16 @MINENG_MINGEN::INTW
    L_for_loop_5:
        // line 3575
        ldloc _F
        ldfld class @MINENG @MINENG_MINGEN::_slink
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @MINENG_MINGEN::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldobj valuetype T_RM
        ldloc _F
        ldfld valuetype T_RM @MINENG_MINGEN::A
        call instance bool @MINENG::DIFFER(valuetype T_RM A, valuetype T_RM B)
        brfalse L_if_end_7
        // line 3576
        ldsflda valuetype T_array_38 _G::MBORD
        ldloc _F
        ldflda valuetype T_RM @MINENG_MINGEN::A
        ldfld int8 T_RM::RMFR
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        ldsflda valuetype T_array_38 _G::MBORD
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @MINENG_MINGEN::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld int8 T_RM::RMFR
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        ceq
        dup
        brfalse L_AND_shortcut_8
        pop
        ldloc _F
        ldflda valuetype T_RM @MINENG_MINGEN::A
        ldfld int32 T_RM::RMCP
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @MINENG_MINGEN::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld int32 T_RM::RMCP
        ceq
    L_AND_shortcut_8:
        brfalse L_if_end_9
        // line 3579
        ldloc _F
        ldfld valuetype T_set_100 @MINENG_MINGEN::INLR
        ldsflda valuetype T_array_38 _G::XTSR
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @MINENG_MINGEN::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld int8 T_RM::RMFR
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        call bool _SetContains(valuetype T_set_100 s, int32 val)
        dup
        brfalse L_AND_shortcut_13
        pop
        ldloc _F
        ldfld valuetype T_set_100 @MINENG_MINGEN::INRR
        ldsflda valuetype T_array_38 _G::XTSR
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @MINENG_MINGEN::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld int8 T_RM::RMTO
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        call bool _SetContains(valuetype T_set_100 s, int32 val)
    L_AND_shortcut_13:
        dup
        brfalse L_AND_shortcut_12
        pop
        ldloc _F
        ldfld valuetype T_set_100 @MINENG_MINGEN::INLF
        ldsflda valuetype T_array_38 _G::XTSF
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @MINENG_MINGEN::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld int8 T_RM::RMFR
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        call bool _SetContains(valuetype T_set_100 s, int32 val)
    L_AND_shortcut_12:
        dup
        brfalse L_AND_shortcut_11
        pop
        ldloc _F
        ldfld valuetype T_set_100 @MINENG_MINGEN::INRF
        ldsflda valuetype T_array_38 _G::XTSF
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @MINENG_MINGEN::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld int8 T_RM::RMTO
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        call bool _SetContains(valuetype T_set_100 s, int32 val)
    L_AND_shortcut_11:
        dup
        brfalse L_AND_shortcut_10
        pop
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @MINENG_MINGEN::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld bool T_RM::RMPR
        dup
        brfalse L_AND_shortcut_15
        pop
        ldloc _F
        ldfld int32 @MINENG_MINGEN::INTG
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @MINENG_MINGEN::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld int32 T_RM::RMPP
        ceq
    L_AND_shortcut_15:
        dup
        brtrue L_OR_shortcut_14
        pop
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld int16 @MINENG_MINGEN::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld bool T_RM::RMPR
        ldc.i4.0
        ceq
    L_OR_shortcut_14:
    L_AND_shortcut_10:
        brfalse L_if_end_16
        // line 3584
        br L_21
    L_if_end_16:
    L_if_end_9:
    L_if_end_7:
        ldloc _F
        ldfld int16 @MINENG_MINGEN::INTW
        dup
        ldloc $tmpEndValue3
        beq L_for_end_6
        ldc.i4.1
        add
        dup
        ldc.i4 1
        ldc.i4 500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stloc $tmpIndex5
        ldloc _F
        ldloc $tmpIndex5
        stfld int16 @MINENG_MINGEN::INTW
        br L_for_loop_5
    L_for_end_6:
        pop
        // line 3587
        ldloc _F
        ldfld class @MINENG @MINENG_MINGEN::_slink
        ldloc _F
        ldflda valuetype T_RM @MINENG_MINGEN::A
        ldfld int8 T_RM::RMFR
        ldsflda valuetype T_array_12 _G::SYNTX
        ldloc _F
        ldfld int32 @MINENG_MINGEN::INTI
        call instance valuetype T_RY& T_array_12::ldadr(int32)
        ldfld valuetype T_RD T_RY::RYLS
        call instance void @MINENG::ADDSQR(int8 A, valuetype T_RD B)
        // line 3588
        ldloc _F
        ldfld class @MINENG @MINENG_MINGEN::_slink
        ldsflda valuetype T_array_12 _G::SYNTX
        ldloc _F
        ldfld int32 @MINENG_MINGEN::INTI
        call instance valuetype T_RY& T_array_12::ldadr(int32)
        ldfld uint8 T_RY::RYCH
        call instance void @MINENG::ADDCHR(uint8 A)
        // line 3589
        ldloc _F
        ldfld class @MINENG @MINENG_MINGEN::_slink
        ldloc _F
        ldflda valuetype T_RM @MINENG_MINGEN::A
        ldfld int8 T_RM::RMTO
        ldsflda valuetype T_array_12 _G::SYNTX
        ldloc _F
        ldfld int32 @MINENG_MINGEN::INTI
        call instance valuetype T_RY& T_array_12::ldadr(int32)
        ldfld valuetype T_RD T_RY::RYRS
        call instance void @MINENG::ADDSQR(int8 A, valuetype T_RD B)
        // line 3590
        br L_22
    L_21:
        /* nop */
        ldloc _F
        ldfld int32 @MINENG_MINGEN::INTI
        dup
        ldloc $tmpEndValue1
        beq L_for_end_2
        ldc.i4.1
        add
        stloc $tmpIndex6
        ldloc _F
        ldloc $tmpIndex6
        stfld int32 @MINENG_MINGEN::INTI
        br L_for_loop_1
    L_for_end_2:
        pop
    L_22:
        /* nop */
    
    L_Epilogue:
        ret
    }
}


// line 3635
//================================================================================
// scope: MYMOVE (level : 2)

.class @MYMOVE
{
    // local variables
    .field public valuetype T_RM INRM

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3696
//================================================================================
// scope: YRMOVE_YRMHIT (level : 3)

.class @YRMOVE_YRMHIT
{
    // slink
    .field public class @YRMOVE _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3714
//================================================================================
// scope: YRMOVE_YRMCOM (level : 3)

.class @YRMOVE_YRMCOM
{
    // slink
    .field public class @YRMOVE _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3738
//================================================================================
// scope: YRMOVE_YRMCAP (level : 3)

.class @YRMOVE_YRMCAP
{
    // slink
    .field public class @YRMOVE _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3745
//================================================================================
// scope: YRMOVE_YRMCAS (level : 3)

.class @YRMOVE_YRMCAS
{
    // slink
    .field public class @YRMOVE _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3752
//================================================================================
// scope: YRMOVE_YRMCPC (level : 3)

.class @YRMOVE_YRMCPC
{
    // slink
    .field public class @YRMOVE _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3765
//================================================================================
// scope: YRMOVE_YRMCQS (level : 3)

.class @YRMOVE_YRMCQS
{
    // slink
    .field public class @YRMOVE _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3772
//================================================================================
// scope: YRMOVE_YRMLKQ (level : 3)

.class @YRMOVE_YRMLKQ
{
    // slink
    .field public class @YRMOVE _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3783
//================================================================================
// scope: YRMOVE_YRMLRB (level : 3)

.class @YRMOVE_YRMLRB
{
    // slink
    .field public class @YRMOVE _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3795
//================================================================================
// scope: YRMOVE_YRMLRK (level : 3)

.class @YRMOVE_YRMLRK
{
    // slink
    .field public class @YRMOVE _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3823
//================================================================================
// scope: YRMOVE_YRMNUL (level : 3)

.class @YRMOVE_YRMNUL
{
    // slink
    .field public class @YRMOVE _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3829
//================================================================================
// scope: YRMOVE_YRMPCM (level : 3)

.class @YRMOVE_YRMPCM
{
    // slink
    .field public class @YRMOVE _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3842
//================================================================================
// scope: YRMOVE_YRMPRO (level : 3)

.class @YRMOVE_YRMPRO
{
    // slink
    .field public class @YRMOVE _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3855
//================================================================================
// scope: YRMOVE_YRMRKQ (level : 3)

.class @YRMOVE_YRMRKQ
{
    // slink
    .field public class @YRMOVE _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3866
//================================================================================
// scope: YRMOVE_YRMRRB (level : 3)

.class @YRMOVE_YRMRRB
{
    // slink
    .field public class @YRMOVE _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3878
//================================================================================
// scope: YRMOVE_YRMRRK (level : 3)

.class @YRMOVE_YRMRRK
{
    // slink
    .field public class @YRMOVE _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3906
//================================================================================
// scope: YRMOVE_NCHIN (level : 3)

// line 0xfeefee

// TYPE subroutine_307 = procedure^;
.class sealed T_YRMOVE_subroutine_307 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

.class @YRMOVE_NCHIN
{
    // slink
    .field public class @YRMOVE _slink

    // parameters
    .field public valuetype T_set_5 A
    .field public class T_YRMOVE_subroutine_307 YRMXXX

    // local variables
    .field public bool _fnvalue
    .field public bool INTB

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 3662
//================================================================================
// scope: YRMOVE (level : 2)

// line 0xfeefee

// TYPE subroutine_313 = procedure^;
.class sealed T_YRMOVE_subroutine_313 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_315 = procedure^;
.class sealed T_YRMOVE_subroutine_315 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_317 = procedure^;
.class sealed T_YRMOVE_subroutine_317 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_319 = procedure^;
.class sealed T_YRMOVE_subroutine_319 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_321 = procedure^;
.class sealed T_YRMOVE_subroutine_321 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_324 = procedure^;
.class sealed T_YRMOVE_subroutine_324 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_326 = procedure^;
.class sealed T_YRMOVE_subroutine_326 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_329 = procedure^;
.class sealed T_YRMOVE_subroutine_329 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_331 = procedure^;
.class sealed T_YRMOVE_subroutine_331 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_333 = procedure^;
.class sealed T_YRMOVE_subroutine_333 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_336 = procedure^;
.class sealed T_YRMOVE_subroutine_336 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_340 = procedure^;
.class sealed T_YRMOVE_subroutine_340 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

// line 0xfeefee

// TYPE subroutine_342 = procedure^;
.class sealed T_YRMOVE_subroutine_342 extends [mscorlib]System.MulticastDelegate
{
    .method public void .ctor(object, native uint) runtime managed {}
    .method public void Invoke() runtime managed {}
}

.class @YRMOVE
{
    // local variables
    .field public bool IFCA
    .field public bool IFLD
    .field public bool IFLF
    .field public bool IFMV
    .field public bool IFOO
    .field public bool IFPR
    .field public bool IFQS
    .field public bool IFRD
    .field public bool IFRF
    .field public int32 INCP
    .field public valuetype T_set_100 INLF
    .field public valuetype T_set_100 INLR
    .field public valuetype T_set_100 INRF
    .field public valuetype T_RM INRM
    .field public valuetype T_set_100 INRR
    .field public bool INTB
    .field public uint8 INTC
    .field public int32 INTG
    .field public int32 INTP
    .field public int8 INTW
    .field public bool Jumpin

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 3696

    .method public
    void YRMHIT()
    {
        .maxstack 32
    
        .locals init(class @YRMOVE_YRMHIT _F)
        
        newobj instance void @YRMOVE_YRMHIT::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @YRMOVE @YRMOVE_YRMHIT::_slink
    
    L_Entry:
        // line 3703
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMHIT::_slink
        ldfld bool @YRMOVE::IFMV
        brfalse L_if_end_1
        // line 3705
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "   AMBIGUOUS MOVE."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        // line 3706
        ldc.i4 11
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        /* nop */
    L_if_end_1:
        // line 3709
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMHIT::_slink
        ldc.i4 1 // (true)
        stfld bool @YRMOVE::IFMV
        // line 3710
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMHIT::_slink
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMHIT::_slink
        ldfld int8 @YRMOVE::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldobj valuetype T_RM
        stfld valuetype T_RM @YRMOVE::INRM
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3714

    .method public
    void YRMCOM()
    {
        .maxstack 32
    
        .locals init(class @YRMOVE_YRMCOM _F)
        
        newobj instance void @YRMOVE_YRMCOM::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @YRMOVE @YRMOVE_YRMCOM::_slink
    
    L_Entry:
        // line 3723
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCOM::_slink
        ldfld valuetype T_set_100 @YRMOVE::INLR
        ldsflda valuetype T_array_38 _G::XTSR
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCOM::_slink
        ldfld int8 @YRMOVE::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld int8 T_RM::RMFR
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        call bool _SetContains(valuetype T_set_100 s, int32 val)
        dup
        brfalse L_AND_shortcut_5
        pop
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCOM::_slink
        ldfld valuetype T_set_100 @YRMOVE::INLF
        ldsflda valuetype T_array_38 _G::XTSF
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCOM::_slink
        ldfld int8 @YRMOVE::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld int8 T_RM::RMFR
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        call bool _SetContains(valuetype T_set_100 s, int32 val)
    L_AND_shortcut_5:
        dup
        brfalse L_AND_shortcut_4
        pop
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCOM::_slink
        ldfld valuetype T_set_100 @YRMOVE::INRR
        ldsflda valuetype T_array_38 _G::XTSR
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCOM::_slink
        ldfld int8 @YRMOVE::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld int8 T_RM::RMTO
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        call bool _SetContains(valuetype T_set_100 s, int32 val)
    L_AND_shortcut_4:
        dup
        brfalse L_AND_shortcut_3
        pop
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCOM::_slink
        ldfld valuetype T_set_100 @YRMOVE::INRF
        ldsflda valuetype T_array_38 _G::XTSF
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCOM::_slink
        ldfld int8 @YRMOVE::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld int8 T_RM::RMTO
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        call bool _SetContains(valuetype T_set_100 s, int32 val)
    L_AND_shortcut_3:
        dup
        brfalse L_AND_shortcut_2
        pop
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCOM::_slink
        ldfld int8 @YRMOVE::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld bool T_RM::RMIL
        ldc.i4.0
        ceq
    L_AND_shortcut_2:
        dup
        brfalse L_AND_shortcut_1
        pop
        ldsflda valuetype T_RB _G::BOARD
        ldflda valuetype T_array_38 T_RB::RBIS
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCOM::_slink
        ldfld int8 @YRMOVE::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld int8 T_RM::RMFR
        call instance int32& T_array_38::ldadr(int32)
        ldobj int32
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCOM::_slink
        ldfld int32 @YRMOVE::INTP
        ceq
    L_AND_shortcut_1:
        brfalse L_if_end_6
        // line 3728
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCOM::_slink
        ldfld int8 @YRMOVE::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld bool T_RM::RMCA
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCOM::_slink
        ldfld bool @YRMOVE::IFCA
        ceq
        brfalse L_if_end_7
        // line 3729
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCOM::_slink
        ldfld int8 @YRMOVE::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld bool T_RM::RMCA
        brfalse L_else_8
        // line 3730
        ldsflda valuetype T_RF _G::MOVES
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCOM::_slink
        ldfld int8 @YRMOVE::INTW
        call instance valuetype T_RM& T_RF::ldadr(int32)
        ldfld int32 T_RM::RMCP
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCOM::_slink
        ldfld int32 @YRMOVE::INCP
        ceq
        brfalse L_else_10
        // line 3731
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCOM::_slink
        call instance void @YRMOVE::YRMHIT()
        br L_if_end_11
    L_else_10:
        /* nop */
    L_if_end_11:
        br L_if_end_9
    L_else_8:
        // line 3734
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCOM::_slink
        call instance void @YRMOVE::YRMHIT()
    L_if_end_9:
    L_if_end_7:
    L_if_end_6:
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3738

    .method public
    void YRMCAP()
    {
        .maxstack 32
    
        .locals init(class @YRMOVE_YRMCAP _F)
        
        newobj instance void @YRMOVE_YRMCAP::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @YRMOVE @YRMOVE_YRMCAP::_slink
    
    L_Entry:
        // line 3741
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCAP::_slink
        ldc.i4 1 // (true)
        stfld bool @YRMOVE::IFCA
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3745

    .method public
    void YRMCAS()
    {
        .maxstack 32
    
        .locals init(class @YRMOVE_YRMCAS _F)
        
        newobj instance void @YRMOVE_YRMCAS::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @YRMOVE @YRMOVE_YRMCAS::_slink
    
    L_Entry:
        // line 3748
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCAS::_slink
        ldc.i4 1 // (true)
        stfld bool @YRMOVE::IFOO
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3752

    .method public
    void YRMCPC()
    {
        .maxstack 32
    
        .locals init(
            class @YRMOVE_YRMCPC _F,
            uint8 $tmpSwitchValue1)
        
        newobj instance void @YRMOVE_YRMCPC::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @YRMOVE @YRMOVE_YRMCPC::_slink
    
    L_Entry:
        // line 3755
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCPC::_slink
        ldfld uint8 @YRMOVE::INTC
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 80 // 'P'
        bne.un L_check_case_2
        // line 3756
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCPC::_slink
        ldsflda valuetype T_array_19 _G::XTUMP
        ldc.i4 0
        call instance valuetype T_array_18& T_array_19::ldadr(int32)
        ldsflda valuetype T_array_18 _G::OTHER
        ldsfld int32 _G::JNTM
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        stfld int32 @YRMOVE::INCP
        br L_case_end_1
    L_check_case_2:
        ldloc $tmpSwitchValue1
        ldc.i4 82 // 'R'
        bne.un L_check_case_3
        // line 3757
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCPC::_slink
        ldsflda valuetype T_array_19 _G::XTUMP
        ldc.i4 1
        call instance valuetype T_array_18& T_array_19::ldadr(int32)
        ldsflda valuetype T_array_18 _G::OTHER
        ldsfld int32 _G::JNTM
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        stfld int32 @YRMOVE::INCP
        br L_case_end_1
    L_check_case_3:
        ldloc $tmpSwitchValue1
        ldc.i4 78 // 'N'
        bne.un L_check_case_4
        // line 3758
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCPC::_slink
        ldsflda valuetype T_array_19 _G::XTUMP
        ldc.i4 2
        call instance valuetype T_array_18& T_array_19::ldadr(int32)
        ldsflda valuetype T_array_18 _G::OTHER
        ldsfld int32 _G::JNTM
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        stfld int32 @YRMOVE::INCP
        br L_case_end_1
    L_check_case_4:
        ldloc $tmpSwitchValue1
        ldc.i4 66 // 'B'
        bne.un L_check_case_5
        // line 3759
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCPC::_slink
        ldsflda valuetype T_array_19 _G::XTUMP
        ldc.i4 3
        call instance valuetype T_array_18& T_array_19::ldadr(int32)
        ldsflda valuetype T_array_18 _G::OTHER
        ldsfld int32 _G::JNTM
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        stfld int32 @YRMOVE::INCP
        br L_case_end_1
    L_check_case_5:
        ldloc $tmpSwitchValue1
        ldc.i4 81 // 'Q'
        bne.un L_case_end_1
        // line 3760
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCPC::_slink
        ldsflda valuetype T_array_19 _G::XTUMP
        ldc.i4 4
        call instance valuetype T_array_18& T_array_19::ldadr(int32)
        ldsflda valuetype T_array_18 _G::OTHER
        ldsfld int32 _G::JNTM
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        stfld int32 @YRMOVE::INCP
    L_case_end_1:
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3765

    .method public
    void YRMCQS()
    {
        .maxstack 32
    
        .locals init(class @YRMOVE_YRMCQS _F)
        
        newobj instance void @YRMOVE_YRMCQS::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @YRMOVE @YRMOVE_YRMCQS::_slink
    
    L_Entry:
        // line 3768
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMCQS::_slink
        ldc.i4 1 // (true)
        stfld bool @YRMOVE::IFQS
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3772

    .method public
    void YRMLKQ()
    {
        .maxstack 32
    
        .locals init(
            class @YRMOVE_YRMLKQ _F,
            uint8 $tmpSwitchValue1,
            valuetype T_set_100 $tmpSetLiteral2,
            valuetype T_set_100 $tmpSetLiteral3)
        
        newobj instance void @YRMOVE_YRMLKQ::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @YRMOVE @YRMOVE_YRMLKQ::_slink
    
        ldloca $tmpSetLiteral2
        ldc.i4 4
        ldc.i4 7
        call instance void T_set_100::addRange(int32, int32)
    
        ldloca $tmpSetLiteral3
        ldc.i4 0
        ldc.i4 3
        call instance void T_set_100::addRange(int32, int32)
    
    L_Entry:
        // line 3775
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLKQ::_slink
        ldfld uint8 @YRMOVE::INTC
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 75 // 'K'
        bne.un L_check_case_2
        // line 3776
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLKQ::_slink
        ldloc $tmpSetLiteral2
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLKQ::_slink
        ldfld valuetype T_set_100 @YRMOVE::INLF
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
        call valuetype T_set_5 _SetIntersection(valuetype T_set_5 a, valuetype T_set_5 b)
        dup
        ldc.i4 0
        ldc.i4 7
        call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
        call valuetype T_set_100 _SetCastTo_T_set_100(valuetype T_set_5 s)
        stfld valuetype T_set_100 @YRMOVE::INLF
        br L_case_end_1
    L_check_case_2:
        ldloc $tmpSwitchValue1
        ldc.i4 81 // 'Q'
        bne.un L_case_end_1
        // line 3777
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLKQ::_slink
        ldloc $tmpSetLiteral3
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLKQ::_slink
        ldfld valuetype T_set_100 @YRMOVE::INLF
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
        call valuetype T_set_5 _SetIntersection(valuetype T_set_5 a, valuetype T_set_5 b)
        dup
        ldc.i4 0
        ldc.i4 7
        call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
        call valuetype T_set_100 _SetCastTo_T_set_100(valuetype T_set_5 s)
        stfld valuetype T_set_100 @YRMOVE::INLF
    L_case_end_1:
        // line 3779
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLKQ::_slink
        ldc.i4 1 // (true)
        stfld bool @YRMOVE::IFLF
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3783

    .method public
    void YRMLRB()
    {
        .maxstack 32
    
        .locals init(
            class @YRMOVE_YRMLRB _F,
            uint8 $tmpSwitchValue1,
            valuetype T_set_100 $tmpSetLiteral2,
            valuetype T_set_100 $tmpSetLiteral3,
            valuetype T_set_100 $tmpSetLiteral4)
        
        newobj instance void @YRMOVE_YRMLRB::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @YRMOVE @YRMOVE_YRMLRB::_slink
    
        ldloca $tmpSetLiteral2
        ldc.i4 0
        call instance void T_set_100::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 7
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral3
        ldc.i4 1
        call instance void T_set_100::addValue(int32)
        ldloca $tmpSetLiteral3
        ldc.i4 6
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral4
        ldc.i4 2
        call instance void T_set_100::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 5
        call instance void T_set_100::addValue(int32)
    
    L_Entry:
        // line 3786
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRB::_slink
        ldfld uint8 @YRMOVE::INTC
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 82 // 'R'
        bne.un L_check_case_2
        // line 3787
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRB::_slink
        ldloc $tmpSetLiteral2
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRB::_slink
        ldfld valuetype T_set_100 @YRMOVE::INLF
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
        call valuetype T_set_5 _SetIntersection(valuetype T_set_5 a, valuetype T_set_5 b)
        dup
        ldc.i4 0
        ldc.i4 7
        call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
        call valuetype T_set_100 _SetCastTo_T_set_100(valuetype T_set_5 s)
        stfld valuetype T_set_100 @YRMOVE::INLF
        br L_case_end_1
    L_check_case_2:
        ldloc $tmpSwitchValue1
        ldc.i4 78 // 'N'
        bne.un L_check_case_3
        // line 3788
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRB::_slink
        ldloc $tmpSetLiteral3
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRB::_slink
        ldfld valuetype T_set_100 @YRMOVE::INLF
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
        call valuetype T_set_5 _SetIntersection(valuetype T_set_5 a, valuetype T_set_5 b)
        dup
        ldc.i4 0
        ldc.i4 7
        call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
        call valuetype T_set_100 _SetCastTo_T_set_100(valuetype T_set_5 s)
        stfld valuetype T_set_100 @YRMOVE::INLF
        br L_case_end_1
    L_check_case_3:
        ldloc $tmpSwitchValue1
        ldc.i4 66 // 'B'
        bne.un L_case_end_1
        // line 3789
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRB::_slink
        ldloc $tmpSetLiteral4
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRB::_slink
        ldfld valuetype T_set_100 @YRMOVE::INLF
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
        call valuetype T_set_5 _SetIntersection(valuetype T_set_5 a, valuetype T_set_5 b)
        dup
        ldc.i4 0
        ldc.i4 7
        call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
        call valuetype T_set_100 _SetCastTo_T_set_100(valuetype T_set_5 s)
        stfld valuetype T_set_100 @YRMOVE::INLF
    L_case_end_1:
        // line 3791
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRB::_slink
        ldc.i4 1 // (true)
        stfld bool @YRMOVE::IFLD
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3795

    .method public
    void YRMLRK()
    {
        .maxstack 32
    
        .locals init(
            class @YRMOVE_YRMLRK _F,
            uint8 $tmpSwitchValue1,
            valuetype T_set_100 $tmpSetLiteral2,
            valuetype T_set_100 $tmpSetLiteral3,
            valuetype T_set_100 $tmpSetLiteral4,
            valuetype T_set_100 $tmpSetLiteral5,
            valuetype T_set_100 $tmpSetLiteral6,
            valuetype T_set_100 $tmpSetLiteral7,
            valuetype T_set_100 $tmpSetLiteral8,
            valuetype T_set_100 $tmpSetLiteral9,
            uint8 $tmpSwitchValue10,
            valuetype T_set_100 $tmpSetLiteral11,
            valuetype T_set_100 $tmpSetLiteral12,
            valuetype T_set_100 $tmpSetLiteral13,
            valuetype T_set_100 $tmpSetLiteral14,
            valuetype T_set_100 $tmpSetLiteral15,
            valuetype T_set_100 $tmpSetLiteral16,
            valuetype T_set_100 $tmpSetLiteral17,
            valuetype T_set_100 $tmpSetLiteral18)
        
        newobj instance void @YRMOVE_YRMLRK::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @YRMOVE @YRMOVE_YRMLRK::_slink
    
        ldloca $tmpSetLiteral2
        ldc.i4 0
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral3
        ldc.i4 1
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral4
        ldc.i4 2
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral5
        ldc.i4 3
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral6
        ldc.i4 4
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral7
        ldc.i4 5
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral8
        ldc.i4 6
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral9
        ldc.i4 7
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral11
        ldc.i4 7
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral12
        ldc.i4 6
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral13
        ldc.i4 5
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral14
        ldc.i4 4
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral15
        ldc.i4 3
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral16
        ldc.i4 2
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral17
        ldc.i4 1
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral18
        ldc.i4 0
        call instance void T_set_100::addValue(int32)
    
    L_Entry:
        // line 3798
        ldsfld int32 _G::JNTM
        ldc.i4 0
        ceq
        brfalse L_else_1
        // line 3799
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRK::_slink
        ldfld uint8 @YRMOVE::INTC
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 49 // '1'
        bne.un L_check_case_4
        // line 3800
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRK::_slink
        ldloc $tmpSetLiteral2
        stfld valuetype T_set_100 @YRMOVE::INLR
        br L_case_end_3
    L_check_case_4:
        ldloc $tmpSwitchValue1
        ldc.i4 50 // '2'
        bne.un L_check_case_5
        // line 3801
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRK::_slink
        ldloc $tmpSetLiteral3
        stfld valuetype T_set_100 @YRMOVE::INLR
        br L_case_end_3
    L_check_case_5:
        ldloc $tmpSwitchValue1
        ldc.i4 51 // '3'
        bne.un L_check_case_6
        // line 3802
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRK::_slink
        ldloc $tmpSetLiteral4
        stfld valuetype T_set_100 @YRMOVE::INLR
        br L_case_end_3
    L_check_case_6:
        ldloc $tmpSwitchValue1
        ldc.i4 52 // '4'
        bne.un L_check_case_7
        // line 3803
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRK::_slink
        ldloc $tmpSetLiteral5
        stfld valuetype T_set_100 @YRMOVE::INLR
        br L_case_end_3
    L_check_case_7:
        ldloc $tmpSwitchValue1
        ldc.i4 53 // '5'
        bne.un L_check_case_8
        // line 3804
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRK::_slink
        ldloc $tmpSetLiteral6
        stfld valuetype T_set_100 @YRMOVE::INLR
        br L_case_end_3
    L_check_case_8:
        ldloc $tmpSwitchValue1
        ldc.i4 54 // '6'
        bne.un L_check_case_9
        // line 3805
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRK::_slink
        ldloc $tmpSetLiteral7
        stfld valuetype T_set_100 @YRMOVE::INLR
        br L_case_end_3
    L_check_case_9:
        ldloc $tmpSwitchValue1
        ldc.i4 55 // '7'
        bne.un L_check_case_10
        // line 3806
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRK::_slink
        ldloc $tmpSetLiteral8
        stfld valuetype T_set_100 @YRMOVE::INLR
        br L_case_end_3
    L_check_case_10:
        ldloc $tmpSwitchValue1
        ldc.i4 56 // '8'
        bne.un L_case_end_3
        // line 3807
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRK::_slink
        ldloc $tmpSetLiteral9
        stfld valuetype T_set_100 @YRMOVE::INLR
    L_case_end_3:
        br L_if_end_2
    L_else_1:
        // line 3810
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRK::_slink
        ldfld uint8 @YRMOVE::INTC
        stloc $tmpSwitchValue10
        ldloc $tmpSwitchValue10
        ldc.i4 49 // '1'
        bne.un L_check_case_12
        // line 3811
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRK::_slink
        ldloc $tmpSetLiteral11
        stfld valuetype T_set_100 @YRMOVE::INLR
        br L_case_end_11
    L_check_case_12:
        ldloc $tmpSwitchValue10
        ldc.i4 50 // '2'
        bne.un L_check_case_13
        // line 3812
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRK::_slink
        ldloc $tmpSetLiteral12
        stfld valuetype T_set_100 @YRMOVE::INLR
        br L_case_end_11
    L_check_case_13:
        ldloc $tmpSwitchValue10
        ldc.i4 51 // '3'
        bne.un L_check_case_14
        // line 3813
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRK::_slink
        ldloc $tmpSetLiteral13
        stfld valuetype T_set_100 @YRMOVE::INLR
        br L_case_end_11
    L_check_case_14:
        ldloc $tmpSwitchValue10
        ldc.i4 52 // '4'
        bne.un L_check_case_15
        // line 3814
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRK::_slink
        ldloc $tmpSetLiteral14
        stfld valuetype T_set_100 @YRMOVE::INLR
        br L_case_end_11
    L_check_case_15:
        ldloc $tmpSwitchValue10
        ldc.i4 53 // '5'
        bne.un L_check_case_16
        // line 3815
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRK::_slink
        ldloc $tmpSetLiteral15
        stfld valuetype T_set_100 @YRMOVE::INLR
        br L_case_end_11
    L_check_case_16:
        ldloc $tmpSwitchValue10
        ldc.i4 54 // '6'
        bne.un L_check_case_17
        // line 3816
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRK::_slink
        ldloc $tmpSetLiteral16
        stfld valuetype T_set_100 @YRMOVE::INLR
        br L_case_end_11
    L_check_case_17:
        ldloc $tmpSwitchValue10
        ldc.i4 55 // '7'
        bne.un L_check_case_18
        // line 3817
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRK::_slink
        ldloc $tmpSetLiteral17
        stfld valuetype T_set_100 @YRMOVE::INLR
        br L_case_end_11
    L_check_case_18:
        ldloc $tmpSwitchValue10
        ldc.i4 56 // '8'
        bne.un L_case_end_11
        // line 3818
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMLRK::_slink
        ldloc $tmpSetLiteral18
        stfld valuetype T_set_100 @YRMOVE::INLR
    L_case_end_11:
    L_if_end_2:
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3823

    .method public
    void YRMNUL()
    {
        .maxstack 32
    
        .locals init(class @YRMOVE_YRMNUL _F)
        
        newobj instance void @YRMOVE_YRMNUL::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @YRMOVE @YRMOVE_YRMNUL::_slink
    
    L_Entry:
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3829

    .method public
    void YRMPCM()
    {
        .maxstack 32
    
        .locals init(
            class @YRMOVE_YRMPCM _F,
            uint8 $tmpSwitchValue1)
        
        newobj instance void @YRMOVE_YRMPCM::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @YRMOVE @YRMOVE_YRMPCM::_slink
    
    L_Entry:
        // line 3832
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMPCM::_slink
        ldfld uint8 @YRMOVE::INTC
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 80 // 'P'
        bne.un L_check_case_2
        // line 3833
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMPCM::_slink
        ldsflda valuetype T_array_19 _G::XTUMP
        ldc.i4 0
        call instance valuetype T_array_18& T_array_19::ldadr(int32)
        ldsfld int32 _G::JNTM
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        stfld int32 @YRMOVE::INTP
        br L_case_end_1
    L_check_case_2:
        ldloc $tmpSwitchValue1
        ldc.i4 82 // 'R'
        bne.un L_check_case_3
        // line 3834
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMPCM::_slink
        ldsflda valuetype T_array_19 _G::XTUMP
        ldc.i4 1
        call instance valuetype T_array_18& T_array_19::ldadr(int32)
        ldsfld int32 _G::JNTM
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        stfld int32 @YRMOVE::INTP
        br L_case_end_1
    L_check_case_3:
        ldloc $tmpSwitchValue1
        ldc.i4 78 // 'N'
        bne.un L_check_case_4
        // line 3835
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMPCM::_slink
        ldsflda valuetype T_array_19 _G::XTUMP
        ldc.i4 2
        call instance valuetype T_array_18& T_array_19::ldadr(int32)
        ldsfld int32 _G::JNTM
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        stfld int32 @YRMOVE::INTP
        br L_case_end_1
    L_check_case_4:
        ldloc $tmpSwitchValue1
        ldc.i4 66 // 'B'
        bne.un L_check_case_5
        // line 3836
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMPCM::_slink
        ldsflda valuetype T_array_19 _G::XTUMP
        ldc.i4 3
        call instance valuetype T_array_18& T_array_19::ldadr(int32)
        ldsfld int32 _G::JNTM
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        stfld int32 @YRMOVE::INTP
        br L_case_end_1
    L_check_case_5:
        ldloc $tmpSwitchValue1
        ldc.i4 81 // 'Q'
        bne.un L_check_case_6
        // line 3837
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMPCM::_slink
        ldsflda valuetype T_array_19 _G::XTUMP
        ldc.i4 4
        call instance valuetype T_array_18& T_array_19::ldadr(int32)
        ldsfld int32 _G::JNTM
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        stfld int32 @YRMOVE::INTP
        br L_case_end_1
    L_check_case_6:
        ldloc $tmpSwitchValue1
        ldc.i4 75 // 'K'
        bne.un L_case_end_1
        // line 3838
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMPCM::_slink
        ldsflda valuetype T_array_19 _G::XTUMP
        ldc.i4 5
        call instance valuetype T_array_18& T_array_19::ldadr(int32)
        ldsfld int32 _G::JNTM
        call instance int32& T_array_18::ldadr(int32)
        ldobj int32
        stfld int32 @YRMOVE::INTP
    L_case_end_1:
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3842

    .method public
    void YRMPRO()
    {
        .maxstack 32
    
        .locals init(
            class @YRMOVE_YRMPRO _F,
            uint8 $tmpSwitchValue1)
        
        newobj instance void @YRMOVE_YRMPRO::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @YRMOVE @YRMOVE_YRMPRO::_slink
    
    L_Entry:
        // line 3845
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMPRO::_slink
        ldfld uint8 @YRMOVE::INTC
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 82 // 'R'
        bne.un L_check_case_2
        // line 3846
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMPRO::_slink
        ldc.i4 1
        stfld int32 @YRMOVE::INTG
        br L_case_end_1
    L_check_case_2:
        ldloc $tmpSwitchValue1
        ldc.i4 78 // 'N'
        bne.un L_check_case_3
        // line 3847
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMPRO::_slink
        ldc.i4 2
        stfld int32 @YRMOVE::INTG
        br L_case_end_1
    L_check_case_3:
        ldloc $tmpSwitchValue1
        ldc.i4 66 // 'B'
        bne.un L_check_case_4
        // line 3848
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMPRO::_slink
        ldc.i4 3
        stfld int32 @YRMOVE::INTG
        br L_case_end_1
    L_check_case_4:
        ldloc $tmpSwitchValue1
        ldc.i4 81 // 'Q'
        bne.un L_case_end_1
        // line 3849
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMPRO::_slink
        ldc.i4 0
        stfld int32 @YRMOVE::INTG
    L_case_end_1:
        // line 3851
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMPRO::_slink
        ldc.i4 1 // (true)
        stfld bool @YRMOVE::IFPR
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3855

    .method public
    void YRMRKQ()
    {
        .maxstack 32
    
        .locals init(
            class @YRMOVE_YRMRKQ _F,
            uint8 $tmpSwitchValue1,
            valuetype T_set_100 $tmpSetLiteral2,
            valuetype T_set_100 $tmpSetLiteral3)
        
        newobj instance void @YRMOVE_YRMRKQ::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @YRMOVE @YRMOVE_YRMRKQ::_slink
    
        ldloca $tmpSetLiteral2
        ldc.i4 4
        ldc.i4 7
        call instance void T_set_100::addRange(int32, int32)
    
        ldloca $tmpSetLiteral3
        ldc.i4 0
        ldc.i4 3
        call instance void T_set_100::addRange(int32, int32)
    
    L_Entry:
        // line 3858
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRKQ::_slink
        ldfld uint8 @YRMOVE::INTC
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 75 // 'K'
        bne.un L_check_case_2
        // line 3859
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRKQ::_slink
        ldloc $tmpSetLiteral2
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRKQ::_slink
        ldfld valuetype T_set_100 @YRMOVE::INRF
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
        call valuetype T_set_5 _SetIntersection(valuetype T_set_5 a, valuetype T_set_5 b)
        dup
        ldc.i4 0
        ldc.i4 7
        call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
        call valuetype T_set_100 _SetCastTo_T_set_100(valuetype T_set_5 s)
        stfld valuetype T_set_100 @YRMOVE::INRF
        br L_case_end_1
    L_check_case_2:
        ldloc $tmpSwitchValue1
        ldc.i4 81 // 'Q'
        bne.un L_case_end_1
        // line 3860
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRKQ::_slink
        ldloc $tmpSetLiteral3
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRKQ::_slink
        ldfld valuetype T_set_100 @YRMOVE::INRF
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
        call valuetype T_set_5 _SetIntersection(valuetype T_set_5 a, valuetype T_set_5 b)
        dup
        ldc.i4 0
        ldc.i4 7
        call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
        call valuetype T_set_100 _SetCastTo_T_set_100(valuetype T_set_5 s)
        stfld valuetype T_set_100 @YRMOVE::INRF
    L_case_end_1:
        // line 3862
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRKQ::_slink
        ldc.i4 1 // (true)
        stfld bool @YRMOVE::IFRF
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3866

    .method public
    void YRMRRB()
    {
        .maxstack 32
    
        .locals init(
            class @YRMOVE_YRMRRB _F,
            uint8 $tmpSwitchValue1,
            valuetype T_set_100 $tmpSetLiteral2,
            valuetype T_set_100 $tmpSetLiteral3,
            valuetype T_set_100 $tmpSetLiteral4)
        
        newobj instance void @YRMOVE_YRMRRB::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @YRMOVE @YRMOVE_YRMRRB::_slink
    
        ldloca $tmpSetLiteral2
        ldc.i4 0
        call instance void T_set_100::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 7
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral3
        ldc.i4 1
        call instance void T_set_100::addValue(int32)
        ldloca $tmpSetLiteral3
        ldc.i4 6
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral4
        ldc.i4 2
        call instance void T_set_100::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 5
        call instance void T_set_100::addValue(int32)
    
    L_Entry:
        // line 3869
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRB::_slink
        ldfld uint8 @YRMOVE::INTC
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 82 // 'R'
        bne.un L_check_case_2
        // line 3870
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRB::_slink
        ldloc $tmpSetLiteral2
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRB::_slink
        ldfld valuetype T_set_100 @YRMOVE::INRF
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
        call valuetype T_set_5 _SetIntersection(valuetype T_set_5 a, valuetype T_set_5 b)
        dup
        ldc.i4 0
        ldc.i4 7
        call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
        call valuetype T_set_100 _SetCastTo_T_set_100(valuetype T_set_5 s)
        stfld valuetype T_set_100 @YRMOVE::INRF
        br L_case_end_1
    L_check_case_2:
        ldloc $tmpSwitchValue1
        ldc.i4 78 // 'N'
        bne.un L_check_case_3
        // line 3871
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRB::_slink
        ldloc $tmpSetLiteral3
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRB::_slink
        ldfld valuetype T_set_100 @YRMOVE::INRF
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
        call valuetype T_set_5 _SetIntersection(valuetype T_set_5 a, valuetype T_set_5 b)
        dup
        ldc.i4 0
        ldc.i4 7
        call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
        call valuetype T_set_100 _SetCastTo_T_set_100(valuetype T_set_5 s)
        stfld valuetype T_set_100 @YRMOVE::INRF
        br L_case_end_1
    L_check_case_3:
        ldloc $tmpSwitchValue1
        ldc.i4 66 // 'B'
        bne.un L_case_end_1
        // line 3872
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRB::_slink
        ldloc $tmpSetLiteral4
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRB::_slink
        ldfld valuetype T_set_100 @YRMOVE::INRF
        call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
        call valuetype T_set_5 _SetIntersection(valuetype T_set_5 a, valuetype T_set_5 b)
        dup
        ldc.i4 0
        ldc.i4 7
        call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
        call valuetype T_set_100 _SetCastTo_T_set_100(valuetype T_set_5 s)
        stfld valuetype T_set_100 @YRMOVE::INRF
    L_case_end_1:
        // line 3874
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRB::_slink
        ldc.i4 1 // (true)
        stfld bool @YRMOVE::IFRD
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3878

    .method public
    void YRMRRK()
    {
        .maxstack 32
    
        .locals init(
            class @YRMOVE_YRMRRK _F,
            uint8 $tmpSwitchValue1,
            valuetype T_set_100 $tmpSetLiteral2,
            valuetype T_set_100 $tmpSetLiteral3,
            valuetype T_set_100 $tmpSetLiteral4,
            valuetype T_set_100 $tmpSetLiteral5,
            valuetype T_set_100 $tmpSetLiteral6,
            valuetype T_set_100 $tmpSetLiteral7,
            valuetype T_set_100 $tmpSetLiteral8,
            valuetype T_set_100 $tmpSetLiteral9,
            uint8 $tmpSwitchValue10,
            valuetype T_set_100 $tmpSetLiteral11,
            valuetype T_set_100 $tmpSetLiteral12,
            valuetype T_set_100 $tmpSetLiteral13,
            valuetype T_set_100 $tmpSetLiteral14,
            valuetype T_set_100 $tmpSetLiteral15,
            valuetype T_set_100 $tmpSetLiteral16,
            valuetype T_set_100 $tmpSetLiteral17,
            valuetype T_set_100 $tmpSetLiteral18)
        
        newobj instance void @YRMOVE_YRMRRK::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @YRMOVE @YRMOVE_YRMRRK::_slink
    
        ldloca $tmpSetLiteral2
        ldc.i4 0
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral3
        ldc.i4 1
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral4
        ldc.i4 2
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral5
        ldc.i4 3
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral6
        ldc.i4 4
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral7
        ldc.i4 5
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral8
        ldc.i4 6
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral9
        ldc.i4 7
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral11
        ldc.i4 7
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral12
        ldc.i4 6
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral13
        ldc.i4 5
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral14
        ldc.i4 4
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral15
        ldc.i4 3
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral16
        ldc.i4 2
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral17
        ldc.i4 1
        call instance void T_set_100::addValue(int32)
    
        ldloca $tmpSetLiteral18
        ldc.i4 0
        call instance void T_set_100::addValue(int32)
    
    L_Entry:
        // line 3881
        ldsfld int32 _G::JNTM
        ldc.i4 0
        ceq
        brfalse L_else_1
        // line 3882
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRK::_slink
        ldfld uint8 @YRMOVE::INTC
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 49 // '1'
        bne.un L_check_case_4
        // line 3883
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRK::_slink
        ldloc $tmpSetLiteral2
        stfld valuetype T_set_100 @YRMOVE::INRR
        br L_case_end_3
    L_check_case_4:
        ldloc $tmpSwitchValue1
        ldc.i4 50 // '2'
        bne.un L_check_case_5
        // line 3884
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRK::_slink
        ldloc $tmpSetLiteral3
        stfld valuetype T_set_100 @YRMOVE::INRR
        br L_case_end_3
    L_check_case_5:
        ldloc $tmpSwitchValue1
        ldc.i4 51 // '3'
        bne.un L_check_case_6
        // line 3885
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRK::_slink
        ldloc $tmpSetLiteral4
        stfld valuetype T_set_100 @YRMOVE::INRR
        br L_case_end_3
    L_check_case_6:
        ldloc $tmpSwitchValue1
        ldc.i4 52 // '4'
        bne.un L_check_case_7
        // line 3886
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRK::_slink
        ldloc $tmpSetLiteral5
        stfld valuetype T_set_100 @YRMOVE::INRR
        br L_case_end_3
    L_check_case_7:
        ldloc $tmpSwitchValue1
        ldc.i4 53 // '5'
        bne.un L_check_case_8
        // line 3887
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRK::_slink
        ldloc $tmpSetLiteral6
        stfld valuetype T_set_100 @YRMOVE::INRR
        br L_case_end_3
    L_check_case_8:
        ldloc $tmpSwitchValue1
        ldc.i4 54 // '6'
        bne.un L_check_case_9
        // line 3888
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRK::_slink
        ldloc $tmpSetLiteral7
        stfld valuetype T_set_100 @YRMOVE::INRR
        br L_case_end_3
    L_check_case_9:
        ldloc $tmpSwitchValue1
        ldc.i4 55 // '7'
        bne.un L_check_case_10
        // line 3889
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRK::_slink
        ldloc $tmpSetLiteral8
        stfld valuetype T_set_100 @YRMOVE::INRR
        br L_case_end_3
    L_check_case_10:
        ldloc $tmpSwitchValue1
        ldc.i4 56 // '8'
        bne.un L_case_end_3
        // line 3890
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRK::_slink
        ldloc $tmpSetLiteral9
        stfld valuetype T_set_100 @YRMOVE::INRR
    L_case_end_3:
        br L_if_end_2
    L_else_1:
        // line 3893
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRK::_slink
        ldfld uint8 @YRMOVE::INTC
        stloc $tmpSwitchValue10
        ldloc $tmpSwitchValue10
        ldc.i4 49 // '1'
        bne.un L_check_case_12
        // line 3894
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRK::_slink
        ldloc $tmpSetLiteral11
        stfld valuetype T_set_100 @YRMOVE::INRR
        br L_case_end_11
    L_check_case_12:
        ldloc $tmpSwitchValue10
        ldc.i4 50 // '2'
        bne.un L_check_case_13
        // line 3895
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRK::_slink
        ldloc $tmpSetLiteral12
        stfld valuetype T_set_100 @YRMOVE::INRR
        br L_case_end_11
    L_check_case_13:
        ldloc $tmpSwitchValue10
        ldc.i4 51 // '3'
        bne.un L_check_case_14
        // line 3896
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRK::_slink
        ldloc $tmpSetLiteral13
        stfld valuetype T_set_100 @YRMOVE::INRR
        br L_case_end_11
    L_check_case_14:
        ldloc $tmpSwitchValue10
        ldc.i4 52 // '4'
        bne.un L_check_case_15
        // line 3897
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRK::_slink
        ldloc $tmpSetLiteral14
        stfld valuetype T_set_100 @YRMOVE::INRR
        br L_case_end_11
    L_check_case_15:
        ldloc $tmpSwitchValue10
        ldc.i4 53 // '5'
        bne.un L_check_case_16
        // line 3898
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRK::_slink
        ldloc $tmpSetLiteral15
        stfld valuetype T_set_100 @YRMOVE::INRR
        br L_case_end_11
    L_check_case_16:
        ldloc $tmpSwitchValue10
        ldc.i4 54 // '6'
        bne.un L_check_case_17
        // line 3899
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRK::_slink
        ldloc $tmpSetLiteral16
        stfld valuetype T_set_100 @YRMOVE::INRR
        br L_case_end_11
    L_check_case_17:
        ldloc $tmpSwitchValue10
        ldc.i4 55 // '7'
        bne.un L_check_case_18
        // line 3900
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRK::_slink
        ldloc $tmpSetLiteral17
        stfld valuetype T_set_100 @YRMOVE::INRR
        br L_case_end_11
    L_check_case_18:
        ldloc $tmpSwitchValue10
        ldc.i4 56 // '8'
        bne.un L_case_end_11
        // line 3901
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_YRMRRK::_slink
        ldloc $tmpSetLiteral18
        stfld valuetype T_set_100 @YRMOVE::INRR
    L_case_end_11:
    L_if_end_2:
        /* nop */
    
    L_Epilogue:
        ret
    }

// line 3906

    .method public
    bool NCHIN(valuetype T_set_5 A, class T_YRMOVE_subroutine_307 YRMXXX)
    {
        .maxstack 32
    
        .locals init(class @YRMOVE_NCHIN _F)
        
        newobj instance void @YRMOVE_NCHIN::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @YRMOVE @YRMOVE_NCHIN::_slink
        
        ldloc _F
        ldarg A
        stfld valuetype T_set_5 @YRMOVE_NCHIN::A
        
        ldloc _F
        ldarg YRMXXX
        stfld class T_YRMOVE_subroutine_307 @YRMOVE_NCHIN::YRMXXX
    
    L_Entry:
        // line 3918
        ldloc _F
        ldloc _F
        ldfld valuetype T_set_5 @YRMOVE_NCHIN::A
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_NCHIN::_slink
        ldfld uint8 @YRMOVE::INTC
        call bool _SetContains(valuetype T_set_5 s, int32 val)
        ldc.i4.0
        ceq
        stfld bool @YRMOVE_NCHIN::INTB
        // line 3919
        ldloc _F
        ldfld bool @YRMOVE_NCHIN::INTB
        ldc.i4.0
        ceq
        brfalse L_if_end_1
        // line 3921
        ldloc _F
        ldfld class T_YRMOVE_subroutine_307 @YRMOVE_NCHIN::YRMXXX
        call instance void T_YRMOVE_subroutine_307::Invoke()
        // line 3922
        ldsfld int8 _G::JNTJ
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::JNTJ
        // line 3923
        br L_while_test_3
    L_while_2:
        // line 3925
        ldsfld int8 _G::JNTJ
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 73
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::JNTJ
    L_while_test_3:
        ldsfld int8 _G::JNTJ
        ldc.i4 73
        clt
        dup
        brfalse L_AND_shortcut_4
        pop
        ldsflda valuetype T_RJ _G::ILINE
        ldsfld int8 _G::JNTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        ldc.i4 32 // ' '
        ceq
        dup
        brtrue L_OR_shortcut_5
        pop
        ldsflda valuetype T_RJ _G::ILINE
        ldsfld int8 _G::JNTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        ldc.i4 44 // ','
        cgt
    L_OR_shortcut_5:
    L_AND_shortcut_4:
        brtrue L_while_2
        // line 3926
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_NCHIN::_slink
        ldsflda valuetype T_RJ _G::ILINE
        ldsfld int8 _G::JNTJ
        call instance uint8& T_RJ::ldadr(int32)
        ldobj uint8
        stfld uint8 @YRMOVE::INTC
        // line 3927
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_NCHIN::_slink
        ldfld uint8 @YRMOVE::INTC
        ldc.i4 46 // '.'
        ceq
        dup
        brtrue L_OR_shortcut_6
        pop
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_NCHIN::_slink
        ldfld uint8 @YRMOVE::INTC
        ldc.i4 59 // ';'
        ceq
    L_OR_shortcut_6:
        brfalse L_if_end_7
        // line 3929
        ldloc _F
        ldfld class @YRMOVE @YRMOVE_NCHIN::_slink
        ldc.i4 1 // (true)
        stfld bool @YRMOVE::Jumpin
        // line 3930
        ldc.i4 12
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        /* nop */
    L_if_end_7:
    L_if_end_1:
        // line 3934
        ldloc _F
        ldloc _F
        ldfld bool @YRMOVE_NCHIN::INTB
        stfld bool @YRMOVE_NCHIN::_fnvalue
        /* nop */
    
    L_Epilogue:
        ldloc _F
        ldfld bool @YRMOVE_NCHIN::_fnvalue
        ret
    }
}


// line 1
//================================================================================
// scope: program scope (level : 1)

// global variables
.class _G
{
    .field public static valuetype T_arraytmofrs ALATK
    .field public static valuetype T_arraytkofrs ALLOC
    .field public static valuetype T_RX ATKFR
    .field public static valuetype T_RX ATKTO
    .field public static valuetype T_RB BOARD
    .field public static valuetype T_array_102 BSTMV
    .field public static valuetype T_array_109 BSTVL
    .field public static valuetype T_RS CORNR
    .field public static valuetype T_arraytkofrs CSTAT
    .field public static valuetype T_array_43 EDGE
    .field public static valuetype T_arraytkofrs ENPAS
    .field public static int32 FKPSHD
    .field public static int32 FKSANQ
    .field public static int32 FMAXMT
    .field public static int32 FNODEL
    .field public static valuetype T_array_95 FPADCR
    .field public static int32 FPBLOK
    .field public static int32 FPCONN
    .field public static int32 FPFLNX
    .field public static int32 FRDUBL
    .field public static int32 FRK7TH
    .field public static int32 FTRADE
    .field public static int32 FTRDSL
    .field public static int32 FTRPDK
    .field public static int32 FTRPWN
    .field public static int32 FWKING
    .field public static int32 FWMAJM
    .field public static int32 FWMINM
    .field public static int32 FWPAWN
    .field public static int32 FWROOK
    .field public static valuetype T_arraytkofrs GENFR
    .field public static valuetype T_arraytkofrs GENPN
    .field public static valuetype T_arraytkofrs GENTO
    .field public static int32 GOING
    .field public static valuetype T_RJ ICARD
    .field public static valuetype T_RJ ILINE
    .field public static valuetype T_array_110 INDEX
    .field public static valuetype [lpcRuntime]LPC.File Input
    .field public static int8 JMTJ
    .field public static int8 JMTK
    .field public static int8 JNTJ
    .field public static int8 JNTK
    .field public static int32 JNTM
    .field public static int16 JNTW
    .field public static bool Jumpin
    .field public static valuetype T_array_111 KILLR
    .field public static valuetype T_array_102 LINDX
    .field public static valuetype T_RM LSTMV
    .field public static int16 MAXPS
    .field public static int16 MBLTE
    .field public static valuetype T_array_38 MBORD
    .field public static valuetype T_array_18 MBPWN
    .field public static int16 MBTOT
    .field public static valuetype T_array_102 MBVAL
    .field public static valuetype T_RF MOVES
    .field public static valuetype T_array_99 MOVMS
    .field public static valuetype T_array_105 MVSEL
    .field public static int32 NODES
    .field public static valuetype T_RM NULMV
    .field public static valuetype T_array_18 OTHER
    .field public static valuetype [lpcRuntime]LPC.File Output
    .field public static valuetype T_array_105 SRCHM
    .field public static bool SWEC
    .field public static bool SWPA
    .field public static bool SWPS
    .field public static bool SWRE
    .field public static bool SWSU
    .field public static bool SWTR
    .field public static valuetype T_array_12 SYNTX
    .field public static valuetype T_arraytmofrs TMLOC
    .field public static valuetype T_array_103 TPLOC
    .field public static valuetype T_RE VALUE
    .field public static int32 WINDOW
    .field public static valuetype T_array_14 XFPE
    .field public static valuetype T_array_44 XLLD
    .field public static valuetype T_array_14 XLPE
    .field public static valuetype T_arraytrofrs XNFS
    .field public static valuetype T_arraytrofrs XNRS
    .field public static valuetype T_arraytrofrs XRFS
    .field public static valuetype T_array_45 XRQM
    .field public static valuetype T_arraytqofrs XRQSA
    .field public static valuetype T_arraytqofrs XRQSO
    .field public static valuetype T_arraytrofrs XRRS
    .field public static valuetype T_RX XRSS
    .field public static valuetype T_array_15 XSPB
    .field public static valuetype T_arraytqofrs XSQS
    .field public static valuetype T_array_4 XSSX
    .field public static valuetype T_array_24 XTBC
    .field public static valuetype T_array_11 XTED
    .field public static valuetype T_array_22 XTGC
    .field public static valuetype T_array_21 XTGMP
    .field public static valuetype T_array_9 XTLS
    .field public static valuetype T_array_27 XTMA
    .field public static valuetype T_array_18 XTMQ
    .field public static valuetype T_array_26 XTMV
    .field public static valuetype T_array_13 XTPC
    .field public static valuetype T_array_14 XTPM
    .field public static valuetype T_array_14 XTPU
    .field public static valuetype T_array_17 XTPV
    .field public static valuetype T_array_31 XTQA
    .field public static valuetype T_array_47 XTQS
    .field public static valuetype T_array_37 XTRFS
    .field public static valuetype T_array_38 XTSF
    .field public static valuetype T_array_3 XTSL
    .field public static valuetype T_array_38 XTSR
    .field public static valuetype T_array_3 XTSX
    .field public static valuetype T_array_3 XTSY
    .field public static valuetype T_array_23 XTUC
    .field public static valuetype T_array_19 XTUMP
}

// line 290

.method static
int32 MAX(int32 A, int32 B)
{
    .maxstack 32

    .locals init(class @MAX _F)
    
    newobj instance void @MAX::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld int32 @MAX::A
    
    ldloc _F
    ldarg B
    stfld int32 @MAX::B

L_Entry:
    // line 293
    ldloc _F
    ldfld int32 @MAX::A
    ldloc _F
    ldfld int32 @MAX::B
    cgt
    brfalse L_else_1
    // line 294
    ldloc _F
    ldloc _F
    ldfld int32 @MAX::A
    stfld int32 @MAX::_fnvalue
    br L_if_end_2
L_else_1:
    // line 296
    ldloc _F
    ldloc _F
    ldfld int32 @MAX::B
    stfld int32 @MAX::_fnvalue
L_if_end_2:
    /* nop */

L_Epilogue:
    ldloc _F
    ldfld int32 @MAX::_fnvalue
    ret
}

// line 300

.method static
int32 MIN(int32 A, int32 B)
{
    .maxstack 32

    .locals init(class @MIN _F)
    
    newobj instance void @MIN::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld int32 @MIN::A
    
    ldloc _F
    ldarg B
    stfld int32 @MIN::B

L_Entry:
    // line 303
    ldloc _F
    ldfld int32 @MIN::A
    ldloc _F
    ldfld int32 @MIN::B
    clt
    brfalse L_else_1
    // line 304
    ldloc _F
    ldloc _F
    ldfld int32 @MIN::A
    stfld int32 @MIN::_fnvalue
    br L_if_end_2
L_else_1:
    // line 306
    ldloc _F
    ldloc _F
    ldfld int32 @MIN::B
    stfld int32 @MIN::_fnvalue
L_if_end_2:
    /* nop */

L_Epilogue:
    ldloc _F
    ldfld int32 @MIN::_fnvalue
    ret
}

// line 310

.method static
int32 SIGN(int32 A, int32 B)
{
    .maxstack 32

    .locals init(class @SIGN _F)
    
    newobj instance void @SIGN::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld int32 @SIGN::A
    
    ldloc _F
    ldarg B
    stfld int32 @SIGN::B

L_Entry:
    // line 315
    ldloc _F
    ldfld int32 @SIGN::B
    ldc.i4 0
    clt
    brfalse L_else_1
    // line 315
    ldloc _F
    ldloc _F
    ldfld int32 @SIGN::A
    dup
    ldc.i4 0
    bge L_abs_question_3
    neg
L_abs_question_3:
    ldc.i4 1
    neg
    mul
    stfld int32 @SIGN::_fnvalue
    br L_if_end_2
L_else_1:
    // line 315
    ldloc _F
    ldloc _F
    ldfld int32 @SIGN::A
    dup
    ldc.i4 0
    bge L_abs_question_4
    neg
L_abs_question_4:
    ldc.i4 1
    mul
    stfld int32 @SIGN::_fnvalue
L_if_end_2:

L_Epilogue:
    ldloc _F
    ldfld int32 @SIGN::_fnvalue
    ret
}

// line 320

.method static
void SORTIT(valuetype T_RE& A, valuetype T_RF& B, int16 C)
{
    .maxstack 32

    .locals init(
        class @SORTIT _F,
        int16 $tmpEndValue1,
        int16 $tmpIndex2,
        int16 $tmpIndex3,
        valuetype T_RE& pinned $A,
        valuetype T_RF& pinned $B)
    
    newobj instance void @SORTIT::.ctor()
    stloc _F
    
    ldarg A
    stloc $A
    
    ldloc _F
    ldarg A
    stfld valuetype T_RE* @SORTIT::A
    
    ldarg B
    stloc $B
    
    ldloc _F
    ldarg B
    stfld valuetype T_RF* @SORTIT::B
    
    ldloc _F
    ldarg C
    stfld int16 @SORTIT::C

L_Entry:
    // line 333
    ldloc _F
    ldfld int16 @SORTIT::C
    stloc $tmpEndValue1
    ldc.i4 1
    ldc.i4 2
    add
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 1
    ldc.i4 500
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int16 @SORTIT::INTW
L_for_loop_1:
    // line 335
    ldloc _F
    ldloc _F
    ldfld int16 @SORTIT::INTW
    ldc.i4 1
    sub
    stfld int32 @SORTIT::INTI
    // line 336
    ldloc _F
    ldloc _F
    ldfld valuetype T_RE* @SORTIT::A
    ldloc _F
    ldfld int16 @SORTIT::INTW
    call instance int16& T_RE::ldadr(int32)
    ldobj int16
    stfld int16 @SORTIT::INTV
    // line 337
    ldloc _F
    ldloc _F
    ldfld valuetype T_RF* @SORTIT::B
    ldloc _F
    ldfld int16 @SORTIT::INTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldobj valuetype T_RM
    stfld valuetype T_RM @SORTIT::INRM
    // line 338
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @SORTIT::INTB
    // line 339
    br L_while_test_4
L_while_3:
    // line 340
    ldloc _F
    ldfld int16 @SORTIT::INTV
    ldloc _F
    ldfld valuetype T_RE* @SORTIT::A
    ldloc _F
    ldfld int32 @SORTIT::INTI
    call instance int16& T_RE::ldadr(int32)
    ldobj int16
    clt
    brfalse L_else_5
    // line 342
    ldloc _F
    ldfld valuetype T_RE* @SORTIT::A
    ldloc _F
    ldfld int32 @SORTIT::INTI
    ldc.i4 1
    add
    call instance int16& T_RE::ldadr(int32)
    ldloc _F
    ldfld valuetype T_RE* @SORTIT::A
    ldloc _F
    ldfld int32 @SORTIT::INTI
    call instance int16& T_RE::ldadr(int32)
    ldobj int16
    stobj int16
    // line 343
    ldloc _F
    ldfld valuetype T_RF* @SORTIT::B
    ldloc _F
    ldfld int32 @SORTIT::INTI
    ldc.i4 1
    add
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldloc _F
    ldfld valuetype T_RF* @SORTIT::B
    ldloc _F
    ldfld int32 @SORTIT::INTI
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldobj valuetype T_RM
    stobj valuetype T_RM
    // line 344
    ldloc _F
    ldloc _F
    ldfld int32 @SORTIT::INTI
    ldc.i4 1
    sub
    stfld int32 @SORTIT::INTI
    /* nop */
    br L_if_end_6
L_else_5:
    // line 347
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @SORTIT::INTB
L_if_end_6:
L_while_test_4:
    ldloc _F
    ldfld int32 @SORTIT::INTI
    ldc.i4 1
    cgt
    dup
    brfalse L_AND_shortcut_7
    pop
    ldloc _F
    ldfld bool @SORTIT::INTB
L_AND_shortcut_7:
    brtrue L_while_3
    // line 348
    ldloc _F
    ldfld valuetype T_RE* @SORTIT::A
    ldloc _F
    ldfld int32 @SORTIT::INTI
    ldc.i4 1
    add
    call instance int16& T_RE::ldadr(int32)
    ldloc _F
    ldfld int16 @SORTIT::INTV
    stobj int16
    // line 349
    ldloc _F
    ldfld valuetype T_RF* @SORTIT::B
    ldloc _F
    ldfld int32 @SORTIT::INTI
    ldc.i4 1
    add
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldloc _F
    ldfld valuetype T_RM @SORTIT::INRM
    stobj valuetype T_RM
    /* nop */
    ldloc _F
    ldfld int16 @SORTIT::INTW
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 1
    ldc.i4 500
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int16 @SORTIT::INTW
    br L_for_loop_1
L_for_end_2:
    pop
    /* nop */

L_Epilogue:
    ret
}

// line 354

.method static
void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
{
    .maxstack 32

    .locals init(
        class @ANDRS _F,
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        int8 $tmpIndex3,
        valuetype T_RS& pinned $C)
    
    newobj instance void @ANDRS::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RS @ANDRS::A
    
    ldloc _F
    ldarg B
    stfld valuetype T_RS @ANDRS::B
    
    ldarg C
    stloc $C
    
    ldloc _F
    ldarg C
    stfld valuetype T_RS* @ANDRS::C

L_Entry:
    // line 363
    ldc.i4 1
    stloc $tmpEndValue1
    ldc.i4 0
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 0
    ldc.i4 1
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int8 @ANDRS::INTY
L_for_loop_1:
    // line 364
    ldloc _F
    ldfld valuetype T_RS* @ANDRS::C
    ldflda valuetype T_array_1 T_RS::RSSS
    ldloc _F
    ldfld int8 @ANDRS::INTY
    call instance valuetype T_SX& T_array_1::ldadr(int32)
    ldloc _F
    ldflda valuetype T_RS @ANDRS::A
    ldflda valuetype T_array_1 T_RS::RSSS
    ldloc _F
    ldfld int8 @ANDRS::INTY
    call instance valuetype T_SX& T_array_1::ldadr(int32)
    ldobj valuetype T_SX
    ldloc _F
    ldflda valuetype T_RS @ANDRS::B
    ldflda valuetype T_array_1 T_RS::RSSS
    ldloc _F
    ldfld int8 @ANDRS::INTY
    call instance valuetype T_SX& T_array_1::ldadr(int32)
    ldobj valuetype T_SX
    call valuetype T_SX _SetIntersection(valuetype T_SX a, valuetype T_SX b)
    stobj valuetype T_SX
    ldloc _F
    ldfld int8 @ANDRS::INTY
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 1
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int8 @ANDRS::INTY
    br L_for_loop_1
L_for_end_2:
    pop
    /* nop */

L_Epilogue:
    ret
}

// line 368

.method static
void CLRRS(valuetype T_RS& C, int8 A)
{
    .maxstack 32

    .locals init(class @CLRRS _F,
        valuetype T_RS& pinned $C)
    
    newobj instance void @CLRRS::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld int8 @CLRRS::A
    
    ldarg C
    stloc $C
    
    ldloc _F
    ldarg C
    stfld valuetype T_RS* @CLRRS::C

L_Entry:
    // line 373
    ldloc _F
    ldfld valuetype T_RS* @CLRRS::C
    ldflda valuetype T_array_1 T_RS::RSSS
    ldsflda valuetype T_array_3 _G::XTSY
    ldloc _F
    ldfld int8 @CLRRS::A
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    call instance valuetype T_SX& T_array_1::ldadr(int32)
    ldloc _F
    ldfld valuetype T_RS* @CLRRS::C
    ldflda valuetype T_array_1 T_RS::RSSS
    ldsflda valuetype T_array_3 _G::XTSY
    ldloc _F
    ldfld int8 @CLRRS::A
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    call instance valuetype T_SX& T_array_1::ldadr(int32)
    ldobj valuetype T_SX
    ldsflda valuetype T_array_4 _G::XSSX
    ldloc _F
    ldfld int8 @CLRRS::A
    call instance valuetype T_SX& T_array_4::ldadr(int32)
    ldobj valuetype T_SX
    call valuetype T_SX _SetDifference(valuetype T_SX a, valuetype T_SX b)
    stobj valuetype T_SX
    /* nop */

L_Epilogue:
    ret
}

// line 377

.method static
void CPYRS(valuetype T_RS& C, valuetype T_RS A)
{
    .maxstack 32

    .locals init(
        class @CPYRS _F,
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        int8 $tmpIndex3,
        valuetype T_RS& pinned $C)
    
    newobj instance void @CPYRS::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RS @CPYRS::A
    
    ldarg C
    stloc $C
    
    ldloc _F
    ldarg C
    stfld valuetype T_RS* @CPYRS::C

L_Entry:
    // line 385
    ldc.i4 1
    stloc $tmpEndValue1
    ldc.i4 0
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 0
    ldc.i4 1
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int8 @CPYRS::INTY
L_for_loop_1:
    // line 386
    ldloc _F
    ldfld valuetype T_RS* @CPYRS::C
    ldflda valuetype T_array_1 T_RS::RSSS
    ldloc _F
    ldfld int8 @CPYRS::INTY
    call instance valuetype T_SX& T_array_1::ldadr(int32)
    ldloc _F
    ldflda valuetype T_RS @CPYRS::A
    ldflda valuetype T_array_1 T_RS::RSSS
    ldloc _F
    ldfld int8 @CPYRS::INTY
    call instance valuetype T_SX& T_array_1::ldadr(int32)
    ldobj valuetype T_SX
    stobj valuetype T_SX
    ldloc _F
    ldfld int8 @CPYRS::INTY
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 1
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int8 @CPYRS::INTY
    br L_for_loop_1
L_for_end_2:
    pop
    /* nop */

L_Epilogue:
    ret
}

// line 390

.method static
void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
{
    .maxstack 32

    .locals init(
        class @IORRS _F,
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        int8 $tmpIndex3,
        valuetype T_RS& pinned $C)
    
    newobj instance void @IORRS::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RS @IORRS::A
    
    ldloc _F
    ldarg B
    stfld valuetype T_RS @IORRS::B
    
    ldarg C
    stloc $C
    
    ldloc _F
    ldarg C
    stfld valuetype T_RS* @IORRS::C

L_Entry:
    // line 398
    ldc.i4 1
    stloc $tmpEndValue1
    ldc.i4 0
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 0
    ldc.i4 1
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int8 @IORRS::INTY
L_for_loop_1:
    // line 399
    ldloc _F
    ldfld valuetype T_RS* @IORRS::C
    ldflda valuetype T_array_1 T_RS::RSSS
    ldloc _F
    ldfld int8 @IORRS::INTY
    call instance valuetype T_SX& T_array_1::ldadr(int32)
    ldloc _F
    ldflda valuetype T_RS @IORRS::A
    ldflda valuetype T_array_1 T_RS::RSSS
    ldloc _F
    ldfld int8 @IORRS::INTY
    call instance valuetype T_SX& T_array_1::ldadr(int32)
    ldobj valuetype T_SX
    ldloc _F
    ldflda valuetype T_RS @IORRS::B
    ldflda valuetype T_array_1 T_RS::RSSS
    ldloc _F
    ldfld int8 @IORRS::INTY
    call instance valuetype T_SX& T_array_1::ldadr(int32)
    ldobj valuetype T_SX
    call valuetype T_SX _SetUnion(valuetype T_SX a, valuetype T_SX b)
    stobj valuetype T_SX
    ldloc _F
    ldfld int8 @IORRS::INTY
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 1
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int8 @IORRS::INTY
    br L_for_loop_1
L_for_end_2:
    pop
    /* nop */

L_Epilogue:
    ret
}

// line 403

.method static
void NEWRS(valuetype T_RS& A)
{
    .maxstack 32

    .locals init(
        class @NEWRS _F,
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        valuetype T_set_5 $tmpSetLiteral3,
        int8 $tmpIndex4,
        valuetype T_RS& pinned $A)
    
    newobj instance void @NEWRS::.ctor()
    stloc _F
    
    ldarg A
    stloc $A
    
    ldloc _F
    ldarg A
    stfld valuetype T_RS* @NEWRS::A


L_Entry:
    // line 410
    ldc.i4 1
    stloc $tmpEndValue1
    ldc.i4 0
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 0
    ldc.i4 1
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int8 @NEWRS::INTY
L_for_loop_1:
    // line 411
    ldloc _F
    ldfld valuetype T_RS* @NEWRS::A
    ldflda valuetype T_array_1 T_RS::RSSS
    ldloc _F
    ldfld int8 @NEWRS::INTY
    call instance valuetype T_SX& T_array_1::ldadr(int32)
    ldloc $tmpSetLiteral3
    dup
    ldc.i4 0
    ldc.i4 31
    call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
    call valuetype T_SX _SetCastTo_T_SX(valuetype T_set_5 s)
    stobj valuetype T_SX
    ldloc _F
    ldfld int8 @NEWRS::INTY
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 1
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex4
    ldloc _F
    ldloc $tmpIndex4
    stfld int8 @NEWRS::INTY
    br L_for_loop_1
L_for_end_2:
    pop
    /* nop */

L_Epilogue:
    ret
}

// line 415

.method static
void NOTRS(valuetype T_RS& C, valuetype T_RS A)
{
    .maxstack 32

    .locals init(
        class @NOTRS _F,
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        valuetype T_set_5 $tmpSetLiteral3,
        int8 $tmpIndex4,
        valuetype T_RS& pinned $C)
    
    newobj instance void @NOTRS::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RS @NOTRS::A
    
    ldarg C
    stloc $C
    
    ldloc _F
    ldarg C
    stfld valuetype T_RS* @NOTRS::C

    ldloca $tmpSetLiteral3
    ldc.i4 0
    ldc.i4 31
    call instance void T_set_5::addRange(int32, int32)

L_Entry:
    // line 423
    ldc.i4 1
    stloc $tmpEndValue1
    ldc.i4 0
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 0
    ldc.i4 1
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int8 @NOTRS::INTY
L_for_loop_1:
    // line 424
    ldloc _F
    ldfld valuetype T_RS* @NOTRS::C
    ldflda valuetype T_array_1 T_RS::RSSS
    ldloc _F
    ldfld int8 @NOTRS::INTY
    call instance valuetype T_SX& T_array_1::ldadr(int32)
    ldloc $tmpSetLiteral3
    ldloc _F
    ldflda valuetype T_RS @NOTRS::A
    ldflda valuetype T_array_1 T_RS::RSSS
    ldloc _F
    ldfld int8 @NOTRS::INTY
    call instance valuetype T_SX& T_array_1::ldadr(int32)
    ldobj valuetype T_SX
    call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_SX s)
    call valuetype T_set_5 _SetDifference(valuetype T_set_5 a, valuetype T_set_5 b)
    dup
    ldc.i4 0
    ldc.i4 31
    call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
    call valuetype T_SX _SetCastTo_T_SX(valuetype T_set_5 s)
    stobj valuetype T_SX
    ldloc _F
    ldfld int8 @NOTRS::INTY
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 1
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex4
    ldloc _F
    ldloc $tmpIndex4
    stfld int8 @NOTRS::INTY
    br L_for_loop_1
L_for_end_2:
    pop
    /* nop */

L_Epilogue:
    ret
}

// line 427

.method static
bool NXTTS(valuetype T_RS& A, int8& B)
{
    .maxstack 32

    .locals init(
        class @NXTTS _F,
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        int8 $tmpEndValue3,
        int8 $tmpIndex4,
        valuetype T_set_5 $tmpSetLiteral5,
        int8 $tmpIndex6,
        int8 $tmpIndex7,
        valuetype T_RS& pinned $A,
        int8& pinned $B)
    
    newobj instance void @NXTTS::.ctor()
    stloc _F
    
    ldarg A
    stloc $A
    
    ldloc _F
    ldarg A
    stfld valuetype T_RS* @NXTTS::A
    
    ldarg B
    stloc $B
    
    ldloc _F
    ldarg B
    stfld int8* @NXTTS::B

L_Entry:
    // line 443
    ldc.i4 0
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    blt L_for_end_2
    dup
    ldc.i4 0
    ldc.i4 1
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int8 @NXTTS::INTY
L_for_loop_1:
    // line 444
    ldloc _F
    ldfld valuetype T_RS* @NXTTS::A
    ldflda valuetype T_array_2 T_RS::RSTI
    ldloc _F
    ldfld int8 @NXTTS::INTY
    call instance int32& T_array_2::ldadr(int32)
    ldobj int32
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_3
    // line 461
    ldc.i4 0
    stloc $tmpEndValue3
    ldc.i4 31
    dup
    ldloc $tmpEndValue3
    blt L_for_end_5
    dup
    ldc.i4 0
    ldc.i4 31
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex4
    ldloc _F
    ldloc $tmpIndex4
    stfld int8 @NXTTS::INTX
L_for_loop_4:
    // line 462
    ldloc _F
    ldfld valuetype T_RS* @NXTTS::A
    ldflda valuetype T_array_1 T_RS::RSSS
    ldloc _F
    ldfld int8 @NXTTS::INTY
    call instance valuetype T_SX& T_array_1::ldadr(int32)
    ldobj valuetype T_SX
    ldloc _F
    ldfld int8 @NXTTS::INTX
    call bool _SetContains(valuetype T_SX s, int32 val)
    brfalse L_if_end_6
    // line 464
    ldloc _F
    ldfld int8* @NXTTS::B
    ldloc _F
    ldfld int8 @NXTTS::INTX
    ldloc _F
    ldfld int8 @NXTTS::INTY
    ldc.i4 31
    ldc.i4 1
    add
    mul
    add
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    // line 465
    ldloca $tmpSetLiteral5
    call instance void T_set_5::clear()
    ldloca $tmpSetLiteral5
    ldloc _F
    ldfld int8 @NXTTS::INTX
    call instance void T_set_5::addValue(int32)
    ldloc _F
    ldfld valuetype T_RS* @NXTTS::A
    ldflda valuetype T_array_1 T_RS::RSSS
    ldloc _F
    ldfld int8 @NXTTS::INTY
    call instance valuetype T_SX& T_array_1::ldadr(int32)
    ldloc _F
    ldfld valuetype T_RS* @NXTTS::A
    ldflda valuetype T_array_1 T_RS::RSSS
    ldloc _F
    ldfld int8 @NXTTS::INTY
    call instance valuetype T_SX& T_array_1::ldadr(int32)
    ldobj valuetype T_SX
    call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_SX s)
    ldloc $tmpSetLiteral5
    call valuetype T_set_5 _SetDifference(valuetype T_set_5 a, valuetype T_set_5 b)
    dup
    ldc.i4 0
    ldc.i4 31
    call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
    call valuetype T_SX _SetCastTo_T_SX(valuetype T_set_5 s)
    stobj valuetype T_SX
    // line 467
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @NXTTS::_fnvalue
    // line 468
    br L_11
    /* nop */
L_if_end_6:
    ldloc _F
    ldfld int8 @NXTTS::INTX
    dup
    ldloc $tmpEndValue3
    beq L_for_end_5
    ldc.i4.1
    sub
    dup
    ldc.i4 0
    ldc.i4 31
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex6
    ldloc _F
    ldloc $tmpIndex6
    stfld int8 @NXTTS::INTX
    br L_for_loop_4
L_for_end_5:
    pop
    /* nop */
L_if_end_3:
    ldloc _F
    ldfld int8 @NXTTS::INTY
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    sub
    dup
    ldc.i4 0
    ldc.i4 1
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex7
    ldloc _F
    ldloc $tmpIndex7
    stfld int8 @NXTTS::INTY
    br L_for_loop_1
L_for_end_2:
    pop
    // line 472
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @NXTTS::_fnvalue
L_11:
    /* nop */

L_Epilogue:
    ldloc _F
    ldfld bool @NXTTS::_fnvalue
    ret
}

// line 477

.method static
int8 CNTRS(valuetype T_RS A)
{
    .maxstack 32

    .locals init(class @CNTRS _F)
    
    newobj instance void @CNTRS::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RS @CNTRS::A

L_Entry:
    // line 486
    ldloc _F
    ldc.i4 0
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @CNTRS::INTS
    // line 488
    ldloc _F
    ldflda valuetype T_RS @CNTRS::INRS
    ldloc _F
    ldfld valuetype T_RS @CNTRS::A
    call void CPYRS(valuetype T_RS& C, valuetype T_RS A)
    // line 489
    br L_while_test_2
L_while_1:
    // line 490
    ldloc _F
    ldloc _F
    ldfld int8 @CNTRS::INTS
    ldc.i4 1
    add
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @CNTRS::INTS
L_while_test_2:
    ldloc _F
    ldflda valuetype T_RS @CNTRS::INRS
    ldloc _F
    ldflda int8 @CNTRS::IMTS
    call bool NXTTS(valuetype T_RS& A, int8& B)
    brtrue L_while_1
    // line 498
    ldloc _F
    ldloc _F
    ldfld int8 @CNTRS::INTS
    stfld int8 @CNTRS::_fnvalue
    /* nop */

L_Epilogue:
    ldloc _F
    ldfld int8 @CNTRS::_fnvalue
    ret
}

// line 502

.method static
void SETRS(valuetype T_RS& C, int8 A)
{
    .maxstack 32

    .locals init(class @SETRS _F,
        valuetype T_RS& pinned $C)
    
    newobj instance void @SETRS::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld int8 @SETRS::A
    
    ldarg C
    stloc $C
    
    ldloc _F
    ldarg C
    stfld valuetype T_RS* @SETRS::C

L_Entry:
    // line 507
    ldloc _F
    ldfld valuetype T_RS* @SETRS::C
    ldflda valuetype T_array_1 T_RS::RSSS
    ldsflda valuetype T_array_3 _G::XTSY
    ldloc _F
    ldfld int8 @SETRS::A
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    call instance valuetype T_SX& T_array_1::ldadr(int32)
    ldloc _F
    ldfld valuetype T_RS* @SETRS::C
    ldflda valuetype T_array_1 T_RS::RSSS
    ldsflda valuetype T_array_3 _G::XTSY
    ldloc _F
    ldfld int8 @SETRS::A
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    call instance valuetype T_SX& T_array_1::ldadr(int32)
    ldobj valuetype T_SX
    ldsflda valuetype T_array_4 _G::XSSX
    ldloc _F
    ldfld int8 @SETRS::A
    call instance valuetype T_SX& T_array_4::ldadr(int32)
    ldobj valuetype T_SX
    call valuetype T_SX _SetUnion(valuetype T_SX a, valuetype T_SX b)
    stobj valuetype T_SX
    /* nop */

L_Epilogue:
    ret
}

// line 511

.method static
void SFTRS(valuetype T_RS& A, valuetype T_RS B, int32 C)
{
    .maxstack 32

    .locals init(class @SFTRS _F,
        valuetype T_RS& pinned $A)
    
    newobj instance void @SFTRS::.ctor()
    stloc _F
    
    ldarg A
    stloc $A
    
    ldloc _F
    ldarg A
    stfld valuetype T_RS* @SFTRS::A
    
    ldloc _F
    ldarg B
    stfld valuetype T_RS @SFTRS::B
    
    ldloc _F
    ldarg C
    stfld int32 @SFTRS::C

L_Entry:
    // line 521
    ldloc _F
    ldfld valuetype T_RS* @SFTRS::A
    call void NEWRS(valuetype T_RS& A)
    // line 522
    br L_while_test_2
L_while_1:
    // line 523
    ldsflda valuetype T_array_9 _G::XTLS
    ldsflda valuetype T_array_3 _G::XTSL
    ldloc _F
    ldfld int8 @SFTRS::INTS
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    ldsflda valuetype T_array_11 _G::XTED
    ldloc _F
    ldfld int32 @SFTRS::C
    call instance int8& T_array_11::ldadr(int32)
    ldobj int8
    add
    call instance int8& T_array_9::ldadr(int32)
    ldobj int8
    ldc.i4 0
    cgt
    brfalse L_if_end_3
    // line 525
    ldloc _F
    ldfld valuetype T_RS* @SFTRS::A
    ldsflda valuetype T_array_9 _G::XTLS
    ldsflda valuetype T_array_3 _G::XTSL
    ldloc _F
    ldfld int8 @SFTRS::INTS
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    ldsflda valuetype T_array_11 _G::XTED
    ldloc _F
    ldfld int32 @SFTRS::C
    call instance int8& T_array_11::ldadr(int32)
    ldobj int8
    add
    call instance int8& T_array_9::ldadr(int32)
    ldobj int8
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call void SETRS(valuetype T_RS& C, int8 A)
L_if_end_3:
L_while_test_2:
    ldloc _F
    ldflda valuetype T_RS @SFTRS::B
    ldloc _F
    ldflda int8 @SFTRS::INTS
    call bool NXTTS(valuetype T_RS& A, int8& B)
    brtrue L_while_1
    /* nop */

L_Epilogue:
    ret
}

// line 619

.method static
bool INRSTB(valuetype T_RS A, int8 B)
{
    .maxstack 32

    .locals init(class @INRSTB _F)
    
    newobj instance void @INRSTB::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RS @INRSTB::A
    
    ldloc _F
    ldarg B
    stfld int8 @INRSTB::B

L_Entry:
    // line 624
    ldloc _F
    ldsflda valuetype T_array_4 _G::XSSX
    ldloc _F
    ldfld int8 @INRSTB::B
    call instance valuetype T_SX& T_array_4::ldadr(int32)
    ldobj valuetype T_SX
    ldloc _F
    ldflda valuetype T_RS @INRSTB::A
    ldflda valuetype T_array_1 T_RS::RSSS
    ldsflda valuetype T_array_3 _G::XTSY
    ldloc _F
    ldfld int8 @INRSTB::B
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    call instance valuetype T_SX& T_array_1::ldadr(int32)
    ldobj valuetype T_SX
    call bool _SetIsSubset(valuetype T_SX a, valuetype T_SX b)
    stfld bool @INRSTB::_fnvalue
    /* nop */

L_Epilogue:
    ldloc _F
    ldfld bool @INRSTB::_fnvalue
    ret
}

// line 627

.method static
bool NULRS(valuetype T_RS A)
{
    .maxstack 32

    .locals init(
        class @NULRS _F,
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        int8 $tmpIndex3)
    
    newobj instance void @NULRS::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RS @NULRS::A

L_Entry:
    // line 636
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @NULRS::INTB
    // line 637
    ldc.i4 1
    stloc $tmpEndValue1
    ldc.i4 0
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 0
    ldc.i4 1
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int8 @NULRS::INTY
L_for_loop_1:
    // line 638
    ldloc _F
    ldloc _F
    ldfld bool @NULRS::INTB
    dup
    brfalse L_AND_shortcut_3
    pop
    ldloc _F
    ldflda valuetype T_RS @NULRS::A
    ldflda valuetype T_array_2 T_RS::RSTI
    ldloc _F
    ldfld int8 @NULRS::INTY
    call instance int32& T_array_2::ldadr(int32)
    ldobj int32
    ldc.i4 0
    ceq
L_AND_shortcut_3:
    stfld bool @NULRS::INTB
    ldloc _F
    ldfld int8 @NULRS::INTY
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 1
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int8 @NULRS::INTY
    br L_for_loop_1
L_for_end_2:
    pop
    // line 639
    ldloc _F
    ldloc _F
    ldfld bool @NULRS::INTB
    stfld bool @NULRS::_fnvalue
    /* nop */

L_Epilogue:
    ldloc _F
    ldfld bool @NULRS::_fnvalue
    ret
}

// line 643

.method static
bool NULMVB(valuetype T_RM A)
{
    .maxstack 32

    .locals init(class @NULMVB _F)
    
    newobj instance void @NULMVB::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RM @NULMVB::A

L_Entry:
    // line 649
    ldloc _F
    ldloc _F
    ldflda valuetype T_RM @NULMVB::A
    ldfld bool T_RM::RMAC
    dup
    brfalse L_AND_shortcut_2
    pop
    ldloc _F
    ldflda valuetype T_RM @NULMVB::A
    ldfld bool T_RM::RMPR
L_AND_shortcut_2:
    dup
    brfalse L_AND_shortcut_1
    pop
    ldloc _F
    ldflda valuetype T_RM @NULMVB::A
    ldfld bool T_RM::RMCA
    ldc.i4.0
    ceq
L_AND_shortcut_1:
    stfld bool @NULMVB::_fnvalue
    /* nop */

L_Epilogue:
    ldloc _F
    ldfld bool @NULMVB::_fnvalue
    ret
}

// line 653

.method static
void INICON()
{
    .maxstack 32

    .locals init(
        class @INICON _F,
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        int8 $tmpIndex3,
        int32 $tmpEndValue4,
        int32 $tmpIndex5,
        int32 $tmpEndValue6,
        int32 $tmpIndex7,
        int32 $tmpIndex8,
        int32 $tmpIndex9,
        int8 $tmpEndValue10,
        int8 $tmpIndex11,
        int8 $tmpEndValue12,
        int8 $tmpIndex13,
        valuetype T_set_5 $tmpSetLiteral14,
        valuetype T_set_5 $tmpSetLiteral15,
        int8 $tmpIndex16,
        int8 $tmpIndex17,
        int32 $tmpEndValue18,
        int32 $tmpIndex19,
        int32 $tmpIndex20,
        int32 $tmpEndValue21,
        int32 $tmpIndex22,
        int32 $tmpIndex23,
        int32 $tmpEndValue24,
        int32 $tmpIndex25,
        int32 $tmpEndValue26,
        int32 $tmpIndex27,
        int32 $tmpIndex28,
        int32 $tmpIndex29,
        int32 $tmpEndValue30,
        int32 $tmpIndex31,
        int32 $tmpIndex32,
        int32 $tmpEndValue33,
        int32 $tmpIndex34,
        int32 $tmpIndex35,
        int32 $tmpEndValue36,
        int32 $tmpIndex37,
        int32 $tmpIndex38,
        int32 $tmpEndValue39,
        int32 $tmpIndex40,
        int32 $tmpEndValue41,
        int32 $tmpIndex42,
        int32 $tmpIndex43,
        int32 $tmpIndex44,
        int32 $tmpEndValue45,
        int32 $tmpIndex46,
        int32 $tmpIndex47,
        int32 $tmpEndValue48,
        int32 $tmpIndex49,
        int32 $tmpIndex50)
    
    newobj instance void @INICON::.ctor()
    stloc _F

L_Entry:
    // line 726
    ldloc _F
    ldc.i4 0
    ldc.i4 65 // 'A'
    ldc.i4 0
    ldc.i4 0
    ldc.i4 0 // (false)
    ldc.i4 0
    ldc.i4 1
    ldc.i4 1
    ldc.i4 64
    mul
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @INICON::INIXTP(int32 A, uint8 B, int32 C, int32 D, bool E, int32 F, int32 G, int16 H)
    // line 727
    ldloc _F
    ldc.i4 1
    ldc.i4 66 // 'B'
    ldc.i4 0
    ldc.i4 1
    ldc.i4 1 // (true)
    ldc.i4 4
    ldc.i4 7
    ldc.i4 5
    ldc.i4 64
    mul
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @INICON::INIXTP(int32 A, uint8 B, int32 C, int32 D, bool E, int32 F, int32 G, int16 H)
    // line 728
    ldloc _F
    ldc.i4 2
    ldc.i4 67 // 'C'
    ldc.i4 0
    ldc.i4 2
    ldc.i4 0 // (false)
    ldc.i4 8
    ldc.i4 15
    ldc.i4 3
    ldc.i4 64
    mul
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @INICON::INIXTP(int32 A, uint8 B, int32 C, int32 D, bool E, int32 F, int32 G, int16 H)
    // line 729
    ldloc _F
    ldc.i4 3
    ldc.i4 68 // 'D'
    ldc.i4 0
    ldc.i4 3
    ldc.i4 1 // (true)
    ldc.i4 0
    ldc.i4 3
    ldc.i4 3
    ldc.i4 64
    mul
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @INICON::INIXTP(int32 A, uint8 B, int32 C, int32 D, bool E, int32 F, int32 G, int16 H)
    // line 730
    ldloc _F
    ldc.i4 4
    ldc.i4 69 // 'E'
    ldc.i4 0
    ldc.i4 4
    ldc.i4 1 // (true)
    ldc.i4 0
    ldc.i4 7
    ldc.i4 9
    ldc.i4 64
    mul
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @INICON::INIXTP(int32 A, uint8 B, int32 C, int32 D, bool E, int32 F, int32 G, int16 H)
    // line 731
    ldloc _F
    ldc.i4 5
    ldc.i4 70 // 'F'
    ldc.i4 0
    ldc.i4 5
    ldc.i4 0 // (false)
    ldc.i4 0
    ldc.i4 7
    ldc.i4 0
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @INICON::INIXTP(int32 A, uint8 B, int32 C, int32 D, bool E, int32 F, int32 G, int16 H)
    // line 732
    ldloc _F
    ldc.i4 6
    ldc.i4 49 // '1'
    ldc.i4 1
    ldc.i4 0
    ldc.i4 0 // (false)
    ldc.i4 2
    ldc.i4 3
    ldc.i4 1
    neg
    ldc.i4 64
    mul
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @INICON::INIXTP(int32 A, uint8 B, int32 C, int32 D, bool E, int32 F, int32 G, int16 H)
    // line 733
    ldloc _F
    ldc.i4 7
    ldc.i4 50 // '2'
    ldc.i4 1
    ldc.i4 1
    ldc.i4 1 // (true)
    ldc.i4 4
    ldc.i4 7
    ldc.i4 5
    neg
    ldc.i4 64
    mul
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @INICON::INIXTP(int32 A, uint8 B, int32 C, int32 D, bool E, int32 F, int32 G, int16 H)
    // line 734
    ldloc _F
    ldc.i4 8
    ldc.i4 51 // '3'
    ldc.i4 1
    ldc.i4 2
    ldc.i4 0 // (false)
    ldc.i4 8
    ldc.i4 15
    ldc.i4 3
    neg
    ldc.i4 64
    mul
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @INICON::INIXTP(int32 A, uint8 B, int32 C, int32 D, bool E, int32 F, int32 G, int16 H)
    // line 735
    ldloc _F
    ldc.i4 9
    ldc.i4 52 // '4'
    ldc.i4 1
    ldc.i4 3
    ldc.i4 1 // (true)
    ldc.i4 0
    ldc.i4 3
    ldc.i4 3
    neg
    ldc.i4 64
    mul
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @INICON::INIXTP(int32 A, uint8 B, int32 C, int32 D, bool E, int32 F, int32 G, int16 H)
    // line 736
    ldloc _F
    ldc.i4 10
    ldc.i4 53 // '5'
    ldc.i4 1
    ldc.i4 4
    ldc.i4 1 // (true)
    ldc.i4 0
    ldc.i4 7
    ldc.i4 9
    neg
    ldc.i4 64
    mul
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @INICON::INIXTP(int32 A, uint8 B, int32 C, int32 D, bool E, int32 F, int32 G, int16 H)
    // line 737
    ldloc _F
    ldc.i4 11
    ldc.i4 54 // '6'
    ldc.i4 1
    ldc.i4 5
    ldc.i4 0 // (false)
    ldc.i4 0
    ldc.i4 7
    ldc.i4 0
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @INICON::INIXTP(int32 A, uint8 B, int32 C, int32 D, bool E, int32 F, int32 G, int16 H)
    // line 738
    ldloc _F
    ldc.i4 12
    ldc.i4 45 // '-'
    ldc.i4 2
    ldc.i4 0
    ldc.i4 0 // (false)
    ldc.i4 1
    ldc.i4 0
    ldc.i4 0
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @INICON::INIXTP(int32 A, uint8 B, int32 C, int32 D, bool E, int32 F, int32 G, int16 H)
    // line 740
    ldsflda valuetype T_array_21 _G::XTGMP
    ldc.i4 0
    call instance valuetype T_array_18& T_array_21::ldadr(int32)
    ldc.i4 0
    call instance int32& T_array_18::ldadr(int32)
    ldc.i4 4
    stobj int32
    // line 740
    ldsflda valuetype T_array_21 _G::XTGMP
    ldc.i4 0
    call instance valuetype T_array_18& T_array_21::ldadr(int32)
    ldc.i4 1
    call instance int32& T_array_18::ldadr(int32)
    ldc.i4 10
    stobj int32
    // line 740
    ldsflda valuetype T_array_22 _G::XTGC
    ldc.i4 0
    call instance uint8& T_array_22::ldadr(int32)
    ldc.i4 81 // 'Q'
    stobj uint8
    // line 741
    ldsflda valuetype T_array_21 _G::XTGMP
    ldc.i4 1
    call instance valuetype T_array_18& T_array_21::ldadr(int32)
    ldc.i4 0
    call instance int32& T_array_18::ldadr(int32)
    ldc.i4 1
    stobj int32
    // line 741
    ldsflda valuetype T_array_21 _G::XTGMP
    ldc.i4 1
    call instance valuetype T_array_18& T_array_21::ldadr(int32)
    ldc.i4 1
    call instance int32& T_array_18::ldadr(int32)
    ldc.i4 7
    stobj int32
    // line 741
    ldsflda valuetype T_array_22 _G::XTGC
    ldc.i4 1
    call instance uint8& T_array_22::ldadr(int32)
    ldc.i4 82 // 'R'
    stobj uint8
    // line 742
    ldsflda valuetype T_array_21 _G::XTGMP
    ldc.i4 2
    call instance valuetype T_array_18& T_array_21::ldadr(int32)
    ldc.i4 0
    call instance int32& T_array_18::ldadr(int32)
    ldc.i4 2
    stobj int32
    // line 742
    ldsflda valuetype T_array_21 _G::XTGMP
    ldc.i4 2
    call instance valuetype T_array_18& T_array_21::ldadr(int32)
    ldc.i4 1
    call instance int32& T_array_18::ldadr(int32)
    ldc.i4 8
    stobj int32
    // line 742
    ldsflda valuetype T_array_22 _G::XTGC
    ldc.i4 2
    call instance uint8& T_array_22::ldadr(int32)
    ldc.i4 78 // 'N'
    stobj uint8
    // line 743
    ldsflda valuetype T_array_21 _G::XTGMP
    ldc.i4 3
    call instance valuetype T_array_18& T_array_21::ldadr(int32)
    ldc.i4 0
    call instance int32& T_array_18::ldadr(int32)
    ldc.i4 3
    stobj int32
    // line 743
    ldsflda valuetype T_array_21 _G::XTGMP
    ldc.i4 3
    call instance valuetype T_array_18& T_array_21::ldadr(int32)
    ldc.i4 1
    call instance int32& T_array_18::ldadr(int32)
    ldc.i4 9
    stobj int32
    // line 743
    ldsflda valuetype T_array_22 _G::XTGC
    ldc.i4 3
    call instance uint8& T_array_22::ldadr(int32)
    ldc.i4 66 // 'B'
    stobj uint8
    // line 745
    ldsflda valuetype T_array_23 _G::XTUC
    ldc.i4 5
    call instance uint8& T_array_23::ldadr(int32)
    ldc.i4 75 // 'K'
    stobj uint8
    // line 746
    ldsflda valuetype T_array_23 _G::XTUC
    ldc.i4 4
    call instance uint8& T_array_23::ldadr(int32)
    ldc.i4 81 // 'Q'
    stobj uint8
    // line 747
    ldsflda valuetype T_array_23 _G::XTUC
    ldc.i4 1
    call instance uint8& T_array_23::ldadr(int32)
    ldc.i4 82 // 'R'
    stobj uint8
    // line 748
    ldsflda valuetype T_array_23 _G::XTUC
    ldc.i4 2
    call instance uint8& T_array_23::ldadr(int32)
    ldc.i4 78 // 'N'
    stobj uint8
    // line 749
    ldsflda valuetype T_array_23 _G::XTUC
    ldc.i4 3
    call instance uint8& T_array_23::ldadr(int32)
    ldc.i4 66 // 'B'
    stobj uint8
    // line 750
    ldsflda valuetype T_array_23 _G::XTUC
    ldc.i4 0
    call instance uint8& T_array_23::ldadr(int32)
    ldc.i4 80 // 'P'
    stobj uint8
    // line 754
    ldsflda valuetype T_array_24 _G::XTBC
    ldc.i4 0 // (false)
    call instance uint8& T_array_24::ldadr(int32)
    ldc.i4 45 // '-'
    stobj uint8
    // line 755
    ldsflda valuetype T_array_24 _G::XTBC
    ldc.i4 1 // (true)
    call instance uint8& T_array_24::ldadr(int32)
    ldc.i4 42 // '*'
    stobj uint8
    // line 757
    ldsflda valuetype T_array_18 _G::OTHER
    ldc.i4 0
    call instance int32& T_array_18::ldadr(int32)
    ldc.i4 1
    stobj int32
    // line 757
    ldsflda valuetype T_array_26 _G::XTMV
    ldc.i4 0
    call instance int16& T_array_26::ldadr(int32)
    ldc.i4 1
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int16
    // line 758
    ldsflda valuetype T_array_18 _G::OTHER
    ldc.i4 1
    call instance int32& T_array_18::ldadr(int32)
    ldc.i4 0
    stobj int32
    // line 758
    ldsflda valuetype T_array_26 _G::XTMV
    ldc.i4 1
    call instance int16& T_array_26::ldadr(int32)
    ldc.i4 1
    neg
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int16
    // line 759
    ldsflda valuetype T_array_18 _G::OTHER
    ldc.i4 2
    call instance int32& T_array_18::ldadr(int32)
    ldc.i4 2
    stobj int32
    // line 761
    ldsflda valuetype T_array_27 _G::XTMA
    ldc.i4 0
    call instance valuetype T_RA& T_array_27::ldadr(int32)
    ldsfld valuetype T_RA STRING_1    // "    WHITE "
    stobj valuetype T_RA
    // line 762
    ldsflda valuetype T_array_27 _G::XTMA
    ldc.i4 1
    call instance valuetype T_RA& T_array_27::ldadr(int32)
    ldsfld valuetype T_RA STRING_2    // "    BLACK "
    stobj valuetype T_RA
    // line 763
    ldsflda valuetype T_array_27 _G::XTMA
    ldc.i4 2
    call instance valuetype T_RA& T_array_27::ldadr(int32)
    ldsfld valuetype T_RA STRING_3    // "   NO ONE "
    stobj valuetype T_RA
    // line 765
    ldsflda valuetype T_array_31 _G::XTQA
    ldc.i4 0
    call instance valuetype T_RA& T_array_31::ldadr(int32)
    ldsfld valuetype T_RA STRING_4    // "WHITE KING"
    stobj valuetype T_RA
    // line 766
    ldsflda valuetype T_array_31 _G::XTQA
    ldc.i4 1
    call instance valuetype T_RA& T_array_31::ldadr(int32)
    ldsfld valuetype T_RA STRING_5    // "WHITE LONG"
    stobj valuetype T_RA
    // line 767
    ldsflda valuetype T_array_31 _G::XTQA
    ldc.i4 2
    call instance valuetype T_RA& T_array_31::ldadr(int32)
    ldsfld valuetype T_RA STRING_6    // "BLACK KING"
    stobj valuetype T_RA
    // line 768
    ldsflda valuetype T_array_31 _G::XTQA
    ldc.i4 3
    call instance valuetype T_RA& T_array_31::ldadr(int32)
    ldsfld valuetype T_RA STRING_7    // "BLACK LONG"
    stobj valuetype T_RA
    // line 772
    ldc.i4 119
    stloc $tmpEndValue1
    ldc.i4 0
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 0
    ldc.i4 119
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int8 @INICON::INTL
L_for_loop_1:
    // line 773
    ldsflda valuetype T_array_9 _G::XTLS
    ldloc _F
    ldfld int8 @INICON::INTL
    call instance int8& T_array_9::ldadr(int32)
    ldc.i4 1
    neg
    dup
    ldc.i4 -1
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    ldloc _F
    ldfld int8 @INICON::INTL
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 119
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int8 @INICON::INTL
    br L_for_loop_1
L_for_end_2:
    pop
    // line 774
    ldloc _F
    ldc.i4 21
    dup
    ldc.i4 0
    ldc.i4 119
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @INICON::INTL
    // line 776
    ldloc _F
    ldc.i4 1
    neg
    dup
    ldc.i4 -1
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @INICON::INTT
    // line 778
    ldc.i4 7
    stloc $tmpEndValue4
    ldc.i4 0
    dup
    ldloc $tmpEndValue4
    bgt L_for_end_4
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex5
    ldloc _F
    ldloc $tmpIndex5
    stfld int32 @INICON::INTR
L_for_loop_3:
    // line 780
    ldc.i4 7
    stloc $tmpEndValue6
    ldc.i4 0
    dup
    ldloc $tmpEndValue6
    bgt L_for_end_6
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex7
    ldloc _F
    ldloc $tmpIndex7
    stfld int32 @INICON::INTF
L_for_loop_5:
    // line 782
    ldloc _F
    ldloc _F
    ldfld int8 @INICON::INTT
    ldc.i4 1
    add
    dup
    ldc.i4 -1
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @INICON::INTT
    // line 783
    ldsflda valuetype T_array_37 _G::XTRFS
    ldloc _F
    ldfld int32 @INICON::INTR
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldloc _F
    ldfld int32 @INICON::INTF
    call instance int8& T_array_36::ldadr(int32)
    ldloc _F
    ldfld int8 @INICON::INTT
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    // line 785
    ldsflda valuetype T_array_9 _G::XTLS
    ldloc _F
    ldfld int8 @INICON::INTL
    call instance int8& T_array_9::ldadr(int32)
    ldloc _F
    ldfld int8 @INICON::INTT
    stobj int8
    // line 787
    ldsflda valuetype T_array_3 _G::XTSL
    ldloc _F
    ldfld int8 @INICON::INTT
    call instance int8& T_array_3::ldadr(int32)
    ldloc _F
    ldfld int8 @INICON::INTL
    stobj int8
    // line 789
    ldsflda valuetype T_array_38 _G::XTSR
    ldloc _F
    ldfld int8 @INICON::INTT
    call instance int32& T_array_38::ldadr(int32)
    ldloc _F
    ldfld int32 @INICON::INTR
    stobj int32
    // line 790
    ldsflda valuetype T_array_38 _G::XTSF
    ldloc _F
    ldfld int8 @INICON::INTT
    call instance int32& T_array_38::ldadr(int32)
    ldloc _F
    ldfld int32 @INICON::INTF
    stobj int32
    // line 791
    ldloc _F
    ldloc _F
    ldfld int8 @INICON::INTL
    ldc.i4 1
    add
    dup
    ldc.i4 0
    ldc.i4 119
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @INICON::INTL
    /* nop */
    ldloc _F
    ldfld int32 @INICON::INTF
    dup
    ldloc $tmpEndValue6
    beq L_for_end_6
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex8
    ldloc _F
    ldloc $tmpIndex8
    stfld int32 @INICON::INTF
    br L_for_loop_5
L_for_end_6:
    pop
    // line 793
    ldloc _F
    ldloc _F
    ldfld int8 @INICON::INTL
    ldc.i4 2
    add
    dup
    ldc.i4 0
    ldc.i4 119
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @INICON::INTL
    /* nop */
    ldloc _F
    ldfld int32 @INICON::INTR
    dup
    ldloc $tmpEndValue4
    beq L_for_end_4
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex9
    ldloc _F
    ldloc $tmpIndex9
    stfld int32 @INICON::INTR
    br L_for_loop_3
L_for_end_4:
    pop
    // line 799
    ldloc _F
    ldc.i4 1
    neg
    dup
    ldc.i4 -1
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @INICON::INTT
    // line 800
    ldc.i4 1
    stloc $tmpEndValue10
    ldc.i4 0
    dup
    ldloc $tmpEndValue10
    bgt L_for_end_8
    dup
    ldc.i4 0
    ldc.i4 1
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex11
    ldloc _F
    ldloc $tmpIndex11
    stfld int8 @INICON::INTY
L_for_loop_7:
    // line 802
    ldc.i4 31
    stloc $tmpEndValue12
    ldc.i4 0
    dup
    ldloc $tmpEndValue12
    bgt L_for_end_10
    dup
    ldc.i4 0
    ldc.i4 31
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex13
    ldloc _F
    ldloc $tmpIndex13
    stfld int8 @INICON::INTX
L_for_loop_9:
    // line 804
    ldloc _F
    ldloc _F
    ldfld int8 @INICON::INTT
    ldc.i4 1
    add
    dup
    ldc.i4 -1
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @INICON::INTT
    // line 805
    ldsflda valuetype T_array_3 _G::XTSX
    ldloc _F
    ldfld int8 @INICON::INTT
    call instance int8& T_array_3::ldadr(int32)
    ldloc _F
    ldfld int8 @INICON::INTX
    stobj int8
    // line 806
    ldsflda valuetype T_array_3 _G::XTSY
    ldloc _F
    ldfld int8 @INICON::INTT
    call instance int8& T_array_3::ldadr(int32)
    ldloc _F
    ldfld int8 @INICON::INTY
    stobj int8
    // line 807
    ldloca $tmpSetLiteral14
    call instance void T_set_5::clear()
    ldloca $tmpSetLiteral14
    ldloc _F
    ldfld int8 @INICON::INTX
    call instance void T_set_5::addValue(int32)
    ldsflda valuetype T_array_4 _G::XSSX
    ldloc _F
    ldfld int8 @INICON::INTT
    call instance valuetype T_SX& T_array_4::ldadr(int32)
    ldloc $tmpSetLiteral14
    dup
    ldc.i4 0
    ldc.i4 31
    call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
    call valuetype T_SX _SetCastTo_T_SX(valuetype T_set_5 s)
    stobj valuetype T_SX
    // line 808
    ldsflda valuetype T_RX _G::XRSS
    ldloc _F
    ldfld int8 @INICON::INTT
    call instance valuetype T_RS& T_RX::ldadr(int32)
    call void NEWRS(valuetype T_RS& A)
    // line 809
    ldloca $tmpSetLiteral15
    call instance void T_set_5::clear()
    ldloca $tmpSetLiteral15
    ldloc _F
    ldfld int8 @INICON::INTX
    call instance void T_set_5::addValue(int32)
    ldsflda valuetype T_RX _G::XRSS
    ldloc _F
    ldfld int8 @INICON::INTT
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldflda valuetype T_array_1 T_RS::RSSS
    ldloc _F
    ldfld int8 @INICON::INTY
    call instance valuetype T_SX& T_array_1::ldadr(int32)
    ldloc $tmpSetLiteral15
    dup
    ldc.i4 0
    ldc.i4 31
    call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
    call valuetype T_SX _SetCastTo_T_SX(valuetype T_set_5 s)
    stobj valuetype T_SX
    /* nop */
    ldloc _F
    ldfld int8 @INICON::INTX
    dup
    ldloc $tmpEndValue12
    beq L_for_end_10
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 31
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex16
    ldloc _F
    ldloc $tmpIndex16
    stfld int8 @INICON::INTX
    br L_for_loop_9
L_for_end_10:
    pop
    /* nop */
    ldloc _F
    ldfld int8 @INICON::INTY
    dup
    ldloc $tmpEndValue10
    beq L_for_end_8
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 1
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex17
    ldloc _F
    ldloc $tmpIndex17
    stfld int8 @INICON::INTY
    br L_for_loop_7
L_for_end_8:
    pop
    // line 815
    ldc.i4 7
    stloc $tmpEndValue18
    ldc.i4 0
    dup
    ldloc $tmpEndValue18
    bgt L_for_end_12
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex19
    ldloc _F
    ldloc $tmpIndex19
    stfld int32 @INICON::INTR
L_for_loop_11:
    // line 816
    ldsflda valuetype T_arraytrofrs _G::XRRS
    ldloc _F
    ldfld int32 @INICON::INTR
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    call void NEWRS(valuetype T_RS& A)
    ldloc _F
    ldfld int32 @INICON::INTR
    dup
    ldloc $tmpEndValue18
    beq L_for_end_12
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex20
    ldloc _F
    ldloc $tmpIndex20
    stfld int32 @INICON::INTR
    br L_for_loop_11
L_for_end_12:
    pop
    // line 817
    ldc.i4 7
    stloc $tmpEndValue21
    ldc.i4 0
    dup
    ldloc $tmpEndValue21
    bgt L_for_end_14
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex22
    ldloc _F
    ldloc $tmpIndex22
    stfld int32 @INICON::INTF
L_for_loop_13:
    // line 818
    ldsflda valuetype T_arraytrofrs _G::XRFS
    ldloc _F
    ldfld int32 @INICON::INTF
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    call void NEWRS(valuetype T_RS& A)
    ldloc _F
    ldfld int32 @INICON::INTF
    dup
    ldloc $tmpEndValue21
    beq L_for_end_14
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex23
    ldloc _F
    ldloc $tmpIndex23
    stfld int32 @INICON::INTF
    br L_for_loop_13
L_for_end_14:
    pop
    // line 820
    ldc.i4 7
    stloc $tmpEndValue24
    ldc.i4 0
    dup
    ldloc $tmpEndValue24
    bgt L_for_end_16
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex25
    ldloc _F
    ldloc $tmpIndex25
    stfld int32 @INICON::INTR
L_for_loop_15:
    // line 821
    ldc.i4 7
    stloc $tmpEndValue26
    ldc.i4 0
    dup
    ldloc $tmpEndValue26
    bgt L_for_end_18
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex27
    ldloc _F
    ldloc $tmpIndex27
    stfld int32 @INICON::INTF
L_for_loop_17:
    // line 823
    ldsflda valuetype T_arraytrofrs _G::XRRS
    ldloc _F
    ldfld int32 @INICON::INTR
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldsflda valuetype T_array_37 _G::XTRFS
    ldloc _F
    ldfld int32 @INICON::INTR
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldloc _F
    ldfld int32 @INICON::INTF
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call void SETRS(valuetype T_RS& C, int8 A)
    // line 824
    ldsflda valuetype T_arraytrofrs _G::XRFS
    ldloc _F
    ldfld int32 @INICON::INTF
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldsflda valuetype T_array_37 _G::XTRFS
    ldloc _F
    ldfld int32 @INICON::INTR
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldloc _F
    ldfld int32 @INICON::INTF
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call void SETRS(valuetype T_RS& C, int8 A)
    /* nop */
    ldloc _F
    ldfld int32 @INICON::INTF
    dup
    ldloc $tmpEndValue26
    beq L_for_end_18
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex28
    ldloc _F
    ldloc $tmpIndex28
    stfld int32 @INICON::INTF
    br L_for_loop_17
L_for_end_18:
    pop
    ldloc _F
    ldfld int32 @INICON::INTR
    dup
    ldloc $tmpEndValue24
    beq L_for_end_16
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex29
    ldloc _F
    ldloc $tmpIndex29
    stfld int32 @INICON::INTR
    br L_for_loop_15
L_for_end_16:
    pop
    // line 827
    ldc.i4 7
    stloc $tmpEndValue30
    ldc.i4 0
    dup
    ldloc $tmpEndValue30
    bgt L_for_end_20
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex31
    ldloc _F
    ldloc $tmpIndex31
    stfld int32 @INICON::INTF
L_for_loop_19:
    // line 828
    ldsflda valuetype T_arraytrofrs _G::XNFS
    ldloc _F
    ldfld int32 @INICON::INTF
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldsflda valuetype T_arraytrofrs _G::XRFS
    ldloc _F
    ldfld int32 @INICON::INTF
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void NOTRS(valuetype T_RS& C, valuetype T_RS A)
    ldloc _F
    ldfld int32 @INICON::INTF
    dup
    ldloc $tmpEndValue30
    beq L_for_end_20
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex32
    ldloc _F
    ldloc $tmpIndex32
    stfld int32 @INICON::INTF
    br L_for_loop_19
L_for_end_20:
    pop
    // line 830
    ldc.i4 7
    stloc $tmpEndValue33
    ldc.i4 0
    dup
    ldloc $tmpEndValue33
    bgt L_for_end_22
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex34
    ldloc _F
    ldloc $tmpIndex34
    stfld int32 @INICON::INTR
L_for_loop_21:
    // line 831
    ldsflda valuetype T_arraytrofrs _G::XNRS
    ldloc _F
    ldfld int32 @INICON::INTR
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldsflda valuetype T_arraytrofrs _G::XRRS
    ldloc _F
    ldfld int32 @INICON::INTR
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void NOTRS(valuetype T_RS& C, valuetype T_RS A)
    ldloc _F
    ldfld int32 @INICON::INTR
    dup
    ldloc $tmpEndValue33
    beq L_for_end_22
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex35
    ldloc _F
    ldloc $tmpIndex35
    stfld int32 @INICON::INTR
    br L_for_loop_21
L_for_end_22:
    pop
    // line 835
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 4
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldsflda valuetype T_arraytrofrs _G::XRFS
    ldc.i4 0
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void CPYRS(valuetype T_RS& C, valuetype T_RS A)
    // line 836
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 5
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldsflda valuetype T_arraytrofrs _G::XRRS
    ldc.i4 7
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void CPYRS(valuetype T_RS& C, valuetype T_RS A)
    // line 837
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 6
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldsflda valuetype T_arraytrofrs _G::XRFS
    ldc.i4 7
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void CPYRS(valuetype T_RS& C, valuetype T_RS A)
    // line 838
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 7
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldsflda valuetype T_arraytrofrs _G::XRRS
    ldc.i4 0
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void CPYRS(valuetype T_RS& C, valuetype T_RS A)
    // line 839
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 0
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 4
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 5
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 840
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 1
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 5
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 6
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 841
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 2
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 6
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 7
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 842
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 3
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 7
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 4
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 843
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 8
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 0
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytrofrs _G::XRRS
    ldc.i4 6
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 844
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 9
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 1
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytrofrs _G::XRRS
    ldc.i4 6
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 845
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 10
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 1
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytrofrs _G::XRFS
    ldc.i4 6
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 846
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 11
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 2
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytrofrs _G::XRFS
    ldc.i4 6
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 847
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 12
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 2
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytrofrs _G::XRRS
    ldc.i4 1
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 848
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 13
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 3
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytrofrs _G::XRRS
    ldc.i4 1
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 849
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 14
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 3
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytrofrs _G::XRFS
    ldc.i4 1
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 850
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 15
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldsflda valuetype T_array_43 _G::EDGE
    ldc.i4 0
    call instance valuetype T_RS& T_array_43::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytrofrs _G::XRFS
    ldc.i4 1
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 854
    ldloc _F
    ldflda valuetype T_RS @INICON::INRS
    ldsflda valuetype T_arraytrofrs _G::XRRS
    ldc.i4 0
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytrofrs _G::XRRS
    ldc.i4 1
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 855
    ldloc _F
    ldflda valuetype T_RS @INICON::INRS
    ldloc _F
    ldfld valuetype T_RS @INICON::INRS
    ldsflda valuetype T_arraytrofrs _G::XRRS
    ldc.i4 6
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 856
    ldloc _F
    ldflda valuetype T_RS @INICON::INRS
    ldloc _F
    ldfld valuetype T_RS @INICON::INRS
    ldsflda valuetype T_arraytrofrs _G::XRRS
    ldc.i4 7
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 857
    ldsflda valuetype T_RS _G::CORNR
    ldsflda valuetype T_arraytrofrs _G::XRFS
    ldc.i4 0
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytrofrs _G::XRFS
    ldc.i4 1
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 858
    ldsflda valuetype T_RS _G::CORNR
    ldsfld valuetype T_RS _G::CORNR
    ldsflda valuetype T_arraytrofrs _G::XRFS
    ldc.i4 6
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 859
    ldsflda valuetype T_RS _G::CORNR
    ldsfld valuetype T_RS _G::CORNR
    ldsflda valuetype T_arraytrofrs _G::XRFS
    ldc.i4 7
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 860
    ldsflda valuetype T_RS _G::CORNR
    ldsfld valuetype T_RS _G::CORNR
    ldloc _F
    ldfld valuetype T_RS @INICON::INRS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 864
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 8
    call instance int8& T_array_11::ldadr(int32)
    ldc.i4 19
    dup
    ldc.i4 -21
    ldc.i4 21
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    // line 864
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 9
    call instance int8& T_array_11::ldadr(int32)
    ldc.i4 21
    dup
    ldc.i4 -21
    ldc.i4 21
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    // line 865
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 15
    call instance int8& T_array_11::ldadr(int32)
    ldc.i4 8
    dup
    ldc.i4 -21
    ldc.i4 21
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    // line 865
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 0
    call instance int8& T_array_11::ldadr(int32)
    ldc.i4 9
    dup
    ldc.i4 -21
    ldc.i4 21
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    // line 865
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 5
    call instance int8& T_array_11::ldadr(int32)
    ldc.i4 10
    dup
    ldc.i4 -21
    ldc.i4 21
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    // line 865
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 1
    call instance int8& T_array_11::ldadr(int32)
    ldc.i4 11
    dup
    ldc.i4 -21
    ldc.i4 21
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    // line 865
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 10
    call instance int8& T_array_11::ldadr(int32)
    ldc.i4 12
    dup
    ldc.i4 -21
    ldc.i4 21
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    // line 866
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 4
    call instance int8& T_array_11::ldadr(int32)
    ldc.i4 1
    neg
    dup
    ldc.i4 -21
    ldc.i4 21
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    // line 866
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 6
    call instance int8& T_array_11::ldadr(int32)
    ldc.i4 1
    dup
    ldc.i4 -21
    ldc.i4 21
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    // line 867
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 14
    call instance int8& T_array_11::ldadr(int32)
    ldc.i4 12
    neg
    dup
    ldc.i4 -21
    ldc.i4 21
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    // line 867
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 3
    call instance int8& T_array_11::ldadr(int32)
    ldc.i4 11
    neg
    dup
    ldc.i4 -21
    ldc.i4 21
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    // line 867
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 7
    call instance int8& T_array_11::ldadr(int32)
    ldc.i4 10
    neg
    dup
    ldc.i4 -21
    ldc.i4 21
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    // line 867
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 2
    call instance int8& T_array_11::ldadr(int32)
    ldc.i4 9
    neg
    dup
    ldc.i4 -21
    ldc.i4 21
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    // line 867
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 11
    call instance int8& T_array_11::ldadr(int32)
    ldc.i4 8
    neg
    dup
    ldc.i4 -21
    ldc.i4 21
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    // line 868
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 13
    call instance int8& T_array_11::ldadr(int32)
    ldc.i4 21
    neg
    dup
    ldc.i4 -21
    ldc.i4 21
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    // line 868
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 12
    call instance int8& T_array_11::ldadr(int32)
    ldc.i4 19
    neg
    dup
    ldc.i4 -21
    ldc.i4 21
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    // line 872
    ldc.i4 119
    stloc $tmpEndValue36
    ldc.i4 -119
    dup
    ldloc $tmpEndValue36
    bgt L_for_end_24
    stloc $tmpIndex37
    ldloc _F
    ldloc $tmpIndex37
    stfld int32 @INICON::INTI1
L_for_loop_23:
    // line 873
    ldsflda valuetype T_array_44 _G::XLLD
    ldloc _F
    ldfld int32 @INICON::INTI1
    call instance int8& T_array_44::ldadr(int32)
    ldc.i4 0
    dup
    ldc.i4 -21
    ldc.i4 21
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int8
    ldloc _F
    ldfld int32 @INICON::INTI1
    dup
    ldloc $tmpEndValue36
    beq L_for_end_24
    ldc.i4.1
    add
    stloc $tmpIndex38
    ldloc _F
    ldloc $tmpIndex38
    stfld int32 @INICON::INTI1
    br L_for_loop_23
L_for_end_24:
    pop
    // line 875
    ldc.i4 7
    stloc $tmpEndValue39
    ldc.i4 0
    dup
    ldloc $tmpEndValue39
    bgt L_for_end_26
    dup
    ldc.i4 0
    ldc.i4 15
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex40
    ldloc _F
    ldloc $tmpIndex40
    stfld int32 @INICON::INTE
L_for_loop_25:
    // line 877
    ldloc _F
    ldsflda valuetype T_array_11 _G::XTED
    ldloc _F
    ldfld int32 @INICON::INTE
    call instance int8& T_array_11::ldadr(int32)
    ldobj int8
    stfld int8 @INICON::INTD
    // line 878
    ldc.i4 7
    stloc $tmpEndValue41
    ldc.i4 1
    dup
    ldloc $tmpEndValue41
    bgt L_for_end_28
    stloc $tmpIndex42
    ldloc _F
    ldloc $tmpIndex42
    stfld int32 @INICON::IMTI
L_for_loop_27:
    // line 879
    ldsflda valuetype T_array_44 _G::XLLD
    ldloc _F
    ldfld int32 @INICON::IMTI
    ldloc _F
    ldfld int8 @INICON::INTD
    mul
    call instance int8& T_array_44::ldadr(int32)
    ldloc _F
    ldfld int8 @INICON::INTD
    stobj int8
    ldloc _F
    ldfld int32 @INICON::IMTI
    dup
    ldloc $tmpEndValue41
    beq L_for_end_28
    ldc.i4.1
    add
    stloc $tmpIndex43
    ldloc _F
    ldloc $tmpIndex43
    stfld int32 @INICON::IMTI
    br L_for_loop_27
L_for_end_28:
    pop
    /* nop */
    ldloc _F
    ldfld int32 @INICON::INTE
    dup
    ldloc $tmpEndValue39
    beq L_for_end_26
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 15
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex44
    ldloc _F
    ldloc $tmpIndex44
    stfld int32 @INICON::INTE
    br L_for_loop_25
L_for_end_26:
    pop
    // line 882
    ldc.i4 15
    stloc $tmpEndValue45
    ldc.i4 8
    dup
    ldloc $tmpEndValue45
    bgt L_for_end_30
    dup
    ldc.i4 0
    ldc.i4 15
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex46
    ldloc _F
    ldloc $tmpIndex46
    stfld int32 @INICON::INTE
L_for_loop_29:
    // line 883
    ldsflda valuetype T_array_44 _G::XLLD
    ldsflda valuetype T_array_11 _G::XTED
    ldloc _F
    ldfld int32 @INICON::INTE
    call instance int8& T_array_11::ldadr(int32)
    ldobj int8
    call instance int8& T_array_44::ldadr(int32)
    ldsflda valuetype T_array_11 _G::XTED
    ldloc _F
    ldfld int32 @INICON::INTE
    call instance int8& T_array_11::ldadr(int32)
    ldobj int8
    stobj int8
    ldloc _F
    ldfld int32 @INICON::INTE
    dup
    ldloc $tmpEndValue45
    beq L_for_end_30
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 15
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex47
    ldloc _F
    ldloc $tmpIndex47
    stfld int32 @INICON::INTE
    br L_for_loop_29
L_for_end_30:
    pop
    // line 887
    ldsflda valuetype T_arraytqofrs _G::XSQS
    ldc.i4 0
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 0
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 7
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 0
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 4
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 888
    ldsflda valuetype T_arraytqofrs _G::XSQS
    ldc.i4 1
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 0
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 0
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 0
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 4
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 889
    ldsflda valuetype T_arraytqofrs _G::XSQS
    ldc.i4 2
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 7
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 7
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 7
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 4
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 890
    ldsflda valuetype T_arraytqofrs _G::XSQS
    ldc.i4 3
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 7
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 0
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 7
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 4
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 892
    ldsflda valuetype T_arraytqofrs _G::XRQSO
    ldc.i4 0
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 0
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 5
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 0
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 6
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 893
    ldsflda valuetype T_arraytqofrs _G::XRQSO
    ldc.i4 1
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 0
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 3
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 0
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 2
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 894
    ldsflda valuetype T_arraytqofrs _G::XRQSA
    ldc.i4 0
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 0
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 4
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytqofrs _G::XRQSO
    ldc.i4 0
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 895
    ldsflda valuetype T_arraytqofrs _G::XRQSA
    ldc.i4 1
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 0
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 4
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytqofrs _G::XRQSO
    ldc.i4 1
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 896
    ldsflda valuetype T_arraytqofrs _G::XRQSO
    ldc.i4 1
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 0
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 1
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytqofrs _G::XRQSO
    ldc.i4 1
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 898
    ldsflda valuetype T_arraytqofrs _G::XRQSO
    ldc.i4 2
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 7
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 5
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 7
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 6
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 899
    ldsflda valuetype T_arraytqofrs _G::XRQSO
    ldc.i4 3
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 7
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 3
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 7
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 2
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 900
    ldsflda valuetype T_arraytqofrs _G::XRQSO
    ldc.i4 2
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 7
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 4
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytqofrs _G::XRQSO
    ldc.i4 2
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 901
    ldsflda valuetype T_arraytqofrs _G::XRQSA
    ldc.i4 3
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 7
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 4
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytqofrs _G::XRQSO
    ldc.i4 3
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 902
    ldsflda valuetype T_arraytqofrs _G::XRQSO
    ldc.i4 3
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldsflda valuetype T_RX _G::XRSS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 7
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 1
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytqofrs _G::XRQSO
    ldc.i4 3
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 904
    ldc.i4 3
    stloc $tmpEndValue48
    ldc.i4 0
    dup
    ldloc $tmpEndValue48
    bgt L_for_end_32
    dup
    ldc.i4 0
    ldc.i4 3
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex49
    ldloc _F
    ldloc $tmpIndex49
    stfld int32 @INICON::INTQ
L_for_loop_31:
    // line 907
    ldsflda valuetype T_array_45 _G::XRQM
    ldloc _F
    ldfld int32 @INICON::INTQ
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldc.i4 12
    stfld int32 T_RM::RMCP
    // line 908
    ldsflda valuetype T_array_45 _G::XRQM
    ldloc _F
    ldfld int32 @INICON::INTQ
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldc.i4 0 // (false)
    stfld bool T_RM::RMCA
    // line 909
    ldsflda valuetype T_array_45 _G::XRQM
    ldloc _F
    ldfld int32 @INICON::INTQ
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldc.i4 1 // (true)
    stfld bool T_RM::RMAC
    // line 910
    ldsflda valuetype T_array_45 _G::XRQM
    ldloc _F
    ldfld int32 @INICON::INTQ
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldc.i4 0 // (false)
    stfld bool T_RM::RMCH
    // line 911
    ldsflda valuetype T_array_45 _G::XRQM
    ldloc _F
    ldfld int32 @INICON::INTQ
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldc.i4 0 // (false)
    stfld bool T_RM::RMMT
    // line 912
    ldsflda valuetype T_array_45 _G::XRQM
    ldloc _F
    ldfld int32 @INICON::INTQ
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldc.i4 0 // (false)
    stfld bool T_RM::RMIL
    // line 913
    ldsflda valuetype T_array_45 _G::XRQM
    ldloc _F
    ldfld int32 @INICON::INTQ
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldc.i4 0 // (false)
    stfld bool T_RM::RMSU
    // line 914
    ldsflda valuetype T_array_45 _G::XRQM
    ldloc _F
    ldfld int32 @INICON::INTQ
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldc.i4 0 // (false)
    stfld bool T_RM::RMPR
    // line 915
    ldsflda valuetype T_array_45 _G::XRQM
    ldloc _F
    ldfld int32 @INICON::INTQ
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldc.i4 1 // (true)
    stfld bool T_RM::RMOO
    /* nop */
    ldloc _F
    ldfld int32 @INICON::INTQ
    dup
    ldloc $tmpEndValue48
    beq L_for_end_32
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 3
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex50
    ldloc _F
    ldloc $tmpIndex50
    stfld int32 @INICON::INTQ
    br L_for_loop_31
L_for_end_32:
    pop
    // line 918
    ldsflda valuetype T_array_45 _G::XRQM
    ldc.i4 0
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 0
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 4
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    stfld int8 T_RM::RMFR
    // line 918
    ldsflda valuetype T_array_45 _G::XRQM
    ldc.i4 0
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 0
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 6
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    stfld int8 T_RM::RMTO
    // line 919
    ldsflda valuetype T_array_45 _G::XRQM
    ldc.i4 1
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 0
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 4
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    stfld int8 T_RM::RMFR
    // line 919
    ldsflda valuetype T_array_45 _G::XRQM
    ldc.i4 1
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 0
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 2
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    stfld int8 T_RM::RMTO
    // line 920
    ldsflda valuetype T_array_45 _G::XRQM
    ldc.i4 2
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 7
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 4
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    stfld int8 T_RM::RMFR
    // line 920
    ldsflda valuetype T_array_45 _G::XRQM
    ldc.i4 2
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 7
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 6
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    stfld int8 T_RM::RMTO
    // line 921
    ldsflda valuetype T_array_45 _G::XRQM
    ldc.i4 3
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 7
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 4
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    stfld int8 T_RM::RMFR
    // line 921
    ldsflda valuetype T_array_45 _G::XRQM
    ldc.i4 3
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 7
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 2
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    stfld int8 T_RM::RMTO
    // line 923
    ldsflda valuetype T_array_45 _G::XRQM
    ldc.i4 0
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldc.i4 0 // (false)
    stfld bool T_RM::RMQS
    // line 924
    ldsflda valuetype T_array_45 _G::XRQM
    ldc.i4 1
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldc.i4 1 // (true)
    stfld bool T_RM::RMQS
    // line 925
    ldsflda valuetype T_array_45 _G::XRQM
    ldc.i4 2
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldc.i4 0 // (false)
    stfld bool T_RM::RMQS
    // line 926
    ldsflda valuetype T_array_45 _G::XRQM
    ldc.i4 3
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldc.i4 1 // (true)
    stfld bool T_RM::RMQS
    // line 928
    ldsflda valuetype T_array_18 _G::XTMQ
    ldc.i4 0
    call instance int32& T_array_18::ldadr(int32)
    ldc.i4 0
    stobj int32
    // line 929
    ldsflda valuetype T_array_18 _G::XTMQ
    ldc.i4 1
    call instance int32& T_array_18::ldadr(int32)
    ldc.i4 2
    stobj int32
    // line 931
    ldsflda valuetype T_array_47 _G::XTQS
    ldc.i4 0
    call instance int8& T_array_47::ldadr(int32)
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 0
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 7
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    stobj int8
    // line 932
    ldsflda valuetype T_array_47 _G::XTQS
    ldc.i4 1
    call instance int8& T_array_47::ldadr(int32)
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 0
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 0
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    stobj int8
    // line 933
    ldsflda valuetype T_array_47 _G::XTQS
    ldc.i4 2
    call instance int8& T_array_47::ldadr(int32)
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 7
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 7
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    stobj int8
    // line 934
    ldsflda valuetype T_array_47 _G::XTQS
    ldc.i4 3
    call instance int8& T_array_47::ldadr(int32)
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 7
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 0
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    stobj int8
    // line 940
    ldsflda valuetype T_RM _G::NULMV
    ldc.i4 0
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_RM::RMFR
    // line 941
    ldsflda valuetype T_RM _G::NULMV
    ldc.i4 0
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_RM::RMTO
    // line 942
    ldsflda valuetype T_RM _G::NULMV
    ldc.i4 12
    stfld int32 T_RM::RMCP
    // line 943
    ldsflda valuetype T_RM _G::NULMV
    ldc.i4 0 // (false)
    stfld bool T_RM::RMCA
    // line 944
    ldsflda valuetype T_RM _G::NULMV
    ldc.i4 1 // (true)
    stfld bool T_RM::RMAC
    // line 945
    ldsflda valuetype T_RM _G::NULMV
    ldc.i4 0 // (false)
    stfld bool T_RM::RMCH
    // line 946
    ldsflda valuetype T_RM _G::NULMV
    ldc.i4 0 // (false)
    stfld bool T_RM::RMMT
    // line 947
    ldsflda valuetype T_RM _G::NULMV
    ldc.i4 0 // (false)
    stfld bool T_RM::RMIL
    // line 948
    ldsflda valuetype T_RM _G::NULMV
    ldc.i4 0 // (false)
    stfld bool T_RM::RMSU
    // line 949
    ldsflda valuetype T_RM _G::NULMV
    ldc.i4 1 // (true)
    stfld bool T_RM::RMPR
    // line 950
    ldsflda valuetype T_RM _G::NULMV
    ldc.i4 3
    stfld int32 T_RM::RMPP
    /* nop */
    // line 955
    ldc.i4 73
    dup
    ldc.i4 0
    ldc.i4 73
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int8 _G::JMTJ
    // line 956
    ldsflda valuetype T_RJ _G::ICARD
    ldc.i4 73
    call instance uint8& T_RJ::ldadr(int32)
    ldc.i4 59 // ';'
    stobj uint8
    // line 957
    ldsflda valuetype T_RJ _G::ILINE
    ldc.i4 73
    call instance uint8& T_RJ::ldadr(int32)
    ldc.i4 59 // ';'
    stobj uint8
    // line 961
    ldloc _F
    ldc.i4 1
    stfld int32 @INICON::INTI
    // line 962
    ldloc _F
    ldsfld valuetype T_RA STRING_8    // "    *P    "
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 963
    ldloc _F
    ldsfld valuetype T_RA STRING_9    // "    *P/  1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 964
    ldloc _F
    ldsfld valuetype T_RA STRING_10    // "/  1*P    "
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 965
    ldloc _F
    ldsfld valuetype T_RA STRING_11    // "    *P/ R "
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 966
    ldloc _F
    ldsfld valuetype T_RA STRING_12    // "/ R *P    "
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 967
    ldloc _F
    ldsfld valuetype T_RA STRING_13    // "    *P/ R1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 968
    ldloc _F
    ldsfld valuetype T_RA STRING_14    // "/ R1*P    "
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 969
    ldloc _F
    ldsfld valuetype T_RA STRING_15    // "    *P/KR "
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 970
    ldloc _F
    ldsfld valuetype T_RA STRING_16    // "/KR *P    "
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 971
    ldloc _F
    ldsfld valuetype T_RA STRING_17    // "    *P/KR1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 972
    ldloc _F
    ldsfld valuetype T_RA STRING_18    // "/KR1*P    "
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 973
    ldloc _F
    ldsfld valuetype T_RA STRING_19    // "/  1*P/  1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 974
    ldloc _F
    ldsfld valuetype T_RA STRING_20    // "/ R *P/ R "
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 975
    ldloc _F
    ldsfld valuetype T_RA STRING_21    // "/  1*P/ R "
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 976
    ldloc _F
    ldsfld valuetype T_RA STRING_22    // "/ R *P/  1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 977
    ldloc _F
    ldsfld valuetype T_RA STRING_23    // "/ R1*P/  1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 978
    ldloc _F
    ldsfld valuetype T_RA STRING_24    // "/  1*P/ R1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 979
    ldloc _F
    ldsfld valuetype T_RA STRING_25    // "/ R1*P/ R "
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 980
    ldloc _F
    ldsfld valuetype T_RA STRING_26    // "/ R *P/ R1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 981
    ldloc _F
    ldsfld valuetype T_RA STRING_27    // "/KR *P/  1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 982
    ldloc _F
    ldsfld valuetype T_RA STRING_28    // "/  1*P/KR "
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 983
    ldloc _F
    ldsfld valuetype T_RA STRING_29    // "/KR *P/ R "
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 984
    ldloc _F
    ldsfld valuetype T_RA STRING_30    // "/ R *P/KR "
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 985
    ldloc _F
    ldsfld valuetype T_RA STRING_31    // "/  1*P/KR1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 986
    ldloc _F
    ldsfld valuetype T_RA STRING_32    // "/KR1*P/  1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 987
    ldloc _F
    ldsfld valuetype T_RA STRING_33    // "  R *P/KR1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 988
    ldloc _F
    ldsfld valuetype T_RA STRING_34    // "/KR1*P/ R "
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 989
    ldloc _F
    ldsfld valuetype T_RA STRING_35    // "/ R1*P/ R1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 990
    ldloc _F
    ldsfld valuetype T_RA STRING_36    // "/KR *P/ R1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 991
    ldloc _F
    ldsfld valuetype T_RA STRING_37    // "/ R1*P/KR "
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 992
    ldloc _F
    ldsfld valuetype T_RA STRING_38    // "/KR *P/KR "
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 993
    ldloc _F
    ldsfld valuetype T_RA STRING_39    // "/KR1*P/ R1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 994
    ldloc _F
    ldsfld valuetype T_RA STRING_40    // "/ R1*P/KR1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 995
    ldloc _F
    ldsfld valuetype T_RA STRING_41    // "/KR1*P/KR "
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 996
    ldloc _F
    ldsfld valuetype T_RA STRING_42    // "/KR *P/KR1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 997
    ldloc _F
    ldsfld valuetype T_RA STRING_43    // "/KR1*P/KR1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 999
    ldloc _F
    ldsfld valuetype T_RA STRING_44    // "    -   R1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 1000
    ldloc _F
    ldsfld valuetype T_RA STRING_45    // "    -  KR1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 1001
    ldloc _F
    ldsfld valuetype T_RA STRING_46    // "/  1-   R1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 1002
    ldloc _F
    ldsfld valuetype T_RA STRING_47    // "/ R -   R1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 1003
    ldloc _F
    ldsfld valuetype T_RA STRING_48    // "/  1-  KR1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 1004
    ldloc _F
    ldsfld valuetype T_RA STRING_49    // "/ R -  KR1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 1005
    ldloc _F
    ldsfld valuetype T_RA STRING_50    // "/ R1-   R1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 1006
    ldloc _F
    ldsfld valuetype T_RA STRING_51    // "/KR -   R1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 1007
    ldloc _F
    ldsfld valuetype T_RA STRING_52    // "/ R1-  KR1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 1008
    ldloc _F
    ldsfld valuetype T_RA STRING_53    // "/KR -  KR1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 1009
    ldloc _F
    ldsfld valuetype T_RA STRING_54    // "/KR1-  KR1"
    call instance void @INICON::INISYN(valuetype T_RA A)
    // line 1013
    ldc.i4 10
    stsfld int32 _G::FKPSHD
    // line 1014
    ldc.i4 150
    stsfld int32 _G::FKSANQ
    // line 1015
    ldc.i4 256
    stsfld int32 _G::FMAXMT
    // line 1016
    ldc.i4 18
    stsfld int32 _G::FNODEL
    // line 1017
    ldsflda valuetype T_array_95 _G::FPADCR
    ldc.i4 0
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 0
    stobj int32
    // line 1018
    ldsflda valuetype T_array_95 _G::FPADCR
    ldc.i4 1
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 0
    stobj int32
    // line 1019
    ldsflda valuetype T_array_95 _G::FPADCR
    ldc.i4 2
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 5
    stobj int32
    // line 1020
    ldsflda valuetype T_array_95 _G::FPADCR
    ldc.i4 3
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 10
    stobj int32
    // line 1021
    ldsflda valuetype T_array_95 _G::FPADCR
    ldc.i4 4
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 15
    stobj int32
    // line 1022
    ldsflda valuetype T_array_95 _G::FPADCR
    ldc.i4 5
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 5
    stobj int32
    // line 1023
    ldsflda valuetype T_array_95 _G::FPADCR
    ldc.i4 6
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 0
    stobj int32
    // line 1024
    ldsflda valuetype T_array_95 _G::FPADCR
    ldc.i4 7
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 0
    stobj int32
    // line 1025
    ldc.i4 20
    stsfld int32 _G::FPBLOK
    // line 1026
    ldc.i4 5
    stsfld int32 _G::FPCONN
    // line 1027
    ldc.i4 12
    stsfld int32 _G::FPFLNX
    // line 1028
    ldc.i4 60
    stsfld int32 _G::FRDUBL
    // line 1029
    ldc.i4 120
    stsfld int32 _G::FRK7TH
    // line 1030
    ldc.i4 36
    stsfld int32 _G::FTRADE
    // line 1031
    ldc.i4 5156
    stsfld int32 _G::FTRDSL
    // line 1032
    ldc.i4 2
    stsfld int32 _G::FTRPDK
    // line 1033
    ldc.i4 8
    stsfld int32 _G::FTRPWN
    // line 1034
    ldc.i4 50
    stsfld int32 _G::FWKING
    // line 1035
    ldc.i4 1
    stsfld int32 _G::FWMAJM
    // line 1036
    ldc.i4 200
    stsfld int32 _G::FWMINM
    // line 1037
    ldc.i4 100
    stsfld int32 _G::FWPAWN
    // line 1038
    ldc.i4 2
    stsfld int32 _G::FWROOK
    // line 1039
    ldc.i4 30
    stsfld int32 _G::WINDOW
    // line 1043
    ldc.i4 1 // (true)
    stsfld bool _G::SWEC
    // line 1044
    ldc.i4 1 // (true)
    stsfld bool _G::SWPA
    // line 1045
    ldc.i4 0 // (false)
    stsfld bool _G::SWPS
    // line 1046
    ldc.i4 1 // (true)
    stsfld bool _G::SWRE
    // line 1047
    ldc.i4 0 // (false)
    stsfld bool _G::SWSU
    // line 1048
    ldc.i4 0 // (false)
    stsfld bool _G::SWTR
    // line 1052
    ldc.i4 0
    stsfld int32 _G::GOING
    /* nop */

L_Epilogue:
    ret
}

// line 1057

.method static
void INITAL(valuetype T_RB& A)
{
    .maxstack 32

    .locals init(
        class @INITAL _F,
        valuetype T_SQ $tmpSetLiteral1,
        int32 $tmpEndValue2,
        int32 $tmpIndex3,
        int32 $tmpEndValue4,
        int32 $tmpIndex5,
        int32 $tmpIndex6,
        int32 $tmpIndex7,
        valuetype T_RB& pinned $A)
    
    newobj instance void @INITAL::.ctor()
    stloc _F
    
    ldarg A
    stloc $A
    
    ldloc _F
    ldarg A
    stfld valuetype T_RB* @INITAL::A

    ldloca $tmpSetLiteral1
    ldc.i4 0
    call instance void T_SQ::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 1
    call instance void T_SQ::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 2
    call instance void T_SQ::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 3
    call instance void T_SQ::addValue(int32)

L_Entry:
    // line 1066
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldc.i4 0
    stfld int32 T_RB::RBTM
    // line 1067
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldc.i4 1
    neg
    dup
    ldc.i4 -1
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_RB::RBTS
    // line 1068
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldc.i4 0
    stfld int32 T_RB::RBTI
    // line 1069
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldloc $tmpSetLiteral1
    stfld valuetype T_SQ T_RB::RBSQ
    // line 1070
    ldc.i4 7
    stloc $tmpEndValue2
    ldc.i4 0
    dup
    ldloc $tmpEndValue2
    bgt L_for_end_2
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @INITAL::INTF
L_for_loop_1:
    // line 1072
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldflda valuetype T_array_96 T_RB::RBIRF
    ldc.i4 1
    call instance valuetype T_array_95& T_array_96::ldadr(int32)
    ldloc _F
    ldfld int32 @INITAL::INTF
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 0
    stobj int32
    // line 1073
    ldc.i4 5
    stloc $tmpEndValue4
    ldc.i4 2
    dup
    ldloc $tmpEndValue4
    bgt L_for_end_4
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex5
    ldloc _F
    ldloc $tmpIndex5
    stfld int32 @INITAL::INTR
L_for_loop_3:
    // line 1074
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldflda valuetype T_array_96 T_RB::RBIRF
    ldloc _F
    ldfld int32 @INITAL::INTR
    call instance valuetype T_array_95& T_array_96::ldadr(int32)
    ldloc _F
    ldfld int32 @INITAL::INTF
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 12
    stobj int32
    ldloc _F
    ldfld int32 @INITAL::INTR
    dup
    ldloc $tmpEndValue4
    beq L_for_end_4
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex6
    ldloc _F
    ldloc $tmpIndex6
    stfld int32 @INITAL::INTR
    br L_for_loop_3
L_for_end_4:
    pop
    // line 1075
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldflda valuetype T_array_96 T_RB::RBIRF
    ldc.i4 6
    call instance valuetype T_array_95& T_array_96::ldadr(int32)
    ldloc _F
    ldfld int32 @INITAL::INTF
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 6
    stobj int32
    /* nop */
    ldloc _F
    ldfld int32 @INITAL::INTF
    dup
    ldloc $tmpEndValue2
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex7
    ldloc _F
    ldloc $tmpIndex7
    stfld int32 @INITAL::INTF
    br L_for_loop_1
L_for_end_2:
    pop
    // line 1077
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldflda valuetype T_array_96 T_RB::RBIRF
    ldc.i4 0
    call instance valuetype T_array_95& T_array_96::ldadr(int32)
    ldc.i4 0
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 1
    stobj int32
    // line 1079
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldflda valuetype T_array_96 T_RB::RBIRF
    ldc.i4 0
    call instance valuetype T_array_95& T_array_96::ldadr(int32)
    ldc.i4 1
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 2
    stobj int32
    // line 1080
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldflda valuetype T_array_96 T_RB::RBIRF
    ldc.i4 0
    call instance valuetype T_array_95& T_array_96::ldadr(int32)
    ldc.i4 2
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 3
    stobj int32
    // line 1081
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldflda valuetype T_array_96 T_RB::RBIRF
    ldc.i4 0
    call instance valuetype T_array_95& T_array_96::ldadr(int32)
    ldc.i4 3
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 4
    stobj int32
    // line 1082
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldflda valuetype T_array_96 T_RB::RBIRF
    ldc.i4 0
    call instance valuetype T_array_95& T_array_96::ldadr(int32)
    ldc.i4 4
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 5
    stobj int32
    // line 1083
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldflda valuetype T_array_96 T_RB::RBIRF
    ldc.i4 0
    call instance valuetype T_array_95& T_array_96::ldadr(int32)
    ldc.i4 5
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 3
    stobj int32
    // line 1084
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldflda valuetype T_array_96 T_RB::RBIRF
    ldc.i4 0
    call instance valuetype T_array_95& T_array_96::ldadr(int32)
    ldc.i4 6
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 2
    stobj int32
    // line 1085
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldflda valuetype T_array_96 T_RB::RBIRF
    ldc.i4 0
    call instance valuetype T_array_95& T_array_96::ldadr(int32)
    ldc.i4 7
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 1
    stobj int32
    // line 1086
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldflda valuetype T_array_96 T_RB::RBIRF
    ldc.i4 7
    call instance valuetype T_array_95& T_array_96::ldadr(int32)
    ldc.i4 0
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 7
    stobj int32
    // line 1087
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldflda valuetype T_array_96 T_RB::RBIRF
    ldc.i4 7
    call instance valuetype T_array_95& T_array_96::ldadr(int32)
    ldc.i4 1
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 8
    stobj int32
    // line 1088
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldflda valuetype T_array_96 T_RB::RBIRF
    ldc.i4 7
    call instance valuetype T_array_95& T_array_96::ldadr(int32)
    ldc.i4 2
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 9
    stobj int32
    // line 1089
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldflda valuetype T_array_96 T_RB::RBIRF
    ldc.i4 7
    call instance valuetype T_array_95& T_array_96::ldadr(int32)
    ldc.i4 3
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 10
    stobj int32
    // line 1090
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldflda valuetype T_array_96 T_RB::RBIRF
    ldc.i4 7
    call instance valuetype T_array_95& T_array_96::ldadr(int32)
    ldc.i4 4
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 11
    stobj int32
    // line 1091
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldflda valuetype T_array_96 T_RB::RBIRF
    ldc.i4 7
    call instance valuetype T_array_95& T_array_96::ldadr(int32)
    ldc.i4 5
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 9
    stobj int32
    // line 1092
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldflda valuetype T_array_96 T_RB::RBIRF
    ldc.i4 7
    call instance valuetype T_array_95& T_array_96::ldadr(int32)
    ldc.i4 6
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 8
    stobj int32
    // line 1093
    ldloc _F
    ldfld valuetype T_RB* @INITAL::A
    ldflda valuetype T_array_96 T_RB::RBIRF
    ldc.i4 7
    call instance valuetype T_array_95& T_array_96::ldadr(int32)
    ldc.i4 7
    call instance int32& T_array_95::ldadr(int32)
    ldc.i4 7
    stobj int32
    // line 1094
    ldsfld valuetype T_array_99 STRING_55    // " ENTER MOVE OR TYPE GO.       "
    stsfld valuetype T_array_99 _G::MOVMS
    // line 1095
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld valuetype T_array_99 _G::MOVMS
    call string T_array_99::arrayToString(valuetype T_array_99)
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1096
    ldsfld valuetype T_RM _G::NULMV
    stsfld valuetype T_RM _G::LSTMV
    /* nop */
    /* nop */

L_Epilogue:
    ret
}

// line 1101

.method static
void PAUSER()
{
    .maxstack 32

    .locals init(class @PAUSER _F)
    
    newobj instance void @PAUSER::.ctor()
    stloc _F

L_Entry:
    // line 1104
    ldsfld bool _G::SWPA
    brfalse L_if_end_1
    // line 1106
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " PAUSING "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1107
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance void [lpcRuntime]LPC.File::ReadLn()
    /* nop */
L_if_end_1:
    /* nop */

L_Epilogue:
    ret
}

// line 1112

.method static
void PRIMOV(valuetype T_RM A)
{
    .maxstack 32

    .locals init(
        class @PRIMOV _F,
        bool $tmpSwitchValue1,
        bool $tmpSwitchValue2,
        int32 $tmpSwitchValue3)
    
    newobj instance void @PRIMOV::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RM @PRIMOV::A

L_Entry:
    // line 1117
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "   FROM   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 2
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_RM @PRIMOV::A
    ldfld int8 T_RM::RMFR
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr "   TO   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 2
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_RM @PRIMOV::A
    ldfld int8 T_RM::RMTO
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    // line 1118
    ldloc _F
    ldfld valuetype T_RM @PRIMOV::A
    call bool NULMVB(valuetype T_RM A)
    brfalse L_else_1
    // line 1119
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr ",   NULL   MCVE"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_if_end_2
L_else_1:
    // line 1122
    ldloc _F
    ldflda valuetype T_RM @PRIMOV::A
    ldfld bool T_RM::RMCA
    brfalse L_else_3
    // line 1123
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr ", CAPTURE "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsflda valuetype T_array_13 _G::XTPC
    ldloc _F
    ldflda valuetype T_RM @PRIMOV::A
    ldfld int32 T_RM::RMCP
    call instance uint8& T_array_13::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 44 // ','
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    br L_if_end_4
L_else_3:
    // line 1125
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr ", SIMPLE,"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_4:
    // line 1126
    ldloc _F
    ldflda valuetype T_RM @PRIMOV::A
    ldfld bool T_RM::RMAC
    ldc.i4.0
    ceq
    brfalse L_if_end_5
    // line 1127
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " NO"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_5:
    // line 1128
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " ACS"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 1129
    ldloc _F
    ldflda valuetype T_RM @PRIMOV::A
    ldfld bool T_RM::RMCH
    brfalse L_if_end_6
    // line 1130
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr ", CHECK"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_6:
    // line 1131
    ldloc _F
    ldflda valuetype T_RM @PRIMOV::A
    ldfld bool T_RM::RMMT
    brfalse L_if_end_7
    // line 1132
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr ",  MATE"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_7:
    // line 1133
    ldloc _F
    ldflda valuetype T_RM @PRIMOV::A
    ldfld bool T_RM::RMIL
    brfalse L_if_end_8
    // line 1134
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr ", ILLEGAL"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_8:
    // line 1135
    ldloc _F
    ldflda valuetype T_RM @PRIMOV::A
    ldfld bool T_RM::RMSU
    brfalse L_if_end_9
    // line 1136
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr ", SEARCHED"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_9:
    // line 1137
    ldloc _F
    ldflda valuetype T_RM @PRIMOV::A
    ldfld bool T_RM::RMPR
    stloc $tmpSwitchValue1
    ldloc $tmpSwitchValue1
    ldc.i4 0 // (false)
    bne.un L_check_case_11
    // line 1139
    ldloc _F
    ldflda valuetype T_RM @PRIMOV::A
    ldfld bool T_RM::RMOO
    stloc $tmpSwitchValue2
    ldloc $tmpSwitchValue2
    ldc.i4 0 // (false)
    bne.un L_check_case_13
    // line 1141
    ldloc _F
    ldflda valuetype T_RM @PRIMOV::A
    ldfld bool T_RM::RMEP
    brfalse L_if_end_14
    // line 1142
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr ", ENPASSANT"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_14:
    br L_case_end_12
L_check_case_13:
    ldloc $tmpSwitchValue2
    ldc.i4 1 // (true)
    bne.un L_case_end_12
    // line 1145
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr ", CASTLE "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 1146
    ldloc _F
    ldflda valuetype T_RM @PRIMOV::A
    ldfld bool T_RM::RMQS
    brfalse L_else_15
    // line 1147
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "LONG"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_if_end_16
L_else_15:
    // line 1148
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "SHORT"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_16:
    /* nop */
L_case_end_12:
    br L_case_end_10
L_check_case_11:
    ldloc $tmpSwitchValue1
    ldc.i4 1 // (true)
    bne.un L_case_end_10
    // line 1153
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr ", PROMOTE TO "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 1154
    ldloc _F
    ldflda valuetype T_RM @PRIMOV::A
    ldfld int32 T_RM::RMPP
    stloc $tmpSwitchValue3
    ldloc $tmpSwitchValue3
    ldc.i4 0
    bne.un L_check_case_18
    // line 1155
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "QUEEN"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_17
L_check_case_18:
    ldloc $tmpSwitchValue3
    ldc.i4 1
    bne.un L_check_case_19
    // line 1156
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "ROOK"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_17
L_check_case_19:
    ldloc $tmpSwitchValue3
    ldc.i4 3
    bne.un L_check_case_20
    // line 1157
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "BISHOP"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_17
L_check_case_20:
    ldloc $tmpSwitchValue3
    ldc.i4 2
    bne.un L_case_end_17
    // line 1158
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "KNIGHT"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_case_end_17:
    /* nop */
L_case_end_10:
    /* nop */
L_if_end_2:
    /* nop */
    // line 1164
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 46 // '.'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */

L_Epilogue:
    ret
}

// line 1168

.method static
void PRINTB(valuetype T_array_38 A)
{
    .maxstack 32

    .locals init(
        class @PRINTB _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpEndValue3,
        int32 $tmpIndex4,
        int32 $tmpIndex5,
        int32 $tmpIndex6)
    
    newobj instance void @PRINTB::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_array_38 @PRINTB::A

L_Entry:
    // line 1175
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1176
    ldc.i4 0
    stloc $tmpEndValue1
    ldc.i4 7
    dup
    ldloc $tmpEndValue1
    blt L_for_end_2
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @PRINTB::INTR
L_for_loop_1:
    // line 1178
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int32 @PRINTB::INTR
    ldc.i4 1
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    // line 1179
    ldc.i4 7
    stloc $tmpEndValue3
    ldc.i4 0
    dup
    ldloc $tmpEndValue3
    bgt L_for_end_4
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex4
    ldloc _F
    ldloc $tmpIndex4
    stfld int32 @PRINTB::INTF
L_for_loop_3:
    // line 1180
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsflda valuetype T_array_13 _G::XTPC
    ldloc _F
    ldflda valuetype T_array_38 @PRINTB::A
    ldsflda valuetype T_array_37 _G::XTRFS
    ldloc _F
    ldfld int32 @PRINTB::INTR
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldloc _F
    ldfld int32 @PRINTB::INTF
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call instance uint8& T_array_13::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldloc _F
    ldfld int32 @PRINTB::INTF
    dup
    ldloc $tmpEndValue3
    beq L_for_end_4
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex5
    ldloc _F
    ldloc $tmpIndex5
    stfld int32 @PRINTB::INTF
    br L_for_loop_3
L_for_end_4:
    pop
    // line 1182
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
    ldloc _F
    ldfld int32 @PRINTB::INTR
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    sub
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex6
    ldloc _F
    ldloc $tmpIndex6
    stfld int32 @PRINTB::INTR
    br L_for_loop_1
L_for_end_2:
    pop
    // line 1184
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " W RNBQKBNR"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */

L_Epilogue:
    ret
}

// line 1208

.method static
void PRINAM(valuetype T_RX A)
{
    .maxstack 32

    .locals init(
        class @PRINAM _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpEndValue3,
        int32 $tmpIndex4,
        int32 $tmpEndValue5,
        int32 $tmpIndex6,
        int32 $tmpEndValue7,
        int32 $tmpIndex8,
        int32 $tmpIndex9,
        int32 $tmpIndex10,
        int32 $tmpIndex11,
        valuetype T_set_100 $tmpSetLiteral12,
        int32 $tmpIndex13)
    
    newobj instance void @PRINAM::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RX @PRINAM::A

    ldloca $tmpSetLiteral12
    ldc.i4 0
    call instance void T_set_100::addValue(int32)
    ldloca $tmpSetLiteral12
    ldc.i4 2
    call instance void T_set_100::addValue(int32)
    ldloca $tmpSetLiteral12
    ldc.i4 4
    call instance void T_set_100::addValue(int32)
    ldloca $tmpSetLiteral12
    ldc.i4 6
    call instance void T_set_100::addValue(int32)

L_Entry:
    // line 1215
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1216
    ldc.i4 0
    stloc $tmpEndValue1
    ldc.i4 7
    dup
    ldloc $tmpEndValue1
    blt L_for_end_2
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @PRINAM::INTR
L_for_loop_1:
    // line 1218
    ldc.i4 0
    stloc $tmpEndValue3
    ldc.i4 7
    dup
    ldloc $tmpEndValue3
    blt L_for_end_4
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex4
    ldloc _F
    ldloc $tmpIndex4
    stfld int32 @PRINAM::JNTR
L_for_loop_3:
    // line 1220
    ldc.i4 7
    stloc $tmpEndValue5
    ldc.i4 0
    dup
    ldloc $tmpEndValue5
    bgt L_for_end_6
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex6
    ldloc _F
    ldloc $tmpIndex6
    stfld int32 @PRINAM::INTF
L_for_loop_5:
    // line 1222
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    // line 1223
    ldc.i4 7
    stloc $tmpEndValue7
    ldc.i4 0
    dup
    ldloc $tmpEndValue7
    bgt L_for_end_8
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex8
    ldloc _F
    ldloc $tmpIndex8
    stfld int32 @PRINAM::JNTF
L_for_loop_7:
    // line 1225
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsflda valuetype T_array_24 _G::XTBC
    ldloc _F
    ldflda valuetype T_RX @PRINAM::A
    ldsflda valuetype T_array_37 _G::XTRFS
    ldloc _F
    ldfld int32 @PRINAM::INTR
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldloc _F
    ldfld int32 @PRINAM::INTF
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldloc _F
    ldfld int32 @PRINAM::JNTR
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldloc _F
    ldfld int32 @PRINAM::JNTF
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call bool INRSTB(valuetype T_RS A, int8 B)
    call instance uint8& T_array_24::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    /* nop */
    ldloc _F
    ldfld int32 @PRINAM::JNTF
    dup
    ldloc $tmpEndValue7
    beq L_for_end_8
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex9
    ldloc _F
    ldloc $tmpIndex9
    stfld int32 @PRINAM::JNTF
    br L_for_loop_7
L_for_end_8:
    pop
    // line 1227
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    /* nop */
    ldloc _F
    ldfld int32 @PRINAM::INTF
    dup
    ldloc $tmpEndValue5
    beq L_for_end_6
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex10
    ldloc _F
    ldloc $tmpIndex10
    stfld int32 @PRINAM::INTF
    br L_for_loop_5
L_for_end_6:
    pop
    // line 1229
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
    ldloc _F
    ldfld int32 @PRINAM::JNTR
    dup
    ldloc $tmpEndValue3
    beq L_for_end_4
    ldc.i4.1
    sub
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex11
    ldloc _F
    ldloc $tmpIndex11
    stfld int32 @PRINAM::JNTR
    br L_for_loop_3
L_for_end_4:
    pop
    // line 1231
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1232
    ldloc $tmpSetLiteral12
    ldloc _F
    ldfld int32 @PRINAM::INTR
    call bool _SetContains(valuetype T_set_100 s, int32 val)
    brfalse L_if_end_9
    // line 1232
    call void PAUSER()
L_if_end_9:
    /* nop */
    ldloc _F
    ldfld int32 @PRINAM::INTR
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    sub
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex13
    ldloc _F
    ldloc $tmpIndex13
    stfld int32 @PRINAM::INTR
    br L_for_loop_1
L_for_end_2:
    pop
    /* nop */

L_Epilogue:
    ret
}

// line 1237

.method static
void PRISWI(valuetype T_RA A, bool B)
{
    .maxstack 32

    .locals init(class @PRISWI _F)
    
    newobj instance void @PRISWI::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RA @PRISWI::A
    
    ldloc _F
    ldarg B
    stfld bool @PRISWI::B

L_Entry:
    // line 1240
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldloc _F
    ldflda valuetype T_RA @PRISWI::A
    ldc.i4 1
    call instance uint8& T_RA::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldloc _F
    ldflda valuetype T_RA @PRISWI::A
    ldc.i4 1
    ldc.i4 1
    add
    call instance uint8& T_RA::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    // line 1241
    ldloc _F
    ldfld bool @PRISWI::B
    brfalse L_else_1
    // line 1242
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " ON"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_if_end_2
L_else_1:
    // line 1244
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " OFF"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_2:
    /* nop */

L_Epilogue:
    ret
}

// line 1248

.method static
void MBEVAL()
{
    .maxstack 32

    .locals init(class @MBEVAL _F)
    
    newobj instance void @MBEVAL::.ctor()
    stloc _F

L_Entry:
    // line 1254
    ldsfld int16 _G::MBLTE
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    brfalse L_else_1
    // line 1255
    ldsfld int16 _G::MBLTE
    ldc.i4 0
    cgt
    brfalse L_else_3
    // line 1256
    ldloc _F
    ldsflda valuetype T_array_18 _G::MBPWN
    ldc.i4 0
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    stfld int32 @MBEVAL::INTI
    br L_if_end_4
L_else_3:
    // line 1258
    ldloc _F
    ldsflda valuetype T_array_18 _G::MBPWN
    ldc.i4 1
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    stfld int32 @MBEVAL::INTI
L_if_end_4:
    br L_if_end_2
L_else_1:
    // line 1260
    ldloc _F
    ldc.i4 0
    stfld int32 @MBEVAL::INTI
L_if_end_2:
    // line 1261
    ldsflda valuetype T_array_102 _G::MBVAL
    ldsfld int8 _G::JNTK
    call instance int16& T_array_102::ldadr(int32)
    ldsfld int32 _G::FMAXMT
    ldsfld int16 _G::MBLTE
    dup
    ldc.i4 0
    bge L_abs_question_5
    neg
L_abs_question_5:
    call int32 MIN(int32 A, int32 B)
    ldsfld int32 _G::FTRADE
    ldsfld int16 _G::MBLTE
    dup
    ldc.i4 0
    bge L_abs_question_6
    neg
L_abs_question_6:
    mul
    ldsfld int32 _G::FTRDSL
    ldsfld int16 _G::MBTOT
    sub
    mul
    ldc.i4 4
    ldloc _F
    ldfld int32 @MBEVAL::INTI
    mul
    ldsfld int32 _G::FTRPDK
    add
    mul
    ldc.i4 4
    ldloc _F
    ldfld int32 @MBEVAL::INTI
    mul
    ldsfld int32 _G::FTRPWN
    add
    div
    ldc.i4 262144
    div
    add
    ldc.i4 16320
    call int32 MIN(int32 A, int32 B)
    ldsfld int16 _G::MBLTE
    call int32 SIGN(int32 A, int32 B)
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int16
    /* nop */

L_Epilogue:
    ret
}

// line 1267

.method static
void MBCAPT(int32 A)
{
    .maxstack 32

    .locals init(class @MBCAPT _F)
    
    newobj instance void @MBCAPT::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld int32 @MBCAPT::A

L_Entry:
    // line 1272
    ldsfld int16 _G::MBTOT
    ldsflda valuetype T_array_17 _G::XTPV
    ldloc _F
    ldfld int32 @MBCAPT::A
    call instance int16& T_array_17::ldadr(int32)
    ldobj int16
    dup
    ldc.i4 0
    bge L_abs_question_1
    neg
L_abs_question_1:
    sub
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::MBTOT
    // line 1273
    ldsflda valuetype T_array_14 _G::XTPU
    ldloc _F
    ldfld int32 @MBCAPT::A
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    ldc.i4 0
    ceq
    brfalse L_if_end_2
    // line 1274
    ldsflda valuetype T_array_18 _G::MBPWN
    ldsflda valuetype T_array_14 _G::XTPM
    ldloc _F
    ldfld int32 @MBCAPT::A
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    call instance int32& T_array_18::ldadr(int32)
    ldsflda valuetype T_array_18 _G::MBPWN
    ldsflda valuetype T_array_14 _G::XTPM
    ldloc _F
    ldfld int32 @MBCAPT::A
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    ldc.i4 1
    sub
    stobj int32
L_if_end_2:
    // line 1276
    ldsfld int16 _G::MBLTE
    ldsflda valuetype T_array_17 _G::XTPV
    ldloc _F
    ldfld int32 @MBCAPT::A
    call instance int16& T_array_17::ldadr(int32)
    ldobj int16
    sub
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::MBLTE
    // line 1277
    call void MBEVAL()
    /* nop */

L_Epilogue:
    ret
}

// line 1281

.method static
void MBTPAC(int32 A)
{
    .maxstack 32

    .locals init(class @MBTPAC _F)
    
    newobj instance void @MBTPAC::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld int32 @MBTPAC::A

L_Entry:
    // line 1287
    ldsfld int16 _G::MBTOT
    ldsflda valuetype T_array_17 _G::XTPV
    ldloc _F
    ldfld int32 @MBTPAC::A
    call instance int16& T_array_17::ldadr(int32)
    ldobj int16
    dup
    ldc.i4 0
    bge L_abs_question_1
    neg
L_abs_question_1:
    add
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::MBTOT
    // line 1288
    ldsflda valuetype T_array_14 _G::XTPU
    ldloc _F
    ldfld int32 @MBTPAC::A
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    ldc.i4 0
    ceq
    brfalse L_if_end_2
    // line 1289
    ldsflda valuetype T_array_18 _G::MBPWN
    ldsflda valuetype T_array_14 _G::XTPM
    ldloc _F
    ldfld int32 @MBTPAC::A
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    call instance int32& T_array_18::ldadr(int32)
    ldsflda valuetype T_array_18 _G::MBPWN
    ldsflda valuetype T_array_14 _G::XTPM
    ldloc _F
    ldfld int32 @MBTPAC::A
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    ldc.i4 1
    add
    stobj int32
L_if_end_2:
    // line 1290
    ldsfld int16 _G::MBLTE
    ldsflda valuetype T_array_17 _G::XTPV
    ldloc _F
    ldfld int32 @MBTPAC::A
    call instance int16& T_array_17::ldadr(int32)
    ldobj int16
    add
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::MBLTE
    /* nop */

L_Epilogue:
    ret
}

// line 1294

.method static
void MBPROM(int32 A)
{
    .maxstack 32

    .locals init(class @MBPROM _F)
    
    newobj instance void @MBPROM::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld int32 @MBPROM::A

L_Entry:
    // line 1300
    ldsfld int16 _G::MBTOT
    ldsflda valuetype T_array_17 _G::XTPV
    ldloc _F
    ldfld int32 @MBPROM::A
    call instance int16& T_array_17::ldadr(int32)
    ldobj int16
    ldsflda valuetype T_array_17 _G::XTPV
    ldsflda valuetype T_array_19 _G::XTUMP
    ldc.i4 0
    call instance valuetype T_array_18& T_array_19::ldadr(int32)
    ldsflda valuetype T_array_14 _G::XTPM
    ldloc _F
    ldfld int32 @MBPROM::A
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    call instance int16& T_array_17::ldadr(int32)
    ldobj int16
    sub
    dup
    ldc.i4 0
    bge L_abs_question_1
    neg
L_abs_question_1:
    add
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::MBTOT
    // line 1302
    ldsflda valuetype T_array_18 _G::MBPWN
    ldsflda valuetype T_array_14 _G::XTPM
    ldloc _F
    ldfld int32 @MBPROM::A
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    call instance int32& T_array_18::ldadr(int32)
    ldsflda valuetype T_array_18 _G::MBPWN
    ldsflda valuetype T_array_14 _G::XTPM
    ldloc _F
    ldfld int32 @MBPROM::A
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    ldc.i4 1
    sub
    stobj int32
    // line 1303
    ldsfld int16 _G::MBLTE
    ldsflda valuetype T_array_17 _G::XTPV
    ldloc _F
    ldfld int32 @MBPROM::A
    call instance int16& T_array_17::ldadr(int32)
    ldobj int16
    add
    ldsflda valuetype T_array_17 _G::XTPV
    ldsflda valuetype T_array_19 _G::XTUMP
    ldc.i4 0
    call instance valuetype T_array_18& T_array_19::ldadr(int32)
    ldsflda valuetype T_array_14 _G::XTPM
    ldloc _F
    ldfld int32 @MBPROM::A
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    call instance int16& T_array_17::ldadr(int32)
    ldobj int16
    sub
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::MBLTE
    // line 1304
    call void MBEVAL()
    /* nop */

L_Epilogue:
    ret
}

// line 1308

.method static
void MBMORP(int32 A)
{
    .maxstack 32

    .locals init(class @MBMORP _F)
    
    newobj instance void @MBMORP::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld int32 @MBMORP::A

L_Entry:
    // line 1315
    ldsfld int16 _G::MBTOT
    ldsflda valuetype T_array_17 _G::XTPV
    ldloc _F
    ldfld int32 @MBMORP::A
    call instance int16& T_array_17::ldadr(int32)
    ldobj int16
    ldsflda valuetype T_array_17 _G::XTPV
    ldsflda valuetype T_array_19 _G::XTUMP
    ldc.i4 0
    call instance valuetype T_array_18& T_array_19::ldadr(int32)
    ldsflda valuetype T_array_14 _G::XTPM
    ldloc _F
    ldfld int32 @MBMORP::A
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    call instance int16& T_array_17::ldadr(int32)
    ldobj int16
    sub
    dup
    ldc.i4 0
    bge L_abs_question_1
    neg
L_abs_question_1:
    sub
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::MBTOT
    // line 1316
    ldsflda valuetype T_array_18 _G::MBPWN
    ldsflda valuetype T_array_14 _G::XTPM
    ldloc _F
    ldfld int32 @MBMORP::A
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    call instance int32& T_array_18::ldadr(int32)
    ldsflda valuetype T_array_18 _G::MBPWN
    ldsflda valuetype T_array_14 _G::XTPM
    ldloc _F
    ldfld int32 @MBMORP::A
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    ldc.i4 1
    add
    stobj int32
    // line 1317
    ldsfld int16 _G::MBLTE
    ldsflda valuetype T_array_17 _G::XTPV
    ldloc _F
    ldfld int32 @MBMORP::A
    call instance int16& T_array_17::ldadr(int32)
    ldobj int16
    ldsflda valuetype T_array_17 _G::XTPV
    ldsflda valuetype T_array_19 _G::XTUMP
    ldc.i4 0
    call instance valuetype T_array_18& T_array_19::ldadr(int32)
    ldsflda valuetype T_array_14 _G::XTPM
    ldloc _F
    ldfld int32 @MBMORP::A
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    call instance int16& T_array_17::ldadr(int32)
    ldobj int16
    sub
    sub
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::MBLTE
    /* nop */

L_Epilogue:
    ret
}

// line 1321

.method static
void ADDATK(int8 A)
{
    .maxstack 32

    .locals init(
        class @ADDATK _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3)
    
    newobj instance void @ADDATK::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld int8 @ADDATK::A

L_Entry:
    // line 1335
    ldloc _F
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldfld int8 @ADDATK::A
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    stfld int32 @ADDATK::INTP
    // line 1336
    ldloc _F
    ldsflda valuetype T_array_14 _G::XTPM
    ldloc _F
    ldfld int32 @ADDATK::INTP
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    stfld int32 @ADDATK::INTM
    // line 1337
    ldsflda valuetype T_array_14 _G::XLPE
    ldloc _F
    ldfld int32 @ADDATK::INTP
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    stloc $tmpEndValue1
    ldsflda valuetype T_array_14 _G::XFPE
    ldloc _F
    ldfld int32 @ADDATK::INTP
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 0
    ldc.i4 15
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @ADDATK::INTE
L_for_loop_1:
    // line 1339
    ldloc _F
    ldloc _F
    ldfld int8 @ADDATK::A
    stfld int8 @ADDATK::INTT
    // line 1340
    ldloc _F
    ldsflda valuetype T_array_15 _G::XSPB
    ldloc _F
    ldfld int32 @ADDATK::INTP
    call instance bool& T_array_15::ldadr(int32)
    ldobj bool
    stfld bool @ADDATK::INTB
    // line 1341
    ldloc _F
    ldsflda valuetype T_array_11 _G::XTED
    ldloc _F
    ldfld int32 @ADDATK::INTE
    call instance int8& T_array_11::ldadr(int32)
    ldobj int8
    stfld int8 @ADDATK::INTD
    // line 1342
L_repeat_3:
    // line 1343
    ldloc _F
    ldsflda valuetype T_array_9 _G::XTLS
    ldsflda valuetype T_array_3 _G::XTSL
    ldloc _F
    ldfld int8 @ADDATK::INTT
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    ldloc _F
    ldfld int8 @ADDATK::INTD
    add
    call instance int8& T_array_9::ldadr(int32)
    ldobj int8
    stfld int8 @ADDATK::INTT
    // line 1344
    ldloc _F
    ldfld int8 @ADDATK::INTT
    ldc.i4 0
    clt
    ldc.i4.0
    ceq
    brfalse L_else_4
    // line 1346
    ldsflda valuetype T_RX _G::ATKFR
    ldloc _F
    ldfld int8 @ADDATK::A
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldloc _F
    ldfld int8 @ADDATK::INTT
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call void SETRS(valuetype T_RS& C, int8 A)
    // line 1347
    ldsflda valuetype T_RX _G::ATKTO
    ldloc _F
    ldfld int8 @ADDATK::INTT
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldloc _F
    ldfld int8 @ADDATK::A
    call void SETRS(valuetype T_RS& C, int8 A)
    // line 1348
    ldsflda valuetype T_arraytmofrs _G::ALATK
    ldloc _F
    ldfld int32 @ADDATK::INTM
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    ldloc _F
    ldfld int8 @ADDATK::INTT
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call void SETRS(valuetype T_RS& C, int8 A)
    // line 1349
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldfld int8 @ADDATK::INTT
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    ldc.i4 12
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_6
    // line 1350
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @ADDATK::INTB
L_if_end_6:
    /* nop */
    br L_if_end_5
L_else_4:
    // line 1353
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @ADDATK::INTB
L_if_end_5:
    /* nop */
    ldloc _F
    ldfld bool @ADDATK::INTB
    ldc.i4.0
    ceq
    brfalse L_repeat_3
    /* nop */
    ldloc _F
    ldfld int32 @ADDATK::INTE
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 15
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @ADDATK::INTE
    br L_for_loop_1
L_for_end_2:
    pop
    /* nop */

L_Epilogue:
    ret
}

// line 1359

.method static
void ADDLOC(int8 A, int32 B)
{
    .maxstack 32

    .locals init(class @ADDLOC _F)
    
    newobj instance void @ADDLOC::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld int8 @ADDLOC::A
    
    ldloc _F
    ldarg B
    stfld int32 @ADDLOC::B

L_Entry:
    // line 1364
    ldsflda valuetype T_array_103 _G::TPLOC
    ldc.i4 12
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldloc _F
    ldfld int8 @ADDLOC::A
    call void CLRRS(valuetype T_RS& C, int8 A)
    // line 1365
    ldsflda valuetype T_array_103 _G::TPLOC
    ldloc _F
    ldfld int32 @ADDLOC::B
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldloc _F
    ldfld int8 @ADDLOC::A
    call void SETRS(valuetype T_RS& C, int8 A)
    // line 1366
    ldsflda valuetype T_arraytmofrs _G::TMLOC
    ldsflda valuetype T_array_14 _G::XTPM
    ldloc _F
    ldfld int32 @ADDLOC::B
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    ldloc _F
    ldfld int8 @ADDLOC::A
    call void SETRS(valuetype T_RS& C, int8 A)
    // line 1367
    ldsflda valuetype T_arraytkofrs _G::ALLOC
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldloc _F
    ldfld int8 @ADDLOC::A
    call void SETRS(valuetype T_RS& C, int8 A)
    // line 1368
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldfld int8 @ADDLOC::A
    call instance int32& T_array_38::ldadr(int32)
    ldloc _F
    ldfld int32 @ADDLOC::B
    stobj int32
    /* nop */

L_Epilogue:
    ret
}

// line 1372

.method static
void CLSTAT()
{
    .maxstack 32

    .locals init(
        class @CLSTAT _F,
        valuetype T_set_5 $tmpSetLiteral1)
    
    newobj instance void @CLSTAT::.ctor()
    stloc _F


L_Entry:
    // line 1377
    ldsflda valuetype T_RB _G::BOARD
    ldc.i4 0
    stfld int32 T_RB::RBTM
    // line 1378
    ldsflda valuetype T_RB _G::BOARD
    ldc.i4 1
    neg
    dup
    ldc.i4 -1
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_RB::RBTS
    // line 1379
    ldsflda valuetype T_RB _G::BOARD
    ldloc $tmpSetLiteral1
    dup
    ldc.i4 0
    ldc.i4 3
    call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
    call valuetype T_SQ _SetCastTo_T_SQ(valuetype T_set_5 s)
    stfld valuetype T_SQ T_RB::RBSQ
    /* nop */
    /* nop */

L_Epilogue:
    ret
}

// line 1384

.method static
void CUTATK(int8 A)
{
    .maxstack 32

    .locals init(class @CUTATK _F)
    
    newobj instance void @CUTATK::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld int8 @CUTATK::A

L_Entry:
    // line 1397
    ldloc _F
    ldflda valuetype T_RS @CUTATK::INRS
    ldsflda valuetype T_RX _G::ATKTO
    ldloc _F
    ldfld int8 @CUTATK::A
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    call void CPYRS(valuetype T_RS& C, valuetype T_RS A)
    // line 1398
    br L_while_test_2
L_while_1:
    // line 1399
    ldsflda valuetype T_array_15 _G::XSPB
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldfld int8 @CUTATK::INTS
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call instance bool& T_array_15::ldadr(int32)
    ldobj bool
    brfalse L_if_end_3
    // line 1401
    ldloc _F
    ldsflda valuetype T_array_44 _G::XLLD
    ldsflda valuetype T_array_3 _G::XTSL
    ldloc _F
    ldfld int8 @CUTATK::A
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    ldsflda valuetype T_array_3 _G::XTSL
    ldloc _F
    ldfld int8 @CUTATK::INTS
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    sub
    call instance int8& T_array_44::ldadr(int32)
    ldobj int8
    stfld int8 @CUTATK::INTD
    // line 1403
    ldloc _F
    ldsflda valuetype T_array_14 _G::XTPM
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldfld int8 @CUTATK::INTS
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    stfld int32 @CUTATK::INTM
    // line 1404
    ldloc _F
    ldsflda valuetype T_array_3 _G::XTSL
    ldloc _F
    ldfld int8 @CUTATK::A
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    ldloc _F
    ldfld int8 @CUTATK::INTD
    add
    dup
    ldc.i4 0
    ldc.i4 119
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @CUTATK::INTL
    // line 1405
    ldloc _F
    ldsflda valuetype T_array_9 _G::XTLS
    ldloc _F
    ldfld int8 @CUTATK::INTL
    call instance int8& T_array_9::ldadr(int32)
    ldobj int8
    stfld int8 @CUTATK::INTT
    // line 1407
    br L_while_test_5
L_while_4:
    // line 1409
    ldsflda valuetype T_RX _G::ATKFR
    ldloc _F
    ldfld int8 @CUTATK::INTS
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldloc _F
    ldfld int8 @CUTATK::INTT
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call void CLRRS(valuetype T_RS& C, int8 A)
    // line 1410
    ldsflda valuetype T_RX _G::ATKTO
    ldloc _F
    ldfld int8 @CUTATK::INTT
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldloc _F
    ldfld int8 @CUTATK::INTS
    call void CLRRS(valuetype T_RS& C, int8 A)
    // line 1411
    ldloc _F
    ldflda valuetype T_RS @CUTATK::IMRS
    ldsflda valuetype T_RX _G::ATKTO
    ldloc _F
    ldfld int8 @CUTATK::INTT
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytmofrs _G::TMLOC
    ldloc _F
    ldfld int32 @CUTATK::INTM
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 1414
    ldloc _F
    ldfld valuetype T_RS @CUTATK::IMRS
    call bool NULRS(valuetype T_RS A)
    brfalse L_if_end_6
    // line 1415
    ldsflda valuetype T_arraytmofrs _G::ALATK
    ldloc _F
    ldfld int32 @CUTATK::INTM
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    ldloc _F
    ldfld int8 @CUTATK::INTT
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call void CLRRS(valuetype T_RS& C, int8 A)
L_if_end_6:
    // line 1416
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldfld int8 @CUTATK::INTT
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    ldc.i4 12
    ceq
    brfalse L_else_7
    // line 1418
    ldloc _F
    ldloc _F
    ldfld int8 @CUTATK::INTL
    ldloc _F
    ldfld int8 @CUTATK::INTD
    add
    dup
    ldc.i4 0
    ldc.i4 119
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @CUTATK::INTL
    // line 1419
    ldloc _F
    ldsflda valuetype T_array_9 _G::XTLS
    ldloc _F
    ldfld int8 @CUTATK::INTL
    call instance int8& T_array_9::ldadr(int32)
    ldobj int8
    stfld int8 @CUTATK::INTT
    /* nop */
    br L_if_end_8
L_else_7:
    // line 1422
    ldloc _F
    ldc.i4 -1
    dup
    ldc.i4 -1
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @CUTATK::INTT
L_if_end_8:
    /* nop */
L_while_test_5:
    ldloc _F
    ldfld int8 @CUTATK::INTT
    ldc.i4 -1
    cgt
    brtrue L_while_4
    /* nop */
L_if_end_3:
L_while_test_2:
    ldloc _F
    ldflda valuetype T_RS @CUTATK::INRS
    ldloc _F
    ldflda int8 @CUTATK::INTS
    call bool NXTTS(valuetype T_RS& A, int8& B)
    brtrue L_while_1
    /* nop */

L_Epilogue:
    ret
}

// line 1428

.method static
void DELATK(int8 A)
{
    .maxstack 32

    .locals init(class @DELATK _F)
    
    newobj instance void @DELATK::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld int8 @DELATK::A

L_Entry:
    // line 1440
    ldloc _F
    ldflda valuetype T_RS @DELATK::INRS
    ldsflda valuetype T_RX _G::ATKFR
    ldloc _F
    ldfld int8 @DELATK::A
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    call void CPYRS(valuetype T_RS& C, valuetype T_RS A)
    // line 1442
    ldsflda valuetype T_RX _G::ATKFR
    ldloc _F
    ldfld int8 @DELATK::A
    call instance valuetype T_RS& T_RX::ldadr(int32)
    call void NEWRS(valuetype T_RS& A)
    // line 1443
    ldloc _F
    ldsflda valuetype T_array_14 _G::XTPM
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldfld int8 @DELATK::A
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    stfld int32 @DELATK::INTM
    // line 1444
    br L_while_test_2
L_while_1:
    // line 1447
    ldsflda valuetype T_RX _G::ATKTO
    ldloc _F
    ldfld int8 @DELATK::INTS
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldloc _F
    ldfld int8 @DELATK::A
    call void CLRRS(valuetype T_RS& C, int8 A)
    // line 1449
    ldloc _F
    ldflda valuetype T_RS @DELATK::IMRS
    ldsflda valuetype T_RX _G::ATKTO
    ldloc _F
    ldfld int8 @DELATK::INTS
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytmofrs _G::TMLOC
    ldloc _F
    ldfld int32 @DELATK::INTM
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 1451
    ldloc _F
    ldfld valuetype T_RS @DELATK::IMRS
    call bool NULRS(valuetype T_RS A)
    brfalse L_if_end_3
    // line 1452
    ldsflda valuetype T_arraytmofrs _G::ALATK
    ldloc _F
    ldfld int32 @DELATK::INTM
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    ldloc _F
    ldfld int8 @DELATK::INTS
    call void CLRRS(valuetype T_RS& C, int8 A)
L_if_end_3:
    // line 1453
    ldsflda valuetype T_array_103 _G::TPLOC
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldfld int8 @DELATK::A
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldloc _F
    ldfld int8 @DELATK::A
    call void CLRRS(valuetype T_RS& C, int8 A)
    // line 1454
    ldsflda valuetype T_arraytmofrs _G::TMLOC
    ldloc _F
    ldfld int32 @DELATK::INTM
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    ldloc _F
    ldfld int8 @DELATK::A
    call void CLRRS(valuetype T_RS& C, int8 A)
    // line 1455
    ldsflda valuetype T_arraytkofrs _G::ALLOC
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldloc _F
    ldfld int8 @DELATK::A
    call void CLRRS(valuetype T_RS& C, int8 A)
    // line 1456
    ldsflda valuetype T_array_103 _G::TPLOC
    ldc.i4 12
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldloc _F
    ldfld int8 @DELATK::A
    call void SETRS(valuetype T_RS& C, int8 A)
    // line 1457
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldfld int8 @DELATK::A
    call instance int32& T_array_38::ldadr(int32)
    ldc.i4 12
    stobj int32
    /* nop */
L_while_test_2:
    ldloc _F
    ldflda valuetype T_RS @DELATK::INRS
    ldloc _F
    ldflda int8 @DELATK::INTS
    call bool NXTTS(valuetype T_RS& A, int8& B)
    brtrue L_while_1
    /* nop */

L_Epilogue:
    ret
}

// line 1462

.method static
void PRPATK(int8 A)
{
    .maxstack 32

    .locals init(class @PRPATK _F)
    
    newobj instance void @PRPATK::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld int8 @PRPATK::A

L_Entry:
    // line 1475
    ldloc _F
    ldflda valuetype T_RS @PRPATK::INRS
    ldsflda valuetype T_RX _G::ATKTO
    ldloc _F
    ldfld int8 @PRPATK::A
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    call void CPYRS(valuetype T_RS& C, valuetype T_RS A)
    // line 1476
    br L_while_test_2
L_while_1:
    // line 1477
    ldsflda valuetype T_array_15 _G::XSPB
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldfld int8 @PRPATK::INTS
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call instance bool& T_array_15::ldadr(int32)
    ldobj bool
    brfalse L_if_end_3
    // line 1479
    ldloc _F
    ldsflda valuetype T_array_44 _G::XLLD
    ldsflda valuetype T_array_3 _G::XTSL
    ldloc _F
    ldfld int8 @PRPATK::A
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    ldsflda valuetype T_array_3 _G::XTSL
    ldloc _F
    ldfld int8 @PRPATK::INTS
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    sub
    call instance int8& T_array_44::ldadr(int32)
    ldobj int8
    stfld int8 @PRPATK::INTD
    // line 1481
    ldloc _F
    ldsflda valuetype T_array_14 _G::XTPM
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldfld int8 @PRPATK::INTS
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    stfld int32 @PRPATK::INTM
    // line 1482
    ldloc _F
    ldsflda valuetype T_array_3 _G::XTSL
    ldloc _F
    ldfld int8 @PRPATK::A
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    ldloc _F
    ldfld int8 @PRPATK::INTD
    add
    dup
    ldc.i4 0
    ldc.i4 119
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @PRPATK::INTL
    // line 1483
    ldloc _F
    ldsflda valuetype T_array_9 _G::XTLS
    ldloc _F
    ldfld int8 @PRPATK::INTL
    call instance int8& T_array_9::ldadr(int32)
    ldobj int8
    stfld int8 @PRPATK::INTT
    // line 1485
    br L_while_test_5
L_while_4:
    // line 1487
    ldsflda valuetype T_RX _G::ATKFR
    ldloc _F
    ldfld int8 @PRPATK::INTS
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldloc _F
    ldfld int8 @PRPATK::INTT
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call void SETRS(valuetype T_RS& C, int8 A)
    // line 1488
    ldsflda valuetype T_RX _G::ATKTO
    ldloc _F
    ldfld int8 @PRPATK::INTT
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldloc _F
    ldfld int8 @PRPATK::INTS
    call void SETRS(valuetype T_RS& C, int8 A)
    // line 1489
    ldsflda valuetype T_arraytmofrs _G::ALATK
    ldloc _F
    ldfld int32 @PRPATK::INTM
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    ldloc _F
    ldfld int8 @PRPATK::INTT
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call void SETRS(valuetype T_RS& C, int8 A)
    // line 1490
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldfld int8 @PRPATK::INTT
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    ldc.i4 12
    ceq
    brfalse L_else_6
    // line 1492
    ldloc _F
    ldloc _F
    ldfld int8 @PRPATK::INTL
    ldloc _F
    ldfld int8 @PRPATK::INTD
    add
    dup
    ldc.i4 0
    ldc.i4 119
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @PRPATK::INTL
    // line 1493
    ldloc _F
    ldsflda valuetype T_array_9 _G::XTLS
    ldloc _F
    ldfld int8 @PRPATK::INTL
    call instance int8& T_array_9::ldadr(int32)
    ldobj int8
    stfld int8 @PRPATK::INTT
    /* nop */
    br L_if_end_7
L_else_6:
    // line 1496
    ldloc _F
    ldc.i4 1
    neg
    dup
    ldc.i4 -1
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @PRPATK::INTT
L_if_end_7:
    /* nop */
L_while_test_5:
    ldloc _F
    ldfld int8 @PRPATK::INTT
    ldc.i4 0
    clt
    ldc.i4.0
    ceq
    brtrue L_while_4
    /* nop */
L_if_end_3:
L_while_test_2:
    ldloc _F
    ldflda valuetype T_RS @PRPATK::INRS
    ldloc _F
    ldflda int8 @PRPATK::INTS
    call bool NXTTS(valuetype T_RS& A, int8& B)
    brtrue L_while_1
    /* nop */

L_Epilogue:
    ret
}

// line 1502

.method static
void GAINIT(valuetype T_RM A)
{
    .maxstack 32

    .locals init(class @GAINIT _F)
    
    newobj instance void @GAINIT::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RM @GAINIT::A

L_Entry:
    // line 1508
    ldloc _F
    ldflda valuetype T_RM @GAINIT::A
    ldfld int8 T_RM::RMFR
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldflda valuetype T_RM @GAINIT::A
    ldfld int8 T_RM::RMTO
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call void ADDLOC(int8 A, int32 B)
    // line 1509
    ldloc _F
    ldflda valuetype T_RM @GAINIT::A
    ldfld int8 T_RM::RMFR
    call void ADDATK(int8 A)
    // line 1510
    ldloc _F
    ldflda valuetype T_RM @GAINIT::A
    ldfld int8 T_RM::RMFR
    call void CUTATK(int8 A)
    // line 1511
    ldloc _F
    ldflda valuetype T_RM @GAINIT::A
    ldfld int8 T_RM::RMTO
    call void DELATK(int8 A)
    // line 1513
    ldloc _F
    ldflda valuetype T_RM @GAINIT::A
    ldfld int8 T_RM::RMTO
    ldloc _F
    ldflda valuetype T_RM @GAINIT::A
    ldfld int32 T_RM::RMCP
    call void ADDLOC(int8 A, int32 B)
    // line 1514
    ldloc _F
    ldflda valuetype T_RM @GAINIT::A
    ldfld int8 T_RM::RMTO
    call void ADDATK(int8 A)
    // line 1515
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldflda valuetype T_RM @GAINIT::A
    ldfld int8 T_RM::RMTO
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call void MBTPAC(int32 A)
    /* nop */
    /* nop */

L_Epilogue:
    ret
}

// line 1520

.method static
void LOSEIT(valuetype T_RM A)
{
    .maxstack 32

    .locals init(class @LOSEIT _F)
    
    newobj instance void @LOSEIT::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RM @LOSEIT::A

L_Entry:
    // line 1526
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldflda valuetype T_RM @LOSEIT::A
    ldfld int8 T_RM::RMTO
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call void MBCAPT(int32 A)
    // line 1527
    ldloc _F
    ldflda valuetype T_RM @LOSEIT::A
    ldfld int8 T_RM::RMTO
    call void DELATK(int8 A)
    // line 1529
    ldloc _F
    ldflda valuetype T_RM @LOSEIT::A
    ldfld int8 T_RM::RMTO
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldflda valuetype T_RM @LOSEIT::A
    ldfld int8 T_RM::RMFR
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call void ADDLOC(int8 A, int32 B)
    // line 1531
    ldloc _F
    ldflda valuetype T_RM @LOSEIT::A
    ldfld int8 T_RM::RMFR
    call void DELATK(int8 A)
    // line 1533
    ldloc _F
    ldflda valuetype T_RM @LOSEIT::A
    ldfld int8 T_RM::RMFR
    call void PRPATK(int8 A)
    // line 1535
    ldloc _F
    ldflda valuetype T_RM @LOSEIT::A
    ldfld int8 T_RM::RMTO
    call void ADDATK(int8 A)
    /* nop */
    /* nop */

L_Epilogue:
    ret
}

// line 1540

.method static
void MOVEIT(valuetype T_RM A)
{
    .maxstack 32

    .locals init(class @MOVEIT _F)
    
    newobj instance void @MOVEIT::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RM @MOVEIT::A

L_Entry:
    // line 1546
    ldloc _F
    ldflda valuetype T_RM @MOVEIT::A
    ldfld int8 T_RM::RMTO
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldflda valuetype T_RM @MOVEIT::A
    ldfld int8 T_RM::RMFR
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call void ADDLOC(int8 A, int32 B)
    // line 1547
    ldloc _F
    ldflda valuetype T_RM @MOVEIT::A
    ldfld int8 T_RM::RMTO
    call void CUTATK(int8 A)
    // line 1549
    ldloc _F
    ldflda valuetype T_RM @MOVEIT::A
    ldfld int8 T_RM::RMFR
    call void DELATK(int8 A)
    // line 1551
    ldloc _F
    ldflda valuetype T_RM @MOVEIT::A
    ldfld int8 T_RM::RMFR
    call void PRPATK(int8 A)
    // line 1553
    ldloc _F
    ldflda valuetype T_RM @MOVEIT::A
    ldfld int8 T_RM::RMTO
    call void ADDATK(int8 A)
    /* nop */
    /* nop */

L_Epilogue:
    ret
}

// line 1558

.method static
void RTRKIT(valuetype T_RM A)
{
    .maxstack 32

    .locals init(class @RTRKIT _F)
    
    newobj instance void @RTRKIT::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RM @RTRKIT::A

L_Entry:
    // line 1564
    ldloc _F
    ldflda valuetype T_RM @RTRKIT::A
    ldfld int8 T_RM::RMFR
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldflda valuetype T_RM @RTRKIT::A
    ldfld int8 T_RM::RMTO
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call void ADDLOC(int8 A, int32 B)
    // line 1566
    ldloc _F
    ldflda valuetype T_RM @RTRKIT::A
    ldfld int8 T_RM::RMFR
    call void CUTATK(int8 A)
    // line 1568
    ldloc _F
    ldflda valuetype T_RM @RTRKIT::A
    ldfld int8 T_RM::RMTO
    call void DELATK(int8 A)
    // line 1570
    ldloc _F
    ldflda valuetype T_RM @RTRKIT::A
    ldfld int8 T_RM::RMTO
    call void PRPATK(int8 A)
    // line 1572
    ldloc _F
    ldflda valuetype T_RM @RTRKIT::A
    ldfld int8 T_RM::RMFR
    call void ADDATK(int8 A)
    /* nop */
    /* nop */

L_Epilogue:
    ret
}

// line 1578

.method static
void PAWNIT(valuetype T_RM A)
{
    .maxstack 32

    .locals init(class @PAWNIT _F)
    
    newobj instance void @PAWNIT::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RM @PAWNIT::A

L_Entry:
    // line 1584
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldflda valuetype T_RM @PAWNIT::A
    ldfld int8 T_RM::RMTO
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call void MBMORP(int32 A)
    // line 1585
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldflda valuetype T_RM @PAWNIT::A
    ldfld int8 T_RM::RMTO
    call instance int32& T_array_38::ldadr(int32)
    ldsflda valuetype T_array_19 _G::XTUMP
    ldc.i4 0
    call instance valuetype T_array_18& T_array_19::ldadr(int32)
    ldsflda valuetype T_array_14 _G::XTPM
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldflda valuetype T_RM @PAWNIT::A
    ldfld int8 T_RM::RMTO
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call instance int32& T_array_14::ldadr(int32)
    ldobj int32
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    stobj int32
    /* nop */
    /* nop */

L_Epilogue:
    ret
}

// line 1590

.method static
void PROACA(int8 A)
{
    .maxstack 32

    .locals init(class @PROACA _F)
    
    newobj instance void @PROACA::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld int8 @PROACA::A

L_Entry:
    // line 1598
    ldsflda valuetype T_arraytkofrs _G::CSTAT
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldloc _F
    ldfld int8 @PROACA::A
    call void CLRRS(valuetype T_RS& C, int8 A)
    // line 1599
    ldloc _F
    ldflda valuetype T_RS @PROACA::INRS
    ldsflda valuetype T_arraytkofrs _G::CSTAT
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytrofrs _G::XRRS
    ldsflda valuetype T_array_38 _G::XTSR
    ldloc _F
    ldfld int8 @PROACA::A
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 1601
    ldloc _F
    ldfld valuetype T_RS @PROACA::INRS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldsflda valuetype T_array_38 _G::XTSR
    ldloc _F
    ldfld int8 @PROACA::A
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 4
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    call bool INRSTB(valuetype T_RS A, int8 B)
    ldc.i4.0
    ceq
    brfalse L_if_end_1
    // line 1603
    ldsflda valuetype T_arraytkofrs _G::CSTAT
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldsflda valuetype T_arraytkofrs _G::CSTAT
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytrofrs _G::XNRS
    ldsflda valuetype T_array_38 _G::XTSR
    ldloc _F
    ldfld int8 @PROACA::A
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
L_if_end_1:
    // line 1606
    ldloc _F
    ldflda valuetype T_RS @PROACA::IMRS
    ldloc _F
    ldfld valuetype T_RS @PROACA::INRS
    ldsflda valuetype T_arraytrofrs _G::XRFS
    ldc.i4 7
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 1607
    ldloc _F
    ldflda valuetype T_RS @PROACA::INRS
    ldloc _F
    ldfld valuetype T_RS @PROACA::INRS
    ldsflda valuetype T_arraytrofrs _G::XRFS
    ldc.i4 0
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 1608
    ldloc _F
    ldflda valuetype T_RS @PROACA::INRS
    ldloc _F
    ldfld valuetype T_RS @PROACA::INRS
    ldloc _F
    ldfld valuetype T_RS @PROACA::IMRS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 1609
    ldloc _F
    ldfld valuetype T_RS @PROACA::INRS
    call bool NULRS(valuetype T_RS A)
    brfalse L_if_end_2
    // line 1610
    ldsflda valuetype T_arraytkofrs _G::CSTAT
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldsflda valuetype T_arraytkofrs _G::CSTAT
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytrofrs _G::XNRS
    ldsflda valuetype T_array_38 _G::XTSR
    ldloc _F
    ldfld int8 @PROACA::A
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
L_if_end_2:
    /* nop */

L_Epilogue:
    ret
}

// line 1614

.method static
void PROACS(valuetype T_RM A)
{
    .maxstack 32

    .locals init(class @PROACS _F)
    
    newobj instance void @PROACS::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RM @PROACS::A

L_Entry:
    // line 1621
    ldsflda valuetype T_arraytkofrs _G::CSTAT
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldloc _F
    ldflda valuetype T_RM @PROACS::A
    ldfld int8 T_RM::RMFR
    call bool INRSTB(valuetype T_RS A, int8 B)
    brfalse L_if_end_1
    // line 1622
    ldloc _F
    ldflda valuetype T_RM @PROACS::A
    ldfld int8 T_RM::RMFR
    call void PROACA(int8 A)
L_if_end_1:
    // line 1623
    ldsflda valuetype T_arraytkofrs _G::CSTAT
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldloc _F
    ldflda valuetype T_RM @PROACS::A
    ldfld int8 T_RM::RMTO
    call bool INRSTB(valuetype T_RS A, int8 B)
    brfalse L_if_end_2
    // line 1624
    ldloc _F
    ldflda valuetype T_RM @PROACS::A
    ldfld int8 T_RM::RMTO
    call void PROACA(int8 A)
L_if_end_2:
    /* nop */
    /* nop */

L_Epilogue:
    ret
}

// line 1629

.method static
void PROMOT(valuetype T_RM A)
{
    .maxstack 32

    .locals init(class @PROMOT _F)
    
    newobj instance void @PROMOT::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RM @PROMOT::A

L_Entry:
    // line 1635
    ldsflda valuetype T_array_21 _G::XTGMP
    ldloc _F
    ldflda valuetype T_RM @PROMOT::A
    ldfld int32 T_RM::RMPP
    call instance valuetype T_array_18& T_array_21::ldadr(int32)
    ldsfld int32 _G::JNTM
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    call void MBPROM(int32 A)
    // line 1636
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldflda valuetype T_RM @PROMOT::A
    ldfld int8 T_RM::RMFR
    call instance int32& T_array_38::ldadr(int32)
    ldsflda valuetype T_array_21 _G::XTGMP
    ldloc _F
    ldflda valuetype T_RM @PROMOT::A
    ldfld int32 T_RM::RMPP
    call instance valuetype T_array_18& T_array_21::ldadr(int32)
    ldsfld int32 _G::JNTM
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    stobj int32
    /* nop */
    /* nop */

L_Epilogue:
    ret
}

// line 1641

.method static
void CREATE()
{
    .maxstack 32

    .locals init(
        class @CREATE _F,
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        int8 $tmpIndex3,
        int32 $tmpEndValue4,
        int32 $tmpIndex5,
        int32 $tmpIndex6,
        int32 $tmpEndValue7,
        int32 $tmpIndex8,
        int32 $tmpIndex9,
        int8 $tmpEndValue10,
        int8 $tmpIndex11,
        int8 $tmpIndex12,
        int32 $tmpEndValue13,
        int32 $tmpIndex14,
        int32 $tmpIndex15)
    
    newobj instance void @CREATE::.ctor()
    stloc _F

L_Entry:
    // line 1653
    ldc.i4 1
    ldc.i4 1
    add
    dup
    ldc.i4 1
    ldc.i4 500
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::JNTW
    // line 1655
    ldc.i4 0
    dup
    ldc.i4 0
    ldc.i4 16
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int8 _G::JNTK
    // line 1656
    ldsflda valuetype T_RB _G::BOARD
    ldfld int32 T_RB::RBTM
    stsfld int32 _G::JNTM
    // line 1658
    ldc.i4 0
    stsfld int32 _G::NODES
    // line 1660
    ldsflda valuetype T_array_102 _G::LINDX
    ldsfld int8 _G::JNTK
    call instance int16& T_array_102::ldadr(int32)
    ldsfld int16 _G::JNTW
    stobj int16
    // line 1661
    ldsflda valuetype T_array_105 _G::SRCHM
    ldsfld int8 _G::JNTK
    call instance int32& T_array_105::ldadr(int32)
    ldc.i4 0
    stobj int32
    // line 1663
    ldc.i4 63
    stloc $tmpEndValue1
    ldc.i4 0
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int8 @CREATE::INTS
L_for_loop_1:
    // line 1665
    ldsflda valuetype T_RX _G::ATKFR
    ldloc _F
    ldfld int8 @CREATE::INTS
    call instance valuetype T_RS& T_RX::ldadr(int32)
    call void NEWRS(valuetype T_RS& A)
    // line 1666
    ldsflda valuetype T_RX _G::ATKTO
    ldloc _F
    ldfld int8 @CREATE::INTS
    call instance valuetype T_RS& T_RX::ldadr(int32)
    call void NEWRS(valuetype T_RS& A)
    // line 1667
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldfld int8 @CREATE::INTS
    call instance int32& T_array_38::ldadr(int32)
    ldc.i4 12
    stobj int32
    /* nop */
    ldloc _F
    ldfld int8 @CREATE::INTS
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int8 @CREATE::INTS
    br L_for_loop_1
L_for_end_2:
    pop
    // line 1670
    ldsflda valuetype T_arraytkofrs _G::ALLOC
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    call void NEWRS(valuetype T_RS& A)
    // line 1672
    ldc.i4 12
    stloc $tmpEndValue4
    ldc.i4 0
    dup
    ldloc $tmpEndValue4
    bgt L_for_end_4
    dup
    ldc.i4 0
    ldc.i4 12
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex5
    ldloc _F
    ldloc $tmpIndex5
    stfld int32 @CREATE::INTP
L_for_loop_3:
    // line 1673
    ldsflda valuetype T_array_103 _G::TPLOC
    ldloc _F
    ldfld int32 @CREATE::INTP
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    call void NEWRS(valuetype T_RS& A)
    ldloc _F
    ldfld int32 @CREATE::INTP
    dup
    ldloc $tmpEndValue4
    beq L_for_end_4
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 12
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex6
    ldloc _F
    ldloc $tmpIndex6
    stfld int32 @CREATE::INTP
    br L_for_loop_3
L_for_end_4:
    pop
    // line 1675
    ldc.i4 2
    stloc $tmpEndValue7
    ldc.i4 0
    dup
    ldloc $tmpEndValue7
    bgt L_for_end_6
    dup
    ldc.i4 0
    ldc.i4 2
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex8
    ldloc _F
    ldloc $tmpIndex8
    stfld int32 @CREATE::INTM
L_for_loop_5:
    // line 1677
    ldsflda valuetype T_arraytmofrs _G::TMLOC
    ldloc _F
    ldfld int32 @CREATE::INTM
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    call void NEWRS(valuetype T_RS& A)
    // line 1678
    ldsflda valuetype T_arraytmofrs _G::ALATK
    ldloc _F
    ldfld int32 @CREATE::INTM
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    call void NEWRS(valuetype T_RS& A)
    /* nop */
    ldloc _F
    ldfld int32 @CREATE::INTM
    dup
    ldloc $tmpEndValue7
    beq L_for_end_6
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 2
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex9
    ldloc _F
    ldloc $tmpIndex9
    stfld int32 @CREATE::INTM
    br L_for_loop_5
L_for_end_6:
    pop
    // line 1681
    ldc.i4 0
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::MBTOT
    // line 1682
    ldsflda valuetype T_array_18 _G::MBPWN
    ldc.i4 0
    call instance int32& T_array_18::ldadr(int32)
    ldc.i4 0
    stobj int32
    // line 1683
    ldsflda valuetype T_array_18 _G::MBPWN
    ldc.i4 1
    call instance int32& T_array_18::ldadr(int32)
    ldc.i4 0
    stobj int32
    // line 1684
    ldc.i4 0
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::MBLTE
    // line 1685
    ldc.i4 63
    stloc $tmpEndValue10
    ldc.i4 0
    dup
    ldloc $tmpEndValue10
    bgt L_for_end_8
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex11
    ldloc _F
    ldloc $tmpIndex11
    stfld int8 @CREATE::INTS
L_for_loop_7:
    // line 1686
    ldsflda valuetype T_RB _G::BOARD
    ldflda valuetype T_array_38 T_RB::RBIS
    ldloc _F
    ldfld int8 @CREATE::INTS
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    ldc.i4 12
    ceq
    ldc.i4.0
    ceq
    brfalse L_else_9
    // line 1688
    ldloc _F
    ldfld int8 @CREATE::INTS
    ldsflda valuetype T_RB _G::BOARD
    ldflda valuetype T_array_38 T_RB::RBIS
    ldloc _F
    ldfld int8 @CREATE::INTS
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call void ADDLOC(int8 A, int32 B)
    // line 1689
    ldsflda valuetype T_RB _G::BOARD
    ldflda valuetype T_array_38 T_RB::RBIS
    ldloc _F
    ldfld int8 @CREATE::INTS
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call void MBTPAC(int32 A)
    /* nop */
    br L_if_end_10
L_else_9:
    // line 1692
    ldsflda valuetype T_array_103 _G::TPLOC
    ldc.i4 12
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldloc _F
    ldfld int8 @CREATE::INTS
    call void SETRS(valuetype T_RS& C, int8 A)
L_if_end_10:
    ldloc _F
    ldfld int8 @CREATE::INTS
    dup
    ldloc $tmpEndValue10
    beq L_for_end_8
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex12
    ldloc _F
    ldloc $tmpIndex12
    stfld int8 @CREATE::INTS
    br L_for_loop_7
L_for_end_8:
    pop
    // line 1694
    call void MBEVAL()
    // line 1696
    ldloc _F
    ldflda valuetype T_RS @CREATE::INRS
    ldsflda valuetype T_arraytkofrs _G::ALLOC
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void CPYRS(valuetype T_RS& C, valuetype T_RS A)
    // line 1698
    br L_while_test_12
L_while_11:
    // line 1699
    ldloc _F
    ldfld int8 @CREATE::INTS
    call void ADDATK(int8 A)
L_while_test_12:
    ldloc _F
    ldflda valuetype T_RS @CREATE::INRS
    ldloc _F
    ldflda int8 @CREATE::INTS
    call bool NXTTS(valuetype T_RS& A, int8& B)
    brtrue L_while_11
    // line 1701
    ldsflda valuetype T_arraytkofrs _G::CSTAT
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    call void NEWRS(valuetype T_RS& A)
    // line 1702
    ldc.i4 3
    stloc $tmpEndValue13
    ldc.i4 0
    dup
    ldloc $tmpEndValue13
    bgt L_for_end_14
    dup
    ldc.i4 0
    ldc.i4 3
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex14
    ldloc _F
    ldloc $tmpIndex14
    stfld int32 @CREATE::INTQ
L_for_loop_13:
    // line 1703
    ldsflda valuetype T_RB _G::BOARD
    ldfld valuetype T_SQ T_RB::RBSQ
    ldloc _F
    ldfld int32 @CREATE::INTQ
    call bool _SetContains(valuetype T_SQ s, int32 val)
    brfalse L_if_end_15
    // line 1704
    ldsflda valuetype T_arraytkofrs _G::CSTAT
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldsflda valuetype T_arraytkofrs _G::CSTAT
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytqofrs _G::XSQS
    ldloc _F
    ldfld int32 @CREATE::INTQ
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
L_if_end_15:
    ldloc _F
    ldfld int32 @CREATE::INTQ
    dup
    ldloc $tmpEndValue13
    beq L_for_end_14
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 3
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex15
    ldloc _F
    ldloc $tmpIndex15
    stfld int32 @CREATE::INTQ
    br L_for_loop_13
L_for_end_14:
    pop
    // line 1706
    ldsflda valuetype T_arraytkofrs _G::ENPAS
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    call void NEWRS(valuetype T_RS& A)
    // line 1707
    ldsflda valuetype T_RB _G::BOARD
    ldfld int8 T_RB::RBTS
    ldc.i4 0
    clt
    ldc.i4.0
    ceq
    brfalse L_if_end_16
    // line 1708
    ldsflda valuetype T_arraytkofrs _G::ENPAS
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldsflda valuetype T_RB _G::BOARD
    ldfld int8 T_RB::RBTS
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call void SETRS(valuetype T_RS& C, int8 A)
L_if_end_16:
    // line 1710
    ldsflda valuetype T_arraytkofrs _G::GENPN
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldsflda valuetype T_array_103 _G::TPLOC
    ldsflda valuetype T_array_19 _G::XTUMP
    ldc.i4 0
    call instance valuetype T_array_18& T_array_19::ldadr(int32)
    ldsfld int32 _G::JNTM
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldobj valuetype T_RS
    call void CPYRS(valuetype T_RS& C, valuetype T_RS A)
    // line 1711
    ldsflda valuetype T_arraytkofrs _G::GENTO
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldsflda valuetype T_arraytmofrs _G::TMLOC
    ldsfld int32 _G::JNTM
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void NOTRS(valuetype T_RS& C, valuetype T_RS A)
    // line 1712
    ldloc _F
    ldflda valuetype T_RS @CREATE::INRS
    ldsflda valuetype T_arraytkofrs _G::GENPN
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void NOTRS(valuetype T_RS& C, valuetype T_RS A)
    // line 1713
    ldsflda valuetype T_arraytkofrs _G::GENFR
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldsflda valuetype T_arraytmofrs _G::TMLOC
    ldsfld int32 _G::JNTM
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldloc _F
    ldfld valuetype T_RS @CREATE::INRS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    /* nop */
    /* nop */

L_Epilogue:
    ret
}

// line 1718

.method static
void DNDATE(valuetype T_RM A)
{
    .maxstack 32

    .locals init(
        class @DNDATE _F,
        int32 $tmpSwitchValue1)
    
    newobj instance void @DNDATE::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RM @DNDATE::A

L_Entry:
    // line 1732
    ldloc _F
    ldflda valuetype T_RM @DNDATE::A
    ldfld bool T_RM::RMCA
    ldc.i4 4
    mul
    ldloc _F
    ldflda valuetype T_RM @DNDATE::A
    ldfld bool T_RM::RMAC
    ldc.i4 2
    mul
    add
    ldloc _F
    ldflda valuetype T_RM @DNDATE::A
    ldfld bool T_RM::RMPR
    add
    stloc $tmpSwitchValue1
    ldloc $tmpSwitchValue1
    ldc.i4 0
    bne.un L_check_case_2
    // line 1734
    ldloc _F
    ldfld valuetype T_RM @DNDATE::A
    call void RTRKIT(valuetype T_RM A)
    br L_case_end_1
L_check_case_2:
    ldloc $tmpSwitchValue1
    ldc.i4 1
    bne.un L_check_case_3
    // line 1737
    ldloc _F
    ldfld valuetype T_RM @DNDATE::A
    call void PAWNIT(valuetype T_RM A)
    // line 1738
    ldloc _F
    ldfld valuetype T_RM @DNDATE::A
    call void RTRKIT(valuetype T_RM A)
    /* nop */
    br L_case_end_1
L_check_case_3:
    ldloc $tmpSwitchValue1
    ldc.i4 2
    bne.un L_check_case_4
    // line 1741
    ldloc _F
    ldflda valuetype T_RM @DNDATE::A
    ldfld bool T_RM::RMOO
    brfalse L_else_5
    // line 1743
    ldloc _F
    ldflda valuetype T_RM @DNDATE::A
    ldfld bool T_RM::RMQS
    brfalse L_else_7
    // line 1744
    ldloc _F
    ldc.i4 0
    stfld int32 @DNDATE::INTF
    br L_if_end_8
L_else_7:
    // line 1746
    ldloc _F
    ldc.i4 7
    stfld int32 @DNDATE::INTF
L_if_end_8:
    // line 1747
    ldloc _F
    ldsflda valuetype T_array_38 _G::XTSR
    ldloc _F
    ldflda valuetype T_RM @DNDATE::A
    ldfld int8 T_RM::RMFR
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    stfld int32 @DNDATE::INTR
    // line 1748
    ldloc _F
    ldsflda valuetype T_array_37 _G::XTRFS
    ldloc _F
    ldfld int32 @DNDATE::INTR
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldloc _F
    ldfld int32 @DNDATE::INTF
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    stfld int8 @DNDATE::RKFR
    // line 1749
    ldloc _F
    ldloc _F
    ldflda valuetype T_RM @DNDATE::A
    ldfld int8 T_RM::RMFR
    ldloc _F
    ldflda valuetype T_RM @DNDATE::A
    ldfld int8 T_RM::RMTO
    add
    ldc.i4 2
    div
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @DNDATE::RKTO
    // line 1750
    ldloc _F
    ldfld int8 @DNDATE::RKFR
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldfld int8 @DNDATE::RKTO
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call void ADDLOC(int8 A, int32 B)
    // line 1751
    ldloc _F
    ldfld int8 @DNDATE::RKTO
    call void DELATK(int8 A)
    // line 1752
    ldloc _F
    ldfld int8 @DNDATE::RKTO
    call void PRPATK(int8 A)
    // line 1753
    ldloc _F
    ldfld int8 @DNDATE::RKFR
    call void ADDATK(int8 A)
    // line 1754
    ldloc _F
    ldfld valuetype T_RM @DNDATE::A
    call void RTRKIT(valuetype T_RM A)
    /* nop */
    br L_if_end_6
L_else_5:
    // line 1757
    ldloc _F
    ldfld valuetype T_RM @DNDATE::A
    call void RTRKIT(valuetype T_RM A)
L_if_end_6:
    br L_case_end_1
L_check_case_4:
    ldloc $tmpSwitchValue1
    ldc.i4 3
    bne.un L_check_case_9
    /* nop */
    br L_case_end_1
L_check_case_9:
    ldloc $tmpSwitchValue1
    ldc.i4 4
    bne.un L_check_case_10
    // line 1760
    ldloc _F
    ldflda valuetype T_RM @DNDATE::A
    ldfld bool T_RM::RMEP
    brfalse L_else_11
    // line 1762
    ldloc _F
    ldsflda valuetype T_array_37 _G::XTRFS
    ldsflda valuetype T_array_38 _G::XTSR
    ldloc _F
    ldflda valuetype T_RM @DNDATE::A
    ldfld int8 T_RM::RMFR
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldsflda valuetype T_array_38 _G::XTSF
    ldloc _F
    ldflda valuetype T_RM @DNDATE::A
    ldfld int8 T_RM::RMTO
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    stfld int8 @DNDATE::INTS
    // line 1763
    ldloc _F
    ldfld int8 @DNDATE::INTS
    ldloc _F
    ldflda valuetype T_RM @DNDATE::A
    ldfld int32 T_RM::RMCP
    call void ADDLOC(int8 A, int32 B)
    // line 1764
    ldloc _F
    ldfld int8 @DNDATE::INTS
    call void CUTATK(int8 A)
    // line 1765
    ldloc _F
    ldfld int8 @DNDATE::INTS
    call void ADDATK(int8 A)
    // line 1766
    ldloc _F
    ldfld valuetype T_RM @DNDATE::A
    call void RTRKIT(valuetype T_RM A)
    // line 1767
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldfld int8 @DNDATE::INTS
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call void MBTPAC(int32 A)
    /* nop */
    br L_if_end_12
L_else_11:
    // line 1770
    ldloc _F
    ldfld valuetype T_RM @DNDATE::A
    call void GAINIT(valuetype T_RM A)
L_if_end_12:
    br L_case_end_1
L_check_case_10:
    ldloc $tmpSwitchValue1
    ldc.i4 5
    bne.un L_check_case_13
    // line 1773
    ldloc _F
    ldfld valuetype T_RM @DNDATE::A
    call void PAWNIT(valuetype T_RM A)
    // line 1774
    ldloc _F
    ldfld valuetype T_RM @DNDATE::A
    call void GAINIT(valuetype T_RM A)
    /* nop */
    br L_case_end_1
L_check_case_13:
    ldloc $tmpSwitchValue1
    ldc.i4 6
    bne.un L_check_case_14
    // line 1777
    ldloc _F
    ldfld valuetype T_RM @DNDATE::A
    call void GAINIT(valuetype T_RM A)
    br L_case_end_1
L_check_case_14:
    ldloc $tmpSwitchValue1
    ldc.i4 7
    bne.un L_case_end_1
    // line 1780
    ldloc _F
    ldfld valuetype T_RM @DNDATE::A
    call void PAWNIT(valuetype T_RM A)
    // line 1781
    ldloc _F
    ldfld valuetype T_RM @DNDATE::A
    call void GAINIT(valuetype T_RM A)
    /* nop */
L_case_end_1:
    // line 1784
    ldsflda valuetype T_array_102 _G::LINDX
    ldsfld int8 _G::JNTK
    call instance int16& T_array_102::ldadr(int32)
    ldobj int16
    stsfld int16 _G::JNTW
    // line 1786
    ldsfld int8 _G::JNTK
    ldc.i4 1
    sub
    dup
    ldc.i4 0
    ldc.i4 16
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int8 _G::JNTK
    // line 1787
    ldsflda valuetype T_array_18 _G::OTHER
    ldsfld int32 _G::JNTM
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    stsfld int32 _G::JNTM
    /* nop */
    /* nop */

L_Epilogue:
    ret
}

// line 1792

.method static
bool UPDATE(valuetype T_RM& A)
{
    .maxstack 32

    .locals init(
        class @UPDATE _F,
        int32 $tmpSwitchValue1,
        valuetype T_RM& pinned $A)
    
    newobj instance void @UPDATE::.ctor()
    stloc _F
    
    ldarg A
    stloc $A
    
    ldloc _F
    ldarg A
    stfld valuetype T_RM* @UPDATE::A

L_Entry:
    // line 1809
    ldsfld int8 _G::JNTK
    ldc.i4 1
    add
    dup
    ldc.i4 0
    ldc.i4 16
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int8 _G::JNTK
    // line 1810
    ldsflda valuetype T_arraytkofrs _G::ENPAS
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    call void NEWRS(valuetype T_RS& A)
    // line 1811
    ldsflda valuetype T_arraytkofrs _G::CSTAT
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldsflda valuetype T_arraytkofrs _G::CSTAT
    ldsfld int8 _G::JNTK
    ldc.i4 1
    sub
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void CPYRS(valuetype T_RS& C, valuetype T_RS A)
    // line 1812
    ldsflda valuetype T_arraytkofrs _G::ALLOC
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldsflda valuetype T_arraytkofrs _G::ALLOC
    ldsfld int8 _G::JNTK
    ldc.i4 1
    sub
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void CPYRS(valuetype T_RS& C, valuetype T_RS A)
    // line 1813
    ldsflda valuetype T_array_102 _G::MBVAL
    ldsfld int8 _G::JNTK
    call instance int16& T_array_102::ldadr(int32)
    ldsflda valuetype T_array_102 _G::MBVAL
    ldsfld int8 _G::JNTK
    ldc.i4 1
    sub
    call instance int16& T_array_102::ldadr(int32)
    ldobj int16
    stobj int16
    // line 1814
    ldsflda valuetype T_array_102 _G::LINDX
    ldsfld int8 _G::JNTK
    call instance int16& T_array_102::ldadr(int32)
    ldsfld int16 _G::JNTW
    stobj int16
    // line 1815
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldfld bool T_RM::RMCA
    ldc.i4 4
    mul
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldfld bool T_RM::RMAC
    ldc.i4 2
    mul
    add
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldfld bool T_RM::RMPR
    add
    stloc $tmpSwitchValue1
    ldloc $tmpSwitchValue1
    ldc.i4 0
    bne.un L_check_case_2
    // line 1817
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldfld bool T_RM::RMEP
    brfalse L_else_3
    // line 1819
    ldloc _F
    ldflda valuetype T_RS @UPDATE::INRS
    ldsflda valuetype T_RX _G::XRSS
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldfld int8 T_RM::RMTO
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldc.i4 4
    call void SFTRS(valuetype T_RS& A, valuetype T_RS B, int32 C)
    // line 1820
    ldloc _F
    ldflda valuetype T_RS @UPDATE::IMRS
    ldsflda valuetype T_RX _G::XRSS
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldfld int8 T_RM::RMTO
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldc.i4 6
    call void SFTRS(valuetype T_RS& A, valuetype T_RS B, int32 C)
    // line 1821
    ldloc _F
    ldflda valuetype T_RS @UPDATE::INRS
    ldloc _F
    ldfld valuetype T_RS @UPDATE::INRS
    ldloc _F
    ldfld valuetype T_RS @UPDATE::IMRS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 1822
    ldloc _F
    ldflda valuetype T_RS @UPDATE::INRS
    ldloc _F
    ldfld valuetype T_RS @UPDATE::INRS
    ldsflda valuetype T_array_103 _G::TPLOC
    ldsflda valuetype T_array_19 _G::XTUMP
    ldc.i4 0
    call instance valuetype T_array_18& T_array_19::ldadr(int32)
    ldsflda valuetype T_array_18 _G::OTHER
    ldsfld int32 _G::JNTM
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 1824
    ldloc _F
    ldfld valuetype T_RS @UPDATE::INRS
    call bool NULRS(valuetype T_RS A)
    ldc.i4.0
    ceq
    brfalse L_if_end_5
    // line 1825
    ldsflda valuetype T_arraytkofrs _G::ENPAS
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldfld int8 T_RM::RMTO
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldfld int8 T_RM::RMFR
    add
    ldc.i4 2
    div
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call void SETRS(valuetype T_RS& C, int8 A)
L_if_end_5:
    // line 1827
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldobj valuetype T_RM
    call void MOVEIT(valuetype T_RM A)
    /* nop */
    br L_if_end_4
L_else_3:
    // line 1830
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldobj valuetype T_RM
    call void MOVEIT(valuetype T_RM A)
L_if_end_4:
    br L_case_end_1
L_check_case_2:
    ldloc $tmpSwitchValue1
    ldc.i4 1
    bne.un L_check_case_6
    // line 1833
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldobj valuetype T_RM
    call void PROMOT(valuetype T_RM A)
    // line 1834
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldobj valuetype T_RM
    call void MOVEIT(valuetype T_RM A)
    /* nop */
    br L_case_end_1
L_check_case_6:
    ldloc $tmpSwitchValue1
    ldc.i4 2
    bne.un L_check_case_7
    // line 1838
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldfld bool T_RM::RMOO
    brfalse L_else_8
    // line 1840
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldfld bool T_RM::RMQS
    brfalse L_else_10
    // line 1841
    ldloc _F
    ldc.i4 0
    stfld int32 @UPDATE::INTF
    br L_if_end_11
L_else_10:
    // line 1843
    ldloc _F
    ldc.i4 7
    stfld int32 @UPDATE::INTF
L_if_end_11:
    // line 1844
    ldloc _F
    ldsflda valuetype T_array_38 _G::XTSR
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldfld int8 T_RM::RMFR
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    stfld int32 @UPDATE::INTR
    // line 1845
    ldloc _F
    ldsflda valuetype T_array_37 _G::XTRFS
    ldloc _F
    ldfld int32 @UPDATE::INTR
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldloc _F
    ldfld int32 @UPDATE::INTF
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    stfld int8 @UPDATE::RKFR
    // line 1846
    ldloc _F
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldfld int8 T_RM::RMFR
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldfld int8 T_RM::RMTO
    add
    ldc.i4 2
    div
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @UPDATE::RKTO
    // line 1847
    ldsflda valuetype T_arraytkofrs _G::CSTAT
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldsflda valuetype T_arraytkofrs _G::CSTAT
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytrofrs _G::XNRS
    ldloc _F
    ldfld int32 @UPDATE::INTR
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 1850
    ldloc _F
    ldfld int8 @UPDATE::RKTO
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldfld int8 @UPDATE::RKFR
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call void ADDLOC(int8 A, int32 B)
    // line 1851
    ldloc _F
    ldfld int8 @UPDATE::RKTO
    call void ADDATK(int8 A)
    // line 1852
    ldloc _F
    ldfld int8 @UPDATE::RKFR
    call void DELATK(int8 A)
    // line 1853
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldobj valuetype T_RM
    call void MOVEIT(valuetype T_RM A)
    /* nop */
    br L_if_end_9
L_else_8:
    // line 1857
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldobj valuetype T_RM
    call void PROACS(valuetype T_RM A)
    // line 1858
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldobj valuetype T_RM
    call void MOVEIT(valuetype T_RM A)
    /* nop */
L_if_end_9:
    /* nop */
    br L_case_end_1
L_check_case_7:
    ldloc $tmpSwitchValue1
    ldc.i4 3
    bne.un L_check_case_12
    /* nop */
    br L_case_end_1
L_check_case_12:
    ldloc $tmpSwitchValue1
    ldc.i4 4
    bne.un L_check_case_13
    // line 1864
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldfld bool T_RM::RMEP
    brfalse L_else_14
    // line 1866
    ldloc _F
    ldsflda valuetype T_array_37 _G::XTRFS
    ldsflda valuetype T_array_38 _G::XTSR
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldfld int8 T_RM::RMFR
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldsflda valuetype T_array_38 _G::XTSF
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldfld int8 T_RM::RMTO
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    stfld int8 @UPDATE::INTS
    // line 1868
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldfld int8 @UPDATE::INTS
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    call void MBCAPT(int32 A)
    // line 1869
    ldloc _F
    ldfld int8 @UPDATE::INTS
    call void DELATK(int8 A)
    // line 1870
    ldloc _F
    ldfld int8 @UPDATE::INTS
    call void PRPATK(int8 A)
    // line 1871
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldobj valuetype T_RM
    call void MOVEIT(valuetype T_RM A)
    /* nop */
    br L_if_end_15
L_else_14:
    // line 1874
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldobj valuetype T_RM
    call void LOSEIT(valuetype T_RM A)
L_if_end_15:
    br L_case_end_1
L_check_case_13:
    ldloc $tmpSwitchValue1
    ldc.i4 5
    bne.un L_check_case_16
    // line 1877
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldobj valuetype T_RM
    call void PROMOT(valuetype T_RM A)
    // line 1878
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldobj valuetype T_RM
    call void LOSEIT(valuetype T_RM A)
    /* nop */
    br L_case_end_1
L_check_case_16:
    ldloc $tmpSwitchValue1
    ldc.i4 6
    bne.un L_check_case_17
    // line 1883
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldobj valuetype T_RM
    call void PROACS(valuetype T_RM A)
    // line 1884
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldobj valuetype T_RM
    call void LOSEIT(valuetype T_RM A)
    /* nop */
    br L_case_end_1
L_check_case_17:
    ldloc $tmpSwitchValue1
    ldc.i4 7
    bne.un L_case_end_1
    // line 1888
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldobj valuetype T_RM
    call void PROMOT(valuetype T_RM A)
    // line 1889
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldobj valuetype T_RM
    call void PROACS(valuetype T_RM A)
    // line 1890
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldobj valuetype T_RM
    call void LOSEIT(valuetype T_RM A)
    /* nop */
L_case_end_1:
    // line 1896
    ldsflda valuetype T_array_18 _G::OTHER
    ldsfld int32 _G::JNTM
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    stsfld int32 _G::JNTM
    // line 1897
    ldsflda valuetype T_arraytkofrs _G::GENPN
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldsflda valuetype T_array_103 _G::TPLOC
    ldsflda valuetype T_array_19 _G::XTUMP
    ldc.i4 0
    call instance valuetype T_array_18& T_array_19::ldadr(int32)
    ldsfld int32 _G::JNTM
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldobj valuetype T_RS
    call void CPYRS(valuetype T_RS& C, valuetype T_RS A)
    // line 1898
    ldsflda valuetype T_arraytkofrs _G::GENTO
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldsflda valuetype T_arraytmofrs _G::TMLOC
    ldsfld int32 _G::JNTM
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void NOTRS(valuetype T_RS& C, valuetype T_RS A)
    // line 1899
    ldloc _F
    ldflda valuetype T_RS @UPDATE::INRS
    ldsflda valuetype T_arraytkofrs _G::GENPN
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void NOTRS(valuetype T_RS& C, valuetype T_RS A)
    // line 1900
    ldsflda valuetype T_arraytkofrs _G::GENFR
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldsflda valuetype T_arraytmofrs _G::TMLOC
    ldsfld int32 _G::JNTM
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldloc _F
    ldfld valuetype T_RS @UPDATE::INRS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 1904
    ldloc _F
    ldflda valuetype T_RS @UPDATE::INRS
    ldsflda valuetype T_array_103 _G::TPLOC
    ldsflda valuetype T_array_19 _G::XTUMP
    ldc.i4 5
    call instance valuetype T_array_18& T_array_19::ldadr(int32)
    ldsfld int32 _G::JNTM
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytmofrs _G::ALATK
    ldsflda valuetype T_array_18 _G::OTHER
    ldsfld int32 _G::JNTM
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 1905
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldloc _F
    ldfld valuetype T_RS @UPDATE::INRS
    call bool NULRS(valuetype T_RS A)
    ldc.i4.0
    ceq
    stfld bool T_RM::RMCH
    // line 1906
    ldloc _F
    ldflda valuetype T_RS @UPDATE::INRS
    ldsflda valuetype T_array_103 _G::TPLOC
    ldsflda valuetype T_array_19 _G::XTUMP
    ldc.i4 5
    call instance valuetype T_array_18& T_array_19::ldadr(int32)
    ldsflda valuetype T_array_18 _G::OTHER
    ldsfld int32 _G::JNTM
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytmofrs _G::ALATK
    ldsfld int32 _G::JNTM
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 1907
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldloc _F
    ldfld valuetype T_RS @UPDATE::INRS
    call bool NULRS(valuetype T_RS A)
    ldc.i4.0
    ceq
    stfld bool T_RM::RMIL
    // line 1908
    ldloc _F
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldfld bool T_RM::RMIL
    ldc.i4.0
    ceq
    stfld bool @UPDATE::_fnvalue
    // line 1909
    ldloc _F
    ldfld valuetype T_RM* @UPDATE::A
    ldfld bool T_RM::RMIL
    ldc.i4.0
    ceq
    brfalse L_if_end_18
    // line 1910
    ldsflda valuetype T_array_105 _G::MVSEL
    ldsfld int8 _G::JNTK
    ldc.i4 1
    sub
    call instance int32& T_array_105::ldadr(int32)
    ldsflda valuetype T_array_105 _G::MVSEL
    ldsfld int8 _G::JNTK
    ldc.i4 1
    sub
    call instance int32& T_array_105::ldadr(int32)
    ldobj int32
    ldc.i4 1
    add
    stobj int32
L_if_end_18:
    // line 1913
    ldsflda valuetype T_array_105 _G::SRCHM
    ldsfld int8 _G::JNTK
    call instance int32& T_array_105::ldadr(int32)
    ldc.i4 1
    stobj int32
    // line 1914
    ldsfld int32 _G::NODES
    ldc.i4 1
    add
    stsfld int32 _G::NODES
    /* nop */
    /* nop */

L_Epilogue:
    ldloc _F
    ldfld bool @UPDATE::_fnvalue
    ret
}

// line 1919

.method static
void GENONE(int8 A, int8 B)
{
    .maxstack 32

    .locals init(class @GENONE _F)
    
    newobj instance void @GENONE::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld int8 @GENONE::A
    
    ldloc _F
    ldarg B
    stfld int8 @GENONE::B

L_Entry:
    // line 1929
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldloc _F
    ldfld int8 @GENONE::A
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_RM::RMFR
    // line 1930
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldloc _F
    ldfld int8 @GENONE::B
    stfld int8 T_RM::RMTO
    // line 1931
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldfld int8 @GENONE::B
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    stfld int32 T_RM::RMCP
    // line 1932
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldfld int8 @GENONE::B
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    ldc.i4 12
    ceq
    ldc.i4.0
    ceq
    stfld bool T_RM::RMCA
    // line 1933
    ldloc _F
    ldflda valuetype T_RS @GENONE::INRS
    ldsflda valuetype T_RX _G::XRSS
    ldloc _F
    ldfld int8 @GENONE::A
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_RX _G::XRSS
    ldloc _F
    ldfld int8 @GENONE::B
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 1934
    ldloc _F
    ldflda valuetype T_RS @GENONE::INRS
    ldloc _F
    ldfld valuetype T_RS @GENONE::INRS
    ldsflda valuetype T_arraytkofrs _G::CSTAT
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 1935
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldloc _F
    ldfld valuetype T_RS @GENONE::INRS
    call bool NULRS(valuetype T_RS A)
    ldc.i4.0
    ceq
    stfld bool T_RM::RMAC
    // line 1936
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldc.i4 0 // (false)
    stfld bool T_RM::RMCH
    // line 1937
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldc.i4 0 // (false)
    stfld bool T_RM::RMMT
    // line 1938
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldc.i4 0 // (false)
    stfld bool T_RM::RMIL
    // line 1939
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldc.i4 0 // (false)
    stfld bool T_RM::RMSU
    // line 1940
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldc.i4 0 // (false)
    stfld bool T_RM::RMPR
    // line 1941
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldc.i4 0 // (false)
    stfld bool T_RM::RMOO
    // line 1942
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldc.i4 0 // (false)
    stfld bool T_RM::RMEP
    /* nop */
    // line 1944
    ldsflda valuetype T_RE _G::VALUE
    ldsfld int16 _G::JNTW
    call instance int16& T_RE::ldadr(int32)
    ldc.i4 0
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int16
    // line 1945
    ldsfld int16 _G::JNTW
    ldc.i4 500
    clt
    brfalse L_if_end_1
    // line 1946
    ldsfld int16 _G::JNTW
    ldc.i4 1
    add
    dup
    ldc.i4 1
    ldc.i4 500
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::JNTW
L_if_end_1:
    /* nop */

L_Epilogue:
    ret
}

// line 1950

.method static
void PWNPRO()
{
    .maxstack 32

    .locals init(
        class @PWNPRO _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3)
    
    newobj instance void @PWNPRO::.ctor()
    stloc _F

L_Entry:
    // line 1956
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldc.i4 1 // (true)
    stfld bool T_RM::RMPR
    // line 1957
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldc.i4 0
    stfld int32 T_RM::RMPP
    // line 1958
    ldc.i4 3
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 0
    ldc.i4 3
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @PWNPRO::INTG
L_for_loop_1:
    // line 1960
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldobj valuetype T_RM
    stobj valuetype T_RM
    // line 1961
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldloc _F
    ldfld int32 @PWNPRO::INTG
    stfld int32 T_RM::RMPP
    // line 1962
    ldsfld int16 _G::JNTW
    ldc.i4 1
    add
    dup
    ldc.i4 1
    ldc.i4 500
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::JNTW
    /* nop */
    ldloc _F
    ldfld int32 @PWNPRO::INTG
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 3
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @PWNPRO::INTG
    br L_for_loop_1
L_for_end_2:
    pop
    /* nop */

L_Epilogue:
    ret
}

// line 1967

.method static
void GENPWN(valuetype T_RS A, valuetype T_RS B)
{
    .maxstack 32

    .locals init(class @GENPWN _F)
    
    newobj instance void @GENPWN::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RS @GENPWN::A
    
    ldloc _F
    ldarg B
    stfld valuetype T_RS @GENPWN::B

L_Entry:
    // line 1976
    ldsfld int32 _G::JNTM
    ldc.i4 0
    ceq
    brfalse L_else_1
    // line 1978
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::A
    ldc.i4 5
    call void SFTRS(valuetype T_RS& A, valuetype T_RS B, int32 C)
    // line 1979
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldsflda valuetype T_array_103 _G::TPLOC
    ldc.i4 12
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldobj valuetype T_RS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::INRS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 1980
    ldloc _F
    ldflda valuetype T_RS @GENPWN::IMRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::INRS
    call void CPYRS(valuetype T_RS& C, valuetype T_RS A)
    // line 1981
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::B
    ldloc _F
    ldfld valuetype T_RS @GENPWN::INRS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 1982
    br L_while_test_4
L_while_3:
    // line 1984
    ldsflda valuetype T_array_9 _G::XTLS
    ldsflda valuetype T_array_3 _G::XTSL
    ldloc _F
    ldfld int8 @GENPWN::INTS
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 5
    call instance int8& T_array_11::ldadr(int32)
    ldobj int8
    sub
    call instance int8& T_array_9::ldadr(int32)
    ldobj int8
    ldloc _F
    ldfld int8 @GENPWN::INTS
    call void GENONE(int8 A, int8 B)
    // line 1986
    ldloc _F
    ldfld int8 @GENPWN::INTS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 7
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 0
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    clt
    ldc.i4.0
    ceq
    brfalse L_if_end_5
    // line 1987
    call void PWNPRO()
L_if_end_5:
    /* nop */
L_while_test_4:
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldflda int8 @GENPWN::INTS
    call bool NXTTS(valuetype T_RS& A, int8& B)
    brtrue L_while_3
    // line 1989
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::IMRS
    ldsflda valuetype T_arraytrofrs _G::XRRS
    ldc.i4 2
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 1990
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::INRS
    ldc.i4 5
    call void SFTRS(valuetype T_RS& A, valuetype T_RS B, int32 C)
    // line 1991
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::INRS
    ldsflda valuetype T_array_103 _G::TPLOC
    ldc.i4 12
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 1992
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::B
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 1993
    br L_while_test_7
L_while_6:
    // line 1995
    ldsflda valuetype T_array_9 _G::XTLS
    ldsflda valuetype T_array_3 _G::XTSL
    ldloc _F
    ldfld int8 @GENPWN::INTS
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    ldc.i4 2
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 5
    call instance int8& T_array_11::ldadr(int32)
    ldobj int8
    mul
    sub
    call instance int8& T_array_9::ldadr(int32)
    ldobj int8
    ldloc _F
    ldfld int8 @GENPWN::INTS
    call void GENONE(int8 A, int8 B)
    // line 1997
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldc.i4 1 // (true)
    stfld bool T_RM::RMEP
    /* nop */
L_while_test_7:
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldflda int8 @GENPWN::INTS
    call bool NXTTS(valuetype T_RS& A, int8& B)
    brtrue L_while_6
    // line 1999
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::A
    ldc.i4 0
    call void SFTRS(valuetype T_RS& A, valuetype T_RS B, int32 C)
    // line 2000
    ldloc _F
    ldflda valuetype T_RS @GENPWN::IMRS
    ldsflda valuetype T_arraytmofrs _G::TMLOC
    ldsflda valuetype T_array_18 _G::OTHER
    ldsfld int32 _G::JNTM
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytkofrs _G::ENPAS
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2002
    ldloc _F
    ldflda valuetype T_RS @GENPWN::IMRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::IMRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::B
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2003
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::IMRS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2004
    br L_while_test_9
L_while_8:
    // line 2006
    ldsflda valuetype T_array_9 _G::XTLS
    ldsflda valuetype T_array_3 _G::XTSL
    ldloc _F
    ldfld int8 @GENPWN::INTS
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 0
    call instance int8& T_array_11::ldadr(int32)
    ldobj int8
    sub
    call instance int8& T_array_9::ldadr(int32)
    ldobj int8
    ldloc _F
    ldfld int8 @GENPWN::INTS
    call void GENONE(int8 A, int8 B)
    // line 2008
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldc.i4 1 // (true)
    stfld bool T_RM::RMCA
    // line 2009
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldsflda valuetype T_arraytkofrs _G::ENPAS
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldloc _F
    ldfld int8 @GENPWN::INTS
    call bool INRSTB(valuetype T_RS A, int8 B)
    stfld bool T_RM::RMEP
    // line 2011
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldfld bool T_RM::RMEP
    brfalse L_if_end_10
    // line 2012
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldc.i4 6
    stfld int32 T_RM::RMCP
L_if_end_10:
    // line 2013
    ldloc _F
    ldfld int8 @GENPWN::INTS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 7
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 0
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    clt
    ldc.i4.0
    ceq
    brfalse L_if_end_11
    // line 2014
    call void PWNPRO()
L_if_end_11:
    /* nop */
L_while_test_9:
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldflda int8 @GENPWN::INTS
    call bool NXTTS(valuetype T_RS& A, int8& B)
    brtrue L_while_8
    // line 2016
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::A
    ldc.i4 1
    call void SFTRS(valuetype T_RS& A, valuetype T_RS B, int32 C)
    // line 2017
    ldloc _F
    ldflda valuetype T_RS @GENPWN::IMRS
    ldsflda valuetype T_arraytmofrs _G::TMLOC
    ldsflda valuetype T_array_18 _G::OTHER
    ldsfld int32 _G::JNTM
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytkofrs _G::ENPAS
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2019
    ldloc _F
    ldflda valuetype T_RS @GENPWN::IMRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::IMRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::B
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2020
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::IMRS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2021
    br L_while_test_13
L_while_12:
    // line 2023
    ldsflda valuetype T_array_9 _G::XTLS
    ldsflda valuetype T_array_3 _G::XTSL
    ldloc _F
    ldfld int8 @GENPWN::INTS
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 1
    call instance int8& T_array_11::ldadr(int32)
    ldobj int8
    sub
    call instance int8& T_array_9::ldadr(int32)
    ldobj int8
    ldloc _F
    ldfld int8 @GENPWN::INTS
    call void GENONE(int8 A, int8 B)
    // line 2025
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldc.i4 1 // (true)
    stfld bool T_RM::RMCA
    // line 2026
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldsflda valuetype T_arraytkofrs _G::ENPAS
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldloc _F
    ldfld int8 @GENPWN::INTS
    call bool INRSTB(valuetype T_RS A, int8 B)
    stfld bool T_RM::RMEP
    // line 2028
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldfld bool T_RM::RMEP
    brfalse L_if_end_14
    // line 2029
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldc.i4 6
    stfld int32 T_RM::RMCP
L_if_end_14:
    // line 2030
    ldloc _F
    ldfld int8 @GENPWN::INTS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 7
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 0
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    clt
    ldc.i4.0
    ceq
    brfalse L_if_end_15
    // line 2031
    call void PWNPRO()
L_if_end_15:
    /* nop */
L_while_test_13:
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldflda int8 @GENPWN::INTS
    call bool NXTTS(valuetype T_RS& A, int8& B)
    brtrue L_while_12
    /* nop */
    br L_if_end_2
L_else_1:
    // line 2036
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::A
    ldc.i4 7
    call void SFTRS(valuetype T_RS& A, valuetype T_RS B, int32 C)
    // line 2037
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldsflda valuetype T_array_103 _G::TPLOC
    ldc.i4 12
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldobj valuetype T_RS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::INRS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2038
    ldloc _F
    ldflda valuetype T_RS @GENPWN::IMRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::INRS
    call void CPYRS(valuetype T_RS& C, valuetype T_RS A)
    // line 2039
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::B
    ldloc _F
    ldfld valuetype T_RS @GENPWN::INRS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2040
    br L_while_test_17
L_while_16:
    // line 2042
    ldsflda valuetype T_array_9 _G::XTLS
    ldsflda valuetype T_array_3 _G::XTSL
    ldloc _F
    ldfld int8 @GENPWN::INTS
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 7
    call instance int8& T_array_11::ldadr(int32)
    ldobj int8
    sub
    call instance int8& T_array_9::ldadr(int32)
    ldobj int8
    ldloc _F
    ldfld int8 @GENPWN::INTS
    call void GENONE(int8 A, int8 B)
    // line 2044
    ldloc _F
    ldfld int8 @GENPWN::INTS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 0
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 7
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    cgt
    ldc.i4.0
    ceq
    brfalse L_if_end_18
    // line 2045
    call void PWNPRO()
L_if_end_18:
    /* nop */
L_while_test_17:
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldflda int8 @GENPWN::INTS
    call bool NXTTS(valuetype T_RS& A, int8& B)
    brtrue L_while_16
    // line 2047
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::IMRS
    ldsflda valuetype T_arraytrofrs _G::XRRS
    ldc.i4 5
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2048
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::INRS
    ldc.i4 7
    call void SFTRS(valuetype T_RS& A, valuetype T_RS B, int32 C)
    // line 2049
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::INRS
    ldsflda valuetype T_array_103 _G::TPLOC
    ldc.i4 12
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2050
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::B
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2051
    br L_while_test_20
L_while_19:
    // line 2053
    ldsflda valuetype T_array_9 _G::XTLS
    ldsflda valuetype T_array_3 _G::XTSL
    ldloc _F
    ldfld int8 @GENPWN::INTS
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    ldc.i4 2
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 7
    call instance int8& T_array_11::ldadr(int32)
    ldobj int8
    mul
    sub
    call instance int8& T_array_9::ldadr(int32)
    ldobj int8
    ldloc _F
    ldfld int8 @GENPWN::INTS
    call void GENONE(int8 A, int8 B)
    // line 2055
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldc.i4 1 // (true)
    stfld bool T_RM::RMEP
    /* nop */
L_while_test_20:
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldflda int8 @GENPWN::INTS
    call bool NXTTS(valuetype T_RS& A, int8& B)
    brtrue L_while_19
    // line 2057
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::A
    ldc.i4 2
    call void SFTRS(valuetype T_RS& A, valuetype T_RS B, int32 C)
    // line 2058
    ldloc _F
    ldflda valuetype T_RS @GENPWN::IMRS
    ldsflda valuetype T_arraytmofrs _G::TMLOC
    ldsflda valuetype T_array_18 _G::OTHER
    ldsfld int32 _G::JNTM
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytkofrs _G::ENPAS
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2060
    ldloc _F
    ldflda valuetype T_RS @GENPWN::IMRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::IMRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::B
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2061
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::IMRS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2062
    br L_while_test_22
L_while_21:
    // line 2064
    ldsflda valuetype T_array_9 _G::XTLS
    ldsflda valuetype T_array_3 _G::XTSL
    ldloc _F
    ldfld int8 @GENPWN::INTS
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 2
    call instance int8& T_array_11::ldadr(int32)
    ldobj int8
    sub
    call instance int8& T_array_9::ldadr(int32)
    ldobj int8
    ldloc _F
    ldfld int8 @GENPWN::INTS
    call void GENONE(int8 A, int8 B)
    // line 2066
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldc.i4 1 // (true)
    stfld bool T_RM::RMCA
    // line 2067
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldsflda valuetype T_arraytkofrs _G::ENPAS
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldloc _F
    ldfld int8 @GENPWN::INTS
    call bool INRSTB(valuetype T_RS A, int8 B)
    stfld bool T_RM::RMEP
    // line 2069
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldfld bool T_RM::RMEP
    brfalse L_if_end_23
    // line 2070
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldc.i4 0
    stfld int32 T_RM::RMCP
L_if_end_23:
    // line 2071
    ldloc _F
    ldfld int8 @GENPWN::INTS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 0
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 7
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    cgt
    ldc.i4.0
    ceq
    brfalse L_if_end_24
    // line 2072
    call void PWNPRO()
L_if_end_24:
    /* nop */
L_while_test_22:
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldflda int8 @GENPWN::INTS
    call bool NXTTS(valuetype T_RS& A, int8& B)
    brtrue L_while_21
    // line 2074
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::A
    ldc.i4 3
    call void SFTRS(valuetype T_RS& A, valuetype T_RS B, int32 C)
    // line 2075
    ldloc _F
    ldflda valuetype T_RS @GENPWN::IMRS
    ldsflda valuetype T_arraytmofrs _G::TMLOC
    ldsflda valuetype T_array_18 _G::OTHER
    ldsfld int32 _G::JNTM
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytkofrs _G::ENPAS
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2077
    ldloc _F
    ldflda valuetype T_RS @GENPWN::IMRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::IMRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::B
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2078
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldfld valuetype T_RS @GENPWN::IMRS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2079
    br L_while_test_26
L_while_25:
    // line 2081
    ldsflda valuetype T_array_9 _G::XTLS
    ldsflda valuetype T_array_3 _G::XTSL
    ldloc _F
    ldfld int8 @GENPWN::INTS
    call instance int8& T_array_3::ldadr(int32)
    ldobj int8
    ldsflda valuetype T_array_11 _G::XTED
    ldc.i4 3
    call instance int8& T_array_11::ldadr(int32)
    ldobj int8
    sub
    call instance int8& T_array_9::ldadr(int32)
    ldobj int8
    ldloc _F
    ldfld int8 @GENPWN::INTS
    call void GENONE(int8 A, int8 B)
    // line 2083
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldc.i4 1 // (true)
    stfld bool T_RM::RMCA
    // line 2084
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldsflda valuetype T_arraytkofrs _G::ENPAS
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldloc _F
    ldfld int8 @GENPWN::INTS
    call bool INRSTB(valuetype T_RS A, int8 B)
    stfld bool T_RM::RMEP
    // line 2086
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldfld bool T_RM::RMEP
    brfalse L_if_end_27
    // line 2087
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldc.i4 0
    stfld int32 T_RM::RMCP
L_if_end_27:
    // line 2088
    ldloc _F
    ldfld int8 @GENPWN::INTS
    ldsflda valuetype T_array_37 _G::XTRFS
    ldc.i4 0
    call instance valuetype T_array_36& T_array_37::ldadr(int32)
    ldc.i4 7
    call instance int8& T_array_36::ldadr(int32)
    ldobj int8
    cgt
    ldc.i4.0
    ceq
    brfalse L_if_end_28
    // line 2089
    call void PWNPRO()
L_if_end_28:
    /* nop */
L_while_test_26:
    ldloc _F
    ldflda valuetype T_RS @GENPWN::INRS
    ldloc _F
    ldflda int8 @GENPWN::INTS
    call bool NXTTS(valuetype T_RS& A, int8& B)
    brtrue L_while_25
    /* nop */
L_if_end_2:
    /* nop */

L_Epilogue:
    ret
}

// line 2095

.method static
void GENFSL(valuetype T_RS A)
{
    .maxstack 32

    .locals init(class @GENFSL _F)
    
    newobj instance void @GENFSL::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RS @GENFSL::A

L_Entry:
    // line 2107
    ldloc _F
    ldflda valuetype T_RS @GENFSL::INRS
    ldloc _F
    ldfld valuetype T_RS @GENFSL::A
    ldsflda valuetype T_arraytkofrs _G::GENFR
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2108
    ldloc _F
    ldflda valuetype T_RS @GENFSL::IMRS
    ldloc _F
    ldfld valuetype T_RS @GENFSL::A
    call void NOTRS(valuetype T_RS& C, valuetype T_RS A)
    // line 2109
    ldsflda valuetype T_arraytkofrs _G::GENFR
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldsflda valuetype T_arraytkofrs _G::GENFR
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldloc _F
    ldfld valuetype T_RS @GENFSL::IMRS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2110
    ldloc _F
    ldflda valuetype T_RS @GENFSL::IPRS
    ldloc _F
    ldfld valuetype T_RS @GENFSL::A
    ldsflda valuetype T_arraytkofrs _G::GENPN
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2111
    ldsflda valuetype T_arraytkofrs _G::GENPN
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldsflda valuetype T_arraytkofrs _G::GENPN
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldloc _F
    ldfld valuetype T_RS @GENFSL::IMRS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2112
    br L_while_test_2
L_while_1:
    // line 2114
    ldloc _F
    ldflda valuetype T_RS @GENFSL::IMRS
    ldsflda valuetype T_RX _G::ATKFR
    ldloc _F
    ldfld int8 @GENFSL::INTS
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytkofrs _G::GENTO
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2117
    br L_while_test_4
L_while_3:
    // line 2118
    ldloc _F
    ldfld int8 @GENFSL::INTS
    ldloc _F
    ldfld int8 @GENFSL::IMTS
    call void GENONE(int8 A, int8 B)
L_while_test_4:
    ldloc _F
    ldflda valuetype T_RS @GENFSL::IMRS
    ldloc _F
    ldflda int8 @GENFSL::IMTS
    call bool NXTTS(valuetype T_RS& A, int8& B)
    brtrue L_while_3
    /* nop */
L_while_test_2:
    ldloc _F
    ldflda valuetype T_RS @GENFSL::INRS
    ldloc _F
    ldflda int8 @GENFSL::INTS
    call bool NXTTS(valuetype T_RS& A, int8& B)
    brtrue L_while_1
    // line 2120
    ldloc _F
    ldfld valuetype T_RS @GENFSL::IPRS
    ldsflda valuetype T_arraytkofrs _G::GENTO
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void GENPWN(valuetype T_RS A, valuetype T_RS B)
    /* nop */

L_Epilogue:
    ret
}

// line 2124

.method static
void GENTSL(valuetype T_RS A)
{
    .maxstack 32

    .locals init(class @GENTSL _F)
    
    newobj instance void @GENTSL::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RS @GENTSL::A

L_Entry:
    // line 2136
    ldloc _F
    ldflda valuetype T_RS @GENTSL::INRS
    ldloc _F
    ldfld valuetype T_RS @GENTSL::A
    ldsflda valuetype T_arraytkofrs _G::GENTO
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2137
    ldloc _F
    ldflda valuetype T_RS @GENTSL::IMRS
    ldloc _F
    ldfld valuetype T_RS @GENTSL::A
    call void NOTRS(valuetype T_RS& C, valuetype T_RS A)
    // line 2138
    ldsflda valuetype T_arraytkofrs _G::GENTO
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldsflda valuetype T_arraytkofrs _G::GENTO
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldloc _F
    ldfld valuetype T_RS @GENTSL::IMRS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2139
    ldloc _F
    ldflda valuetype T_RS @GENTSL::IPRS
    ldloc _F
    ldfld valuetype T_RS @GENTSL::INRS
    call void CPYRS(valuetype T_RS& C, valuetype T_RS A)
    // line 2140
    br L_while_test_2
L_while_1:
    // line 2142
    ldloc _F
    ldflda valuetype T_RS @GENTSL::IMRS
    ldsflda valuetype T_RX _G::ATKTO
    ldloc _F
    ldfld int8 @GENTSL::INTS
    call instance valuetype T_RS& T_RX::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytkofrs _G::GENFR
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2144
    br L_while_test_4
L_while_3:
    // line 2145
    ldloc _F
    ldfld int8 @GENTSL::IMTS
    ldloc _F
    ldfld int8 @GENTSL::INTS
    call void GENONE(int8 A, int8 B)
L_while_test_4:
    ldloc _F
    ldflda valuetype T_RS @GENTSL::IMRS
    ldloc _F
    ldflda int8 @GENTSL::IMTS
    call bool NXTTS(valuetype T_RS& A, int8& B)
    brtrue L_while_3
    /* nop */
L_while_test_2:
    ldloc _F
    ldflda valuetype T_RS @GENTSL::INRS
    ldloc _F
    ldflda int8 @GENTSL::INTS
    call bool NXTTS(valuetype T_RS& A, int8& B)
    brtrue L_while_1
    // line 2147
    ldsflda valuetype T_arraytkofrs _G::GENPN
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldloc _F
    ldfld valuetype T_RS @GENTSL::IPRS
    call void GENPWN(valuetype T_RS A, valuetype T_RS B)
    /* nop */

L_Epilogue:
    ret
}

// line 2151

.method static
void GENCAP()
{
    .maxstack 32

    .locals init(class @GENCAP _F)
    
    newobj instance void @GENCAP::.ctor()
    stloc _F

L_Entry:
    // line 2157
    ldloc _F
    ldflda valuetype T_RS @GENCAP::INRS
    ldsflda valuetype T_arraytkofrs _G::ENPAS
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytmofrs _G::TMLOC
    ldsflda valuetype T_array_18 _G::OTHER
    ldsfld int32 _G::JNTM
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void IORRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2158
    ldloc _F
    ldfld valuetype T_RS @GENCAP::INRS
    call void GENTSL(valuetype T_RS A)
    /* nop */

L_Epilogue:
    ret
}

// line 2163

.method static
void GENCAS()
{
    .maxstack 32

    .locals init(
        class @GENCAS _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3)
    
    newobj instance void @GENCAS::.ctor()
    stloc _F

L_Entry:
    // line 2171
    ldsflda valuetype T_array_18 _G::XTMQ
    ldsfld int32 _G::JNTM
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    ldc.i4.1
    add
    stloc $tmpEndValue1
    ldsflda valuetype T_array_18 _G::XTMQ
    ldsfld int32 _G::JNTM
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 0
    ldc.i4 3
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @GENCAS::INTQ
L_for_loop_1:
    // line 2172
    ldsflda valuetype T_arraytkofrs _G::CSTAT
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_array_47 _G::XTQS
    ldloc _F
    ldfld int32 @GENCAS::INTQ
    call instance int8& T_array_47::ldadr(int32)
    ldobj int8
    call bool INRSTB(valuetype T_RS A, int8 B)
    brfalse L_if_end_3
    // line 2175
    ldloc _F
    ldflda valuetype T_RS @GENCAS::INRS
    ldsflda valuetype T_arraytqofrs _G::XRQSO
    ldloc _F
    ldfld int32 @GENCAS::INTQ
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytkofrs _G::ALLOC
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2177
    ldloc _F
    ldflda valuetype T_RS @GENCAS::IMRS
    ldsflda valuetype T_arraytqofrs _G::XRQSA
    ldloc _F
    ldfld int32 @GENCAS::INTQ
    call instance valuetype T_RS& T_arraytqofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytmofrs _G::ALATK
    ldsflda valuetype T_array_18 _G::OTHER
    ldsfld int32 _G::JNTM
    call instance int32& T_array_18::ldadr(int32)
    ldobj int32
    call instance valuetype T_RS& T_arraytmofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void ANDRS(valuetype T_RS& C, valuetype T_RS A, valuetype T_RS B)
    // line 2179
    ldloc _F
    ldfld valuetype T_RS @GENCAS::INRS
    call bool NULRS(valuetype T_RS A)
    dup
    brfalse L_AND_shortcut_4
    pop
    ldloc _F
    ldfld valuetype T_RS @GENCAS::IMRS
    call bool NULRS(valuetype T_RS A)
L_AND_shortcut_4:
    brfalse L_if_end_5
    // line 2183
    ldsflda valuetype T_RF _G::MOVES
    ldsfld int16 _G::JNTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldsflda valuetype T_array_45 _G::XRQM
    ldloc _F
    ldfld int32 @GENCAS::INTQ
    call instance valuetype T_RM& T_array_45::ldadr(int32)
    ldobj valuetype T_RM
    stobj valuetype T_RM
    // line 2184
    ldsflda valuetype T_RE _G::VALUE
    ldsfld int16 _G::JNTW
    call instance int16& T_RE::ldadr(int32)
    ldc.i4 0
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int16
    // line 2185
    ldsfld int16 _G::JNTW
    ldc.i4 1
    add
    dup
    ldc.i4 1
    ldc.i4 500
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::JNTW
    /* nop */
L_if_end_5:
    /* nop */
L_if_end_3:
    ldloc _F
    ldfld int32 @GENCAS::INTQ
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 3
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @GENCAS::INTQ
    br L_for_loop_1
L_for_end_2:
    pop
    /* nop */

L_Epilogue:
    ret
}

// line 2191

.method static
void GENALL()
{
    .maxstack 32

    .locals init(class @GENALL _F)
    
    newobj instance void @GENALL::.ctor()
    stloc _F

L_Entry:
    // line 2194
    ldsflda valuetype T_arraytkofrs _G::ALLOC
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void GENFSL(valuetype T_RS A)
    // line 2195
    call void GENCAS()
    /* nop */

L_Epilogue:
    ret
}

// line 2199

.method static
void LSTMOV()
{
    .maxstack 32

    .locals init(
        class @LSTMOV _F,
        int16 $tmpEndValue1,
        int16 $tmpIndex2,
        int16 $tmpIndex3)
    
    newobj instance void @LSTMOV::.ctor()
    stloc _F

L_Entry:
    // line 2205
    call void CREATE()
    // line 2206
    call void GENALL()
    // line 2207
    ldsfld int16 _G::JNTW
    ldc.i4 1
    sub
    stloc $tmpEndValue1
    ldc.i4 1
    ldc.i4 1
    add
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 1
    ldc.i4 500
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int16 @LSTMOV::INTW
L_for_loop_1:
    // line 2209
    ldsflda valuetype T_RF _G::MOVES
    ldloc _F
    ldfld int16 @LSTMOV::INTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    call bool UPDATE(valuetype T_RM& A)
    brfalse L_if_end_3
    /* nop */
L_if_end_3:
    // line 2210
    ldsflda valuetype T_RF _G::MOVES
    ldloc _F
    ldfld int16 @LSTMOV::INTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldobj valuetype T_RM
    call void DNDATE(valuetype T_RM A)
    /* nop */
    ldloc _F
    ldfld int16 @LSTMOV::INTW
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 1
    ldc.i4 500
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int16 @LSTMOV::INTW
    br L_for_loop_1
L_for_end_2:
    pop
    /* nop */

L_Epilogue:
    ret
}

// line 2215

.method static
void THEMOV(valuetype T_RM A)
{
    .maxstack 32

    .locals init(
        class @THEMOV _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        valuetype T_SQ $tmpSetLiteral3,
        valuetype T_SQ $tmpSetLiteral4,
        int32 $tmpIndex5,
        int8 $tmpEndValue6,
        int8 $tmpIndex7,
        int8 $tmpIndex8)
    
    newobj instance void @THEMOV::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RM @THEMOV::A

L_Entry:
    // line 2225
    ldloc _F
    ldfld valuetype T_RM @THEMOV::A
    stsfld valuetype T_RM _G::LSTMV
    // line 2226
    ldloc _F
    ldloc _F
    ldflda valuetype T_RM @THEMOV::A
    call bool UPDATE(valuetype T_RM& A)
    stfld bool @THEMOV::INTB
    // line 2230
    ldsflda valuetype T_RB _G::BOARD
    ldsfld int32 _G::JNTM
    stfld int32 T_RB::RBTM
    // line 2231
    ldloc _F
    ldflda valuetype T_RS @THEMOV::INRS
    ldsflda valuetype T_arraytkofrs _G::ENPAS
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    call void CPYRS(valuetype T_RS& C, valuetype T_RS A)
    // line 2232
    ldloc _F
    ldflda valuetype T_RS @THEMOV::INRS
    ldloc _F
    ldflda int8 @THEMOV::INTS
    call bool NXTTS(valuetype T_RS& A, int8& B)
    brfalse L_else_1
    // line 2233
    ldsflda valuetype T_RB _G::BOARD
    ldloc _F
    ldfld int8 @THEMOV::INTS
    stfld int8 T_RB::RBTS
    br L_if_end_2
L_else_1:
    // line 2235
    ldsflda valuetype T_RB _G::BOARD
    ldc.i4 -1
    dup
    ldc.i4 -1
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_RB::RBTS
L_if_end_2:
    // line 2236
    ldsfld int32 _G::JNTM
    ldc.i4 1
    ceq
    brfalse L_if_end_3
    // line 2237
    ldsflda valuetype T_RB _G::BOARD
    ldsflda valuetype T_RB _G::BOARD
    ldfld int32 T_RB::RBTI
    ldc.i4 1
    add
    stfld int32 T_RB::RBTI
L_if_end_3:
    // line 2238
    ldc.i4 3
    stloc $tmpEndValue1
    ldc.i4 0
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_5
    dup
    ldc.i4 0
    ldc.i4 3
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @THEMOV::INTQ
L_for_loop_4:
    // line 2239
    ldsflda valuetype T_arraytkofrs _G::CSTAT
    ldsfld int8 _G::JNTK
    call instance valuetype T_RS& T_arraytkofrs::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_array_47 _G::XTQS
    ldloc _F
    ldfld int32 @THEMOV::INTQ
    call instance int8& T_array_47::ldadr(int32)
    ldobj int8
    call bool INRSTB(valuetype T_RS A, int8 B)
    brfalse L_else_6
    // line 2240
    ldloca $tmpSetLiteral3
    call instance void T_SQ::clear()
    ldloca $tmpSetLiteral3
    ldloc _F
    ldfld int32 @THEMOV::INTQ
    call instance void T_SQ::addValue(int32)
    ldsflda valuetype T_RB _G::BOARD
    ldsflda valuetype T_RB _G::BOARD
    ldfld valuetype T_SQ T_RB::RBSQ
    call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_SQ s)
    ldloc $tmpSetLiteral3
    call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_SQ s)
    call valuetype T_set_5 _SetUnion(valuetype T_set_5 a, valuetype T_set_5 b)
    dup
    ldc.i4 0
    ldc.i4 3
    call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
    call valuetype T_SQ _SetCastTo_T_SQ(valuetype T_set_5 s)
    stfld valuetype T_SQ T_RB::RBSQ
    br L_if_end_7
L_else_6:
    // line 2242
    ldloca $tmpSetLiteral4
    call instance void T_SQ::clear()
    ldloca $tmpSetLiteral4
    ldloc _F
    ldfld int32 @THEMOV::INTQ
    call instance void T_SQ::addValue(int32)
    ldsflda valuetype T_RB _G::BOARD
    ldsflda valuetype T_RB _G::BOARD
    ldfld valuetype T_SQ T_RB::RBSQ
    call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_SQ s)
    ldloc $tmpSetLiteral4
    call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_SQ s)
    call valuetype T_set_5 _SetDifference(valuetype T_set_5 a, valuetype T_set_5 b)
    dup
    ldc.i4 0
    ldc.i4 3
    call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
    call valuetype T_SQ _SetCastTo_T_SQ(valuetype T_set_5 s)
    stfld valuetype T_SQ T_RB::RBSQ
L_if_end_7:
    ldloc _F
    ldfld int32 @THEMOV::INTQ
    dup
    ldloc $tmpEndValue1
    beq L_for_end_5
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 3
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex5
    ldloc _F
    ldloc $tmpIndex5
    stfld int32 @THEMOV::INTQ
    br L_for_loop_4
L_for_end_5:
    pop
    // line 2243
    ldc.i4 63
    stloc $tmpEndValue6
    ldc.i4 0
    dup
    ldloc $tmpEndValue6
    bgt L_for_end_9
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex7
    ldloc _F
    ldloc $tmpIndex7
    stfld int8 @THEMOV::INTS
L_for_loop_8:
    // line 2244
    ldsflda valuetype T_RB _G::BOARD
    ldflda valuetype T_array_38 T_RB::RBIS
    ldloc _F
    ldfld int8 @THEMOV::INTS
    call instance int32& T_array_38::ldadr(int32)
    ldsflda valuetype T_array_38 _G::MBORD
    ldloc _F
    ldfld int8 @THEMOV::INTS
    call instance int32& T_array_38::ldadr(int32)
    ldobj int32
    stobj int32
    ldloc _F
    ldfld int8 @THEMOV::INTS
    dup
    ldloc $tmpEndValue6
    beq L_for_end_9
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex8
    ldloc _F
    ldloc $tmpIndex8
    stfld int8 @THEMOV::INTS
    br L_for_loop_8
L_for_end_9:
    pop
    /* nop */
    /* nop */

L_Epilogue:
    ret
}

// line 2249

.method static
void EVALU8()
{
    .maxstack 32

    .locals init(class @EVALU8 _F)
    
    newobj instance void @EVALU8::.ctor()
    stloc _F

L_Entry:
    // line 2357
    ldsflda valuetype T_array_26 _G::XTMV
    ldsfld int32 _G::JNTM
    call instance int16& T_array_26::ldadr(int32)
    ldobj int16
    ldsflda valuetype T_array_102 _G::MBVAL
    ldsfld int8 _G::JNTK
    call instance int16& T_array_102::ldadr(int32)
    ldobj int16
    add
    ldsfld int16 _G::MAXPS
    add
    ldsflda valuetype T_array_109 _G::BSTVL
    ldsfld int8 _G::JNTK
    ldc.i4 2
    sub
    call instance int16& T_array_109::ldadr(int32)
    ldobj int16
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_1
    // line 2359
    ldloc _F
    ldsflda valuetype T_array_26 _G::XTMV
    ldsfld int32 _G::JNTM
    call instance int16& T_array_26::ldadr(int32)
    ldobj int16
    ldsflda valuetype T_array_102 _G::MBVAL
    ldsfld int8 _G::JNTK
    call instance int16& T_array_102::ldadr(int32)
    ldobj int16
    add
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int16 @EVALU8::INTV
    br L_if_end_2
L_else_1:
    // line 2362
    ldloc _F
    ldsfld int32 _G::FWPAWN
    ldloc _F
    ldsflda valuetype T_array_103 _G::TPLOC
    ldc.i4 0
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldobj valuetype T_RS
    ldc.i4 5
    ldc.i4 1
    call instance int16 @EVALU8::EVPAWN(valuetype T_RS A, int32 B, int32 C)
    ldloc _F
    ldsflda valuetype T_array_103 _G::TPLOC
    ldc.i4 6
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldobj valuetype T_RS
    ldc.i4 7
    ldc.i4 6
    call instance int16 @EVALU8::EVPAWN(valuetype T_RS A, int32 B, int32 C)
    sub
    mul
    ldsfld int32 _G::FWMINM
    ldloc _F
    ldc.i4 3
    ldc.i4 2
    call instance int16 @EVALU8::EVMOBL(int32 A, int32 B)
    ldloc _F
    ldc.i4 9
    ldc.i4 8
    call instance int16 @EVALU8::EVMOBL(int32 A, int32 B)
    sub
    mul
    add
    ldsfld int32 _G::FWMAJM
    ldloc _F
    ldc.i4 1
    ldc.i4 4
    call instance int16 @EVALU8::EVMOBL(int32 A, int32 B)
    ldloc _F
    ldc.i4 7
    ldc.i4 10
    call instance int16 @EVALU8::EVMOBL(int32 A, int32 B)
    sub
    mul
    add
    ldsfld int32 _G::FWROOK
    ldloc _F
    ldsflda valuetype T_array_103 _G::TPLOC
    ldc.i4 1
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytrofrs _G::XRRS
    ldc.i4 6
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call instance int16 @EVALU8::EVROOK(valuetype T_RS A, valuetype T_RS B)
    ldloc _F
    ldsflda valuetype T_array_103 _G::TPLOC
    ldc.i4 7
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_arraytrofrs _G::XRRS
    ldc.i4 1
    call instance valuetype T_RS& T_arraytrofrs::ldadr(int32)
    ldobj valuetype T_RS
    call instance int16 @EVALU8::EVROOK(valuetype T_RS A, valuetype T_RS B)
    sub
    mul
    add
    ldsfld int32 _G::FWKING
    ldloc _F
    ldsflda valuetype T_array_103 _G::TPLOC
    ldc.i4 5
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_array_103 _G::TPLOC
    ldc.i4 0
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldobj valuetype T_RS
    call instance int16 @EVALU8::EVKING(valuetype T_RS A, valuetype T_RS B)
    ldloc _F
    ldsflda valuetype T_array_103 _G::TPLOC
    ldc.i4 11
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldobj valuetype T_RS
    ldsflda valuetype T_array_103 _G::TPLOC
    ldc.i4 6
    call instance valuetype T_RS& T_array_103::ldadr(int32)
    ldobj valuetype T_RS
    call instance int16 @EVALU8::EVKING(valuetype T_RS A, valuetype T_RS B)
    sub
    mul
    add
    ldc.i4 64
    div
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int16 @EVALU8::INTV
    // line 2370
    ldsfld int16 _G::MAXPS
    ldloc _F
    ldfld int16 @EVALU8::INTV
    dup
    ldc.i4 0
    bge L_abs_question_3
    neg
L_abs_question_3:
    call int32 MAX(int32 A, int32 B)
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::MAXPS
    // line 2371
    ldloc _F
    ldsflda valuetype T_array_26 _G::XTMV
    ldsfld int32 _G::JNTM
    call instance int16& T_array_26::ldadr(int32)
    ldobj int16
    ldsflda valuetype T_array_102 _G::MBVAL
    ldsfld int8 _G::JNTK
    call instance int16& T_array_102::ldadr(int32)
    ldobj int16
    ldloc _F
    ldfld int16 @EVALU8::INTV
    add
    mul
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int16 @EVALU8::INTV
    /* nop */
L_if_end_2:
    // line 2373
    ldsfld bool _G::SWTR
    brfalse L_if_end_4
    // line 2375
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " EVALU8"
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld int8 _G::JNTK
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldsfld int16 _G::JNTW
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldsflda valuetype T_array_110 _G::INDEX
    ldsfld int8 _G::JNTK
    call instance int16& T_array_110::ldadr(int32)
    ldobj int16
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldloc _F
    ldfld int16 @EVALU8::INTV
    call instance void [lpcRuntime]LPC.File::Write(int32)
    pop
    // line 2376
    ldsflda valuetype T_RF _G::MOVES
    ldsflda valuetype T_array_110 _G::INDEX
    ldsfld int8 _G::JNTK
    call instance int16& T_array_110::ldadr(int32)
    ldobj int16
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldobj valuetype T_RM
    call void PRIMOV(valuetype T_RM A)
    /* nop */
L_if_end_4:
    // line 2378
    ldsflda valuetype T_RE _G::VALUE
    ldsflda valuetype T_array_110 _G::INDEX
    ldsfld int8 _G::JNTK
    call instance int16& T_array_110::ldadr(int32)
    ldobj int16
    call instance int16& T_RE::ldadr(int32)
    ldloc _F
    ldfld int16 @EVALU8::INTV
    stobj int16
    /* nop */

L_Epilogue:
    ret
}

// line 2382

.method static
int16 SEARCH()
{
    .maxstack 32

    .locals init(class @SEARCH _F)
    
    newobj instance void @SEARCH::.ctor()
    stloc _F

L_Entry:
    // line 2669
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @SEARCH::Jumpin
    // line 2670
    ldsflda valuetype T_array_102 _G::BSTMV
    ldc.i4 0
    call instance int16& T_array_102::ldadr(int32)
    ldc.i4 1
    dup
    ldc.i4 1
    ldc.i4 500
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int16
    // line 2671
    ldsflda valuetype T_array_110 _G::INDEX
    ldsfld int8 _G::JNTK
    call instance int16& T_array_110::ldadr(int32)
    ldc.i4 1
    dup
    ldc.i4 1
    ldc.i4 500
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int16
    // line 2672
    ldsflda valuetype T_RF _G::MOVES
    ldc.i4 1
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldsfld valuetype T_RM _G::LSTMV
    stobj valuetype T_RM
    // line 2673
    call void EVALU8()
    // line 2674
    ldsflda valuetype T_array_109 _G::BSTVL
    ldc.i4 0
    ldc.i4 2
    sub
    call instance int16& T_array_109::ldadr(int32)
    ldsflda valuetype T_RE _G::VALUE
    ldc.i4 1
    call instance int16& T_RE::ldadr(int32)
    ldobj int16
    ldsfld int32 _G::WINDOW
    sub
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int16
    // line 2675
    ldsflda valuetype T_array_109 _G::BSTVL
    ldc.i4 0
    ldc.i4 1
    sub
    call instance int16& T_array_109::ldadr(int32)
    ldsflda valuetype T_RE _G::VALUE
    ldc.i4 1
    call instance int16& T_RE::ldadr(int32)
    ldobj int16
    neg
    ldsfld int32 _G::WINDOW
    sub
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int16
    // line 2676
    ldc.i4 0
    ldc.i4 1
    add
    dup
    ldc.i4 0
    ldc.i4 16
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int8 _G::JMTK
    // line 2677
    br L_while_test_2
L_while_1:
    // line 2681
L_11:
    ldsflda valuetype T_array_109 _G::BSTVL
    ldsfld int8 _G::JNTK
    call instance int16& T_array_109::ldadr(int32)
    ldsflda valuetype T_array_109 _G::BSTVL
    ldsfld int8 _G::JNTK
    ldc.i4 2
    sub
    call instance int16& T_array_109::ldadr(int32)
    ldobj int16
    stobj int16
    // line 2684
L_12:
    ldloc _F
    call instance bool @SEARCH::SELECT()
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_3
    pop
    ldloc _F
    ldfld bool @SEARCH::Jumpin
    ldc.i4.0
    ceq
L_AND_shortcut_3:
    brfalse L_else_4
    // line 2686
    ldsflda valuetype T_array_109 _G::BSTVL
    ldsfld int8 _G::JNTK
    call instance int16& T_array_109::ldadr(int32)
    ldsflda valuetype T_RE _G::VALUE
    ldsflda valuetype T_array_110 _G::INDEX
    ldsfld int8 _G::JNTK
    call instance int16& T_array_110::ldadr(int32)
    ldobj int16
    call instance int16& T_RE::ldadr(int32)
    ldobj int16
    stobj int16
    // line 2687
    ldloc _F
    ldsfld int8 _G::JNTK
    call instance void @SEARCH::NEWBST(int8 A)
    /* nop */
    br L_if_end_5
L_else_4:
    // line 2691
    ldloc _F
    ldfld bool @SEARCH::Jumpin
    brfalse L_if_end_6
    // line 2691
    br L_13
L_if_end_6:
    // line 2692
    ldsflda valuetype T_RF _G::MOVES
    ldsflda valuetype T_array_110 _G::INDEX
    ldsfld int8 _G::JNTK
    ldc.i4 1
    add
    call instance int16& T_array_110::ldadr(int32)
    ldobj int16
    call instance valuetype T_RM& T_RF::ldadr(int32)
    call bool UPDATE(valuetype T_RM& A)
    brfalse L_else_7
    // line 2693
    br L_11
    br L_if_end_8
L_else_7:
    // line 2696
    ldsflda valuetype T_RF _G::MOVES
    ldsflda valuetype T_array_110 _G::INDEX
    ldsfld int8 _G::JNTK
    call instance int16& T_array_110::ldadr(int32)
    ldobj int16
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldobj valuetype T_RM
    call void DNDATE(valuetype T_RM A)
    // line 2697
    br L_12
    /* nop */
L_if_end_8:
    // line 2701
L_13:
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @SEARCH::Jumpin
    // line 2702
    ldloc _F
    ldsfld int8 _G::JNTK
    call instance bool @SEARCH::MINMAX(int8 A)
    brfalse L_if_end_9
    // line 2703
    br L_15
L_if_end_9:
    // line 2706
L_14:
    ldloc _F
    call instance bool @SEARCH::SELECT()
    brfalse L_if_end_10
    // line 2707
    ldsflda valuetype T_RF _G::MOVES
    ldsflda valuetype T_array_110 _G::INDEX
    ldsfld int8 _G::JNTK
    ldc.i4 1
    add
    call instance int16& T_array_110::ldadr(int32)
    ldobj int16
    call instance valuetype T_RM& T_RF::ldadr(int32)
    call bool UPDATE(valuetype T_RM& A)
    brfalse L_else_11
    // line 2708
    br L_11
    br L_if_end_12
L_else_11:
    // line 2711
    ldsflda valuetype T_RF _G::MOVES
    ldsflda valuetype T_array_110 _G::INDEX
    ldsfld int8 _G::JNTK
    call instance int16& T_array_110::ldadr(int32)
    ldobj int16
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldobj valuetype T_RM
    call void DNDATE(valuetype T_RM A)
    // line 2712
    br L_14
    /* nop */
L_if_end_12:
L_if_end_10:
    /* nop */
L_if_end_5:
    // line 2717
L_15:
    ldsfld int8 _G::JNTK
    ldc.i4 0
    cgt
    brfalse L_if_end_13
    // line 2719
    ldsflda valuetype T_RF _G::MOVES
    ldsflda valuetype T_array_110 _G::INDEX
    ldsfld int8 _G::JNTK
    call instance int16& T_array_110::ldadr(int32)
    ldobj int16
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldobj valuetype T_RM
    call void DNDATE(valuetype T_RM A)
    // line 2720
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @SEARCH::Jumpin
    // line 2721
    br L_12
    /* nop */
L_if_end_13:
    // line 2725
    ldsflda valuetype T_array_109 _G::BSTVL
    ldc.i4 0
    call instance int16& T_array_109::ldadr(int32)
    ldobj int16
    ldsflda valuetype T_array_109 _G::BSTVL
    ldc.i4 0
    ldc.i4 2
    sub
    call instance int16& T_array_109::ldadr(int32)
    ldobj int16
    cgt
    ldc.i4.0
    ceq
    dup
    brtrue L_OR_shortcut_14
    pop
    ldsflda valuetype T_array_109 _G::BSTVL
    ldc.i4 0
    call instance int16& T_array_109::ldadr(int32)
    ldobj int16
    ldsflda valuetype T_array_109 _G::BSTVL
    ldc.i4 0
    ldc.i4 1
    sub
    call instance int16& T_array_109::ldadr(int32)
    ldobj int16
    neg
    clt
    ldc.i4.0
    ceq
L_OR_shortcut_14:
    brfalse L_if_end_15
    // line 2727
    ldsflda valuetype T_array_105 _G::MVSEL
    ldc.i4 0
    call instance int32& T_array_105::ldadr(int32)
    ldobj int32
    ldc.i4 0
    ceq
    brfalse L_if_end_16
    // line 2729
    br L_16
    /* nop */
L_if_end_16:
    // line 2731
    ldsflda valuetype T_array_109 _G::BSTVL
    ldc.i4 0
    ldc.i4 2
    sub
    call instance int16& T_array_109::ldadr(int32)
    ldc.i4 32767
    neg
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int16
    // line 2732
    ldsflda valuetype T_array_109 _G::BSTVL
    ldc.i4 0
    ldc.i4 1
    sub
    call instance int16& T_array_109::ldadr(int32)
    ldc.i4 32767
    neg
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int16
    // line 2733
    ldsflda valuetype T_array_105 _G::SRCHM
    ldc.i4 0
    call instance int32& T_array_105::ldadr(int32)
    ldc.i4 7
    stobj int32
    // line 2734
    ldc.i4 0
    ldc.i4 1
    add
    dup
    ldc.i4 1
    ldc.i4 500
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::JNTW
    // line 2735
    br L_11
    /* nop */
L_if_end_15:
    // line 2737
    ldsflda valuetype T_array_109 _G::BSTVL
    ldc.i4 0
    ldc.i4 2
    sub
    call instance int16& T_array_109::ldadr(int32)
    ldsflda valuetype T_array_109 _G::BSTVL
    ldc.i4 0
    call instance int16& T_array_109::ldadr(int32)
    ldobj int16
    ldsfld int32 _G::WINDOW
    sub
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int16
    // line 2738
    ldsflda valuetype T_array_109 _G::BSTVL
    ldc.i4 0
    ldc.i4 1
    sub
    call instance int16& T_array_109::ldadr(int32)
    ldsflda valuetype T_array_109 _G::BSTVL
    ldc.i4 0
    call instance int16& T_array_109::ldadr(int32)
    ldobj int16
    neg
    ldsfld int32 _G::WINDOW
    sub
    dup
    ldc.i4 -32767
    ldc.i4 32767
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stobj int16
    // line 2739
    ldsfld int8 _G::JMTK
    ldc.i4 1
    add
    dup
    ldc.i4 0
    ldc.i4 16
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int8 _G::JMTK
    // line 2740
    ldsflda valuetype T_array_105 _G::SRCHM
    ldc.i4 0
    call instance int32& T_array_105::ldadr(int32)
    ldc.i4 7
    stobj int32
    /* nop */
L_while_test_2:
    ldsfld int32 _G::NODES
    ldsfld int32 _G::FNODEL
    clt
    dup
    brfalse L_AND_shortcut_17
    pop
    ldsfld int8 _G::JNTK
    ldc.i4 16
    ldc.i4 2
    div
    ldc.i4 16
    ldc.i4 8
    sub
    call int32 MAX(int32 A, int32 B)
    clt
L_AND_shortcut_17:
    brtrue L_while_1
    // line 2744
L_16:
    ldloc _F
    ldsflda valuetype T_array_102 _G::BSTMV
    ldc.i4 0
    call instance int16& T_array_102::ldadr(int32)
    ldobj int16
    stfld int16 @SEARCH::_fnvalue
    /* nop */

L_Epilogue:
    ldloc _F
    ldfld int16 @SEARCH::_fnvalue
    ret
}

// line 2748

.method static
void READER()
{
    .maxstack 32

    .locals init(
        class @READER _F,
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        int8 $tmpIndex3,
        valuetype T_set_5 $tmpSetLiteral4)
    
    newobj instance void @READER::.ctor()
    stloc _F

    ldloca $tmpSetLiteral4
    ldc.i4 65 // 'A'
    ldc.i4 87 // 'W'
    call instance void T_set_5::addRange(int32, int32)
    ldloca $tmpSetLiteral4
    ldc.i4 89 // 'Y'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral4
    ldc.i4 90 // 'Z'
    call instance void T_set_5::addValue(int32)

L_Entry:
.try
{
    // line 3377
L_11:
    br L_while_test_2
L_while_1:
    // line 3378
    ldloc _F
    call instance void @READER::RDLINE()
L_while_test_2:
    ldloc _F
    call instance bool @READER::RDRMOV()
    ldc.i4.0
    ceq
    brtrue L_while_1
    // line 3379
    ldsfld bool _G::SWEC
    brfalse L_if_end_3
    // line 3381
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    // line 3382
    ldc.i4 73
    ldc.i4 1
    sub
    stloc $tmpEndValue1
    ldc.i4 0
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_5
    dup
    ldc.i4 0
    ldc.i4 73
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int8 @READER::INTJ
L_for_loop_4:
    // line 3383
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsflda valuetype T_RJ _G::ILINE
    ldloc _F
    ldfld int8 @READER::INTJ
    call instance uint8& T_RJ::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldloc _F
    ldfld int8 @READER::INTJ
    dup
    ldloc $tmpEndValue1
    beq L_for_end_5
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 73
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int8 @READER::INTJ
    br L_for_loop_4
L_for_end_5:
    pop
    // line 3384
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
L_if_end_3:
    // line 3386
    ldloc $tmpSetLiteral4
    ldsflda valuetype T_RJ _G::ILINE
    ldc.i4 0
    ldc.i4 1
    add
    call instance uint8& T_RJ::ldadr(int32)
    ldobj uint8
    call bool _SetContains(valuetype T_set_5 s, int32 val)
    brfalse L_if_end_6
    // line 3388
    ldloc _F
    ldsfld valuetype T_RA STRING_56    // "          "
    stfld valuetype T_RA @READER::INRA
    // line 3389
    ldloc _F
    ldflda valuetype T_RA @READER::INRA
    ldc.i4 1
    call instance uint8& T_RA::ldadr(int32)
    ldsflda valuetype T_RJ _G::ILINE
    ldc.i4 0
    call instance uint8& T_RJ::ldadr(int32)
    ldobj uint8
    stobj uint8
    // line 3390
    ldloc _F
    ldflda valuetype T_RA @READER::INRA
    ldc.i4 1
    ldc.i4 1
    add
    call instance uint8& T_RA::ldadr(int32)
    ldsflda valuetype T_RJ _G::ILINE
    ldc.i4 0
    ldc.i4 1
    add
    call instance uint8& T_RJ::ldadr(int32)
    ldobj uint8
    stobj uint8
    // line 3391
    ldloc _F
    call instance void @READER::RDRSFT()
    // line 3392
    ldloc _F
    ldsfld valuetype T_RA STRING_116    // "BO        "
    ldloc _F
    ldftn instance void @READER::BOACMD()
    newobj instance void T_READER_subroutine_220::.ctor(object, native uint)
    call instance void @READER::RDRCMD(valuetype T_RA A, class T_READER_subroutine_115 XXXCMD)
    // line 3393
    ldloc _F
    ldsfld valuetype T_RA STRING_117    // "EN        "
    ldloc _F
    ldftn instance void @READER::ENDCMD()
    newobj instance void T_READER_subroutine_222::.ctor(object, native uint)
    call instance void @READER::RDRCMD(valuetype T_RA A, class T_READER_subroutine_115 XXXCMD)
    // line 3394
    ldloc _F
    ldsfld valuetype T_RA STRING_118    // "GO        "
    ldloc _F
    ldftn instance void @READER::GONCMD()
    newobj instance void T_READER_subroutine_224::.ctor(object, native uint)
    call instance void @READER::RDRCMD(valuetype T_RA A, class T_READER_subroutine_115 XXXCMD)
    // line 3395
    ldloc _F
    ldsfld valuetype T_RA STRING_119    // "IN        "
    ldloc _F
    ldftn instance void @READER::INICMD()
    newobj instance void T_READER_subroutine_226::.ctor(object, native uint)
    call instance void @READER::RDRCMD(valuetype T_RA A, class T_READER_subroutine_115 XXXCMD)
    // line 3396
    ldloc _F
    ldsfld valuetype T_RA STRING_120    // "LE        "
    ldloc _F
    ldftn instance void @READER::LETCMD()
    newobj instance void T_READER_subroutine_228::.ctor(object, native uint)
    call instance void @READER::RDRCMD(valuetype T_RA A, class T_READER_subroutine_115 XXXCMD)
    // line 3397
    ldloc _F
    ldsfld valuetype T_RA STRING_121    // "PB        "
    ldloc _F
    ldftn instance void @READER::PAMCMD()
    newobj instance void T_READER_subroutine_230::.ctor(object, native uint)
    call instance void @READER::RDRCMD(valuetype T_RA A, class T_READER_subroutine_115 XXXCMD)
    // line 3398
    ldloc _F
    ldsfld valuetype T_RA STRING_122    // "PO        "
    ldloc _F
    ldftn instance void @READER::POPCMD()
    newobj instance void T_READER_subroutine_232::.ctor(object, native uint)
    call instance void @READER::RDRCMD(valuetype T_RA A, class T_READER_subroutine_115 XXXCMD)
    // line 3399
    ldloc _F
    ldsfld valuetype T_RA STRING_123    // "PL        "
    ldloc _F
    ldftn instance void @READER::PLECMD()
    newobj instance void T_READER_subroutine_234::.ctor(object, native uint)
    call instance void @READER::RDRCMD(valuetype T_RA A, class T_READER_subroutine_115 XXXCMD)
    // line 3400
    ldloc _F
    ldsfld valuetype T_RA STRING_124    // "PM        "
    ldloc _F
    ldftn instance void @READER::PMVCMD()
    newobj instance void T_READER_subroutine_236::.ctor(object, native uint)
    call instance void @READER::RDRCMD(valuetype T_RA A, class T_READER_subroutine_115 XXXCMD)
    // line 3401
    ldloc _F
    ldsfld valuetype T_RA STRING_125    // "PR        "
    ldloc _F
    ldftn instance void @READER::PRICMD()
    newobj instance void T_READER_subroutine_238::.ctor(object, native uint)
    call instance void @READER::RDRCMD(valuetype T_RA A, class T_READER_subroutine_115 XXXCMD)
    // line 3402
    ldloc _F
    ldsfld valuetype T_RA STRING_126    // "ST        "
    ldloc _F
    ldftn instance void @READER::STACMD()
    newobj instance void T_READER_subroutine_240::.ctor(object, native uint)
    call instance void @READER::RDRCMD(valuetype T_RA A, class T_READER_subroutine_115 XXXCMD)
    // line 3403
    ldloc _F
    ldsfld valuetype T_RA STRING_127    // "SW        "
    ldloc _F
    ldftn instance void @READER::SWICMD()
    newobj instance void T_READER_subroutine_242::.ctor(object, native uint)
    call instance void @READER::RDRCMD(valuetype T_RA A, class T_READER_subroutine_115 XXXCMD)
    // line 3404
    ldloc _F
    ldsfld valuetype T_RA STRING_128    // "WH        "
    ldloc _F
    ldftn instance void @READER::WHACMD()
    newobj instance void T_READER_subroutine_244::.ctor(object, native uint)
    call instance void @READER::RDRCMD(valuetype T_RA A, class T_READER_subroutine_115 XXXCMD)
    // line 3405
    ldloc _F
    ldsfld valuetype T_array_99 STRING_129    // "* IMWALID COMMAND             "
    call instance void @READER::RDRERR(valuetype T_array_99 A)
    /* nop */
L_if_end_6:
    /* nop */
    leave L_Epilogue
}
catch [lpcRuntime]LPC.NonLocalGoto
{
    ldfld int32 [lpcRuntime]LPC.NonLocalGoto::label
    dup
    ldc.i4 3
    beq GOTO_L_11
    rethrow
GOTO_L_11:
    leave L_11
}

L_Epilogue:
    ret
}

// line 3410

.method static
void MINENG(valuetype T_RM A, valuetype T_RA B)
{
    .maxstack 32

    .locals init(class @MINENG _F)
    
    newobj instance void @MINENG::.ctor()
    stloc _F
    
    ldloc _F
    ldarg A
    stfld valuetype T_RM @MINENG::A
    
    ldloc _F
    ldarg B
    stfld valuetype T_RA @MINENG::B

L_Entry:
    // line 3597
    ldsfld valuetype T_array_99 STRING_130    // "                              "
    stsfld valuetype T_array_99 _G::MOVMS
    // line 3599
    ldloc _F
    ldc.i4 1
    ldc.i4 1
    add
    dup
    ldc.i4 1
    ldc.i4 30
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @MINENG::INTN
    // line 3600
    ldloc _F
    ldloc _F
    ldfld valuetype T_RA @MINENG::B
    ldc.i4 10
    dup
    ldc.i4 1
    ldc.i4 10
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @MINENG::ADDWRD(valuetype T_RA A, int8 B)
    // line 3601
    ldloc _F
    ldsfld valuetype T_RA STRING_131    // "-         "
    ldc.i4 2
    dup
    ldc.i4 1
    ldc.i4 10
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @MINENG::ADDWRD(valuetype T_RA A, int8 B)
    // line 3604
    ldloc _F
    ldflda valuetype T_RM @MINENG::A
    ldfld bool T_RM::RMOO
    brfalse L_else_1
    // line 3606
    ldloc _F
    ldsfld valuetype T_RA STRING_132    // "O-O       "
    ldc.i4 3
    dup
    ldc.i4 1
    ldc.i4 10
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @MINENG::ADDWRD(valuetype T_RA A, int8 B)
    // line 3607
    ldloc _F
    ldflda valuetype T_RM @MINENG::A
    ldfld bool T_RM::RMQS
    brfalse L_if_end_3
    // line 3608
    ldloc _F
    ldsfld valuetype T_RA STRING_133    // "-O        "
    ldc.i4 2
    dup
    ldc.i4 1
    ldc.i4 10
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @MINENG::ADDWRD(valuetype T_RA A, int8 B)
L_if_end_3:
    /* nop */
    br L_if_end_2
L_else_1:
    // line 3611
    ldloc _F
    ldflda valuetype T_RM @MINENG::A
    ldfld bool T_RM::RMCA
    brfalse L_else_4
    // line 3612
    ldloc _F
    ldloc _F
    ldfld valuetype T_RM @MINENG::A
    ldc.i4 1
    ldc.i4 36
    call instance void @MINENG::MINGEN(valuetype T_RM A, int32 B, int32 C)
    br L_if_end_5
L_else_4:
    // line 3614
    ldloc _F
    ldloc _F
    ldfld valuetype T_RM @MINENG::A
    ldc.i4 37
    ldc.i4 47
    call instance void @MINENG::MINGEN(valuetype T_RM A, int32 B, int32 C)
L_if_end_5:
L_if_end_2:
    // line 3615
    ldloc _F
    ldflda valuetype T_RM @MINENG::A
    ldfld bool T_RM::RMPR
    brfalse L_if_end_6
    // line 3617
    ldloc _F
    ldc.i4 61 // '='
    call instance void @MINENG::ADDCHR(uint8 A)
    // line 3618
    ldloc _F
    ldsflda valuetype T_array_22 _G::XTGC
    ldloc _F
    ldflda valuetype T_RM @MINENG::A
    ldfld int32 T_RM::RMPP
    call instance uint8& T_array_22::ldadr(int32)
    ldobj uint8
    call instance void @MINENG::ADDCHR(uint8 A)
    /* nop */
L_if_end_6:
    // line 3620
    ldloc _F
    ldsfld valuetype T_RA STRING_134    // ".         "
    ldc.i4 3
    dup
    ldc.i4 1
    ldc.i4 10
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @MINENG::ADDWRD(valuetype T_RA A, int8 B)
    // line 3621
    ldloc _F
    ldflda valuetype T_RM @MINENG::A
    ldfld bool T_RM::RMCH
    brfalse L_else_7
    // line 3623
    ldloc _F
    ldsfld valuetype T_RA STRING_135    // "CHECK     "
    ldc.i4 5
    dup
    ldc.i4 1
    ldc.i4 10
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @MINENG::ADDWRD(valuetype T_RA A, int8 B)
    // line 3624
    ldloc _F
    ldflda valuetype T_RM @MINENG::A
    ldfld bool T_RM::RMMT
    brfalse L_if_end_9
    // line 3625
    ldloc _F
    ldsfld valuetype T_RA STRING_136    // "MATE      "
    ldc.i4 4
    dup
    ldc.i4 1
    ldc.i4 10
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @MINENG::ADDWRD(valuetype T_RA A, int8 B)
L_if_end_9:
    // line 3626
    ldloc _F
    ldc.i4 46 // '.'
    call instance void @MINENG::ADDCHR(uint8 A)
    /* nop */
    br L_if_end_8
L_else_7:
    // line 3629
    ldloc _F
    ldflda valuetype T_RM @MINENG::A
    ldfld bool T_RM::RMMT
    brfalse L_if_end_10
    // line 3630
    ldloc _F
    ldsfld valuetype T_RA STRING_137    // "STALEMATE."
    ldc.i4 10
    dup
    ldc.i4 1
    ldc.i4 10
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    call instance void @MINENG::ADDWRD(valuetype T_RA A, int8 B)
L_if_end_10:
L_if_end_8:
    /* nop */
    /* nop */

L_Epilogue:
    ret
}

// line 3635

.method static
void MYMOVE()
{
    .maxstack 32

    .locals init(class @MYMOVE _F)
    
    newobj instance void @MYMOVE::.ctor()
    stloc _F

L_Entry:
    // line 3641
    call void CREATE()
    // line 3642
    ldloc _F
    ldsflda valuetype T_RF _G::MOVES
    call int16 SEARCH()
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldobj valuetype T_RM
    stfld valuetype T_RM @MYMOVE::INRM
    // line 3643
    ldloc _F
    ldflda valuetype T_RM @MYMOVE::INRM
    ldfld bool T_RM::RMIL
    brfalse L_else_1
    // line 3645
    ldc.i4 0
    stsfld int32 _G::GOING
    // line 3646
    ldsflda valuetype T_RM _G::LSTMV
    ldfld bool T_RM::RMCH
    brfalse L_else_3
    // line 3647
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " CONGRATULATIONS."
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_if_end_4
L_else_3:
    // line 3649
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " DRAWN. "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_4:
    /* nop */
    br L_if_end_2
L_else_1:
    // line 3653
    ldloc _F
    ldfld valuetype T_RM @MYMOVE::INRM
    ldsfld valuetype T_RA STRING_138    // "  MY MOVE "
    call void MINENG(valuetype T_RM A, valuetype T_RA B)
    // line 3654
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld valuetype T_array_99 _G::MOVMS
    call string T_array_99::arrayToString(valuetype T_array_99)
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 3655
    ldloc _F
    ldfld valuetype T_RM @MYMOVE::INRM
    call void THEMOV(valuetype T_RM A)
    // line 3656
    ldsfld bool _G::SWSU
    brfalse L_if_end_5
    // line 3657
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsflda valuetype T_RB _G::BOARD
    ldfld int32 T_RB::RBTI
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 46 // '.'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsfld int32 _G::NODES
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldstr " NODES,"
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsflda valuetype T_array_109 _G::BSTVL
    ldc.i4 0
    call instance int16& T_array_109::ldadr(int32)
    ldobj int16
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_5:
    /* nop */
L_if_end_2:
    /* nop */

L_Epilogue:
    ret
}

// line 3662

.method static
void YRMOVE()
{
    .maxstack 32

    .locals init(
        class @YRMOVE _F,
        valuetype T_set_100 $tmpSetLiteral1,
        valuetype T_set_100 $tmpSetLiteral2,
        valuetype T_set_100 $tmpSetLiteral3,
        valuetype T_set_100 $tmpSetLiteral4,
        valuetype T_set_5 $tmpSetLiteral5,
        valuetype T_set_5 $tmpSetLiteral6,
        valuetype T_set_5 $tmpSetLiteral7,
        valuetype T_set_5 $tmpSetLiteral8,
        valuetype T_set_5 $tmpSetLiteral9,
        valuetype T_set_5 $tmpSetLiteral10,
        valuetype T_set_5 $tmpSetLiteral11,
        valuetype T_set_5 $tmpSetLiteral12,
        valuetype T_set_5 $tmpSetLiteral13,
        valuetype T_set_5 $tmpSetLiteral14,
        valuetype T_set_5 $tmpSetLiteral15,
        valuetype T_set_5 $tmpSetLiteral16,
        valuetype T_set_5 $tmpSetLiteral17,
        valuetype T_set_5 $tmpSetLiteral18,
        valuetype T_set_5 $tmpSetLiteral19,
        valuetype T_set_5 $tmpSetLiteral20,
        valuetype T_set_5 $tmpSetLiteral21,
        valuetype T_set_5 $tmpSetLiteral22,
        valuetype T_set_5 $tmpSetLiteral23,
        valuetype T_set_100 $tmpSetLiteral24,
        valuetype T_set_100 $tmpSetLiteral25)
    
    newobj instance void @YRMOVE::.ctor()
    stloc _F

    ldloca $tmpSetLiteral1
    ldc.i4 0
    ldc.i4 7
    call instance void T_set_100::addRange(int32, int32)

    ldloca $tmpSetLiteral2
    ldc.i4 0
    ldc.i4 7
    call instance void T_set_100::addRange(int32, int32)

    ldloca $tmpSetLiteral3
    ldc.i4 0
    ldc.i4 7
    call instance void T_set_100::addRange(int32, int32)

    ldloca $tmpSetLiteral4
    ldc.i4 0
    ldc.i4 7
    call instance void T_set_100::addRange(int32, int32)

    ldloca $tmpSetLiteral5
    ldc.i4 80 // 'P'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral5
    ldc.i4 82 // 'R'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral5
    ldc.i4 78 // 'N'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral5
    ldc.i4 66 // 'B'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral5
    ldc.i4 81 // 'Q'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral5
    ldc.i4 75 // 'K'
    call instance void T_set_5::addValue(int32)

    ldloca $tmpSetLiteral6
    ldc.i4 47 // '/'
    call instance void T_set_5::addValue(int32)

    ldloca $tmpSetLiteral7
    ldc.i4 75 // 'K'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral7
    ldc.i4 81 // 'Q'
    call instance void T_set_5::addValue(int32)

    ldloca $tmpSetLiteral8
    ldc.i4 82 // 'R'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral8
    ldc.i4 78 // 'N'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral8
    ldc.i4 66 // 'B'
    call instance void T_set_5::addValue(int32)

    ldloca $tmpSetLiteral9
    ldc.i4 49 // '1'
    ldc.i4 56 // '8'
    call instance void T_set_5::addRange(int32, int32)

    ldloca $tmpSetLiteral10
    ldc.i4 45 // '-'
    call instance void T_set_5::addValue(int32)

    ldloca $tmpSetLiteral11
    ldc.i4 43 // '+'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral11
    ldc.i4 88 // 'X'
    call instance void T_set_5::addValue(int32)

    ldloca $tmpSetLiteral12
    ldc.i4 80 // 'P'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral12
    ldc.i4 82 // 'R'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral12
    ldc.i4 78 // 'N'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral12
    ldc.i4 66 // 'B'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral12
    ldc.i4 81 // 'Q'
    call instance void T_set_5::addValue(int32)

    ldloca $tmpSetLiteral13
    ldc.i4 47 // '/'
    call instance void T_set_5::addValue(int32)

    ldloca $tmpSetLiteral14
    ldc.i4 75 // 'K'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral14
    ldc.i4 81 // 'Q'
    call instance void T_set_5::addValue(int32)

    ldloca $tmpSetLiteral15
    ldc.i4 82 // 'R'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral15
    ldc.i4 78 // 'N'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral15
    ldc.i4 66 // 'B'
    call instance void T_set_5::addValue(int32)

    ldloca $tmpSetLiteral16
    ldc.i4 49 // '1'
    ldc.i4 56 // '8'
    call instance void T_set_5::addRange(int32, int32)

    ldloca $tmpSetLiteral17
    ldc.i4 61 // '='
    call instance void T_set_5::addValue(int32)

    ldloca $tmpSetLiteral18
    ldc.i4 82 // 'R'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral18
    ldc.i4 78 // 'N'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral18
    ldc.i4 66 // 'B'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral18
    ldc.i4 81 // 'Q'
    call instance void T_set_5::addValue(int32)

    ldloca $tmpSetLiteral19
    ldc.i4 79 // 'O'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral19
    ldc.i4 48 // '0'
    call instance void T_set_5::addValue(int32)

    ldloca $tmpSetLiteral20
    ldc.i4 45 // '-'
    call instance void T_set_5::addValue(int32)

    ldloca $tmpSetLiteral21
    ldc.i4 79 // 'O'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral21
    ldc.i4 48 // '0'
    call instance void T_set_5::addValue(int32)

    ldloca $tmpSetLiteral22
    ldc.i4 45 // '-'
    call instance void T_set_5::addValue(int32)

    ldloca $tmpSetLiteral23
    ldc.i4 79 // 'O'
    call instance void T_set_5::addValue(int32)
    ldloca $tmpSetLiteral23
    ldc.i4 48 // '0'
    call instance void T_set_5::addValue(int32)

    ldloca $tmpSetLiteral24
    ldc.i4 3
    call instance void T_set_100::addValue(int32)
    ldloca $tmpSetLiteral24
    ldc.i4 4
    call instance void T_set_100::addValue(int32)

    ldloca $tmpSetLiteral25
    ldc.i4 3
    call instance void T_set_100::addValue(int32)
    ldloca $tmpSetLiteral25
    ldc.i4 4
    call instance void T_set_100::addValue(int32)

L_Entry:
.try
{
    // line 3940
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @YRMOVE::Jumpin
    // line 3941
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @YRMOVE::INTB
    // line 3943
L_19:
    br L_while_test_2
L_while_1:
    // line 3946
    ldloc _F
    ldfld bool @YRMOVE::Jumpin
    brfalse L_if_end_3
    // line 3946
    br L_15
L_if_end_3:
    // line 3948
    call void READER()
    // line 3949
    call void LSTMOV()
    // line 3951
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @YRMOVE::IFCA
    // line 3952
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @YRMOVE::IFPR
    // line 3953
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @YRMOVE::IFOO
    // line 3954
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @YRMOVE::IFQS
    // line 3955
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @YRMOVE::IFLD
    // line 3956
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @YRMOVE::IFLF
    // line 3957
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @YRMOVE::IFRD
    // line 3958
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @YRMOVE::IFRF
    // line 3959
    ldloc _F
    ldc.i4 12
    stfld int32 @YRMOVE::INTP
    // line 3960
    ldloc _F
    ldc.i4 12
    stfld int32 @YRMOVE::INCP
    // line 3961
    ldloc _F
    ldloc $tmpSetLiteral1
    stfld valuetype T_set_100 @YRMOVE::INLF
    // line 3962
    ldloc _F
    ldloc $tmpSetLiteral2
    stfld valuetype T_set_100 @YRMOVE::INRF
    // line 3963
    ldloc _F
    ldloc $tmpSetLiteral3
    stfld valuetype T_set_100 @YRMOVE::INLR
    // line 3964
    ldloc _F
    ldloc $tmpSetLiteral4
    stfld valuetype T_set_100 @YRMOVE::INRR
    // line 3965
    ldloc _F
    ldsflda valuetype T_RJ _G::ILINE
    ldsfld int8 _G::JNTJ
    call instance uint8& T_RJ::ldadr(int32)
    ldobj uint8
    stfld uint8 @YRMOVE::INTC
    // line 3967
    ldloc _F
    ldloc $tmpSetLiteral5
    ldloc _F
    ldftn instance void @YRMOVE::YRMPCM()
    newobj instance void T_YRMOVE_subroutine_313::.ctor(object, native uint)
    call instance bool @YRMOVE::NCHIN(valuetype T_set_5 A, class T_YRMOVE_subroutine_307 YRMXXX)
    brfalse L_if_end_4
    // line 3967
    br L_14
L_if_end_4:
    // line 3968
    ldloc _F
    ldloc $tmpSetLiteral6
    ldloc _F
    ldftn instance void @YRMOVE::YRMNUL()
    newobj instance void T_YRMOVE_subroutine_315::.ctor(object, native uint)
    call instance bool @YRMOVE::NCHIN(valuetype T_set_5 A, class T_YRMOVE_subroutine_307 YRMXXX)
    brfalse L_if_end_5
    // line 3968
    br L_11
L_if_end_5:
    // line 3969
    ldloc _F
    ldloc $tmpSetLiteral7
    ldloc _F
    ldftn instance void @YRMOVE::YRMLKQ()
    newobj instance void T_YRMOVE_subroutine_317::.ctor(object, native uint)
    call instance bool @YRMOVE::NCHIN(valuetype T_set_5 A, class T_YRMOVE_subroutine_307 YRMXXX)
    brfalse L_if_end_6
    /* nop */
L_if_end_6:
    // line 3970
    ldloc _F
    ldloc $tmpSetLiteral8
    ldloc _F
    ldftn instance void @YRMOVE::YRMLRB()
    newobj instance void T_YRMOVE_subroutine_319::.ctor(object, native uint)
    call instance bool @YRMOVE::NCHIN(valuetype T_set_5 A, class T_YRMOVE_subroutine_307 YRMXXX)
    brfalse L_if_end_7
    /* nop */
L_if_end_7:
    // line 3971
    ldloc _F
    ldloc $tmpSetLiteral9
    ldloc _F
    ldftn instance void @YRMOVE::YRMLRK()
    newobj instance void T_YRMOVE_subroutine_321::.ctor(object, native uint)
    call instance bool @YRMOVE::NCHIN(valuetype T_set_5 A, class T_YRMOVE_subroutine_307 YRMXXX)
    brfalse L_if_end_8
    /* nop */
L_if_end_8:
    // line 3973
L_11:
    ldloc _F
    ldloc $tmpSetLiteral10
    ldloc _F
    ldftn instance void @YRMOVE::YRMNUL()
    newobj instance void T_YRMOVE_subroutine_315::.ctor(object, native uint)
    call instance bool @YRMOVE::NCHIN(valuetype T_set_5 A, class T_YRMOVE_subroutine_307 YRMXXX)
    ldc.i4.0
    ceq
    brfalse L_if_end_9
    // line 3973
    br L_12
L_if_end_9:
    // line 3974
    ldloc _F
    ldloc $tmpSetLiteral11
    ldloc _F
    ldftn instance void @YRMOVE::YRMCAP()
    newobj instance void T_YRMOVE_subroutine_324::.ctor(object, native uint)
    call instance bool @YRMOVE::NCHIN(valuetype T_set_5 A, class T_YRMOVE_subroutine_307 YRMXXX)
    brfalse L_if_end_10
    // line 3974
    br L_16
L_if_end_10:
    // line 3975
    ldloc _F
    ldloc $tmpSetLiteral12
    ldloc _F
    ldftn instance void @YRMOVE::YRMCPC()
    newobj instance void T_YRMOVE_subroutine_326::.ctor(object, native uint)
    call instance bool @YRMOVE::NCHIN(valuetype T_set_5 A, class T_YRMOVE_subroutine_307 YRMXXX)
    brfalse L_if_end_11
    // line 3975
    br L_16
L_if_end_11:
    // line 3976
    ldloc _F
    ldloc $tmpSetLiteral13
    ldloc _F
    ldftn instance void @YRMOVE::YRMNUL()
    newobj instance void T_YRMOVE_subroutine_315::.ctor(object, native uint)
    call instance bool @YRMOVE::NCHIN(valuetype T_set_5 A, class T_YRMOVE_subroutine_307 YRMXXX)
    brfalse L_if_end_12
    // line 3976
    br L_13
L_if_end_12:
    // line 3978
L_12:
    ldloc _F
    ldloc $tmpSetLiteral14
    ldloc _F
    ldftn instance void @YRMOVE::YRMRKQ()
    newobj instance void T_YRMOVE_subroutine_329::.ctor(object, native uint)
    call instance bool @YRMOVE::NCHIN(valuetype T_set_5 A, class T_YRMOVE_subroutine_307 YRMXXX)
    brfalse L_if_end_13
    /* nop */
L_if_end_13:
    // line 3979
    ldloc _F
    ldloc $tmpSetLiteral15
    ldloc _F
    ldftn instance void @YRMOVE::YRMRRB()
    newobj instance void T_YRMOVE_subroutine_331::.ctor(object, native uint)
    call instance bool @YRMOVE::NCHIN(valuetype T_set_5 A, class T_YRMOVE_subroutine_307 YRMXXX)
    brfalse L_if_end_14
    /* nop */
L_if_end_14:
    // line 3980
    ldloc _F
    ldloc $tmpSetLiteral16
    ldloc _F
    ldftn instance void @YRMOVE::YRMRRK()
    newobj instance void T_YRMOVE_subroutine_333::.ctor(object, native uint)
    call instance bool @YRMOVE::NCHIN(valuetype T_set_5 A, class T_YRMOVE_subroutine_307 YRMXXX)
    brfalse L_if_end_15
    /* nop */
L_if_end_15:
    // line 3982
L_13:
    ldloc _F
    ldloc $tmpSetLiteral17
    ldloc _F
    ldftn instance void @YRMOVE::YRMNUL()
    newobj instance void T_YRMOVE_subroutine_315::.ctor(object, native uint)
    call instance bool @YRMOVE::NCHIN(valuetype T_set_5 A, class T_YRMOVE_subroutine_307 YRMXXX)
    brfalse L_if_end_16
    // line 3982
    br L_15
L_if_end_16:
    // line 3983
    ldloc _F
    ldloc $tmpSetLiteral18
    ldloc _F
    ldftn instance void @YRMOVE::YRMPRO()
    newobj instance void T_YRMOVE_subroutine_336::.ctor(object, native uint)
    call instance bool @YRMOVE::NCHIN(valuetype T_set_5 A, class T_YRMOVE_subroutine_307 YRMXXX)
    brfalse L_if_end_17
    // line 3983
    br L_16
L_if_end_17:
    // line 3984
    br L_15
    // line 3987
L_14:
    ldloc _F
    ldloc $tmpSetLiteral19
    ldloc _F
    ldftn instance void @YRMOVE::YRMNUL()
    newobj instance void T_YRMOVE_subroutine_315::.ctor(object, native uint)
    call instance bool @YRMOVE::NCHIN(valuetype T_set_5 A, class T_YRMOVE_subroutine_307 YRMXXX)
    brfalse L_if_end_18
    // line 3987
    br L_16
L_if_end_18:
    // line 3988
    ldloc _F
    ldloc $tmpSetLiteral20
    ldloc _F
    ldftn instance void @YRMOVE::YRMNUL()
    newobj instance void T_YRMOVE_subroutine_315::.ctor(object, native uint)
    call instance bool @YRMOVE::NCHIN(valuetype T_set_5 A, class T_YRMOVE_subroutine_307 YRMXXX)
    brfalse L_if_end_19
    // line 3988
    br L_16
L_if_end_19:
    // line 3989
    ldloc _F
    ldloc $tmpSetLiteral21
    ldloc _F
    ldftn instance void @YRMOVE::YRMCAS()
    newobj instance void T_YRMOVE_subroutine_340::.ctor(object, native uint)
    call instance bool @YRMOVE::NCHIN(valuetype T_set_5 A, class T_YRMOVE_subroutine_307 YRMXXX)
    brfalse L_if_end_20
    // line 3989
    br L_16
L_if_end_20:
    // line 3990
    ldloc _F
    ldloc $tmpSetLiteral22
    ldloc _F
    ldftn instance void @YRMOVE::YRMCQS()
    newobj instance void T_YRMOVE_subroutine_342::.ctor(object, native uint)
    call instance bool @YRMOVE::NCHIN(valuetype T_set_5 A, class T_YRMOVE_subroutine_307 YRMXXX)
    brfalse L_if_end_21
    // line 3990
    br L_15
L_if_end_21:
    // line 3991
    ldloc _F
    ldloc $tmpSetLiteral23
    ldloc _F
    ldftn instance void @YRMOVE::YRMNUL()
    newobj instance void T_YRMOVE_subroutine_315::.ctor(object, native uint)
    call instance bool @YRMOVE::NCHIN(valuetype T_set_5 A, class T_YRMOVE_subroutine_307 YRMXXX)
    brfalse L_if_end_22
    // line 3991
    br L_16
L_if_end_22:
    // line 3993
L_15:
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @YRMOVE::Jumpin
    // line 3995
    ldloc _F
    ldfld bool @YRMOVE::IFRF
    dup
    brfalse L_AND_shortcut_23
    pop
    ldloc _F
    ldfld bool @YRMOVE::IFRD
    ldc.i4.0
    ceq
L_AND_shortcut_23:
    brfalse L_if_end_24
    // line 3996
    ldloc _F
    ldloc _F
    ldfld valuetype T_set_100 @YRMOVE::INRF
    call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
    ldloc $tmpSetLiteral24
    call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
    call valuetype T_set_5 _SetIntersection(valuetype T_set_5 a, valuetype T_set_5 b)
    dup
    ldc.i4 0
    ldc.i4 7
    call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
    call valuetype T_set_100 _SetCastTo_T_set_100(valuetype T_set_5 s)
    stfld valuetype T_set_100 @YRMOVE::INRF
L_if_end_24:
    // line 3997
    ldloc _F
    ldfld bool @YRMOVE::IFLF
    dup
    brfalse L_AND_shortcut_25
    pop
    ldloc _F
    ldfld bool @YRMOVE::IFLD
    ldc.i4.0
    ceq
L_AND_shortcut_25:
    brfalse L_if_end_26
    // line 3998
    ldloc _F
    ldloc _F
    ldfld valuetype T_set_100 @YRMOVE::INLF
    call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
    ldloc $tmpSetLiteral25
    call valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
    call valuetype T_set_5 _SetIntersection(valuetype T_set_5 a, valuetype T_set_5 b)
    dup
    ldc.i4 0
    ldc.i4 7
    call void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
    call valuetype T_set_100 _SetCastTo_T_set_100(valuetype T_set_5 s)
    stfld valuetype T_set_100 @YRMOVE::INLF
L_if_end_26:
    // line 3999
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @YRMOVE::IFMV
    // line 4000
    ldloc _F
    ldc.i4 1
    dup
    ldc.i4 0
    ldc.i4 73
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @YRMOVE::INTW
    // line 4001
    br L_while_test_28
L_while_27:
    // line 4004
    ldsflda valuetype T_RF _G::MOVES
    ldloc _F
    ldfld int8 @YRMOVE::INTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldfld bool T_RM::RMPR
    ldloc _F
    ldfld bool @YRMOVE::IFPR
    ceq
    brfalse L_if_end_29
    // line 4005
    ldsflda valuetype T_RF _G::MOVES
    ldloc _F
    ldfld int8 @YRMOVE::INTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldfld bool T_RM::RMPR
    brfalse L_else_30
    // line 4006
    ldsflda valuetype T_RF _G::MOVES
    ldloc _F
    ldfld int8 @YRMOVE::INTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldfld int32 T_RM::RMPP
    ldloc _F
    ldfld int32 @YRMOVE::INTG
    ceq
    brfalse L_else_32
    // line 4007
    ldloc _F
    call instance void @YRMOVE::YRMCOM()
    br L_if_end_33
L_else_32:
    /* nop */
L_if_end_33:
    br L_if_end_31
L_else_30:
    // line 4010
    ldsflda valuetype T_RF _G::MOVES
    ldloc _F
    ldfld int8 @YRMOVE::INTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldfld bool T_RM::RMOO
    ldloc _F
    ldfld bool @YRMOVE::IFOO
    ceq
    brfalse L_if_end_34
    // line 4011
    ldsflda valuetype T_RF _G::MOVES
    ldloc _F
    ldfld int8 @YRMOVE::INTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldfld bool T_RM::RMOO
    brfalse L_else_35
    // line 4012
    ldsflda valuetype T_RF _G::MOVES
    ldloc _F
    ldfld int8 @YRMOVE::INTW
    call instance valuetype T_RM& T_RF::ldadr(int32)
    ldfld bool T_RM::RMQS
    ldloc _F
    ldfld bool @YRMOVE::IFQS
    ceq
    brfalse L_else_37
    // line 4013
    ldloc _F
    call instance void @YRMOVE::YRMHIT()
    br L_if_end_38
L_else_37:
    /* nop */
L_if_end_38:
    br L_if_end_36
L_else_35:
    // line 4016
    ldloc _F
    call instance void @YRMOVE::YRMCOM()
L_if_end_36:
L_if_end_34:
L_if_end_31:
L_if_end_29:
    // line 4017
    ldloc _F
    ldloc _F
    ldfld int8 @YRMOVE::INTW
    ldc.i4 1
    add
    dup
    ldc.i4 0
    ldc.i4 73
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 @YRMOVE::INTW
    /* nop */
L_while_test_28:
    ldloc _F
    ldfld int8 @YRMOVE::INTW
    ldsfld int16 _G::JNTW
    clt
    brtrue L_while_27
    // line 4019
    ldloc _F
    ldfld bool @YRMOVE::IFMV
    brfalse L_else_39
    // line 4021
    ldloc _F
    ldfld valuetype T_RM @YRMOVE::INRM
    ldsfld valuetype T_RA STRING_139    // "YOUR MOVE "
    call void MINENG(valuetype T_RM A, valuetype T_RA B)
    // line 4022
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld valuetype T_array_99 _G::MOVMS
    call string T_array_99::arrayToString(valuetype T_array_99)
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 4023
    ldloc _F
    ldfld valuetype T_RM @YRMOVE::INRM
    call void THEMOV(valuetype T_RM A)
    // line 4024
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @YRMOVE::INTB
    /* nop */
    br L_if_end_40
L_else_39:
    // line 4027
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "   ILLEGAL MOVE."
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_40:
    // line 4028
    br L_18
    // line 4030
L_16:
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " SYNTAX ERROR."
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 4031
    br L_18
L_18:
    /* nop */
L_while_test_2:
    ldloc _F
    ldfld bool @YRMOVE::INTB
    ldc.i4.0
    ceq
    dup
    brtrue L_OR_shortcut_41
    pop
    ldloc _F
    ldfld bool @YRMOVE::Jumpin
L_OR_shortcut_41:
    brtrue L_while_1
L_17:
    /* nop */
    leave L_Epilogue
}
catch [lpcRuntime]LPC.NonLocalGoto
{
    ldfld int32 [lpcRuntime]LPC.NonLocalGoto::label
    dup
    ldc.i4 11
    beq GOTO_L_17
    dup
    ldc.i4 12
    beq GOTO_L_19
    rethrow
GOTO_L_17:
    leave L_17
GOTO_L_19:
    leave L_19
}

L_Epilogue:
    ret
}

// line 0
//================================================================================
// scope: global scope (level : 0)

// line 1

.method static
void _Program()
{
    .maxstack 32

    .locals init()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    ldc.i4 0
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

L_Entry:
.try
{
    // line 4041
    ldc.i4 0 // (false)
    stsfld bool _G::Jumpin
    // line 4043
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " HI.  THIS IS CHESS .5"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 4044
    call void INICON()
    // line 4046
L_1:
    ldsflda valuetype T_RB _G::BOARD
    call void INITAL(valuetype T_RB& A)
    // line 4048
L_2:
L_repeat_1:
    // line 4050
    ldsfld bool _G::Jumpin
    brfalse L_if_end_2
    // line 4050
    br L_3
L_if_end_2:
    // line 4052
L_repeat_3:
    // line 4053
    call void YRMOVE()
    /* nop */
    ldsfld bool _G::SWRE
    brfalse L_repeat_3
    // line 4058
L_3:
    ldc.i4 0 // (false)
    stsfld bool _G::Jumpin
    // line 4060
L_repeat_4:
    // line 4061
    call void MYMOVE()
    // line 4062
    ldsfld int32 _G::GOING
    ldc.i4 0
    cgt
    brfalse L_if_end_5
    // line 4063
    ldsfld int32 _G::GOING
    ldc.i4 1
    sub
    stsfld int32 _G::GOING
L_if_end_5:
    ldsfld int32 _G::GOING
    ldc.i4 0
    ceq
    brfalse L_repeat_4
    /* nop */
    ldc.i4 0 // (false)
    brfalse L_repeat_1
L_9:
    /* nop */
    leave L_Epilogue
}
catch [lpcRuntime]LPC.NonLocalGoto
{
    ldfld int32 [lpcRuntime]LPC.NonLocalGoto::label
    dup
    ldc.i4 6
    beq GOTO_L_1
    dup
    ldc.i4 5
    beq GOTO_L_2
    dup
    ldc.i4 4
    beq GOTO_L_9
    rethrow
GOTO_L_1:
    leave L_1
GOTO_L_2:
    leave L_2
GOTO_L_9:
    leave L_9
}

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

// line 0xfeefee

//================================================================================
// internal helpers

.method static bool _SetContains(valuetype T_SQ s, int32 val)
{
    ldarga s
    ldc.i4 4
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static bool _SetContains(valuetype T_SX s, int32 val)
{
    ldarga s
    ldc.i4 4
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static bool _SetContains(valuetype T_set_100 s, int32 val)
{
    ldarga s
    ldc.i4 4
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static bool _SetContains(valuetype T_set_5 s, int32 val)
{
    ldarga s
    ldc.i4 32
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static bool _SetIsSubset(valuetype T_SX a, valuetype T_SX b)
{
    ldarga a
    ldarga b
    ldc.i4 4
    call bool [lpcRuntime]LPC.Set::IsSubset(uint8*, uint8*, int32)
    ret
}

.method static valuetype T_SQ _SetCastTo_T_SQ(valuetype T_set_5 s)
{
    .locals init (valuetype T_SQ result)

    ldloca result
    ldarga s
    ldc.i4 4
    cpblk
    ldloc result
    ret
}

.method static valuetype T_SX _SetCastTo_T_SX(valuetype T_set_5 s)
{
    .locals init (valuetype T_SX result)

    ldloca result
    ldarga s
    ldc.i4 4
    cpblk
    ldloc result
    ret
}

.method static valuetype T_SX _SetDifference(valuetype T_SX a, valuetype T_SX b)
{
    .locals init (valuetype T_SX result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 4
    call void [lpcRuntime]LPC.Set::Difference(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_SX _SetIntersection(valuetype T_SX a, valuetype T_SX b)
{
    .locals init (valuetype T_SX result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 4
    call void [lpcRuntime]LPC.Set::Intersection(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_SX _SetUnion(valuetype T_SX a, valuetype T_SX b)
{
    .locals init (valuetype T_SX result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 4
    call void [lpcRuntime]LPC.Set::Union(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_set_100 _SetCastTo_T_set_100(valuetype T_set_5 s)
{
    .locals init (valuetype T_set_100 result)

    ldloca result
    ldarga s
    ldc.i4 4
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_SQ s)
{
    .locals init (valuetype T_set_5 result)

    ldloca result
    ldarga s
    ldc.i4 4
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_SX s)
{
    .locals init (valuetype T_set_5 result)

    ldloca result
    ldarga s
    ldc.i4 4
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_5 _SetCastTo_T_set_5(valuetype T_set_100 s)
{
    .locals init (valuetype T_set_5 result)

    ldloca result
    ldarga s
    ldc.i4 4
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_5 _SetDifference(valuetype T_set_5 a, valuetype T_set_5 b)
{
    .locals init (valuetype T_set_5 result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 32
    call void [lpcRuntime]LPC.Set::Difference(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_set_5 _SetIntersection(valuetype T_set_5 a, valuetype T_set_5 b)
{
    .locals init (valuetype T_set_5 result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 32
    call void [lpcRuntime]LPC.Set::Intersection(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_set_5 _SetUnion(valuetype T_set_5 a, valuetype T_set_5 b)
{
    .locals init (valuetype T_set_5 result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 32
    call void [lpcRuntime]LPC.Set::Union(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static void _SetCheck(valuetype T_set_5 s, int32 min, int32 max)
{
    ldarga s
    ldc.i4 32
    ldarg min
    ldarg max
    call void [lpcRuntime]LPC.Set::RTCheck(uint8*, int32, int32, int32)
    ret
}



// line 0xfeefee

//================================================================================
// global string literals

// "          "
.data STRING_56_DATA = bytearray( 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_56 at STRING_56_DATA

// "                              "
.data STRING_130_DATA = bytearray( 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_array_99 STRING_130 at STRING_130_DATA

// "    *P    "
.data STRING_8_DATA = bytearray( 20 20 20 20 2a 50 20 20 20 20 )
.field static valuetype T_RA STRING_8 at STRING_8_DATA

// "    *P/  1"
.data STRING_9_DATA = bytearray( 20 20 20 20 2a 50 2f 20 20 31 )
.field static valuetype T_RA STRING_9 at STRING_9_DATA

// "    *P/ R "
.data STRING_11_DATA = bytearray( 20 20 20 20 2a 50 2f 20 52 20 )
.field static valuetype T_RA STRING_11 at STRING_11_DATA

// "    *P/ R1"
.data STRING_13_DATA = bytearray( 20 20 20 20 2a 50 2f 20 52 31 )
.field static valuetype T_RA STRING_13 at STRING_13_DATA

// "    *P/KR "
.data STRING_15_DATA = bytearray( 20 20 20 20 2a 50 2f 4b 52 20 )
.field static valuetype T_RA STRING_15 at STRING_15_DATA

// "    *P/KR1"
.data STRING_17_DATA = bytearray( 20 20 20 20 2a 50 2f 4b 52 31 )
.field static valuetype T_RA STRING_17 at STRING_17_DATA

// "    -   R1"
.data STRING_44_DATA = bytearray( 20 20 20 20 2d 20 20 20 52 31 )
.field static valuetype T_RA STRING_44 at STRING_44_DATA

// "    -  KR1"
.data STRING_45_DATA = bytearray( 20 20 20 20 2d 20 20 4b 52 31 )
.field static valuetype T_RA STRING_45 at STRING_45_DATA

// "    BLACK "
.data STRING_2_DATA = bytearray( 20 20 20 20 42 4c 41 43 4b 20 )
.field static valuetype T_RA STRING_2 at STRING_2_DATA

// "    WHITE "
.data STRING_1_DATA = bytearray( 20 20 20 20 57 48 49 54 45 20 )
.field static valuetype T_RA STRING_1 at STRING_1_DATA

// "   NO ONE "
.data STRING_3_DATA = bytearray( 20 20 20 4e 4f 20 4f 4e 45 20 )
.field static valuetype T_RA STRING_3 at STRING_3_DATA

// "  MY MOVE "
.data STRING_138_DATA = bytearray( 20 20 4d 59 20 4d 4f 56 45 20 )
.field static valuetype T_RA STRING_138 at STRING_138_DATA

// "  R *P/KR1"
.data STRING_33_DATA = bytearray( 20 20 52 20 2a 50 2f 4b 52 31 )
.field static valuetype T_RA STRING_33 at STRING_33_DATA

// " ATTACK MAP NOT TO OR FROM    "
.data STRING_90_DATA = bytearray( 20 41 54 54 41 43 4b 20 4d 41 50 20 4e 4f 54 20 54 4f 20 4f 52 20 46 52 4f 4d 20 20 20 20 )
.field static valuetype T_array_99 STRING_90 at STRING_90_DATA

// " DIGIT EXPECTED               "
.data STRING_58_DATA = bytearray( 20 44 49 47 49 54 20 45 58 50 45 43 54 45 44 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_array_99 STRING_58 at STRING_58_DATA

// " ENPASSANT FILE OMITTED       "
.data STRING_98_DATA = bytearray( 20 45 4e 50 41 53 53 41 4e 54 20 46 49 4c 45 20 4f 4d 49 54 54 45 44 20 20 20 20 20 20 20 )
.field static valuetype T_array_99 STRING_98 at STRING_98_DATA

// " ENTER MOVE OR TYPE GO.       "
.data STRING_55_DATA = bytearray( 20 45 4e 54 45 52 20 4d 4f 56 45 20 4f 52 20 54 59 50 45 20 47 4f 2e 20 20 20 20 20 20 20 )
.field static valuetype T_array_99 STRING_55 at STRING_55_DATA

// " ILLEGAL  VARIABLE NAME       "
.data STRING_89_DATA = bytearray( 20 49 4c 4c 45 47 41 4c 20 20 56 41 52 49 41 42 4c 45 20 4e 41 4d 45 20 20 20 20 20 20 20 )
.field static valuetype T_array_99 STRING_89 at STRING_89_DATA

// " ILLEGAL BOARD OPTION         "
.data STRING_59_DATA = bytearray( 20 49 4c 4c 45 47 41 4c 20 42 4f 41 52 44 20 4f 50 54 49 4f 4e 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_array_99 STRING_59 at STRING_59_DATA

// " ILLEGAL ENPASSANT FILE       "
.data STRING_107_DATA = bytearray( 20 49 4c 4c 45 47 41 4c 20 45 4e 50 41 53 53 41 4e 54 20 46 49 4c 45 20 20 20 20 20 20 20 )
.field static valuetype T_array_99 STRING_107 at STRING_107_DATA

// " INVALID STATUS OPTION        "
.data STRING_115_DATA = bytearray( 20 49 4e 56 41 4c 49 44 20 53 54 41 54 55 53 20 4f 50 54 49 4f 4e 20 20 20 20 20 20 20 20 )
.field static valuetype T_array_99 STRING_115 at STRING_115_DATA

// " INVALID SWITCH OPTION        "
.data STRING_97_DATA = bytearray( 20 49 4e 56 41 4c 49 44 20 53 57 49 54 43 48 20 4f 50 54 49 4f 4e 20 20 20 20 20 20 20 20 )
.field static valuetype T_array_99 STRING_97 at STRING_97_DATA

// " NUMBER TOO LARGE             "
.data STRING_57_DATA = bytearray( 20 4e 55 4d 42 45 52 20 54 4f 4f 20 4c 41 52 47 45 20 20 20 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_array_99 STRING_57 at STRING_57_DATA

// "* IMWALID COMMAND             "
.data STRING_129_DATA = bytearray( 2a 20 49 4d 57 41 4c 49 44 20 43 4f 4d 4d 41 4e 44 20 20 20 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_array_99 STRING_129 at STRING_129_DATA

// "-         "
.data STRING_131_DATA = bytearray( 2d 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_131 at STRING_131_DATA

// "-O        "
.data STRING_133_DATA = bytearray( 2d 4f 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_133 at STRING_133_DATA

// ".         "
.data STRING_134_DATA = bytearray( 2e 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_134 at STRING_134_DATA

// "/  1*P    "
.data STRING_10_DATA = bytearray( 2f 20 20 31 2a 50 20 20 20 20 )
.field static valuetype T_RA STRING_10 at STRING_10_DATA

// "/  1*P/  1"
.data STRING_19_DATA = bytearray( 2f 20 20 31 2a 50 2f 20 20 31 )
.field static valuetype T_RA STRING_19 at STRING_19_DATA

// "/  1*P/ R "
.data STRING_21_DATA = bytearray( 2f 20 20 31 2a 50 2f 20 52 20 )
.field static valuetype T_RA STRING_21 at STRING_21_DATA

// "/  1*P/ R1"
.data STRING_24_DATA = bytearray( 2f 20 20 31 2a 50 2f 20 52 31 )
.field static valuetype T_RA STRING_24 at STRING_24_DATA

// "/  1*P/KR "
.data STRING_28_DATA = bytearray( 2f 20 20 31 2a 50 2f 4b 52 20 )
.field static valuetype T_RA STRING_28 at STRING_28_DATA

// "/  1*P/KR1"
.data STRING_31_DATA = bytearray( 2f 20 20 31 2a 50 2f 4b 52 31 )
.field static valuetype T_RA STRING_31 at STRING_31_DATA

// "/  1-   R1"
.data STRING_46_DATA = bytearray( 2f 20 20 31 2d 20 20 20 52 31 )
.field static valuetype T_RA STRING_46 at STRING_46_DATA

// "/  1-  KR1"
.data STRING_48_DATA = bytearray( 2f 20 20 31 2d 20 20 4b 52 31 )
.field static valuetype T_RA STRING_48 at STRING_48_DATA

// "/ R *P    "
.data STRING_12_DATA = bytearray( 2f 20 52 20 2a 50 20 20 20 20 )
.field static valuetype T_RA STRING_12 at STRING_12_DATA

// "/ R *P/  1"
.data STRING_22_DATA = bytearray( 2f 20 52 20 2a 50 2f 20 20 31 )
.field static valuetype T_RA STRING_22 at STRING_22_DATA

// "/ R *P/ R "
.data STRING_20_DATA = bytearray( 2f 20 52 20 2a 50 2f 20 52 20 )
.field static valuetype T_RA STRING_20 at STRING_20_DATA

// "/ R *P/ R1"
.data STRING_26_DATA = bytearray( 2f 20 52 20 2a 50 2f 20 52 31 )
.field static valuetype T_RA STRING_26 at STRING_26_DATA

// "/ R *P/KR "
.data STRING_30_DATA = bytearray( 2f 20 52 20 2a 50 2f 4b 52 20 )
.field static valuetype T_RA STRING_30 at STRING_30_DATA

// "/ R -   R1"
.data STRING_47_DATA = bytearray( 2f 20 52 20 2d 20 20 20 52 31 )
.field static valuetype T_RA STRING_47 at STRING_47_DATA

// "/ R -  KR1"
.data STRING_49_DATA = bytearray( 2f 20 52 20 2d 20 20 4b 52 31 )
.field static valuetype T_RA STRING_49 at STRING_49_DATA

// "/ R1*P    "
.data STRING_14_DATA = bytearray( 2f 20 52 31 2a 50 20 20 20 20 )
.field static valuetype T_RA STRING_14 at STRING_14_DATA

// "/ R1*P/  1"
.data STRING_23_DATA = bytearray( 2f 20 52 31 2a 50 2f 20 20 31 )
.field static valuetype T_RA STRING_23 at STRING_23_DATA

// "/ R1*P/ R "
.data STRING_25_DATA = bytearray( 2f 20 52 31 2a 50 2f 20 52 20 )
.field static valuetype T_RA STRING_25 at STRING_25_DATA

// "/ R1*P/ R1"
.data STRING_35_DATA = bytearray( 2f 20 52 31 2a 50 2f 20 52 31 )
.field static valuetype T_RA STRING_35 at STRING_35_DATA

// "/ R1*P/KR "
.data STRING_37_DATA = bytearray( 2f 20 52 31 2a 50 2f 4b 52 20 )
.field static valuetype T_RA STRING_37 at STRING_37_DATA

// "/ R1*P/KR1"
.data STRING_40_DATA = bytearray( 2f 20 52 31 2a 50 2f 4b 52 31 )
.field static valuetype T_RA STRING_40 at STRING_40_DATA

// "/ R1-   R1"
.data STRING_50_DATA = bytearray( 2f 20 52 31 2d 20 20 20 52 31 )
.field static valuetype T_RA STRING_50 at STRING_50_DATA

// "/ R1-  KR1"
.data STRING_52_DATA = bytearray( 2f 20 52 31 2d 20 20 4b 52 31 )
.field static valuetype T_RA STRING_52 at STRING_52_DATA

// "/KR *P    "
.data STRING_16_DATA = bytearray( 2f 4b 52 20 2a 50 20 20 20 20 )
.field static valuetype T_RA STRING_16 at STRING_16_DATA

// "/KR *P/  1"
.data STRING_27_DATA = bytearray( 2f 4b 52 20 2a 50 2f 20 20 31 )
.field static valuetype T_RA STRING_27 at STRING_27_DATA

// "/KR *P/ R "
.data STRING_29_DATA = bytearray( 2f 4b 52 20 2a 50 2f 20 52 20 )
.field static valuetype T_RA STRING_29 at STRING_29_DATA

// "/KR *P/ R1"
.data STRING_36_DATA = bytearray( 2f 4b 52 20 2a 50 2f 20 52 31 )
.field static valuetype T_RA STRING_36 at STRING_36_DATA

// "/KR *P/KR "
.data STRING_38_DATA = bytearray( 2f 4b 52 20 2a 50 2f 4b 52 20 )
.field static valuetype T_RA STRING_38 at STRING_38_DATA

// "/KR *P/KR1"
.data STRING_42_DATA = bytearray( 2f 4b 52 20 2a 50 2f 4b 52 31 )
.field static valuetype T_RA STRING_42 at STRING_42_DATA

// "/KR -   R1"
.data STRING_51_DATA = bytearray( 2f 4b 52 20 2d 20 20 20 52 31 )
.field static valuetype T_RA STRING_51 at STRING_51_DATA

// "/KR -  KR1"
.data STRING_53_DATA = bytearray( 2f 4b 52 20 2d 20 20 4b 52 31 )
.field static valuetype T_RA STRING_53 at STRING_53_DATA

// "/KR1*P    "
.data STRING_18_DATA = bytearray( 2f 4b 52 31 2a 50 20 20 20 20 )
.field static valuetype T_RA STRING_18 at STRING_18_DATA

// "/KR1*P/  1"
.data STRING_32_DATA = bytearray( 2f 4b 52 31 2a 50 2f 20 20 31 )
.field static valuetype T_RA STRING_32 at STRING_32_DATA

// "/KR1*P/ R "
.data STRING_34_DATA = bytearray( 2f 4b 52 31 2a 50 2f 20 52 20 )
.field static valuetype T_RA STRING_34 at STRING_34_DATA

// "/KR1*P/ R1"
.data STRING_39_DATA = bytearray( 2f 4b 52 31 2a 50 2f 20 52 31 )
.field static valuetype T_RA STRING_39 at STRING_39_DATA

// "/KR1*P/KR "
.data STRING_41_DATA = bytearray( 2f 4b 52 31 2a 50 2f 4b 52 20 )
.field static valuetype T_RA STRING_41 at STRING_41_DATA

// "/KR1*P/KR1"
.data STRING_43_DATA = bytearray( 2f 4b 52 31 2a 50 2f 4b 52 31 )
.field static valuetype T_RA STRING_43 at STRING_43_DATA

// "/KR1-  KR1"
.data STRING_54_DATA = bytearray( 2f 4b 52 31 2d 20 20 4b 52 31 )
.field static valuetype T_RA STRING_54 at STRING_54_DATA

// "BLACK KING"
.data STRING_6_DATA = bytearray( 42 4c 41 43 4b 20 4b 49 4e 47 )
.field static valuetype T_RA STRING_6 at STRING_6_DATA

// "BLACK LONG"
.data STRING_7_DATA = bytearray( 42 4c 41 43 4b 20 4c 4f 4e 47 )
.field static valuetype T_RA STRING_7 at STRING_7_DATA

// "BO        "
.data STRING_116_DATA = bytearray( 42 4f 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_116 at STRING_116_DATA

// "CHECK     "
.data STRING_135_DATA = bytearray( 43 48 45 43 4b 20 20 20 20 20 )
.field static valuetype T_RA STRING_135 at STRING_135_DATA

// "D         "
.data STRING_108_DATA = bytearray( 44 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_108 at STRING_108_DATA

// "EC        "
.data STRING_91_DATA = bytearray( 45 43 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_91 at STRING_91_DATA

// "EN        "
.data STRING_117_DATA = bytearray( 45 4e 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_117 at STRING_117_DATA

// "EP        "
.data STRING_109_DATA = bytearray( 45 50 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_109 at STRING_109_DATA

// "FKPSHD    "
.data STRING_60_DATA = bytearray( 46 4b 50 53 48 44 20 20 20 20 )
.field static valuetype T_RA STRING_60 at STRING_60_DATA

// "FKSANQ    "
.data STRING_61_DATA = bytearray( 46 4b 53 41 4e 51 20 20 20 20 )
.field static valuetype T_RA STRING_61 at STRING_61_DATA

// "FMAXMT    "
.data STRING_62_DATA = bytearray( 46 4d 41 58 4d 54 20 20 20 20 )
.field static valuetype T_RA STRING_62 at STRING_62_DATA

// "FNODEL    "
.data STRING_63_DATA = bytearray( 46 4e 4f 44 45 4c 20 20 20 20 )
.field static valuetype T_RA STRING_63 at STRING_63_DATA

// "FPADKB    "
.data STRING_69_DATA = bytearray( 46 50 41 44 4b 42 20 20 20 20 )
.field static valuetype T_RA STRING_69 at STRING_69_DATA

// "FPADKF    "
.data STRING_68_DATA = bytearray( 46 50 41 44 4b 46 20 20 20 20 )
.field static valuetype T_RA STRING_68 at STRING_68_DATA

// "FPADKN    "
.data STRING_70_DATA = bytearray( 46 50 41 44 4b 4e 20 20 20 20 )
.field static valuetype T_RA STRING_70 at STRING_70_DATA

// "FPADKR    "
.data STRING_88_DATA = bytearray( 46 50 41 44 4b 52 20 20 20 20 )
.field static valuetype T_RA STRING_88 at STRING_88_DATA

// "FPADQB    "
.data STRING_66_DATA = bytearray( 46 50 41 44 51 42 20 20 20 20 )
.field static valuetype T_RA STRING_66 at STRING_66_DATA

// "FPADQF    "
.data STRING_67_DATA = bytearray( 46 50 41 44 51 46 20 20 20 20 )
.field static valuetype T_RA STRING_67 at STRING_67_DATA

// "FPADQN    "
.data STRING_65_DATA = bytearray( 46 50 41 44 51 4e 20 20 20 20 )
.field static valuetype T_RA STRING_65 at STRING_65_DATA

// "FPADQR    "
.data STRING_64_DATA = bytearray( 46 50 41 44 51 52 20 20 20 20 )
.field static valuetype T_RA STRING_64 at STRING_64_DATA

// "FPADWR    "
.data STRING_71_DATA = bytearray( 46 50 41 44 57 52 20 20 20 20 )
.field static valuetype T_RA STRING_71 at STRING_71_DATA

// "FPBLOK    "
.data STRING_72_DATA = bytearray( 46 50 42 4c 4f 4b 20 20 20 20 )
.field static valuetype T_RA STRING_72 at STRING_72_DATA

// "FPCONN    "
.data STRING_73_DATA = bytearray( 46 50 43 4f 4e 4e 20 20 20 20 )
.field static valuetype T_RA STRING_73 at STRING_73_DATA

// "FPFLNX    "
.data STRING_74_DATA = bytearray( 46 50 46 4c 4e 58 20 20 20 20 )
.field static valuetype T_RA STRING_74 at STRING_74_DATA

// "FRDUBL    "
.data STRING_75_DATA = bytearray( 46 52 44 55 42 4c 20 20 20 20 )
.field static valuetype T_RA STRING_75 at STRING_75_DATA

// "FRK7TH    "
.data STRING_76_DATA = bytearray( 46 52 4b 37 54 48 20 20 20 20 )
.field static valuetype T_RA STRING_76 at STRING_76_DATA

// "FTRADE    "
.data STRING_77_DATA = bytearray( 46 54 52 41 44 45 20 20 20 20 )
.field static valuetype T_RA STRING_77 at STRING_77_DATA

// "FTRDSL    "
.data STRING_78_DATA = bytearray( 46 54 52 44 53 4c 20 20 20 20 )
.field static valuetype T_RA STRING_78 at STRING_78_DATA

// "FTRPDK    "
.data STRING_79_DATA = bytearray( 46 54 52 50 44 4b 20 20 20 20 )
.field static valuetype T_RA STRING_79 at STRING_79_DATA

// "FTRPWN    "
.data STRING_80_DATA = bytearray( 46 54 52 50 57 4e 20 20 20 20 )
.field static valuetype T_RA STRING_80 at STRING_80_DATA

// "FWKING    "
.data STRING_81_DATA = bytearray( 46 57 4b 49 4e 47 20 20 20 20 )
.field static valuetype T_RA STRING_81 at STRING_81_DATA

// "FWMAJM    "
.data STRING_82_DATA = bytearray( 46 57 4d 41 4a 4d 20 20 20 20 )
.field static valuetype T_RA STRING_82 at STRING_82_DATA

// "FWMINM    "
.data STRING_83_DATA = bytearray( 46 57 4d 49 4e 4d 20 20 20 20 )
.field static valuetype T_RA STRING_83 at STRING_83_DATA

// "FWPAWN    "
.data STRING_84_DATA = bytearray( 46 57 50 41 57 4e 20 20 20 20 )
.field static valuetype T_RA STRING_84 at STRING_84_DATA

// "FWROOK    "
.data STRING_85_DATA = bytearray( 46 57 52 4f 4f 4b 20 20 20 20 )
.field static valuetype T_RA STRING_85 at STRING_85_DATA

// "G         "
.data STRING_110_DATA = bytearray( 47 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_110 at STRING_110_DATA

// "GO        "
.data STRING_118_DATA = bytearray( 47 4f 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_118 at STRING_118_DATA

// "ILLEGAL LET VARIABLE NAME     "
.data STRING_87_DATA = bytearray( 49 4c 4c 45 47 41 4c 20 4c 45 54 20 56 41 52 49 41 42 4c 45 20 4e 41 4d 45 20 20 20 20 20 )
.field static valuetype T_array_99 STRING_87 at STRING_87_DATA

// "IN        "
.data STRING_119_DATA = bytearray( 49 4e 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_119 at STRING_119_DATA

// "K         "
.data STRING_103_DATA = bytearray( 4b 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_103 at STRING_103_DATA

// "KB        "
.data STRING_104_DATA = bytearray( 4b 42 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_104 at STRING_104_DATA

// "KN        "
.data STRING_105_DATA = bytearray( 4b 4e 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_105 at STRING_105_DATA

// "KR        "
.data STRING_106_DATA = bytearray( 4b 52 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_106 at STRING_106_DATA

// "L         "
.data STRING_111_DATA = bytearray( 4c 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_111 at STRING_111_DATA

// "LE        "
.data STRING_120_DATA = bytearray( 4c 45 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_120 at STRING_120_DATA

// "MATE      "
.data STRING_136_DATA = bytearray( 4d 41 54 45 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_136 at STRING_136_DATA

// "N         "
.data STRING_112_DATA = bytearray( 4e 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_112 at STRING_112_DATA

// "O-O       "
.data STRING_132_DATA = bytearray( 4f 2d 4f 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_132 at STRING_132_DATA

// "OO        "
.data STRING_113_DATA = bytearray( 4f 4f 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_113 at STRING_113_DATA

// "OOO       "
.data STRING_114_DATA = bytearray( 4f 4f 4f 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_114 at STRING_114_DATA

// "PA        "
.data STRING_92_DATA = bytearray( 50 41 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_92 at STRING_92_DATA

// "PB        "
.data STRING_121_DATA = bytearray( 50 42 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_121 at STRING_121_DATA

// "PL        "
.data STRING_123_DATA = bytearray( 50 4c 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_123 at STRING_123_DATA

// "PM        "
.data STRING_124_DATA = bytearray( 50 4d 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_124 at STRING_124_DATA

// "PO        "
.data STRING_122_DATA = bytearray( 50 4f 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_122 at STRING_122_DATA

// "PR        "
.data STRING_125_DATA = bytearray( 50 52 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_125 at STRING_125_DATA

// "PS        "
.data STRING_93_DATA = bytearray( 50 53 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_93 at STRING_93_DATA

// "Q         "
.data STRING_102_DATA = bytearray( 51 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_102 at STRING_102_DATA

// "QB        "
.data STRING_101_DATA = bytearray( 51 42 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_101 at STRING_101_DATA

// "QN        "
.data STRING_100_DATA = bytearray( 51 4e 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_100 at STRING_100_DATA

// "QR        "
.data STRING_99_DATA = bytearray( 51 52 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_99 at STRING_99_DATA

// "RE        "
.data STRING_94_DATA = bytearray( 52 45 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_94 at STRING_94_DATA

// "ST        "
.data STRING_126_DATA = bytearray( 53 54 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_126 at STRING_126_DATA

// "STALEMATE."
.data STRING_137_DATA = bytearray( 53 54 41 4c 45 4d 41 54 45 2e )
.field static valuetype T_RA STRING_137 at STRING_137_DATA

// "SU        "
.data STRING_95_DATA = bytearray( 53 55 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_95 at STRING_95_DATA

// "SW        "
.data STRING_127_DATA = bytearray( 53 57 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_127 at STRING_127_DATA

// "TR        "
.data STRING_96_DATA = bytearray( 54 52 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_96 at STRING_96_DATA

// "WH        "
.data STRING_128_DATA = bytearray( 57 48 20 20 20 20 20 20 20 20 )
.field static valuetype T_RA STRING_128 at STRING_128_DATA

// "WHITE KING"
.data STRING_4_DATA = bytearray( 57 48 49 54 45 20 4b 49 4e 47 )
.field static valuetype T_RA STRING_4 at STRING_4_DATA

// "WHITE LONG"
.data STRING_5_DATA = bytearray( 57 48 49 54 45 20 4c 4f 4e 47 )
.field static valuetype T_RA STRING_5 at STRING_5_DATA

// "WINDOW    "
.data STRING_86_DATA = bytearray( 57 49 4e 44 4f 57 20 20 20 20 )
.field static valuetype T_RA STRING_86 at STRING_86_DATA

// "YOUR MOVE "
.data STRING_139_DATA = bytearray( 59 4f 55 52 20 4d 4f 56 45 20 )
.field static valuetype T_RA STRING_139 at STRING_139_DATA


