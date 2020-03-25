
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

.line 0 "startrek.pas"

.line 65
//================================================================================
// scope: expp (level : 2)

.class @expp
{
    // parameters
    .field public float64 r

    // local variables
    .field public float64 _fnvalue
    .field public int32 i
    .field public float64 m
    .field public float64 t

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 84
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


.line 95
//================================================================================
// scope: distance (level : 2)

.line 0xfeefee

// TYPE sectxy = record;
.class value explicit T_sectxy
{
    // alignment = 1
    .size 2
    
    .field [0] public int8 x
    .field [1] public int8 y
}

.class @distance
{
    // parameters
    .field public int8 Pos1x
    .field public int8 Pos1y
    .field public valuetype T_sectxy Pos2

    // local variables
    .field public int32 _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 100
//================================================================================
// scope: radians (level : 2)

.class @radians
{
    // parameters
    .field public int32 Degrees

    // local variables
    .field public float64 _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 105
//================================================================================
// scope: interval (level : 2)

.class @interval
{
    // parameters
    .field public int32 Maxvalue
    .field public int32 Minvalue
    .field public int32 Number

    // local variables
    .field public int32 _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 116
//================================================================================
// scope: reinitialize (level : 2)

.line 0xfeefee

// TYPE array_1 = array [1 .. 20] of uint8;
.class value explicit T_array_1
{
    // elem size = 1
    // alignment = 1
    .size 20

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 20)
        ldarg index
        ldc.i4 20
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

    .method public static string arrayToString(valuetype T_array_1)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 20
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

.line 0xfeefee

// TYPE devicerec = record;
.class value explicit T_devicerec
{
    // alignment = 4
    .size 24
    
    .field [0] public valuetype T_array_1 Name
    .field [20] public int32 Downtime
}

.line 0xfeefee

// TYPE array_2 = array [48 .. 55] of valuetype T_devicerec;
.class value explicit T_array_2
{
    // elem size = 24
    // alignment = 4
    .size 192

    .field [0] public valuetype T_devicerec elem

    .method public valuetype T_devicerec& ldadr(int32 index)
    {
        // check(index >= 48)
        ldarg index
        ldc.i4 48
        blt badIndex
    
        // check(index <= 55)
        ldarg index
        ldc.i4 55
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 48
        sub
        ldc.i4 24
        mul
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

.class @reinitialize
{
    // local variables
    .field public uint8 Ch

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 125
//================================================================================
// scope: initialize (level : 2)

.line 0xfeefee

// TYPE array_11 = array [0 .. 6] of uint8;
.class value explicit T_array_11
{
    // elem size = 1
    // alignment = 1
    .size 7

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 6)
        ldarg index
        ldc.i4 6
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

.line 0xfeefee

// TYPE array_12 = array [1 .. 10] of uint8;
.class value explicit T_array_12
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

    .method public static string arrayToString(valuetype T_array_12)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 10
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

.line 0xfeefee

// TYPE array_13 = array [0 .. 4] of valuetype T_array_12;
.class value explicit T_array_13
{
    // elem size = 10
    // alignment = 1
    .size 50

    .field [0] public valuetype T_array_12 elem

    .method public valuetype T_array_12& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 4)
        ldarg index
        ldc.i4 4
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

.line 0xfeefee

// TYPE quadxy = record;
.class value explicit T_quadxy
{
    // alignment = 1
    .size 2
    
    .field [0] public int8 x
    .field [1] public int8 y
}

.line 0xfeefee

// TYPE quadrec = record;
.class value explicit T_quadrec
{
    // alignment = 1
    .size 5
    
    .field [0] public bool Ishistory
    .field [1] public int8 Klingbasenum
    .field [2] public int8 Klingnum
    .field [3] public int8 Fedbasenum
    .field [4] public int8 Starnum
}

.line 0xfeefee

// TYPE array_19 = array [0 .. 7] of valuetype T_quadrec;
.class value explicit T_array_19
{
    // elem size = 5
    // alignment = 1
    .size 40

    .field [0] public valuetype T_quadrec elem

    .method public valuetype T_quadrec& ldadr(int32 index)
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

.line 0xfeefee

// TYPE array_20 = array [0 .. 7] of valuetype T_array_19;
.class value explicit T_array_20
{
    // elem size = 40
    // alignment = 1
    .size 320

    .field [0] public valuetype T_array_19 elem

    .method public valuetype T_array_19& ldadr(int32 index)
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

.class @initialize
{
    // local variables
    .field public int32 i
    .field public int32 j
    .field public int32 Rnum
    .field public int32 Totalfedbase

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 191
//================================================================================
// scope: setcondition (level : 2)

.line 0xfeefee

// TYPE array_21 = array [0 .. 7] of int32;
.class value explicit T_array_21
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

.line 0xfeefee

// TYPE array_22 = array [0 .. 7] of valuetype T_array_21;
.class value explicit T_array_22
{
    // elem size = 32
    // alignment = 4
    .size 256

    .field [0] public valuetype T_array_21 elem

    .method public valuetype T_array_21& ldadr(int32 index)
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

.class @setcondition
{
    // local variables
    .field public int32 i
    .field public int32 j

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 211
//================================================================================
// scope: klingonattack (level : 2)

.line 0xfeefee

// TYPE array_23 = array [1 .. 8] of uint8;
.class value explicit T_klingonattack_array_23
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

    .method public static string arrayToString(valuetype T_klingonattack_array_23)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 8
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

.line 0xfeefee

// TYPE klingonrec = record;
.class value explicit T_klingonrec
{
    // alignment = 4
    .size 8
    
    .field [0] public valuetype T_sectxy Position
    .field [4] public int32 Energyleft
}

.line 0xfeefee

// TYPE array_24 = array [0 .. 11] of valuetype T_klingonrec;
.class value explicit T_array_24
{
    // elem size = 8
    // alignment = 4
    .size 96

    .field [0] public valuetype T_klingonrec elem

    .method public valuetype T_klingonrec& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 11)
        ldarg index
        ldc.i4 11
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

.class @klingonattack
{
    // local variables
    .field public int32 Hit
    .field public int32 i
    .field public valuetype T_klingonattack_array_23 Shiptype

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 241
//================================================================================
// scope: printdigit (level : 2)

.class @printdigit
{
    // parameters
    .field public bool* Mustprint
    .field public int32 Number

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 253
//================================================================================
// scope: setupquad_setupstuff (level : 3)

.class @setupquad_setupstuff
{
    // slink
    .field public class @setupquad _slink

    // parameters
    .field public int32 Count
    .field public int32 Object

    // local variables
    .field public int32 x
    .field public int32 y

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 250
//================================================================================
// scope: setupquad (level : 2)

.line 0xfeefee

// TYPE set_27 = set of 0 .. 6
.class value explicit T_set_27
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
        call instance void T_set_27::addValue(int32)
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

.class @setupquad
{
    // parameters
    .field public valuetype T_sectxy* Entsect
    .field public valuetype T_quadxy Quad

    // local variables
    .field public int32 i
    .field public int32 j
    .field public int32 Klingindex
    .field public int32 Novacount

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 253

    .method public
    void Setupstuff(int32 Object, int32 Count)
    {
        .maxstack 32
    
        .locals init(class @setupquad_setupstuff _F)
        
        newobj instance void @setupquad_setupstuff::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @setupquad @setupquad_setupstuff::_slink
        
        ldloc _F
        ldarg Count
        stfld int32 @setupquad_setupstuff::Count
        
        ldloc _F
        ldarg Object
        stfld int32 @setupquad_setupstuff::Object
    
    L_Entry:
        .line 256
        br L_while_test_2
    L_while_1:
        .line 258
    L_repeat_3:
        .line 259
        ldloc _F
        ldc.i4 0
        ldc.i4 7
        call int32 Random(int32 Low, int32 Hi)
        stfld int32 @setupquad_setupstuff::x
        .line 260
        ldloc _F
        ldc.i4 0
        ldc.i4 7
        call int32 Random(int32 Low, int32 Hi)
        stfld int32 @setupquad_setupstuff::y
        /* nop */
        ldsflda valuetype T_array_22 _G::Quadrant
        ldloc _F
        ldfld int32 @setupquad_setupstuff::x
        call instance valuetype T_array_21& T_array_22::ldadr(int32)
        ldloc _F
        ldfld int32 @setupquad_setupstuff::y
        call instance int32& T_array_21::ldadr(int32)
        ldobj int32
        ldc.i4 0
        ceq
        brfalse L_repeat_3
        .line 262
        ldsflda valuetype T_array_22 _G::Quadrant
        ldloc _F
        ldfld int32 @setupquad_setupstuff::x
        call instance valuetype T_array_21& T_array_22::ldadr(int32)
        ldloc _F
        ldfld int32 @setupquad_setupstuff::y
        call instance int32& T_array_21::ldadr(int32)
        ldloc _F
        ldfld int32 @setupquad_setupstuff::Object
        stobj int32
        .line 263
        ldloc _F
        ldloc _F
        ldfld int32 @setupquad_setupstuff::Count
        ldc.i4 1
        sub
        stfld int32 @setupquad_setupstuff::Count
        /* nop */
    L_while_test_2:
        ldloc _F
        ldfld int32 @setupquad_setupstuff::Count
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brtrue L_while_1
        /* nop */
    
    L_Epilogue:
        ret
    }
}


.line 301
//================================================================================
// scope: printquadrant (level : 2)

.class @printquadrant
{
    // local variables
    .field public int8 i
    .field public int8 j

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 335
//================================================================================
// scope: printgalaxy_printseparator (level : 3)

.class @printgalaxy_printseparator
{
    // slink
    .field public class @printgalaxy _slink

    // parameters
    .field public int32 Entries

    // local variables
    .field public int32 Count

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 330
//================================================================================
// scope: printgalaxy (level : 2)

.line 0xfeefee

// TYPE set_28 = set of 0 .. 255
.class value explicit T_set_28
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
        call instance void T_set_28::addValue(int32)
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

.class @printgalaxy
{
    // parameters
    .field public int32 Lefty
    .field public bool Markhistory
    .field public int32 Size
    .field public int32 Topx

    // local variables
    .field public int32 i
    .field public int32 j
    .field public bool Mustprint

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 335

    .method public
    void Printseparator(int32 Entries)
    {
        .maxstack 32
    
        .locals init(
            class @printgalaxy_printseparator _F,
            int32 $tmpEndValue1,
            int32 $tmpIndex2,
            int32 $tmpIndex3)
        
        newobj instance void @printgalaxy_printseparator::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @printgalaxy @printgalaxy_printseparator::_slink
        
        ldloc _F
        ldarg Entries
        stfld int32 @printgalaxy_printseparator::Entries
    
    L_Entry:
        .line 338
        ldloc _F
        ldfld int32 @printgalaxy_printseparator::Entries
        stloc $tmpEndValue1
        ldc.i4 0
        dup
        ldloc $tmpEndValue1
        bgt L_for_end_2
        stloc $tmpIndex2
        ldloc _F
        ldloc $tmpIndex2
        stfld int32 @printgalaxy_printseparator::Count
    L_for_loop_1:
        .line 339
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "|-----"
        call instance void [lpcRuntime]LPC.File::Write(string)
        pop
        ldloc _F
        ldfld int32 @printgalaxy_printseparator::Count
        dup
        ldloc $tmpEndValue1
        beq L_for_end_2
        ldc.i4.1
        add
        stloc $tmpIndex3
        ldloc _F
        ldloc $tmpIndex3
        stfld int32 @printgalaxy_printseparator::Count
        br L_for_loop_1
    L_for_end_2:
        pop
        .line 340
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldc.i4 124 // '|'
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        /* nop */
    
    L_Epilogue:
        ret
    }
}


.line 380
//================================================================================
// scope: printdamage (level : 2)

.class @printdamage
{
    // local variables
    .field public uint8 Ch

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 392
//================================================================================
// scope: moveenterprise_handledamage (level : 3)

.class @moveenterprise_handledamage
{
    // slink
    .field public class @moveenterprise _slink

    // local variables
    .field public uint8 Ch
    .field public uint8 Startch

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 425
//================================================================================
// scope: moveenterprise_moveintra (level : 3)

.class @moveenterprise_moveintra
{
    // slink
    .field public class @moveenterprise _slink

    // parameters
    .field public int32 Course
    .field public float64 Warp
    .field public float64* Xinc
    .field public float64* Xpos
    .field public float64* Yinc
    .field public float64* Ypos

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 388
//================================================================================
// scope: moveenterprise (level : 2)

.class @moveenterprise
{
    // local variables
    .field public int32 Course
    .field public float64 Warp
    .field public float64 Xinc
    .field public float64 Xpos
    .field public float64 Yinc
    .field public float64 Ypos

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 392

    .method public
    void Handledamage()
    {
        .maxstack 32
    
        .locals init(
            class @moveenterprise_handledamage _F,
            uint8 $tmpEndValue1,
            uint8 $tmpIndex2,
            uint8 $tmpIndex3)
        
        newobj instance void @moveenterprise_handledamage::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @moveenterprise @moveenterprise_handledamage::_slink
    
    L_Entry:
        .line 395
        ldc.i4 55 // '7'
        stloc $tmpEndValue1
        ldc.i4 48 // '0'
        dup
        ldloc $tmpEndValue1
        bgt L_for_end_2
        stloc $tmpIndex2
        ldloc _F
        ldloc $tmpIndex2
        stfld uint8 @moveenterprise_handledamage::Ch
    L_for_loop_1:
        .line 396
        ldsflda valuetype T_array_2 _G::Device
        ldloc _F
        ldfld uint8 @moveenterprise_handledamage::Ch
        call instance valuetype T_devicerec& T_array_2::ldadr(int32)
        ldfld int32 T_devicerec::Downtime
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_3
        .line 397
        ldsflda valuetype T_array_2 _G::Device
        ldloc _F
        ldfld uint8 @moveenterprise_handledamage::Ch
        call instance valuetype T_devicerec& T_array_2::ldadr(int32)
        ldsflda valuetype T_array_2 _G::Device
        ldloc _F
        ldfld uint8 @moveenterprise_handledamage::Ch
        call instance valuetype T_devicerec& T_array_2::ldadr(int32)
        ldfld int32 T_devicerec::Downtime
        ldc.i4 1
        sub
        stfld int32 T_devicerec::Downtime
    L_if_end_3:
        ldloc _F
        ldfld uint8 @moveenterprise_handledamage::Ch
        dup
        ldloc $tmpEndValue1
        beq L_for_end_2
        ldc.i4.1
        add
        stloc $tmpIndex3
        ldloc _F
        ldloc $tmpIndex3
        stfld uint8 @moveenterprise_handledamage::Ch
        br L_for_loop_1
    L_for_end_2:
        pop
        .line 398
        ldc.i4 0
        ldc.i4 100
        call int32 Random(int32 Low, int32 Hi)
        ldc.i4 6
        clt
        brfalse L_else_4
        .line 400
        ldloc _F
        ldc.i4 48 // '0'
        ldc.i4 55 // '7'
        call int32 Random(int32 Low, int32 Hi)
        stfld uint8 @moveenterprise_handledamage::Ch
        .line 401
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "*** Space storm, "
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldsflda valuetype T_array_2 _G::Device
        ldloc _F
        ldfld uint8 @moveenterprise_handledamage::Ch
        call instance valuetype T_devicerec& T_array_2::ldadr(int32)
        ldfld valuetype T_array_1 T_devicerec::Name
        call string T_array_1::arrayToString(valuetype T_array_1)
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldstr " damaged ***"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 402
        ldsflda valuetype T_array_2 _G::Device
        ldloc _F
        ldfld uint8 @moveenterprise_handledamage::Ch
        call instance valuetype T_devicerec& T_array_2::ldadr(int32)
        ldsflda valuetype T_array_2 _G::Device
        ldloc _F
        ldfld uint8 @moveenterprise_handledamage::Ch
        call instance valuetype T_devicerec& T_array_2::ldadr(int32)
        ldfld int32 T_devicerec::Downtime
        ldc.i4 5
        call int32 Random(int32 Low, int32 Hi)
        stfld int32 T_devicerec::Downtime
        /* nop */
        br L_if_end_5
    L_else_4:
        .line 405
        ldc.i4 0
        ldc.i4 100
        call int32 Random(int32 Low, int32 Hi)
        ldc.i4 12
        clt
        brfalse L_if_end_6
        .line 407
        ldloc _F
        ldc.i4 48 // '0'
        ldc.i4 55 // '7'
        call int32 Random(int32 Low, int32 Hi)
        stfld uint8 @moveenterprise_handledamage::Ch
        .line 408
        ldloc _F
        ldloc _F
        ldfld uint8 @moveenterprise_handledamage::Ch
        stfld uint8 @moveenterprise_handledamage::Startch
        .line 409
    L_repeat_7:
        .line 410
        ldloc _F
        ldfld uint8 @moveenterprise_handledamage::Ch
        ldc.i4 55 // '7'
        ceq
        brfalse L_else_8
        .line 411
        ldloc _F
        ldc.i4 48 // '0'
        stfld uint8 @moveenterprise_handledamage::Ch
        br L_if_end_9
    L_else_8:
        .line 413
        ldloc _F
        ldloc _F
        ldfld uint8 @moveenterprise_handledamage::Ch
        ldc.i4.1
        add
        stfld uint8 @moveenterprise_handledamage::Ch
    L_if_end_9:
        /* nop */
        ldloc _F
        ldfld uint8 @moveenterprise_handledamage::Ch
        ldloc _F
        ldfld uint8 @moveenterprise_handledamage::Startch
        ceq
        dup
        brtrue L_OR_shortcut_10
        pop
        ldsflda valuetype T_array_2 _G::Device
        ldloc _F
        ldfld uint8 @moveenterprise_handledamage::Ch
        call instance valuetype T_devicerec& T_array_2::ldadr(int32)
        ldfld int32 T_devicerec::Downtime
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
    L_OR_shortcut_10:
        brfalse L_repeat_7
        .line 416
        ldsflda valuetype T_array_2 _G::Device
        ldloc _F
        ldfld uint8 @moveenterprise_handledamage::Ch
        call instance valuetype T_devicerec& T_array_2::ldadr(int32)
        ldfld int32 T_devicerec::Downtime
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_11
        .line 418
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "*** Truce, "
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldsflda valuetype T_array_2 _G::Device
        ldloc _F
        ldfld uint8 @moveenterprise_handledamage::Ch
        call instance valuetype T_devicerec& T_array_2::ldadr(int32)
        ldfld valuetype T_array_1 T_devicerec::Name
        call string T_array_1::arrayToString(valuetype T_array_1)
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldstr " state of repair improved ***"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 420
        ldsflda valuetype T_array_2 _G::Device
        ldloc _F
        ldfld uint8 @moveenterprise_handledamage::Ch
        call instance valuetype T_devicerec& T_array_2::ldadr(int32)
        ldc.i4 0
        ldsflda valuetype T_array_2 _G::Device
        ldloc _F
        ldfld uint8 @moveenterprise_handledamage::Ch
        call instance valuetype T_devicerec& T_array_2::ldadr(int32)
        ldfld int32 T_devicerec::Downtime
        ldc.i4 1
        sub
        call int32 Random(int32 Low, int32 Hi)
        stfld int32 T_devicerec::Downtime
        /* nop */
    L_if_end_11:
        /* nop */
    L_if_end_6:
    L_if_end_5:
        /* nop */
    
    L_Epilogue:
        ret
    }

.line 425

    .method public
    void Moveintra(float64& Xpos, float64& Ypos, float64& Xinc, float64& Yinc, int32 Course, float64 Warp)
    {
        .maxstack 32
    
        .locals init(
            class @moveenterprise_moveintra _F,
            valuetype T_set_28 $tmpSetLiteral1,
            valuetype T_set_28 $tmpSetLiteral2,
            float64& pinned $Xinc,
            float64& pinned $Xpos,
            float64& pinned $Yinc,
            float64& pinned $Ypos)
        
        newobj instance void @moveenterprise_moveintra::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @moveenterprise @moveenterprise_moveintra::_slink
        
        ldloc _F
        ldarg Course
        stfld int32 @moveenterprise_moveintra::Course
        
        ldloc _F
        ldarg Warp
        stfld float64 @moveenterprise_moveintra::Warp
        
        ldarg Xinc
        stloc $Xinc
        
        ldloc _F
        ldarg Xinc
        stfld float64* @moveenterprise_moveintra::Xinc
        
        ldarg Xpos
        stloc $Xpos
        
        ldloc _F
        ldarg Xpos
        stfld float64* @moveenterprise_moveintra::Xpos
        
        ldarg Yinc
        stloc $Yinc
        
        ldloc _F
        ldarg Yinc
        stfld float64* @moveenterprise_moveintra::Yinc
        
        ldarg Ypos
        stloc $Ypos
        
        ldloc _F
        ldarg Ypos
        stfld float64* @moveenterprise_moveintra::Ypos
    
        ldloca $tmpSetLiteral1
        ldc.i4 0
        ldc.i4 7
        call instance void T_set_28::addRange(int32, int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 0
        ldc.i4 7
        call instance void T_set_28::addRange(int32, int32)
    
    L_Entry:
        .line 428
        ldloc _F
        ldfld float64* @moveenterprise_moveintra::Xinc
        ldloc _F
        ldfld int32 @moveenterprise_moveintra::Course
        call float64 Radians(int32 Degrees)
        call float64 [lpcRuntime]LPC.Helpers::Cos(float64)
        neg
        stobj float64
        .line 429
        ldloc _F
        ldfld float64* @moveenterprise_moveintra::Yinc
        ldloc _F
        ldfld int32 @moveenterprise_moveintra::Course
        call float64 Radians(int32 Degrees)
        call float64 [lpcRuntime]LPC.Helpers::Sin(float64)
        stobj float64
        .line 430
        ldloc _F
        ldfld float64* @moveenterprise_moveintra::Xpos
        ldsflda valuetype T_sectxy _G::Cursect
        ldfld int8 T_sectxy::x
        conv.r8
        stobj float64
        .line 431
        ldloc _F
        ldfld float64* @moveenterprise_moveintra::Ypos
        ldsflda valuetype T_sectxy _G::Cursect
        ldfld int8 T_sectxy::y
        conv.r8
        stobj float64
        .line 432
        br L_while_test_2
    L_while_1:
        .line 434
        ldsflda valuetype T_array_22 _G::Quadrant
        ldloc _F
        ldfld float64* @moveenterprise_moveintra::Xpos
        ldobj float64
        call int32 [lpcRuntime]LPC.Helpers::Round(float64)
        call instance valuetype T_array_21& T_array_22::ldadr(int32)
        ldloc _F
        ldfld float64* @moveenterprise_moveintra::Ypos
        ldobj float64
        call int32 [lpcRuntime]LPC.Helpers::Round(float64)
        call instance int32& T_array_21::ldadr(int32)
        ldobj int32
        ldc.i4 0
        ceq
        brfalse L_else_3
        .line 436
        ldloc _F
        ldfld float64* @moveenterprise_moveintra::Xpos
        ldloc _F
        ldfld float64* @moveenterprise_moveintra::Xpos
        ldobj float64
        ldloc _F
        ldfld float64* @moveenterprise_moveintra::Xinc
        ldobj float64
        add
        stobj float64
        .line 437
        ldloc _F
        ldfld float64* @moveenterprise_moveintra::Ypos
        ldloc _F
        ldfld float64* @moveenterprise_moveintra::Ypos
        ldobj float64
        ldloc _F
        ldfld float64* @moveenterprise_moveintra::Yinc
        ldobj float64
        add
        stobj float64
        .line 438
        ldloc _F
        ldloc _F
        ldfld float64 @moveenterprise_moveintra::Warp
        ldc.r8 0.125000
        sub
        stfld float64 @moveenterprise_moveintra::Warp
        /* nop */
        br L_if_end_4
    L_else_3:
        .line 441
        ldloc _F
        ldc.r8 0.000000
        stfld float64 @moveenterprise_moveintra::Warp
    L_if_end_4:
    L_while_test_2:
        ldloc $tmpSetLiteral1
        ldloc _F
        ldfld float64* @moveenterprise_moveintra::Xpos
        ldobj float64
        call int32 [lpcRuntime]LPC.Helpers::Round(float64)
        call bool _SetContains(valuetype T_set_28 s, int32 val)
        dup
        brfalse L_AND_shortcut_6
        pop
        ldloc $tmpSetLiteral2
        ldloc _F
        ldfld float64* @moveenterprise_moveintra::Ypos
        ldobj float64
        call int32 [lpcRuntime]LPC.Helpers::Round(float64)
        call bool _SetContains(valuetype T_set_28 s, int32 val)
    L_AND_shortcut_6:
        dup
        brfalse L_AND_shortcut_5
        pop
        ldloc _F
        ldfld float64 @moveenterprise_moveintra::Warp
        ldc.r8 0.125000
        clt
        ldc.i4.0
        ceq
    L_AND_shortcut_5:
        brtrue L_while_1
        /* nop */
    
    L_Epilogue:
        ret
    }
}


.line 496
//================================================================================
// scope: firephasers (level : 2)

.class @firephasers
{
    // local variables
    .field public int32 Fireamount
    .field public int32 Hit
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 538
//================================================================================
// scope: firetorpedoes_hitnova (level : 3)

.class @firetorpedoes_hitnova
{
    // slink
    .field public class @firetorpedoes _slink

    // parameters
    .field public int8* Klingnum
    .field public int8 Novax
    .field public int8 Novay

    // local variables
    .field public int32 Hit
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 564
//================================================================================
// scope: firetorpedoes_hitklingbase (level : 3)

.class @firetorpedoes_hitklingbase
{
    // slink
    .field public class @firetorpedoes _slink

    // parameters
    .field public int8* Klingbasenum

    // local variables
    .field public int32 i
    .field public int32 Kdocked
    .field public int8 Quadx
    .field public int8 Quady

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 533
//================================================================================
// scope: firetorpedoes (level : 2)

.class @firetorpedoes
{
    // local variables
    .field public int32 Course
    .field public bool Hitsomething
    .field public int32 i
    .field public float64 Xinc
    .field public float64 Xpos
    .field public float64 Yinc
    .field public float64 Ypos

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 538

    .method public
    void Hitnova(int8 Novax, int8 Novay, int8& Klingnum)
    {
        .maxstack 32
    
        .locals init(
            class @firetorpedoes_hitnova _F,
            int32 $tmpEndValue1,
            int32 $tmpIndex2,
            int32 $tmpIndex3,
            int8& pinned $Klingnum)
        
        newobj instance void @firetorpedoes_hitnova::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @firetorpedoes @firetorpedoes_hitnova::_slink
        
        ldarg Klingnum
        stloc $Klingnum
        
        ldloc _F
        ldarg Klingnum
        stfld int8* @firetorpedoes_hitnova::Klingnum
        
        ldloc _F
        ldarg Novax
        stfld int8 @firetorpedoes_hitnova::Novax
        
        ldloc _F
        ldarg Novay
        stfld int8 @firetorpedoes_hitnova::Novay
    
    L_Entry:
        .line 541
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "Torpedo causes unstable star to nova"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 542
        ldsfld int32 _G::Condition
        ldc.i4 4
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_1
        .line 544
        ldloc _F
        ldc.i4 600
        ldc.i4 0
        ldc.i4 10
        call int32 Random(int32 Low, int32 Hi)
        mul
        ldloc _F
        ldfld int8 @firetorpedoes_hitnova::Novax
        ldloc _F
        ldfld int8 @firetorpedoes_hitnova::Novay
        ldsfld valuetype T_sectxy _G::Cursect
        call int32 Distance(int8 Pos1x, int8 Pos1y, valuetype T_sectxy Pos2)
        div
        stfld int32 @firetorpedoes_hitnova::Hit
        .line 545
        ldloc _F
        ldfld int32 @firetorpedoes_hitnova::Hit
        ldc.i4 0
        cgt
        brfalse L_if_end_2
        .line 546
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "Enterprise loses "
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldc.i4 1
        ldc.i4.0
        ldloc _F
        ldfld int32 @firetorpedoes_hitnova::Hit
        call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
        dup
        ldstr " units of energy"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
    L_if_end_2:
        .line 547
        ldsfld int32 _G::Curenergy
        ldloc _F
        ldfld int32 @firetorpedoes_hitnova::Hit
        sub
        stsfld int32 _G::Curenergy
        /* nop */
    L_if_end_1:
        .line 549
        ldc.i4 11
        stloc $tmpEndValue1
        ldc.i4 0
        dup
        ldloc $tmpEndValue1
        bgt L_for_end_4
        stloc $tmpIndex2
        ldloc _F
        ldloc $tmpIndex2
        stfld int32 @firetorpedoes_hitnova::i
    L_for_loop_3:
        .line 551
        ldsflda valuetype T_array_24 _G::Klingons
        ldloc _F
        ldfld int32 @firetorpedoes_hitnova::i
        call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
        ldfld int32 T_klingonrec::Energyleft
        ldc.i4 0
        cgt
        brfalse L_if_end_5
        .line 553
        ldsflda valuetype T_array_24 _G::Klingons
        ldloc _F
        ldfld int32 @firetorpedoes_hitnova::i
        call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
        ldsflda valuetype T_array_24 _G::Klingons
        ldloc _F
        ldfld int32 @firetorpedoes_hitnova::i
        call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
        ldfld int32 T_klingonrec::Energyleft
        ldc.i4 120
        ldc.i4 0
        ldc.i4 10
        call int32 Random(int32 Low, int32 Hi)
        mul
        ldloc _F
        ldfld int8 @firetorpedoes_hitnova::Novax
        ldloc _F
        ldfld int8 @firetorpedoes_hitnova::Novay
        ldsflda valuetype T_array_24 _G::Klingons
        ldloc _F
        ldfld int32 @firetorpedoes_hitnova::i
        call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
        ldfld valuetype T_sectxy T_klingonrec::Position
        call int32 Distance(int8 Pos1x, int8 Pos1y, valuetype T_sectxy Pos2)
        div
        sub
        stfld int32 T_klingonrec::Energyleft
        .line 555
        ldsflda valuetype T_array_24 _G::Klingons
        ldloc _F
        ldfld int32 @firetorpedoes_hitnova::i
        call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
        ldfld int32 T_klingonrec::Energyleft
        ldc.i4 0
        cgt
        ldc.i4.0
        ceq
        brfalse L_if_end_6
        .line 557
        ldsflda valuetype T_array_22 _G::Quadrant
        ldsflda valuetype T_array_24 _G::Klingons
        ldloc _F
        ldfld int32 @firetorpedoes_hitnova::i
        call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
        ldflda valuetype T_sectxy T_klingonrec::Position
        ldfld int8 T_sectxy::x
        call instance valuetype T_array_21& T_array_22::ldadr(int32)
        ldsflda valuetype T_array_24 _G::Klingons
        ldloc _F
        ldfld int32 @firetorpedoes_hitnova::i
        call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
        ldflda valuetype T_sectxy T_klingonrec::Position
        ldfld int8 T_sectxy::y
        call instance int32& T_array_21::ldadr(int32)
        ldc.i4 0
        stobj int32
        .line 558
        ldsfld int32 _G::Totalklingons
        ldc.i4 1
        sub
        stsfld int32 _G::Totalklingons
        .line 559
        ldloc _F
        ldfld int8* @firetorpedoes_hitnova::Klingnum
        ldloc _F
        ldfld int8* @firetorpedoes_hitnova::Klingnum
        ldobj int8
        ldc.i4 1
        sub
        dup
        ldc.i4 0
        ldc.i4 9
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        /* nop */
    L_if_end_6:
        /* nop */
    L_if_end_5:
        ldloc _F
        ldfld int32 @firetorpedoes_hitnova::i
        dup
        ldloc $tmpEndValue1
        beq L_for_end_4
        ldc.i4.1
        add
        stloc $tmpIndex3
        ldloc _F
        ldloc $tmpIndex3
        stfld int32 @firetorpedoes_hitnova::i
        br L_for_loop_3
    L_for_end_4:
        pop
        /* nop */
    
    L_Epilogue:
        ret
    }

.line 564

    .method public
    void Hitklingbase(int8& Klingbasenum)
    {
        .maxstack 32
    
        .locals init(
            class @firetorpedoes_hitklingbase _F,
            int32 $tmpEndValue1,
            int32 $tmpIndex2,
            int32 $tmpIndex3,
            int8& pinned $Klingbasenum)
        
        newobj instance void @firetorpedoes_hitklingbase::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @firetorpedoes @firetorpedoes_hitklingbase::_slink
        
        ldarg Klingbasenum
        stloc $Klingbasenum
        
        ldloc _F
        ldarg Klingbasenum
        stfld int8* @firetorpedoes_hitklingbase::Klingbasenum
    
    L_Entry:
        .line 568
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "*** Klingon Starbase DESTROYED ***"
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldsfld uint8 _G::Bell
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 569
        ldloc _F
        ldfld int8* @firetorpedoes_hitklingbase::Klingbasenum
        ldloc _F
        ldfld int8* @firetorpedoes_hitklingbase::Klingbasenum
        ldobj int8
        ldc.i4 1
        sub
        dup
        ldc.i4 0
        ldc.i4 9
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stobj int8
        .line 570
        ldloc _F
        ldc.i4 0
        stfld int32 @firetorpedoes_hitklingbase::Kdocked
        .line 571
        ldc.i4 0
        ldc.i4 7
        dup
        mul
        call int32 Random(int32 Low, int32 Hi)
        stloc $tmpEndValue1
        ldc.i4 1
        dup
        ldloc $tmpEndValue1
        bgt L_for_end_2
        stloc $tmpIndex2
        ldloc _F
        ldloc $tmpIndex2
        stfld int32 @firetorpedoes_hitklingbase::i
    L_for_loop_1:
        .line 573
    L_repeat_3:
        .line 574
        ldloc _F
        ldc.i4 0
        ldc.i4 7
        call int32 Random(int32 Low, int32 Hi)
        dup
        ldc.i4 0
        ldc.i4 7
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 @firetorpedoes_hitklingbase::Quadx
        .line 575
        ldloc _F
        ldc.i4 0
        ldc.i4 7
        call int32 Random(int32 Low, int32 Hi)
        dup
        ldc.i4 0
        ldc.i4 7
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 @firetorpedoes_hitklingbase::Quady
        /* nop */
        ldloc _F
        ldfld int8 @firetorpedoes_hitklingbase::Quadx
        ldsflda valuetype T_quadxy _G::Curquad
        ldfld int8 T_quadxy::x
        ceq
        ldc.i4.0
        ceq
        dup
        brtrue L_OR_shortcut_4
        pop
        ldloc _F
        ldfld int8 @firetorpedoes_hitklingbase::Quady
        ldsflda valuetype T_quadxy _G::Curquad
        ldfld int8 T_quadxy::y
        ceq
        ldc.i4.0
        ceq
    L_OR_shortcut_4:
        brfalse L_repeat_3
        .line 577
        ldloc _F
        ldloc _F
        ldfld int32 @firetorpedoes_hitklingbase::Kdocked
        ldsflda valuetype T_array_20 _G::Galaxy
        ldloc _F
        ldfld int8 @firetorpedoes_hitklingbase::Quadx
        call instance valuetype T_array_19& T_array_20::ldadr(int32)
        ldloc _F
        ldfld int8 @firetorpedoes_hitklingbase::Quady
        call instance valuetype T_quadrec& T_array_19::ldadr(int32)
        ldfld int8 T_quadrec::Klingnum
        add
        stfld int32 @firetorpedoes_hitklingbase::Kdocked
        .line 578
        ldsflda valuetype T_array_20 _G::Galaxy
        ldloc _F
        ldfld int8 @firetorpedoes_hitklingbase::Quadx
        call instance valuetype T_array_19& T_array_20::ldadr(int32)
        ldloc _F
        ldfld int8 @firetorpedoes_hitklingbase::Quady
        call instance valuetype T_quadrec& T_array_19::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 9
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 T_quadrec::Klingnum
        /* nop */
        ldloc _F
        ldfld int32 @firetorpedoes_hitklingbase::i
        dup
        ldloc $tmpEndValue1
        beq L_for_end_2
        ldc.i4.1
        add
        stloc $tmpIndex3
        ldloc _F
        ldloc $tmpIndex3
        stfld int32 @firetorpedoes_hitklingbase::i
        br L_for_loop_1
    L_for_end_2:
        pop
        .line 580
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldc.i4 1
        ldc.i4.0
        ldloc _F
        ldfld int32 @firetorpedoes_hitklingbase::Kdocked
        call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
        dup
        ldstr " Klingons were killed while docked"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 581
        ldsfld int32 _G::Totalklingons
        ldloc _F
        ldfld int32 @firetorpedoes_hitklingbase::Kdocked
        sub
        stsfld int32 _G::Totalklingons
        /* nop */
    
    L_Epilogue:
        ret
    }
}


.line 656
//================================================================================
// scope: selfdestruct (level : 2)

.class @selfdestruct
{
    // local variables
    .field public uint8 Ch

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 668
//================================================================================
// scope: command (level : 2)

.class @command
{
    // local variables
    .field public uint8 Ch
    .field public bool Validcommand

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 715
//================================================================================
// scope: instructions_spacewait (level : 3)

.class @instructions_spacewait
{
    // slink
    .field public class @instructions _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 723
//================================================================================
// scope: instructions_page1 (level : 3)

.class @instructions_page1
{
    // slink
    .field public class @instructions _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 750
//================================================================================
// scope: instructions_page2 (level : 3)

.class @instructions_page2
{
    // slink
    .field public class @instructions _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 778
//================================================================================
// scope: instructions_page3 (level : 3)

.class @instructions_page3
{
    // slink
    .field public class @instructions _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 805
//================================================================================
// scope: instructions_page4 (level : 3)

.class @instructions_page4
{
    // slink
    .field public class @instructions _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 832
//================================================================================
// scope: instructions_page5 (level : 3)

.class @instructions_page5
{
    // slink
    .field public class @instructions _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 859
//================================================================================
// scope: instructions_page6 (level : 3)

.class @instructions_page6
{
    // slink
    .field public class @instructions _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 712
//================================================================================
// scope: instructions (level : 2)

.class @instructions
{
    // local variables
    .field public uint8 Ch

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 715

    .method public
    void Spacewait()
    {
        .maxstack 32
    
        .locals init(class @instructions_spacewait _F)
        
        newobj instance void @instructions_spacewait::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @instructions @instructions_spacewait::_slink
    
    L_Entry:
        .line 717
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 718
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "Hit <return> to continue"
        call instance void [lpcRuntime]LPC.File::Write(string)
        pop
        .line 719
        ldsflda valuetype [lpcRuntime]LPC.File _G::Input
        call instance void [lpcRuntime]LPC.File::ReadLn()
        .line 720
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        /* nop */
    
    L_Epilogue:
        ret
    }

.line 723

    .method public
    void Page1()
    {
        .maxstack 32
    
        .locals init(class @instructions_page1 _F)
        
        newobj instance void @instructions_page1::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @instructions @instructions_page1::_slink
    
    L_Entry:
        .line 725
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "The galaxy is divided into 64 quadrants with the"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 726
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "following coordinates:"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 727
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 728
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  0   1   2   3   4   5   6   7"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 729
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "---------------------------------"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 730
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "|   |   |   |   |   |   |   |   |  0"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 731
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "---------------------------------"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 732
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "|   |   |   |   |   |   |   |   |  1"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 733
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "---------------------------------"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 734
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "|   |   |   |   |   |   |   |   |  2"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 735
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "---------------------------------"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 736
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "|   |   |   |   |   |   |   |   |  3"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 737
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "---------------------------------"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 738
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "|   |   |   |   |   |   |   |   |  4"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 739
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "---------------------------------"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 740
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "|   |   |   |   |   |   |   |   |  5"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 741
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "---------------------------------"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 742
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "|   |   |   |   |   |   |   |   |  6"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 743
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "---------------------------------"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 744
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "|   |   |   |   |   |   |   |   |  7"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 745
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 746
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "Each quadrant is similarly divided into 64 sectors."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 747
        ldloc _F
        ldfld class @instructions @instructions_page1::_slink
        call instance void @instructions::Spacewait()
        /* nop */
    
    L_Epilogue:
        ret
    }

.line 750

    .method public
    void Page2()
    {
        .maxstack 32
    
        .locals init(class @instructions_page2 _F)
        
        newobj instance void @instructions_page2::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @instructions @instructions_page2::_slink
    
    L_Entry:
        .line 752
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 753
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "::: DEVICES :::"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 754
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 755
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr " :: Warp Engines ::"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 756
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 757
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr " Course = a number in degrees."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 758
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "   Numbers indicate direction starting at the top and"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 759
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "   going counter clockwise."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 760
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 761
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "                     0"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 762
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "                 315 | 45"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 763
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "                    \\\\|/"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 764
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "               270 --*-- 90"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 765
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "                    /|\\\\"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 766
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "                 225 | 135"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 767
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "                    180"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 768
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 769
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr " Warp Factor = a REAL number from 0 to 12."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 770
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "   Distance traveled = <warp factor> quadrants."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 771
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "     Warp  .2  =  The Enterprise travels 1 sector."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 772
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "           .5  =                         4 sectors."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 773
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "            1  =                         1 quadrant."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 774
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "            2  =                         2 quadrants."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 775
        ldloc _F
        ldfld class @instructions @instructions_page2::_slink
        call instance void @instructions::Spacewait()
        /* nop */
    
    L_Epilogue:
        ret
    }

.line 778

    .method public
    void Page3()
    {
        .maxstack 32
    
        .locals init(class @instructions_page3 _F)
        
        newobj instance void @instructions_page3::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @instructions @instructions_page3::_slink
    
    L_Entry:
        .line 780
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 781
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "   For example, if you travel from quadrant 1-1 in the"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 782
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "   direction of 90 degrees at warp 2, you would stop at"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 783
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "   quadrant 1-3 in the next stardate.  NOTE: every use of"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 784
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "   the warp engines takes one stardate.  If the Enterprise"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 785
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "   is blocked by something during an intra-quadrant travel,"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 786
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "   it will stop in front of it (and waste a stardate)."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 787
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 788
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr " :: Short Range Sensors ::"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 789
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 790
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  The short range sensors display a detailed view of the "
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 791
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  quadrant currently occupied by the Enterprise.  The "
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 792
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  The following symbols have meanings as follows:"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 793
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 794
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "          Symbol          Meaning"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 795
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "             "
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldc.i4 46 // '.'
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        dup
        ldstr "            empty space"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 796
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "             "
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldc.i4 42 // '*'
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        dup
        ldstr "            a stable star"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 797
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "             "
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldc.i4 43 // '+'
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        dup
        ldstr "            an unstable star"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 798
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "             "
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldc.i4 69 // 'E'
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        dup
        ldstr "            the Enterprise"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 799
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "             "
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldc.i4 66 // 'B'
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        dup
        ldstr "            a Federation base"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 800
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "             "
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldc.i4 75 // 'K'
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        dup
        ldstr "            a Klingon ship"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 801
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "             "
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldc.i4 64 // '@'
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        dup
        ldstr "            a Klingon base"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 802
        ldloc _F
        ldfld class @instructions @instructions_page3::_slink
        call instance void @instructions::Spacewait()
        /* nop */
    
    L_Epilogue:
        ret
    }

.line 805

    .method public
    void Page4()
    {
        .maxstack 32
    
        .locals init(class @instructions_page4 _F)
        
        newobj instance void @instructions_page4::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @instructions @instructions_page4::_slink
    
    L_Entry:
        .line 807
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 808
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr " :: Long Range Sensors ::"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 809
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 810
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  The long range sensors display the objects in the nine"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 811
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  closest quadrants.  Each digit in each box means "
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 812
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  means something:"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 813
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 814
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "    The ONES digit represents the number of STARS."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 815
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "        TENS                                FEDERATION BASES."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 816
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "        HUNDREDS                            KLINGON SHIPS"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 817
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "        THOUSANDS                           KLINGON BASES"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 818
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 819
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  For example:"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 820
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "    319 means 3 Klingons, 1 Federation base, and 9 stars."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 821
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "    206 means 2 Klingons, 0 Federation bases, and 6 stars."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 822
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "   1007 means 1 Klingon base and 7 stars."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 823
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 824
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr " :: Phasers ::"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 825
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 826
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  Any portion of the energy available can be fired.  The"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 827
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  battle computer divides this amount among the Klingon"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 828
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  ships in the quadrant and determines the various directions"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 829
        ldloc _F
        ldfld class @instructions @instructions_page4::_slink
        call instance void @instructions::Spacewait()
        /* nop */
    
    L_Epilogue:
        ret
    }

.line 832

    .method public
    void Page5()
    {
        .maxstack 32
    
        .locals init(class @instructions_page5 _F)
        
        newobj instance void @instructions_page5::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @instructions @instructions_page5::_slink
    
    L_Entry:
        .line 834
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 835
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  of fire.  The effectiveness of a hit depends mostly on the"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 836
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  distance to the target.  A Klingon battle cruiser starts with"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 837
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldc.i4 5
        ldc.i4.0
        ldc.i4 300
        call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
        dup
        ldstr " units of energy.  It can fire an amount equal to"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 838
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  whatever energy is left.  Note that phasers are ineffective "
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 839
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  against stars, Klingon bases, and Federation bases."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 840
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 841
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr " :: Photon Torpedoes ::"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 842
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 843
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  Initially the Enterprise has "
        call instance void [lpcRuntime]LPC.File::Write(string)
        dup
        ldc.i4 10
        call instance void [lpcRuntime]LPC.File::Write(int32)
        dup
        ldstr " photon torpedoes."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 844
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  One torpedo destroys whatever it hits.  The range of the"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 845
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  photon torpedoes (like phasers) is limited to the current"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 846
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  quadrant.  The course of a photon torpedo is set the same"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 847
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  way as that of the Enterprise.  Torpedoes and phasers are"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 848
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  restocked when the Enterprise docks at a Federation base."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 849
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 850
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr " :: Damage Control Report ::"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 851
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 852
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  The damage control report lists the state of repair of each"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 853
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  device.  A non-zero state indicates the number of stardates"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 854
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  required to repair the device.  Devices can be damaged by"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 855
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  space storms, and are repaired by time and truces."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 856
        ldloc _F
        ldfld class @instructions @instructions_page5::_slink
        call instance void @instructions::Spacewait()
        /* nop */
    
    L_Epilogue:
        ret
    }

.line 859

    .method public
    void Page6()
    {
        .maxstack 32
    
        .locals init(class @instructions_page6 _F)
        
        newobj instance void @instructions_page6::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @instructions @instructions_page6::_slink
    
    L_Entry:
        .line 861
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 862
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr " :: History Computers ::"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 863
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 864
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  The history computers keep a record of all the quadrants"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 865
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  scanned with the long range scanners.  The history report"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 866
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  uses the same display format as the long range scanners,"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 867
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  except that the entire galaxy is displayed.  A quadrant"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 868
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  that has not been scanned is printed as \"+++++\"."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 869
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 870
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr " :: Suicide Device ::"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 871
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 872
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  It is possible to implement a self-destruct sequence merely"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 873
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "  by invoking this command.  The game is terminated."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 874
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 875
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "To get a list of all commands, type \"9\" when asked for a"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 876
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "command.  All commands are terminated by the [RETURN] key."
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 877
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "You have at least on supporting starbase.  Your energy and"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 878
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "photon torpedoes are replenished when you are docked at a"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 879
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "Federation starbase.  G O O D   L U C K !"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 880
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 881
        ldloc _F
        ldfld class @instructions @instructions_page6::_slink
        call instance void @instructions::Spacewait()
        /* nop */
    
    L_Epilogue:
        ret
    }
}


.line 913
//================================================================================
// scope: finishgame (level : 2)

.class @finishgame
{
    // local variables
    .field public int32 Rating

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
    .field public static int32 Badpoints
    .field public static uint8 Bell
    .field public static int32 Condition
    .field public static valuetype T_array_13 Condnames
    .field public static int32 Curenergy
    .field public static valuetype T_quadxy Curquad
    .field public static valuetype T_sectxy Cursect
    .field public static int32 Curtorps
    .field public static int32 Curyear
    .field public static valuetype T_array_2 Device
    .field public static int32 Endyear
    .field public static valuetype T_array_20 Galaxy
    .field public static valuetype [lpcRuntime]LPC.File Input
    .field public static valuetype T_array_24 Klingons
    .field public static valuetype [lpcRuntime]LPC.File Output
    .field public static valuetype T_array_22 Quadrant
    .field public static int32 Rndseq
    .field public static int32 Startklingons
    .field public static int32 Startyear
    .field public static valuetype T_array_11 Symbols
    .field public static int32 Totalkbases
    .field public static int32 Totalklingons
}

.line 65

.method static
float64 Expp(float64 r)
{
    .maxstack 32

    .locals init(
        class @expp _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3)
    
    newobj instance void @expp::.ctor()
    stloc _F
    
    ldloc _F
    ldarg r
    stfld float64 @expp::r

L_Entry:
    .line 72
    ldloc _F
    ldc.r8 0.000000
    stfld float64 @expp::t
    .line 73
    ldloc _F
    ldc.r8 1.00000
    stfld float64 @expp::m
    .line 74
    ldc.i4 55
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @expp::i
L_for_loop_1:
    .line 76
    ldloc _F
    ldloc _F
    ldfld float64 @expp::t
    ldloc _F
    ldfld float64 @expp::m
    add
    stfld float64 @expp::t
    .line 77
    ldloc _F
    ldloc _F
    ldfld float64 @expp::m
    ldloc _F
    ldfld float64 @expp::r
    ldloc _F
    ldfld int32 @expp::i
    conv.r8
    div
    mul
    stfld float64 @expp::m
    ldloc _F
    ldfld int32 @expp::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @expp::i
    br L_for_loop_1
L_for_end_2:
    pop
    .line 80
    ldloc _F
    ldloc _F
    ldfld float64 @expp::t
    stfld float64 @expp::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld float64 @expp::_fnvalue
    ret
}

.line 84

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
    .line 90
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
    .line 91
    ldloc _F
    ldfld int32 @random::Gamma
    ldc.i4 0
    cgt
    brfalse L_else_1
    .line 91
    ldloc _F
    ldfld int32 @random::Gamma
    stsfld int32 _G::Rndseq
    br L_if_end_2
L_else_1:
    .line 91
    ldloc _F
    ldfld int32 @random::Gamma
    ldc.i4 2147483647 // m 
    add
    stsfld int32 _G::Rndseq
L_if_end_2:
    .line 92
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

.line 95

.method static
int32 Distance(int8 Pos1x, int8 Pos1y, valuetype T_sectxy Pos2)
{
    .maxstack 32

    .locals init(class @distance _F)
    
    newobj instance void @distance::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Pos1x
    stfld int8 @distance::Pos1x
    
    ldloc _F
    ldarg Pos1y
    stfld int8 @distance::Pos1y
    
    ldloc _F
    ldarg Pos2
    stfld valuetype T_sectxy @distance::Pos2

L_Entry:
    .line 97
    ldloc _F
    ldloc _F
    ldfld int8 @distance::Pos1x
    ldloc _F
    ldflda valuetype T_sectxy @distance::Pos2
    ldfld int8 T_sectxy::x
    sub
    dup
    mul
    ldloc _F
    ldfld int8 @distance::Pos1y
    ldloc _F
    ldflda valuetype T_sectxy @distance::Pos2
    ldfld int8 T_sectxy::y
    sub
    dup
    mul
    add
    conv.r8
    call float64 [lpcRuntime]LPC.Helpers::Sqrt(float64)
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    stfld int32 @distance::_fnvalue
    /* nop */

L_Epilogue:
    ldloc _F
    ldfld int32 @distance::_fnvalue
    ret
}

.line 100

.method static
float64 Radians(int32 Degrees)
{
    .maxstack 32

    .locals init(class @radians _F)
    
    newobj instance void @radians::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Degrees
    stfld int32 @radians::Degrees

L_Entry:
    .line 102
    ldloc _F
    ldloc _F
    ldfld int32 @radians::Degrees
    conv.r8
    ldc.r8 0.0174533
    mul
    stfld float64 @radians::_fnvalue
    /* nop */

L_Epilogue:
    ldloc _F
    ldfld float64 @radians::_fnvalue
    ret
}

.line 105

.method static
int32 Interval(int32 Number, int32 Minvalue, int32 Maxvalue)
{
    .maxstack 32

    .locals init(class @interval _F)
    
    newobj instance void @interval::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Maxvalue
    stfld int32 @interval::Maxvalue
    
    ldloc _F
    ldarg Minvalue
    stfld int32 @interval::Minvalue
    
    ldloc _F
    ldarg Number
    stfld int32 @interval::Number

L_Entry:
    .line 107
    ldloc _F
    ldfld int32 @interval::Number
    ldloc _F
    ldfld int32 @interval::Minvalue
    clt
    brfalse L_else_1
    .line 108
    ldloc _F
    ldloc _F
    ldfld int32 @interval::Minvalue
    stfld int32 @interval::_fnvalue
    br L_if_end_2
L_else_1:
    .line 110
    ldloc _F
    ldfld int32 @interval::Number
    ldloc _F
    ldfld int32 @interval::Maxvalue
    cgt
    brfalse L_else_3
    .line 111
    ldloc _F
    ldloc _F
    ldfld int32 @interval::Maxvalue
    stfld int32 @interval::_fnvalue
    br L_if_end_4
L_else_3:
    .line 113
    ldloc _F
    ldloc _F
    ldfld int32 @interval::Number
    stfld int32 @interval::_fnvalue
L_if_end_4:
L_if_end_2:
    /* nop */

L_Epilogue:
    ldloc _F
    ldfld int32 @interval::_fnvalue
    ret
}

.line 116

.method static
void Reinitialize()
{
    .maxstack 32

    .locals init(
        class @reinitialize _F,
        uint8 $tmpEndValue1,
        uint8 $tmpIndex2,
        uint8 $tmpIndex3)
    
    newobj instance void @reinitialize::.ctor()
    stloc _F

L_Entry:
    .line 119
    ldc.i4 5000
    stsfld int32 _G::Curenergy
    .line 120
    ldc.i4 10
    stsfld int32 _G::Curtorps
    .line 121
    ldc.i4 55 // '7'
    stloc $tmpEndValue1
    ldc.i4 48 // '0'
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld uint8 @reinitialize::Ch
L_for_loop_1:
    .line 122
    ldsflda valuetype T_array_2 _G::Device
    ldloc _F
    ldfld uint8 @reinitialize::Ch
    call instance valuetype T_devicerec& T_array_2::ldadr(int32)
    ldc.i4 0
    stfld int32 T_devicerec::Downtime
    ldloc _F
    ldfld uint8 @reinitialize::Ch
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld uint8 @reinitialize::Ch
    br L_for_loop_1
L_for_end_2:
    pop
    /* nop */

L_Epilogue:
    ret
}

.line 125

.method static
void Initialize()
{
    .maxstack 32

    .locals init(
        class @initialize _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpEndValue3,
        int32 $tmpIndex4,
        int32 $tmpIndex5,
        int32 $tmpIndex6)
    
    newobj instance void @initialize::.ctor()
    stloc _F

L_Entry:
    .line 128
    ldsflda valuetype T_array_2 _G::Device
    ldc.i4 48 // '0'
    call instance valuetype T_devicerec& T_array_2::ldadr(int32)
    ldsfld valuetype T_array_1 STRING_1    // "Warp Engines        "
    stfld valuetype T_array_1 T_devicerec::Name
    .line 129
    ldsflda valuetype T_array_2 _G::Device
    ldc.i4 49 // '1'
    call instance valuetype T_devicerec& T_array_2::ldadr(int32)
    ldsfld valuetype T_array_1 STRING_2    // "Short Range Sensors "
    stfld valuetype T_array_1 T_devicerec::Name
    .line 130
    ldsflda valuetype T_array_2 _G::Device
    ldc.i4 50 // '2'
    call instance valuetype T_devicerec& T_array_2::ldadr(int32)
    ldsfld valuetype T_array_1 STRING_3    // "Long Range Sensors  "
    stfld valuetype T_array_1 T_devicerec::Name
    .line 131
    ldsflda valuetype T_array_2 _G::Device
    ldc.i4 51 // '3'
    call instance valuetype T_devicerec& T_array_2::ldadr(int32)
    ldsfld valuetype T_array_1 STRING_4    // "Phaser Control      "
    stfld valuetype T_array_1 T_devicerec::Name
    .line 132
    ldsflda valuetype T_array_2 _G::Device
    ldc.i4 52 // '4'
    call instance valuetype T_devicerec& T_array_2::ldadr(int32)
    ldsfld valuetype T_array_1 STRING_5    // "Photon Tubes        "
    stfld valuetype T_array_1 T_devicerec::Name
    .line 133
    ldsflda valuetype T_array_2 _G::Device
    ldc.i4 53 // '5'
    call instance valuetype T_devicerec& T_array_2::ldadr(int32)
    ldsfld valuetype T_array_1 STRING_6    // "Damage Control      "
    stfld valuetype T_array_1 T_devicerec::Name
    .line 134
    ldsflda valuetype T_array_2 _G::Device
    ldc.i4 54 // '6'
    call instance valuetype T_devicerec& T_array_2::ldadr(int32)
    ldsfld valuetype T_array_1 STRING_7    // "History Computers   "
    stfld valuetype T_array_1 T_devicerec::Name
    .line 135
    ldsflda valuetype T_array_2 _G::Device
    ldc.i4 55 // '7'
    call instance valuetype T_devicerec& T_array_2::ldadr(int32)
    ldsfld valuetype T_array_1 STRING_8    // "Self Destruct       "
    stfld valuetype T_array_1 T_devicerec::Name
    .line 136
    ldsflda valuetype T_array_11 _G::Symbols
    ldc.i4 0
    call instance uint8& T_array_11::ldadr(int32)
    ldc.i4 46 // '.'
    stobj uint8
    .line 137
    ldsflda valuetype T_array_11 _G::Symbols
    ldc.i4 1
    call instance uint8& T_array_11::ldadr(int32)
    ldc.i4 42 // '*'
    stobj uint8
    .line 138
    ldsflda valuetype T_array_11 _G::Symbols
    ldc.i4 2
    call instance uint8& T_array_11::ldadr(int32)
    ldc.i4 69 // 'E'
    stobj uint8
    .line 139
    ldsflda valuetype T_array_11 _G::Symbols
    ldc.i4 3
    call instance uint8& T_array_11::ldadr(int32)
    ldc.i4 43 // '+'
    stobj uint8
    .line 140
    ldsflda valuetype T_array_11 _G::Symbols
    ldc.i4 4
    call instance uint8& T_array_11::ldadr(int32)
    ldc.i4 75 // 'K'
    stobj uint8
    .line 141
    ldsflda valuetype T_array_11 _G::Symbols
    ldc.i4 5
    call instance uint8& T_array_11::ldadr(int32)
    ldc.i4 66 // 'B'
    stobj uint8
    .line 142
    ldsflda valuetype T_array_11 _G::Symbols
    ldc.i4 6
    call instance uint8& T_array_11::ldadr(int32)
    ldc.i4 64 // '@'
    stobj uint8
    .line 143
    ldsflda valuetype T_array_13 _G::Condnames
    ldc.i4 1
    call instance valuetype T_array_12& T_array_13::ldadr(int32)
    ldsfld valuetype T_array_12 STRING_9    // "Red       "
    stobj valuetype T_array_12
    .line 144
    ldsflda valuetype T_array_13 _G::Condnames
    ldc.i4 0
    call instance valuetype T_array_12& T_array_13::ldadr(int32)
    ldsfld valuetype T_array_12 STRING_10    // "Green     "
    stobj valuetype T_array_12
    .line 145
    ldsflda valuetype T_array_13 _G::Condnames
    ldc.i4 2
    call instance valuetype T_array_12& T_array_13::ldadr(int32)
    ldsfld valuetype T_array_12 STRING_11    // "Yellow    "
    stobj valuetype T_array_12
    .line 146
    ldsflda valuetype T_array_13 _G::Condnames
    ldc.i4 3
    call instance valuetype T_array_12& T_array_13::ldadr(int32)
    ldsfld valuetype T_array_12 STRING_12    // "Black     "
    stobj valuetype T_array_12
    .line 147
    ldsflda valuetype T_array_13 _G::Condnames
    ldc.i4 4
    call instance valuetype T_array_12& T_array_13::ldadr(int32)
    ldsfld valuetype T_array_12 STRING_13    // "Docked    "
    stobj valuetype T_array_12
    .line 148
    ldsflda valuetype T_sectxy _G::Cursect
    ldc.i4 0
    ldc.i4 7
    call int32 Random(int32 Low, int32 Hi)
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_sectxy::x
    .line 149
    ldsflda valuetype T_sectxy _G::Cursect
    ldc.i4 0
    ldc.i4 7
    call int32 Random(int32 Low, int32 Hi)
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_sectxy::y
    .line 150
    ldsflda valuetype T_quadxy _G::Curquad
    ldc.i4 0
    ldc.i4 7
    call int32 Random(int32 Low, int32 Hi)
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_quadxy::x
    .line 151
    ldsflda valuetype T_quadxy _G::Curquad
    ldc.i4 0
    ldc.i4 7
    call int32 Random(int32 Low, int32 Hi)
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_quadxy::y
    .line 152
    ldc.i4 0
    stsfld int32 _G::Totalklingons
    .line 153
    ldc.i4 0
    stsfld int32 _G::Totalkbases
    .line 154
    ldc.i4 7
    stloc $tmpEndValue1
    ldc.i4 0
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @initialize::i
L_for_loop_1:
    .line 155
    ldc.i4 7
    stloc $tmpEndValue3
    ldc.i4 0
    dup
    ldloc $tmpEndValue3
    bgt L_for_end_4
    stloc $tmpIndex4
    ldloc _F
    ldloc $tmpIndex4
    stfld int32 @initialize::j
L_for_loop_3:
    .line 158
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldfld int32 @initialize::i
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldfld int32 @initialize::j
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldc.i4 0 // (false)
    stfld bool T_quadrec::Ishistory
    .line 159
    ldloc _F
    ldc.i4 0
    ldc.i4 7
    dup
    mul
    call int32 Random(int32 Low, int32 Hi)
    stfld int32 @initialize::Rnum
    .line 160
    ldc.i4 0
    ldc.i4 7
    dup
    mul
    call int32 Random(int32 Low, int32 Hi)
    ldc.i4 6
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_5
    .line 161
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldfld int32 @initialize::i
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldfld int32 @initialize::j
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldc.i4 1
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_quadrec::Klingbasenum
    br L_if_end_6
L_else_5:
    .line 163
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldfld int32 @initialize::i
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldfld int32 @initialize::j
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldc.i4 0
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_quadrec::Klingbasenum
L_if_end_6:
    .line 164
    ldsfld int32 _G::Totalkbases
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldfld int32 @initialize::i
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldfld int32 @initialize::j
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Klingbasenum
    add
    stsfld int32 _G::Totalkbases
    .line 165
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldfld int32 @initialize::i
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldfld int32 @initialize::j
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldc.i4 0
    ldc.i4 7
    call int32 Random(int32 Low, int32 Hi)
    neg
    conv.r8
    call float64 Expp(float64 r)
    ldc.i4 9
    conv.r8
    mul
    call int32 [lpcRuntime]LPC.Helpers::Trunc(float64)
    ldc.i4 2
    div
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_quadrec::Klingnum
    .line 166
    ldsfld int32 _G::Totalklingons
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldfld int32 @initialize::i
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldfld int32 @initialize::j
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Klingnum
    add
    stsfld int32 _G::Totalklingons
    .line 167
    ldc.i4 0
    ldc.i4 7
    dup
    mul
    call int32 Random(int32 Low, int32 Hi)
    ldc.i4 3
    clt
    brfalse L_else_7
    .line 168
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldfld int32 @initialize::i
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldfld int32 @initialize::j
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldc.i4 1
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_quadrec::Fedbasenum
    br L_if_end_8
L_else_7:
    .line 170
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldfld int32 @initialize::i
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldfld int32 @initialize::j
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldc.i4 0
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_quadrec::Fedbasenum
L_if_end_8:
    .line 171
    ldloc _F
    ldloc _F
    ldfld int32 @initialize::Totalfedbase
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldfld int32 @initialize::i
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldfld int32 @initialize::j
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Fedbasenum
    add
    stfld int32 @initialize::Totalfedbase
    .line 172
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldfld int32 @initialize::i
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldfld int32 @initialize::j
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldc.i4 0
    ldc.i4 7
    call int32 Random(int32 Low, int32 Hi)
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_quadrec::Starnum
    /* nop */
    ldloc _F
    ldfld int32 @initialize::j
    dup
    ldloc $tmpEndValue3
    beq L_for_end_4
    ldc.i4.1
    add
    stloc $tmpIndex5
    ldloc _F
    ldloc $tmpIndex5
    stfld int32 @initialize::j
    br L_for_loop_3
L_for_end_4:
    pop
    ldloc _F
    ldfld int32 @initialize::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex6
    ldloc _F
    ldloc $tmpIndex6
    stfld int32 @initialize::i
    br L_for_loop_1
L_for_end_2:
    pop
    .line 174
    ldsfld int32 _G::Totalklingons
    stsfld int32 _G::Startklingons
    .line 175
    ldloc _F
    ldfld int32 @initialize::Totalfedbase
    ldc.i4 0
    ceq
    brfalse L_if_end_9
    .line 176
    ldsflda valuetype T_array_20 _G::Galaxy
    ldc.i4 0
    ldc.i4 7
    call int32 Random(int32 Low, int32 Hi)
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldc.i4 0
    ldc.i4 7
    call int32 Random(int32 Low, int32 Hi)
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldc.i4 1
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_quadrec::Fedbasenum
L_if_end_9:
    .line 177
    ldsfld int32 _G::Totalkbases
    ldc.i4 0
    ceq
    brfalse L_if_end_10
    .line 179
    ldsflda valuetype T_array_20 _G::Galaxy
    ldc.i4 0
    ldc.i4 7
    call int32 Random(int32 Low, int32 Hi)
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldc.i4 0
    ldc.i4 7
    call int32 Random(int32 Low, int32 Hi)
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldc.i4 1
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_quadrec::Klingbasenum
    .line 181
    ldc.i4 1
    stsfld int32 _G::Totalkbases
    /* nop */
L_if_end_10:
    .line 183
    ldc.i4 3000
    ldc.i4 4000
    call int32 Random(int32 Low, int32 Hi)
    stsfld int32 _G::Curyear
    .line 184
    ldsfld int32 _G::Curyear
    stsfld int32 _G::Startyear
    .line 185
    ldsfld int32 _G::Startyear
    ldc.i4 10
    ldc.i4 40
    call int32 Random(int32 Low, int32 Hi)
    add
    stsfld int32 _G::Endyear
    .line 186
    ldc.i4 0
    stsfld int32 _G::Badpoints
    .line 187
    ldc.i4 7
    stsfld uint8 _G::Bell
    .line 188
    call void Reinitialize()
    /* nop */

L_Epilogue:
    ret
}

.line 191

.method static
void Setcondition()
{
    .maxstack 32

    .locals init(
        class @setcondition _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpEndValue3,
        int32 $tmpIndex4,
        int32 $tmpIndex5,
        int32 $tmpIndex6)
    
    newobj instance void @setcondition::.ctor()
    stloc _F

L_Entry:
    .line 194
    ldsflda valuetype T_array_20 _G::Galaxy
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Klingbasenum
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    brfalse L_else_1
    .line 195
    ldc.i4 3
    stsfld int32 _G::Condition
    br L_if_end_2
L_else_1:
    .line 197
    ldsflda valuetype T_array_20 _G::Galaxy
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Klingnum
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    brfalse L_else_3
    .line 198
    ldc.i4 1
    stsfld int32 _G::Condition
    br L_if_end_4
L_else_3:
    .line 200
    ldsfld int32 _G::Curenergy
    ldc.i4 5000
    ldc.i4 10
    div
    clt
    brfalse L_else_5
    .line 201
    ldc.i4 2
    stsfld int32 _G::Condition
    br L_if_end_6
L_else_5:
    .line 203
    ldc.i4 0
    stsfld int32 _G::Condition
L_if_end_6:
L_if_end_4:
L_if_end_2:
    .line 204
    ldsflda valuetype T_sectxy _G::Cursect
    ldfld int8 T_sectxy::x
    ldc.i4 1
    add
    stloc $tmpEndValue1
    ldsflda valuetype T_sectxy _G::Cursect
    ldfld int8 T_sectxy::x
    ldc.i4 1
    sub
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_8
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @setcondition::i
L_for_loop_7:
    .line 205
    ldsflda valuetype T_sectxy _G::Cursect
    ldfld int8 T_sectxy::y
    ldc.i4 1
    add
    stloc $tmpEndValue3
    ldsflda valuetype T_sectxy _G::Cursect
    ldfld int8 T_sectxy::y
    ldc.i4 1
    sub
    dup
    ldloc $tmpEndValue3
    bgt L_for_end_10
    stloc $tmpIndex4
    ldloc _F
    ldloc $tmpIndex4
    stfld int32 @setcondition::j
L_for_loop_9:
    .line 206
    ldsflda valuetype T_array_22 _G::Quadrant
    ldloc _F
    ldfld int32 @setcondition::i
    ldc.i4 0
    ldc.i4 7
    call int32 Interval(int32 Number, int32 Minvalue, int32 Maxvalue)
    call instance valuetype T_array_21& T_array_22::ldadr(int32)
    ldloc _F
    ldfld int32 @setcondition::j
    ldc.i4 0
    ldc.i4 7
    call int32 Interval(int32 Number, int32 Minvalue, int32 Maxvalue)
    call instance int32& T_array_21::ldadr(int32)
    ldobj int32
    ldc.i4 5
    ceq
    brfalse L_if_end_11
    .line 208
    ldc.i4 4
    stsfld int32 _G::Condition
L_if_end_11:
    ldloc _F
    ldfld int32 @setcondition::j
    dup
    ldloc $tmpEndValue3
    beq L_for_end_10
    ldc.i4.1
    add
    stloc $tmpIndex5
    ldloc _F
    ldloc $tmpIndex5
    stfld int32 @setcondition::j
    br L_for_loop_9
L_for_end_10:
    pop
    ldloc _F
    ldfld int32 @setcondition::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_8
    ldc.i4.1
    add
    stloc $tmpIndex6
    ldloc _F
    ldloc $tmpIndex6
    stfld int32 @setcondition::i
    br L_for_loop_7
L_for_end_8:
    pop
    /* nop */

L_Epilogue:
    ret
}

.line 211

.method static
void Klingonattack()
{
    .maxstack 32

    .locals init(
        class @klingonattack _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3)
    
    newobj instance void @klingonattack::.ctor()
    stloc _F

L_Entry:
    .line 216
    ldsflda valuetype T_array_20 _G::Galaxy
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Klingbasenum
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    dup
    brtrue L_OR_shortcut_1
    pop
    ldsflda valuetype T_array_20 _G::Galaxy
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Klingnum
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
L_OR_shortcut_1:
    brfalse L_if_end_2
    .line 218
    ldsfld int32 _G::Condition
    ldc.i4 4
    ceq
    brfalse L_else_3
    .line 219
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Starbase shields protect the Enterprise"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_if_end_4
L_else_3:
    .line 221
    ldc.i4 11
    stloc $tmpEndValue1
    ldc.i4 0
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_6
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @klingonattack::i
L_for_loop_5:
    .line 223
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @klingonattack::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldfld int32 T_klingonrec::Energyleft
    ldc.i4 0
    cgt
    brfalse L_if_end_7
    .line 225
    ldloc _F
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @klingonattack::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldfld int32 T_klingonrec::Energyleft
    conv.r8
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @klingonattack::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldflda valuetype T_sectxy T_klingonrec::Position
    ldfld int8 T_sectxy::x
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @klingonattack::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldflda valuetype T_sectxy T_klingonrec::Position
    ldfld int8 T_sectxy::y
    ldsfld valuetype T_sectxy _G::Cursect
    call int32 Distance(int8 Pos1x, int8 Pos1y, valuetype T_sectxy Pos2)
    conv.r8
    div
    ldc.i4 10
    ldc.i4 0
    ldc.i4 10
    call int32 Random(int32 Low, int32 Hi)
    add
    conv.r8
    mul
    ldc.i4 10
    conv.r8
    div
    call int32 [lpcRuntime]LPC.Helpers::Trunc(float64)
    stfld int32 @klingonattack::Hit
    .line 228
    ldsfld int32 _G::Curenergy
    ldloc _F
    ldfld int32 @klingonattack::Hit
    sub
    stsfld int32 _G::Curenergy
    .line 229
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @klingonattack::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldfld int32 T_klingonrec::Energyleft
    ldc.i4 5000
    ceq
    brfalse L_else_8
    .line 230
    ldloc _F
    ldsfld valuetype T_klingonattack_array_23 STRING_14    // "Starbase"
    stfld valuetype T_klingonattack_array_23 @klingonattack::Shiptype
    br L_if_end_9
L_else_8:
    .line 232
    ldloc _F
    ldsfld valuetype T_klingonattack_array_23 STRING_15    // "        "
    stfld valuetype T_klingonattack_array_23 @klingonattack::Shiptype
L_if_end_9:
    .line 233
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int32 @klingonattack::Hit
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " unit hit on Enterprise from Klingon "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 234
    ldloc _F
    ldflda valuetype T_klingonattack_array_23 @klingonattack::Shiptype
    ldc.i4 1
    call instance uint8& T_klingonattack_array_23::ldadr(int32)
    ldobj uint8
    ldc.i4 32 // ' '
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_10
    .line 234
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld valuetype T_klingonattack_array_23 @klingonattack::Shiptype
    call string T_klingonattack_array_23::arrayToString(valuetype T_klingonattack_array_23)
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_10:
    .line 235
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "at sector "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @klingonattack::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldflda valuetype T_sectxy T_klingonrec::Position
    ldfld int8 T_sectxy::x
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 45 // '-'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @klingonattack::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldflda valuetype T_sectxy T_klingonrec::Position
    ldfld int8 T_sectxy::y
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " ("
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Curenergy
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " left)"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
L_if_end_7:
    ldloc _F
    ldfld int32 @klingonattack::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_6
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @klingonattack::i
    br L_for_loop_5
L_for_end_6:
    pop
L_if_end_4:
    /* nop */
L_if_end_2:
    /* nop */

L_Epilogue:
    ret
}

.line 241

.method static
void Printdigit(int32 Number, bool& Mustprint)
{
    .maxstack 32

    .locals init(class @printdigit _F,
        bool& pinned $Mustprint)
    
    newobj instance void @printdigit::.ctor()
    stloc _F
    
    ldarg Mustprint
    stloc $Mustprint
    
    ldloc _F
    ldarg Mustprint
    stfld bool* @printdigit::Mustprint
    
    ldloc _F
    ldarg Number
    stfld int32 @printdigit::Number

L_Entry:
    .line 243
    ldloc _F
    ldfld bool* @printdigit::Mustprint
    ldloc _F
    ldfld bool* @printdigit::Mustprint
    ldobj bool
    dup
    brtrue L_OR_shortcut_1
    pop
    ldloc _F
    ldfld int32 @printdigit::Number
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
L_OR_shortcut_1:
    stobj bool
    .line 244
    ldloc _F
    ldfld bool* @printdigit::Mustprint
    ldobj bool
    brfalse L_else_2
    .line 245
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int32 @printdigit::Number
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    br L_if_end_3
L_else_2:
    .line 247
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_3:
    /* nop */

L_Epilogue:
    ret
}

.line 250

.method static
void Setupquad(valuetype T_quadxy Quad, valuetype T_sectxy& Entsect)
{
    .maxstack 32

    .locals init(
        class @setupquad _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpEndValue3,
        int32 $tmpIndex4,
        int32 $tmpIndex5,
        int32 $tmpIndex6,
        int32 $tmpEndValue7,
        int32 $tmpIndex8,
        int32 $tmpEndValue9,
        int32 $tmpIndex10,
        valuetype T_set_27 $tmpSetLiteral11,
        int32 $tmpIndex12,
        int32 $tmpIndex13,
        int32 $tmpEndValue14,
        int32 $tmpIndex15,
        int32 $tmpIndex16,
        valuetype T_sectxy& pinned $Entsect)
    
    newobj instance void @setupquad::.ctor()
    stloc _F
    
    ldarg Entsect
    stloc $Entsect
    
    ldloc _F
    ldarg Entsect
    stfld valuetype T_sectxy* @setupquad::Entsect
    
    ldloc _F
    ldarg Quad
    stfld valuetype T_quadxy @setupquad::Quad

    ldloca $tmpSetLiteral11
    ldc.i4 4
    call instance void T_set_27::addValue(int32)
    ldloca $tmpSetLiteral11
    ldc.i4 6
    call instance void T_set_27::addValue(int32)

L_Entry:
    .line 268
    ldc.i4 7
    stloc $tmpEndValue1
    ldc.i4 0
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @setupquad::i
L_for_loop_1:
    .line 269
    ldc.i4 7
    stloc $tmpEndValue3
    ldc.i4 0
    dup
    ldloc $tmpEndValue3
    bgt L_for_end_4
    stloc $tmpIndex4
    ldloc _F
    ldloc $tmpIndex4
    stfld int32 @setupquad::j
L_for_loop_3:
    .line 270
    ldsflda valuetype T_array_22 _G::Quadrant
    ldloc _F
    ldfld int32 @setupquad::i
    call instance valuetype T_array_21& T_array_22::ldadr(int32)
    ldloc _F
    ldfld int32 @setupquad::j
    call instance int32& T_array_21::ldadr(int32)
    ldc.i4 0
    stobj int32
    ldloc _F
    ldfld int32 @setupquad::j
    dup
    ldloc $tmpEndValue3
    beq L_for_end_4
    ldc.i4.1
    add
    stloc $tmpIndex5
    ldloc _F
    ldloc $tmpIndex5
    stfld int32 @setupquad::j
    br L_for_loop_3
L_for_end_4:
    pop
    ldloc _F
    ldfld int32 @setupquad::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex6
    ldloc _F
    ldloc $tmpIndex6
    stfld int32 @setupquad::i
    br L_for_loop_1
L_for_end_2:
    pop
    .line 271
    ldloc _F
    ldfld valuetype T_sectxy* @setupquad::Entsect
    ldc.i4 0
    ldc.i4 7
    call int32 Random(int32 Low, int32 Hi)
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_sectxy::x
    .line 272
    ldloc _F
    ldfld valuetype T_sectxy* @setupquad::Entsect
    ldc.i4 0
    ldc.i4 7
    call int32 Random(int32 Low, int32 Hi)
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_sectxy::y
    .line 273
    ldsflda valuetype T_array_22 _G::Quadrant
    ldloc _F
    ldfld valuetype T_sectxy* @setupquad::Entsect
    ldfld int8 T_sectxy::x
    call instance valuetype T_array_21& T_array_22::ldadr(int32)
    ldloc _F
    ldfld valuetype T_sectxy* @setupquad::Entsect
    ldfld int8 T_sectxy::y
    call instance int32& T_array_21::ldadr(int32)
    ldc.i4 2
    stobj int32
    .line 276
    ldloc _F
    ldc.i4 0
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldflda valuetype T_quadxy @setupquad::Quad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldflda valuetype T_quadxy @setupquad::Quad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Starnum
    ldc.i4 2
    div
    call int32 Random(int32 Low, int32 Hi)
    stfld int32 @setupquad::Novacount
    .line 277
    ldloc _F
    ldc.i4 1
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldflda valuetype T_quadxy @setupquad::Quad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldflda valuetype T_quadxy @setupquad::Quad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Starnum
    ldloc _F
    ldfld int32 @setupquad::Novacount
    sub
    call instance void @setupquad::Setupstuff(int32 Object, int32 Count)
    .line 278
    ldloc _F
    ldc.i4 3
    ldloc _F
    ldfld int32 @setupquad::Novacount
    call instance void @setupquad::Setupstuff(int32 Object, int32 Count)
    .line 279
    ldloc _F
    ldc.i4 4
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldflda valuetype T_quadxy @setupquad::Quad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldflda valuetype T_quadxy @setupquad::Quad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Klingnum
    call instance void @setupquad::Setupstuff(int32 Object, int32 Count)
    .line 280
    ldloc _F
    ldc.i4 5
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldflda valuetype T_quadxy @setupquad::Quad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldflda valuetype T_quadxy @setupquad::Quad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Fedbasenum
    call instance void @setupquad::Setupstuff(int32 Object, int32 Count)
    .line 281
    ldloc _F
    ldc.i4 6
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldflda valuetype T_quadxy @setupquad::Quad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldflda valuetype T_quadxy @setupquad::Quad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Klingbasenum
    call instance void @setupquad::Setupstuff(int32 Object, int32 Count)
    /* nop */
    .line 283
    ldloc _F
    ldc.i4 0
    stfld int32 @setupquad::Klingindex
    .line 284
    ldc.i4 7
    stloc $tmpEndValue7
    ldc.i4 0
    dup
    ldloc $tmpEndValue7
    bgt L_for_end_6
    stloc $tmpIndex8
    ldloc _F
    ldloc $tmpIndex8
    stfld int32 @setupquad::i
L_for_loop_5:
    .line 285
    ldc.i4 7
    stloc $tmpEndValue9
    ldc.i4 0
    dup
    ldloc $tmpEndValue9
    bgt L_for_end_8
    stloc $tmpIndex10
    ldloc _F
    ldloc $tmpIndex10
    stfld int32 @setupquad::j
L_for_loop_7:
    .line 286
    ldloc $tmpSetLiteral11
    ldsflda valuetype T_array_22 _G::Quadrant
    ldloc _F
    ldfld int32 @setupquad::i
    call instance valuetype T_array_21& T_array_22::ldadr(int32)
    ldloc _F
    ldfld int32 @setupquad::j
    call instance int32& T_array_21::ldadr(int32)
    ldobj int32
    call bool _SetContains(valuetype T_set_27 s, int32 val)
    brfalse L_if_end_9
    .line 289
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @setupquad::Klingindex
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldflda valuetype T_sectxy T_klingonrec::Position
    ldloc _F
    ldfld int32 @setupquad::i
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_sectxy::x
    .line 290
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @setupquad::Klingindex
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldflda valuetype T_sectxy T_klingonrec::Position
    ldloc _F
    ldfld int32 @setupquad::j
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_sectxy::y
    .line 291
    ldsflda valuetype T_array_22 _G::Quadrant
    ldloc _F
    ldfld int32 @setupquad::i
    call instance valuetype T_array_21& T_array_22::ldadr(int32)
    ldloc _F
    ldfld int32 @setupquad::j
    call instance int32& T_array_21::ldadr(int32)
    ldobj int32
    ldc.i4 6
    ceq
    brfalse L_else_10
    .line 292
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @setupquad::Klingindex
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldc.i4 5000
    stfld int32 T_klingonrec::Energyleft
    br L_if_end_11
L_else_10:
    .line 294
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @setupquad::Klingindex
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldc.i4 300
    stfld int32 T_klingonrec::Energyleft
L_if_end_11:
    .line 295
    ldloc _F
    ldloc _F
    ldfld int32 @setupquad::Klingindex
    ldc.i4 1
    add
    stfld int32 @setupquad::Klingindex
    /* nop */
L_if_end_9:
    ldloc _F
    ldfld int32 @setupquad::j
    dup
    ldloc $tmpEndValue9
    beq L_for_end_8
    ldc.i4.1
    add
    stloc $tmpIndex12
    ldloc _F
    ldloc $tmpIndex12
    stfld int32 @setupquad::j
    br L_for_loop_7
L_for_end_8:
    pop
    ldloc _F
    ldfld int32 @setupquad::i
    dup
    ldloc $tmpEndValue7
    beq L_for_end_6
    ldc.i4.1
    add
    stloc $tmpIndex13
    ldloc _F
    ldloc $tmpIndex13
    stfld int32 @setupquad::i
    br L_for_loop_5
L_for_end_6:
    pop
    .line 297
    ldc.i4 11
    stloc $tmpEndValue14
    ldloc _F
    ldfld int32 @setupquad::Klingindex
    dup
    ldloc $tmpEndValue14
    bgt L_for_end_13
    stloc $tmpIndex15
    ldloc _F
    ldloc $tmpIndex15
    stfld int32 @setupquad::Klingindex
L_for_loop_12:
    .line 298
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @setupquad::Klingindex
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldc.i4 0
    stfld int32 T_klingonrec::Energyleft
    ldloc _F
    ldfld int32 @setupquad::Klingindex
    dup
    ldloc $tmpEndValue14
    beq L_for_end_13
    ldc.i4.1
    add
    stloc $tmpIndex16
    ldloc _F
    ldloc $tmpIndex16
    stfld int32 @setupquad::Klingindex
    br L_for_loop_12
L_for_end_13:
    pop
    /* nop */

L_Epilogue:
    ret
}

.line 301

.method static
void Printquadrant()
{
    .maxstack 32

    .locals init(
        class @printquadrant _F,
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        int8 $tmpEndValue3,
        int8 $tmpIndex4,
        int8 $tmpIndex5,
        int8 $tmpSwitchValue6,
        int8 $tmpIndex7)
    
    newobj instance void @printquadrant::.ctor()
    stloc _F

L_Entry:
    .line 304
    call void Setcondition()
    .line 305
    ldsflda valuetype T_array_2 _G::Device
    ldc.i4 49 // '1'
    call instance valuetype T_devicerec& T_array_2::ldadr(int32)
    ldfld int32 T_devicerec::Downtime
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    brfalse L_else_1
    .line 306
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "*** Short Range Sensors Inoperable ***"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_if_end_2
L_else_1:
    .line 309
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "----------------------"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 310
    ldc.i4 7
    stloc $tmpEndValue1
    ldc.i4 0
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_4
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int8 @printquadrant::i
L_for_loop_3:
    .line 312
    ldc.i4 7
    stloc $tmpEndValue3
    ldc.i4 0
    dup
    ldloc $tmpEndValue3
    bgt L_for_end_6
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex4
    ldloc _F
    ldloc $tmpIndex4
    stfld int8 @printquadrant::j
L_for_loop_5:
    .line 313
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsflda valuetype T_array_11 _G::Symbols
    ldsflda valuetype T_array_22 _G::Quadrant
    ldloc _F
    ldfld int8 @printquadrant::i
    call instance valuetype T_array_21& T_array_22::ldadr(int32)
    ldloc _F
    ldfld int8 @printquadrant::j
    call instance int32& T_array_21::ldadr(int32)
    ldobj int32
    call instance uint8& T_array_11::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldloc _F
    ldfld int8 @printquadrant::j
    dup
    ldloc $tmpEndValue3
    beq L_for_end_6
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex5
    ldloc _F
    ldloc $tmpIndex5
    stfld int8 @printquadrant::j
    br L_for_loop_5
L_for_end_6:
    pop
    .line 314
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 315
    ldloc _F
    ldfld int8 @printquadrant::i
    stloc $tmpSwitchValue6
    ldloc $tmpSwitchValue6
    ldc.i4 0
    bne.un L_check_case_8
    .line 316
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Stardate         "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Curyear
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_7
L_check_case_8:
    ldloc $tmpSwitchValue6
    ldc.i4 1
    bne.un L_check_case_9
    .line 317
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Condition        "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsflda valuetype T_array_13 _G::Condnames
    ldsfld int32 _G::Condition
    call instance valuetype T_array_12& T_array_13::ldadr(int32)
    ldobj valuetype T_array_12
    call string T_array_12::arrayToString(valuetype T_array_12)
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_7
L_check_case_9:
    ldloc $tmpSwitchValue6
    ldc.i4 2
    bne.un L_check_case_10
    .line 318
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Quadrant         "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 45 // '-'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_7
L_check_case_10:
    ldloc $tmpSwitchValue6
    ldc.i4 3
    bne.un L_check_case_11
    .line 319
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Sector           "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_sectxy _G::Cursect
    ldfld int8 T_sectxy::x
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 45 // '-'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_sectxy _G::Cursect
    ldfld int8 T_sectxy::y
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_7
L_check_case_11:
    ldloc $tmpSwitchValue6
    ldc.i4 4
    bne.un L_check_case_12
    .line 320
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Energy           "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Curenergy
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_7
L_check_case_12:
    ldloc $tmpSwitchValue6
    ldc.i4 5
    bne.un L_check_case_13
    .line 321
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Photon torpedoes "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Curtorps
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_7
L_check_case_13:
    ldloc $tmpSwitchValue6
    ldc.i4 6
    bne.un L_check_case_14
    .line 322
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Klingons left    "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Totalklingons
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_7
L_check_case_14:
    ldloc $tmpSwitchValue6
    ldc.i4 7
    bne.un L_case_end_7
    .line 323
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_case_end_7:
    /* nop */
    ldloc _F
    ldfld int8 @printquadrant::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_4
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex7
    ldloc _F
    ldloc $tmpIndex7
    stfld int8 @printquadrant::i
    br L_for_loop_3
L_for_end_4:
    pop
    .line 326
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "----------------------"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
L_if_end_2:
    /* nop */

L_Epilogue:
    ret
}

.line 330

.method static
void Printgalaxy(int32 Topx, int32 Lefty, int32 Size, bool Markhistory)
{
    .maxstack 32

    .locals init(
        class @printgalaxy _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpEndValue3,
        int32 $tmpIndex4,
        valuetype T_set_28 $tmpSetLiteral5,
        valuetype T_set_28 $tmpSetLiteral6,
        int32 $tmpIndex7,
        int32 $tmpIndex8)
    
    newobj instance void @printgalaxy::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Lefty
    stfld int32 @printgalaxy::Lefty
    
    ldloc _F
    ldarg Markhistory
    stfld bool @printgalaxy::Markhistory
    
    ldloc _F
    ldarg Size
    stfld int32 @printgalaxy::Size
    
    ldloc _F
    ldarg Topx
    stfld int32 @printgalaxy::Topx

    ldloca $tmpSetLiteral5
    ldc.i4 0
    ldc.i4 7
    call instance void T_set_28::addRange(int32, int32)

    ldloca $tmpSetLiteral6
    ldc.i4 0
    ldc.i4 7
    call instance void T_set_28::addRange(int32, int32)

L_Entry:
    .line 344
    ldloc _F
    ldfld bool @printgalaxy::Markhistory
    brfalse L_else_1
    .line 345
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Long Range Sensor Scan For Quadrant "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 45 // '-'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_if_end_2
L_else_1:
    .line 349
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "History Computer Report; Stardate "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Curyear
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 350
    ldsfld int32 _G::Condition
    ldc.i4 4
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_3
    .line 351
    ldsfld int32 _G::Curenergy
    ldc.i4 100
    sub
    stsfld int32 _G::Curenergy
L_if_end_3:
    /* nop */
L_if_end_2:
    .line 353
    ldloc _F
    ldloc _F
    ldfld int32 @printgalaxy::Size
    call instance void @printgalaxy::Printseparator(int32 Entries)
    .line 354
    ldloc _F
    ldfld int32 @printgalaxy::Topx
    ldloc _F
    ldfld int32 @printgalaxy::Size
    add
    stloc $tmpEndValue1
    ldloc _F
    ldfld int32 @printgalaxy::Topx
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_5
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @printgalaxy::i
L_for_loop_4:
    .line 356
    ldloc _F
    ldfld int32 @printgalaxy::Lefty
    ldloc _F
    ldfld int32 @printgalaxy::Size
    add
    stloc $tmpEndValue3
    ldloc _F
    ldfld int32 @printgalaxy::Lefty
    dup
    ldloc $tmpEndValue3
    bgt L_for_end_7
    stloc $tmpIndex4
    ldloc _F
    ldloc $tmpIndex4
    stfld int32 @printgalaxy::j
L_for_loop_6:
    .line 357
    ldloc $tmpSetLiteral5
    ldloc _F
    ldfld int32 @printgalaxy::i
    call bool _SetContains(valuetype T_set_28 s, int32 val)
    dup
    brfalse L_AND_shortcut_8
    pop
    ldloc $tmpSetLiteral6
    ldloc _F
    ldfld int32 @printgalaxy::j
    call bool _SetContains(valuetype T_set_28 s, int32 val)
L_AND_shortcut_8:
    brfalse L_else_9
    .line 359
    ldloc _F
    ldfld bool @printgalaxy::Markhistory
    dup
    brtrue L_OR_shortcut_11
    pop
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldfld int32 @printgalaxy::i
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldfld int32 @printgalaxy::j
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld bool T_quadrec::Ishistory
L_OR_shortcut_11:
    brfalse L_else_12
    .line 361
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldfld int32 @printgalaxy::i
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldfld int32 @printgalaxy::j
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldfld int32 @printgalaxy::i
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldfld int32 @printgalaxy::j
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld bool T_quadrec::Ishistory
    dup
    brtrue L_OR_shortcut_14
    pop
    ldsflda valuetype T_array_2 _G::Device
    ldc.i4 54 // '6'
    call instance valuetype T_devicerec& T_array_2::ldadr(int32)
    ldfld int32 T_devicerec::Downtime
    ldc.i4 0
    ceq
L_OR_shortcut_14:
    stfld bool T_quadrec::Ishistory
    .line 362
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @printgalaxy::Mustprint
    .line 363
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 124 // '|'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 364
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldfld int32 @printgalaxy::i
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldfld int32 @printgalaxy::j
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Klingbasenum
    ldloc _F
    ldflda bool @printgalaxy::Mustprint
    call void Printdigit(int32 Number, bool& Mustprint)
    .line 365
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldfld int32 @printgalaxy::i
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldfld int32 @printgalaxy::j
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Klingnum
    ldloc _F
    ldflda bool @printgalaxy::Mustprint
    call void Printdigit(int32 Number, bool& Mustprint)
    .line 366
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldfld int32 @printgalaxy::i
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldfld int32 @printgalaxy::j
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Fedbasenum
    ldloc _F
    ldflda bool @printgalaxy::Mustprint
    call void Printdigit(int32 Number, bool& Mustprint)
    .line 367
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @printgalaxy::Mustprint
    .line 368
    ldsflda valuetype T_array_20 _G::Galaxy
    ldloc _F
    ldfld int32 @printgalaxy::i
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldloc _F
    ldfld int32 @printgalaxy::j
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Starnum
    ldloc _F
    ldflda bool @printgalaxy::Mustprint
    call void Printdigit(int32 Number, bool& Mustprint)
    .line 369
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    /* nop */
    br L_if_end_13
L_else_12:
    .line 372
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "|+++++"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_13:
    br L_if_end_10
L_else_9:
    .line 374
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "|xxxxx"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_10:
    ldloc _F
    ldfld int32 @printgalaxy::j
    dup
    ldloc $tmpEndValue3
    beq L_for_end_7
    ldc.i4.1
    add
    stloc $tmpIndex7
    ldloc _F
    ldloc $tmpIndex7
    stfld int32 @printgalaxy::j
    br L_for_loop_6
L_for_end_7:
    pop
    .line 375
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 124 // '|'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 376
    ldloc _F
    ldloc _F
    ldfld int32 @printgalaxy::Size
    call instance void @printgalaxy::Printseparator(int32 Entries)
    /* nop */
    ldloc _F
    ldfld int32 @printgalaxy::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_5
    ldc.i4.1
    add
    stloc $tmpIndex8
    ldloc _F
    ldloc $tmpIndex8
    stfld int32 @printgalaxy::i
    br L_for_loop_4
L_for_end_5:
    pop
    /* nop */

L_Epilogue:
    ret
}

.line 380

.method static
void Printdamage()
{
    .maxstack 32

    .locals init(
        class @printdamage _F,
        uint8 $tmpEndValue1,
        uint8 $tmpIndex2,
        uint8 $tmpIndex3)
    
    newobj instance void @printdamage::.ctor()
    stloc _F

L_Entry:
    .line 383
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Device name:      Repair Time:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 384
    ldc.i4 55 // '7'
    stloc $tmpEndValue1
    ldc.i4 48 // '0'
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld uint8 @printdamage::Ch
L_for_loop_1:
    .line 385
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 20
    ldc.i4.0
    ldsflda valuetype T_array_2 _G::Device
    ldloc _F
    ldfld uint8 @printdamage::Ch
    call instance valuetype T_devicerec& T_array_2::ldadr(int32)
    ldfld valuetype T_array_1 T_devicerec::Name
    call string T_array_1::arrayToString(valuetype T_array_1)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_2 _G::Device
    ldloc _F
    ldfld uint8 @printdamage::Ch
    call instance valuetype T_devicerec& T_array_2::ldadr(int32)
    ldfld int32 T_devicerec::Downtime
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    ldloc _F
    ldfld uint8 @printdamage::Ch
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld uint8 @printdamage::Ch
    br L_for_loop_1
L_for_end_2:
    pop
    /* nop */

L_Epilogue:
    ret
}

.line 388

.method static
void Moveenterprise()
{
    .maxstack 32

    .locals init(
        class @moveenterprise _F,
        valuetype T_set_28 $tmpSetLiteral1,
        valuetype T_set_28 $tmpSetLiteral2,
        valuetype T_set_28 $tmpSetLiteral3,
        valuetype T_set_28 $tmpSetLiteral4,
        valuetype T_set_27 $tmpSetLiteral5)
    
    newobj instance void @moveenterprise::.ctor()
    stloc _F

    ldloca $tmpSetLiteral1
    ldc.i4 0
    ldc.i4 7
    call instance void T_set_28::addRange(int32, int32)

    ldloca $tmpSetLiteral2
    ldc.i4 0
    ldc.i4 7
    call instance void T_set_28::addRange(int32, int32)

    ldloca $tmpSetLiteral3
    ldc.i4 0
    ldc.i4 7
    call instance void T_set_28::addRange(int32, int32)

    ldloca $tmpSetLiteral4
    ldc.i4 0
    ldc.i4 7
    call instance void T_set_28::addRange(int32, int32)

    ldloca $tmpSetLiteral5
    ldc.i4 1
    call instance void T_set_27::addValue(int32)
    ldloca $tmpSetLiteral5
    ldc.i4 3
    call instance void T_set_27::addValue(int32)
    ldloca $tmpSetLiteral5
    ldc.i4 4
    call instance void T_set_27::addValue(int32)
    ldloca $tmpSetLiteral5
    ldc.i4 6
    call instance void T_set_27::addValue(int32)

L_Entry:
    .line 445
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Course: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 446
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    dup
    ldloc _F
    ldflda int32 @moveenterprise::Course
    ldc.i4 -2147483648
    ldc.i4 2147483647
    call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 447
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Warp factor (0-12): "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 448
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    dup
    ldloc _F
    ldflda float64 @moveenterprise::Warp
    call instance void [lpcRuntime]LPC.File::Read(float64*)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 449
    ldloc _F
    ldfld float64 @moveenterprise::Warp
    ldc.r8 0.000000
    clt
    dup
    brtrue L_OR_shortcut_2
    pop
    ldloc _F
    ldfld float64 @moveenterprise::Warp
    ldc.r8 12.0000
    cgt
L_OR_shortcut_2:
    dup
    brtrue L_OR_shortcut_1
    pop
    ldloc _F
    ldfld float64 @moveenterprise::Warp
    ldc.r8 0.200000
    cgt
    dup
    brfalse L_AND_shortcut_3
    pop
    ldsflda valuetype T_array_2 _G::Device
    ldc.i4 48 // '0'
    call instance valuetype T_devicerec& T_array_2::ldadr(int32)
    ldfld int32 T_devicerec::Downtime
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
L_AND_shortcut_3:
L_OR_shortcut_1:
    brfalse L_else_4
    .line 451
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Can't move that fast !!"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_if_end_5
L_else_4:
    .line 454
    ldsfld int32 _G::Curyear
    ldc.i4 1
    add
    stsfld int32 _G::Curyear
    .line 455
    ldsfld int32 _G::Curenergy
    conv.r8
    ldc.i4 8
    conv.r8
    ldloc _F
    ldfld float64 @moveenterprise::Warp
    mul
    sub
    call int32 [lpcRuntime]LPC.Helpers::Trunc(float64)
    stsfld int32 _G::Curenergy
    .line 456
    ldloc _F
    call instance void @moveenterprise::Handledamage()
    .line 457
    ldsflda valuetype T_array_22 _G::Quadrant
    ldsflda valuetype T_sectxy _G::Cursect
    ldfld int8 T_sectxy::x
    call instance valuetype T_array_21& T_array_22::ldadr(int32)
    ldsflda valuetype T_sectxy _G::Cursect
    ldfld int8 T_sectxy::y
    call instance int32& T_array_21::ldadr(int32)
    ldc.i4 0
    stobj int32
    .line 458
    ldloc _F
    ldloc _F
    ldflda float64 @moveenterprise::Xpos
    ldloc _F
    ldflda float64 @moveenterprise::Ypos
    ldloc _F
    ldflda float64 @moveenterprise::Xinc
    ldloc _F
    ldflda float64 @moveenterprise::Yinc
    ldloc _F
    ldfld int32 @moveenterprise::Course
    ldloc _F
    ldfld float64 @moveenterprise::Warp
    call instance void @moveenterprise::Moveintra(float64& Xpos, float64& Ypos, float64& Xinc, float64& Yinc, int32 Course, float64 Warp)
    .line 459
    ldloc $tmpSetLiteral1
    ldloc _F
    ldfld float64 @moveenterprise::Xpos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call bool _SetContains(valuetype T_set_28 s, int32 val)
    dup
    brfalse L_AND_shortcut_6
    pop
    ldloc $tmpSetLiteral2
    ldloc _F
    ldfld float64 @moveenterprise::Ypos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call bool _SetContains(valuetype T_set_28 s, int32 val)
L_AND_shortcut_6:
    brfalse L_if_end_7
    .line 461
    ldsflda valuetype T_array_22 _G::Quadrant
    ldloc _F
    ldfld float64 @moveenterprise::Xpos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance valuetype T_array_21& T_array_22::ldadr(int32)
    ldloc _F
    ldfld float64 @moveenterprise::Ypos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance int32& T_array_21::ldadr(int32)
    ldobj int32
    ldc.i4 5
    ceq
    brfalse L_if_end_8
    .line 463
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Collision with starbase's elastic shields at sector "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld float64 @moveenterprise::Xpos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 45 // '-'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld float64 @moveenterprise::Ypos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 465
    ldloc _F
    ldloc _F
    ldflda float64 @moveenterprise::Xpos
    ldloc _F
    ldflda float64 @moveenterprise::Ypos
    ldloc _F
    ldflda float64 @moveenterprise::Xinc
    ldloc _F
    ldflda float64 @moveenterprise::Yinc
    ldloc _F
    ldfld int32 @moveenterprise::Course
    ldc.i4 180
    add
    ldc.i4 360
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    ldloc _F
    ldfld float64 @moveenterprise::Warp
    call instance void @moveenterprise::Moveintra(float64& Xpos, float64& Ypos, float64& Xinc, float64& Yinc, int32 Course, float64 Warp)
    /* nop */
L_if_end_8:
L_if_end_7:
    .line 467
    ldloc $tmpSetLiteral3
    ldloc _F
    ldfld float64 @moveenterprise::Xpos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call bool _SetContains(valuetype T_set_28 s, int32 val)
    dup
    brfalse L_AND_shortcut_9
    pop
    ldloc $tmpSetLiteral4
    ldloc _F
    ldfld float64 @moveenterprise::Ypos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call bool _SetContains(valuetype T_set_28 s, int32 val)
L_AND_shortcut_9:
    brfalse L_else_10
    .line 470
    ldloc $tmpSetLiteral5
    ldsflda valuetype T_array_22 _G::Quadrant
    ldloc _F
    ldfld float64 @moveenterprise::Xpos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance valuetype T_array_21& T_array_22::ldadr(int32)
    ldloc _F
    ldfld float64 @moveenterprise::Ypos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance int32& T_array_21::ldadr(int32)
    ldobj int32
    call bool _SetContains(valuetype T_set_27 s, int32 val)
    brfalse L_if_end_12
    .line 473
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Enterprise blocked by object at sector "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld float64 @moveenterprise::Xpos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 45 // '-'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld float64 @moveenterprise::Ypos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 475
    ldloc _F
    ldloc _F
    ldfld float64 @moveenterprise::Xpos
    ldloc _F
    ldfld float64 @moveenterprise::Xinc
    sub
    stfld float64 @moveenterprise::Xpos
    .line 476
    ldloc _F
    ldloc _F
    ldfld float64 @moveenterprise::Ypos
    ldloc _F
    ldfld float64 @moveenterprise::Yinc
    sub
    stfld float64 @moveenterprise::Ypos
    /* nop */
L_if_end_12:
    .line 478
    ldsflda valuetype T_sectxy _G::Cursect
    ldloc _F
    ldfld float64 @moveenterprise::Xpos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    ldc.i4 0
    ldc.i4 7
    call int32 Interval(int32 Number, int32 Minvalue, int32 Maxvalue)
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_sectxy::x
    .line 479
    ldsflda valuetype T_sectxy _G::Cursect
    ldloc _F
    ldfld float64 @moveenterprise::Ypos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    ldc.i4 0
    ldc.i4 7
    call int32 Interval(int32 Number, int32 Minvalue, int32 Maxvalue)
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_sectxy::y
    .line 480
    ldsflda valuetype T_array_22 _G::Quadrant
    ldsflda valuetype T_sectxy _G::Cursect
    ldfld int8 T_sectxy::x
    call instance valuetype T_array_21& T_array_22::ldadr(int32)
    ldsflda valuetype T_sectxy _G::Cursect
    ldfld int8 T_sectxy::y
    call instance int32& T_array_21::ldadr(int32)
    ldc.i4 2
    stobj int32
    /* nop */
    br L_if_end_11
L_else_10:
    .line 484
    ldsflda valuetype T_quadxy _G::Curquad
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    conv.r8
    ldloc _F
    ldfld float64 @moveenterprise::Warp
    ldloc _F
    ldfld float64 @moveenterprise::Xinc
    mul
    add
    ldsflda valuetype T_sectxy _G::Cursect
    ldfld int8 T_sectxy::x
    conv.r8
    ldc.r8 0.125000
    mul
    add
    call int32 [lpcRuntime]LPC.Helpers::Trunc(float64)
    ldc.i4 0
    ldc.i4 7
    call int32 Interval(int32 Number, int32 Minvalue, int32 Maxvalue)
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_quadxy::x
    .line 486
    ldsflda valuetype T_quadxy _G::Curquad
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    conv.r8
    ldloc _F
    ldfld float64 @moveenterprise::Warp
    ldloc _F
    ldfld float64 @moveenterprise::Yinc
    mul
    add
    ldsflda valuetype T_sectxy _G::Cursect
    ldfld int8 T_sectxy::y
    conv.r8
    ldc.r8 0.125000
    mul
    add
    call int32 [lpcRuntime]LPC.Helpers::Trunc(float64)
    ldc.i4 0
    ldc.i4 7
    call int32 Interval(int32 Number, int32 Minvalue, int32 Maxvalue)
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_quadxy::y
    .line 488
    ldsfld valuetype T_quadxy _G::Curquad
    ldsflda valuetype T_sectxy _G::Cursect
    call void Setupquad(valuetype T_quadxy Quad, valuetype T_sectxy& Entsect)
    /* nop */
L_if_end_11:
    /* nop */
L_if_end_5:
    .line 491
    call void Setcondition()
    .line 492
    ldsfld int32 _G::Condition
    ldc.i4 4
    ceq
    brfalse L_if_end_13
    .line 493
    call void Reinitialize()
L_if_end_13:
    /* nop */

L_Epilogue:
    ret
}

.line 496

.method static
void Firephasers()
{
    .maxstack 32

    .locals init(
        class @firephasers _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3)
    
    newobj instance void @firephasers::.ctor()
    stloc _F

L_Entry:
    .line 499
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Phasers locked on target.  Energy available = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Curenergy
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 500
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Number of units to fire: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 501
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    dup
    ldloc _F
    ldflda int32 @firephasers::Fireamount
    ldc.i4 -2147483648
    ldc.i4 2147483647
    call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 502
    ldloc _F
    ldfld int32 @firephasers::Fireamount
    ldsfld int32 _G::Curenergy
    cgt
    brfalse L_else_1
    .line 503
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Unable to fire."
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_if_end_2
L_else_1:
    .line 505
    ldloc _F
    ldfld int32 @firephasers::Fireamount
    ldc.i4 0
    cgt
    brfalse L_if_end_3
    .line 507
    ldsfld int32 _G::Condition
    ldc.i4 4
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_4
    .line 508
    ldsfld int32 _G::Curenergy
    ldloc _F
    ldfld int32 @firephasers::Fireamount
    sub
    stsfld int32 _G::Curenergy
L_if_end_4:
    .line 509
    ldc.i4 11
    stloc $tmpEndValue1
    ldc.i4 0
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_6
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @firephasers::i
L_for_loop_5:
    .line 511
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @firephasers::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldfld int32 T_klingonrec::Energyleft
    ldc.i4 0
    cgt
    brfalse L_if_end_7
    .line 513
    ldloc _F
    ldloc _F
    ldfld int32 @firephasers::Fireamount
    conv.r8
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @firephasers::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldflda valuetype T_sectxy T_klingonrec::Position
    ldfld int8 T_sectxy::x
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @firephasers::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldflda valuetype T_sectxy T_klingonrec::Position
    ldfld int8 T_sectxy::y
    ldsfld valuetype T_sectxy _G::Cursect
    call int32 Distance(int8 Pos1x, int8 Pos1y, valuetype T_sectxy Pos2)
    conv.r8
    div
    ldc.i4 10
    ldc.i4 0
    ldc.i4 10
    call int32 Random(int32 Low, int32 Hi)
    add
    conv.r8
    mul
    call int32 [lpcRuntime]LPC.Helpers::Trunc(float64)
    ldc.i4 10
    div
    stfld int32 @firephasers::Hit
    .line 516
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @firephasers::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @firephasers::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldfld int32 T_klingonrec::Energyleft
    ldloc _F
    ldfld int32 @firephasers::Hit
    sub
    stfld int32 T_klingonrec::Energyleft
    .line 517
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld int32 @firephasers::Hit
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldstr " unit hit on Klingon at sector "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @firephasers::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldflda valuetype T_sectxy T_klingonrec::Position
    ldfld int8 T_sectxy::x
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 45 // '-'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @firephasers::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldflda valuetype T_sectxy T_klingonrec::Position
    ldfld int8 T_sectxy::y
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    .line 519
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @firephasers::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldfld int32 T_klingonrec::Energyleft
    ldc.i4 0
    cgt
    brfalse L_else_8
    .line 520
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " ("
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @firephasers::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldfld int32 T_klingonrec::Energyleft
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " left)"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_if_end_9
L_else_8:
    .line 523
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr ".  Klingon DESTROYED"
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld uint8 _G::Bell
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 524
    ldsfld int32 _G::Totalklingons
    ldc.i4 1
    sub
    stsfld int32 _G::Totalklingons
    .line 525
    ldsflda valuetype T_array_20 _G::Galaxy
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldsflda valuetype T_array_20 _G::Galaxy
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Klingnum
    ldc.i4 1
    sub
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_quadrec::Klingnum
    .line 527
    ldsflda valuetype T_array_22 _G::Quadrant
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @firephasers::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldflda valuetype T_sectxy T_klingonrec::Position
    ldfld int8 T_sectxy::x
    call instance valuetype T_array_21& T_array_22::ldadr(int32)
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @firephasers::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldflda valuetype T_sectxy T_klingonrec::Position
    ldfld int8 T_sectxy::y
    call instance int32& T_array_21::ldadr(int32)
    ldc.i4 0
    stobj int32
    /* nop */
L_if_end_9:
    /* nop */
L_if_end_7:
    ldloc _F
    ldfld int32 @firephasers::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_6
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @firephasers::i
    br L_for_loop_5
L_for_end_6:
    pop
L_if_end_3:
L_if_end_2:
    /* nop */

L_Epilogue:
    ret
}

.line 533

.method static
void Firetorpedoes()
{
    .maxstack 32

    .locals init(
        class @firetorpedoes _F,
        int32 $tmpSwitchValue1,
        int32 $tmpEndValue2,
        int32 $tmpIndex3,
        int32 $tmpIndex4,
        valuetype T_set_28 $tmpSetLiteral5,
        valuetype T_set_28 $tmpSetLiteral6)
    
    newobj instance void @firetorpedoes::.ctor()
    stloc _F

    ldloca $tmpSetLiteral5
    ldc.i4 0
    ldc.i4 7
    call instance void T_set_28::addRange(int32, int32)

    ldloca $tmpSetLiteral6
    ldc.i4 0
    ldc.i4 7
    call instance void T_set_28::addRange(int32, int32)

L_Entry:
    .line 585
    ldsfld int32 _G::Curtorps
    ldc.i4 0
    ceq
    brfalse L_else_1
    .line 586
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "All photon torpedoes expended."
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_if_end_2
L_else_1:
    .line 589
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Torpedo course: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 590
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    dup
    ldloc _F
    ldflda int32 @firetorpedoes::Course
    ldc.i4 -2147483648
    ldc.i4 2147483647
    call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 591
    ldsfld int32 _G::Condition
    ldc.i4 4
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_3
    .line 592
    ldsfld int32 _G::Curtorps
    ldc.i4 1
    sub
    stsfld int32 _G::Curtorps
L_if_end_3:
    .line 593
    ldloc _F
    ldloc _F
    ldfld int32 @firetorpedoes::Course
    call float64 Radians(int32 Degrees)
    call float64 [lpcRuntime]LPC.Helpers::Cos(float64)
    neg
    stfld float64 @firetorpedoes::Xinc
    .line 594
    ldloc _F
    ldloc _F
    ldfld int32 @firetorpedoes::Course
    call float64 Radians(int32 Degrees)
    call float64 [lpcRuntime]LPC.Helpers::Sin(float64)
    stfld float64 @firetorpedoes::Yinc
    .line 595
    ldloc _F
    ldsflda valuetype T_sectxy _G::Cursect
    ldfld int8 T_sectxy::x
    conv.r8
    stfld float64 @firetorpedoes::Xpos
    .line 596
    ldloc _F
    ldsflda valuetype T_sectxy _G::Cursect
    ldfld int8 T_sectxy::y
    conv.r8
    stfld float64 @firetorpedoes::Ypos
    .line 597
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @firetorpedoes::Hitsomething
    .line 598
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Torpedo track:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 600
    br L_while_test_5
L_while_4:
    .line 602
    ldsflda valuetype T_array_22 _G::Quadrant
    ldloc _F
    ldfld float64 @firetorpedoes::Xpos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance valuetype T_array_21& T_array_22::ldadr(int32)
    ldloc _F
    ldfld float64 @firetorpedoes::Ypos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance int32& T_array_21::ldadr(int32)
    ldobj int32
    stloc $tmpSwitchValue1
    ldloc $tmpSwitchValue1
    ldc.i4 2
    beq L_case_8
    ldloc $tmpSwitchValue1
    ldc.i4 0
    beq L_case_8
    br L_check_case_7
L_case_8:
    .line 605
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld float64 @firetorpedoes::Xpos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 45 // '-'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld float64 @firetorpedoes::Ypos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 606
    ldloc _F
    ldloc _F
    ldfld float64 @firetorpedoes::Xpos
    ldloc _F
    ldfld float64 @firetorpedoes::Xinc
    add
    stfld float64 @firetorpedoes::Xpos
    .line 607
    ldloc _F
    ldloc _F
    ldfld float64 @firetorpedoes::Ypos
    ldloc _F
    ldfld float64 @firetorpedoes::Yinc
    add
    stfld float64 @firetorpedoes::Ypos
    /* nop */
    br L_case_end_6
L_check_case_7:
    ldloc $tmpSwitchValue1
    ldc.i4 1
    bne.un L_check_case_9
    .line 610
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @firetorpedoes::Hitsomething
    .line 611
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Star destroyed, you got the planets, "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr "too!  Nice shot!"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 613
    ldsfld int32 _G::Badpoints
    ldc.i4 0
    ldc.i4 500
    call int32 Random(int32 Low, int32 Hi)
    add
    stsfld int32 _G::Badpoints
    .line 614
    ldsflda valuetype T_array_20 _G::Galaxy
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldsflda valuetype T_array_20 _G::Galaxy
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Starnum
    ldc.i4 1
    sub
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_quadrec::Starnum
    /* nop */
    br L_case_end_6
L_check_case_9:
    ldloc $tmpSwitchValue1
    ldc.i4 3
    bne.un L_check_case_10
    .line 617
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @firetorpedoes::Hitsomething
    .line 618
    ldsflda valuetype T_array_20 _G::Galaxy
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldsflda valuetype T_array_20 _G::Galaxy
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Starnum
    ldc.i4 1
    sub
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_quadrec::Starnum
    .line 619
    ldloc _F
    ldloc _F
    ldfld float64 @firetorpedoes::Xpos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldloc _F
    ldfld float64 @firetorpedoes::Ypos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    dup
    ldc.i4 0
    ldc.i4 7
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    ldsflda valuetype T_array_20 _G::Galaxy
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldflda int8 T_quadrec::Klingnum
    call instance void @firetorpedoes::Hitnova(int8 Novax, int8 Novay, int8& Klingnum)
    /* nop */
    br L_case_end_6
L_check_case_10:
    ldloc $tmpSwitchValue1
    ldc.i4 4
    bne.un L_check_case_11
    .line 622
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @firetorpedoes::Hitsomething
    .line 623
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "*** Klingon DESTROYED ***"
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld uint8 _G::Bell
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 624
    ldc.i4 0
    ldc.i4 100
    call int32 Random(int32 Low, int32 Hi)
    ldc.i4 30
    clt
    brfalse L_if_end_12
    .line 625
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " (The only good Klingon is a dead"
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr " Klingon)"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_12:
    .line 627
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 628
    ldsflda valuetype T_array_20 _G::Galaxy
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldsflda valuetype T_array_20 _G::Galaxy
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Klingnum
    ldc.i4 1
    sub
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_quadrec::Klingnum
    .line 629
    ldsfld int32 _G::Totalklingons
    ldc.i4 1
    sub
    stsfld int32 _G::Totalklingons
    .line 630
    ldc.i4 11
    stloc $tmpEndValue2
    ldc.i4 0
    dup
    ldloc $tmpEndValue2
    bgt L_for_end_14
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @firetorpedoes::i
L_for_loop_13:
    .line 632
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @firetorpedoes::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldfld int32 T_klingonrec::Energyleft
    ldc.i4 0
    cgt
    dup
    brfalse L_AND_shortcut_16
    pop
    ldloc _F
    ldfld float64 @firetorpedoes::Xpos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @firetorpedoes::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldflda valuetype T_sectxy T_klingonrec::Position
    ldfld int8 T_sectxy::x
    ceq
L_AND_shortcut_16:
    dup
    brfalse L_AND_shortcut_15
    pop
    ldloc _F
    ldfld float64 @firetorpedoes::Ypos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @firetorpedoes::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldflda valuetype T_sectxy T_klingonrec::Position
    ldfld int8 T_sectxy::y
    ceq
L_AND_shortcut_15:
    brfalse L_if_end_17
    .line 635
    ldsflda valuetype T_array_24 _G::Klingons
    ldloc _F
    ldfld int32 @firetorpedoes::i
    call instance valuetype T_klingonrec& T_array_24::ldadr(int32)
    ldc.i4 0
    stfld int32 T_klingonrec::Energyleft
L_if_end_17:
    ldloc _F
    ldfld int32 @firetorpedoes::i
    dup
    ldloc $tmpEndValue2
    beq L_for_end_14
    ldc.i4.1
    add
    stloc $tmpIndex4
    ldloc _F
    ldloc $tmpIndex4
    stfld int32 @firetorpedoes::i
    br L_for_loop_13
L_for_end_14:
    pop
    /* nop */
    br L_case_end_6
L_check_case_11:
    ldloc $tmpSwitchValue1
    ldc.i4 5
    bne.un L_check_case_18
    .line 638
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @firetorpedoes::Hitsomething
    .line 639
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "*** Starbase destroyed ... Not good ***"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 640
    ldsfld int32 _G::Badpoints
    ldc.i4 0
    ldc.i4 500
    call int32 Random(int32 Low, int32 Hi)
    add
    stsfld int32 _G::Badpoints
    .line 641
    ldsflda valuetype T_array_20 _G::Galaxy
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldsflda valuetype T_array_20 _G::Galaxy
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldfld int8 T_quadrec::Fedbasenum
    ldc.i4 1
    sub
    dup
    ldc.i4 0
    ldc.i4 9
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_quadrec::Fedbasenum
    /* nop */
    br L_case_end_6
L_check_case_18:
    ldloc $tmpSwitchValue1
    ldc.i4 6
    bne.un L_case_end_6
    .line 644
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @firetorpedoes::Hitsomething
    .line 645
    ldloc _F
    ldsflda valuetype T_array_20 _G::Galaxy
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    call instance valuetype T_array_19& T_array_20::ldadr(int32)
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    call instance valuetype T_quadrec& T_array_19::ldadr(int32)
    ldflda int8 T_quadrec::Klingbasenum
    call instance void @firetorpedoes::Hitklingbase(int8& Klingbasenum)
    .line 646
    ldsfld int32 _G::Totalkbases
    ldc.i4 1
    sub
    stsfld int32 _G::Totalkbases
    /* nop */
L_case_end_6:
L_while_test_5:
    ldloc _F
    ldfld bool @firetorpedoes::Hitsomething
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_20
    pop
    ldloc $tmpSetLiteral5
    ldloc _F
    ldfld float64 @firetorpedoes::Xpos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call bool _SetContains(valuetype T_set_28 s, int32 val)
L_AND_shortcut_20:
    dup
    brfalse L_AND_shortcut_19
    pop
    ldloc $tmpSetLiteral6
    ldloc _F
    ldfld float64 @firetorpedoes::Ypos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call bool _SetContains(valuetype T_set_28 s, int32 val)
L_AND_shortcut_19:
    brtrue L_while_4
    .line 649
    ldloc _F
    ldfld bool @firetorpedoes::Hitsomething
    brfalse L_else_21
    .line 650
    ldsflda valuetype T_array_22 _G::Quadrant
    ldloc _F
    ldfld float64 @firetorpedoes::Xpos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance valuetype T_array_21& T_array_22::ldadr(int32)
    ldloc _F
    ldfld float64 @firetorpedoes::Ypos
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    call instance int32& T_array_21::ldadr(int32)
    ldc.i4 0
    stobj int32
    br L_if_end_22
L_else_21:
    .line 652
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Torpedo missed."
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_22:
    /* nop */
L_if_end_2:
    /* nop */

L_Epilogue:
    ret
}

.line 656

.method static
void Selfdestruct()
{
    .maxstack 32

    .locals init(
        class @selfdestruct _F,
        valuetype T_set_28 $tmpSetLiteral1,
        valuetype T_set_28 $tmpSetLiteral2)
    
    newobj instance void @selfdestruct::.ctor()
    stloc _F

    ldloca $tmpSetLiteral1
    ldc.i4 121 // 'y'
    call instance void T_set_28::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 89 // 'Y'
    call instance void T_set_28::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 110 // 'n'
    call instance void T_set_28::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 78 // 'N'
    call instance void T_set_28::addValue(int32)

    ldloca $tmpSetLiteral2
    ldc.i4 121 // 'y'
    call instance void T_set_28::addValue(int32)
    ldloca $tmpSetLiteral2
    ldc.i4 89 // 'Y'
    call instance void T_set_28::addValue(int32)

L_Entry:
    .line 659
L_repeat_1:
    .line 660
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Are you SURE ? "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 661
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    dup
    ldloc _F
    ldflda uint8 @selfdestruct::Ch
    ldc.i4 0
    ldc.i4 255
    call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 662
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
    ldloc $tmpSetLiteral1
    ldloc _F
    ldfld uint8 @selfdestruct::Ch
    call bool _SetContains(valuetype T_set_28 s, int32 val)
    brfalse L_repeat_1
    .line 664
    ldloc $tmpSetLiteral2
    ldloc _F
    ldfld uint8 @selfdestruct::Ch
    call bool _SetContains(valuetype T_set_28 s, int32 val)
    brfalse L_if_end_2
    .line 665
    ldc.i4 1
    newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
    throw
L_if_end_2:

L_Epilogue:
    ret
}

.line 668

.method static
void Command()
{
    .maxstack 32

    .locals init(
        class @command _F,
        valuetype T_set_28 $tmpSetLiteral1,
        uint8 $tmpSwitchValue2,
        valuetype T_set_28 $tmpSetLiteral3)
    
    newobj instance void @command::.ctor()
    stloc _F

    ldloca $tmpSetLiteral1
    ldc.i4 48 // '0'
    ldc.i4 55 // '7'
    call instance void T_set_28::addRange(int32, int32)

    ldloca $tmpSetLiteral3
    ldc.i4 48 // '0'
    call instance void T_set_28::addValue(int32)
    ldloca $tmpSetLiteral3
    ldc.i4 51 // '3'
    call instance void T_set_28::addValue(int32)
    ldloca $tmpSetLiteral3
    ldc.i4 52 // '4'
    call instance void T_set_28::addValue(int32)

L_Entry:
    .line 672
L_repeat_1:
    .line 673
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Command: "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 674
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    dup
    ldloc _F
    ldflda uint8 @command::Ch
    ldc.i4 0
    ldc.i4 255
    call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 675
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 676
    ldloc _F
    ldloc $tmpSetLiteral1
    ldloc _F
    ldfld uint8 @command::Ch
    call bool _SetContains(valuetype T_set_28 s, int32 val)
    stfld bool @command::Validcommand
    .line 677
    ldloc _F
    ldfld bool @command::Validcommand
    brfalse L_else_2
    .line 679
    ldsflda valuetype T_array_2 _G::Device
    ldloc _F
    ldfld uint8 @command::Ch
    call instance valuetype T_devicerec& T_array_2::ldadr(int32)
    ldfld int32 T_devicerec::Downtime
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_4
    pop
    ldloc _F
    ldfld uint8 @command::Ch
    ldc.i4 48 // '0'
    ldc.i4.1
    add
    cgt
L_AND_shortcut_4:
    brfalse L_else_5
    .line 680
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "*** "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsflda valuetype T_array_2 _G::Device
    ldloc _F
    ldfld uint8 @command::Ch
    call instance valuetype T_devicerec& T_array_2::ldadr(int32)
    ldfld valuetype T_array_1 T_devicerec::Name
    call string T_array_1::arrayToString(valuetype T_array_1)
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr " INOPERABLE ***"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_if_end_6
L_else_5:
    .line 682
    ldloc _F
    ldfld uint8 @command::Ch
    stloc $tmpSwitchValue2
    ldloc $tmpSwitchValue2
    ldc.i4 48 // '0'
    bne.un L_check_case_8
    .line 683
    call void Moveenterprise()
    br L_case_end_7
L_check_case_8:
    ldloc $tmpSwitchValue2
    ldc.i4 49 // '1'
    bne.un L_check_case_9
    .line 684
    call void Printquadrant()
    br L_case_end_7
L_check_case_9:
    ldloc $tmpSwitchValue2
    ldc.i4 50 // '2'
    bne.un L_check_case_10
    .line 685
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    ldc.i4 1
    sub
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    ldc.i4 1
    sub
    ldc.i4 2
    ldc.i4 1 // (true)
    call void Printgalaxy(int32 Topx, int32 Lefty, int32 Size, bool Markhistory)
    br L_case_end_7
L_check_case_10:
    ldloc $tmpSwitchValue2
    ldc.i4 51 // '3'
    bne.un L_check_case_11
    .line 686
    call void Firephasers()
    br L_case_end_7
L_check_case_11:
    ldloc $tmpSwitchValue2
    ldc.i4 52 // '4'
    bne.un L_check_case_12
    .line 687
    call void Firetorpedoes()
    br L_case_end_7
L_check_case_12:
    ldloc $tmpSwitchValue2
    ldc.i4 53 // '5'
    bne.un L_check_case_13
    .line 688
    call void Printdamage()
    br L_case_end_7
L_check_case_13:
    ldloc $tmpSwitchValue2
    ldc.i4 54 // '6'
    bne.un L_check_case_14
    .line 689
    ldc.i4 0
    ldc.i4 0
    ldc.i4 7
    ldc.i4 0 // (false)
    call void Printgalaxy(int32 Topx, int32 Lefty, int32 Size, bool Markhistory)
    br L_case_end_7
L_check_case_14:
    ldloc $tmpSwitchValue2
    ldc.i4 55 // '7'
    bne.un L_case_end_7
    .line 690
    call void Selfdestruct()
L_case_end_7:
L_if_end_6:
    /* nop */
    br L_if_end_3
L_else_2:
    .line 695
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "0 = Set course"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 696
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "1 = Short range sensor scan"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 697
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "2 = Long range sensor scan"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 698
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "3 = Fire phasors"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 699
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "4 = Fire photon torpedoes"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 700
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "5 = Damage control report"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 701
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "6 = History computer report"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 702
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "7 = Self destruct"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
L_if_end_3:
    /* nop */
    ldloc _F
    ldfld bool @command::Validcommand
    brfalse L_repeat_1
    .line 705
    ldloc $tmpSetLiteral3
    ldloc _F
    ldfld uint8 @command::Ch
    call bool _SetContains(valuetype T_set_28 s, int32 val)
    brfalse L_if_end_15
    .line 707
    call void Klingonattack()
    .line 708
    call void Printquadrant()
    /* nop */
L_if_end_15:
    /* nop */

L_Epilogue:
    ret
}

.line 712

.method static
void Instructions()
{
    .maxstack 32

    .locals init(
        class @instructions _F,
        valuetype T_set_28 $tmpSetLiteral1)
    
    newobj instance void @instructions::.ctor()
    stloc _F

    ldloca $tmpSetLiteral1
    ldc.i4 89 // 'Y'
    call instance void T_set_28::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 121 // 'y'
    call instance void T_set_28::addValue(int32)

L_Entry:
    .line 885
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Orders:  Stardate "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Curyear
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 886
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 887
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "As commander of the United Starship Enterprise,"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 888
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "your mission is to rid the galaxy of the deadly"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 889
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Klingon menace.  To do this, you must destroy the "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 890
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Klingon invasion force of "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Totalklingons
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " battle cruisers."
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 891
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "You have "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Endyear
    ldsfld int32 _G::Curyear
    sub
    ldc.i4 1
    add
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " solar years to complete"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 892
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "your mission (i.e. until stardate "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Endyear
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr ").  The "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 893
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Enterprise is currently in quadrant "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::x
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 45 // '-'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_quadxy _G::Curquad
    ldfld int8 T_quadxy::y
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr ", sector "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_sectxy _G::Cursect
    ldfld int8 T_sectxy::x
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 45 // '-'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsflda valuetype T_sectxy _G::Cursect
    ldfld int8 T_sectxy::y
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 46 // '.'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 895
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 896
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Do you need further instructions (y/n) ? "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 897
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    dup
    ldloc _F
    ldflda uint8 @instructions::Ch
    ldc.i4 0
    ldc.i4 255
    call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
    pop
    .line 898
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 899
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 900
    ldloc $tmpSetLiteral1
    ldloc _F
    ldfld uint8 @instructions::Ch
    call bool _SetContains(valuetype T_set_28 s, int32 val)
    brfalse L_if_end_1
    .line 902
    ldloc _F
    call instance void @instructions::Page1()
    .line 903
    ldloc _F
    call instance void @instructions::Page2()
    .line 904
    ldloc _F
    call instance void @instructions::Page3()
    .line 905
    ldloc _F
    call instance void @instructions::Page4()
    .line 906
    ldloc _F
    call instance void @instructions::Page5()
    .line 907
    ldloc _F
    call instance void @instructions::Page6()
    .line 908
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 909
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
L_if_end_1:
    /* nop */

L_Epilogue:
    ret
}

.line 913

.method static
void Finishgame()
{
    .maxstack 32

    .locals init(class @finishgame _F)
    
    newobj instance void @finishgame::.ctor()
    stloc _F

L_Entry:
    .line 916
    ldsfld int32 _G::Curenergy
    ldc.i4 0
    cgt
    ldc.i4.0
    ceq
    dup
    brtrue L_OR_shortcut_1
    pop
    ldsfld int32 _G::Curyear
    ldsfld int32 _G::Endyear
    clt
    ldc.i4.0
    ceq
L_OR_shortcut_1:
    brfalse L_else_2
    .line 918
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "It is stardate "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Curyear
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr ".  The Enterprise has been"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 919
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "destroyed.  The Federation will be conquered.  There"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 920
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "are still "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Totalklingons
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " Klingon battle cruisers."
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 921
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "You are dead."
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
    br L_if_end_3
L_else_2:
    .line 925
    ldloc _F
    ldsfld int32 _G::Startklingons
    ldsfld int32 _G::Curyear
    ldsfld int32 _G::Startyear
    sub
    div
    ldc.i4 100
    mul
    stfld int32 @finishgame::Rating
    .line 926
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "It is stardate "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Curyear
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr ".  The last Klingon battle"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 927
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "cruiser in the galaxy has been destroyed.  The Federation"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 928
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "has been saved.  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 929
    ldsfld int32 _G::Badpoints
    ldloc _F
    ldfld int32 @finishgame::Rating
    cgt
    brfalse L_else_4
    .line 931
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "However, because of your wanton "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 932
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "destruction of Federation bases and planet systems,"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 933
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "you have been thrown in the brig never to see the"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 934
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "light of day again."
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
    br L_if_end_5
L_else_4:
    .line 938
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "You are a hero and a new admiral."
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 939
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Startklingons
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " Klingons in "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldsfld int32 _G::Curyear
    ldsfld int32 _G::Startyear
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " years gives a rating of "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 1
    ldc.i4.0
    ldloc _F
    ldfld int32 @finishgame::Rating
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
L_if_end_5:
    /* nop */
L_if_end_3:
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
    .line 946
    ldc.i4 1
    stsfld int32 _G::Rndseq
    .line 947
    call void Initialize()
    .line 948
    ldsfld valuetype T_quadxy _G::Curquad
    ldsflda valuetype T_sectxy _G::Cursect
    call void Setupquad(valuetype T_quadxy Quad, valuetype T_sectxy& Entsect)
    .line 949
    call void Setcondition()
    .line 950
    call void Instructions()
    .line 951
    call void Klingonattack()
    .line 952
    call void Printquadrant()
    .line 953
    br L_while_test_2
L_while_1:
    .line 955
    call void Command()
L_while_test_2:
    ldsfld int32 _G::Curenergy
    ldc.i4 0
    cgt
    dup
    brfalse L_AND_shortcut_5
    pop
    ldsfld int32 _G::Totalklingons
    ldc.i4 0
    cgt
L_AND_shortcut_5:
    dup
    brfalse L_AND_shortcut_4
    pop
    ldsfld int32 _G::Totalkbases
    ldc.i4 0
    cgt
L_AND_shortcut_4:
    dup
    brfalse L_AND_shortcut_3
    pop
    ldsfld int32 _G::Curyear
    ldsfld int32 _G::Endyear
    ceq
    ldc.i4.0
    ceq
L_AND_shortcut_3:
    brtrue L_while_1
    .line 956
    call void Finishgame()
L_99:
    /* nop */
    leave L_Epilogue
}
catch [lpcRuntime]LPC.NonLocalGoto
{
    ldfld int32 [lpcRuntime]LPC.NonLocalGoto::label
    dup
    ldc.i4 1
    beq GOTO_L_99
    rethrow
GOTO_L_99:
    leave L_99
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

.line 0xfeefee

//================================================================================
// internal helpers

.method static bool _SetContains(valuetype T_set_27 s, int32 val)
{
    ldarga s
    ldc.i4 4
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static bool _SetContains(valuetype T_set_28 s, int32 val)
{
    ldarga s
    ldc.i4 32
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}



.line 0xfeefee

//================================================================================
// global string literals

// "        "
.data STRING_15_DATA = bytearray( 20 20 20 20 20 20 20 20 )
.field static valuetype T_klingonattack_array_23 STRING_15 at STRING_15_DATA

// "Black     "
.data STRING_12_DATA = bytearray( 42 6c 61 63 6b 20 20 20 20 20 )
.field static valuetype T_array_12 STRING_12 at STRING_12_DATA

// "Damage Control      "
.data STRING_6_DATA = bytearray( 44 61 6d 61 67 65 20 43 6f 6e 74 72 6f 6c 20 20 20 20 20 20 )
.field static valuetype T_array_1 STRING_6 at STRING_6_DATA

// "Docked    "
.data STRING_13_DATA = bytearray( 44 6f 63 6b 65 64 20 20 20 20 )
.field static valuetype T_array_12 STRING_13 at STRING_13_DATA

// "Green     "
.data STRING_10_DATA = bytearray( 47 72 65 65 6e 20 20 20 20 20 )
.field static valuetype T_array_12 STRING_10 at STRING_10_DATA

// "History Computers   "
.data STRING_7_DATA = bytearray( 48 69 73 74 6f 72 79 20 43 6f 6d 70 75 74 65 72 73 20 20 20 )
.field static valuetype T_array_1 STRING_7 at STRING_7_DATA

// "Long Range Sensors  "
.data STRING_3_DATA = bytearray( 4c 6f 6e 67 20 52 61 6e 67 65 20 53 65 6e 73 6f 72 73 20 20 )
.field static valuetype T_array_1 STRING_3 at STRING_3_DATA

// "Phaser Control      "
.data STRING_4_DATA = bytearray( 50 68 61 73 65 72 20 43 6f 6e 74 72 6f 6c 20 20 20 20 20 20 )
.field static valuetype T_array_1 STRING_4 at STRING_4_DATA

// "Photon Tubes        "
.data STRING_5_DATA = bytearray( 50 68 6f 74 6f 6e 20 54 75 62 65 73 20 20 20 20 20 20 20 20 )
.field static valuetype T_array_1 STRING_5 at STRING_5_DATA

// "Red       "
.data STRING_9_DATA = bytearray( 52 65 64 20 20 20 20 20 20 20 )
.field static valuetype T_array_12 STRING_9 at STRING_9_DATA

// "Self Destruct       "
.data STRING_8_DATA = bytearray( 53 65 6c 66 20 44 65 73 74 72 75 63 74 20 20 20 20 20 20 20 )
.field static valuetype T_array_1 STRING_8 at STRING_8_DATA

// "Short Range Sensors "
.data STRING_2_DATA = bytearray( 53 68 6f 72 74 20 52 61 6e 67 65 20 53 65 6e 73 6f 72 73 20 )
.field static valuetype T_array_1 STRING_2 at STRING_2_DATA

// "Starbase"
.data STRING_14_DATA = bytearray( 53 74 61 72 62 61 73 65 )
.field static valuetype T_klingonattack_array_23 STRING_14 at STRING_14_DATA

// "Warp Engines        "
.data STRING_1_DATA = bytearray( 57 61 72 70 20 45 6e 67 69 6e 65 73 20 20 20 20 20 20 20 20 )
.field static valuetype T_array_1 STRING_1 at STRING_1_DATA

// "Yellow    "
.data STRING_11_DATA = bytearray( 59 65 6c 6c 6f 77 20 20 20 20 )
.field static valuetype T_array_12 STRING_11 at STRING_11_DATA


