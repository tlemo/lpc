
#include "commonDefs.il"

.field public static string[] _ProgramArgs

.method static void .cctor()
{
    ldc.i4 3
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
    ldstr "srcfil"
    stelem string
    stsfld string[] _ProgramArgs
    ret
}

.line 0 "pascal-s.pas"

.line 268
//================================================================================
// scope: errormsg (level : 2)

.line 0xfeefee

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

.line 0xfeefee

// TYPE array_1 = array [0 .. 58] of valuetype T_alfa;
.class value explicit T_errormsg_array_1
{
    // elem size = 10
    // alignment = 1
    .size 590

    .field [0] public valuetype T_alfa elem

    .method public valuetype T_alfa& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 58)
        ldarg index
        ldc.i4 58
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

// TYPE set_61 = set of 0 .. 58
.class value explicit T_set_61
{
    .field [0] public uint32 bits0
    .field [4] public uint32 bits1

    .method public void addValue(int32 val)
    {
        // check(value >= 0)
        ldarg val
        ldc.i4 0
        blt badValue
    
        // check(value <= 58)
        ldarg val
        ldc.i4 58
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
        call instance void T_set_61::addValue(int32)
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
        ldc.i4 8
        initblk
        ret
    
    }
}

.line 0xfeefee

// TYPE set_62 = set of 0 .. 255
.class value explicit T_set_62
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
        call instance void T_set_62::addValue(int32)
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

.class @errormsg
{
    // local variables
    .field public int32 k
    .field public valuetype T_errormsg_array_1 Msg

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 310
//================================================================================
// scope: nextch (level : 2)

.line 0xfeefee

// TYPE array_65 = array [1 .. 250] of uint8;
.class value explicit T_array_65
{
    // elem size = 1
    // alignment = 1
    .size 250

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 250)
        ldarg index
        ldc.i4 250
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

    .method public static string arrayToString(valuetype T_array_65)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 250
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

.class @nextch
{
    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 330
//================================================================================
// scope: error (level : 2)

.class @error
{
    // parameters
    .field public int32 n

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 338
//================================================================================
// scope: fatal (level : 2)

.line 0xfeefee

// TYPE array_67 = array [1 .. 7] of valuetype T_alfa;
.class value explicit T_fatal_array_67
{
    // elem size = 10
    // alignment = 1
    .size 70

    .field [0] public valuetype T_alfa elem

    .method public valuetype T_alfa& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 7)
        ldarg index
        ldc.i4 7
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

.class @fatal
{
    // parameters
    .field public int32 n

    // local variables
    .field public valuetype T_fatal_array_67 Msg

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 353
//================================================================================
// scope: insymbol_readscale (level : 3)

.class @insymbol_readscale
{
    // slink
    .field public class @insymbol _slink

    // local variables
    .field public int32 s
    .field public int32 Sign

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 364
//================================================================================
// scope: insymbol_adjustscale (level : 3)

.class @insymbol_adjustscale
{
    // slink
    .field public class @insymbol _slink

    // local variables
    .field public float64 d
    .field public int32 s
    .field public float64 t

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 349
//================================================================================
// scope: insymbol (level : 2)

.line 0xfeefee

// TYPE array_79 = array [1 .. 27] of valuetype T_alfa;
.class value explicit T_array_79
{
    // elem size = 10
    // alignment = 1
    .size 270

    .field [0] public valuetype T_alfa elem

    .method public valuetype T_alfa& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 27)
        ldarg index
        ldc.i4 27
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

// TYPE array_80 = array [1 .. 27] of int32;
.class value explicit T_array_80
{
    // elem size = 4
    // alignment = 4
    .size 108

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 27)
        ldarg index
        ldc.i4 27
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

// TYPE array_84 = array [0 .. 10000] of uint8;
.class value explicit T_array_84
{
    // elem size = 1
    // alignment = 1
    .size 10001

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 10000)
        ldarg index
        ldc.i4 10000
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

// TYPE array_85 = array [0 .. 255] of int32;
.class value explicit T_array_85
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

.class @insymbol
{
    // local variables
    .field public int32 e
    .field public int32 i
    .field public int32 j
    .field public int32 k

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 353

    .method public
    void Readscale()
    {
        .maxstack 32
    
        .locals init(
            class @insymbol_readscale _F,
            valuetype T_set_62 $tmpSetLiteral1)
        
        newobj instance void @insymbol_readscale::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @insymbol @insymbol_readscale::_slink
    
        ldloca $tmpSetLiteral1
        ldc.i4 48 // '0'
        ldc.i4 57 // '9'
        call instance void T_set_62::addRange(int32, int32)
    
    L_Entry:
        .line 355
        call void Nextch()
        .line 355
        ldloc _F
        ldc.i4 1
        stfld int32 @insymbol_readscale::Sign
        .line 355
        ldloc _F
        ldc.i4 0
        stfld int32 @insymbol_readscale::s
        .line 356
        ldsfld uint8 _G::Ch
        ldc.i4 43 // '+'
        ceq
        brfalse L_else_1
        .line 356
        call void Nextch()
        br L_if_end_2
    L_else_1:
        .line 357
        ldsfld uint8 _G::Ch
        ldc.i4 45 // '-'
        ceq
        brfalse L_if_end_3
        .line 357
        call void Nextch()
        .line 357
        ldloc _F
        ldc.i4 1
        neg
        stfld int32 @insymbol_readscale::Sign
    L_if_end_3:
    L_if_end_2:
        .line 358
        br L_while_test_5
    L_while_4:
        .line 359
        ldloc _F
        ldc.i4 10
        ldloc _F
        ldfld int32 @insymbol_readscale::s
        mul
        ldsfld uint8 _G::Ch
        add
        ldc.i4 48 // '0'
        sub
        stfld int32 @insymbol_readscale::s
        .line 359
        call void Nextch()
    L_while_test_5:
        ldloc $tmpSetLiteral1
        ldsfld uint8 _G::Ch
        call bool _SetContains(valuetype T_set_62 s, int32 val)
        brtrue L_while_4
        .line 361
        ldloc _F
        ldfld class @insymbol @insymbol_readscale::_slink
        ldloc _F
        ldfld int32 @insymbol_readscale::s
        ldloc _F
        ldfld int32 @insymbol_readscale::Sign
        mul
        ldloc _F
        ldfld class @insymbol @insymbol_readscale::_slink
        ldfld int32 @insymbol::e
        add
        stfld int32 @insymbol::e
    
    L_Epilogue:
        ret
    }

.line 364

    .method public
    void Adjustscale()
    {
        .maxstack 32
    
        .locals init(class @insymbol_adjustscale _F)
        
        newobj instance void @insymbol_adjustscale::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @insymbol @insymbol_adjustscale::_slink
    
    L_Entry:
        .line 366
        ldloc _F
        ldfld class @insymbol @insymbol_adjustscale::_slink
        ldfld int32 @insymbol::k
        ldloc _F
        ldfld class @insymbol @insymbol_adjustscale::_slink
        ldfld int32 @insymbol::e
        add
        ldc.i4 308
        cgt
        brfalse L_else_1
        .line 366
        ldc.i4 21
        call void Error(int32 n)
        br L_if_end_2
    L_else_1:
        .line 367
        ldloc _F
        ldfld class @insymbol @insymbol_adjustscale::_slink
        ldfld int32 @insymbol::k
        ldloc _F
        ldfld class @insymbol @insymbol_adjustscale::_slink
        ldfld int32 @insymbol::e
        add
        ldc.i4 -308
        clt
        brfalse L_else_3
        .line 367
        ldc.i4 0
        conv.r8
        stsfld float64 _G::Rnum
        br L_if_end_4
    L_else_3:
        .line 368
        ldloc _F
        ldloc _F
        ldfld class @insymbol @insymbol_adjustscale::_slink
        ldfld int32 @insymbol::e
        dup
        ldc.i4 0
        bge L_abs_question_5
        neg
    L_abs_question_5:
        stfld int32 @insymbol_adjustscale::s
        .line 368
        ldloc _F
        ldc.r8 1.00000
        stfld float64 @insymbol_adjustscale::t
        .line 368
        ldloc _F
        ldc.r8 10.0000
        stfld float64 @insymbol_adjustscale::d
        .line 369
    L_repeat_6:
        .line 370
        br L_while_test_8
    L_while_7:
        .line 371
        ldloc _F
        ldloc _F
        ldfld int32 @insymbol_adjustscale::s
        ldc.i4 2
        div
        stfld int32 @insymbol_adjustscale::s
        .line 371
        ldloc _F
        ldloc _F
        ldfld float64 @insymbol_adjustscale::d
        dup
        mul
        stfld float64 @insymbol_adjustscale::d
    L_while_test_8:
        ldloc _F
        ldfld int32 @insymbol_adjustscale::s
        ldc.i4.1
        and
        ldc.i4.0
        ceq
        brtrue L_while_7
        .line 373
        ldloc _F
        ldloc _F
        ldfld int32 @insymbol_adjustscale::s
        ldc.i4 1
        sub
        stfld int32 @insymbol_adjustscale::s
        .line 373
        ldloc _F
        ldloc _F
        ldfld float64 @insymbol_adjustscale::d
        ldloc _F
        ldfld float64 @insymbol_adjustscale::t
        mul
        stfld float64 @insymbol_adjustscale::t
        ldloc _F
        ldfld int32 @insymbol_adjustscale::s
        ldc.i4 0
        ceq
        brfalse L_repeat_6
        .line 375
        ldloc _F
        ldfld class @insymbol @insymbol_adjustscale::_slink
        ldfld int32 @insymbol::e
        ldc.i4 0
        clt
        ldc.i4.0
        ceq
        brfalse L_else_9
        .line 375
        ldsfld float64 _G::Rnum
        ldloc _F
        ldfld float64 @insymbol_adjustscale::t
        mul
        stsfld float64 _G::Rnum
        br L_if_end_10
    L_else_9:
        .line 375
        ldsfld float64 _G::Rnum
        ldloc _F
        ldfld float64 @insymbol_adjustscale::t
        div
        stsfld float64 _G::Rnum
    L_if_end_10:
    L_if_end_4:
    L_if_end_2:
    
    L_Epilogue:
        ret
    }
}


.line 477
//================================================================================
// scope: enter (level : 2)

.line 0xfeefee

// TYPE record_86 = record;
.class value explicit T_record_86
{
    // alignment = 4
    .size 36
    
    .field [0] public valuetype T_alfa Name
    .field [12] public int32 Link
    .field [16] public int32 Obj
    .field [20] public int32 Typ
    .field [24] public int32 Ref
    .field [28] public bool Normal
    .field [29] public int8 Lev
    .field [32] public int32 Adr
}

.line 0xfeefee

// TYPE array_88 = array [0 .. 1000] of valuetype T_record_86;
.class value explicit T_array_88
{
    // elem size = 36
    // alignment = 4
    .size 36036

    .field [0] public valuetype T_record_86 elem

    .method public valuetype T_record_86& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 1000)
        ldarg index
        ldc.i4 1000
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 36
        mul
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

.class @enter
{
    // parameters
    .field public valuetype T_alfa X0
    .field public int32 X1
    .field public int32 X2
    .field public int32 X3

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 487
//================================================================================
// scope: enterarray (level : 2)

.line 0xfeefee

// TYPE record_89 = record;
.class value explicit T_record_89
{
    // alignment = 4
    .size 28
    
    .field [0] public int32 Inxtyp
    .field [4] public int32 Eltyp
    .field [8] public int32 Elref
    .field [12] public int32 Low
    .field [16] public int32 High
    .field [20] public int32 Elsize
    .field [24] public int32 Size
}

.line 0xfeefee

// TYPE array_90 = array [1 .. 100] of valuetype T_record_89;
.class value explicit T_array_90
{
    // elem size = 28
    // alignment = 4
    .size 2800

    .field [0] public valuetype T_record_89 elem

    .method public valuetype T_record_89& ldadr(int32 index)
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
        ldc.i4 28
        mul
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

.class @enterarray
{
    // parameters
    .field public int32 h
    .field public int32 l
    .field public int32 Tp

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 500
//================================================================================
// scope: enterblock (level : 2)

.line 0xfeefee

// TYPE record_91 = record;
.class value explicit T_record_91
{
    // alignment = 4
    .size 16
    
    .field [0] public int32 Last
    .field [4] public int32 Lastpar
    .field [8] public int32 Psize
    .field [12] public int32 Vsize
}

.line 0xfeefee

// TYPE array_92 = array [1 .. 100] of valuetype T_record_91;
.class value explicit T_array_92
{
    // elem size = 16
    // alignment = 4
    .size 1600

    .field [0] public valuetype T_record_91 elem

    .method public valuetype T_record_91& ldadr(int32 index)
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

.class @enterblock
{
    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 506
//================================================================================
// scope: enterreal (level : 2)

.line 0xfeefee

// TYPE array_93 = array [1 .. 100] of float64;
.class value explicit T_array_93
{
    // elem size = 8
    // alignment = 8
    .size 800

    .field [0] public float64 elem

    .method public float64& ldadr(int32 index)
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

.class @enterreal
{
    // parameters
    .field public float64 x

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 514
//================================================================================
// scope: emit (level : 2)

.line 0xfeefee

// TYPE order = record;
.class value explicit T_order
{
    // alignment = 4
    .size 8
    
    .field [0] public int8 f
    .field [1] public int8 x
    .field [4] public int32 y
}

.line 0xfeefee

// TYPE array_97 = array [0 .. 10000] of valuetype T_order;
.class value explicit T_array_97
{
    // elem size = 8
    // alignment = 4
    .size 80008

    .field [0] public valuetype T_order elem

    .method public valuetype T_order& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 10000)
        ldarg index
        ldc.i4 10000
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

.class @emit
{
    // parameters
    .field public int32 Fct

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 519
//================================================================================
// scope: emit1 (level : 2)

.class @emit1
{
    // parameters
    .field public int32 b
    .field public int32 Fct

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 526
//================================================================================
// scope: emit2 (level : 2)

.class @emit2
{
    // parameters
    .field public int32 a
    .field public int32 b
    .field public int32 Fct

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 533
//================================================================================
// scope: printtables (level : 2)

.class @printtables
{
    // local variables
    .field public int32 i
    .field public valuetype T_order o

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 587
//================================================================================
// scope: block_skip (level : 3)

.line 0xfeefee

// TYPE symset = set of 0 .. 50
.class value explicit T_symset
{
    .field [0] public uint32 bits0
    .field [4] public uint32 bits1

    .method public void addValue(int32 val)
    {
        // check(value >= 0)
        ldarg val
        ldc.i4 0
        blt badValue
    
        // check(value <= 50)
        ldarg val
        ldc.i4 50
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
        call instance void T_symset::addValue(int32)
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
        ldc.i4 8
        initblk
        ret
    
    }
}

.class @block_skip
{
    // slink
    .field public class @block _slink

    // parameters
    .field public valuetype T_symset Fsys
    .field public int32 n

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 592
//================================================================================
// scope: block_test (level : 3)

.class @block_test
{
    // slink
    .field public class @block _slink

    // parameters
    .field public int32 n
    .field public valuetype T_symset S1
    .field public valuetype T_symset S2

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 597
//================================================================================
// scope: block_testsemicolon (level : 3)

.class @block_testsemicolon
{
    // slink
    .field public class @block _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 606
//================================================================================
// scope: block_enter (level : 3)

.line 0xfeefee

// TYPE array_100 = array [0 .. 100] of int32;
.class value explicit T_array_100
{
    // elem size = 4
    // alignment = 4
    .size 404

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 100)
        ldarg index
        ldc.i4 100
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

.class @block_enter
{
    // slink
    .field public class @block _slink

    // parameters
    .field public valuetype T_alfa Id
    .field public int32 k

    // local variables
    .field public int32 j
    .field public int32 l

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 624
//================================================================================
// scope: block_loc (level : 3)

.class @block_loc
{
    // slink
    .field public class @block _slink

    // parameters
    .field public valuetype T_alfa Id

    // local variables
    .field public int32 _fnvalue
    .field public int32 i
    .field public int32 j

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 634
//================================================================================
// scope: block_entervariable (level : 3)

.class @block_entervariable
{
    // slink
    .field public class @block _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 641
//================================================================================
// scope: block_constant (level : 3)

.line 0xfeefee

// TYPE conrec = record;
.class value explicit T_block_conrec
{
    // alignment = 8
    .size 20
    
    // variable fields selector
    .field [0] public int32 Tp
    
    // case ints = 1
    // case chars = 4
    // case bools = 3
        
        .field [4] public int32 i
    
    // case reals = 2
        
        .field [8] public float64 r
    
    // case notyp = 0
    // case arrays = 5
    // case records = 6
}

.class @block_constant
{
    // slink
    .field public class @block _slink

    // parameters
    .field public valuetype T_block_conrec* c
    .field public valuetype T_symset Fsys

    // local variables
    .field public int32 Sign
    .field public int32 x

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 684
//================================================================================
// scope: block_typ_arraytyp (level : 4)

.class @block_typ_arraytyp
{
    // slink
    .field public class @block_typ _slink

    // parameters
    .field public int32* Aref
    .field public int32* Arsz

    // local variables
    .field public int32 Elrf
    .field public int32 Elsz
    .field public int32 Eltp
    .field public valuetype T_block_conrec High
    .field public valuetype T_block_conrec Low

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 679
//================================================================================
// scope: block_typ (level : 3)

.class @block_typ
{
    // slink
    .field public class @block _slink

    // parameters
    .field public valuetype T_symset Fsys
    .field public int32* Rf
    .field public int32* Sz
    .field public int32* Tp

    // local variables
    .field public int32 Elrf
    .field public int32 Elsz
    .field public int32 Eltp
    .field public int32 Offset
    .field public int32 T0
    .field public int32 T1
    .field public int32 x

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 684

    .method public
    void Arraytyp(int32& Aref, int32& Arsz)
    {
        .maxstack 32
    
        .locals init(
            class @block_typ_arraytyp _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_symset $tmpSetLiteral2,
            int32& pinned $Aref,
            int32& pinned $Arsz)
        
        newobj instance void @block_typ_arraytyp::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_typ @block_typ_arraytyp::_slink
        
        ldarg Aref
        stloc $Aref
        
        ldloc _F
        ldarg Aref
        stfld int32* @block_typ_arraytyp::Aref
        
        ldarg Arsz
        stloc $Arsz
        
        ldloc _F
        ldarg Arsz
        stfld int32* @block_typ_arraytyp::Arsz
    
        ldloca $tmpSetLiteral1
        ldc.i4 26
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 22
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 20
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 46
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 22
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 23
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 20
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 46
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 688
        ldloc _F
        ldfld class @block_typ @block_typ_arraytyp::_slink
        ldfld class @block @block_typ::_slink
        ldloc $tmpSetLiteral1
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc _F
        ldfld class @block_typ @block_typ_arraytyp::_slink
        ldfld valuetype T_symset @block_typ::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda valuetype T_block_conrec @block_typ_arraytyp::Low
        call instance void @block::Constant(valuetype T_symset Fsys, valuetype T_block_conrec& c)
        .line 689
        ldloc _F
        ldflda valuetype T_block_conrec @block_typ_arraytyp::Low
        ldfld int32 T_block_conrec::Tp
        ldc.i4 2
        ceq
        brfalse L_if_end_1
        .line 690
        ldc.i4 27
        call void Error(int32 n)
        .line 690
        ldloc _F
        ldflda valuetype T_block_conrec @block_typ_arraytyp::Low
        ldc.i4 1
        stfld int32 T_block_conrec::Tp
        .line 690
        ldloc _F
        ldflda valuetype T_block_conrec @block_typ_arraytyp::Low
        ldc.i4 0
        stfld int32 T_block_conrec::i
    L_if_end_1:
        .line 692
        ldsfld int32 _G::Sy
        ldc.i4 26
        ceq
        brfalse L_else_2
        .line 692
        call void Insymbol()
        br L_if_end_3
    L_else_2:
        .line 692
        ldc.i4 13
        call void Error(int32 n)
    L_if_end_3:
        .line 693
        ldloc _F
        ldfld class @block_typ @block_typ_arraytyp::_slink
        ldfld class @block @block_typ::_slink
        ldloc $tmpSetLiteral2
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc _F
        ldfld class @block_typ @block_typ_arraytyp::_slink
        ldfld valuetype T_symset @block_typ::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda valuetype T_block_conrec @block_typ_arraytyp::High
        call instance void @block::Constant(valuetype T_symset Fsys, valuetype T_block_conrec& c)
        .line 694
        ldloc _F
        ldflda valuetype T_block_conrec @block_typ_arraytyp::High
        ldfld int32 T_block_conrec::Tp
        ldloc _F
        ldflda valuetype T_block_conrec @block_typ_arraytyp::Low
        ldfld int32 T_block_conrec::Tp
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_4
        .line 695
        ldc.i4 27
        call void Error(int32 n)
        .line 695
        ldloc _F
        ldflda valuetype T_block_conrec @block_typ_arraytyp::High
        ldloc _F
        ldflda valuetype T_block_conrec @block_typ_arraytyp::Low
        ldfld int32 T_block_conrec::i
        stfld int32 T_block_conrec::i
    L_if_end_4:
        .line 697
        ldloc _F
        ldflda valuetype T_block_conrec @block_typ_arraytyp::Low
        ldfld int32 T_block_conrec::Tp
        ldloc _F
        ldflda valuetype T_block_conrec @block_typ_arraytyp::Low
        ldfld int32 T_block_conrec::i
        ldloc _F
        ldflda valuetype T_block_conrec @block_typ_arraytyp::High
        ldfld int32 T_block_conrec::i
        call void Enterarray(int32 Tp, int32 l, int32 h)
        .line 697
        ldloc _F
        ldfld int32* @block_typ_arraytyp::Aref
        ldsfld int32 _G::a
        stobj int32
        .line 698
        ldsfld int32 _G::Sy
        ldc.i4 23
        ceq
        brfalse L_else_5
        .line 699
        call void Insymbol()
        .line 699
        ldloc _F
        ldc.i4 5
        stfld int32 @block_typ_arraytyp::Eltp
        .line 699
        ldloc _F
        ldfld class @block_typ @block_typ_arraytyp::_slink
        ldloc _F
        ldflda int32 @block_typ_arraytyp::Elrf
        ldloc _F
        ldflda int32 @block_typ_arraytyp::Elsz
        call instance void @block_typ::Arraytyp(int32& Aref, int32& Arsz)
        br L_if_end_6
    L_else_5:
        .line 702
        ldsfld int32 _G::Sy
        ldc.i4 22
        ceq
        brfalse L_else_7
        .line 702
        call void Insymbol()
        br L_if_end_8
    L_else_7:
        .line 703
        ldc.i4 12
        call void Error(int32 n)
        .line 704
        ldsfld int32 _G::Sy
        ldc.i4 20
        ceq
        brfalse L_if_end_9
        .line 704
        call void Insymbol()
    L_if_end_9:
    L_if_end_8:
        .line 706
        ldsfld int32 _G::Sy
        ldc.i4 46
        ceq
        brfalse L_else_10
        .line 706
        call void Insymbol()
        br L_if_end_11
    L_else_10:
        .line 706
        ldc.i4 8
        call void Error(int32 n)
    L_if_end_11:
        .line 707
        ldloc _F
        ldfld class @block_typ @block_typ_arraytyp::_slink
        ldfld class @block @block_typ::_slink
        ldloc _F
        ldfld class @block_typ @block_typ_arraytyp::_slink
        ldfld valuetype T_symset @block_typ::Fsys
        ldloc _F
        ldflda int32 @block_typ_arraytyp::Eltp
        ldloc _F
        ldflda int32 @block_typ_arraytyp::Elrf
        ldloc _F
        ldflda int32 @block_typ_arraytyp::Elsz
        call instance void @block::Typ(valuetype T_symset Fsys, int32& Tp, int32& Rf, int32& Sz)
    L_if_end_6:
        .line 710
        ldloc _F
        ldfld int32* @block_typ_arraytyp::Arsz
        ldsflda valuetype T_array_90 _G::Atab
        ldloc _F
        ldfld int32* @block_typ_arraytyp::Aref
        ldobj int32
        call instance valuetype T_record_89& T_array_90::ldadr(int32)
        ldfld int32 T_record_89::High
        ldsflda valuetype T_array_90 _G::Atab
        ldloc _F
        ldfld int32* @block_typ_arraytyp::Aref
        ldobj int32
        call instance valuetype T_record_89& T_array_90::ldadr(int32)
        ldfld int32 T_record_89::Low
        sub
        ldc.i4 1
        add
        ldloc _F
        ldfld int32 @block_typ_arraytyp::Elsz
        mul
        stobj int32
        .line 710
        ldsflda valuetype T_array_90 _G::Atab
        ldloc _F
        ldfld int32* @block_typ_arraytyp::Aref
        ldobj int32
        call instance valuetype T_record_89& T_array_90::ldadr(int32)
        ldloc _F
        ldfld int32* @block_typ_arraytyp::Arsz
        ldobj int32
        dup
        ldc.i4 -131071
        ldc.i4 131071
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_record_89::Size
        .line 711
        ldsflda valuetype T_array_90 _G::Atab
        ldloc _F
        ldfld int32* @block_typ_arraytyp::Aref
        ldobj int32
        call instance valuetype T_record_89& T_array_90::ldadr(int32)
        ldloc _F
        ldfld int32 @block_typ_arraytyp::Eltp
        stfld int32 T_record_89::Eltyp
        .line 711
        ldsflda valuetype T_array_90 _G::Atab
        ldloc _F
        ldfld int32* @block_typ_arraytyp::Aref
        ldobj int32
        call instance valuetype T_record_89& T_array_90::ldadr(int32)
        ldloc _F
        ldfld int32 @block_typ_arraytyp::Elrf
        dup
        ldc.i4 -131071
        ldc.i4 131071
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_record_89::Elref
        .line 711
        ldsflda valuetype T_array_90 _G::Atab
        ldloc _F
        ldfld int32* @block_typ_arraytyp::Aref
        ldobj int32
        call instance valuetype T_record_89& T_array_90::ldadr(int32)
        ldloc _F
        ldfld int32 @block_typ_arraytyp::Elsz
        dup
        ldc.i4 -131071
        ldc.i4 131071
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_record_89::Elsize
        /* nop */
    
    L_Epilogue:
        ret
    }
}


.line 775
//================================================================================
// scope: block_parameterlist (level : 3)

.class @block_parameterlist
{
    // slink
    .field public class @block _slink

    // local variables
    .field public int32 Rf
    .field public int32 Sz
    .field public int32 T0
    .field public int32 Tp
    .field public bool Valpar
    .field public int32 x

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 826
//================================================================================
// scope: block_constantdeclaration (level : 3)

.class @block_constantdeclaration
{
    // slink
    .field public class @block _slink

    // local variables
    .field public valuetype T_block_conrec c

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 845
//================================================================================
// scope: block_typedeclaration (level : 3)

.class @block_typedeclaration
{
    // slink
    .field public class @block _slink

    // local variables
    .field public int32 Rf
    .field public int32 Sz
    .field public int32 T1
    .field public int32 Tp

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 863
//================================================================================
// scope: block_variabledeclaration (level : 3)

.class @block_variabledeclaration
{
    // slink
    .field public class @block _slink

    // local variables
    .field public int32 Rf
    .field public int32 Sz
    .field public int32 T0
    .field public int32 T1
    .field public int32 Tp

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 887
//================================================================================
// scope: block_procdeclaration (level : 3)

.class @block_procdeclaration
{
    // slink
    .field public class @block _slink

    // local variables
    .field public bool Isfun

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 904
//================================================================================
// scope: block_statement_selector (level : 4)

.line 0xfeefee

// TYPE item = record;
.class value explicit T_item
{
    // alignment = 4
    .size 8
    
    .field [0] public int32 Typ
    .field [4] public int32 Ref
}

.class @block_statement_selector
{
    // slink
    .field public class @block_statement _slink

    // parameters
    .field public valuetype T_symset Fsys
    .field public valuetype T_item* v

    // local variables
    .field public int32 a
    .field public int32 j
    .field public valuetype T_item x

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 942
//================================================================================
// scope: block_statement_call (level : 4)

.class @block_statement_call
{
    // slink
    .field public class @block_statement _slink

    // parameters
    .field public valuetype T_symset Fsys
    .field public int32 i

    // local variables
    .field public int32 Cp
    .field public int32 k
    .field public int32 Lastp
    .field public valuetype T_item x

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 992
//================================================================================
// scope: block_statement_resulttype (level : 4)

.class @block_statement_resulttype
{
    // slink
    .field public class @block_statement _slink

    // parameters
    .field public int32 a
    .field public int32 b

    // local variables
    .field public int32 _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 1020
//================================================================================
// scope: block_statement_expression_simpleexpression_term_factor_standfct (level : 8)

.line 0xfeefee

// TYPE typset = set of 0 .. 6
.class value explicit T_typset
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
        call instance void T_typset::addValue(int32)
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

.class @block_statement_expression_simpleexpression_term_factor_standfct
{
    // slink
    .field public class @block_statement_expression_simpleexpression_term_factor _slink

    // parameters
    .field public int32 n

    // local variables
    .field public valuetype T_typset Ts

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 1017
//================================================================================
// scope: block_statement_expression_simpleexpression_term_factor (level : 7)

.class @block_statement_expression_simpleexpression_term_factor
{
    // slink
    .field public class @block_statement_expression_simpleexpression_term _slink

    // parameters
    .field public valuetype T_symset Fsys
    .field public valuetype T_item* x

    // local variables
    .field public int32 f
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 1020

    .method public
    void Standfct(int32 n)
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_expression_simpleexpression_term_factor_standfct _F,
            valuetype T_symset $tmpSetLiteral1,
            int32 $tmpSwitchValue2,
            valuetype T_typset $tmpSetLiteral3,
            valuetype T_typset $tmpSetLiteral4,
            valuetype T_typset $tmpSetLiteral5,
            valuetype T_typset $tmpSetLiteral6,
            valuetype T_typset $tmpSetLiteral7)
        
        newobj instance void @block_statement_expression_simpleexpression_term_factor_standfct::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement_expression_simpleexpression_term_factor @block_statement_expression_simpleexpression_term_factor_standfct::_slink
        
        ldloc _F
        ldarg n
        stfld int32 @block_statement_expression_simpleexpression_term_factor_standfct::n
    
        ldloca $tmpSetLiteral1
        ldc.i4 20
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral3
        ldc.i4 1
        call instance void T_typset::addValue(int32)
        ldloca $tmpSetLiteral3
        ldc.i4 2
        call instance void T_typset::addValue(int32)
    
        ldloca $tmpSetLiteral4
        ldc.i4 1
        call instance void T_typset::addValue(int32)
    
        ldloca $tmpSetLiteral5
        ldc.i4 1
        call instance void T_typset::addValue(int32)
        ldloca $tmpSetLiteral5
        ldc.i4 3
        call instance void T_typset::addValue(int32)
        ldloca $tmpSetLiteral5
        ldc.i4 4
        call instance void T_typset::addValue(int32)
    
        ldloca $tmpSetLiteral6
        ldc.i4 4
        call instance void T_typset::addValue(int32)
    
        ldloca $tmpSetLiteral7
        ldc.i4 1
        call instance void T_typset::addValue(int32)
        ldloca $tmpSetLiteral7
        ldc.i4 2
        call instance void T_typset::addValue(int32)
    
    L_Entry:
        .line 1023
        ldsfld int32 _G::Sy
        ldc.i4 19
        ceq
        brfalse L_else_1
        .line 1023
        call void Insymbol()
        br L_if_end_2
    L_else_1:
        .line 1023
        ldc.i4 9
        call void Error(int32 n)
    L_if_end_2:
        .line 1024
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor_standfct::n
        ldc.i4 17
        clt
        brfalse L_else_3
        .line 1025
        ldloc _F
        ldfld class @block_statement_expression_simpleexpression_term_factor @block_statement_expression_simpleexpression_term_factor_standfct::_slink
        ldfld class @block_statement_expression_simpleexpression_term @block_statement_expression_simpleexpression_term_factor::_slink
        ldfld class @block_statement_expression_simpleexpression @block_statement_expression_simpleexpression_term::_slink
        ldfld class @block_statement_expression @block_statement_expression_simpleexpression::_slink
        ldfld class @block_statement @block_statement_expression::_slink
        ldloc _F
        ldfld class @block_statement_expression_simpleexpression_term_factor @block_statement_expression_simpleexpression_term_factor_standfct::_slink
        ldfld valuetype T_symset @block_statement_expression_simpleexpression_term_factor::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral1
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldfld class @block_statement_expression_simpleexpression_term_factor @block_statement_expression_simpleexpression_term_factor_standfct::_slink
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        call instance void @block_statement::Expression(valuetype T_symset Fsys, valuetype T_item& x)
        .line 1026
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor_standfct::n
        stloc $tmpSwitchValue2
        ldloc $tmpSwitchValue2
        ldc.i4 0
        beq L_case_7
        ldloc $tmpSwitchValue2
        ldc.i4 2
        beq L_case_7
        br L_check_case_6
    L_case_7:
        .line 1027
        ldloc _F
        ldloc $tmpSetLiteral3
        stfld valuetype T_typset @block_statement_expression_simpleexpression_term_factor_standfct::Ts
        .line 1028
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld class @block_statement_expression_simpleexpression_term_factor @block_statement_expression_simpleexpression_term_factor_standfct::_slink
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld class @block_statement_expression_simpleexpression_term_factor @block_statement_expression_simpleexpression_term_factor_standfct::_slink
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldfld int32 T_item::Typ
        stfld int32 T_record_86::Typ
        .line 1029
        ldloc _F
        ldfld class @block_statement_expression_simpleexpression_term_factor @block_statement_expression_simpleexpression_term_factor_standfct::_slink
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldfld int32 T_item::Typ
        ldc.i4 2
        ceq
        brfalse L_if_end_8
        .line 1029
        ldloc _F
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor_standfct::n
        ldc.i4 1
        add
        stfld int32 @block_statement_expression_simpleexpression_term_factor_standfct::n
    L_if_end_8:
        br L_case_end_5
    L_check_case_6:
        ldloc $tmpSwitchValue2
        ldc.i4 4
        beq L_case_10
        ldloc $tmpSwitchValue2
        ldc.i4 5
        beq L_case_10
        br L_check_case_9
    L_case_10:
        .line 1031
        ldloc _F
        ldloc $tmpSetLiteral4
        stfld valuetype T_typset @block_statement_expression_simpleexpression_term_factor_standfct::Ts
        br L_case_end_5
    L_check_case_9:
        ldloc $tmpSwitchValue2
        ldc.i4 6
        bne.un L_check_case_11
        .line 1032
        ldloc _F
        ldloc $tmpSetLiteral5
        stfld valuetype T_typset @block_statement_expression_simpleexpression_term_factor_standfct::Ts
        br L_case_end_5
    L_check_case_11:
        ldloc $tmpSwitchValue2
        ldc.i4 7
        beq L_case_13
        ldloc $tmpSwitchValue2
        ldc.i4 8
        beq L_case_13
        br L_check_case_12
    L_case_13:
        .line 1033
        ldloc _F
        ldloc $tmpSetLiteral6
        stfld valuetype T_typset @block_statement_expression_simpleexpression_term_factor_standfct::Ts
        br L_case_end_5
    L_check_case_12:
        ldloc $tmpSwitchValue2
        ldc.i4 9
        beq L_case_14
        ldloc $tmpSwitchValue2
        ldc.i4 10
        beq L_case_14
        ldloc $tmpSwitchValue2
        ldc.i4 11
        beq L_case_14
        ldloc $tmpSwitchValue2
        ldc.i4 12
        beq L_case_14
        ldloc $tmpSwitchValue2
        ldc.i4 13
        beq L_case_14
        ldloc $tmpSwitchValue2
        ldc.i4 14
        beq L_case_14
        ldloc $tmpSwitchValue2
        ldc.i4 15
        beq L_case_14
        ldloc $tmpSwitchValue2
        ldc.i4 16
        beq L_case_14
        br L_case_end_5
    L_case_14:
        .line 1035
        ldloc _F
        ldloc $tmpSetLiteral7
        stfld valuetype T_typset @block_statement_expression_simpleexpression_term_factor_standfct::Ts
        .line 1036
        ldloc _F
        ldfld class @block_statement_expression_simpleexpression_term_factor @block_statement_expression_simpleexpression_term_factor_standfct::_slink
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldfld int32 T_item::Typ
        ldc.i4 1
        ceq
        brfalse L_if_end_15
        .line 1036
        ldc.i4 26
        ldc.i4 0
        call void Emit1(int32 Fct, int32 b)
    L_if_end_15:
    L_case_end_5:
        .line 1039
        ldloc _F
        ldfld valuetype T_typset @block_statement_expression_simpleexpression_term_factor_standfct::Ts
        ldloc _F
        ldfld class @block_statement_expression_simpleexpression_term_factor @block_statement_expression_simpleexpression_term_factor_standfct::_slink
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldfld int32 T_item::Typ
        call bool _SetContains(valuetype T_typset s, int32 val)
        brfalse L_else_16
        .line 1039
        ldc.i4 8
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor_standfct::n
        call void Emit1(int32 Fct, int32 b)
        br L_if_end_17
    L_else_16:
        .line 1040
        ldloc _F
        ldfld class @block_statement_expression_simpleexpression_term_factor @block_statement_expression_simpleexpression_term_factor_standfct::_slink
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldfld int32 T_item::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_18
        .line 1040
        ldc.i4 48
        call void Error(int32 n)
    L_if_end_18:
    L_if_end_17:
        br L_if_end_4
    L_else_3:
        .line 1043
        ldsfld int32 _G::Sy
        ldc.i4 36
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_19
        .line 1043
        ldc.i4 2
        call void Error(int32 n)
        br L_if_end_20
    L_else_19:
        .line 1044
        ldsfld valuetype T_alfa _G::Id
        call string T_alfa::arrayToString(valuetype T_alfa)
        ldstr "input     "
        call bool [lpcRuntime]LPC.Helpers::StrcmpNE(string, string)
        brfalse L_else_21
        .line 1044
        ldc.i4 0
        call void Error(int32 n)
        br L_if_end_22
    L_else_21:
        .line 1044
        call void Insymbol()
    L_if_end_22:
    L_if_end_20:
        .line 1045
        ldc.i4 8
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor_standfct::n
        call void Emit1(int32 Fct, int32 b)
        /* nop */
    L_if_end_4:
        .line 1047
        ldloc _F
        ldfld class @block_statement_expression_simpleexpression_term_factor @block_statement_expression_simpleexpression_term_factor_standfct::_slink
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld class @block_statement_expression_simpleexpression_term_factor @block_statement_expression_simpleexpression_term_factor_standfct::_slink
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Typ
        stfld int32 T_item::Typ
        .line 1048
        ldsfld int32 _G::Sy
        ldc.i4 20
        ceq
        brfalse L_else_23
        .line 1048
        call void Insymbol()
        br L_if_end_24
    L_else_23:
        .line 1048
        ldc.i4 4
        call void Error(int32 n)
    L_if_end_24:
    
    L_Epilogue:
        ret
    }
}


.line 1014
//================================================================================
// scope: block_statement_expression_simpleexpression_term (level : 6)

.class @block_statement_expression_simpleexpression_term
{
    // slink
    .field public class @block_statement_expression_simpleexpression _slink

    // parameters
    .field public valuetype T_symset Fsys
    .field public valuetype T_item* x

    // local variables
    .field public int32 Op
    .field public valuetype T_item y

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 1017

    .method public
    void Factor(valuetype T_symset Fsys, valuetype T_item& x)
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_expression_simpleexpression_term_factor _F,
            int32 $tmpSwitchValue1,
            valuetype T_symset $tmpSetLiteral2,
            valuetype T_symset $tmpSetLiteral3,
            valuetype T_symset $tmpSetLiteral4,
            valuetype T_item& pinned $x)
        
        newobj instance void @block_statement_expression_simpleexpression_term_factor::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement_expression_simpleexpression_term @block_statement_expression_simpleexpression_term_factor::_slink
        
        ldloc _F
        ldarg Fsys
        stfld valuetype T_symset @block_statement_expression_simpleexpression_term_factor::Fsys
        
        ldarg x
        stloc $x
        
        ldloc _F
        ldarg x
        stfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
    
        ldloca $tmpSetLiteral2
        ldc.i4 21
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 19
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 25
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral3
        ldc.i4 2
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral3
        ldc.i4 0
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral3
        ldc.i4 1
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral4
        ldc.i4 20
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 1051
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldc.i4 0
        stfld int32 T_item::Typ
        .line 1051
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldc.i4 0
        dup
        ldc.i4 -131071
        ldc.i4 131071
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_item::Ref
        .line 1052
        ldloc _F
        ldfld class @block_statement_expression_simpleexpression_term @block_statement_expression_simpleexpression_term_factor::_slink
        ldfld class @block_statement_expression_simpleexpression @block_statement_expression_simpleexpression_term::_slink
        ldfld class @block_statement_expression @block_statement_expression_simpleexpression::_slink
        ldfld class @block_statement @block_statement_expression::_slink
        ldfld class @block @block_statement::_slink
        ldsfld valuetype T_symset _G::Facbegsys
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression_simpleexpression_term_factor::Fsys
        ldc.i4 58
        call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
        .line 1053
        br L_while_test_2
    L_while_1:
        .line 1055
        ldsfld int32 _G::Sy
        ldc.i4 36
        ceq
        brfalse L_else_3
        .line 1056
        ldloc _F
        ldloc _F
        ldfld class @block_statement_expression_simpleexpression_term @block_statement_expression_simpleexpression_term_factor::_slink
        ldfld class @block_statement_expression_simpleexpression @block_statement_expression_simpleexpression_term::_slink
        ldfld class @block_statement_expression @block_statement_expression_simpleexpression::_slink
        ldfld class @block_statement @block_statement_expression::_slink
        ldfld class @block @block_statement::_slink
        ldsfld valuetype T_alfa _G::Id
        call instance int32 @block::Loc(valuetype T_alfa Id)
        stfld int32 @block_statement_expression_simpleexpression_term_factor::i
        .line 1056
        call void Insymbol()
        .line 1058
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Obj
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 0
        bne.un L_check_case_6
        .line 1059
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Typ
        stfld int32 T_item::Typ
        .line 1059
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldc.i4 0
        dup
        ldc.i4 -131071
        ldc.i4 131071
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_item::Ref
        .line 1060
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldfld int32 T_item::Typ
        ldc.i4 2
        ceq
        brfalse L_else_7
        .line 1061
        ldc.i4 25
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Adr
        call void Emit1(int32 Fct, int32 b)
        br L_if_end_8
    L_else_7:
        .line 1062
        ldc.i4 24
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Adr
        call void Emit1(int32 Fct, int32 b)
    L_if_end_8:
        br L_case_end_5
    L_check_case_6:
        ldloc $tmpSwitchValue1
        ldc.i4 1
        bne.un L_check_case_9
        .line 1065
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Typ
        stfld int32 T_item::Typ
        .line 1065
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Ref
        stfld int32 T_item::Ref
        .line 1066
        ldloc $tmpSetLiteral2
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_symset s, int32 val)
        brfalse L_else_10
        .line 1067
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld bool T_record_86::Normal
        brfalse L_else_12
        .line 1067
        ldloc _F
        ldc.i4 0
        stfld int32 @block_statement_expression_simpleexpression_term_factor::f
        br L_if_end_13
    L_else_12:
        .line 1067
        ldloc _F
        ldc.i4 1
        stfld int32 @block_statement_expression_simpleexpression_term_factor::f
    L_if_end_13:
        .line 1068
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::f
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int8 T_record_86::Lev
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Adr
        call void Emit2(int32 Fct, int32 a, int32 b)
        .line 1069
        ldloc _F
        ldfld class @block_statement_expression_simpleexpression_term @block_statement_expression_simpleexpression_term_factor::_slink
        ldfld class @block_statement_expression_simpleexpression @block_statement_expression_simpleexpression_term::_slink
        ldfld class @block_statement_expression @block_statement_expression_simpleexpression::_slink
        ldfld class @block_statement @block_statement_expression::_slink
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression_simpleexpression_term_factor::Fsys
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        call instance void @block_statement::Selector(valuetype T_symset Fsys, valuetype T_item& v)
        .line 1070
        ldsfld valuetype T_typset _G::Stantyps
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldfld int32 T_item::Typ
        call bool _SetContains(valuetype T_typset s, int32 val)
        brfalse L_if_end_14
        .line 1070
        ldc.i4 34
        call void Emit(int32 Fct)
    L_if_end_14:
        br L_if_end_11
    L_else_10:
        .line 1073
        ldsfld valuetype T_typset _G::Stantyps
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldfld int32 T_item::Typ
        call bool _SetContains(valuetype T_typset s, int32 val)
        brfalse L_else_15
        .line 1074
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld bool T_record_86::Normal
        brfalse L_else_17
        .line 1074
        ldloc _F
        ldc.i4 1
        stfld int32 @block_statement_expression_simpleexpression_term_factor::f
        br L_if_end_18
    L_else_17:
        .line 1074
        ldloc _F
        ldc.i4 2
        stfld int32 @block_statement_expression_simpleexpression_term_factor::f
    L_if_end_18:
        br L_if_end_16
    L_else_15:
        .line 1076
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld bool T_record_86::Normal
        brfalse L_else_19
        .line 1076
        ldloc _F
        ldc.i4 0
        stfld int32 @block_statement_expression_simpleexpression_term_factor::f
        br L_if_end_20
    L_else_19:
        .line 1076
        ldloc _F
        ldc.i4 1
        stfld int32 @block_statement_expression_simpleexpression_term_factor::f
    L_if_end_20:
    L_if_end_16:
        .line 1077
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::f
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int8 T_record_86::Lev
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Adr
        call void Emit2(int32 Fct, int32 a, int32 b)
    L_if_end_11:
        br L_case_end_5
    L_check_case_9:
        ldloc $tmpSwitchValue1
        ldc.i4 2
        beq L_case_22
        ldloc $tmpSwitchValue1
        ldc.i4 3
        beq L_case_22
        br L_check_case_21
    L_case_22:
        .line 1080
        ldc.i4 44
        call void Error(int32 n)
        br L_case_end_5
    L_check_case_21:
        ldloc $tmpSwitchValue1
        ldc.i4 4
        bne.un L_case_end_5
        .line 1081
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Typ
        stfld int32 T_item::Typ
        .line 1082
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int8 T_record_86::Lev
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_23
        .line 1082
        ldloc _F
        ldfld class @block_statement_expression_simpleexpression_term @block_statement_expression_simpleexpression_term_factor::_slink
        ldfld class @block_statement_expression_simpleexpression @block_statement_expression_simpleexpression_term::_slink
        ldfld class @block_statement_expression @block_statement_expression_simpleexpression::_slink
        ldfld class @block_statement @block_statement_expression::_slink
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression_simpleexpression_term_factor::Fsys
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::i
        call instance void @block_statement::Call(valuetype T_symset Fsys, int32 i)
        br L_if_end_24
    L_else_23:
        .line 1083
        ldloc _F
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term_factor::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Adr
        call instance void @block_statement_expression_simpleexpression_term_factor::Standfct(int32 n)
    L_if_end_24:
    L_case_end_5:
        br L_if_end_4
    L_else_3:
        .line 1087
        ldloc $tmpSetLiteral3
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_symset s, int32 val)
        brfalse L_else_25
        .line 1089
        ldsfld int32 _G::Sy
        ldc.i4 1
        ceq
        brfalse L_else_27
        .line 1090
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldc.i4 2
        stfld int32 T_item::Typ
        .line 1090
        ldsfld float64 _G::Rnum
        call void Enterreal(float64 x)
        .line 1091
        ldc.i4 25
        ldsfld int32 _G::C1
        call void Emit1(int32 Fct, int32 b)
        br L_if_end_28
    L_else_27:
        .line 1093
        ldsfld int32 _G::Sy
        ldc.i4 2
        ceq
        brfalse L_else_29
        .line 1093
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldc.i4 4
        stfld int32 T_item::Typ
        br L_if_end_30
    L_else_29:
        .line 1094
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldc.i4 1
        stfld int32 T_item::Typ
    L_if_end_30:
        .line 1095
        ldc.i4 24
        ldsfld int32 _G::Inum
        call void Emit1(int32 Fct, int32 b)
    L_if_end_28:
        .line 1097
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldc.i4 0
        dup
        ldc.i4 -131071
        ldc.i4 131071
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_item::Ref
        .line 1097
        call void Insymbol()
        br L_if_end_26
    L_else_25:
        .line 1099
        ldsfld int32 _G::Sy
        ldc.i4 19
        ceq
        brfalse L_else_31
        .line 1100
        call void Insymbol()
        .line 1100
        ldloc _F
        ldfld class @block_statement_expression_simpleexpression_term @block_statement_expression_simpleexpression_term_factor::_slink
        ldfld class @block_statement_expression_simpleexpression @block_statement_expression_simpleexpression_term::_slink
        ldfld class @block_statement_expression @block_statement_expression_simpleexpression::_slink
        ldfld class @block_statement @block_statement_expression::_slink
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression_simpleexpression_term_factor::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral4
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        call instance void @block_statement::Expression(valuetype T_symset Fsys, valuetype T_item& x)
        .line 1101
        ldsfld int32 _G::Sy
        ldc.i4 20
        ceq
        brfalse L_else_33
        .line 1101
        call void Insymbol()
        br L_if_end_34
    L_else_33:
        .line 1101
        ldc.i4 4
        call void Error(int32 n)
    L_if_end_34:
        br L_if_end_32
    L_else_31:
        .line 1103
        ldsfld int32 _G::Sy
        ldc.i4 4
        ceq
        brfalse L_if_end_35
        .line 1104
        call void Insymbol()
        .line 1104
        ldloc _F
        ldfld class @block_statement_expression_simpleexpression_term @block_statement_expression_simpleexpression_term_factor::_slink
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression_simpleexpression_term_factor::Fsys
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        call instance void @block_statement_expression_simpleexpression_term::Factor(valuetype T_symset Fsys, valuetype T_item& x)
        .line 1105
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldfld int32 T_item::Typ
        ldc.i4 3
        ceq
        brfalse L_else_36
        .line 1105
        ldc.i4 35
        call void Emit(int32 Fct)
        br L_if_end_37
    L_else_36:
        .line 1106
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term_factor::x
        ldfld int32 T_item::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_38
        .line 1106
        ldc.i4 32
        call void Error(int32 n)
    L_if_end_38:
    L_if_end_37:
    L_if_end_35:
    L_if_end_32:
    L_if_end_26:
    L_if_end_4:
        .line 1108
        ldloc _F
        ldfld class @block_statement_expression_simpleexpression_term @block_statement_expression_simpleexpression_term_factor::_slink
        ldfld class @block_statement_expression_simpleexpression @block_statement_expression_simpleexpression_term::_slink
        ldfld class @block_statement_expression @block_statement_expression_simpleexpression::_slink
        ldfld class @block_statement @block_statement_expression::_slink
        ldfld class @block @block_statement::_slink
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression_simpleexpression_term_factor::Fsys
        ldsfld valuetype T_symset _G::Facbegsys
        ldc.i4 6
        call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
    L_while_test_2:
        ldsfld valuetype T_symset _G::Facbegsys
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_symset s, int32 val)
        brtrue L_while_1
    
    L_Epilogue:
        ret
    }
}


.line 1011
//================================================================================
// scope: block_statement_expression_simpleexpression (level : 5)

.class @block_statement_expression_simpleexpression
{
    // slink
    .field public class @block_statement_expression _slink

    // parameters
    .field public valuetype T_symset Fsys
    .field public valuetype T_item* x

    // local variables
    .field public int32 Op
    .field public valuetype T_item y

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 1014

    .method public
    void Term(valuetype T_symset Fsys, valuetype T_item& x)
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_expression_simpleexpression_term _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_symset $tmpSetLiteral2,
            int32 $tmpSwitchValue3,
            valuetype T_symset $tmpSetLiteral4,
            valuetype T_item& pinned $x)
        
        newobj instance void @block_statement_expression_simpleexpression_term::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement_expression_simpleexpression @block_statement_expression_simpleexpression_term::_slink
        
        ldloc _F
        ldarg Fsys
        stfld valuetype T_symset @block_statement_expression_simpleexpression_term::Fsys
        
        ldarg x
        stloc $x
        
        ldloc _F
        ldarg x
        stfld valuetype T_item* @block_statement_expression_simpleexpression_term::x
    
        ldloca $tmpSetLiteral1
        ldc.i4 7
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 9
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 8
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 10
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 11
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 7
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 9
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 8
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 10
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 11
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral4
        ldc.i4 7
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 9
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 8
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 10
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 11
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 1113
        ldloc _F
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression_simpleexpression_term::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral1
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term::x
        call instance void @block_statement_expression_simpleexpression_term::Factor(valuetype T_symset Fsys, valuetype T_item& x)
        .line 1114
        br L_while_test_2
    L_while_1:
        .line 1115
        ldloc _F
        ldsfld int32 _G::Sy
        stfld int32 @block_statement_expression_simpleexpression_term::Op
        .line 1115
        call void Insymbol()
        .line 1116
        ldloc _F
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression_simpleexpression_term::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral2
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda valuetype T_item @block_statement_expression_simpleexpression_term::y
        call instance void @block_statement_expression_simpleexpression_term::Factor(valuetype T_symset Fsys, valuetype T_item& x)
        .line 1117
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term::Op
        ldc.i4 7
        ceq
        brfalse L_else_3
        .line 1118
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term::x
        ldloc _F
        ldfld class @block_statement_expression_simpleexpression @block_statement_expression_simpleexpression_term::_slink
        ldfld class @block_statement_expression @block_statement_expression_simpleexpression::_slink
        ldfld class @block_statement @block_statement_expression::_slink
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term::x
        ldfld int32 T_item::Typ
        ldloc _F
        ldflda valuetype T_item @block_statement_expression_simpleexpression_term::y
        ldfld int32 T_item::Typ
        call instance int32 @block_statement::Resulttype(int32 a, int32 b)
        stfld int32 T_item::Typ
        .line 1119
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term::x
        ldfld int32 T_item::Typ
        stloc $tmpSwitchValue3
        ldloc $tmpSwitchValue3
        ldc.i4 0
        bne.un L_check_case_6
        /* nop */
        br L_case_end_5
    L_check_case_6:
        ldloc $tmpSwitchValue3
        ldc.i4 1
        bne.un L_check_case_7
        .line 1121
        ldc.i4 57
        call void Emit(int32 Fct)
        br L_case_end_5
    L_check_case_7:
        ldloc $tmpSwitchValue3
        ldc.i4 2
        bne.un L_case_end_5
        .line 1122
        ldc.i4 60
        call void Emit(int32 Fct)
    L_case_end_5:
        br L_if_end_4
    L_else_3:
        .line 1125
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term::Op
        ldc.i4 9
        ceq
        brfalse L_else_8
        .line 1127
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term::x
        ldfld int32 T_item::Typ
        ldc.i4 1
        ceq
        brfalse L_if_end_10
        .line 1128
        ldc.i4 26
        ldc.i4 1
        call void Emit1(int32 Fct, int32 b)
        .line 1128
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term::x
        ldc.i4 2
        stfld int32 T_item::Typ
    L_if_end_10:
        .line 1130
        ldloc _F
        ldflda valuetype T_item @block_statement_expression_simpleexpression_term::y
        ldfld int32 T_item::Typ
        ldc.i4 1
        ceq
        brfalse L_if_end_11
        .line 1131
        ldc.i4 26
        ldc.i4 0
        call void Emit1(int32 Fct, int32 b)
        .line 1131
        ldloc _F
        ldflda valuetype T_item @block_statement_expression_simpleexpression_term::y
        ldc.i4 2
        stfld int32 T_item::Typ
    L_if_end_11:
        .line 1133
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term::x
        ldfld int32 T_item::Typ
        ldc.i4 2
        ceq
        dup
        brfalse L_AND_shortcut_12
        pop
        ldloc _F
        ldflda valuetype T_item @block_statement_expression_simpleexpression_term::y
        ldfld int32 T_item::Typ
        ldc.i4 2
        ceq
    L_AND_shortcut_12:
        brfalse L_else_13
        .line 1134
        ldc.i4 61
        call void Emit(int32 Fct)
        br L_if_end_14
    L_else_13:
        .line 1135
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term::x
        ldfld int32 T_item::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        dup
        brfalse L_AND_shortcut_15
        pop
        ldloc _F
        ldflda valuetype T_item @block_statement_expression_simpleexpression_term::y
        ldfld int32 T_item::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
    L_AND_shortcut_15:
        brfalse L_if_end_16
        .line 1136
        ldc.i4 32
        call void Error(int32 n)
    L_if_end_16:
        .line 1137
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term::x
        ldc.i4 0
        stfld int32 T_item::Typ
    L_if_end_14:
        br L_if_end_9
    L_else_8:
        .line 1140
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term::Op
        ldc.i4 11
        ceq
        brfalse L_else_17
        .line 1141
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term::x
        ldfld int32 T_item::Typ
        ldc.i4 3
        ceq
        dup
        brfalse L_AND_shortcut_19
        pop
        ldloc _F
        ldflda valuetype T_item @block_statement_expression_simpleexpression_term::y
        ldfld int32 T_item::Typ
        ldc.i4 3
        ceq
    L_AND_shortcut_19:
        brfalse L_else_20
        .line 1142
        ldc.i4 56
        call void Emit(int32 Fct)
        br L_if_end_21
    L_else_20:
        .line 1143
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term::x
        ldfld int32 T_item::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        dup
        brfalse L_AND_shortcut_22
        pop
        ldloc _F
        ldflda valuetype T_item @block_statement_expression_simpleexpression_term::y
        ldfld int32 T_item::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
    L_AND_shortcut_22:
        brfalse L_if_end_23
        .line 1144
        ldc.i4 32
        call void Error(int32 n)
    L_if_end_23:
        .line 1145
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term::x
        ldc.i4 0
        stfld int32 T_item::Typ
    L_if_end_21:
        br L_if_end_18
    L_else_17:
        .line 1149
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term::x
        ldfld int32 T_item::Typ
        ldc.i4 1
        ceq
        dup
        brfalse L_AND_shortcut_24
        pop
        ldloc _F
        ldflda valuetype T_item @block_statement_expression_simpleexpression_term::y
        ldfld int32 T_item::Typ
        ldc.i4 1
        ceq
    L_AND_shortcut_24:
        brfalse L_else_25
        .line 1150
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression_term::Op
        ldc.i4 8
        ceq
        brfalse L_else_27
        .line 1150
        ldc.i4 58
        call void Emit(int32 Fct)
        br L_if_end_28
    L_else_27:
        .line 1151
        ldc.i4 59
        call void Emit(int32 Fct)
    L_if_end_28:
        br L_if_end_26
    L_else_25:
        .line 1152
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term::x
        ldfld int32 T_item::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        dup
        brfalse L_AND_shortcut_29
        pop
        ldloc _F
        ldflda valuetype T_item @block_statement_expression_simpleexpression_term::y
        ldfld int32 T_item::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
    L_AND_shortcut_29:
        brfalse L_if_end_30
        .line 1153
        ldc.i4 34
        call void Error(int32 n)
    L_if_end_30:
        .line 1154
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression_term::x
        ldc.i4 0
        stfld int32 T_item::Typ
    L_if_end_26:
    L_if_end_18:
    L_if_end_9:
    L_if_end_4:
    L_while_test_2:
        ldloc $tmpSetLiteral4
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_symset s, int32 val)
        brtrue L_while_1
    
    L_Epilogue:
        ret
    }
}


.line 1008
//================================================================================
// scope: block_statement_expression (level : 4)

.class @block_statement_expression
{
    // slink
    .field public class @block_statement _slink

    // parameters
    .field public valuetype T_symset Fsys
    .field public valuetype T_item* x

    // local variables
    .field public int32 Op
    .field public valuetype T_item y

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 1011

    .method public
    void Simpleexpression(valuetype T_symset Fsys, valuetype T_item& x)
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_expression_simpleexpression _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_symset $tmpSetLiteral2,
            valuetype T_symset $tmpSetLiteral3,
            valuetype T_symset $tmpSetLiteral4,
            int32 $tmpSwitchValue5,
            valuetype T_symset $tmpSetLiteral6,
            valuetype T_item& pinned $x)
        
        newobj instance void @block_statement_expression_simpleexpression::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement_expression @block_statement_expression_simpleexpression::_slink
        
        ldloc _F
        ldarg Fsys
        stfld valuetype T_symset @block_statement_expression_simpleexpression::Fsys
        
        ldarg x
        stloc $x
        
        ldloc _F
        ldarg x
        stfld valuetype T_item* @block_statement_expression_simpleexpression::x
    
        ldloca $tmpSetLiteral1
        ldc.i4 5
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 6
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 5
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 6
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral3
        ldc.i4 5
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral3
        ldc.i4 6
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral3
        ldc.i4 12
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral4
        ldc.i4 5
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 6
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 12
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral6
        ldc.i4 5
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral6
        ldc.i4 6
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral6
        ldc.i4 12
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 1161
        ldloc $tmpSetLiteral1
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_symset s, int32 val)
        brfalse L_else_1
        .line 1162
        ldloc _F
        ldsfld int32 _G::Sy
        stfld int32 @block_statement_expression_simpleexpression::Op
        .line 1162
        call void Insymbol()
        .line 1163
        ldloc _F
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression_simpleexpression::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral2
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression::x
        call instance void @block_statement_expression_simpleexpression::Term(valuetype T_symset Fsys, valuetype T_item& x)
        .line 1164
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression::x
        ldfld int32 T_item::Typ
        ldc.i4 2
        cgt
        brfalse L_else_3
        .line 1164
        ldc.i4 33
        call void Error(int32 n)
        br L_if_end_4
    L_else_3:
        .line 1167
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression::Op
        ldc.i4 6
        ceq
        brfalse L_if_end_5
        .line 1167
        ldc.i4 36
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression::x
        ldfld int32 T_item::Typ
        call void Emit1(int32 Fct, int32 b)
    L_if_end_5:
    L_if_end_4:
        br L_if_end_2
    L_else_1:
        .line 1169
        ldloc _F
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression_simpleexpression::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral3
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression::x
        call instance void @block_statement_expression_simpleexpression::Term(valuetype T_symset Fsys, valuetype T_item& x)
    L_if_end_2:
        .line 1170
        br L_while_test_7
    L_while_6:
        .line 1171
        ldloc _F
        ldsfld int32 _G::Sy
        stfld int32 @block_statement_expression_simpleexpression::Op
        .line 1171
        call void Insymbol()
        .line 1172
        ldloc _F
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression_simpleexpression::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral4
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda valuetype T_item @block_statement_expression_simpleexpression::y
        call instance void @block_statement_expression_simpleexpression::Term(valuetype T_symset Fsys, valuetype T_item& x)
        .line 1173
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression::Op
        ldc.i4 12
        ceq
        brfalse L_else_8
        .line 1175
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression::x
        ldfld int32 T_item::Typ
        ldc.i4 3
        ceq
        dup
        brfalse L_AND_shortcut_10
        pop
        ldloc _F
        ldflda valuetype T_item @block_statement_expression_simpleexpression::y
        ldfld int32 T_item::Typ
        ldc.i4 3
        ceq
    L_AND_shortcut_10:
        brfalse L_else_11
        .line 1175
        ldc.i4 51
        call void Emit(int32 Fct)
        br L_if_end_12
    L_else_11:
        .line 1176
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression::x
        ldfld int32 T_item::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        dup
        brfalse L_AND_shortcut_13
        pop
        ldloc _F
        ldflda valuetype T_item @block_statement_expression_simpleexpression::y
        ldfld int32 T_item::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
    L_AND_shortcut_13:
        brfalse L_if_end_14
        .line 1177
        ldc.i4 32
        call void Error(int32 n)
    L_if_end_14:
        .line 1178
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression::x
        ldc.i4 0
        stfld int32 T_item::Typ
    L_if_end_12:
        br L_if_end_9
    L_else_8:
        .line 1181
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression::x
        ldloc _F
        ldfld class @block_statement_expression @block_statement_expression_simpleexpression::_slink
        ldfld class @block_statement @block_statement_expression::_slink
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression::x
        ldfld int32 T_item::Typ
        ldloc _F
        ldflda valuetype T_item @block_statement_expression_simpleexpression::y
        ldfld int32 T_item::Typ
        call instance int32 @block_statement::Resulttype(int32 a, int32 b)
        stfld int32 T_item::Typ
        .line 1182
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression_simpleexpression::x
        ldfld int32 T_item::Typ
        stloc $tmpSwitchValue5
        ldloc $tmpSwitchValue5
        ldc.i4 0
        bne.un L_check_case_16
        /* nop */
        br L_case_end_15
    L_check_case_16:
        ldloc $tmpSwitchValue5
        ldc.i4 1
        bne.un L_check_case_17
        .line 1184
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression::Op
        ldc.i4 5
        ceq
        brfalse L_else_18
        .line 1184
        ldc.i4 52
        call void Emit(int32 Fct)
        br L_if_end_19
    L_else_18:
        .line 1185
        ldc.i4 53
        call void Emit(int32 Fct)
    L_if_end_19:
        br L_case_end_15
    L_check_case_17:
        ldloc $tmpSwitchValue5
        ldc.i4 2
        bne.un L_case_end_15
        .line 1186
        ldloc _F
        ldfld int32 @block_statement_expression_simpleexpression::Op
        ldc.i4 5
        ceq
        brfalse L_else_20
        .line 1186
        ldc.i4 54
        call void Emit(int32 Fct)
        br L_if_end_21
    L_else_20:
        .line 1187
        ldc.i4 55
        call void Emit(int32 Fct)
    L_if_end_21:
    L_case_end_15:
    L_if_end_9:
    L_while_test_7:
        ldloc $tmpSetLiteral6
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_symset s, int32 val)
        brtrue L_while_6
    
    L_Epilogue:
        ret
    }
}


.line 1229
//================================================================================
// scope: block_statement_assignment (level : 4)

.class @block_statement_assignment
{
    // slink
    .field public class @block_statement _slink

    // parameters
    .field public int32 Ad
    .field public int32 Lv

    // local variables
    .field public int32 f
    .field public valuetype T_item x
    .field public valuetype T_item y

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 1253
//================================================================================
// scope: block_statement_compoundstatement (level : 4)

.class @block_statement_compoundstatement
{
    // slink
    .field public class @block_statement _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 1263
//================================================================================
// scope: block_statement_ifstatement (level : 4)

.class @block_statement_ifstatement
{
    // slink
    .field public class @block_statement _slink

    // local variables
    .field public int32 Lc1
    .field public int32 Lc2
    .field public valuetype T_item x

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 1287
//================================================================================
// scope: block_statement_casestatement_caselabel (level : 5)

.line 0xfeefee

// TYPE record_159 = record;
.class value explicit T_block_statement_casestatement_record_159
{
    // alignment = 4
    .size 8
    
    .field [0] public int32 Val
    .field [4] public int32 Lc
}

.line 0xfeefee

// TYPE array_160 = array [1 .. 100] of valuetype T_block_statement_casestatement_record_159;
.class value explicit T_block_statement_casestatement_array_160
{
    // elem size = 8
    // alignment = 4
    .size 800

    .field [0] public valuetype T_block_statement_casestatement_record_159 elem

    .method public valuetype T_block_statement_casestatement_record_159& ldadr(int32 index)
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

.class @block_statement_casestatement_caselabel
{
    // slink
    .field public class @block_statement_casestatement _slink

    // local variables
    .field public int32 k
    .field public valuetype T_block_conrec Lab

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 1299
//================================================================================
// scope: block_statement_casestatement_onecase (level : 5)

.line 0xfeefee

// TYPE array_162 = array [1 .. 100] of int32;
.class value explicit T_block_statement_casestatement_array_162
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

.class @block_statement_casestatement_onecase
{
    // slink
    .field public class @block_statement_casestatement _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 1280
//================================================================================
// scope: block_statement_casestatement (level : 4)

.class @block_statement_casestatement
{
    // slink
    .field public class @block_statement _slink

    // local variables
    .field public valuetype T_block_statement_casestatement_array_160 Casetab
    .field public valuetype T_block_statement_casestatement_array_162 Exittab
    .field public int32 i
    .field public int32 j
    .field public int32 k
    .field public int32 Lc1
    .field public valuetype T_item x

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 1287

    .method public
    void Caselabel()
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_casestatement_caselabel _F,
            valuetype T_symset $tmpSetLiteral1)
        
        newobj instance void @block_statement_casestatement_caselabel::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement_casestatement @block_statement_casestatement_caselabel::_slink
    
        ldloca $tmpSetLiteral1
        ldc.i4 23
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 26
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 1289
        ldloc _F
        ldfld class @block_statement_casestatement @block_statement_casestatement_caselabel::_slink
        ldfld class @block_statement @block_statement_casestatement::_slink
        ldfld class @block @block_statement::_slink
        ldloc _F
        ldfld class @block_statement_casestatement @block_statement_casestatement_caselabel::_slink
        ldfld class @block_statement @block_statement_casestatement::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral1
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda valuetype T_block_conrec @block_statement_casestatement_caselabel::Lab
        call instance void @block::Constant(valuetype T_symset Fsys, valuetype T_block_conrec& c)
        .line 1290
        ldloc _F
        ldflda valuetype T_block_conrec @block_statement_casestatement_caselabel::Lab
        ldfld int32 T_block_conrec::Tp
        ldloc _F
        ldfld class @block_statement_casestatement @block_statement_casestatement_caselabel::_slink
        ldflda valuetype T_item @block_statement_casestatement::x
        ldfld int32 T_item::Typ
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_1
        .line 1290
        ldc.i4 47
        call void Error(int32 n)
        br L_if_end_2
    L_else_1:
        .line 1291
        ldloc _F
        ldfld class @block_statement_casestatement @block_statement_casestatement_caselabel::_slink
        ldfld int32 @block_statement_casestatement::i
        ldc.i4 100
        ceq
        brfalse L_else_3
        .line 1291
        ldc.i4 6
        call void Fatal(int32 n)
        br L_if_end_4
    L_else_3:
        .line 1292
        ldloc _F
        ldfld class @block_statement_casestatement @block_statement_casestatement_caselabel::_slink
        ldloc _F
        ldfld class @block_statement_casestatement @block_statement_casestatement_caselabel::_slink
        ldfld int32 @block_statement_casestatement::i
        ldc.i4 1
        add
        stfld int32 @block_statement_casestatement::i
        .line 1292
        ldloc _F
        ldc.i4 0
        stfld int32 @block_statement_casestatement_caselabel::k
        .line 1293
        ldloc _F
        ldfld class @block_statement_casestatement @block_statement_casestatement_caselabel::_slink
        ldflda valuetype T_block_statement_casestatement_array_160 @block_statement_casestatement::Casetab
        ldloc _F
        ldfld class @block_statement_casestatement @block_statement_casestatement_caselabel::_slink
        ldfld int32 @block_statement_casestatement::i
        call instance valuetype T_block_statement_casestatement_record_159& T_block_statement_casestatement_array_160::ldadr(int32)
        ldloc _F
        ldflda valuetype T_block_conrec @block_statement_casestatement_caselabel::Lab
        ldfld int32 T_block_conrec::i
        dup
        ldc.i4 -131071
        ldc.i4 131071
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_block_statement_casestatement_record_159::Val
        .line 1293
        ldloc _F
        ldfld class @block_statement_casestatement @block_statement_casestatement_caselabel::_slink
        ldflda valuetype T_block_statement_casestatement_array_160 @block_statement_casestatement::Casetab
        ldloc _F
        ldfld class @block_statement_casestatement @block_statement_casestatement_caselabel::_slink
        ldfld int32 @block_statement_casestatement::i
        call instance valuetype T_block_statement_casestatement_record_159& T_block_statement_casestatement_array_160::ldadr(int32)
        ldsfld int32 _G::Lc
        dup
        ldc.i4 -131071
        ldc.i4 131071
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_block_statement_casestatement_record_159::Lc
        .line 1294
    L_repeat_5:
        .line 1294
        ldloc _F
        ldloc _F
        ldfld int32 @block_statement_casestatement_caselabel::k
        ldc.i4 1
        add
        stfld int32 @block_statement_casestatement_caselabel::k
        ldloc _F
        ldfld class @block_statement_casestatement @block_statement_casestatement_caselabel::_slink
        ldflda valuetype T_block_statement_casestatement_array_160 @block_statement_casestatement::Casetab
        ldloc _F
        ldfld int32 @block_statement_casestatement_caselabel::k
        call instance valuetype T_block_statement_casestatement_record_159& T_block_statement_casestatement_array_160::ldadr(int32)
        ldfld int32 T_block_statement_casestatement_record_159::Val
        ldloc _F
        ldflda valuetype T_block_conrec @block_statement_casestatement_caselabel::Lab
        ldfld int32 T_block_conrec::i
        ceq
        brfalse L_repeat_5
        .line 1295
        ldloc _F
        ldfld int32 @block_statement_casestatement_caselabel::k
        ldloc _F
        ldfld class @block_statement_casestatement @block_statement_casestatement_caselabel::_slink
        ldfld int32 @block_statement_casestatement::i
        clt
        brfalse L_if_end_6
        .line 1295
        ldc.i4 1
        call void Error(int32 n)
    L_if_end_6:
        /* nop */
    L_if_end_4:
    L_if_end_2:
    
    L_Epilogue:
        ret
    }

.line 1299

    .method public
    void Onecase()
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_casestatement_onecase _F,
            valuetype T_symset $tmpSetLiteral1)
        
        newobj instance void @block_statement_casestatement_onecase::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement_casestatement @block_statement_casestatement_onecase::_slink
    
        ldloca $tmpSetLiteral1
        ldc.i4 24
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 43
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 1300
        ldsfld valuetype T_symset _G::Constbegsys
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_symset s, int32 val)
        brfalse L_if_end_1
        .line 1301
        ldloc _F
        ldfld class @block_statement_casestatement @block_statement_casestatement_onecase::_slink
        call instance void @block_statement_casestatement::Caselabel()
        .line 1302
        br L_while_test_3
    L_while_2:
        .line 1303
        call void Insymbol()
        .line 1303
        ldloc _F
        ldfld class @block_statement_casestatement @block_statement_casestatement_onecase::_slink
        call instance void @block_statement_casestatement::Caselabel()
    L_while_test_3:
        ldsfld int32 _G::Sy
        ldc.i4 23
        ceq
        brtrue L_while_2
        .line 1305
        ldsfld int32 _G::Sy
        ldc.i4 26
        ceq
        brfalse L_else_4
        .line 1305
        call void Insymbol()
        br L_if_end_5
    L_else_4:
        .line 1305
        ldc.i4 5
        call void Error(int32 n)
    L_if_end_5:
        .line 1306
        ldloc _F
        ldfld class @block_statement_casestatement @block_statement_casestatement_onecase::_slink
        ldfld class @block_statement @block_statement_casestatement::_slink
        ldfld class @block @block_statement::_slink
        ldloc $tmpSetLiteral1
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc _F
        ldfld class @block_statement_casestatement @block_statement_casestatement_onecase::_slink
        ldfld class @block_statement @block_statement_casestatement::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        call instance void @block::Statement(valuetype T_symset Fsys)
        .line 1307
        ldloc _F
        ldfld class @block_statement_casestatement @block_statement_casestatement_onecase::_slink
        ldloc _F
        ldfld class @block_statement_casestatement @block_statement_casestatement_onecase::_slink
        ldfld int32 @block_statement_casestatement::j
        ldc.i4 1
        add
        stfld int32 @block_statement_casestatement::j
        .line 1307
        ldloc _F
        ldfld class @block_statement_casestatement @block_statement_casestatement_onecase::_slink
        ldflda valuetype T_block_statement_casestatement_array_162 @block_statement_casestatement::Exittab
        ldloc _F
        ldfld class @block_statement_casestatement @block_statement_casestatement_onecase::_slink
        ldfld int32 @block_statement_casestatement::j
        call instance int32& T_block_statement_casestatement_array_162::ldadr(int32)
        ldsfld int32 _G::Lc
        stobj int32
        .line 1307
        ldc.i4 10
        call void Emit(int32 Fct)
    L_if_end_1:
    
    L_Epilogue:
        ret
    }
}


.line 1329
//================================================================================
// scope: block_statement_repeatstatement (level : 4)

.class @block_statement_repeatstatement
{
    // slink
    .field public class @block_statement _slink

    // local variables
    .field public int32 Lc1
    .field public valuetype T_item x

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 1345
//================================================================================
// scope: block_statement_whilestatement (level : 4)

.class @block_statement_whilestatement
{
    // slink
    .field public class @block_statement _slink

    // local variables
    .field public int32 Lc1
    .field public int32 Lc2
    .field public valuetype T_item x

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 1355
//================================================================================
// scope: block_statement_forstatement (level : 4)

.class @block_statement_forstatement
{
    // slink
    .field public class @block_statement _slink

    // local variables
    .field public int32 Cvt
    .field public int32 f
    .field public int32 i
    .field public int32 Lc1
    .field public int32 Lc2
    .field public valuetype T_item x

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 1387
//================================================================================
// scope: block_statement_standproc (level : 4)

.class @block_statement_standproc
{
    // slink
    .field public class @block_statement _slink

    // parameters
    .field public int32 n

    // local variables
    .field public int32 f
    .field public int32 i
    .field public valuetype T_item x
    .field public valuetype T_item y

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 900
//================================================================================
// scope: block_statement (level : 3)

.class @block_statement
{
    // slink
    .field public class @block _slink

    // parameters
    .field public valuetype T_symset Fsys

    // local variables
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 904

    .method public
    void Selector(valuetype T_symset Fsys, valuetype T_item& v)
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_selector _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_symset $tmpSetLiteral2,
            valuetype T_set_62 $tmpSetLiteral3,
            valuetype T_item& pinned $v)
        
        newobj instance void @block_statement_selector::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement @block_statement_selector::_slink
        
        ldloc _F
        ldarg Fsys
        stfld valuetype T_symset @block_statement_selector::Fsys
        
        ldarg v
        stloc $v
        
        ldloc _F
        ldarg v
        stfld valuetype T_item* @block_statement_selector::v
    
        ldloca $tmpSetLiteral1
        ldc.i4 23
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 22
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 21
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 19
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 25
        call instance void T_symset::addValue(int32)
    
    
    L_Entry:
        .line 907
    L_repeat_1:
        .line 907
        ldsfld int32 _G::Sy
        ldc.i4 25
        ceq
        brfalse L_else_2
        .line 908
        call void Insymbol()
        .line 909
        ldsfld int32 _G::Sy
        ldc.i4 36
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_4
        .line 909
        ldc.i4 2
        call void Error(int32 n)
        br L_if_end_5
    L_else_4:
        .line 911
        ldloc _F
        ldfld valuetype T_item* @block_statement_selector::v
        ldfld int32 T_item::Typ
        ldc.i4 6
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_6
        .line 911
        ldc.i4 31
        call void Error(int32 n)
        br L_if_end_7
    L_else_6:
        .line 913
        ldloc _F
        ldsflda valuetype T_array_92 _G::Btab
        ldloc _F
        ldfld valuetype T_item* @block_statement_selector::v
        ldfld int32 T_item::Ref
        call instance valuetype T_record_91& T_array_92::ldadr(int32)
        ldfld int32 T_record_91::Last
        stfld int32 @block_statement_selector::j
        .line 913
        ldsflda valuetype T_array_88 _G::Tab
        ldc.i4 0
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldsfld valuetype T_alfa _G::Id
        stfld valuetype T_alfa T_record_86::Name
        .line 914
        br L_while_test_9
    L_while_8:
        .line 914
        ldloc _F
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_selector::j
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Link
        stfld int32 @block_statement_selector::j
    L_while_test_9:
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_selector::j
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld valuetype T_alfa T_record_86::Name
        call string T_alfa::arrayToString(valuetype T_alfa)
        ldsfld valuetype T_alfa _G::Id
        call string T_alfa::arrayToString(valuetype T_alfa)
        call bool [lpcRuntime]LPC.Helpers::StrcmpNE(string, string)
        brtrue L_while_8
        .line 915
        ldloc _F
        ldfld int32 @block_statement_selector::j
        ldc.i4 0
        ceq
        brfalse L_if_end_10
        .line 915
        ldc.i4 0
        call void Error(int32 n)
    L_if_end_10:
        .line 916
        ldloc _F
        ldfld valuetype T_item* @block_statement_selector::v
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_selector::j
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Typ
        stfld int32 T_item::Typ
        .line 916
        ldloc _F
        ldfld valuetype T_item* @block_statement_selector::v
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_selector::j
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Ref
        stfld int32 T_item::Ref
        .line 917
        ldloc _F
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_selector::j
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Adr
        stfld int32 @block_statement_selector::a
        .line 917
        ldloc _F
        ldfld int32 @block_statement_selector::a
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_11
        .line 917
        ldc.i4 9
        ldloc _F
        ldfld int32 @block_statement_selector::a
        call void Emit1(int32 Fct, int32 b)
    L_if_end_11:
    L_if_end_7:
        .line 919
        call void Insymbol()
    L_if_end_5:
        br L_if_end_3
    L_else_2:
        .line 923
        ldsfld int32 _G::Sy
        ldc.i4 21
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_12
        .line 923
        ldc.i4 11
        call void Error(int32 n)
    L_if_end_12:
        .line 924
    L_repeat_13:
        .line 924
        call void Insymbol()
        .line 925
        ldloc _F
        ldfld class @block_statement @block_statement_selector::_slink
        ldloc _F
        ldfld valuetype T_symset @block_statement_selector::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral1
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda valuetype T_item @block_statement_selector::x
        call instance void @block_statement::Expression(valuetype T_symset Fsys, valuetype T_item& x)
        .line 926
        ldloc _F
        ldfld valuetype T_item* @block_statement_selector::v
        ldfld int32 T_item::Typ
        ldc.i4 5
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_14
        .line 926
        ldc.i4 28
        call void Error(int32 n)
        br L_if_end_15
    L_else_14:
        .line 927
        ldloc _F
        ldloc _F
        ldfld valuetype T_item* @block_statement_selector::v
        ldfld int32 T_item::Ref
        stfld int32 @block_statement_selector::a
        .line 928
        ldsflda valuetype T_array_90 _G::Atab
        ldloc _F
        ldfld int32 @block_statement_selector::a
        call instance valuetype T_record_89& T_array_90::ldadr(int32)
        ldfld int32 T_record_89::Inxtyp
        ldloc _F
        ldflda valuetype T_item @block_statement_selector::x
        ldfld int32 T_item::Typ
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_16
        .line 928
        ldc.i4 26
        call void Error(int32 n)
        br L_if_end_17
    L_else_16:
        .line 929
        ldsflda valuetype T_array_90 _G::Atab
        ldloc _F
        ldfld int32 @block_statement_selector::a
        call instance valuetype T_record_89& T_array_90::ldadr(int32)
        ldfld int32 T_record_89::Elsize
        ldc.i4 1
        ceq
        brfalse L_else_18
        .line 929
        ldc.i4 20
        ldloc _F
        ldfld int32 @block_statement_selector::a
        call void Emit1(int32 Fct, int32 b)
        br L_if_end_19
    L_else_18:
        .line 930
        ldc.i4 21
        ldloc _F
        ldfld int32 @block_statement_selector::a
        call void Emit1(int32 Fct, int32 b)
    L_if_end_19:
    L_if_end_17:
        .line 931
        ldloc _F
        ldfld valuetype T_item* @block_statement_selector::v
        ldsflda valuetype T_array_90 _G::Atab
        ldloc _F
        ldfld int32 @block_statement_selector::a
        call instance valuetype T_record_89& T_array_90::ldadr(int32)
        ldfld int32 T_record_89::Eltyp
        stfld int32 T_item::Typ
        .line 931
        ldloc _F
        ldfld valuetype T_item* @block_statement_selector::v
        ldsflda valuetype T_array_90 _G::Atab
        ldloc _F
        ldfld int32 @block_statement_selector::a
        call instance valuetype T_record_89& T_array_90::ldadr(int32)
        ldfld int32 T_record_89::Elref
        stfld int32 T_item::Ref
    L_if_end_15:
        ldsfld int32 _G::Sy
        ldc.i4 23
        ceq
        ldc.i4.0
        ceq
        brfalse L_repeat_13
        .line 934
        ldsfld int32 _G::Sy
        ldc.i4 22
        ceq
        brfalse L_else_20
        .line 934
        call void Insymbol()
        br L_if_end_21
    L_else_20:
        .line 935
        ldc.i4 12
        call void Error(int32 n)
        .line 935
        ldsfld int32 _G::Sy
        ldc.i4 20
        ceq
        brfalse L_if_end_22
        .line 935
        call void Insymbol()
    L_if_end_22:
    L_if_end_21:
    L_if_end_3:
        ldloc $tmpSetLiteral2
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_symset s, int32 val)
        ldc.i4.0
        ceq
        brfalse L_repeat_1
        .line 939
        ldloc _F
        ldfld class @block_statement @block_statement_selector::_slink
        ldfld class @block @block_statement::_slink
        ldloc _F
        ldfld valuetype T_symset @block_statement_selector::Fsys
        ldloc $tmpSetLiteral3
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldc.i4 6
        call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
    
    L_Epilogue:
        ret
    }

.line 942

    .method public
    void Call(valuetype T_symset Fsys, int32 i)
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_call _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_symset $tmpSetLiteral2,
            valuetype T_symset $tmpSetLiteral3,
            valuetype T_symset $tmpSetLiteral4)
        
        newobj instance void @block_statement_call::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement @block_statement_call::_slink
        
        ldloc _F
        ldarg Fsys
        stfld valuetype T_symset @block_statement_call::Fsys
        
        ldloc _F
        ldarg i
        stfld int32 @block_statement_call::i
    
        ldloca $tmpSetLiteral1
        ldc.i4 23
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 26
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 20
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 21
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 19
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 25
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral3
        ldc.i4 23
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral3
        ldc.i4 26
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral3
        ldc.i4 20
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral4
        ldc.i4 23
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 20
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 945
        ldc.i4 18
        ldloc _F
        ldfld int32 @block_statement_call::i
        call void Emit1(int32 Fct, int32 b)
        .line 946
        ldloc _F
        ldsflda valuetype T_array_92 _G::Btab
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_call::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Ref
        call instance valuetype T_record_91& T_array_92::ldadr(int32)
        ldfld int32 T_record_91::Lastpar
        stfld int32 @block_statement_call::Lastp
        .line 946
        ldloc _F
        ldloc _F
        ldfld int32 @block_statement_call::i
        stfld int32 @block_statement_call::Cp
        .line 947
        ldsfld int32 _G::Sy
        ldc.i4 19
        ceq
        brfalse L_if_end_1
        .line 949
    L_repeat_2:
        .line 949
        call void Insymbol()
        .line 950
        ldloc _F
        ldfld int32 @block_statement_call::Cp
        ldloc _F
        ldfld int32 @block_statement_call::Lastp
        clt
        ldc.i4.0
        ceq
        brfalse L_else_3
        .line 950
        ldc.i4 39
        call void Error(int32 n)
        br L_if_end_4
    L_else_3:
        .line 951
        ldloc _F
        ldloc _F
        ldfld int32 @block_statement_call::Cp
        ldc.i4 1
        add
        stfld int32 @block_statement_call::Cp
        .line 952
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_call::Cp
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld bool T_record_86::Normal
        brfalse L_else_5
        .line 954
        ldloc _F
        ldfld class @block_statement @block_statement_call::_slink
        ldloc _F
        ldfld valuetype T_symset @block_statement_call::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral1
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda valuetype T_item @block_statement_call::x
        call instance void @block_statement::Expression(valuetype T_symset Fsys, valuetype T_item& x)
        .line 955
        ldloc _F
        ldflda valuetype T_item @block_statement_call::x
        ldfld int32 T_item::Typ
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_call::Cp
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Typ
        ceq
        brfalse L_else_7
        .line 957
        ldloc _F
        ldflda valuetype T_item @block_statement_call::x
        ldfld int32 T_item::Ref
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_call::Cp
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Ref
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_9
        .line 957
        ldc.i4 36
        call void Error(int32 n)
        br L_if_end_10
    L_else_9:
        .line 958
        ldloc _F
        ldflda valuetype T_item @block_statement_call::x
        ldfld int32 T_item::Typ
        ldc.i4 5
        ceq
        brfalse L_else_11
        .line 958
        ldc.i4 22
        ldsflda valuetype T_array_90 _G::Atab
        ldloc _F
        ldflda valuetype T_item @block_statement_call::x
        ldfld int32 T_item::Ref
        call instance valuetype T_record_89& T_array_90::ldadr(int32)
        ldfld int32 T_record_89::Size
        call void Emit1(int32 Fct, int32 b)
        br L_if_end_12
    L_else_11:
        .line 959
        ldloc _F
        ldflda valuetype T_item @block_statement_call::x
        ldfld int32 T_item::Typ
        ldc.i4 6
        ceq
        brfalse L_if_end_13
        .line 959
        ldc.i4 22
        ldsflda valuetype T_array_92 _G::Btab
        ldloc _F
        ldflda valuetype T_item @block_statement_call::x
        ldfld int32 T_item::Ref
        call instance valuetype T_record_91& T_array_92::ldadr(int32)
        ldfld int32 T_record_91::Vsize
        call void Emit1(int32 Fct, int32 b)
    L_if_end_13:
    L_if_end_12:
    L_if_end_10:
        br L_if_end_8
    L_else_7:
        .line 962
        ldloc _F
        ldflda valuetype T_item @block_statement_call::x
        ldfld int32 T_item::Typ
        ldc.i4 1
        ceq
        dup
        brfalse L_AND_shortcut_14
        pop
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_call::Cp
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Typ
        ldc.i4 2
        ceq
    L_AND_shortcut_14:
        brfalse L_else_15
        .line 963
        ldc.i4 26
        ldc.i4 0
        call void Emit1(int32 Fct, int32 b)
        br L_if_end_16
    L_else_15:
        .line 964
        ldloc _F
        ldflda valuetype T_item @block_statement_call::x
        ldfld int32 T_item::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_17
        .line 964
        ldc.i4 36
        call void Error(int32 n)
    L_if_end_17:
    L_if_end_16:
    L_if_end_8:
        /* nop */
        br L_if_end_6
    L_else_5:
        .line 967
        ldsfld int32 _G::Sy
        ldc.i4 36
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_18
        .line 967
        ldc.i4 2
        call void Error(int32 n)
        br L_if_end_19
    L_else_18:
        .line 968
        ldloc _F
        ldloc _F
        ldfld class @block_statement @block_statement_call::_slink
        ldfld class @block @block_statement::_slink
        ldsfld valuetype T_alfa _G::Id
        call instance int32 @block::Loc(valuetype T_alfa Id)
        stfld int32 @block_statement_call::k
        .line 968
        call void Insymbol()
        .line 969
        ldloc _F
        ldfld int32 @block_statement_call::k
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_20
        .line 970
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_call::k
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Obj
        ldc.i4 1
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_21
        .line 970
        ldc.i4 37
        call void Error(int32 n)
    L_if_end_21:
        .line 971
        ldloc _F
        ldflda valuetype T_item @block_statement_call::x
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_call::k
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Typ
        stfld int32 T_item::Typ
        .line 971
        ldloc _F
        ldflda valuetype T_item @block_statement_call::x
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_call::k
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Ref
        stfld int32 T_item::Ref
        .line 972
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_call::k
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld bool T_record_86::Normal
        brfalse L_else_22
        .line 973
        ldc.i4 0
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_call::k
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int8 T_record_86::Lev
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_call::k
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Adr
        call void Emit2(int32 Fct, int32 a, int32 b)
        br L_if_end_23
    L_else_22:
        .line 974
        ldc.i4 1
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_call::k
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int8 T_record_86::Lev
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_call::k
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Adr
        call void Emit2(int32 Fct, int32 a, int32 b)
    L_if_end_23:
        .line 975
        ldloc $tmpSetLiteral2
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_symset s, int32 val)
        brfalse L_if_end_24
        .line 976
        ldloc _F
        ldfld class @block_statement @block_statement_call::_slink
        ldloc _F
        ldfld valuetype T_symset @block_statement_call::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral3
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda valuetype T_item @block_statement_call::x
        call instance void @block_statement::Selector(valuetype T_symset Fsys, valuetype T_item& v)
    L_if_end_24:
        .line 977
        ldloc _F
        ldflda valuetype T_item @block_statement_call::x
        ldfld int32 T_item::Typ
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_call::Cp
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Typ
        ceq
        ldc.i4.0
        ceq
        dup
        brtrue L_OR_shortcut_25
        pop
        ldloc _F
        ldflda valuetype T_item @block_statement_call::x
        ldfld int32 T_item::Ref
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_call::Cp
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Ref
        ceq
        ldc.i4.0
        ceq
    L_OR_shortcut_25:
        brfalse L_if_end_26
        .line 978
        ldc.i4 36
        call void Error(int32 n)
    L_if_end_26:
    L_if_end_20:
    L_if_end_19:
    L_if_end_6:
    L_if_end_4:
        .line 983
        ldloc _F
        ldfld class @block_statement @block_statement_call::_slink
        ldfld class @block @block_statement::_slink
        ldloc $tmpSetLiteral4
        ldloc _F
        ldfld valuetype T_symset @block_statement_call::Fsys
        ldc.i4 6
        call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
        ldsfld int32 _G::Sy
        ldc.i4 23
        ceq
        ldc.i4.0
        ceq
        brfalse L_repeat_2
        .line 985
        ldsfld int32 _G::Sy
        ldc.i4 20
        ceq
        brfalse L_else_27
        .line 985
        call void Insymbol()
        br L_if_end_28
    L_else_27:
        .line 985
        ldc.i4 4
        call void Error(int32 n)
    L_if_end_28:
    L_if_end_1:
        .line 987
        ldloc _F
        ldfld int32 @block_statement_call::Cp
        ldloc _F
        ldfld int32 @block_statement_call::Lastp
        clt
        brfalse L_if_end_29
        .line 987
        ldc.i4 39
        call void Error(int32 n)
    L_if_end_29:
        .line 988
        ldc.i4 19
        ldsflda valuetype T_array_92 _G::Btab
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_call::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Ref
        call instance valuetype T_record_91& T_array_92::ldadr(int32)
        ldfld int32 T_record_91::Psize
        ldc.i4 1
        sub
        call void Emit1(int32 Fct, int32 b)
        .line 989
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_call::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int8 T_record_86::Lev
        ldloc _F
        ldfld class @block_statement @block_statement_call::_slink
        ldfld class @block @block_statement::_slink
        ldfld int32 @block::Level
        clt
        brfalse L_if_end_30
        .line 989
        ldc.i4 3
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_call::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int8 T_record_86::Lev
        ldloc _F
        ldfld class @block_statement @block_statement_call::_slink
        ldfld class @block @block_statement::_slink
        ldfld int32 @block::Level
        call void Emit2(int32 Fct, int32 a, int32 b)
    L_if_end_30:
    
    L_Epilogue:
        ret
    }

.line 992

    .method public
    int32 Resulttype(int32 a, int32 b)
    {
        .maxstack 32
    
        .locals init(class @block_statement_resulttype _F)
        
        newobj instance void @block_statement_resulttype::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement @block_statement_resulttype::_slink
        
        ldloc _F
        ldarg a
        stfld int32 @block_statement_resulttype::a
        
        ldloc _F
        ldarg b
        stfld int32 @block_statement_resulttype::b
    
    L_Entry:
        .line 994
        ldloc _F
        ldfld int32 @block_statement_resulttype::a
        ldc.i4 2
        cgt
        dup
        brtrue L_OR_shortcut_1
        pop
        ldloc _F
        ldfld int32 @block_statement_resulttype::b
        ldc.i4 2
        cgt
    L_OR_shortcut_1:
        brfalse L_else_2
        .line 995
        ldc.i4 33
        call void Error(int32 n)
        .line 995
        ldloc _F
        ldc.i4 0
        stfld int32 @block_statement_resulttype::_fnvalue
        br L_if_end_3
    L_else_2:
        .line 997
        ldloc _F
        ldfld int32 @block_statement_resulttype::a
        ldc.i4 0
        ceq
        dup
        brtrue L_OR_shortcut_4
        pop
        ldloc _F
        ldfld int32 @block_statement_resulttype::b
        ldc.i4 0
        ceq
    L_OR_shortcut_4:
        brfalse L_else_5
        .line 997
        ldloc _F
        ldc.i4 0
        stfld int32 @block_statement_resulttype::_fnvalue
        br L_if_end_6
    L_else_5:
        .line 998
        ldloc _F
        ldfld int32 @block_statement_resulttype::a
        ldc.i4 1
        ceq
        brfalse L_else_7
        .line 999
        ldloc _F
        ldfld int32 @block_statement_resulttype::b
        ldc.i4 1
        ceq
        brfalse L_else_9
        .line 999
        ldloc _F
        ldc.i4 1
        stfld int32 @block_statement_resulttype::_fnvalue
        br L_if_end_10
    L_else_9:
        .line 1000
        ldloc _F
        ldc.i4 2
        stfld int32 @block_statement_resulttype::_fnvalue
        .line 1000
        ldc.i4 26
        ldc.i4 1
        call void Emit1(int32 Fct, int32 b)
    L_if_end_10:
        br L_if_end_8
    L_else_7:
        .line 1003
        ldloc _F
        ldc.i4 2
        stfld int32 @block_statement_resulttype::_fnvalue
        .line 1004
        ldloc _F
        ldfld int32 @block_statement_resulttype::b
        ldc.i4 1
        ceq
        brfalse L_if_end_11
        .line 1004
        ldc.i4 26
        ldc.i4 0
        call void Emit1(int32 Fct, int32 b)
    L_if_end_11:
    L_if_end_8:
    L_if_end_6:
    L_if_end_3:
    
    L_Epilogue:
        ldloc _F
        ldfld int32 @block_statement_resulttype::_fnvalue
        ret
    }

.line 1008

    .method public
    void Expression(valuetype T_symset Fsys, valuetype T_item& x)
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_expression _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_symset $tmpSetLiteral2,
            valuetype T_typset $tmpSetLiteral3,
            int32 $tmpSwitchValue4,
            int32 $tmpSwitchValue5,
            valuetype T_item& pinned $x)
        
        newobj instance void @block_statement_expression::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement @block_statement_expression::_slink
        
        ldloc _F
        ldarg Fsys
        stfld valuetype T_symset @block_statement_expression::Fsys
        
        ldarg x
        stloc $x
        
        ldloc _F
        ldarg x
        stfld valuetype T_item* @block_statement_expression::x
    
        ldloca $tmpSetLiteral1
        ldc.i4 13
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 14
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 17
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 18
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 15
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 16
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 13
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 14
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 17
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 18
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 15
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 16
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral3
        ldc.i4 0
        call instance void T_typset::addValue(int32)
        ldloca $tmpSetLiteral3
        ldc.i4 1
        call instance void T_typset::addValue(int32)
        ldloca $tmpSetLiteral3
        ldc.i4 3
        call instance void T_typset::addValue(int32)
        ldloca $tmpSetLiteral3
        ldc.i4 4
        call instance void T_typset::addValue(int32)
    
    L_Entry:
        .line 1194
        ldloc _F
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral1
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression::x
        call instance void @block_statement_expression::Simpleexpression(valuetype T_symset Fsys, valuetype T_item& x)
        .line 1195
        ldloc $tmpSetLiteral2
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_symset s, int32 val)
        brfalse L_if_end_1
        .line 1196
        ldloc _F
        ldsfld int32 _G::Sy
        stfld int32 @block_statement_expression::Op
        .line 1196
        call void Insymbol()
        .line 1197
        ldloc _F
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression::Fsys
        ldloc _F
        ldflda valuetype T_item @block_statement_expression::y
        call instance void @block_statement_expression::Simpleexpression(valuetype T_symset Fsys, valuetype T_item& x)
        .line 1198
        ldloc $tmpSetLiteral3
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression::x
        ldfld int32 T_item::Typ
        call bool _SetContains(valuetype T_typset s, int32 val)
        dup
        brfalse L_AND_shortcut_2
        pop
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression::x
        ldfld int32 T_item::Typ
        ldloc _F
        ldflda valuetype T_item @block_statement_expression::y
        ldfld int32 T_item::Typ
        ceq
    L_AND_shortcut_2:
        brfalse L_else_3
        .line 1200
        ldloc _F
        ldfld int32 @block_statement_expression::Op
        stloc $tmpSwitchValue4
        ldloc $tmpSwitchValue4
        ldc.i4 13
        bne.un L_check_case_6
        .line 1201
        ldc.i4 45
        call void Emit(int32 Fct)
        br L_case_end_5
    L_check_case_6:
        ldloc $tmpSwitchValue4
        ldc.i4 14
        bne.un L_check_case_7
        .line 1202
        ldc.i4 46
        call void Emit(int32 Fct)
        br L_case_end_5
    L_check_case_7:
        ldloc $tmpSwitchValue4
        ldc.i4 17
        bne.un L_check_case_8
        .line 1203
        ldc.i4 47
        call void Emit(int32 Fct)
        br L_case_end_5
    L_check_case_8:
        ldloc $tmpSwitchValue4
        ldc.i4 18
        bne.un L_check_case_9
        .line 1204
        ldc.i4 48
        call void Emit(int32 Fct)
        br L_case_end_5
    L_check_case_9:
        ldloc $tmpSwitchValue4
        ldc.i4 15
        bne.un L_check_case_10
        .line 1205
        ldc.i4 49
        call void Emit(int32 Fct)
        br L_case_end_5
    L_check_case_10:
        ldloc $tmpSwitchValue4
        ldc.i4 16
        bne.un L_case_end_5
        .line 1206
        ldc.i4 50
        call void Emit(int32 Fct)
    L_case_end_5:
        br L_if_end_4
    L_else_3:
        .line 1208
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression::x
        ldfld int32 T_item::Typ
        ldc.i4 1
        ceq
        brfalse L_else_11
        .line 1209
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression::x
        ldc.i4 2
        stfld int32 T_item::Typ
        .line 1209
        ldc.i4 26
        ldc.i4 1
        call void Emit1(int32 Fct, int32 b)
        br L_if_end_12
    L_else_11:
        .line 1211
        ldloc _F
        ldflda valuetype T_item @block_statement_expression::y
        ldfld int32 T_item::Typ
        ldc.i4 1
        ceq
        brfalse L_if_end_13
        .line 1212
        ldloc _F
        ldflda valuetype T_item @block_statement_expression::y
        ldc.i4 2
        stfld int32 T_item::Typ
        .line 1212
        ldc.i4 26
        ldc.i4 0
        call void Emit1(int32 Fct, int32 b)
    L_if_end_13:
    L_if_end_12:
        .line 1214
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression::x
        ldfld int32 T_item::Typ
        ldc.i4 2
        ceq
        dup
        brfalse L_AND_shortcut_14
        pop
        ldloc _F
        ldflda valuetype T_item @block_statement_expression::y
        ldfld int32 T_item::Typ
        ldc.i4 2
        ceq
    L_AND_shortcut_14:
        brfalse L_else_15
        .line 1215
        ldloc _F
        ldfld int32 @block_statement_expression::Op
        stloc $tmpSwitchValue5
        ldloc $tmpSwitchValue5
        ldc.i4 13
        bne.un L_check_case_18
        .line 1216
        ldc.i4 39
        call void Emit(int32 Fct)
        br L_case_end_17
    L_check_case_18:
        ldloc $tmpSwitchValue5
        ldc.i4 14
        bne.un L_check_case_19
        .line 1217
        ldc.i4 40
        call void Emit(int32 Fct)
        br L_case_end_17
    L_check_case_19:
        ldloc $tmpSwitchValue5
        ldc.i4 17
        bne.un L_check_case_20
        .line 1218
        ldc.i4 41
        call void Emit(int32 Fct)
        br L_case_end_17
    L_check_case_20:
        ldloc $tmpSwitchValue5
        ldc.i4 18
        bne.un L_check_case_21
        .line 1219
        ldc.i4 42
        call void Emit(int32 Fct)
        br L_case_end_17
    L_check_case_21:
        ldloc $tmpSwitchValue5
        ldc.i4 15
        bne.un L_check_case_22
        .line 1220
        ldc.i4 43
        call void Emit(int32 Fct)
        br L_case_end_17
    L_check_case_22:
        ldloc $tmpSwitchValue5
        ldc.i4 16
        bne.un L_case_end_17
        .line 1221
        ldc.i4 44
        call void Emit(int32 Fct)
    L_case_end_17:
        br L_if_end_16
    L_else_15:
        .line 1223
        ldc.i4 35
        call void Error(int32 n)
    L_if_end_16:
    L_if_end_4:
        .line 1225
        ldloc _F
        ldfld valuetype T_item* @block_statement_expression::x
        ldc.i4 3
        stfld int32 T_item::Typ
    L_if_end_1:
    
    L_Epilogue:
        ret
    }

.line 1229

    .method public
    void Assignment(int32 Lv, int32 Ad)
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_assignment _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_symset $tmpSetLiteral2)
        
        newobj instance void @block_statement_assignment::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement @block_statement_assignment::_slink
        
        ldloc _F
        ldarg Ad
        stfld int32 @block_statement_assignment::Ad
        
        ldloc _F
        ldarg Lv
        stfld int32 @block_statement_assignment::Lv
    
        ldloca $tmpSetLiteral1
        ldc.i4 21
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 19
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 25
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 27
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 13
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 1232
        ldloc _F
        ldflda valuetype T_item @block_statement_assignment::x
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld class @block_statement @block_statement_assignment::_slink
        ldfld int32 @block_statement::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Typ
        stfld int32 T_item::Typ
        .line 1232
        ldloc _F
        ldflda valuetype T_item @block_statement_assignment::x
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld class @block_statement @block_statement_assignment::_slink
        ldfld int32 @block_statement::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Ref
        stfld int32 T_item::Ref
        .line 1233
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld class @block_statement @block_statement_assignment::_slink
        ldfld int32 @block_statement::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld bool T_record_86::Normal
        brfalse L_else_1
        .line 1233
        ldloc _F
        ldc.i4 0
        stfld int32 @block_statement_assignment::f
        br L_if_end_2
    L_else_1:
        .line 1233
        ldloc _F
        ldc.i4 1
        stfld int32 @block_statement_assignment::f
    L_if_end_2:
        .line 1234
        ldloc _F
        ldfld int32 @block_statement_assignment::f
        ldloc _F
        ldfld int32 @block_statement_assignment::Lv
        ldloc _F
        ldfld int32 @block_statement_assignment::Ad
        call void Emit2(int32 Fct, int32 a, int32 b)
        .line 1235
        ldloc $tmpSetLiteral1
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_symset s, int32 val)
        brfalse L_if_end_3
        .line 1236
        ldloc _F
        ldfld class @block_statement @block_statement_assignment::_slink
        ldloc $tmpSetLiteral2
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc _F
        ldfld class @block_statement @block_statement_assignment::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda valuetype T_item @block_statement_assignment::x
        call instance void @block_statement::Selector(valuetype T_symset Fsys, valuetype T_item& v)
    L_if_end_3:
        .line 1237
        ldsfld int32 _G::Sy
        ldc.i4 27
        ceq
        brfalse L_else_4
        .line 1237
        call void Insymbol()
        br L_if_end_5
    L_else_4:
        .line 1238
        ldc.i4 51
        call void Error(int32 n)
        .line 1238
        ldsfld int32 _G::Sy
        ldc.i4 13
        ceq
        brfalse L_if_end_6
        .line 1238
        call void Insymbol()
    L_if_end_6:
    L_if_end_5:
        .line 1240
        ldloc _F
        ldfld class @block_statement @block_statement_assignment::_slink
        ldloc _F
        ldfld class @block_statement @block_statement_assignment::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        ldloc _F
        ldflda valuetype T_item @block_statement_assignment::y
        call instance void @block_statement::Expression(valuetype T_symset Fsys, valuetype T_item& x)
        .line 1241
        ldloc _F
        ldflda valuetype T_item @block_statement_assignment::x
        ldfld int32 T_item::Typ
        ldloc _F
        ldflda valuetype T_item @block_statement_assignment::y
        ldfld int32 T_item::Typ
        ceq
        brfalse L_else_7
        .line 1242
        ldsfld valuetype T_typset _G::Stantyps
        ldloc _F
        ldflda valuetype T_item @block_statement_assignment::x
        ldfld int32 T_item::Typ
        call bool _SetContains(valuetype T_typset s, int32 val)
        brfalse L_else_9
        .line 1242
        ldc.i4 38
        call void Emit(int32 Fct)
        br L_if_end_10
    L_else_9:
        .line 1243
        ldloc _F
        ldflda valuetype T_item @block_statement_assignment::x
        ldfld int32 T_item::Ref
        ldloc _F
        ldflda valuetype T_item @block_statement_assignment::y
        ldfld int32 T_item::Ref
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_11
        .line 1243
        ldc.i4 46
        call void Error(int32 n)
        br L_if_end_12
    L_else_11:
        .line 1244
        ldloc _F
        ldflda valuetype T_item @block_statement_assignment::x
        ldfld int32 T_item::Typ
        ldc.i4 5
        ceq
        brfalse L_else_13
        .line 1244
        ldc.i4 23
        ldsflda valuetype T_array_90 _G::Atab
        ldloc _F
        ldflda valuetype T_item @block_statement_assignment::x
        ldfld int32 T_item::Ref
        call instance valuetype T_record_89& T_array_90::ldadr(int32)
        ldfld int32 T_record_89::Size
        call void Emit1(int32 Fct, int32 b)
        br L_if_end_14
    L_else_13:
        .line 1245
        ldc.i4 23
        ldsflda valuetype T_array_92 _G::Btab
        ldloc _F
        ldflda valuetype T_item @block_statement_assignment::x
        ldfld int32 T_item::Ref
        call instance valuetype T_record_91& T_array_92::ldadr(int32)
        ldfld int32 T_record_91::Vsize
        call void Emit1(int32 Fct, int32 b)
    L_if_end_14:
    L_if_end_12:
    L_if_end_10:
        br L_if_end_8
    L_else_7:
        .line 1247
        ldloc _F
        ldflda valuetype T_item @block_statement_assignment::x
        ldfld int32 T_item::Typ
        ldc.i4 2
        ceq
        dup
        brfalse L_AND_shortcut_15
        pop
        ldloc _F
        ldflda valuetype T_item @block_statement_assignment::y
        ldfld int32 T_item::Typ
        ldc.i4 1
        ceq
    L_AND_shortcut_15:
        brfalse L_else_16
        .line 1248
        ldc.i4 26
        ldc.i4 0
        call void Emit1(int32 Fct, int32 b)
        .line 1248
        ldc.i4 38
        call void Emit(int32 Fct)
        br L_if_end_17
    L_else_16:
        .line 1250
        ldloc _F
        ldflda valuetype T_item @block_statement_assignment::x
        ldfld int32 T_item::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        dup
        brfalse L_AND_shortcut_18
        pop
        ldloc _F
        ldflda valuetype T_item @block_statement_assignment::y
        ldfld int32 T_item::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
    L_AND_shortcut_18:
        brfalse L_if_end_19
        .line 1250
        ldc.i4 46
        call void Error(int32 n)
    L_if_end_19:
    L_if_end_17:
    L_if_end_8:
    
    L_Epilogue:
        ret
    }

.line 1253

    .method public
    void Compoundstatement()
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_compoundstatement _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_symset $tmpSetLiteral2,
            valuetype T_symset $tmpSetLiteral3)
        
        newobj instance void @block_statement_compoundstatement::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement @block_statement_compoundstatement::_slink
    
        ldloca $tmpSetLiteral1
        ldc.i4 24
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 43
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 24
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 43
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral3
        ldc.i4 24
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 1254
        call void Insymbol()
        .line 1255
        ldloc _F
        ldfld class @block_statement @block_statement_compoundstatement::_slink
        ldfld class @block @block_statement::_slink
        ldloc $tmpSetLiteral1
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc _F
        ldfld class @block_statement @block_statement_compoundstatement::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        call instance void @block::Statement(valuetype T_symset Fsys)
        .line 1256
        br L_while_test_2
    L_while_1:
        .line 1257
        ldsfld int32 _G::Sy
        ldc.i4 24
        ceq
        brfalse L_else_3
        .line 1257
        call void Insymbol()
        br L_if_end_4
    L_else_3:
        .line 1257
        ldc.i4 14
        call void Error(int32 n)
    L_if_end_4:
        .line 1258
        ldloc _F
        ldfld class @block_statement @block_statement_compoundstatement::_slink
        ldfld class @block @block_statement::_slink
        ldloc $tmpSetLiteral2
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc _F
        ldfld class @block_statement @block_statement_compoundstatement::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        call instance void @block::Statement(valuetype T_symset Fsys)
    L_while_test_2:
        ldloc $tmpSetLiteral3
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldsfld valuetype T_symset _G::Statbegsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_set_62 s, int32 val)
        brtrue L_while_1
        .line 1260
        ldsfld int32 _G::Sy
        ldc.i4 43
        ceq
        brfalse L_else_5
        .line 1260
        call void Insymbol()
        br L_if_end_6
    L_else_5:
        .line 1260
        ldc.i4 57
        call void Error(int32 n)
    L_if_end_6:
    
    L_Epilogue:
        ret
    }

.line 1263

    .method public
    void Ifstatement()
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_ifstatement _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_typset $tmpSetLiteral2,
            valuetype T_symset $tmpSetLiteral3)
        
        newobj instance void @block_statement_ifstatement::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement @block_statement_ifstatement::_slink
    
        ldloca $tmpSetLiteral1
        ldc.i4 50
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 47
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 3
        call instance void T_typset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 0
        call instance void T_typset::addValue(int32)
    
        ldloca $tmpSetLiteral3
        ldc.i4 44
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 1265
        call void Insymbol()
        .line 1266
        ldloc _F
        ldfld class @block_statement @block_statement_ifstatement::_slink
        ldloc _F
        ldfld class @block_statement @block_statement_ifstatement::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral1
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda valuetype T_item @block_statement_ifstatement::x
        call instance void @block_statement::Expression(valuetype T_symset Fsys, valuetype T_item& x)
        .line 1267
        ldloc $tmpSetLiteral2
        ldloc _F
        ldflda valuetype T_item @block_statement_ifstatement::x
        ldfld int32 T_item::Typ
        call bool _SetContains(valuetype T_typset s, int32 val)
        ldc.i4.0
        ceq
        brfalse L_if_end_1
        .line 1267
        ldc.i4 17
        call void Error(int32 n)
    L_if_end_1:
        .line 1268
        ldloc _F
        ldsfld int32 _G::Lc
        stfld int32 @block_statement_ifstatement::Lc1
        .line 1268
        ldc.i4 11
        call void Emit(int32 Fct)
        .line 1269
        ldsfld int32 _G::Sy
        ldc.i4 50
        ceq
        brfalse L_else_2
        .line 1269
        call void Insymbol()
        br L_if_end_3
    L_else_2:
        .line 1270
        ldc.i4 52
        call void Error(int32 n)
        .line 1270
        ldsfld int32 _G::Sy
        ldc.i4 47
        ceq
        brfalse L_if_end_4
        .line 1270
        call void Insymbol()
    L_if_end_4:
    L_if_end_3:
        .line 1272
        ldloc _F
        ldfld class @block_statement @block_statement_ifstatement::_slink
        ldfld class @block @block_statement::_slink
        ldloc _F
        ldfld class @block_statement @block_statement_ifstatement::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral3
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        call instance void @block::Statement(valuetype T_symset Fsys)
        .line 1273
        ldsfld int32 _G::Sy
        ldc.i4 44
        ceq
        brfalse L_else_5
        .line 1274
        call void Insymbol()
        .line 1274
        ldloc _F
        ldsfld int32 _G::Lc
        stfld int32 @block_statement_ifstatement::Lc2
        .line 1274
        ldc.i4 10
        call void Emit(int32 Fct)
        .line 1275
        ldsflda valuetype T_array_97 _G::Code
        ldloc _F
        ldfld int32 @block_statement_ifstatement::Lc1
        call instance valuetype T_order& T_array_97::ldadr(int32)
        ldsfld int32 _G::Lc
        dup
        ldc.i4 -2147483647
        ldc.i4 2147483647
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_order::y
        .line 1275
        ldloc _F
        ldfld class @block_statement @block_statement_ifstatement::_slink
        ldfld class @block @block_statement::_slink
        ldloc _F
        ldfld class @block_statement @block_statement_ifstatement::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call instance void @block::Statement(valuetype T_symset Fsys)
        .line 1275
        ldsflda valuetype T_array_97 _G::Code
        ldloc _F
        ldfld int32 @block_statement_ifstatement::Lc2
        call instance valuetype T_order& T_array_97::ldadr(int32)
        ldsfld int32 _G::Lc
        dup
        ldc.i4 -2147483647
        ldc.i4 2147483647
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_order::y
        br L_if_end_6
    L_else_5:
        .line 1277
        ldsflda valuetype T_array_97 _G::Code
        ldloc _F
        ldfld int32 @block_statement_ifstatement::Lc1
        call instance valuetype T_order& T_array_97::ldadr(int32)
        ldsfld int32 _G::Lc
        dup
        ldc.i4 -2147483647
        ldc.i4 2147483647
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_order::y
    L_if_end_6:
    
    L_Epilogue:
        ret
    }

.line 1280

    .method public
    void Casestatement()
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_casestatement _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_typset $tmpSetLiteral2,
            int32 $tmpEndValue3,
            int32 $tmpIndex4,
            int32 $tmpIndex5,
            int32 $tmpEndValue6,
            int32 $tmpIndex7,
            int32 $tmpIndex8)
        
        newobj instance void @block_statement_casestatement::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement @block_statement_casestatement::_slink
    
        ldloca $tmpSetLiteral1
        ldc.i4 46
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 23
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 26
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 1
        call instance void T_typset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 3
        call instance void T_typset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 4
        call instance void T_typset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 0
        call instance void T_typset::addValue(int32)
    
    L_Entry:
        .line 1311
        call void Insymbol()
        .line 1311
        ldloc _F
        ldc.i4 0
        stfld int32 @block_statement_casestatement::i
        .line 1311
        ldloc _F
        ldc.i4 0
        stfld int32 @block_statement_casestatement::j
        .line 1312
        ldloc _F
        ldfld class @block_statement @block_statement_casestatement::_slink
        ldloc _F
        ldfld class @block_statement @block_statement_casestatement::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral1
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda valuetype T_item @block_statement_casestatement::x
        call instance void @block_statement::Expression(valuetype T_symset Fsys, valuetype T_item& x)
        .line 1313
        ldloc $tmpSetLiteral2
        ldloc _F
        ldflda valuetype T_item @block_statement_casestatement::x
        ldfld int32 T_item::Typ
        call bool _SetContains(valuetype T_typset s, int32 val)
        ldc.i4.0
        ceq
        brfalse L_if_end_1
        .line 1313
        ldc.i4 23
        call void Error(int32 n)
    L_if_end_1:
        .line 1314
        ldloc _F
        ldsfld int32 _G::Lc
        stfld int32 @block_statement_casestatement::Lc1
        .line 1314
        ldc.i4 12
        call void Emit(int32 Fct)
        .line 1315
        ldsfld int32 _G::Sy
        ldc.i4 46
        ceq
        brfalse L_else_2
        .line 1315
        call void Insymbol()
        br L_if_end_3
    L_else_2:
        .line 1315
        ldc.i4 8
        call void Error(int32 n)
    L_if_end_3:
        .line 1316
        ldloc _F
        call instance void @block_statement_casestatement::Onecase()
        .line 1317
        br L_while_test_5
    L_while_4:
        .line 1318
        call void Insymbol()
        .line 1318
        ldloc _F
        call instance void @block_statement_casestatement::Onecase()
    L_while_test_5:
        ldsfld int32 _G::Sy
        ldc.i4 24
        ceq
        brtrue L_while_4
        .line 1320
        ldsflda valuetype T_array_97 _G::Code
        ldloc _F
        ldfld int32 @block_statement_casestatement::Lc1
        call instance valuetype T_order& T_array_97::ldadr(int32)
        ldsfld int32 _G::Lc
        dup
        ldc.i4 -2147483647
        ldc.i4 2147483647
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_order::y
        .line 1321
        ldloc _F
        ldfld int32 @block_statement_casestatement::i
        stloc $tmpEndValue3
        ldc.i4 1
        dup
        ldloc $tmpEndValue3
        bgt L_for_end_7
        stloc $tmpIndex4
        ldloc _F
        ldloc $tmpIndex4
        stfld int32 @block_statement_casestatement::k
    L_for_loop_6:
        .line 1322
        ldc.i4 13
        ldloc _F
        ldflda valuetype T_block_statement_casestatement_array_160 @block_statement_casestatement::Casetab
        ldloc _F
        ldfld int32 @block_statement_casestatement::k
        call instance valuetype T_block_statement_casestatement_record_159& T_block_statement_casestatement_array_160::ldadr(int32)
        ldfld int32 T_block_statement_casestatement_record_159::Val
        call void Emit1(int32 Fct, int32 b)
        .line 1322
        ldc.i4 13
        ldloc _F
        ldflda valuetype T_block_statement_casestatement_array_160 @block_statement_casestatement::Casetab
        ldloc _F
        ldfld int32 @block_statement_casestatement::k
        call instance valuetype T_block_statement_casestatement_record_159& T_block_statement_casestatement_array_160::ldadr(int32)
        ldfld int32 T_block_statement_casestatement_record_159::Lc
        call void Emit1(int32 Fct, int32 b)
        ldloc _F
        ldfld int32 @block_statement_casestatement::k
        dup
        ldloc $tmpEndValue3
        beq L_for_end_7
        ldc.i4.1
        add
        stloc $tmpIndex5
        ldloc _F
        ldloc $tmpIndex5
        stfld int32 @block_statement_casestatement::k
        br L_for_loop_6
    L_for_end_7:
        pop
        .line 1324
        ldc.i4 10
        ldc.i4 0
        call void Emit1(int32 Fct, int32 b)
        .line 1325
        ldloc _F
        ldfld int32 @block_statement_casestatement::j
        stloc $tmpEndValue6
        ldc.i4 1
        dup
        ldloc $tmpEndValue6
        bgt L_for_end_9
        stloc $tmpIndex7
        ldloc _F
        ldloc $tmpIndex7
        stfld int32 @block_statement_casestatement::k
    L_for_loop_8:
        .line 1325
        ldsflda valuetype T_array_97 _G::Code
        ldloc _F
        ldflda valuetype T_block_statement_casestatement_array_162 @block_statement_casestatement::Exittab
        ldloc _F
        ldfld int32 @block_statement_casestatement::k
        call instance int32& T_block_statement_casestatement_array_162::ldadr(int32)
        ldobj int32
        call instance valuetype T_order& T_array_97::ldadr(int32)
        ldsfld int32 _G::Lc
        dup
        ldc.i4 -2147483647
        ldc.i4 2147483647
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_order::y
        ldloc _F
        ldfld int32 @block_statement_casestatement::k
        dup
        ldloc $tmpEndValue6
        beq L_for_end_9
        ldc.i4.1
        add
        stloc $tmpIndex8
        ldloc _F
        ldloc $tmpIndex8
        stfld int32 @block_statement_casestatement::k
        br L_for_loop_8
    L_for_end_9:
        pop
        .line 1326
        ldsfld int32 _G::Sy
        ldc.i4 43
        ceq
        brfalse L_else_10
        .line 1326
        call void Insymbol()
        br L_if_end_11
    L_else_10:
        .line 1326
        ldc.i4 57
        call void Error(int32 n)
    L_if_end_11:
    
    L_Epilogue:
        ret
    }

.line 1329

    .method public
    void Repeatstatement()
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_repeatstatement _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_symset $tmpSetLiteral2,
            valuetype T_symset $tmpSetLiteral3,
            valuetype T_typset $tmpSetLiteral4)
        
        newobj instance void @block_statement_repeatstatement::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement @block_statement_repeatstatement::_slink
    
        ldloca $tmpSetLiteral1
        ldc.i4 24
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 45
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 24
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 45
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral3
        ldc.i4 24
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral4
        ldc.i4 3
        call instance void T_typset::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 0
        call instance void T_typset::addValue(int32)
    
    L_Entry:
        .line 1331
        ldloc _F
        ldsfld int32 _G::Lc
        stfld int32 @block_statement_repeatstatement::Lc1
        .line 1332
        call void Insymbol()
        .line 1332
        ldloc _F
        ldfld class @block_statement @block_statement_repeatstatement::_slink
        ldfld class @block @block_statement::_slink
        ldloc $tmpSetLiteral1
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc _F
        ldfld class @block_statement @block_statement_repeatstatement::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        call instance void @block::Statement(valuetype T_symset Fsys)
        .line 1333
        br L_while_test_2
    L_while_1:
        .line 1334
        ldsfld int32 _G::Sy
        ldc.i4 24
        ceq
        brfalse L_else_3
        .line 1334
        call void Insymbol()
        br L_if_end_4
    L_else_3:
        .line 1334
        ldc.i4 14
        call void Error(int32 n)
    L_if_end_4:
        .line 1335
        ldloc _F
        ldfld class @block_statement @block_statement_repeatstatement::_slink
        ldfld class @block @block_statement::_slink
        ldloc $tmpSetLiteral2
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc _F
        ldfld class @block_statement @block_statement_repeatstatement::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        call instance void @block::Statement(valuetype T_symset Fsys)
    L_while_test_2:
        ldloc $tmpSetLiteral3
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldsfld valuetype T_symset _G::Statbegsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_set_62 s, int32 val)
        brtrue L_while_1
        .line 1337
        ldsfld int32 _G::Sy
        ldc.i4 45
        ceq
        brfalse L_else_5
        .line 1338
        call void Insymbol()
        .line 1338
        ldloc _F
        ldfld class @block_statement @block_statement_repeatstatement::_slink
        ldloc _F
        ldfld class @block_statement @block_statement_repeatstatement::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        ldloc _F
        ldflda valuetype T_item @block_statement_repeatstatement::x
        call instance void @block_statement::Expression(valuetype T_symset Fsys, valuetype T_item& x)
        .line 1339
        ldloc $tmpSetLiteral4
        ldloc _F
        ldflda valuetype T_item @block_statement_repeatstatement::x
        ldfld int32 T_item::Typ
        call bool _SetContains(valuetype T_typset s, int32 val)
        ldc.i4.0
        ceq
        brfalse L_if_end_7
        .line 1339
        ldc.i4 17
        call void Error(int32 n)
    L_if_end_7:
        .line 1340
        ldc.i4 11
        ldloc _F
        ldfld int32 @block_statement_repeatstatement::Lc1
        call void Emit1(int32 Fct, int32 b)
        br L_if_end_6
    L_else_5:
        .line 1342
        ldc.i4 53
        call void Error(int32 n)
    L_if_end_6:
    
    L_Epilogue:
        ret
    }

.line 1345

    .method public
    void Whilestatement()
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_whilestatement _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_typset $tmpSetLiteral2)
        
        newobj instance void @block_statement_whilestatement::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement @block_statement_whilestatement::_slink
    
        ldloca $tmpSetLiteral1
        ldc.i4 47
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 3
        call instance void T_typset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 0
        call instance void T_typset::addValue(int32)
    
    L_Entry:
        .line 1347
        call void Insymbol()
        .line 1347
        ldloc _F
        ldsfld int32 _G::Lc
        stfld int32 @block_statement_whilestatement::Lc1
        .line 1348
        ldloc _F
        ldfld class @block_statement @block_statement_whilestatement::_slink
        ldloc _F
        ldfld class @block_statement @block_statement_whilestatement::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral1
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda valuetype T_item @block_statement_whilestatement::x
        call instance void @block_statement::Expression(valuetype T_symset Fsys, valuetype T_item& x)
        .line 1349
        ldloc $tmpSetLiteral2
        ldloc _F
        ldflda valuetype T_item @block_statement_whilestatement::x
        ldfld int32 T_item::Typ
        call bool _SetContains(valuetype T_typset s, int32 val)
        ldc.i4.0
        ceq
        brfalse L_if_end_1
        .line 1349
        ldc.i4 17
        call void Error(int32 n)
    L_if_end_1:
        .line 1350
        ldloc _F
        ldsfld int32 _G::Lc
        stfld int32 @block_statement_whilestatement::Lc2
        .line 1350
        ldc.i4 11
        call void Emit(int32 Fct)
        .line 1351
        ldsfld int32 _G::Sy
        ldc.i4 47
        ceq
        brfalse L_else_2
        .line 1351
        call void Insymbol()
        br L_if_end_3
    L_else_2:
        .line 1351
        ldc.i4 54
        call void Error(int32 n)
    L_if_end_3:
        .line 1352
        ldloc _F
        ldfld class @block_statement @block_statement_whilestatement::_slink
        ldfld class @block @block_statement::_slink
        ldloc _F
        ldfld class @block_statement @block_statement_whilestatement::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call instance void @block::Statement(valuetype T_symset Fsys)
        .line 1352
        ldc.i4 10
        ldloc _F
        ldfld int32 @block_statement_whilestatement::Lc1
        call void Emit1(int32 Fct, int32 b)
        .line 1352
        ldsflda valuetype T_array_97 _G::Code
        ldloc _F
        ldfld int32 @block_statement_whilestatement::Lc2
        call instance valuetype T_order& T_array_97::ldadr(int32)
        ldsfld int32 _G::Lc
        dup
        ldc.i4 -2147483647
        ldc.i4 2147483647
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_order::y
    
    L_Epilogue:
        ret
    }

.line 1355

    .method public
    void Forstatement()
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_forstatement _F,
            valuetype T_typset $tmpSetLiteral1,
            valuetype T_symset $tmpSetLiteral2,
            valuetype T_symset $tmpSetLiteral3,
            valuetype T_symset $tmpSetLiteral4,
            valuetype T_symset $tmpSetLiteral5,
            valuetype T_symset $tmpSetLiteral6,
            valuetype T_symset $tmpSetLiteral7)
        
        newobj instance void @block_statement_forstatement::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement @block_statement_forstatement::_slink
    
        ldloca $tmpSetLiteral1
        ldc.i4 0
        call instance void T_typset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 1
        call instance void T_typset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 3
        call instance void T_typset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 4
        call instance void T_typset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 27
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 48
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 49
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 47
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral3
        ldc.i4 48
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral3
        ldc.i4 49
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral3
        ldc.i4 47
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral4
        ldc.i4 48
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 49
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 47
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral5
        ldc.i4 48
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral5
        ldc.i4 49
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral6
        ldc.i4 47
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral7
        ldc.i4 47
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 1358
        call void Insymbol()
        .line 1359
        ldsfld int32 _G::Sy
        ldc.i4 36
        ceq
        brfalse L_else_1
        .line 1360
        ldloc _F
        ldloc _F
        ldfld class @block_statement @block_statement_forstatement::_slink
        ldfld class @block @block_statement::_slink
        ldsfld valuetype T_alfa _G::Id
        call instance int32 @block::Loc(valuetype T_alfa Id)
        stfld int32 @block_statement_forstatement::i
        .line 1360
        call void Insymbol()
        .line 1361
        ldloc _F
        ldfld int32 @block_statement_forstatement::i
        ldc.i4 0
        ceq
        brfalse L_else_3
        .line 1361
        ldloc _F
        ldc.i4 1
        stfld int32 @block_statement_forstatement::Cvt
        br L_if_end_4
    L_else_3:
        .line 1362
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_forstatement::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Obj
        ldc.i4 1
        ceq
        brfalse L_else_5
        .line 1363
        ldloc _F
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_forstatement::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Typ
        stfld int32 @block_statement_forstatement::Cvt
        .line 1364
        ldc.i4 0
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_forstatement::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int8 T_record_86::Lev
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_forstatement::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Adr
        call void Emit2(int32 Fct, int32 a, int32 b)
        .line 1365
        ldloc $tmpSetLiteral1
        ldloc _F
        ldfld int32 @block_statement_forstatement::Cvt
        call bool _SetContains(valuetype T_typset s, int32 val)
        ldc.i4.0
        ceq
        brfalse L_if_end_7
        .line 1366
        ldc.i4 18
        call void Error(int32 n)
    L_if_end_7:
        br L_if_end_6
    L_else_5:
        .line 1368
        ldc.i4 37
        call void Error(int32 n)
        .line 1368
        ldloc _F
        ldc.i4 1
        stfld int32 @block_statement_forstatement::Cvt
    L_if_end_6:
    L_if_end_4:
        br L_if_end_2
    L_else_1:
        .line 1370
        ldloc _F
        ldfld class @block_statement @block_statement_forstatement::_slink
        ldfld class @block @block_statement::_slink
        ldloc $tmpSetLiteral2
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc _F
        ldfld class @block_statement @block_statement_forstatement::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldc.i4 2
        call instance void @block::Skip(valuetype T_symset Fsys, int32 n)
    L_if_end_2:
        .line 1371
        ldsfld int32 _G::Sy
        ldc.i4 27
        ceq
        brfalse L_else_8
        .line 1372
        call void Insymbol()
        .line 1372
        ldloc _F
        ldfld class @block_statement @block_statement_forstatement::_slink
        ldloc $tmpSetLiteral3
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc _F
        ldfld class @block_statement @block_statement_forstatement::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda valuetype T_item @block_statement_forstatement::x
        call instance void @block_statement::Expression(valuetype T_symset Fsys, valuetype T_item& x)
        .line 1373
        ldloc _F
        ldflda valuetype T_item @block_statement_forstatement::x
        ldfld int32 T_item::Typ
        ldloc _F
        ldfld int32 @block_statement_forstatement::Cvt
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_10
        .line 1373
        ldc.i4 19
        call void Error(int32 n)
    L_if_end_10:
        /* nop */
        br L_if_end_9
    L_else_8:
        .line 1374
        ldloc _F
        ldfld class @block_statement @block_statement_forstatement::_slink
        ldfld class @block @block_statement::_slink
        ldloc $tmpSetLiteral4
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc _F
        ldfld class @block_statement @block_statement_forstatement::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldc.i4 51
        call instance void @block::Skip(valuetype T_symset Fsys, int32 n)
    L_if_end_9:
        .line 1375
        ldloc _F
        ldc.i4 14
        stfld int32 @block_statement_forstatement::f
        .line 1376
        ldloc $tmpSetLiteral5
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_symset s, int32 val)
        brfalse L_else_11
        .line 1377
        ldsfld int32 _G::Sy
        ldc.i4 49
        ceq
        brfalse L_if_end_13
        .line 1377
        ldloc _F
        ldc.i4 16
        stfld int32 @block_statement_forstatement::f
    L_if_end_13:
        .line 1378
        call void Insymbol()
        .line 1378
        ldloc _F
        ldfld class @block_statement @block_statement_forstatement::_slink
        ldloc $tmpSetLiteral6
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc _F
        ldfld class @block_statement @block_statement_forstatement::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda valuetype T_item @block_statement_forstatement::x
        call instance void @block_statement::Expression(valuetype T_symset Fsys, valuetype T_item& x)
        .line 1379
        ldloc _F
        ldflda valuetype T_item @block_statement_forstatement::x
        ldfld int32 T_item::Typ
        ldloc _F
        ldfld int32 @block_statement_forstatement::Cvt
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_14
        .line 1379
        ldc.i4 19
        call void Error(int32 n)
    L_if_end_14:
        br L_if_end_12
    L_else_11:
        .line 1380
        ldloc _F
        ldfld class @block_statement @block_statement_forstatement::_slink
        ldfld class @block @block_statement::_slink
        ldloc $tmpSetLiteral7
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc _F
        ldfld class @block_statement @block_statement_forstatement::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldc.i4 55
        call instance void @block::Skip(valuetype T_symset Fsys, int32 n)
    L_if_end_12:
        .line 1381
        ldloc _F
        ldsfld int32 _G::Lc
        stfld int32 @block_statement_forstatement::Lc1
        .line 1381
        ldloc _F
        ldfld int32 @block_statement_forstatement::f
        call void Emit(int32 Fct)
        .line 1382
        ldsfld int32 _G::Sy
        ldc.i4 47
        ceq
        brfalse L_else_15
        .line 1382
        call void Insymbol()
        br L_if_end_16
    L_else_15:
        .line 1382
        ldc.i4 54
        call void Error(int32 n)
    L_if_end_16:
        .line 1383
        ldloc _F
        ldsfld int32 _G::Lc
        stfld int32 @block_statement_forstatement::Lc2
        .line 1383
        ldloc _F
        ldfld class @block_statement @block_statement_forstatement::_slink
        ldfld class @block @block_statement::_slink
        ldloc _F
        ldfld class @block_statement @block_statement_forstatement::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call instance void @block::Statement(valuetype T_symset Fsys)
        .line 1384
        ldloc _F
        ldfld int32 @block_statement_forstatement::f
        ldc.i4 1
        add
        ldloc _F
        ldfld int32 @block_statement_forstatement::Lc2
        call void Emit1(int32 Fct, int32 b)
        .line 1384
        ldsflda valuetype T_array_97 _G::Code
        ldloc _F
        ldfld int32 @block_statement_forstatement::Lc1
        call instance valuetype T_order& T_array_97::ldadr(int32)
        ldsfld int32 _G::Lc
        dup
        ldc.i4 -2147483647
        ldc.i4 2147483647
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_order::y
    
    L_Epilogue:
        ret
    }

.line 1387

    .method public
    void Standproc(int32 n)
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_standproc _F,
            int32 $tmpSwitchValue1,
            valuetype T_symset $tmpSetLiteral2,
            valuetype T_symset $tmpSetLiteral3,
            valuetype T_typset $tmpSetLiteral4,
            valuetype T_symset $tmpSetLiteral5,
            valuetype T_symset $tmpSetLiteral6,
            valuetype T_symset $tmpSetLiteral7,
            valuetype T_symset $tmpSetLiteral8)
        
        newobj instance void @block_statement_standproc::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement @block_statement_standproc::_slink
        
        ldloc _F
        ldarg n
        stfld int32 @block_statement_standproc::n
    
        ldloca $tmpSetLiteral2
        ldc.i4 21
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 19
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 25
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral3
        ldc.i4 23
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral3
        ldc.i4 20
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral4
        ldc.i4 1
        call instance void T_typset::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 2
        call instance void T_typset::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 4
        call instance void T_typset::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 0
        call instance void T_typset::addValue(int32)
    
        ldloca $tmpSetLiteral5
        ldc.i4 23
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral5
        ldc.i4 20
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral6
        ldc.i4 23
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral6
        ldc.i4 26
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral6
        ldc.i4 20
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral7
        ldc.i4 23
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral7
        ldc.i4 26
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral7
        ldc.i4 20
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral8
        ldc.i4 23
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral8
        ldc.i4 20
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 1391
        ldloc _F
        ldfld int32 @block_statement_standproc::n
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 1
        beq L_case_3
        ldloc $tmpSwitchValue1
        ldc.i4 2
        beq L_case_3
        br L_check_case_2
    L_case_3:
        .line 1393
        ldsfld bool _G::Iflag
        ldc.i4.0
        ceq
        brfalse L_if_end_4
        .line 1394
        ldc.i4 20
        call void Error(int32 n)
        .line 1394
        ldc.i4 1 // (true)
        stsfld bool _G::Iflag
    L_if_end_4:
        .line 1396
        ldsfld int32 _G::Sy
        ldc.i4 19
        ceq
        brfalse L_if_end_5
        .line 1398
    L_repeat_6:
        .line 1398
        call void Insymbol()
        .line 1399
        ldsfld int32 _G::Sy
        ldc.i4 36
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_7
        .line 1399
        ldc.i4 2
        call void Error(int32 n)
        br L_if_end_8
    L_else_7:
        .line 1400
        ldloc _F
        ldloc _F
        ldfld class @block_statement @block_statement_standproc::_slink
        ldfld class @block @block_statement::_slink
        ldsfld valuetype T_alfa _G::Id
        call instance int32 @block::Loc(valuetype T_alfa Id)
        stfld int32 @block_statement_standproc::i
        .line 1400
        call void Insymbol()
        .line 1401
        ldloc _F
        ldfld int32 @block_statement_standproc::i
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_9
        .line 1402
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_standproc::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Obj
        ldc.i4 1
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_10
        .line 1402
        ldc.i4 37
        call void Error(int32 n)
        br L_if_end_11
    L_else_10:
        .line 1403
        ldloc _F
        ldflda valuetype T_item @block_statement_standproc::x
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_standproc::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Typ
        stfld int32 T_item::Typ
        .line 1403
        ldloc _F
        ldflda valuetype T_item @block_statement_standproc::x
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_standproc::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Ref
        stfld int32 T_item::Ref
        .line 1404
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_standproc::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld bool T_record_86::Normal
        brfalse L_else_12
        .line 1404
        ldloc _F
        ldc.i4 0
        stfld int32 @block_statement_standproc::f
        br L_if_end_13
    L_else_12:
        .line 1404
        ldloc _F
        ldc.i4 1
        stfld int32 @block_statement_standproc::f
    L_if_end_13:
        .line 1405
        ldloc _F
        ldfld int32 @block_statement_standproc::f
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_standproc::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int8 T_record_86::Lev
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement_standproc::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Adr
        call void Emit2(int32 Fct, int32 a, int32 b)
        .line 1406
        ldloc $tmpSetLiteral2
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_symset s, int32 val)
        brfalse L_if_end_14
        .line 1407
        ldloc _F
        ldfld class @block_statement @block_statement_standproc::_slink
        ldloc _F
        ldfld class @block_statement @block_statement_standproc::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral3
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda valuetype T_item @block_statement_standproc::x
        call instance void @block_statement::Selector(valuetype T_symset Fsys, valuetype T_item& v)
    L_if_end_14:
        .line 1408
        ldloc $tmpSetLiteral4
        ldloc _F
        ldflda valuetype T_item @block_statement_standproc::x
        ldfld int32 T_item::Typ
        call bool _SetContains(valuetype T_typset s, int32 val)
        brfalse L_else_15
        .line 1409
        ldc.i4 27
        ldloc _F
        ldflda valuetype T_item @block_statement_standproc::x
        ldfld int32 T_item::Typ
        call void Emit1(int32 Fct, int32 b)
        br L_if_end_16
    L_else_15:
        .line 1409
        ldc.i4 40
        call void Error(int32 n)
    L_if_end_16:
    L_if_end_11:
    L_if_end_9:
    L_if_end_8:
        .line 1412
        ldloc _F
        ldfld class @block_statement @block_statement_standproc::_slink
        ldfld class @block @block_statement::_slink
        ldloc $tmpSetLiteral5
        ldloc _F
        ldfld class @block_statement @block_statement_standproc::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        ldc.i4 6
        call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
        /* nop */
        ldsfld int32 _G::Sy
        ldc.i4 23
        ceq
        ldc.i4.0
        ceq
        brfalse L_repeat_6
        .line 1414
        ldsfld int32 _G::Sy
        ldc.i4 20
        ceq
        brfalse L_else_17
        .line 1414
        call void Insymbol()
        br L_if_end_18
    L_else_17:
        .line 1414
        ldc.i4 4
        call void Error(int32 n)
    L_if_end_18:
    L_if_end_5:
        .line 1416
        ldloc _F
        ldfld int32 @block_statement_standproc::n
        ldc.i4 2
        ceq
        brfalse L_if_end_19
        .line 1416
        ldc.i4 62
        call void Emit(int32 Fct)
    L_if_end_19:
        br L_case_end_1
    L_check_case_2:
        ldloc $tmpSwitchValue1
        ldc.i4 3
        beq L_case_20
        ldloc $tmpSwitchValue1
        ldc.i4 4
        beq L_case_20
        br L_case_end_1
    L_case_20:
        .line 1419
        ldsfld int32 _G::Sy
        ldc.i4 19
        ceq
        brfalse L_if_end_21
        .line 1421
    L_repeat_22:
        .line 1421
        call void Insymbol()
        .line 1422
        ldsfld int32 _G::Sy
        ldc.i4 3
        ceq
        brfalse L_else_23
        .line 1423
        ldc.i4 24
        ldsfld int32 _G::Sleng
        call void Emit1(int32 Fct, int32 b)
        .line 1423
        ldc.i4 28
        ldsfld int32 _G::Inum
        call void Emit1(int32 Fct, int32 b)
        .line 1423
        call void Insymbol()
        br L_if_end_24
    L_else_23:
        .line 1425
        ldloc _F
        ldfld class @block_statement @block_statement_standproc::_slink
        ldloc _F
        ldfld class @block_statement @block_statement_standproc::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral6
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda valuetype T_item @block_statement_standproc::x
        call instance void @block_statement::Expression(valuetype T_symset Fsys, valuetype T_item& x)
        .line 1426
        ldsfld valuetype T_typset _G::Stantyps
        ldloc _F
        ldflda valuetype T_item @block_statement_standproc::x
        ldfld int32 T_item::Typ
        call bool _SetContains(valuetype T_typset s, int32 val)
        ldc.i4.0
        ceq
        brfalse L_if_end_25
        .line 1426
        ldc.i4 41
        call void Error(int32 n)
    L_if_end_25:
        .line 1427
        ldsfld int32 _G::Sy
        ldc.i4 26
        ceq
        brfalse L_else_26
        .line 1428
        call void Insymbol()
        .line 1429
        ldloc _F
        ldfld class @block_statement @block_statement_standproc::_slink
        ldloc _F
        ldfld class @block_statement @block_statement_standproc::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral7
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda valuetype T_item @block_statement_standproc::y
        call instance void @block_statement::Expression(valuetype T_symset Fsys, valuetype T_item& x)
        .line 1430
        ldloc _F
        ldflda valuetype T_item @block_statement_standproc::y
        ldfld int32 T_item::Typ
        ldc.i4 1
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_28
        .line 1430
        ldc.i4 43
        call void Error(int32 n)
    L_if_end_28:
        .line 1431
        ldsfld int32 _G::Sy
        ldc.i4 26
        ceq
        brfalse L_else_29
        .line 1432
        ldloc _F
        ldflda valuetype T_item @block_statement_standproc::x
        ldfld int32 T_item::Typ
        ldc.i4 2
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_31
        .line 1432
        ldc.i4 42
        call void Error(int32 n)
    L_if_end_31:
        .line 1433
        call void Insymbol()
        .line 1433
        ldloc _F
        ldfld class @block_statement @block_statement_standproc::_slink
        ldloc _F
        ldfld class @block_statement @block_statement_standproc::_slink
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral8
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda valuetype T_item @block_statement_standproc::y
        call instance void @block_statement::Expression(valuetype T_symset Fsys, valuetype T_item& x)
        .line 1434
        ldloc _F
        ldflda valuetype T_item @block_statement_standproc::y
        ldfld int32 T_item::Typ
        ldc.i4 1
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_32
        .line 1434
        ldc.i4 43
        call void Error(int32 n)
    L_if_end_32:
        .line 1435
        ldc.i4 37
        call void Emit(int32 Fct)
        br L_if_end_30
    L_else_29:
        .line 1437
        ldc.i4 30
        ldloc _F
        ldflda valuetype T_item @block_statement_standproc::x
        ldfld int32 T_item::Typ
        call void Emit1(int32 Fct, int32 b)
    L_if_end_30:
        br L_if_end_27
    L_else_26:
        .line 1439
        ldc.i4 29
        ldloc _F
        ldflda valuetype T_item @block_statement_standproc::x
        ldfld int32 T_item::Typ
        call void Emit1(int32 Fct, int32 b)
    L_if_end_27:
    L_if_end_24:
        ldsfld int32 _G::Sy
        ldc.i4 23
        ceq
        ldc.i4.0
        ceq
        brfalse L_repeat_22
        .line 1442
        ldsfld int32 _G::Sy
        ldc.i4 20
        ceq
        brfalse L_else_33
        .line 1442
        call void Insymbol()
        br L_if_end_34
    L_else_33:
        .line 1442
        ldc.i4 4
        call void Error(int32 n)
    L_if_end_34:
    L_if_end_21:
        .line 1444
        ldloc _F
        ldfld int32 @block_statement_standproc::n
        ldc.i4 4
        ceq
        brfalse L_if_end_35
        .line 1444
        ldc.i4 63
        call void Emit(int32 Fct)
    L_if_end_35:
    L_case_end_1:
    
    L_Epilogue:
        ret
    }
}


.line 574
//================================================================================
// scope: block (level : 2)

.class @block
{
    // parameters
    .field public valuetype T_symset Fsys
    .field public bool Isfun
    .field public int32 Level

    // local variables
    .field public int32 Dx
    .field public int32 Prb
    .field public int32 Prt
    .field public int32 x

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 587

    .method public
    void Skip(valuetype T_symset Fsys, int32 n)
    {
        .maxstack 32
    
        .locals init(class @block_skip _F)
        
        newobj instance void @block_skip::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block @block_skip::_slink
        
        ldloc _F
        ldarg Fsys
        stfld valuetype T_symset @block_skip::Fsys
        
        ldloc _F
        ldarg n
        stfld int32 @block_skip::n
    
    L_Entry:
        .line 588
        ldloc _F
        ldfld int32 @block_skip::n
        call void Error(int32 n)
        .line 589
        br L_while_test_2
    L_while_1:
        .line 589
        call void Insymbol()
    L_while_test_2:
        ldloc _F
        ldfld valuetype T_symset @block_skip::Fsys
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_symset s, int32 val)
        ldc.i4.0
        ceq
        brtrue L_while_1
    
    L_Epilogue:
        ret
    }

.line 592

    .method public
    void Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
    {
        .maxstack 32
    
        .locals init(class @block_test _F)
        
        newobj instance void @block_test::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block @block_test::_slink
        
        ldloc _F
        ldarg n
        stfld int32 @block_test::n
        
        ldloc _F
        ldarg S1
        stfld valuetype T_symset @block_test::S1
        
        ldloc _F
        ldarg S2
        stfld valuetype T_symset @block_test::S2
    
    L_Entry:
        .line 593
        ldloc _F
        ldfld valuetype T_symset @block_test::S1
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_symset s, int32 val)
        ldc.i4.0
        ceq
        brfalse L_if_end_1
        .line 594
        ldloc _F
        ldfld class @block @block_test::_slink
        ldloc _F
        ldfld valuetype T_symset @block_test::S1
        ldloc _F
        ldfld valuetype T_symset @block_test::S2
        call valuetype T_symset _SetUnion(valuetype T_symset a, valuetype T_symset b)
        ldloc _F
        ldfld int32 @block_test::n
        call instance void @block::Skip(valuetype T_symset Fsys, int32 n)
    L_if_end_1:
    
    L_Epilogue:
        ret
    }

.line 597

    .method public
    void Testsemicolon()
    {
        .maxstack 32
    
        .locals init(
            class @block_testsemicolon _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_symset $tmpSetLiteral2)
        
        newobj instance void @block_testsemicolon::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block @block_testsemicolon::_slink
    
        ldloca $tmpSetLiteral1
        ldc.i4 23
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 26
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 36
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 599
        ldsfld int32 _G::Sy
        ldc.i4 24
        ceq
        brfalse L_else_1
        .line 599
        call void Insymbol()
        br L_if_end_2
    L_else_1:
        .line 600
        ldc.i4 14
        call void Error(int32 n)
        .line 601
        ldloc $tmpSetLiteral1
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_symset s, int32 val)
        brfalse L_if_end_3
        .line 601
        call void Insymbol()
    L_if_end_3:
    L_if_end_2:
        .line 603
        ldloc _F
        ldfld class @block @block_testsemicolon::_slink
        ldloc $tmpSetLiteral2
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldsfld valuetype T_symset _G::Blockbegsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldfld class @block @block_testsemicolon::_slink
        ldfld valuetype T_symset @block::Fsys
        ldc.i4 6
        call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
    
    L_Epilogue:
        ret
    }

.line 606

    .method public
    void Enter(valuetype T_alfa Id, int32 k)
    {
        .maxstack 32
    
        .locals init(class @block_enter _F)
        
        newobj instance void @block_enter::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block @block_enter::_slink
        
        ldloc _F
        ldarg Id
        stfld valuetype T_alfa @block_enter::Id
        
        ldloc _F
        ldarg k
        stfld int32 @block_enter::k
    
    L_Entry:
        .line 608
        ldsfld int32 _G::t
        ldc.i4 1000
        ceq
        brfalse L_else_1
        .line 608
        ldc.i4 1
        call void Fatal(int32 n)
        br L_if_end_2
    L_else_1:
        .line 609
        ldsflda valuetype T_array_88 _G::Tab
        ldc.i4 0
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld valuetype T_alfa @block_enter::Id
        stfld valuetype T_alfa T_record_86::Name
        .line 610
        ldloc _F
        ldsflda valuetype T_array_92 _G::Btab
        ldsflda valuetype T_array_100 _G::Display
        ldloc _F
        ldfld class @block @block_enter::_slink
        ldfld int32 @block::Level
        call instance int32& T_array_100::ldadr(int32)
        ldobj int32
        call instance valuetype T_record_91& T_array_92::ldadr(int32)
        ldfld int32 T_record_91::Last
        stfld int32 @block_enter::j
        .line 610
        ldloc _F
        ldloc _F
        ldfld int32 @block_enter::j
        stfld int32 @block_enter::l
        .line 611
        br L_while_test_4
    L_while_3:
        .line 611
        ldloc _F
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_enter::j
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Link
        stfld int32 @block_enter::j
    L_while_test_4:
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_enter::j
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld valuetype T_alfa T_record_86::Name
        call string T_alfa::arrayToString(valuetype T_alfa)
        ldloc _F
        ldfld valuetype T_alfa @block_enter::Id
        call string T_alfa::arrayToString(valuetype T_alfa)
        call bool [lpcRuntime]LPC.Helpers::StrcmpNE(string, string)
        brtrue L_while_3
        .line 612
        ldloc _F
        ldfld int32 @block_enter::j
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_5
        .line 612
        ldc.i4 1
        call void Error(int32 n)
        br L_if_end_6
    L_else_5:
        .line 613
        ldsfld int32 _G::t
        ldc.i4 1
        add
        stsfld int32 _G::t
        .line 615
        ldsflda valuetype T_array_88 _G::Tab
        ldsfld int32 _G::t
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld valuetype T_alfa @block_enter::Id
        stfld valuetype T_alfa T_record_86::Name
        .line 615
        ldsflda valuetype T_array_88 _G::Tab
        ldsfld int32 _G::t
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld int32 @block_enter::l
        dup
        ldc.i4 -131071
        ldc.i4 131071
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_record_86::Link
        .line 616
        ldsflda valuetype T_array_88 _G::Tab
        ldsfld int32 _G::t
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld int32 @block_enter::k
        stfld int32 T_record_86::Obj
        .line 616
        ldsflda valuetype T_array_88 _G::Tab
        ldsfld int32 _G::t
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldc.i4 0
        stfld int32 T_record_86::Typ
        .line 616
        ldsflda valuetype T_array_88 _G::Tab
        ldsfld int32 _G::t
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 -131071
        ldc.i4 131071
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_record_86::Ref
        .line 616
        ldsflda valuetype T_array_88 _G::Tab
        ldsfld int32 _G::t
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld class @block @block_enter::_slink
        ldfld int32 @block::Level
        dup
        ldc.i4 0
        ldc.i4 100
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 T_record_86::Lev
        .line 617
        ldsflda valuetype T_array_88 _G::Tab
        ldsfld int32 _G::t
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldc.i4 0
        stfld int32 T_record_86::Adr
        .line 619
        ldsflda valuetype T_array_92 _G::Btab
        ldsflda valuetype T_array_100 _G::Display
        ldloc _F
        ldfld class @block @block_enter::_slink
        ldfld int32 @block::Level
        call instance int32& T_array_100::ldadr(int32)
        ldobj int32
        call instance valuetype T_record_91& T_array_92::ldadr(int32)
        ldsfld int32 _G::t
        dup
        ldc.i4 -131071
        ldc.i4 131071
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_record_91::Last
    L_if_end_6:
    L_if_end_2:
    
    L_Epilogue:
        ret
    }

.line 624

    .method public
    int32 Loc(valuetype T_alfa Id)
    {
        .maxstack 32
    
        .locals init(class @block_loc _F)
        
        newobj instance void @block_loc::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block @block_loc::_slink
        
        ldloc _F
        ldarg Id
        stfld valuetype T_alfa @block_loc::Id
    
    L_Entry:
        .line 626
        ldloc _F
        ldloc _F
        ldfld class @block @block_loc::_slink
        ldfld int32 @block::Level
        stfld int32 @block_loc::i
        .line 626
        ldsflda valuetype T_array_88 _G::Tab
        ldc.i4 0
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld valuetype T_alfa @block_loc::Id
        stfld valuetype T_alfa T_record_86::Name
        .line 627
    L_repeat_1:
        .line 627
        ldloc _F
        ldsflda valuetype T_array_92 _G::Btab
        ldsflda valuetype T_array_100 _G::Display
        ldloc _F
        ldfld int32 @block_loc::i
        call instance int32& T_array_100::ldadr(int32)
        ldobj int32
        call instance valuetype T_record_91& T_array_92::ldadr(int32)
        ldfld int32 T_record_91::Last
        stfld int32 @block_loc::j
        .line 628
        br L_while_test_3
    L_while_2:
        .line 628
        ldloc _F
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_loc::j
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Link
        stfld int32 @block_loc::j
    L_while_test_3:
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_loc::j
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld valuetype T_alfa T_record_86::Name
        call string T_alfa::arrayToString(valuetype T_alfa)
        ldloc _F
        ldfld valuetype T_alfa @block_loc::Id
        call string T_alfa::arrayToString(valuetype T_alfa)
        call bool [lpcRuntime]LPC.Helpers::StrcmpNE(string, string)
        brtrue L_while_2
        .line 629
        ldloc _F
        ldloc _F
        ldfld int32 @block_loc::i
        ldc.i4 1
        sub
        stfld int32 @block_loc::i
        /* nop */
        ldloc _F
        ldfld int32 @block_loc::i
        ldc.i4 0
        clt
        dup
        brtrue L_OR_shortcut_4
        pop
        ldloc _F
        ldfld int32 @block_loc::j
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
    L_OR_shortcut_4:
        brfalse L_repeat_1
        .line 631
        ldloc _F
        ldfld int32 @block_loc::j
        ldc.i4 0
        ceq
        brfalse L_if_end_5
        .line 631
        ldc.i4 0
        call void Error(int32 n)
    L_if_end_5:
        .line 631
        ldloc _F
        ldloc _F
        ldfld int32 @block_loc::j
        stfld int32 @block_loc::_fnvalue
    
    L_Epilogue:
        ldloc _F
        ldfld int32 @block_loc::_fnvalue
        ret
    }

.line 634

    .method public
    void Entervariable()
    {
        .maxstack 32
    
        .locals init(class @block_entervariable _F)
        
        newobj instance void @block_entervariable::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block @block_entervariable::_slink
    
    L_Entry:
        .line 635
        ldsfld int32 _G::Sy
        ldc.i4 36
        ceq
        brfalse L_else_1
        .line 636
        ldloc _F
        ldfld class @block @block_entervariable::_slink
        ldsfld valuetype T_alfa _G::Id
        ldc.i4 1
        call instance void @block::Enter(valuetype T_alfa Id, int32 k)
        .line 636
        call void Insymbol()
        br L_if_end_2
    L_else_1:
        .line 638
        ldc.i4 2
        call void Error(int32 n)
    L_if_end_2:
    
    L_Epilogue:
        ret
    }

.line 641

    .method public
    void Constant(valuetype T_symset Fsys, valuetype T_block_conrec& c)
    {
        .maxstack 32
    
        .locals init(
            class @block_constant _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_set_62 $tmpSetLiteral2,
            valuetype T_block_conrec& pinned $c)
        
        newobj instance void @block_constant::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block @block_constant::_slink
        
        ldarg c
        stloc $c
        
        ldloc _F
        ldarg c
        stfld valuetype T_block_conrec* @block_constant::c
        
        ldloc _F
        ldarg Fsys
        stfld valuetype T_symset @block_constant::Fsys
    
        ldloca $tmpSetLiteral1
        ldc.i4 5
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 6
        call instance void T_symset::addValue(int32)
    
    
    L_Entry:
        .line 643
        ldloc _F
        ldfld valuetype T_block_conrec* @block_constant::c
        ldc.i4 0
        stfld int32 T_block_conrec::Tp
        .line 643
        ldloc _F
        ldfld valuetype T_block_conrec* @block_constant::c
        ldc.i4 0
        stfld int32 T_block_conrec::i
        .line 644
        ldloc _F
        ldfld class @block @block_constant::_slink
        ldsfld valuetype T_symset _G::Constbegsys
        ldloc _F
        ldfld valuetype T_symset @block_constant::Fsys
        ldc.i4 50
        call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
        .line 645
        ldsfld valuetype T_symset _G::Constbegsys
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_symset s, int32 val)
        brfalse L_if_end_1
        .line 647
        ldsfld int32 _G::Sy
        ldc.i4 2
        ceq
        brfalse L_else_2
        .line 648
        ldloc _F
        ldfld valuetype T_block_conrec* @block_constant::c
        ldc.i4 4
        stfld int32 T_block_conrec::Tp
        .line 648
        ldloc _F
        ldfld valuetype T_block_conrec* @block_constant::c
        ldsfld int32 _G::Inum
        stfld int32 T_block_conrec::i
        .line 648
        call void Insymbol()
        br L_if_end_3
    L_else_2:
        .line 651
        ldloc _F
        ldc.i4 1
        stfld int32 @block_constant::Sign
        .line 652
        ldloc $tmpSetLiteral1
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_symset s, int32 val)
        brfalse L_if_end_4
        .line 653
        ldsfld int32 _G::Sy
        ldc.i4 6
        ceq
        brfalse L_if_end_5
        .line 653
        ldloc _F
        ldc.i4 1
        neg
        stfld int32 @block_constant::Sign
    L_if_end_5:
        .line 654
        call void Insymbol()
    L_if_end_4:
        .line 656
        ldsfld int32 _G::Sy
        ldc.i4 36
        ceq
        brfalse L_else_6
        .line 657
        ldloc _F
        ldloc _F
        ldfld class @block @block_constant::_slink
        ldsfld valuetype T_alfa _G::Id
        call instance int32 @block::Loc(valuetype T_alfa Id)
        stfld int32 @block_constant::x
        .line 658
        ldloc _F
        ldfld int32 @block_constant::x
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_8
        .line 659
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_constant::x
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Obj
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_9
        .line 659
        ldc.i4 25
        call void Error(int32 n)
        br L_if_end_10
    L_else_9:
        .line 660
        ldloc _F
        ldfld valuetype T_block_conrec* @block_constant::c
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_constant::x
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Typ
        stfld int32 T_block_conrec::Tp
        .line 661
        ldloc _F
        ldfld valuetype T_block_conrec* @block_constant::c
        ldfld int32 T_block_conrec::Tp
        ldc.i4 2
        ceq
        brfalse L_else_11
        .line 662
        ldloc _F
        ldfld valuetype T_block_conrec* @block_constant::c
        ldloc _F
        ldfld int32 @block_constant::Sign
        conv.r8
        ldsflda valuetype T_array_93 _G::Rconst
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_constant::x
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Adr
        call instance float64& T_array_93::ldadr(int32)
        ldobj float64
        mul
        stfld float64 T_block_conrec::r
        br L_if_end_12
    L_else_11:
        .line 663
        ldloc _F
        ldfld valuetype T_block_conrec* @block_constant::c
        ldloc _F
        ldfld int32 @block_constant::Sign
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_constant::x
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Adr
        mul
        stfld int32 T_block_conrec::i
    L_if_end_12:
    L_if_end_10:
    L_if_end_8:
        .line 665
        call void Insymbol()
        br L_if_end_7
    L_else_6:
        .line 668
        ldsfld int32 _G::Sy
        ldc.i4 0
        ceq
        brfalse L_else_13
        .line 669
        ldloc _F
        ldfld valuetype T_block_conrec* @block_constant::c
        ldc.i4 1
        stfld int32 T_block_conrec::Tp
        .line 669
        ldloc _F
        ldfld valuetype T_block_conrec* @block_constant::c
        ldloc _F
        ldfld int32 @block_constant::Sign
        ldsfld int32 _G::Inum
        mul
        stfld int32 T_block_conrec::i
        .line 669
        call void Insymbol()
        br L_if_end_14
    L_else_13:
        .line 671
        ldsfld int32 _G::Sy
        ldc.i4 1
        ceq
        brfalse L_else_15
        .line 672
        ldloc _F
        ldfld valuetype T_block_conrec* @block_constant::c
        ldc.i4 2
        stfld int32 T_block_conrec::Tp
        .line 672
        ldloc _F
        ldfld valuetype T_block_conrec* @block_constant::c
        ldloc _F
        ldfld int32 @block_constant::Sign
        conv.r8
        ldsfld float64 _G::Rnum
        mul
        stfld float64 T_block_conrec::r
        .line 672
        call void Insymbol()
        br L_if_end_16
    L_else_15:
        .line 673
        ldloc _F
        ldfld class @block @block_constant::_slink
        ldloc _F
        ldfld valuetype T_symset @block_constant::Fsys
        ldc.i4 50
        call instance void @block::Skip(valuetype T_symset Fsys, int32 n)
    L_if_end_16:
    L_if_end_14:
    L_if_end_7:
    L_if_end_3:
        .line 675
        ldloc _F
        ldfld class @block @block_constant::_slink
        ldloc _F
        ldfld valuetype T_symset @block_constant::Fsys
        ldloc $tmpSetLiteral2
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldc.i4 6
        call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
    L_if_end_1:
    
    L_Epilogue:
        ret
    }

.line 679

    .method public
    void Typ(valuetype T_symset Fsys, int32& Tp, int32& Rf, int32& Sz)
    {
        .maxstack 32
    
        .locals init(
            class @block_typ _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_symset $tmpSetLiteral2,
            valuetype T_set_62 $tmpSetLiteral3,
            int32& pinned $Rf,
            int32& pinned $Sz,
            int32& pinned $Tp)
        
        newobj instance void @block_typ::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block @block_typ::_slink
        
        ldloc _F
        ldarg Fsys
        stfld valuetype T_symset @block_typ::Fsys
        
        ldarg Rf
        stloc $Rf
        
        ldloc _F
        ldarg Rf
        stfld int32* @block_typ::Rf
        
        ldarg Sz
        stloc $Sz
        
        ldloc _F
        ldarg Sz
        stfld int32* @block_typ::Sz
        
        ldarg Tp
        stloc $Tp
        
        ldloc _F
        ldarg Tp
        stfld int32* @block_typ::Tp
    
        ldloca $tmpSetLiteral1
        ldc.i4 24
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 43
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 23
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 36
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 36
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 43
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 24
        call instance void T_symset::addValue(int32)
    
    
    L_Entry:
        .line 715
        ldloc _F
        ldfld int32* @block_typ::Tp
        ldc.i4 0
        stobj int32
        .line 715
        ldloc _F
        ldfld int32* @block_typ::Rf
        ldc.i4 0
        stobj int32
        .line 715
        ldloc _F
        ldfld int32* @block_typ::Sz
        ldc.i4 0
        stobj int32
        .line 716
        ldloc _F
        ldfld class @block @block_typ::_slink
        ldsfld valuetype T_symset _G::Typebegsys
        ldloc _F
        ldfld valuetype T_symset @block_typ::Fsys
        ldc.i4 10
        call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
        .line 717
        ldsfld valuetype T_symset _G::Typebegsys
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_symset s, int32 val)
        brfalse L_if_end_1
        .line 719
        ldsfld int32 _G::Sy
        ldc.i4 36
        ceq
        brfalse L_else_2
        .line 720
        ldloc _F
        ldloc _F
        ldfld class @block @block_typ::_slink
        ldsfld valuetype T_alfa _G::Id
        call instance int32 @block::Loc(valuetype T_alfa Id)
        stfld int32 @block_typ::x
        .line 721
        ldloc _F
        ldfld int32 @block_typ::x
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_4
        .line 723
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_typ::x
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Obj
        ldc.i4 2
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_5
        .line 723
        ldc.i4 29
        call void Error(int32 n)
        br L_if_end_6
    L_else_5:
        .line 724
        ldloc _F
        ldfld int32* @block_typ::Tp
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_typ::x
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Typ
        stobj int32
        .line 724
        ldloc _F
        ldfld int32* @block_typ::Rf
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_typ::x
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Ref
        stobj int32
        .line 724
        ldloc _F
        ldfld int32* @block_typ::Sz
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_typ::x
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Adr
        stobj int32
        .line 725
        ldloc _F
        ldfld int32* @block_typ::Tp
        ldobj int32
        ldc.i4 0
        ceq
        brfalse L_if_end_7
        .line 725
        ldc.i4 30
        call void Error(int32 n)
    L_if_end_7:
    L_if_end_6:
    L_if_end_4:
        .line 727
        call void Insymbol()
        br L_if_end_3
    L_else_2:
        .line 729
        ldsfld int32 _G::Sy
        ldc.i4 33
        ceq
        brfalse L_else_8
        .line 730
        call void Insymbol()
        .line 731
        ldsfld int32 _G::Sy
        ldc.i4 21
        ceq
        brfalse L_else_10
        .line 731
        call void Insymbol()
        br L_if_end_11
    L_else_10:
        .line 732
        ldc.i4 11
        call void Error(int32 n)
        .line 733
        ldsfld int32 _G::Sy
        ldc.i4 19
        ceq
        brfalse L_if_end_12
        .line 733
        call void Insymbol()
    L_if_end_12:
    L_if_end_11:
        .line 735
        ldloc _F
        ldfld int32* @block_typ::Tp
        ldc.i4 5
        stobj int32
        .line 735
        ldloc _F
        ldloc _F
        ldfld int32* @block_typ::Rf
        ldloc _F
        ldfld int32* @block_typ::Sz
        call instance void @block_typ::Arraytyp(int32& Aref, int32& Arsz)
        br L_if_end_9
    L_else_8:
        .line 737
        call void Insymbol()
        .line 738
        call void Enterblock()
        .line 738
        ldloc _F
        ldfld int32* @block_typ::Tp
        ldc.i4 6
        stobj int32
        .line 738
        ldloc _F
        ldfld int32* @block_typ::Rf
        ldsfld int32 _G::b
        stobj int32
        .line 739
        ldloc _F
        ldfld class @block @block_typ::_slink
        ldfld int32 @block::Level
        ldc.i4 100
        ceq
        brfalse L_if_end_13
        .line 739
        ldc.i4 5
        call void Fatal(int32 n)
    L_if_end_13:
        .line 740
        ldloc _F
        ldfld class @block @block_typ::_slink
        ldloc _F
        ldfld class @block @block_typ::_slink
        ldfld int32 @block::Level
        ldc.i4 1
        add
        stfld int32 @block::Level
        .line 740
        ldsflda valuetype T_array_100 _G::Display
        ldloc _F
        ldfld class @block @block_typ::_slink
        ldfld int32 @block::Level
        call instance int32& T_array_100::ldadr(int32)
        ldsfld int32 _G::b
        stobj int32
        .line 740
        ldloc _F
        ldc.i4 0
        stfld int32 @block_typ::Offset
        .line 741
        br L_while_test_15
    L_while_14:
        .line 743
        ldsfld int32 _G::Sy
        ldc.i4 36
        ceq
        brfalse L_if_end_16
        .line 744
        ldloc _F
        ldsfld int32 _G::t
        stfld int32 @block_typ::T0
        .line 744
        ldloc _F
        ldfld class @block @block_typ::_slink
        call instance void @block::Entervariable()
        .line 745
        br L_while_test_18
    L_while_17:
        .line 746
        call void Insymbol()
        .line 746
        ldloc _F
        ldfld class @block @block_typ::_slink
        call instance void @block::Entervariable()
    L_while_test_18:
        ldsfld int32 _G::Sy
        ldc.i4 23
        ceq
        brtrue L_while_17
        .line 748
        ldsfld int32 _G::Sy
        ldc.i4 26
        ceq
        brfalse L_else_19
        .line 748
        call void Insymbol()
        br L_if_end_20
    L_else_19:
        .line 748
        ldc.i4 5
        call void Error(int32 n)
    L_if_end_20:
        .line 749
        ldloc _F
        ldsfld int32 _G::t
        stfld int32 @block_typ::T1
        .line 750
        ldloc _F
        ldfld class @block @block_typ::_slink
        ldloc _F
        ldfld valuetype T_symset @block_typ::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral1
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda int32 @block_typ::Eltp
        ldloc _F
        ldflda int32 @block_typ::Elrf
        ldloc _F
        ldflda int32 @block_typ::Elsz
        call instance void @block::Typ(valuetype T_symset Fsys, int32& Tp, int32& Rf, int32& Sz)
        .line 752
        br L_while_test_22
    L_while_21:
        .line 753
        ldloc _F
        ldloc _F
        ldfld int32 @block_typ::T0
        ldc.i4 1
        add
        stfld int32 @block_typ::T0
        .line 755
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_typ::T0
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld int32 @block_typ::Eltp
        stfld int32 T_record_86::Typ
        .line 755
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_typ::T0
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld int32 @block_typ::Elrf
        dup
        ldc.i4 -131071
        ldc.i4 131071
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_record_86::Ref
        .line 755
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_typ::T0
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldc.i4 1 // (true)
        stfld bool T_record_86::Normal
        .line 756
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_typ::T0
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld int32 @block_typ::Offset
        stfld int32 T_record_86::Adr
        .line 756
        ldloc _F
        ldloc _F
        ldfld int32 @block_typ::Offset
        ldloc _F
        ldfld int32 @block_typ::Elsz
        add
        stfld int32 @block_typ::Offset
    L_while_test_22:
        ldloc _F
        ldfld int32 @block_typ::T0
        ldloc _F
        ldfld int32 @block_typ::T1
        clt
        brtrue L_while_21
    L_if_end_16:
        .line 760
        ldsfld int32 _G::Sy
        ldc.i4 43
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_23
        .line 761
        ldsfld int32 _G::Sy
        ldc.i4 24
        ceq
        brfalse L_else_24
        .line 761
        call void Insymbol()
        br L_if_end_25
    L_else_24:
        .line 762
        ldc.i4 14
        call void Error(int32 n)
        .line 763
        ldsfld int32 _G::Sy
        ldc.i4 23
        ceq
        brfalse L_if_end_26
        .line 763
        call void Insymbol()
    L_if_end_26:
    L_if_end_25:
        .line 765
        ldloc _F
        ldfld class @block @block_typ::_slink
        ldloc $tmpSetLiteral2
        ldloc _F
        ldfld valuetype T_symset @block_typ::Fsys
        ldc.i4 6
        call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
    L_if_end_23:
    L_while_test_15:
        ldsfld int32 _G::Sy
        ldc.i4 43
        ceq
        ldc.i4.0
        ceq
        brtrue L_while_14
        .line 768
        ldsflda valuetype T_array_92 _G::Btab
        ldloc _F
        ldfld int32* @block_typ::Rf
        ldobj int32
        call instance valuetype T_record_91& T_array_92::ldadr(int32)
        ldloc _F
        ldfld int32 @block_typ::Offset
        dup
        ldc.i4 -131071
        ldc.i4 131071
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_record_91::Vsize
        .line 768
        ldloc _F
        ldfld int32* @block_typ::Sz
        ldloc _F
        ldfld int32 @block_typ::Offset
        stobj int32
        .line 769
        ldsflda valuetype T_array_92 _G::Btab
        ldloc _F
        ldfld int32* @block_typ::Rf
        ldobj int32
        call instance valuetype T_record_91& T_array_92::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 -131071
        ldc.i4 131071
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_record_91::Psize
        .line 769
        call void Insymbol()
        .line 769
        ldloc _F
        ldfld class @block @block_typ::_slink
        ldloc _F
        ldfld class @block @block_typ::_slink
        ldfld int32 @block::Level
        ldc.i4 1
        sub
        stfld int32 @block::Level
    L_if_end_9:
    L_if_end_3:
        .line 771
        ldloc _F
        ldfld class @block @block_typ::_slink
        ldloc _F
        ldfld valuetype T_symset @block_typ::Fsys
        ldloc $tmpSetLiteral3
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldc.i4 6
        call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
    L_if_end_1:
    
    L_Epilogue:
        ret
    }

.line 775

    .method public
    void Parameterlist()
    {
        .maxstack 32
    
        .locals init(
            class @block_parameterlist _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_symset $tmpSetLiteral2,
            valuetype T_symset $tmpSetLiteral3,
            valuetype T_symset $tmpSetLiteral4,
            valuetype T_symset $tmpSetLiteral5,
            valuetype T_symset $tmpSetLiteral6,
            valuetype T_symset $tmpSetLiteral7,
            valuetype T_symset $tmpSetLiteral8)
        
        newobj instance void @block_parameterlist::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block @block_parameterlist::_slink
    
        ldloca $tmpSetLiteral1
        ldc.i4 36
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 30
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 20
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral3
        ldc.i4 24
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral3
        ldc.i4 20
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral4
        ldc.i4 23
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 36
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral5
        ldc.i4 36
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral5
        ldc.i4 30
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral6
        ldc.i4 20
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral7
        ldc.i4 36
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral7
        ldc.i4 30
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral8
        ldc.i4 24
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral8
        ldc.i4 26
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 779
        call void Insymbol()
        .line 779
        ldloc _F
        ldc.i4 0
        stfld int32 @block_parameterlist::Tp
        .line 779
        ldloc _F
        ldc.i4 0
        stfld int32 @block_parameterlist::Rf
        .line 779
        ldloc _F
        ldc.i4 0
        stfld int32 @block_parameterlist::Sz
        .line 780
        ldloc _F
        ldfld class @block @block_parameterlist::_slink
        ldloc $tmpSetLiteral1
        ldloc _F
        ldfld class @block @block_parameterlist::_slink
        ldfld valuetype T_symset @block::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral2
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldc.i4 7
        call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
        .line 781
        br L_while_test_2
    L_while_1:
        .line 782
        ldsfld int32 _G::Sy
        ldc.i4 30
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_3
        .line 782
        ldloc _F
        ldc.i4 1 // (true)
        stfld bool @block_parameterlist::Valpar
        br L_if_end_4
    L_else_3:
        .line 783
        call void Insymbol()
        .line 783
        ldloc _F
        ldc.i4 0 // (false)
        stfld bool @block_parameterlist::Valpar
    L_if_end_4:
        .line 785
        ldloc _F
        ldsfld int32 _G::t
        stfld int32 @block_parameterlist::T0
        .line 785
        ldloc _F
        ldfld class @block @block_parameterlist::_slink
        call instance void @block::Entervariable()
        .line 786
        br L_while_test_6
    L_while_5:
        .line 787
        call void Insymbol()
        .line 787
        ldloc _F
        ldfld class @block @block_parameterlist::_slink
        call instance void @block::Entervariable()
        /* nop */
    L_while_test_6:
        ldsfld int32 _G::Sy
        ldc.i4 23
        ceq
        brtrue L_while_5
        .line 789
        ldsfld int32 _G::Sy
        ldc.i4 26
        ceq
        brfalse L_else_7
        .line 790
        call void Insymbol()
        .line 791
        ldsfld int32 _G::Sy
        ldc.i4 36
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_9
        .line 791
        ldc.i4 2
        call void Error(int32 n)
        br L_if_end_10
    L_else_9:
        .line 792
        ldloc _F
        ldloc _F
        ldfld class @block @block_parameterlist::_slink
        ldsfld valuetype T_alfa _G::Id
        call instance int32 @block::Loc(valuetype T_alfa Id)
        stfld int32 @block_parameterlist::x
        .line 792
        call void Insymbol()
        .line 793
        ldloc _F
        ldfld int32 @block_parameterlist::x
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_11
        .line 795
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_parameterlist::x
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Obj
        ldc.i4 2
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_12
        .line 795
        ldc.i4 29
        call void Error(int32 n)
        br L_if_end_13
    L_else_12:
        .line 796
        ldloc _F
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_parameterlist::x
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Typ
        stfld int32 @block_parameterlist::Tp
        .line 796
        ldloc _F
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_parameterlist::x
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Ref
        stfld int32 @block_parameterlist::Rf
        .line 797
        ldloc _F
        ldfld bool @block_parameterlist::Valpar
        brfalse L_else_14
        .line 797
        ldloc _F
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_parameterlist::x
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Adr
        stfld int32 @block_parameterlist::Sz
        br L_if_end_15
    L_else_14:
        .line 797
        ldloc _F
        ldc.i4 1
        stfld int32 @block_parameterlist::Sz
    L_if_end_15:
    L_if_end_13:
    L_if_end_11:
        /* nop */
    L_if_end_10:
        .line 800
        ldloc _F
        ldfld class @block @block_parameterlist::_slink
        ldloc $tmpSetLiteral3
        ldloc $tmpSetLiteral4
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc _F
        ldfld class @block @block_parameterlist::_slink
        ldfld valuetype T_symset @block::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldc.i4 14
        call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
        br L_if_end_8
    L_else_7:
        .line 802
        ldc.i4 5
        call void Error(int32 n)
    L_if_end_8:
        .line 803
        br L_while_test_17
    L_while_16:
        .line 804
        ldloc _F
        ldloc _F
        ldfld int32 @block_parameterlist::T0
        ldc.i4 1
        add
        stfld int32 @block_parameterlist::T0
        .line 806
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_parameterlist::T0
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld int32 @block_parameterlist::Tp
        stfld int32 T_record_86::Typ
        .line 806
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_parameterlist::T0
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld int32 @block_parameterlist::Rf
        dup
        ldc.i4 -131071
        ldc.i4 131071
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_record_86::Ref
        .line 807
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_parameterlist::T0
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld bool @block_parameterlist::Valpar
        stfld bool T_record_86::Normal
        .line 807
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_parameterlist::T0
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld class @block @block_parameterlist::_slink
        ldfld int32 @block::Dx
        stfld int32 T_record_86::Adr
        .line 807
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_parameterlist::T0
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld class @block @block_parameterlist::_slink
        ldfld int32 @block::Level
        dup
        ldc.i4 0
        ldc.i4 100
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 T_record_86::Lev
        .line 808
        ldloc _F
        ldfld class @block @block_parameterlist::_slink
        ldloc _F
        ldfld class @block @block_parameterlist::_slink
        ldfld int32 @block::Dx
        ldloc _F
        ldfld int32 @block_parameterlist::Sz
        add
        stfld int32 @block::Dx
    L_while_test_17:
        ldloc _F
        ldfld int32 @block_parameterlist::T0
        ldsfld int32 _G::t
        clt
        brtrue L_while_16
        .line 811
        ldsfld int32 _G::Sy
        ldc.i4 20
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_18
        .line 812
        ldsfld int32 _G::Sy
        ldc.i4 24
        ceq
        brfalse L_else_19
        .line 812
        call void Insymbol()
        br L_if_end_20
    L_else_19:
        .line 813
        ldc.i4 14
        call void Error(int32 n)
        .line 814
        ldsfld int32 _G::Sy
        ldc.i4 23
        ceq
        brfalse L_if_end_21
        .line 814
        call void Insymbol()
    L_if_end_21:
    L_if_end_20:
        .line 816
        ldloc _F
        ldfld class @block @block_parameterlist::_slink
        ldloc $tmpSetLiteral5
        ldloc $tmpSetLiteral6
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc _F
        ldfld class @block @block_parameterlist::_slink
        ldfld valuetype T_symset @block::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldc.i4 6
        call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
    L_if_end_18:
    L_while_test_2:
        ldloc $tmpSetLiteral7
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_symset s, int32 val)
        brtrue L_while_1
        .line 819
        ldsfld int32 _G::Sy
        ldc.i4 20
        ceq
        brfalse L_else_22
        .line 820
        call void Insymbol()
        .line 821
        ldloc _F
        ldfld class @block @block_parameterlist::_slink
        ldloc $tmpSetLiteral8
        ldloc _F
        ldfld class @block @block_parameterlist::_slink
        ldfld valuetype T_symset @block::Fsys
        ldc.i4 6
        call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
        br L_if_end_23
    L_else_22:
        .line 823
        ldc.i4 4
        call void Error(int32 n)
    L_if_end_23:
    
    L_Epilogue:
        ret
    }

.line 826

    .method public
    void Constantdeclaration()
    {
        .maxstack 32
    
        .locals init(
            class @block_constantdeclaration _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_symset $tmpSetLiteral2)
        
        newobj instance void @block_constantdeclaration::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block @block_constantdeclaration::_slink
    
        ldloca $tmpSetLiteral1
        ldc.i4 36
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 24
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 23
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 36
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 828
        call void Insymbol()
        .line 829
        ldloc _F
        ldfld class @block @block_constantdeclaration::_slink
        ldloc $tmpSetLiteral1
        ldsfld valuetype T_symset _G::Blockbegsys
        ldc.i4 2
        call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
        .line 830
        br L_while_test_2
    L_while_1:
        .line 831
        ldloc _F
        ldfld class @block @block_constantdeclaration::_slink
        ldsfld valuetype T_alfa _G::Id
        ldc.i4 0
        call instance void @block::Enter(valuetype T_alfa Id, int32 k)
        .line 831
        call void Insymbol()
        .line 832
        ldsfld int32 _G::Sy
        ldc.i4 13
        ceq
        brfalse L_else_3
        .line 832
        call void Insymbol()
        br L_if_end_4
    L_else_3:
        .line 833
        ldc.i4 16
        call void Error(int32 n)
        .line 834
        ldsfld int32 _G::Sy
        ldc.i4 27
        ceq
        brfalse L_if_end_5
        .line 834
        call void Insymbol()
    L_if_end_5:
    L_if_end_4:
        .line 836
        ldloc _F
        ldfld class @block @block_constantdeclaration::_slink
        ldloc $tmpSetLiteral2
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc _F
        ldfld class @block @block_constantdeclaration::_slink
        ldfld valuetype T_symset @block::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda valuetype T_block_conrec @block_constantdeclaration::c
        call instance void @block::Constant(valuetype T_symset Fsys, valuetype T_block_conrec& c)
        .line 837
        ldsflda valuetype T_array_88 _G::Tab
        ldsfld int32 _G::t
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldflda valuetype T_block_conrec @block_constantdeclaration::c
        ldfld int32 T_block_conrec::Tp
        stfld int32 T_record_86::Typ
        .line 837
        ldsflda valuetype T_array_88 _G::Tab
        ldsfld int32 _G::t
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldc.i4 0
        dup
        ldc.i4 -131071
        ldc.i4 131071
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_record_86::Ref
        .line 838
        ldloc _F
        ldflda valuetype T_block_conrec @block_constantdeclaration::c
        ldfld int32 T_block_conrec::Tp
        ldc.i4 2
        ceq
        brfalse L_else_6
        .line 839
        ldloc _F
        ldflda valuetype T_block_conrec @block_constantdeclaration::c
        ldfld float64 T_block_conrec::r
        call void Enterreal(float64 x)
        .line 839
        ldsflda valuetype T_array_88 _G::Tab
        ldsfld int32 _G::t
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldsfld int32 _G::C1
        stfld int32 T_record_86::Adr
        br L_if_end_7
    L_else_6:
        .line 840
        ldsflda valuetype T_array_88 _G::Tab
        ldsfld int32 _G::t
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldflda valuetype T_block_conrec @block_constantdeclaration::c
        ldfld int32 T_block_conrec::i
        stfld int32 T_record_86::Adr
    L_if_end_7:
        .line 841
        ldloc _F
        ldfld class @block @block_constantdeclaration::_slink
        call instance void @block::Testsemicolon()
    L_while_test_2:
        ldsfld int32 _G::Sy
        ldc.i4 36
        ceq
        brtrue L_while_1
    
    L_Epilogue:
        ret
    }

.line 845

    .method public
    void Typedeclaration()
    {
        .maxstack 32
    
        .locals init(
            class @block_typedeclaration _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_symset $tmpSetLiteral2)
        
        newobj instance void @block_typedeclaration::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block @block_typedeclaration::_slink
    
        ldloca $tmpSetLiteral1
        ldc.i4 36
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 24
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 23
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 36
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 847
        call void Insymbol()
        .line 848
        ldloc _F
        ldfld class @block @block_typedeclaration::_slink
        ldloc $tmpSetLiteral1
        ldsfld valuetype T_symset _G::Blockbegsys
        ldc.i4 2
        call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
        .line 849
        br L_while_test_2
    L_while_1:
        .line 850
        ldloc _F
        ldfld class @block @block_typedeclaration::_slink
        ldsfld valuetype T_alfa _G::Id
        ldc.i4 2
        call instance void @block::Enter(valuetype T_alfa Id, int32 k)
        .line 850
        ldloc _F
        ldsfld int32 _G::t
        stfld int32 @block_typedeclaration::T1
        .line 850
        call void Insymbol()
        .line 851
        ldsfld int32 _G::Sy
        ldc.i4 13
        ceq
        brfalse L_else_3
        .line 851
        call void Insymbol()
        br L_if_end_4
    L_else_3:
        .line 852
        ldc.i4 16
        call void Error(int32 n)
        .line 853
        ldsfld int32 _G::Sy
        ldc.i4 27
        ceq
        brfalse L_if_end_5
        .line 853
        call void Insymbol()
    L_if_end_5:
    L_if_end_4:
        .line 855
        ldloc _F
        ldfld class @block @block_typedeclaration::_slink
        ldloc $tmpSetLiteral2
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc _F
        ldfld class @block @block_typedeclaration::_slink
        ldfld valuetype T_symset @block::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda int32 @block_typedeclaration::Tp
        ldloc _F
        ldflda int32 @block_typedeclaration::Rf
        ldloc _F
        ldflda int32 @block_typedeclaration::Sz
        call instance void @block::Typ(valuetype T_symset Fsys, int32& Tp, int32& Rf, int32& Sz)
        .line 857
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_typedeclaration::T1
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld int32 @block_typedeclaration::Tp
        stfld int32 T_record_86::Typ
        .line 857
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_typedeclaration::T1
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld int32 @block_typedeclaration::Rf
        dup
        ldc.i4 -131071
        ldc.i4 131071
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_record_86::Ref
        .line 857
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_typedeclaration::T1
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld int32 @block_typedeclaration::Sz
        stfld int32 T_record_86::Adr
        .line 859
        ldloc _F
        ldfld class @block @block_typedeclaration::_slink
        call instance void @block::Testsemicolon()
    L_while_test_2:
        ldsfld int32 _G::Sy
        ldc.i4 36
        ceq
        brtrue L_while_1
    
    L_Epilogue:
        ret
    }

.line 863

    .method public
    void Variabledeclaration()
    {
        .maxstack 32
    
        .locals init(
            class @block_variabledeclaration _F,
            valuetype T_symset $tmpSetLiteral1)
        
        newobj instance void @block_variabledeclaration::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block @block_variabledeclaration::_slink
    
        ldloca $tmpSetLiteral1
        ldc.i4 24
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 23
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 36
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 866
        call void Insymbol()
        .line 867
        br L_while_test_2
    L_while_1:
        .line 868
        ldloc _F
        ldsfld int32 _G::t
        stfld int32 @block_variabledeclaration::T0
        .line 868
        ldloc _F
        ldfld class @block @block_variabledeclaration::_slink
        call instance void @block::Entervariable()
        .line 869
        br L_while_test_4
    L_while_3:
        .line 870
        call void Insymbol()
        .line 870
        ldloc _F
        ldfld class @block @block_variabledeclaration::_slink
        call instance void @block::Entervariable()
        /* nop */
    L_while_test_4:
        ldsfld int32 _G::Sy
        ldc.i4 23
        ceq
        brtrue L_while_3
        .line 872
        ldsfld int32 _G::Sy
        ldc.i4 26
        ceq
        brfalse L_else_5
        .line 872
        call void Insymbol()
        br L_if_end_6
    L_else_5:
        .line 872
        ldc.i4 5
        call void Error(int32 n)
    L_if_end_6:
        .line 873
        ldloc _F
        ldsfld int32 _G::t
        stfld int32 @block_variabledeclaration::T1
        .line 874
        ldloc _F
        ldfld class @block @block_variabledeclaration::_slink
        ldloc $tmpSetLiteral1
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc _F
        ldfld class @block @block_variabledeclaration::_slink
        ldfld valuetype T_symset @block::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldflda int32 @block_variabledeclaration::Tp
        ldloc _F
        ldflda int32 @block_variabledeclaration::Rf
        ldloc _F
        ldflda int32 @block_variabledeclaration::Sz
        call instance void @block::Typ(valuetype T_symset Fsys, int32& Tp, int32& Rf, int32& Sz)
        .line 875
        br L_while_test_8
    L_while_7:
        .line 876
        ldloc _F
        ldloc _F
        ldfld int32 @block_variabledeclaration::T0
        ldc.i4 1
        add
        stfld int32 @block_variabledeclaration::T0
        .line 878
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_variabledeclaration::T0
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld int32 @block_variabledeclaration::Tp
        stfld int32 T_record_86::Typ
        .line 878
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_variabledeclaration::T0
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld int32 @block_variabledeclaration::Rf
        dup
        ldc.i4 -131071
        ldc.i4 131071
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int32 T_record_86::Ref
        .line 879
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_variabledeclaration::T0
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld class @block @block_variabledeclaration::_slink
        ldfld int32 @block::Level
        dup
        ldc.i4 0
        ldc.i4 100
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int8 T_record_86::Lev
        .line 879
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_variabledeclaration::T0
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldloc _F
        ldfld class @block @block_variabledeclaration::_slink
        ldfld int32 @block::Dx
        stfld int32 T_record_86::Adr
        .line 879
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_variabledeclaration::T0
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldc.i4 1 // (true)
        stfld bool T_record_86::Normal
        .line 880
        ldloc _F
        ldfld class @block @block_variabledeclaration::_slink
        ldloc _F
        ldfld class @block @block_variabledeclaration::_slink
        ldfld int32 @block::Dx
        ldloc _F
        ldfld int32 @block_variabledeclaration::Sz
        add
        stfld int32 @block::Dx
    L_while_test_8:
        ldloc _F
        ldfld int32 @block_variabledeclaration::T0
        ldloc _F
        ldfld int32 @block_variabledeclaration::T1
        clt
        brtrue L_while_7
        .line 883
        ldloc _F
        ldfld class @block @block_variabledeclaration::_slink
        call instance void @block::Testsemicolon()
    L_while_test_2:
        ldsfld int32 _G::Sy
        ldc.i4 36
        ceq
        brtrue L_while_1
    
    L_Epilogue:
        ret
    }

.line 887

    .method public
    void Procdeclaration()
    {
        .maxstack 32
    
        .locals init(
            class @block_procdeclaration _F,
            valuetype T_symset $tmpSetLiteral1)
        
        newobj instance void @block_procdeclaration::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block @block_procdeclaration::_slink
    
        ldloca $tmpSetLiteral1
        ldc.i4 24
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 889
        ldloc _F
        ldsfld int32 _G::Sy
        ldc.i4 31
        ceq
        stfld bool @block_procdeclaration::Isfun
        .line 889
        call void Insymbol()
        .line 890
        ldsfld int32 _G::Sy
        ldc.i4 36
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_1
        .line 891
        ldc.i4 2
        call void Error(int32 n)
        .line 891
        ldsfld valuetype T_alfa STRING_61    // "          "
        stsfld valuetype T_alfa _G::Id
        /* nop */
    L_if_end_1:
        .line 893
        ldloc _F
        ldfld bool @block_procdeclaration::Isfun
        brfalse L_else_2
        .line 893
        ldloc _F
        ldfld class @block @block_procdeclaration::_slink
        ldsfld valuetype T_alfa _G::Id
        ldc.i4 4
        call instance void @block::Enter(valuetype T_alfa Id, int32 k)
        br L_if_end_3
    L_else_2:
        .line 893
        ldloc _F
        ldfld class @block @block_procdeclaration::_slink
        ldsfld valuetype T_alfa _G::Id
        ldc.i4 3
        call instance void @block::Enter(valuetype T_alfa Id, int32 k)
    L_if_end_3:
        .line 894
        ldsflda valuetype T_array_88 _G::Tab
        ldsfld int32 _G::t
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldc.i4 1 // (true)
        stfld bool T_record_86::Normal
        .line 895
        call void Insymbol()
        .line 895
        ldloc $tmpSetLiteral1
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc _F
        ldfld class @block @block_procdeclaration::_slink
        ldfld valuetype T_symset @block::Fsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldloc _F
        ldfld bool @block_procdeclaration::Isfun
        ldloc _F
        ldfld class @block @block_procdeclaration::_slink
        ldfld int32 @block::Level
        ldc.i4 1
        add
        call void Block(valuetype T_symset Fsys, bool Isfun, int32 Level)
        .line 896
        ldsfld int32 _G::Sy
        ldc.i4 24
        ceq
        brfalse L_else_4
        .line 896
        call void Insymbol()
        br L_if_end_5
    L_else_4:
        .line 896
        ldc.i4 14
        call void Error(int32 n)
    L_if_end_5:
        .line 897
        ldc.i4 32
        ldloc _F
        ldfld bool @block_procdeclaration::Isfun
        add
        call void Emit(int32 Fct)
    
    L_Epilogue:
        ret
    }

.line 900

    .method public
    void Statement(valuetype T_symset Fsys)
    {
        .maxstack 32
    
        .locals init(
            class @block_statement _F,
            valuetype T_symset $tmpSetLiteral1,
            int32 $tmpSwitchValue2,
            int32 $tmpSwitchValue3,
            valuetype T_set_62 $tmpSetLiteral4)
        
        newobj instance void @block_statement::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block @block_statement::_slink
        
        ldloc _F
        ldarg Fsys
        stfld valuetype T_symset @block_statement::Fsys
    
        ldloca $tmpSetLiteral1
        ldc.i4 36
        call instance void T_symset::addValue(int32)
    
    
    L_Entry:
        .line 1450
        ldsfld valuetype T_symset _G::Statbegsys
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        ldloc $tmpSetLiteral1
        call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
        call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
        ldsfld int32 _G::Sy
        call bool _SetContains(valuetype T_set_62 s, int32 val)
        brfalse L_if_end_1
        .line 1451
        ldsfld int32 _G::Sy
        stloc $tmpSwitchValue2
        ldloc $tmpSwitchValue2
        ldc.i4 36
        bne.un L_check_case_3
        .line 1452
        ldloc _F
        ldloc _F
        ldfld class @block @block_statement::_slink
        ldsfld valuetype T_alfa _G::Id
        call instance int32 @block::Loc(valuetype T_alfa Id)
        stfld int32 @block_statement::i
        .line 1452
        call void Insymbol()
        .line 1453
        ldloc _F
        ldfld int32 @block_statement::i
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_4
        .line 1454
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Obj
        stloc $tmpSwitchValue3
        ldloc $tmpSwitchValue3
        ldc.i4 0
        beq L_case_7
        ldloc $tmpSwitchValue3
        ldc.i4 2
        beq L_case_7
        br L_check_case_6
    L_case_7:
        .line 1455
        ldc.i4 45
        call void Error(int32 n)
        br L_case_end_5
    L_check_case_6:
        ldloc $tmpSwitchValue3
        ldc.i4 1
        bne.un L_check_case_8
        .line 1457
        ldloc _F
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int8 T_record_86::Lev
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Adr
        call instance void @block_statement::Assignment(int32 Lv, int32 Ad)
        br L_case_end_5
    L_check_case_8:
        ldloc $tmpSwitchValue3
        ldc.i4 3
        bne.un L_check_case_9
        .line 1459
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int8 T_record_86::Lev
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_10
        .line 1459
        ldloc _F
        ldloc _F
        ldfld valuetype T_symset @block_statement::Fsys
        ldloc _F
        ldfld int32 @block_statement::i
        call instance void @block_statement::Call(valuetype T_symset Fsys, int32 i)
        br L_if_end_11
    L_else_10:
        .line 1460
        ldloc _F
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Adr
        call instance void @block_statement::Standproc(int32 n)
    L_if_end_11:
        br L_case_end_5
    L_check_case_9:
        ldloc $tmpSwitchValue3
        ldc.i4 4
        bne.un L_case_end_5
        .line 1462
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int32 T_record_86::Ref
        ldsflda valuetype T_array_100 _G::Display
        ldloc _F
        ldfld class @block @block_statement::_slink
        ldfld int32 @block::Level
        call instance int32& T_array_100::ldadr(int32)
        ldobj int32
        ceq
        brfalse L_else_12
        .line 1463
        ldloc _F
        ldsflda valuetype T_array_88 _G::Tab
        ldloc _F
        ldfld int32 @block_statement::i
        call instance valuetype T_record_86& T_array_88::ldadr(int32)
        ldfld int8 T_record_86::Lev
        ldc.i4 1
        add
        ldc.i4 0
        call instance void @block_statement::Assignment(int32 Lv, int32 Ad)
        br L_if_end_13
    L_else_12:
        .line 1464
        ldc.i4 45
        call void Error(int32 n)
    L_if_end_13:
    L_case_end_5:
    L_if_end_4:
        br L_case_end_2
    L_check_case_3:
        ldloc $tmpSwitchValue2
        ldc.i4 37
        bne.un L_check_case_14
        .line 1467
        ldloc _F
        call instance void @block_statement::Compoundstatement()
        br L_case_end_2
    L_check_case_14:
        ldloc $tmpSwitchValue2
        ldc.i4 38
        bne.un L_check_case_15
        .line 1468
        ldloc _F
        call instance void @block_statement::Ifstatement()
        br L_case_end_2
    L_check_case_15:
        ldloc $tmpSwitchValue2
        ldc.i4 39
        bne.un L_check_case_16
        .line 1469
        ldloc _F
        call instance void @block_statement::Casestatement()
        br L_case_end_2
    L_check_case_16:
        ldloc $tmpSwitchValue2
        ldc.i4 41
        bne.un L_check_case_17
        .line 1470
        ldloc _F
        call instance void @block_statement::Whilestatement()
        br L_case_end_2
    L_check_case_17:
        ldloc $tmpSwitchValue2
        ldc.i4 40
        bne.un L_check_case_18
        .line 1471
        ldloc _F
        call instance void @block_statement::Repeatstatement()
        br L_case_end_2
    L_check_case_18:
        ldloc $tmpSwitchValue2
        ldc.i4 42
        bne.un L_case_end_2
        .line 1472
        ldloc _F
        call instance void @block_statement::Forstatement()
    L_case_end_2:
    L_if_end_1:
        .line 1474
        ldloc _F
        ldfld class @block @block_statement::_slink
        ldloc _F
        ldfld valuetype T_symset @block_statement::Fsys
        ldloc $tmpSetLiteral4
        dup
        ldc.i4 0
        ldc.i4 50
        call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
        ldc.i4 14
        call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
    
    L_Epilogue:
        ret
    }
}


.line 1515
//================================================================================
// scope: interpret (level : 2)

.line 0xfeefee

// TYPE array_198 = array [1 .. 4] of int32;
.class value explicit T_interpret_array_198
{
    // elem size = 4
    // alignment = 4
    .size 16

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
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

// TYPE record_200 = record;
.class value explicit T_interpret_record_200
{
    // alignment = 8
    .size 8
    
    // case ints = 1
        
        .field [0] public int32 i
    
    // case reals = 2
        
        .field [0] public float64 r
    
    // case bools = 3
        
        .field [0] public bool b
    
    // case chars = 4
        
        .field [0] public uint8 c
    
    // case notyp = 0
    // case arrays = 5
    // case records = 6
}

.line 0xfeefee

// TYPE array_199 = array [1 .. 10000] of valuetype T_interpret_record_200;
.class value explicit T_interpret_array_199
{
    // elem size = 8
    // alignment = 8
    .size 80000

    .field [0] public valuetype T_interpret_record_200 elem

    .method public valuetype T_interpret_record_200& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 10000)
        ldarg index
        ldc.i4 10000
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

.class @interpret
{
    // local variables
    .field public int32 b
    .field public int32 Blkcnt
    .field public int32 Chrcnt
    .field public valuetype T_block_statement_casestatement_array_162 Display
    .field public valuetype T_interpret_array_198 Fld
    .field public int32 H1
    .field public int32 H2
    .field public int32 H3
    .field public int32 H4
    .field public valuetype T_order Ir
    .field public int32 Lncnt
    .field public int32 Ocnt
    .field public int32 Pc
    .field public int32 Ps
    .field public valuetype T_interpret_array_199 s
    .field public int32 t

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 167
//================================================================================
// scope: program scope (level : 1)

// global variables
.class _G
{
    .field public static int32 a
    .field public static valuetype T_array_90 Atab
    .field public static int32 b
    .field public static valuetype T_symset Blockbegsys
    .field public static valuetype T_array_92 Btab
    .field public static int32 C1
    .field public static int32 C2
    .field public static int32 Cc
    .field public static uint8 Ch
    .field public static valuetype T_array_97 Code
    .field public static valuetype T_symset Constbegsys
    .field public static valuetype T_array_100 Display
    .field public static int32 Errpos
    .field public static valuetype T_set_61 Errs
    .field public static valuetype T_symset Facbegsys
    .field public static valuetype T_alfa Id
    .field public static bool Iflag
    .field public static valuetype [lpcRuntime]LPC.File Input
    .field public static int32 Inum
    .field public static valuetype T_array_79 Key
    .field public static valuetype T_array_80 Ksy
    .field public static int32 Lc
    .field public static valuetype T_array_65 Line
    .field public static int32 Ll
    .field public static bool Oflag
    .field public static valuetype [lpcRuntime]LPC.File Output
    .field public static valuetype T_alfa Progname
    .field public static valuetype T_array_93 Rconst
    .field public static float64 Rnum
    .field public static int32 Sleng
    .field public static valuetype T_array_85 Sps
    .field public static valuetype [lpcRuntime]LPC.File Srcfil
    .field public static valuetype T_array_84 Stab
    .field public static valuetype T_typset Stantyps
    .field public static valuetype T_symset Statbegsys
    .field public static int32 Sx
    .field public static int32 Sy
    .field public static int32 t
    .field public static valuetype T_array_88 Tab
    .field public static valuetype T_symset Typebegsys
}

.line 268

.method static
void Errormsg()
{
    .maxstack 32

    .locals init(
        class @errormsg _F,
        valuetype T_set_62 $tmpSetLiteral1,
        valuetype T_set_62 $tmpSetLiteral2)
    
    newobj instance void @errormsg::.ctor()
    stloc _F


L_Entry:
    .line 273
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 0
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_1    // "undef id  "
    stobj valuetype T_alfa
    .line 273
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 1
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_2    // "multi def "
    stobj valuetype T_alfa
    .line 274
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 2
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_3    // "identifier"
    stobj valuetype T_alfa
    .line 274
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 3
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_4    // "program   "
    stobj valuetype T_alfa
    .line 275
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 4
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_5    // ")         "
    stobj valuetype T_alfa
    .line 275
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 5
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_6    // ":         "
    stobj valuetype T_alfa
    .line 276
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 6
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_7    // "syntax    "
    stobj valuetype T_alfa
    .line 276
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 7
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_8    // "ident, var"
    stobj valuetype T_alfa
    .line 277
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 8
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_9    // "of        "
    stobj valuetype T_alfa
    .line 277
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 9
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_10    // "(         "
    stobj valuetype T_alfa
    .line 278
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 10
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_11    // "id, array "
    stobj valuetype T_alfa
    .line 278
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 11
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_12    // "[         "
    stobj valuetype T_alfa
    .line 279
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 12
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_13    // "]         "
    stobj valuetype T_alfa
    .line 279
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 13
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_14    // "..        "
    stobj valuetype T_alfa
    .line 280
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 14
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_15    // ";         "
    stobj valuetype T_alfa
    .line 280
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 15
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_16    // "func. type"
    stobj valuetype T_alfa
    .line 281
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 16
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_17    // "=         "
    stobj valuetype T_alfa
    .line 281
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 17
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_18    // "boolean   "
    stobj valuetype T_alfa
    .line 282
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 18
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_19    // "convar typ"
    stobj valuetype T_alfa
    .line 282
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 19
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_20    // "type      "
    stobj valuetype T_alfa
    .line 283
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 20
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_21    // "prog.param"
    stobj valuetype T_alfa
    .line 283
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 21
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_22    // "too big   "
    stobj valuetype T_alfa
    .line 284
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 22
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_23    // ".         "
    stobj valuetype T_alfa
    .line 284
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 23
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_24    // "typ (case)"
    stobj valuetype T_alfa
    .line 285
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 24
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_25    // "character "
    stobj valuetype T_alfa
    .line 285
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 25
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_26    // "const id  "
    stobj valuetype T_alfa
    .line 286
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 26
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_27    // "index type"
    stobj valuetype T_alfa
    .line 286
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 27
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_28    // "indexbound"
    stobj valuetype T_alfa
    .line 287
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 28
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_29    // "no array  "
    stobj valuetype T_alfa
    .line 287
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 29
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_30    // "type id   "
    stobj valuetype T_alfa
    .line 288
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 30
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_31    // "undef type"
    stobj valuetype T_alfa
    .line 288
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 31
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_32    // "no record "
    stobj valuetype T_alfa
    .line 289
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 32
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_33    // "boole type"
    stobj valuetype T_alfa
    .line 289
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 33
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_34    // "arith type"
    stobj valuetype T_alfa
    .line 290
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 34
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_35    // "integer   "
    stobj valuetype T_alfa
    .line 290
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 35
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_36    // "types     "
    stobj valuetype T_alfa
    .line 291
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 36
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_37    // "param type"
    stobj valuetype T_alfa
    .line 291
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 37
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_38    // "variab id "
    stobj valuetype T_alfa
    .line 292
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 38
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_39    // "string    "
    stobj valuetype T_alfa
    .line 292
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 39
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_40    // "no.of pars"
    stobj valuetype T_alfa
    .line 293
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 40
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_20    // "type      "
    stobj valuetype T_alfa
    .line 293
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 41
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_20    // "type      "
    stobj valuetype T_alfa
    .line 294
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 42
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_41    // "real type "
    stobj valuetype T_alfa
    .line 294
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 43
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_35    // "integer   "
    stobj valuetype T_alfa
    .line 295
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 44
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_42    // "var, const"
    stobj valuetype T_alfa
    .line 295
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 45
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_43    // "var, proc "
    stobj valuetype T_alfa
    .line 296
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 46
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_44    // "types (:=)"
    stobj valuetype T_alfa
    .line 296
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 47
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_24    // "typ (case)"
    stobj valuetype T_alfa
    .line 297
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 48
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_20    // "type      "
    stobj valuetype T_alfa
    .line 297
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 49
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_45    // "store ovfl"
    stobj valuetype T_alfa
    .line 298
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 50
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_46    // "constant  "
    stobj valuetype T_alfa
    .line 298
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 51
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_47    // ":=        "
    stobj valuetype T_alfa
    .line 299
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 52
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_48    // "then      "
    stobj valuetype T_alfa
    .line 299
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 53
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_49    // "until     "
    stobj valuetype T_alfa
    .line 300
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 54
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_50    // "do        "
    stobj valuetype T_alfa
    .line 300
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 55
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_51    // "to downto "
    stobj valuetype T_alfa
    .line 301
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 56
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_52    // "begin     "
    stobj valuetype T_alfa
    .line 301
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 57
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_53    // "end       "
    stobj valuetype T_alfa
    .line 302
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldc.i4 58
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldsfld valuetype T_alfa STRING_54    // "factor    "
    stobj valuetype T_alfa
    .line 303
    ldloc _F
    ldc.i4 0
    stfld int32 @errormsg::k
    .line 303
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 303
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " key words"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 304
    br L_while_test_2
L_while_1:
    .line 305
    br L_while_test_4
L_while_3:
    .line 305
    ldloc _F
    ldloc _F
    ldfld int32 @errormsg::k
    ldc.i4 1
    add
    stfld int32 @errormsg::k
L_while_test_4:
    ldsfld valuetype T_set_61 _G::Errs
    ldloc _F
    ldfld int32 @errormsg::k
    call bool _SetContains(valuetype T_set_61 s, int32 val)
    ldc.i4.0
    ceq
    brtrue L_while_3
    .line 306
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld int32 @errormsg::k
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldstr "  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldloc _F
    ldflda valuetype T_errormsg_array_1 @errormsg::Msg
    ldloc _F
    ldfld int32 @errormsg::k
    call instance valuetype T_alfa& T_errormsg_array_1::ldadr(int32)
    ldobj valuetype T_alfa
    call string T_alfa::arrayToString(valuetype T_alfa)
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 306
    ldloca $tmpSetLiteral1
    call instance void T_set_62::clear()
    ldloca $tmpSetLiteral1
    ldloc _F
    ldfld int32 @errormsg::k
    call instance void T_set_62::addValue(int32)
    ldsfld valuetype T_set_61 _G::Errs
    call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_set_61 s)
    ldloc $tmpSetLiteral1
    call valuetype T_set_62 _SetDifference(valuetype T_set_62 a, valuetype T_set_62 b)
    dup
    ldc.i4 0
    ldc.i4 58
    call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
    call valuetype T_set_61 _SetCastTo_T_set_61(valuetype T_set_62 s)
    stsfld valuetype T_set_61 _G::Errs
L_while_test_2:
    ldsfld valuetype T_set_61 _G::Errs
    call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_set_61 s)
    ldloc $tmpSetLiteral2
    call bool _SetEqual(valuetype T_set_62 a, valuetype T_set_62 b)
    ldc.i4.0
    ceq
    brtrue L_while_1

L_Epilogue:
    ret
}

.line 310

.method static
void Nextch()
{
    .maxstack 32

    .locals init(class @nextch _F)
    
    newobj instance void @nextch::.ctor()
    stloc _F

L_Entry:
    .line 311
    ldsfld int32 _G::Cc
    ldsfld int32 _G::Ll
    ceq
    brfalse L_if_end_1
    .line 312
    ldsflda valuetype [lpcRuntime]LPC.File _G::Srcfil
    call instance bool [lpcRuntime]LPC.File::Eof()
    brfalse L_if_end_2
    .line 313
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 314
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " program incomplete"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 315
    call void Errormsg()
    .line 315
    ldc.i4 1
    newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
    throw
L_if_end_2:
    .line 317
    ldsfld int32 _G::Errpos
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_3
    .line 318
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 318
    ldc.i4 0
    stsfld int32 _G::Errpos
L_if_end_3:
    .line 320
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Lc
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr "  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 321
    ldc.i4 0
    stsfld int32 _G::Ll
    .line 321
    ldc.i4 0
    stsfld int32 _G::Cc
    .line 322
    br L_while_test_5
L_while_4:
    .line 323
    ldsfld int32 _G::Ll
    ldc.i4 1
    add
    stsfld int32 _G::Ll
    .line 323
    ldsflda valuetype [lpcRuntime]LPC.File _G::Srcfil
    dup
    ldsflda uint8 _G::Ch
    ldc.i4 0
    ldc.i4 255
    call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
    pop
    .line 323
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ch
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 323
    ldsflda valuetype T_array_65 _G::Line
    ldsfld int32 _G::Ll
    call instance uint8& T_array_65::ldadr(int32)
    ldsfld uint8 _G::Ch
    stobj uint8
L_while_test_5:
    ldsflda valuetype [lpcRuntime]LPC.File _G::Srcfil
    call instance bool [lpcRuntime]LPC.File::Eoln()
    ldc.i4.0
    ceq
    brtrue L_while_4
    .line 325
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 325
    ldsfld int32 _G::Ll
    ldc.i4 1
    add
    stsfld int32 _G::Ll
    .line 325
    ldsflda valuetype T_array_65 _G::Line
    ldsfld int32 _G::Ll
    call instance uint8& T_array_65::ldadr(int32)
    ldc.i4 32 // ' '
    stobj uint8
    .line 325
    ldsflda valuetype [lpcRuntime]LPC.File _G::Srcfil
    call instance void [lpcRuntime]LPC.File::Get()
    /* nop */
L_if_end_1:
    .line 327
    ldsfld int32 _G::Cc
    ldc.i4 1
    add
    stsfld int32 _G::Cc
    .line 327
    ldsflda valuetype T_array_65 _G::Line
    ldsfld int32 _G::Cc
    call instance uint8& T_array_65::ldadr(int32)
    ldobj uint8
    stsfld uint8 _G::Ch
    /* nop */

L_Epilogue:
    ret
}

.line 330

.method static
void Error(int32 n)
{
    .maxstack 32

    .locals init(
        class @error _F,
        valuetype T_set_62 $tmpSetLiteral1)
    
    newobj instance void @error::.ctor()
    stloc _F
    
    ldloc _F
    ldarg n
    stfld int32 @error::n

L_Entry:
    .line 331
    ldsfld int32 _G::Errpos
    ldc.i4 0
    ceq
    brfalse L_if_end_1
    .line 331
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " ****"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_1:
    .line 332
    ldsfld int32 _G::Cc
    ldsfld int32 _G::Errpos
    cgt
    brfalse L_if_end_2
    .line 333
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld int32 _G::Cc
    ldsfld int32 _G::Errpos
    sub
    ldc.i4.0
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    dup
    ldc.i4 94 // '^'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 2
    ldc.i4.0
    ldloc _F
    ldfld int32 @error::n
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    .line 334
    ldsfld int32 _G::Cc
    ldc.i4 3
    add
    stsfld int32 _G::Errpos
    .line 334
    ldloca $tmpSetLiteral1
    call instance void T_set_62::clear()
    ldloca $tmpSetLiteral1
    ldloc _F
    ldfld int32 @error::n
    call instance void T_set_62::addValue(int32)
    ldsfld valuetype T_set_61 _G::Errs
    call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_set_61 s)
    ldloc $tmpSetLiteral1
    call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
    dup
    ldc.i4 0
    ldc.i4 58
    call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
    call valuetype T_set_61 _SetCastTo_T_set_61(valuetype T_set_62 s)
    stsfld valuetype T_set_61 _G::Errs
L_if_end_2:

L_Epilogue:
    ret
}

.line 338

.method static
void Fatal(int32 n)
{
    .maxstack 32

    .locals init(class @fatal _F)
    
    newobj instance void @fatal::.ctor()
    stloc _F
    
    ldloc _F
    ldarg n
    stfld int32 @fatal::n

L_Entry:
    .line 340
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 340
    call void Errormsg()
    .line 341
    ldloc _F
    ldflda valuetype T_fatal_array_67 @fatal::Msg
    ldc.i4 1
    call instance valuetype T_alfa& T_fatal_array_67::ldadr(int32)
    ldsfld valuetype T_alfa STRING_3    // "identifier"
    stobj valuetype T_alfa
    .line 341
    ldloc _F
    ldflda valuetype T_fatal_array_67 @fatal::Msg
    ldc.i4 2
    call instance valuetype T_alfa& T_fatal_array_67::ldadr(int32)
    ldsfld valuetype T_alfa STRING_55    // "procedures"
    stobj valuetype T_alfa
    .line 342
    ldloc _F
    ldflda valuetype T_fatal_array_67 @fatal::Msg
    ldc.i4 3
    call instance valuetype T_alfa& T_fatal_array_67::ldadr(int32)
    ldsfld valuetype T_alfa STRING_56    // "reals     "
    stobj valuetype T_alfa
    .line 342
    ldloc _F
    ldflda valuetype T_fatal_array_67 @fatal::Msg
    ldc.i4 4
    call instance valuetype T_alfa& T_fatal_array_67::ldadr(int32)
    ldsfld valuetype T_alfa STRING_57    // "arrays    "
    stobj valuetype T_alfa
    .line 343
    ldloc _F
    ldflda valuetype T_fatal_array_67 @fatal::Msg
    ldc.i4 5
    call instance valuetype T_alfa& T_fatal_array_67::ldadr(int32)
    ldsfld valuetype T_alfa STRING_58    // "levels    "
    stobj valuetype T_alfa
    .line 343
    ldloc _F
    ldflda valuetype T_fatal_array_67 @fatal::Msg
    ldc.i4 6
    call instance valuetype T_alfa& T_fatal_array_67::ldadr(int32)
    ldsfld valuetype T_alfa STRING_59    // "code      "
    stobj valuetype T_alfa
    .line 344
    ldloc _F
    ldflda valuetype T_fatal_array_67 @fatal::Msg
    ldc.i4 7
    call instance valuetype T_alfa& T_fatal_array_67::ldadr(int32)
    ldsfld valuetype T_alfa STRING_60    // "strings   "
    stobj valuetype T_alfa
    .line 345
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " compiler table for "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldloc _F
    ldflda valuetype T_fatal_array_67 @fatal::Msg
    ldloc _F
    ldfld int32 @fatal::n
    call instance valuetype T_alfa& T_fatal_array_67::ldadr(int32)
    ldobj valuetype T_alfa
    call string T_alfa::arrayToString(valuetype T_alfa)
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr " is too small"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 346
    ldc.i4 1
    newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
    throw

L_Epilogue:
    ret
}

.line 349

.method static
void Insymbol()
{
    .maxstack 32

    .locals init(
        class @insymbol _F,
        valuetype T_set_62 $tmpSetLiteral1,
        valuetype T_set_62 $tmpSetLiteral2,
        valuetype T_set_62 $tmpSetLiteral3,
        valuetype T_set_62 $tmpSetLiteral4,
        valuetype T_set_62 $tmpSetLiteral5,
        uint8 $tmpSwitchValue6)
    
    newobj instance void @insymbol::.ctor()
    stloc _F

    ldloca $tmpSetLiteral1
    ldc.i4 97 // 'a'
    ldc.i4 122 // 'z'
    call instance void T_set_62::addRange(int32, int32)

    ldloca $tmpSetLiteral2
    ldc.i4 97 // 'a'
    ldc.i4 122 // 'z'
    call instance void T_set_62::addRange(int32, int32)
    ldloca $tmpSetLiteral2
    ldc.i4 48 // '0'
    ldc.i4 57 // '9'
    call instance void T_set_62::addRange(int32, int32)

    ldloca $tmpSetLiteral3
    ldc.i4 48 // '0'
    ldc.i4 57 // '9'
    call instance void T_set_62::addRange(int32, int32)

    ldloca $tmpSetLiteral4
    ldc.i4 48 // '0'
    ldc.i4 57 // '9'
    call instance void T_set_62::addRange(int32, int32)

    ldloca $tmpSetLiteral5
    ldc.i4 48 // '0'
    ldc.i4 57 // '9'
    call instance void T_set_62::addRange(int32, int32)

L_Entry:
    .line 380
L_1:
    br L_while_test_2
L_while_1:
    .line 380
    call void Nextch()
L_while_test_2:
    ldsfld uint8 _G::Ch
    ldc.i4 32 // ' '
    ceq
    brtrue L_while_1
    .line 381
    ldloc $tmpSetLiteral1
    ldsfld uint8 _G::Ch
    call bool _SetContains(valuetype T_set_62 s, int32 val)
    brfalse L_else_3
    .line 382
    ldloc _F
    ldc.i4 0
    stfld int32 @insymbol::k
    .line 382
    ldsfld valuetype T_alfa STRING_61    // "          "
    stsfld valuetype T_alfa _G::Id
    .line 383
L_repeat_5:
    .line 383
    ldloc _F
    ldfld int32 @insymbol::k
    ldc.i4 10
    clt
    brfalse L_if_end_6
    .line 384
    ldloc _F
    ldloc _F
    ldfld int32 @insymbol::k
    ldc.i4 1
    add
    stfld int32 @insymbol::k
    .line 384
    ldsflda valuetype T_alfa _G::Id
    ldloc _F
    ldfld int32 @insymbol::k
    call instance uint8& T_alfa::ldadr(int32)
    ldsfld uint8 _G::Ch
    stobj uint8
L_if_end_6:
    .line 386
    call void Nextch()
    ldloc $tmpSetLiteral2
    ldsfld uint8 _G::Ch
    call bool _SetContains(valuetype T_set_62 s, int32 val)
    ldc.i4.0
    ceq
    brfalse L_repeat_5
    .line 388
    ldloc _F
    ldc.i4 1
    stfld int32 @insymbol::i
    .line 388
    ldloc _F
    ldc.i4 27
    stfld int32 @insymbol::j
    .line 389
L_repeat_7:
    .line 389
    ldloc _F
    ldloc _F
    ldfld int32 @insymbol::i
    ldloc _F
    ldfld int32 @insymbol::j
    add
    ldc.i4 2
    div
    stfld int32 @insymbol::k
    .line 390
    ldsfld valuetype T_alfa _G::Id
    call string T_alfa::arrayToString(valuetype T_alfa)
    ldsflda valuetype T_array_79 _G::Key
    ldloc _F
    ldfld int32 @insymbol::k
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldobj valuetype T_alfa
    call string T_alfa::arrayToString(valuetype T_alfa)
    call bool [lpcRuntime]LPC.Helpers::StrcmpLE(string, string)
    brfalse L_if_end_8
    .line 390
    ldloc _F
    ldloc _F
    ldfld int32 @insymbol::k
    ldc.i4 1
    sub
    stfld int32 @insymbol::j
L_if_end_8:
    .line 391
    ldsfld valuetype T_alfa _G::Id
    call string T_alfa::arrayToString(valuetype T_alfa)
    ldsflda valuetype T_array_79 _G::Key
    ldloc _F
    ldfld int32 @insymbol::k
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldobj valuetype T_alfa
    call string T_alfa::arrayToString(valuetype T_alfa)
    call bool [lpcRuntime]LPC.Helpers::StrcmpGE(string, string)
    brfalse L_if_end_9
    .line 391
    ldloc _F
    ldloc _F
    ldfld int32 @insymbol::k
    ldc.i4 1
    add
    stfld int32 @insymbol::i
L_if_end_9:
    ldloc _F
    ldfld int32 @insymbol::i
    ldloc _F
    ldfld int32 @insymbol::j
    cgt
    brfalse L_repeat_7
    .line 393
    ldloc _F
    ldfld int32 @insymbol::i
    ldc.i4 1
    sub
    ldloc _F
    ldfld int32 @insymbol::j
    cgt
    brfalse L_else_10
    .line 393
    ldsflda valuetype T_array_80 _G::Ksy
    ldloc _F
    ldfld int32 @insymbol::k
    call instance int32& T_array_80::ldadr(int32)
    ldobj int32
    stsfld int32 _G::Sy
    br L_if_end_11
L_else_10:
    .line 393
    ldc.i4 36
    stsfld int32 _G::Sy
L_if_end_11:
    br L_if_end_4
L_else_3:
    .line 395
    ldloc $tmpSetLiteral3
    ldsfld uint8 _G::Ch
    call bool _SetContains(valuetype T_set_62 s, int32 val)
    brfalse L_else_12
    .line 396
    ldloc _F
    ldc.i4 0
    stfld int32 @insymbol::k
    .line 396
    ldc.i4 0
    stsfld int32 _G::Inum
    .line 396
    ldc.i4 0
    stsfld int32 _G::Sy
    .line 397
L_repeat_14:
    .line 397
    ldsfld int32 _G::Inum
    ldc.i4 10
    mul
    ldsfld uint8 _G::Ch
    add
    ldc.i4 48 // '0'
    sub
    stsfld int32 _G::Inum
    .line 398
    ldloc _F
    ldloc _F
    ldfld int32 @insymbol::k
    ldc.i4 1
    add
    stfld int32 @insymbol::k
    .line 398
    call void Nextch()
    ldloc $tmpSetLiteral4
    ldsfld uint8 _G::Ch
    call bool _SetContains(valuetype T_set_62 s, int32 val)
    ldc.i4.0
    ceq
    brfalse L_repeat_14
    .line 400
    ldloc _F
    ldfld int32 @insymbol::k
    ldc.i4 15
    cgt
    dup
    brtrue L_OR_shortcut_15
    pop
    ldsfld int32 _G::Inum
    ldc.i4 2147483647
    cgt
L_OR_shortcut_15:
    brfalse L_if_end_16
    .line 401
    ldc.i4 21
    call void Error(int32 n)
    .line 401
    ldc.i4 0
    stsfld int32 _G::Inum
    .line 401
    ldloc _F
    ldc.i4 0
    stfld int32 @insymbol::k
L_if_end_16:
    .line 403
    ldsfld uint8 _G::Ch
    ldc.i4 46 // '.'
    ceq
    brfalse L_else_17
    .line 404
    call void Nextch()
    .line 405
    ldsfld uint8 _G::Ch
    ldc.i4 46 // '.'
    ceq
    brfalse L_else_19
    .line 405
    ldc.i4 58 // ':'
    stsfld uint8 _G::Ch
    br L_if_end_20
L_else_19:
    .line 406
    ldc.i4 1
    stsfld int32 _G::Sy
    .line 406
    ldsfld int32 _G::Inum
    conv.r8
    stsfld float64 _G::Rnum
    .line 406
    ldloc _F
    ldc.i4 0
    stfld int32 @insymbol::e
    .line 407
    br L_while_test_22
L_while_21:
    .line 408
    ldloc _F
    ldloc _F
    ldfld int32 @insymbol::e
    ldc.i4 1
    sub
    stfld int32 @insymbol::e
    .line 409
    ldc.r8 10.0000
    ldsfld float64 _G::Rnum
    mul
    ldsfld uint8 _G::Ch
    ldc.i4 48 // '0'
    sub
    conv.r8
    add
    stsfld float64 _G::Rnum
    .line 409
    call void Nextch()
L_while_test_22:
    ldloc $tmpSetLiteral5
    ldsfld uint8 _G::Ch
    call bool _SetContains(valuetype T_set_62 s, int32 val)
    brtrue L_while_21
    .line 411
    ldsfld uint8 _G::Ch
    ldc.i4 101 // 'e'
    ceq
    brfalse L_if_end_23
    .line 411
    ldloc _F
    call instance void @insymbol::Readscale()
L_if_end_23:
    .line 412
    ldloc _F
    ldfld int32 @insymbol::e
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_24
    .line 412
    ldloc _F
    call instance void @insymbol::Adjustscale()
L_if_end_24:
L_if_end_20:
    br L_if_end_18
L_else_17:
    .line 415
    ldsfld uint8 _G::Ch
    ldc.i4 101 // 'e'
    ceq
    brfalse L_if_end_25
    .line 416
    ldc.i4 1
    stsfld int32 _G::Sy
    .line 416
    ldsfld int32 _G::Inum
    conv.r8
    stsfld float64 _G::Rnum
    .line 416
    ldloc _F
    ldc.i4 0
    stfld int32 @insymbol::e
    .line 417
    ldloc _F
    call instance void @insymbol::Readscale()
    .line 417
    ldloc _F
    ldfld int32 @insymbol::e
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_26
    .line 417
    ldloc _F
    call instance void @insymbol::Adjustscale()
L_if_end_26:
L_if_end_25:
L_if_end_18:
    /* nop */
    br L_if_end_13
L_else_12:
    .line 420
    ldsfld uint8 _G::Ch
    stloc $tmpSwitchValue6
    ldloc $tmpSwitchValue6
    ldc.i4 58 // ':'
    bne.un L_check_case_28
    .line 421
    call void Nextch()
    .line 422
    ldsfld uint8 _G::Ch
    ldc.i4 61 // '='
    ceq
    brfalse L_else_29
    .line 423
    ldc.i4 27
    stsfld int32 _G::Sy
    .line 423
    call void Nextch()
    br L_if_end_30
L_else_29:
    .line 424
    ldc.i4 26
    stsfld int32 _G::Sy
L_if_end_30:
    br L_case_end_27
L_check_case_28:
    ldloc $tmpSwitchValue6
    ldc.i4 60 // '<'
    bne.un L_check_case_31
    .line 426
    call void Nextch()
    .line 427
    ldsfld uint8 _G::Ch
    ldc.i4 61 // '='
    ceq
    brfalse L_else_32
    .line 427
    ldc.i4 18
    stsfld int32 _G::Sy
    .line 427
    call void Nextch()
    br L_if_end_33
L_else_32:
    .line 428
    ldsfld uint8 _G::Ch
    ldc.i4 62 // '>'
    ceq
    brfalse L_else_34
    .line 428
    ldc.i4 14
    stsfld int32 _G::Sy
    .line 428
    call void Nextch()
    br L_if_end_35
L_else_34:
    .line 428
    ldc.i4 17
    stsfld int32 _G::Sy
L_if_end_35:
L_if_end_33:
    br L_case_end_27
L_check_case_31:
    ldloc $tmpSwitchValue6
    ldc.i4 62 // '>'
    bne.un L_check_case_36
    .line 430
    call void Nextch()
    .line 431
    ldsfld uint8 _G::Ch
    ldc.i4 61 // '='
    ceq
    brfalse L_else_37
    .line 431
    ldc.i4 16
    stsfld int32 _G::Sy
    .line 431
    call void Nextch()
    br L_if_end_38
L_else_37:
    .line 431
    ldc.i4 15
    stsfld int32 _G::Sy
L_if_end_38:
    br L_case_end_27
L_check_case_36:
    ldloc $tmpSwitchValue6
    ldc.i4 46 // '.'
    bne.un L_check_case_39
    .line 433
    call void Nextch()
    .line 434
    ldsfld uint8 _G::Ch
    ldc.i4 46 // '.'
    ceq
    brfalse L_else_40
    .line 435
    ldc.i4 26
    stsfld int32 _G::Sy
    .line 435
    call void Nextch()
    br L_if_end_41
L_else_40:
    .line 436
    ldc.i4 25
    stsfld int32 _G::Sy
L_if_end_41:
    br L_case_end_27
L_check_case_39:
    ldloc $tmpSwitchValue6
    ldc.i4 39 // '''
    bne.un L_check_case_42
    .line 438
    ldloc _F
    ldc.i4 0
    stfld int32 @insymbol::k
    .line 439
L_2:
    call void Nextch()
    .line 440
    ldsfld uint8 _G::Ch
    ldc.i4 39 // '''
    ceq
    brfalse L_if_end_43
    .line 441
    call void Nextch()
    .line 441
    ldsfld uint8 _G::Ch
    ldc.i4 39 // '''
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_44
    .line 441
    br L_3
L_if_end_44:
L_if_end_43:
    .line 443
    ldsfld int32 _G::Sx
    ldloc _F
    ldfld int32 @insymbol::k
    add
    ldc.i4 10000
    ceq
    brfalse L_if_end_45
    .line 443
    ldc.i4 7
    call void Fatal(int32 n)
L_if_end_45:
    .line 444
    ldsflda valuetype T_array_84 _G::Stab
    ldsfld int32 _G::Sx
    ldloc _F
    ldfld int32 @insymbol::k
    add
    call instance uint8& T_array_84::ldadr(int32)
    ldsfld uint8 _G::Ch
    stobj uint8
    .line 444
    ldloc _F
    ldloc _F
    ldfld int32 @insymbol::k
    ldc.i4 1
    add
    stfld int32 @insymbol::k
    .line 445
    ldsfld int32 _G::Cc
    ldc.i4 1
    ceq
    brfalse L_else_46
    .line 446
    ldloc _F
    ldc.i4 0
    stfld int32 @insymbol::k
    /* nop */
    br L_if_end_47
L_else_46:
    .line 448
    br L_2
L_if_end_47:
    .line 449
L_3:
    ldloc _F
    ldfld int32 @insymbol::k
    ldc.i4 1
    ceq
    brfalse L_else_48
    .line 450
    ldc.i4 2
    stsfld int32 _G::Sy
    .line 450
    ldsflda valuetype T_array_84 _G::Stab
    ldsfld int32 _G::Sx
    call instance uint8& T_array_84::ldadr(int32)
    ldobj uint8
    stsfld int32 _G::Inum
    br L_if_end_49
L_else_48:
    .line 452
    ldloc _F
    ldfld int32 @insymbol::k
    ldc.i4 0
    ceq
    brfalse L_else_50
    .line 453
    ldc.i4 38
    call void Error(int32 n)
    .line 453
    ldc.i4 2
    stsfld int32 _G::Sy
    .line 453
    ldc.i4 0
    stsfld int32 _G::Inum
    br L_if_end_51
L_else_50:
    .line 455
    ldc.i4 3
    stsfld int32 _G::Sy
    .line 455
    ldsfld int32 _G::Sx
    stsfld int32 _G::Inum
    .line 455
    ldloc _F
    ldfld int32 @insymbol::k
    stsfld int32 _G::Sleng
    .line 455
    ldsfld int32 _G::Sx
    ldloc _F
    ldfld int32 @insymbol::k
    add
    stsfld int32 _G::Sx
L_if_end_51:
L_if_end_49:
    br L_case_end_27
L_check_case_42:
    ldloc $tmpSwitchValue6
    ldc.i4 40 // '('
    bne.un L_check_case_52
    .line 458
    call void Nextch()
    .line 459
    ldsfld uint8 _G::Ch
    ldc.i4 42 // '*'
    ceq
    ldc.i4.0
    ceq
    brfalse L_else_53
    .line 459
    ldc.i4 19
    stsfld int32 _G::Sy
    br L_if_end_54
L_else_53:
    .line 460
    call void Nextch()
    .line 461
L_repeat_55:
    .line 462
    br L_while_test_57
L_while_56:
    .line 462
    call void Nextch()
L_while_test_57:
    ldsfld uint8 _G::Ch
    ldc.i4 42 // '*'
    ceq
    ldc.i4.0
    ceq
    brtrue L_while_56
    .line 463
    call void Nextch()
    ldsfld uint8 _G::Ch
    ldc.i4 41 // ')'
    ceq
    brfalse L_repeat_55
    .line 465
    call void Nextch()
    .line 465
    br L_1
L_if_end_54:
    br L_case_end_27
L_check_case_52:
    ldloc $tmpSwitchValue6
    ldc.i4 43 // '+'
    beq L_case_59
    ldloc $tmpSwitchValue6
    ldc.i4 45 // '-'
    beq L_case_59
    ldloc $tmpSwitchValue6
    ldc.i4 42 // '*'
    beq L_case_59
    ldloc $tmpSwitchValue6
    ldc.i4 47 // '/'
    beq L_case_59
    ldloc $tmpSwitchValue6
    ldc.i4 41 // ')'
    beq L_case_59
    ldloc $tmpSwitchValue6
    ldc.i4 61 // '='
    beq L_case_59
    ldloc $tmpSwitchValue6
    ldc.i4 44 // ','
    beq L_case_59
    ldloc $tmpSwitchValue6
    ldc.i4 91 // '['
    beq L_case_59
    ldloc $tmpSwitchValue6
    ldc.i4 93 // ']'
    beq L_case_59
    ldloc $tmpSwitchValue6
    ldc.i4 35 // '#'
    beq L_case_59
    ldloc $tmpSwitchValue6
    ldc.i4 38 // '&'
    beq L_case_59
    ldloc $tmpSwitchValue6
    ldc.i4 59 // ';'
    beq L_case_59
    br L_check_case_58
L_case_59:
    .line 469
    ldsflda valuetype T_array_85 _G::Sps
    ldsfld uint8 _G::Ch
    call instance int32& T_array_85::ldadr(int32)
    ldobj int32
    stsfld int32 _G::Sy
    .line 469
    call void Nextch()
    br L_case_end_27
L_check_case_58:
    ldloc $tmpSwitchValue6
    ldc.i4 36 // '$'
    beq L_case_60
    ldloc $tmpSwitchValue6
    ldc.i4 37 // '%'
    beq L_case_60
    ldloc $tmpSwitchValue6
    ldc.i4 64 // '@'
    beq L_case_60
    ldloc $tmpSwitchValue6
    ldc.i4 92 // '\'
    beq L_case_60
    ldloc $tmpSwitchValue6
    ldc.i4 126 // '~'
    beq L_case_60
    ldloc $tmpSwitchValue6
    ldc.i4 123 // '{'
    beq L_case_60
    ldloc $tmpSwitchValue6
    ldc.i4 125 // '}'
    beq L_case_60
    ldloc $tmpSwitchValue6
    ldc.i4 94 // '^'
    beq L_case_60
    br L_case_end_27
L_case_60:
    .line 472
    ldc.i4 24
    call void Error(int32 n)
    .line 472
    call void Nextch()
    .line 472
    br L_1
L_case_end_27:
L_if_end_13:
L_if_end_4:

L_Epilogue:
    ret
}

.line 477

.method static
void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
{
    .maxstack 32

    .locals init(class @enter _F)
    
    newobj instance void @enter::.ctor()
    stloc _F
    
    ldloc _F
    ldarg X0
    stfld valuetype T_alfa @enter::X0
    
    ldloc _F
    ldarg X1
    stfld int32 @enter::X1
    
    ldloc _F
    ldarg X2
    stfld int32 @enter::X2
    
    ldloc _F
    ldarg X3
    stfld int32 @enter::X3

L_Entry:
    .line 479
    ldsfld int32 _G::t
    ldc.i4 1
    add
    stsfld int32 _G::t
    .line 481
    ldsflda valuetype T_array_88 _G::Tab
    ldsfld int32 _G::t
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldloc _F
    ldfld valuetype T_alfa @enter::X0
    stfld valuetype T_alfa T_record_86::Name
    .line 481
    ldsflda valuetype T_array_88 _G::Tab
    ldsfld int32 _G::t
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldsfld int32 _G::t
    ldc.i4 1
    sub
    dup
    ldc.i4 -131071
    ldc.i4 131071
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 T_record_86::Link
    .line 481
    ldsflda valuetype T_array_88 _G::Tab
    ldsfld int32 _G::t
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldloc _F
    ldfld int32 @enter::X1
    stfld int32 T_record_86::Obj
    .line 482
    ldsflda valuetype T_array_88 _G::Tab
    ldsfld int32 _G::t
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldloc _F
    ldfld int32 @enter::X2
    stfld int32 T_record_86::Typ
    .line 482
    ldsflda valuetype T_array_88 _G::Tab
    ldsfld int32 _G::t
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldc.i4 0
    dup
    ldc.i4 -131071
    ldc.i4 131071
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 T_record_86::Ref
    .line 482
    ldsflda valuetype T_array_88 _G::Tab
    ldsfld int32 _G::t
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldc.i4 1 // (true)
    stfld bool T_record_86::Normal
    .line 483
    ldsflda valuetype T_array_88 _G::Tab
    ldsfld int32 _G::t
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldc.i4 0
    dup
    ldc.i4 0
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_record_86::Lev
    .line 483
    ldsflda valuetype T_array_88 _G::Tab
    ldsfld int32 _G::t
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldloc _F
    ldfld int32 @enter::X3
    stfld int32 T_record_86::Adr

L_Epilogue:
    ret
}

.line 487

.method static
void Enterarray(int32 Tp, int32 l, int32 h)
{
    .maxstack 32

    .locals init(class @enterarray _F)
    
    newobj instance void @enterarray::.ctor()
    stloc _F
    
    ldloc _F
    ldarg h
    stfld int32 @enterarray::h
    
    ldloc _F
    ldarg l
    stfld int32 @enterarray::l
    
    ldloc _F
    ldarg Tp
    stfld int32 @enterarray::Tp

L_Entry:
    .line 488
    ldloc _F
    ldfld int32 @enterarray::l
    ldloc _F
    ldfld int32 @enterarray::h
    cgt
    brfalse L_if_end_1
    .line 488
    ldc.i4 27
    call void Error(int32 n)
L_if_end_1:
    .line 489
    ldloc _F
    ldfld int32 @enterarray::l
    dup
    ldc.i4 0
    bge L_abs_question_3
    neg
L_abs_question_3:
    ldc.i4 131071
    cgt
    dup
    brtrue L_OR_shortcut_2
    pop
    ldloc _F
    ldfld int32 @enterarray::h
    dup
    ldc.i4 0
    bge L_abs_question_4
    neg
L_abs_question_4:
    ldc.i4 131071
    cgt
L_OR_shortcut_2:
    brfalse L_if_end_5
    .line 490
    ldc.i4 27
    call void Error(int32 n)
    .line 490
    ldloc _F
    ldc.i4 0
    stfld int32 @enterarray::l
    .line 490
    ldloc _F
    ldc.i4 0
    stfld int32 @enterarray::h
    /* nop */
L_if_end_5:
    .line 492
    ldsfld int32 _G::a
    ldc.i4 100
    ceq
    brfalse L_else_6
    .line 492
    ldc.i4 4
    call void Fatal(int32 n)
    br L_if_end_7
L_else_6:
    .line 493
    ldsfld int32 _G::a
    ldc.i4 1
    add
    stsfld int32 _G::a
    .line 495
    ldsflda valuetype T_array_90 _G::Atab
    ldsfld int32 _G::a
    call instance valuetype T_record_89& T_array_90::ldadr(int32)
    ldloc _F
    ldfld int32 @enterarray::Tp
    stfld int32 T_record_89::Inxtyp
    .line 495
    ldsflda valuetype T_array_90 _G::Atab
    ldsfld int32 _G::a
    call instance valuetype T_record_89& T_array_90::ldadr(int32)
    ldloc _F
    ldfld int32 @enterarray::l
    dup
    ldc.i4 -131071
    ldc.i4 131071
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 T_record_89::Low
    .line 495
    ldsflda valuetype T_array_90 _G::Atab
    ldsfld int32 _G::a
    call instance valuetype T_record_89& T_array_90::ldadr(int32)
    ldloc _F
    ldfld int32 @enterarray::h
    dup
    ldc.i4 -131071
    ldc.i4 131071
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 T_record_89::High
L_if_end_7:

L_Epilogue:
    ret
}

.line 500

.method static
void Enterblock()
{
    .maxstack 32

    .locals init(class @enterblock _F)
    
    newobj instance void @enterblock::.ctor()
    stloc _F

L_Entry:
    .line 501
    ldsfld int32 _G::b
    ldc.i4 100
    ceq
    brfalse L_else_1
    .line 501
    ldc.i4 2
    call void Fatal(int32 n)
    br L_if_end_2
L_else_1:
    .line 502
    ldsfld int32 _G::b
    ldc.i4 1
    add
    stsfld int32 _G::b
    .line 502
    ldsflda valuetype T_array_92 _G::Btab
    ldsfld int32 _G::b
    call instance valuetype T_record_91& T_array_92::ldadr(int32)
    ldc.i4 0
    dup
    ldc.i4 -131071
    ldc.i4 131071
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 T_record_91::Last
    .line 502
    ldsflda valuetype T_array_92 _G::Btab
    ldsfld int32 _G::b
    call instance valuetype T_record_91& T_array_92::ldadr(int32)
    ldc.i4 0
    dup
    ldc.i4 -131071
    ldc.i4 131071
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 T_record_91::Lastpar
L_if_end_2:

L_Epilogue:
    ret
}

.line 506

.method static
void Enterreal(float64 x)
{
    .maxstack 32

    .locals init(class @enterreal _F)
    
    newobj instance void @enterreal::.ctor()
    stloc _F
    
    ldloc _F
    ldarg x
    stfld float64 @enterreal::x

L_Entry:
    .line 507
    ldsfld int32 _G::C2
    ldc.i4 100
    ldc.i4 1
    sub
    ceq
    brfalse L_else_1
    .line 507
    ldc.i4 3
    call void Fatal(int32 n)
    br L_if_end_2
L_else_1:
    .line 508
    ldsflda valuetype T_array_93 _G::Rconst
    ldsfld int32 _G::C2
    ldc.i4 1
    add
    call instance float64& T_array_93::ldadr(int32)
    ldloc _F
    ldfld float64 @enterreal::x
    stobj float64
    .line 508
    ldc.i4 1
    stsfld int32 _G::C1
    .line 509
    br L_while_test_4
L_while_3:
    .line 509
    ldsfld int32 _G::C1
    ldc.i4 1
    add
    stsfld int32 _G::C1
L_while_test_4:
    ldsflda valuetype T_array_93 _G::Rconst
    ldsfld int32 _G::C1
    call instance float64& T_array_93::ldadr(int32)
    ldobj float64
    ldloc _F
    ldfld float64 @enterreal::x
    ceq
    ldc.i4.0
    ceq
    brtrue L_while_3
    .line 510
    ldsfld int32 _G::C1
    ldsfld int32 _G::C2
    cgt
    brfalse L_if_end_5
    .line 510
    ldsfld int32 _G::C1
    stsfld int32 _G::C2
L_if_end_5:
L_if_end_2:

L_Epilogue:
    ret
}

.line 514

.method static
void Emit(int32 Fct)
{
    .maxstack 32

    .locals init(class @emit _F)
    
    newobj instance void @emit::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Fct
    stfld int32 @emit::Fct

L_Entry:
    .line 515
    ldsfld int32 _G::Lc
    ldc.i4 10000
    ceq
    brfalse L_if_end_1
    .line 515
    ldc.i4 6
    call void Fatal(int32 n)
L_if_end_1:
    .line 516
    ldsflda valuetype T_array_97 _G::Code
    ldsfld int32 _G::Lc
    call instance valuetype T_order& T_array_97::ldadr(int32)
    ldloc _F
    ldfld int32 @emit::Fct
    dup
    ldc.i4 -63
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_order::f
    .line 516
    ldsfld int32 _G::Lc
    ldc.i4 1
    add
    stsfld int32 _G::Lc

L_Epilogue:
    ret
}

.line 519

.method static
void Emit1(int32 Fct, int32 b)
{
    .maxstack 32

    .locals init(class @emit1 _F)
    
    newobj instance void @emit1::.ctor()
    stloc _F
    
    ldloc _F
    ldarg b
    stfld int32 @emit1::b
    
    ldloc _F
    ldarg Fct
    stfld int32 @emit1::Fct

L_Entry:
    .line 520
    ldsfld int32 _G::Lc
    ldc.i4 10000
    ceq
    brfalse L_if_end_1
    .line 520
    ldc.i4 6
    call void Fatal(int32 n)
L_if_end_1:
    .line 522
    ldsflda valuetype T_array_97 _G::Code
    ldsfld int32 _G::Lc
    call instance valuetype T_order& T_array_97::ldadr(int32)
    ldloc _F
    ldfld int32 @emit1::Fct
    dup
    ldc.i4 -63
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_order::f
    .line 522
    ldsflda valuetype T_array_97 _G::Code
    ldsfld int32 _G::Lc
    call instance valuetype T_order& T_array_97::ldadr(int32)
    ldloc _F
    ldfld int32 @emit1::b
    dup
    ldc.i4 -2147483647
    ldc.i4 2147483647
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 T_order::y
    .line 523
    ldsfld int32 _G::Lc
    ldc.i4 1
    add
    stsfld int32 _G::Lc

L_Epilogue:
    ret
}

.line 526

.method static
void Emit2(int32 Fct, int32 a, int32 b)
{
    .maxstack 32

    .locals init(class @emit2 _F)
    
    newobj instance void @emit2::.ctor()
    stloc _F
    
    ldloc _F
    ldarg a
    stfld int32 @emit2::a
    
    ldloc _F
    ldarg b
    stfld int32 @emit2::b
    
    ldloc _F
    ldarg Fct
    stfld int32 @emit2::Fct

L_Entry:
    .line 527
    ldsfld int32 _G::Lc
    ldc.i4 10000
    ceq
    brfalse L_if_end_1
    .line 527
    ldc.i4 6
    call void Fatal(int32 n)
L_if_end_1:
    .line 529
    ldsflda valuetype T_array_97 _G::Code
    ldsfld int32 _G::Lc
    call instance valuetype T_order& T_array_97::ldadr(int32)
    ldloc _F
    ldfld int32 @emit2::Fct
    dup
    ldc.i4 -63
    ldc.i4 63
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_order::f
    .line 529
    ldsflda valuetype T_array_97 _G::Code
    ldsfld int32 _G::Lc
    call instance valuetype T_order& T_array_97::ldadr(int32)
    ldloc _F
    ldfld int32 @emit2::a
    dup
    ldc.i4 -100
    ldc.i4 100
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_order::x
    .line 529
    ldsflda valuetype T_array_97 _G::Code
    ldsfld int32 _G::Lc
    call instance valuetype T_order& T_array_97::ldadr(int32)
    ldloc _F
    ldfld int32 @emit2::b
    dup
    ldc.i4 -2147483647
    ldc.i4 2147483647
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 T_order::y
    .line 530
    ldsfld int32 _G::Lc
    ldc.i4 1
    add
    stsfld int32 _G::Lc

L_Epilogue:
    ret
}

.line 533

.method static
void Printtables()
{
    .maxstack 32

    .locals init(
        class @printtables _F,
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
    
    newobj instance void @printtables::.ctor()
    stloc _F

L_Entry:
    .line 537
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "identifiers     link  obj  typ  ref  nrm  lev  adr"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 538
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 539
    ldsfld int32 _G::t
    stloc $tmpEndValue1
    ldsflda valuetype T_array_92 _G::Btab
    ldc.i4 1
    call instance valuetype T_record_91& T_array_92::ldadr(int32)
    ldfld int32 T_record_91::Last
    ldc.i4 1
    add
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @printtables::i
L_for_loop_1:
    .line 541
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld int32 @printtables::i
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @printtables::i
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld valuetype T_alfa T_record_86::Name
    call string T_alfa::arrayToString(valuetype T_alfa)
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @printtables::i
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld int32 T_record_86::Link
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @printtables::i
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld int32 T_record_86::Obj
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @printtables::i
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld int32 T_record_86::Typ
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @printtables::i
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld int32 T_record_86::Ref
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @printtables::i
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld bool T_record_86::Normal
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @printtables::i
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld int8 T_record_86::Lev
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @printtables::i
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld int32 T_record_86::Adr
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    ldloc _F
    ldfld int32 @printtables::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @printtables::i
    br L_for_loop_1
L_for_end_2:
    pop
    .line 544
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "blocks    last lpar psze vsze"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 545
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 546
    ldsfld int32 _G::b
    stloc $tmpEndValue4
    ldc.i4 1
    dup
    ldloc $tmpEndValue4
    bgt L_for_end_4
    stloc $tmpIndex5
    ldloc _F
    ldloc $tmpIndex5
    stfld int32 @printtables::i
L_for_loop_3:
    .line 548
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld int32 @printtables::i
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_92 _G::Btab
    ldloc _F
    ldfld int32 @printtables::i
    call instance valuetype T_record_91& T_array_92::ldadr(int32)
    ldfld int32 T_record_91::Last
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_92 _G::Btab
    ldloc _F
    ldfld int32 @printtables::i
    call instance valuetype T_record_91& T_array_92::ldadr(int32)
    ldfld int32 T_record_91::Lastpar
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_92 _G::Btab
    ldloc _F
    ldfld int32 @printtables::i
    call instance valuetype T_record_91& T_array_92::ldadr(int32)
    ldfld int32 T_record_91::Psize
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_92 _G::Btab
    ldloc _F
    ldfld int32 @printtables::i
    call instance valuetype T_record_91& T_array_92::ldadr(int32)
    ldfld int32 T_record_91::Vsize
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    ldloc _F
    ldfld int32 @printtables::i
    dup
    ldloc $tmpEndValue4
    beq L_for_end_4
    ldc.i4.1
    add
    stloc $tmpIndex6
    ldloc _F
    ldloc $tmpIndex6
    stfld int32 @printtables::i
    br L_for_loop_3
L_for_end_4:
    pop
    .line 550
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "arrays    xtyp etyp eref  low high elsz size"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 551
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 552
    ldsfld int32 _G::a
    stloc $tmpEndValue7
    ldc.i4 1
    dup
    ldloc $tmpEndValue7
    bgt L_for_end_6
    stloc $tmpIndex8
    ldloc _F
    ldloc $tmpIndex8
    stfld int32 @printtables::i
L_for_loop_5:
    .line 554
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld int32 @printtables::i
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_90 _G::Atab
    ldloc _F
    ldfld int32 @printtables::i
    call instance valuetype T_record_89& T_array_90::ldadr(int32)
    ldfld int32 T_record_89::Inxtyp
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_90 _G::Atab
    ldloc _F
    ldfld int32 @printtables::i
    call instance valuetype T_record_89& T_array_90::ldadr(int32)
    ldfld int32 T_record_89::Eltyp
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_90 _G::Atab
    ldloc _F
    ldfld int32 @printtables::i
    call instance valuetype T_record_89& T_array_90::ldadr(int32)
    ldfld int32 T_record_89::Elref
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_90 _G::Atab
    ldloc _F
    ldfld int32 @printtables::i
    call instance valuetype T_record_89& T_array_90::ldadr(int32)
    ldfld int32 T_record_89::Low
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_90 _G::Atab
    ldloc _F
    ldfld int32 @printtables::i
    call instance valuetype T_record_89& T_array_90::ldadr(int32)
    ldfld int32 T_record_89::High
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_90 _G::Atab
    ldloc _F
    ldfld int32 @printtables::i
    call instance valuetype T_record_89& T_array_90::ldadr(int32)
    ldfld int32 T_record_89::Elsize
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsflda valuetype T_array_90 _G::Atab
    ldloc _F
    ldfld int32 @printtables::i
    call instance valuetype T_record_89& T_array_90::ldadr(int32)
    ldfld int32 T_record_89::Size
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    ldloc _F
    ldfld int32 @printtables::i
    dup
    ldloc $tmpEndValue7
    beq L_for_end_6
    ldc.i4.1
    add
    stloc $tmpIndex9
    ldloc _F
    ldloc $tmpIndex9
    stfld int32 @printtables::i
    br L_for_loop_5
L_for_end_6:
    pop
    .line 557
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "code:"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 558
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 559
    ldsfld int32 _G::Lc
    ldc.i4 1
    sub
    stloc $tmpEndValue10
    ldc.i4 0
    dup
    ldloc $tmpEndValue10
    bgt L_for_end_8
    stloc $tmpIndex11
    ldloc _F
    ldloc $tmpIndex11
    stfld int32 @printtables::i
L_for_loop_7:
    .line 560
    ldloc _F
    ldfld int32 @printtables::i
    ldc.i4 5
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    ldc.i4 0
    ceq
    brfalse L_if_end_9
    .line 561
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 561
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldloc _F
    ldfld int32 @printtables::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
L_if_end_9:
    .line 563
    ldloc _F
    ldsflda valuetype T_array_97 _G::Code
    ldloc _F
    ldfld int32 @printtables::i
    call instance valuetype T_order& T_array_97::ldadr(int32)
    ldobj valuetype T_order
    stfld valuetype T_order @printtables::o
    .line 563
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 5
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_order @printtables::o
    ldfld int8 T_order::f
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    .line 565
    ldloc _F
    ldflda valuetype T_order @printtables::o
    ldfld int8 T_order::f
    ldc.i4 31
    clt
    dup
    brtrue L_OR_shortcut_10
    pop
    ldloc _F
    ldflda valuetype T_order @printtables::o
    ldfld int8 T_order::f
    ldc.i4 36
    ceq
L_OR_shortcut_10:
    brfalse L_else_11
    .line 566
    ldloc _F
    ldflda valuetype T_order @printtables::o
    ldfld int8 T_order::f
    ldc.i4 4
    clt
    brfalse L_else_13
    .line 566
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 2
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_order @printtables::o
    ldfld int8 T_order::x
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 5
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_order @printtables::o
    ldfld int32 T_order::y
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    br L_if_end_14
L_else_13:
    .line 567
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 7
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_order @printtables::o
    ldfld int32 T_order::y
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
L_if_end_14:
    br L_if_end_12
L_else_11:
    .line 568
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "       "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_12:
    .line 569
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 44 // ','
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldloc _F
    ldfld int32 @printtables::i
    dup
    ldloc $tmpEndValue10
    beq L_for_end_8
    ldc.i4.1
    add
    stloc $tmpIndex12
    ldloc _F
    ldloc $tmpIndex12
    stfld int32 @printtables::i
    br L_for_loop_7
L_for_end_8:
    pop
    .line 571
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()

L_Epilogue:
    ret
}

.line 574

.method static
void Block(valuetype T_symset Fsys, bool Isfun, int32 Level)
{
    .maxstack 32

    .locals init(
        class @block _F,
        valuetype T_symset $tmpSetLiteral1,
        valuetype T_symset $tmpSetLiteral2,
        valuetype T_symset $tmpSetLiteral3,
        valuetype T_symset $tmpSetLiteral4,
        valuetype T_symset $tmpSetLiteral5,
        valuetype T_symset $tmpSetLiteral6,
        valuetype T_symset $tmpSetLiteral7,
        valuetype T_symset $tmpSetLiteral8,
        valuetype T_set_62 $tmpSetLiteral9)
    
    newobj instance void @block::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Fsys
    stfld valuetype T_symset @block::Fsys
    
    ldloc _F
    ldarg Isfun
    stfld bool @block::Isfun
    
    ldloc _F
    ldarg Level
    stfld int32 @block::Level

    ldloca $tmpSetLiteral1
    ldc.i4 19
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 26
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 24
    call instance void T_symset::addValue(int32)

    ldloca $tmpSetLiteral2
    ldc.i4 24
    call instance void T_symset::addValue(int32)

    ldloca $tmpSetLiteral3
    ldc.i4 32
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral3
    ldc.i4 31
    call instance void T_symset::addValue(int32)

    ldloca $tmpSetLiteral4
    ldc.i4 37
    call instance void T_symset::addValue(int32)

    ldloca $tmpSetLiteral5
    ldc.i4 24
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral5
    ldc.i4 43
    call instance void T_symset::addValue(int32)

    ldloca $tmpSetLiteral6
    ldc.i4 24
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral6
    ldc.i4 43
    call instance void T_symset::addValue(int32)

    ldloca $tmpSetLiteral7
    ldc.i4 24
    call instance void T_symset::addValue(int32)

    ldloca $tmpSetLiteral8
    ldc.i4 25
    call instance void T_symset::addValue(int32)


L_Entry:
    .line 1477
    ldloc _F
    ldc.i4 5
    stfld int32 @block::Dx
    .line 1477
    ldloc _F
    ldsfld int32 _G::t
    stfld int32 @block::Prt
    .line 1478
    ldloc _F
    ldfld int32 @block::Level
    ldc.i4 100
    cgt
    brfalse L_if_end_1
    .line 1478
    ldc.i4 5
    call void Fatal(int32 n)
L_if_end_1:
    .line 1479
    ldloc _F
    ldloc $tmpSetLiteral1
    ldloc _F
    ldfld valuetype T_symset @block::Fsys
    ldc.i4 7
    call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
    .line 1480
    call void Enterblock()
    .line 1480
    ldsflda valuetype T_array_100 _G::Display
    ldloc _F
    ldfld int32 @block::Level
    call instance int32& T_array_100::ldadr(int32)
    ldsfld int32 _G::b
    stobj int32
    .line 1480
    ldloc _F
    ldsfld int32 _G::b
    stfld int32 @block::Prb
    .line 1481
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @block::Prt
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldc.i4 0
    stfld int32 T_record_86::Typ
    .line 1481
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @block::Prt
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldloc _F
    ldfld int32 @block::Prb
    dup
    ldc.i4 -131071
    ldc.i4 131071
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 T_record_86::Ref
    .line 1482
    ldsfld int32 _G::Sy
    ldc.i4 19
    ceq
    brfalse L_if_end_2
    .line 1482
    ldloc _F
    call instance void @block::Parameterlist()
L_if_end_2:
    .line 1483
    ldsflda valuetype T_array_92 _G::Btab
    ldloc _F
    ldfld int32 @block::Prb
    call instance valuetype T_record_91& T_array_92::ldadr(int32)
    ldsfld int32 _G::t
    dup
    ldc.i4 -131071
    ldc.i4 131071
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 T_record_91::Lastpar
    .line 1483
    ldsflda valuetype T_array_92 _G::Btab
    ldloc _F
    ldfld int32 @block::Prb
    call instance valuetype T_record_91& T_array_92::ldadr(int32)
    ldloc _F
    ldfld int32 @block::Dx
    dup
    ldc.i4 -131071
    ldc.i4 131071
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 T_record_91::Psize
    .line 1484
    ldloc _F
    ldfld bool @block::Isfun
    brfalse L_if_end_3
    .line 1485
    ldsfld int32 _G::Sy
    ldc.i4 26
    ceq
    brfalse L_else_4
    .line 1486
    call void Insymbol()
    .line 1487
    ldsfld int32 _G::Sy
    ldc.i4 36
    ceq
    brfalse L_else_6
    .line 1488
    ldloc _F
    ldloc _F
    ldsfld valuetype T_alfa _G::Id
    call instance int32 @block::Loc(valuetype T_alfa Id)
    stfld int32 @block::x
    .line 1488
    call void Insymbol()
    .line 1489
    ldloc _F
    ldfld int32 @block::x
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_8
    .line 1490
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @block::x
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld int32 T_record_86::Obj
    ldc.i4 2
    ceq
    ldc.i4.0
    ceq
    brfalse L_else_9
    .line 1490
    ldc.i4 29
    call void Error(int32 n)
    br L_if_end_10
L_else_9:
    .line 1491
    ldsfld valuetype T_typset _G::Stantyps
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @block::x
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld int32 T_record_86::Typ
    call bool _SetContains(valuetype T_typset s, int32 val)
    brfalse L_else_11
    .line 1492
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @block::Prt
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @block::x
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld int32 T_record_86::Typ
    stfld int32 T_record_86::Typ
    br L_if_end_12
L_else_11:
    .line 1493
    ldc.i4 15
    call void Error(int32 n)
L_if_end_12:
L_if_end_10:
L_if_end_8:
    br L_if_end_7
L_else_6:
    .line 1494
    ldloc _F
    ldloc $tmpSetLiteral2
    call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
    ldloc _F
    ldfld valuetype T_symset @block::Fsys
    call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
    call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
    dup
    ldc.i4 0
    ldc.i4 50
    call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
    call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
    ldc.i4 2
    call instance void @block::Skip(valuetype T_symset Fsys, int32 n)
L_if_end_7:
    br L_if_end_5
L_else_4:
    .line 1495
    ldc.i4 5
    call void Error(int32 n)
L_if_end_5:
L_if_end_3:
    .line 1496
    ldsfld int32 _G::Sy
    ldc.i4 24
    ceq
    brfalse L_else_13
    .line 1496
    call void Insymbol()
    br L_if_end_14
L_else_13:
    .line 1496
    ldc.i4 14
    call void Error(int32 n)
L_if_end_14:
    .line 1497
L_repeat_15:
    .line 1498
    ldsfld int32 _G::Sy
    ldc.i4 28
    ceq
    brfalse L_if_end_16
    .line 1498
    ldloc _F
    call instance void @block::Constantdeclaration()
L_if_end_16:
    .line 1499
    ldsfld int32 _G::Sy
    ldc.i4 29
    ceq
    brfalse L_if_end_17
    .line 1499
    ldloc _F
    call instance void @block::Typedeclaration()
L_if_end_17:
    .line 1500
    ldsfld int32 _G::Sy
    ldc.i4 30
    ceq
    brfalse L_if_end_18
    .line 1500
    ldloc _F
    call instance void @block::Variabledeclaration()
L_if_end_18:
    .line 1501
    ldsflda valuetype T_array_92 _G::Btab
    ldloc _F
    ldfld int32 @block::Prb
    call instance valuetype T_record_91& T_array_92::ldadr(int32)
    ldloc _F
    ldfld int32 @block::Dx
    dup
    ldc.i4 -131071
    ldc.i4 131071
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 T_record_91::Vsize
    .line 1502
    br L_while_test_20
L_while_19:
    .line 1502
    ldloc _F
    call instance void @block::Procdeclaration()
L_while_test_20:
    ldloc $tmpSetLiteral3
    ldsfld int32 _G::Sy
    call bool _SetContains(valuetype T_symset s, int32 val)
    brtrue L_while_19
    .line 1503
    ldloc _F
    ldloc $tmpSetLiteral4
    ldsfld valuetype T_symset _G::Blockbegsys
    ldsfld valuetype T_symset _G::Statbegsys
    call valuetype T_symset _SetUnion(valuetype T_symset a, valuetype T_symset b)
    ldc.i4 56
    call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
    ldsfld valuetype T_symset _G::Statbegsys
    ldsfld int32 _G::Sy
    call bool _SetContains(valuetype T_symset s, int32 val)
    brfalse L_repeat_15
    .line 1505
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @block::Prt
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldsfld int32 _G::Lc
    stfld int32 T_record_86::Adr
    .line 1506
    call void Insymbol()
    .line 1506
    ldloc _F
    ldloc $tmpSetLiteral5
    call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
    ldloc _F
    ldfld valuetype T_symset @block::Fsys
    call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
    call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
    dup
    ldc.i4 0
    ldc.i4 50
    call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
    call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
    call instance void @block::Statement(valuetype T_symset Fsys)
    .line 1507
    br L_while_test_22
L_while_21:
    .line 1508
    ldsfld int32 _G::Sy
    ldc.i4 24
    ceq
    brfalse L_else_23
    .line 1508
    call void Insymbol()
    br L_if_end_24
L_else_23:
    .line 1508
    ldc.i4 14
    call void Error(int32 n)
L_if_end_24:
    .line 1509
    ldloc _F
    ldloc $tmpSetLiteral6
    call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
    ldloc _F
    ldfld valuetype T_symset @block::Fsys
    call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
    call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
    dup
    ldc.i4 0
    ldc.i4 50
    call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
    call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
    call instance void @block::Statement(valuetype T_symset Fsys)
L_while_test_22:
    ldloc $tmpSetLiteral7
    call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
    ldsfld valuetype T_symset _G::Statbegsys
    call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
    call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
    ldsfld int32 _G::Sy
    call bool _SetContains(valuetype T_set_62 s, int32 val)
    brtrue L_while_21
    .line 1511
    ldsfld int32 _G::Sy
    ldc.i4 43
    ceq
    brfalse L_else_25
    .line 1511
    call void Insymbol()
    br L_if_end_26
L_else_25:
    .line 1511
    ldc.i4 57
    call void Error(int32 n)
L_if_end_26:
    .line 1512
    ldloc _F
    ldloc _F
    ldfld valuetype T_symset @block::Fsys
    call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
    ldloc $tmpSetLiteral8
    call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
    call valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
    dup
    ldc.i4 0
    ldc.i4 50
    call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
    call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
    ldloc $tmpSetLiteral9
    dup
    ldc.i4 0
    ldc.i4 50
    call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
    call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
    ldc.i4 6
    call instance void @block::Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)

L_Epilogue:
    ret
}

.line 1515

.method static
void Interpret()
{
    .maxstack 32

    .locals init(
        class @interpret _F,
        int8 $tmpSwitchValue1,
        int32 $tmpSwitchValue2,
        int32 $tmpEndValue3,
        int32 $tmpIndex4,
        int32 $tmpIndex5,
        int32 $tmpSwitchValue6,
        int32 $tmpSwitchValue7,
        int32 $tmpSwitchValue8,
        int32 $tmpSwitchValue9,
        int32 $tmpSwitchValue10,
        int32 $tmpSwitchValue11)
    
    newobj instance void @interpret::.ctor()
    stloc _F

L_Entry:
    .line 1538
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldc.i4 1
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldc.i4 0
    stfld int32 T_interpret_record_200::i
    .line 1538
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldc.i4 2
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldc.i4 0
    stfld int32 T_interpret_record_200::i
    .line 1538
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldc.i4 3
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldc.i4 1
    neg
    stfld int32 T_interpret_record_200::i
    .line 1538
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldc.i4 4
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldsflda valuetype T_array_92 _G::Btab
    ldc.i4 1
    call instance valuetype T_record_91& T_array_92::ldadr(int32)
    ldfld int32 T_record_91::Last
    stfld int32 T_interpret_record_200::i
    .line 1539
    ldloc _F
    ldc.i4 0
    stfld int32 @interpret::b
    .line 1539
    ldloc _F
    ldflda valuetype T_block_statement_casestatement_array_162 @interpret::Display
    ldc.i4 1
    call instance int32& T_block_statement_casestatement_array_162::ldadr(int32)
    ldc.i4 0
    stobj int32
    .line 1540
    ldloc _F
    ldsflda valuetype T_array_92 _G::Btab
    ldc.i4 2
    call instance valuetype T_record_91& T_array_92::ldadr(int32)
    ldfld int32 T_record_91::Vsize
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1540
    ldloc _F
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldc.i4 4
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld int32 T_record_86::Adr
    stfld int32 @interpret::Pc
    .line 1541
    ldloc _F
    ldc.i4 0 // run 
    stfld int32 @interpret::Ps
    .line 1542
    ldloc _F
    ldc.i4 0
    stfld int32 @interpret::Lncnt
    .line 1542
    ldloc _F
    ldc.i4 0
    stfld int32 @interpret::Ocnt
    .line 1542
    ldloc _F
    ldc.i4 0
    stfld int32 @interpret::Chrcnt
    .line 1543
    ldloc _F
    ldflda valuetype T_interpret_array_198 @interpret::Fld
    ldc.i4 1
    call instance int32& T_interpret_array_198::ldadr(int32)
    ldc.i4 10
    stobj int32
    .line 1543
    ldloc _F
    ldflda valuetype T_interpret_array_198 @interpret::Fld
    ldc.i4 2
    call instance int32& T_interpret_array_198::ldadr(int32)
    ldc.i4 22
    stobj int32
    .line 1543
    ldloc _F
    ldflda valuetype T_interpret_array_198 @interpret::Fld
    ldc.i4 3
    call instance int32& T_interpret_array_198::ldadr(int32)
    ldc.i4 10
    stobj int32
    .line 1543
    ldloc _F
    ldflda valuetype T_interpret_array_198 @interpret::Fld
    ldc.i4 4
    call instance int32& T_interpret_array_198::ldadr(int32)
    ldc.i4 1
    stobj int32
    .line 1544
L_repeat_1:
    .line 1544
    ldloc _F
    ldsflda valuetype T_array_97 _G::Code
    ldloc _F
    ldfld int32 @interpret::Pc
    call instance valuetype T_order& T_array_97::ldadr(int32)
    ldobj valuetype T_order
    stfld valuetype T_order @interpret::Ir
    .line 1544
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::Pc
    ldc.i4 1
    add
    stfld int32 @interpret::Pc
    .line 1544
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::Ocnt
    ldc.i4 1
    add
    stfld int32 @interpret::Ocnt
    .line 1545
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int8 T_order::f
    stloc $tmpSwitchValue1
    ldloc $tmpSwitchValue1
    ldc.i4 0
    bne.un L_check_case_3
    .line 1546
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    stfld int32 @interpret::t
    .line 1547
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 10000
    cgt
    brfalse L_else_4
    .line 1547
    ldloc _F
    ldc.i4 5 // stkchk 
    stfld int32 @interpret::Ps
    br L_if_end_5
L_else_4:
    .line 1548
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_block_statement_casestatement_array_162 @interpret::Display
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int8 T_order::x
    call instance int32& T_block_statement_casestatement_array_162::ldadr(int32)
    ldobj int32
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    add
    stfld int32 T_interpret_record_200::i
L_if_end_5:
    br L_case_end_2
L_check_case_3:
    ldloc $tmpSwitchValue1
    ldc.i4 1
    bne.un L_check_case_6
    .line 1550
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    stfld int32 @interpret::t
    .line 1551
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 10000
    cgt
    brfalse L_else_7
    .line 1551
    ldloc _F
    ldc.i4 5 // stkchk 
    stfld int32 @interpret::Ps
    br L_if_end_8
L_else_7:
    .line 1552
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldflda valuetype T_block_statement_casestatement_array_162 @interpret::Display
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int8 T_order::x
    call instance int32& T_block_statement_casestatement_array_162::ldadr(int32)
    ldobj int32
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldobj valuetype T_interpret_record_200
    stobj valuetype T_interpret_record_200
L_if_end_8:
    br L_case_end_2
L_check_case_6:
    ldloc $tmpSwitchValue1
    ldc.i4 2
    bne.un L_check_case_9
    .line 1554
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    stfld int32 @interpret::t
    .line 1555
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 10000
    cgt
    brfalse L_else_10
    .line 1555
    ldloc _F
    ldc.i4 5 // stkchk 
    stfld int32 @interpret::Ps
    br L_if_end_11
L_else_10:
    .line 1556
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldflda valuetype T_block_statement_casestatement_array_162 @interpret::Display
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int8 T_order::x
    call instance int32& T_block_statement_casestatement_array_162::ldadr(int32)
    ldobj int32
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldobj valuetype T_interpret_record_200
    stobj valuetype T_interpret_record_200
L_if_end_11:
    br L_case_end_2
L_check_case_9:
    ldloc $tmpSwitchValue1
    ldc.i4 3
    bne.un L_check_case_12
    .line 1559
    ldloc _F
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    stfld int32 @interpret::H1
    .line 1559
    ldloc _F
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int8 T_order::x
    stfld int32 @interpret::H2
    .line 1559
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::b
    stfld int32 @interpret::H3
    .line 1560
L_repeat_13:
    .line 1560
    ldloc _F
    ldflda valuetype T_block_statement_casestatement_array_162 @interpret::Display
    ldloc _F
    ldfld int32 @interpret::H1
    call instance int32& T_block_statement_casestatement_array_162::ldadr(int32)
    ldloc _F
    ldfld int32 @interpret::H3
    stobj int32
    .line 1560
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::H1
    ldc.i4 1
    sub
    stfld int32 @interpret::H1
    .line 1560
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H3
    ldc.i4 2
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld int32 @interpret::H3
    ldloc _F
    ldfld int32 @interpret::H1
    ldloc _F
    ldfld int32 @interpret::H2
    ceq
    brfalse L_repeat_13
    br L_case_end_2
L_check_case_12:
    ldloc $tmpSwitchValue1
    ldc.i4 8
    bne.un L_check_case_14
    .line 1563
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    stloc $tmpSwitchValue2
    ldloc $tmpSwitchValue2
    ldc.i4 0
    bne.un L_check_case_16
    .line 1564
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    dup
    ldc.i4 0
    bge L_abs_question_17
    neg
L_abs_question_17:
    stfld int32 T_interpret_record_200::i
    br L_case_end_15
L_check_case_16:
    ldloc $tmpSwitchValue2
    ldc.i4 1
    bne.un L_check_case_18
    .line 1565
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    dup
    ldc.r8 0
    bge L_abs_question_19
    neg
L_abs_question_19:
    stfld float64 T_interpret_record_200::r
    br L_case_end_15
L_check_case_18:
    ldloc $tmpSwitchValue2
    ldc.i4 2
    bne.un L_check_case_20
    .line 1566
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    dup
    mul
    stfld int32 T_interpret_record_200::i
    br L_case_end_15
L_check_case_20:
    ldloc $tmpSwitchValue2
    ldc.i4 3
    bne.un L_check_case_21
    .line 1567
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    dup
    mul
    stfld float64 T_interpret_record_200::r
    br L_case_end_15
L_check_case_21:
    ldloc $tmpSwitchValue2
    ldc.i4 4
    bne.un L_check_case_22
    .line 1568
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldc.i4.1
    and
    stfld bool T_interpret_record_200::b
    br L_case_end_15
L_check_case_22:
    ldloc $tmpSwitchValue2
    ldc.i4 5
    bne.un L_check_case_23
    .line 1569
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld uint8 T_interpret_record_200::c
    .line 1570
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldc.i4 0
    clt
    dup
    brtrue L_OR_shortcut_24
    pop
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldc.i4 127
    cgt
L_OR_shortcut_24:
    brfalse L_if_end_25
    .line 1570
    ldloc _F
    ldc.i4 4 // inxchk 
    stfld int32 @interpret::Ps
L_if_end_25:
    br L_case_end_15
L_check_case_23:
    ldloc $tmpSwitchValue2
    ldc.i4 6
    bne.un L_check_case_26
    .line 1572
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld uint8 T_interpret_record_200::c
    stfld int32 T_interpret_record_200::i
    br L_case_end_15
L_check_case_26:
    ldloc $tmpSwitchValue2
    ldc.i4 7
    bne.un L_check_case_27
    .line 1573
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld uint8 T_interpret_record_200::c
    ldc.i4.1
    add
    stfld uint8 T_interpret_record_200::c
    br L_case_end_15
L_check_case_27:
    ldloc $tmpSwitchValue2
    ldc.i4 8
    bne.un L_check_case_28
    .line 1574
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld uint8 T_interpret_record_200::c
    ldc.i4.1
    sub
    stfld uint8 T_interpret_record_200::c
    br L_case_end_15
L_check_case_28:
    ldloc $tmpSwitchValue2
    ldc.i4 9
    bne.un L_check_case_29
    .line 1575
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    call int32 [lpcRuntime]LPC.Helpers::Round(float64)
    stfld int32 T_interpret_record_200::i
    br L_case_end_15
L_check_case_29:
    ldloc $tmpSwitchValue2
    ldc.i4 10
    bne.un L_check_case_30
    .line 1576
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    call int32 [lpcRuntime]LPC.Helpers::Trunc(float64)
    stfld int32 T_interpret_record_200::i
    br L_case_end_15
L_check_case_30:
    ldloc $tmpSwitchValue2
    ldc.i4 11
    bne.un L_check_case_31
    .line 1577
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    call float64 [lpcRuntime]LPC.Helpers::Sin(float64)
    stfld float64 T_interpret_record_200::r
    br L_case_end_15
L_check_case_31:
    ldloc $tmpSwitchValue2
    ldc.i4 12
    bne.un L_check_case_32
    .line 1578
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    call float64 [lpcRuntime]LPC.Helpers::Cos(float64)
    stfld float64 T_interpret_record_200::r
    br L_case_end_15
L_check_case_32:
    ldloc $tmpSwitchValue2
    ldc.i4 13
    bne.un L_check_case_33
    .line 1579
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    call float64 [lpcRuntime]LPC.Helpers::Exp(float64)
    stfld float64 T_interpret_record_200::r
    br L_case_end_15
L_check_case_33:
    ldloc $tmpSwitchValue2
    ldc.i4 14
    bne.un L_check_case_34
    .line 1580
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    call float64 [lpcRuntime]LPC.Helpers::Ln(float64)
    stfld float64 T_interpret_record_200::r
    br L_case_end_15
L_check_case_34:
    ldloc $tmpSwitchValue2
    ldc.i4 15
    bne.un L_check_case_35
    .line 1581
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    call float64 [lpcRuntime]LPC.Helpers::Sqrt(float64)
    stfld float64 T_interpret_record_200::r
    br L_case_end_15
L_check_case_35:
    ldloc $tmpSwitchValue2
    ldc.i4 16
    bne.un L_check_case_36
    .line 1582
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    call float64 [lpcRuntime]LPC.Helpers::Arctan(float64)
    stfld float64 T_interpret_record_200::r
    br L_case_end_15
L_check_case_36:
    ldloc $tmpSwitchValue2
    ldc.i4 17
    bne.un L_check_case_37
    .line 1583
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    stfld int32 @interpret::t
    .line 1584
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 10000
    cgt
    brfalse L_else_38
    .line 1584
    ldloc _F
    ldc.i4 5 // stkchk 
    stfld int32 @interpret::Ps
    br L_if_end_39
L_else_38:
    .line 1585
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance bool [lpcRuntime]LPC.File::Eof()
    stfld bool T_interpret_record_200::b
L_if_end_39:
    br L_case_end_15
L_check_case_37:
    ldloc $tmpSwitchValue2
    ldc.i4 18
    bne.un L_case_end_15
    .line 1587
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    stfld int32 @interpret::t
    .line 1588
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 10000
    cgt
    brfalse L_else_40
    .line 1588
    ldloc _F
    ldc.i4 5 // stkchk 
    stfld int32 @interpret::Ps
    br L_if_end_41
L_else_40:
    .line 1589
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance bool [lpcRuntime]LPC.File::Eoln()
    stfld bool T_interpret_record_200::b
L_if_end_41:
L_case_end_15:
    br L_case_end_2
L_check_case_14:
    ldloc $tmpSwitchValue1
    ldc.i4 9
    bne.un L_check_case_42
    .line 1592
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    add
    stfld int32 T_interpret_record_200::i
    br L_case_end_2
L_check_case_42:
    ldloc $tmpSwitchValue1
    ldc.i4 10
    bne.un L_check_case_43
    .line 1593
    ldloc _F
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    stfld int32 @interpret::Pc
    br L_case_end_2
L_check_case_43:
    ldloc $tmpSwitchValue1
    ldc.i4 11
    bne.un L_check_case_44
    .line 1595
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld bool T_interpret_record_200::b
    ldc.i4.0
    ceq
    brfalse L_if_end_45
    .line 1595
    ldloc _F
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    stfld int32 @interpret::Pc
L_if_end_45:
    .line 1595
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    br L_case_end_2
L_check_case_44:
    ldloc $tmpSwitchValue1
    ldc.i4 12
    bne.un L_check_case_46
    .line 1597
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld int32 @interpret::H1
    .line 1597
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1598
    ldloc _F
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    stfld int32 @interpret::H2
    .line 1598
    ldloc _F
    ldc.i4 0
    stfld int32 @interpret::H3
    .line 1599
L_repeat_47:
    .line 1599
    ldsflda valuetype T_array_97 _G::Code
    ldloc _F
    ldfld int32 @interpret::H2
    call instance valuetype T_order& T_array_97::ldadr(int32)
    ldfld int8 T_order::f
    ldc.i4 13
    ceq
    ldc.i4.0
    ceq
    brfalse L_else_48
    .line 1600
    ldloc _F
    ldc.i4 1
    stfld int32 @interpret::H3
    .line 1600
    ldloc _F
    ldc.i4 2 // caschk 
    stfld int32 @interpret::Ps
    br L_if_end_49
L_else_48:
    .line 1602
    ldsflda valuetype T_array_97 _G::Code
    ldloc _F
    ldfld int32 @interpret::H2
    call instance valuetype T_order& T_array_97::ldadr(int32)
    ldfld int32 T_order::y
    ldloc _F
    ldfld int32 @interpret::H1
    ceq
    brfalse L_else_50
    .line 1603
    ldloc _F
    ldc.i4 1
    stfld int32 @interpret::H3
    .line 1603
    ldloc _F
    ldsflda valuetype T_array_97 _G::Code
    ldloc _F
    ldfld int32 @interpret::H2
    ldc.i4 1
    add
    call instance valuetype T_order& T_array_97::ldadr(int32)
    ldfld int32 T_order::y
    stfld int32 @interpret::Pc
    br L_if_end_51
L_else_50:
    .line 1605
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::H2
    ldc.i4 2
    add
    stfld int32 @interpret::H2
L_if_end_51:
L_if_end_49:
    ldloc _F
    ldfld int32 @interpret::H3
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    brfalse L_repeat_47
    br L_case_end_2
L_check_case_46:
    ldloc $tmpSwitchValue1
    ldc.i4 14
    bne.un L_check_case_52
    .line 1608
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld int32 @interpret::H1
    .line 1609
    ldloc _F
    ldfld int32 @interpret::H1
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_53
    .line 1609
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 2
    sub
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldfld int32 @interpret::H1
    stfld int32 T_interpret_record_200::i
    br L_if_end_54
L_else_53:
    .line 1610
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 3
    sub
    stfld int32 @interpret::t
    .line 1610
    ldloc _F
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    stfld int32 @interpret::Pc
L_if_end_54:
    br L_case_end_2
L_check_case_52:
    ldloc $tmpSwitchValue1
    ldc.i4 15
    bne.un L_check_case_55
    .line 1613
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 2
    sub
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld int32 @interpret::H2
    .line 1613
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H2
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldc.i4 1
    add
    stfld int32 @interpret::H1
    .line 1614
    ldloc _F
    ldfld int32 @interpret::H1
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_56
    .line 1615
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H2
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldfld int32 @interpret::H1
    stfld int32 T_interpret_record_200::i
    .line 1615
    ldloc _F
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    stfld int32 @interpret::Pc
    br L_if_end_57
L_else_56:
    .line 1616
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 3
    sub
    stfld int32 @interpret::t
L_if_end_57:
    /* nop */
    br L_case_end_2
L_check_case_55:
    ldloc $tmpSwitchValue1
    ldc.i4 16
    bne.un L_check_case_58
    .line 1618
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld int32 @interpret::H1
    .line 1619
    ldloc _F
    ldfld int32 @interpret::H1
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    clt
    ldc.i4.0
    ceq
    brfalse L_else_59
    .line 1619
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 2
    sub
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldfld int32 @interpret::H1
    stfld int32 T_interpret_record_200::i
    br L_if_end_60
L_else_59:
    .line 1620
    ldloc _F
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    stfld int32 @interpret::Pc
    .line 1620
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 3
    sub
    stfld int32 @interpret::t
L_if_end_60:
    br L_case_end_2
L_check_case_58:
    ldloc $tmpSwitchValue1
    ldc.i4 17
    bne.un L_check_case_61
    .line 1623
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 2
    sub
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld int32 @interpret::H2
    .line 1623
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H2
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldc.i4 1
    sub
    stfld int32 @interpret::H1
    .line 1624
    ldloc _F
    ldfld int32 @interpret::H1
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    clt
    ldc.i4.0
    ceq
    brfalse L_else_62
    .line 1625
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H2
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldfld int32 @interpret::H1
    stfld int32 T_interpret_record_200::i
    .line 1625
    ldloc _F
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    stfld int32 @interpret::Pc
    br L_if_end_63
L_else_62:
    .line 1626
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 3
    sub
    stfld int32 @interpret::t
L_if_end_63:
    /* nop */
    br L_case_end_2
L_check_case_61:
    ldloc $tmpSwitchValue1
    ldc.i4 18
    bne.un L_check_case_64
    .line 1628
    ldloc _F
    ldsflda valuetype T_array_92 _G::Btab
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld int32 T_record_86::Ref
    call instance valuetype T_record_91& T_array_92::ldadr(int32)
    ldfld int32 T_record_91::Vsize
    stfld int32 @interpret::H1
    .line 1629
    ldloc _F
    ldfld int32 @interpret::t
    ldloc _F
    ldfld int32 @interpret::H1
    add
    ldc.i4 10000
    cgt
    brfalse L_else_65
    .line 1629
    ldloc _F
    ldc.i4 5 // stkchk 
    stfld int32 @interpret::Ps
    br L_if_end_66
L_else_65:
    .line 1630
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 5
    add
    stfld int32 @interpret::t
    .line 1630
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldfld int32 @interpret::H1
    ldc.i4 1
    sub
    stfld int32 T_interpret_record_200::i
    .line 1630
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    stfld int32 T_interpret_record_200::i
L_if_end_66:
    br L_case_end_2
L_check_case_64:
    ldloc $tmpSwitchValue1
    ldc.i4 19
    bne.un L_check_case_67
    .line 1633
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    sub
    stfld int32 @interpret::H1
    .line 1634
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H1
    ldc.i4 4
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld int32 @interpret::H2
    .line 1635
    ldloc _F
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @interpret::H2
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld int8 T_record_86::Lev
    stfld int32 @interpret::H3
    .line 1635
    ldloc _F
    ldflda valuetype T_block_statement_casestatement_array_162 @interpret::Display
    ldloc _F
    ldfld int32 @interpret::H3
    ldc.i4 1
    add
    call instance int32& T_block_statement_casestatement_array_162::ldadr(int32)
    ldloc _F
    ldfld int32 @interpret::H1
    stobj int32
    .line 1636
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H1
    ldc.i4 3
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldloc _F
    ldfld int32 @interpret::H1
    add
    stfld int32 @interpret::H4
    .line 1637
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H1
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldfld int32 @interpret::Pc
    stfld int32 T_interpret_record_200::i
    .line 1637
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H1
    ldc.i4 2
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_block_statement_casestatement_array_162 @interpret::Display
    ldloc _F
    ldfld int32 @interpret::H3
    call instance int32& T_block_statement_casestatement_array_162::ldadr(int32)
    ldobj int32
    stfld int32 T_interpret_record_200::i
    .line 1637
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H1
    ldc.i4 3
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldfld int32 @interpret::b
    stfld int32 T_interpret_record_200::i
    .line 1638
    ldloc _F
    ldfld int32 @interpret::H4
    stloc $tmpEndValue3
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    dup
    ldloc $tmpEndValue3
    bgt L_for_end_69
    stloc $tmpIndex4
    ldloc _F
    ldloc $tmpIndex4
    stfld int32 @interpret::H3
L_for_loop_68:
    .line 1638
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H3
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldc.i4 0
    stfld int32 T_interpret_record_200::i
    ldloc _F
    ldfld int32 @interpret::H3
    dup
    ldloc $tmpEndValue3
    beq L_for_end_69
    ldc.i4.1
    add
    stloc $tmpIndex5
    ldloc _F
    ldloc $tmpIndex5
    stfld int32 @interpret::H3
    br L_for_loop_68
L_for_end_69:
    pop
    .line 1639
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::H1
    stfld int32 @interpret::b
    .line 1639
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::H4
    stfld int32 @interpret::t
    .line 1639
    ldloc _F
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @interpret::H2
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld int32 T_record_86::Adr
    stfld int32 @interpret::Pc
    br L_case_end_2
L_check_case_67:
    ldloc $tmpSwitchValue1
    ldc.i4 20
    bne.un L_check_case_70
    .line 1641
    ldloc _F
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    stfld int32 @interpret::H1
    .line 1642
    ldloc _F
    ldsflda valuetype T_array_90 _G::Atab
    ldloc _F
    ldfld int32 @interpret::H1
    call instance valuetype T_record_89& T_array_90::ldadr(int32)
    ldfld int32 T_record_89::Low
    stfld int32 @interpret::H2
    .line 1642
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld int32 @interpret::H3
    .line 1643
    ldloc _F
    ldfld int32 @interpret::H3
    ldloc _F
    ldfld int32 @interpret::H2
    clt
    brfalse L_else_71
    .line 1643
    ldloc _F
    ldc.i4 4 // inxchk 
    stfld int32 @interpret::Ps
    br L_if_end_72
L_else_71:
    .line 1644
    ldloc _F
    ldfld int32 @interpret::H3
    ldsflda valuetype T_array_90 _G::Atab
    ldloc _F
    ldfld int32 @interpret::H1
    call instance valuetype T_record_89& T_array_90::ldadr(int32)
    ldfld int32 T_record_89::High
    cgt
    brfalse L_else_73
    .line 1644
    ldloc _F
    ldc.i4 4 // inxchk 
    stfld int32 @interpret::Ps
    br L_if_end_74
L_else_73:
    .line 1645
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1645
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldloc _F
    ldfld int32 @interpret::H3
    ldloc _F
    ldfld int32 @interpret::H2
    sub
    add
    stfld int32 T_interpret_record_200::i
L_if_end_74:
L_if_end_72:
    br L_case_end_2
L_check_case_70:
    ldloc $tmpSwitchValue1
    ldc.i4 21
    bne.un L_check_case_75
    .line 1648
    ldloc _F
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    stfld int32 @interpret::H1
    .line 1649
    ldloc _F
    ldsflda valuetype T_array_90 _G::Atab
    ldloc _F
    ldfld int32 @interpret::H1
    call instance valuetype T_record_89& T_array_90::ldadr(int32)
    ldfld int32 T_record_89::Low
    stfld int32 @interpret::H2
    .line 1649
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld int32 @interpret::H3
    .line 1650
    ldloc _F
    ldfld int32 @interpret::H3
    ldloc _F
    ldfld int32 @interpret::H2
    clt
    brfalse L_else_76
    .line 1650
    ldloc _F
    ldc.i4 4 // inxchk 
    stfld int32 @interpret::Ps
    br L_if_end_77
L_else_76:
    .line 1651
    ldloc _F
    ldfld int32 @interpret::H3
    ldsflda valuetype T_array_90 _G::Atab
    ldloc _F
    ldfld int32 @interpret::H1
    call instance valuetype T_record_89& T_array_90::ldadr(int32)
    ldfld int32 T_record_89::High
    cgt
    brfalse L_else_78
    .line 1651
    ldloc _F
    ldc.i4 4 // inxchk 
    stfld int32 @interpret::Ps
    br L_if_end_79
L_else_78:
    .line 1652
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1652
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldloc _F
    ldfld int32 @interpret::H3
    ldloc _F
    ldfld int32 @interpret::H2
    sub
    ldsflda valuetype T_array_90 _G::Atab
    ldloc _F
    ldfld int32 @interpret::H1
    call instance valuetype T_record_89& T_array_90::ldadr(int32)
    ldfld int32 T_record_89::Elsize
    mul
    add
    stfld int32 T_interpret_record_200::i
L_if_end_79:
L_if_end_77:
    br L_case_end_2
L_check_case_75:
    ldloc $tmpSwitchValue1
    ldc.i4 22
    bne.un L_check_case_80
    .line 1655
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld int32 @interpret::H1
    .line 1655
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1656
    ldloc _F
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    ldloc _F
    ldfld int32 @interpret::t
    add
    stfld int32 @interpret::H2
    .line 1656
    ldloc _F
    ldfld int32 @interpret::H2
    ldc.i4 10000
    cgt
    brfalse L_else_81
    .line 1656
    ldloc _F
    ldc.i4 5 // stkchk 
    stfld int32 @interpret::Ps
    br L_if_end_82
L_else_81:
    .line 1657
    br L_while_test_84
L_while_83:
    .line 1658
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    stfld int32 @interpret::t
    .line 1658
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H1
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldobj valuetype T_interpret_record_200
    stobj valuetype T_interpret_record_200
    .line 1658
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::H1
    ldc.i4 1
    add
    stfld int32 @interpret::H1
L_while_test_84:
    ldloc _F
    ldfld int32 @interpret::t
    ldloc _F
    ldfld int32 @interpret::H2
    clt
    brtrue L_while_83
L_if_end_82:
    br L_case_end_2
L_check_case_80:
    ldloc $tmpSwitchValue1
    ldc.i4 23
    bne.un L_check_case_85
    .line 1661
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld int32 @interpret::H1
    .line 1662
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld int32 @interpret::H2
    .line 1662
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::H1
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    add
    stfld int32 @interpret::H3
    .line 1663
    br L_while_test_87
L_while_86:
    .line 1664
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H1
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H2
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldobj valuetype T_interpret_record_200
    stobj valuetype T_interpret_record_200
    .line 1664
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::H1
    ldc.i4 1
    add
    stfld int32 @interpret::H1
    .line 1664
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::H2
    ldc.i4 1
    add
    stfld int32 @interpret::H2
L_while_test_87:
    ldloc _F
    ldfld int32 @interpret::H1
    ldloc _F
    ldfld int32 @interpret::H3
    clt
    brtrue L_while_86
    .line 1666
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 2
    sub
    stfld int32 @interpret::t
    br L_case_end_2
L_check_case_85:
    ldloc $tmpSwitchValue1
    ldc.i4 24
    bne.un L_check_case_88
    .line 1668
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    stfld int32 @interpret::t
    .line 1669
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 10000
    cgt
    brfalse L_else_89
    .line 1669
    ldloc _F
    ldc.i4 5 // stkchk 
    stfld int32 @interpret::Ps
    br L_if_end_90
L_else_89:
    .line 1669
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    stfld int32 T_interpret_record_200::i
L_if_end_90:
    br L_case_end_2
L_check_case_88:
    ldloc $tmpSwitchValue1
    ldc.i4 25
    bne.un L_check_case_91
    .line 1671
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    stfld int32 @interpret::t
    .line 1672
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 10000
    cgt
    brfalse L_else_92
    .line 1672
    ldloc _F
    ldc.i4 5 // stkchk 
    stfld int32 @interpret::Ps
    br L_if_end_93
L_else_92:
    .line 1672
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldsflda valuetype T_array_93 _G::Rconst
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    call instance float64& T_array_93::ldadr(int32)
    ldobj float64
    stfld float64 T_interpret_record_200::r
L_if_end_93:
    br L_case_end_2
L_check_case_91:
    ldloc $tmpSwitchValue1
    ldc.i4 26
    bne.un L_check_case_94
    .line 1674
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    sub
    stfld int32 @interpret::H1
    .line 1674
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H1
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H1
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    conv.r8
    stfld float64 T_interpret_record_200::r
    br L_case_end_2
L_check_case_94:
    ldloc $tmpSwitchValue1
    ldc.i4 27
    bne.un L_check_case_95
    .line 1677
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance bool [lpcRuntime]LPC.File::Eof()
    brfalse L_else_96
    .line 1677
    ldloc _F
    ldc.i4 8 // redchk 
    stfld int32 @interpret::Ps
    br L_if_end_97
L_else_96:
    .line 1678
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    stloc $tmpSwitchValue6
    ldloc $tmpSwitchValue6
    ldc.i4 1
    bne.un L_check_case_99
    .line 1679
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    dup
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldflda int32 T_interpret_record_200::i
    ldc.i4 -2147483648
    ldc.i4 2147483647
    call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
    pop
    br L_case_end_98
L_check_case_99:
    ldloc $tmpSwitchValue6
    ldc.i4 2
    bne.un L_check_case_100
    .line 1680
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    dup
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldflda float64 T_interpret_record_200::r
    call instance void [lpcRuntime]LPC.File::Read(float64*)
    pop
    br L_case_end_98
L_check_case_100:
    ldloc $tmpSwitchValue6
    ldc.i4 4
    bne.un L_case_end_98
    .line 1681
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    dup
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldflda uint8 T_interpret_record_200::c
    ldc.i4 0
    ldc.i4 255
    call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
    pop
L_case_end_98:
L_if_end_97:
    .line 1683
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    br L_case_end_2
L_check_case_95:
    ldloc $tmpSwitchValue1
    ldc.i4 28
    bne.un L_check_case_101
    .line 1686
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld int32 @interpret::H1
    .line 1686
    ldloc _F
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    stfld int32 @interpret::H2
    .line 1686
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1687
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::Chrcnt
    ldloc _F
    ldfld int32 @interpret::H1
    add
    stfld int32 @interpret::Chrcnt
    .line 1687
    ldloc _F
    ldfld int32 @interpret::Chrcnt
    ldc.i4 250
    cgt
    brfalse L_if_end_102
    .line 1687
    ldloc _F
    ldc.i4 7 // lngchk 
    stfld int32 @interpret::Ps
L_if_end_102:
    .line 1688
L_repeat_103:
    .line 1688
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsflda valuetype T_array_84 _G::Stab
    ldloc _F
    ldfld int32 @interpret::H2
    call instance uint8& T_array_84::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 1688
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::H1
    ldc.i4 1
    sub
    stfld int32 @interpret::H1
    .line 1688
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::H2
    ldc.i4 1
    add
    stfld int32 @interpret::H2
    ldloc _F
    ldfld int32 @interpret::H1
    ldc.i4 0
    ceq
    brfalse L_repeat_103
    br L_case_end_2
L_check_case_101:
    ldloc $tmpSwitchValue1
    ldc.i4 29
    bne.un L_check_case_104
    .line 1692
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::Chrcnt
    ldloc _F
    ldflda valuetype T_interpret_array_198 @interpret::Fld
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    call instance int32& T_interpret_array_198::ldadr(int32)
    ldobj int32
    add
    stfld int32 @interpret::Chrcnt
    .line 1693
    ldloc _F
    ldfld int32 @interpret::Chrcnt
    ldc.i4 250
    cgt
    brfalse L_else_105
    .line 1693
    ldloc _F
    ldc.i4 7 // lngchk 
    stfld int32 @interpret::Ps
    br L_if_end_106
L_else_105:
    .line 1694
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    stloc $tmpSwitchValue7
    ldloc $tmpSwitchValue7
    ldc.i4 1
    bne.un L_check_case_108
    .line 1695
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldflda valuetype T_interpret_array_198 @interpret::Fld
    ldc.i4 1
    call instance int32& T_interpret_array_198::ldadr(int32)
    ldobj int32
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    br L_case_end_107
L_check_case_108:
    ldloc $tmpSwitchValue7
    ldc.i4 2
    bne.un L_check_case_109
    .line 1696
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldflda valuetype T_interpret_array_198 @interpret::Fld
    ldc.i4 2
    call instance int32& T_interpret_array_198::ldadr(int32)
    ldobj int32
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    pop
    br L_case_end_107
L_check_case_109:
    ldloc $tmpSwitchValue7
    ldc.i4 3
    bne.un L_check_case_110
    .line 1697
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldflda valuetype T_interpret_array_198 @interpret::Fld
    ldc.i4 3
    call instance int32& T_interpret_array_198::ldadr(int32)
    ldobj int32
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld bool T_interpret_record_200::b
    brtrue L_bool_to_string_true_111
    ldstr "false"
    br L_bool_to_string_false_112
L_bool_to_string_true_111:
    ldstr "true"
L_bool_to_string_false_112:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    pop
    br L_case_end_107
L_check_case_110:
    ldloc $tmpSwitchValue7
    ldc.i4 4
    bne.un L_case_end_107
    .line 1698
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld uint8 T_interpret_record_200::c
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_case_end_107:
L_if_end_106:
    .line 1700
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    br L_case_end_2
L_check_case_104:
    ldloc $tmpSwitchValue1
    ldc.i4 30
    bne.un L_check_case_113
    .line 1703
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::Chrcnt
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    add
    stfld int32 @interpret::Chrcnt
    .line 1704
    ldloc _F
    ldfld int32 @interpret::Chrcnt
    ldc.i4 250
    cgt
    brfalse L_else_114
    .line 1704
    ldloc _F
    ldc.i4 7 // lngchk 
    stfld int32 @interpret::Ps
    br L_if_end_115
L_else_114:
    .line 1705
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    stloc $tmpSwitchValue8
    ldloc $tmpSwitchValue8
    ldc.i4 1
    bne.un L_check_case_117
    .line 1706
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    br L_case_end_116
L_check_case_117:
    ldloc $tmpSwitchValue8
    ldc.i4 2
    bne.un L_check_case_118
    .line 1707
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    pop
    br L_case_end_116
L_check_case_118:
    ldloc $tmpSwitchValue8
    ldc.i4 3
    bne.un L_check_case_119
    .line 1708
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld bool T_interpret_record_200::b
    brtrue L_bool_to_string_true_120
    ldstr "false"
    br L_bool_to_string_false_121
L_bool_to_string_true_120:
    ldstr "true"
L_bool_to_string_false_121:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    pop
    br L_case_end_116
L_check_case_119:
    ldloc $tmpSwitchValue8
    ldc.i4 4
    bne.un L_case_end_116
    .line 1709
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld uint8 T_interpret_record_200::c
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    pop
L_case_end_116:
L_if_end_115:
    .line 1711
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 2
    sub
    stfld int32 @interpret::t
    br L_case_end_2
L_check_case_113:
    ldloc $tmpSwitchValue1
    ldc.i4 31
    bne.un L_check_case_122
    .line 1713
    ldloc _F
    ldc.i4 1 // fin 
    stfld int32 @interpret::Ps
    br L_case_end_2
L_check_case_122:
    ldloc $tmpSwitchValue1
    ldc.i4 32
    bne.un L_check_case_123
    .line 1715
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::b
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1715
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::b
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld int32 @interpret::Pc
    .line 1715
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::b
    ldc.i4 3
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld int32 @interpret::b
    br L_case_end_2
L_check_case_123:
    ldloc $tmpSwitchValue1
    ldc.i4 33
    bne.un L_check_case_124
    .line 1718
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::b
    stfld int32 @interpret::t
    .line 1718
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::b
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld int32 @interpret::Pc
    .line 1718
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::b
    ldc.i4 3
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld int32 @interpret::b
    br L_case_end_2
L_check_case_124:
    ldloc $tmpSwitchValue1
    ldc.i4 34
    bne.un L_check_case_125
    .line 1720
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldobj valuetype T_interpret_record_200
    stobj valuetype T_interpret_record_200
    br L_case_end_2
L_check_case_125:
    ldloc $tmpSwitchValue1
    ldc.i4 35
    bne.un L_check_case_126
    .line 1721
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld bool T_interpret_record_200::b
    ldc.i4.0
    ceq
    stfld bool T_interpret_record_200::b
    br L_case_end_2
L_check_case_126:
    ldloc $tmpSwitchValue1
    ldc.i4 36
    bne.un L_check_case_127
    .line 1725
    ldloc _F
    ldflda valuetype T_order @interpret::Ir
    ldfld int32 T_order::y
    stloc $tmpSwitchValue9
    ldloc $tmpSwitchValue9
    ldc.i4 1
    bne.un L_check_case_129
    .line 1726
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    neg
    stfld int32 T_interpret_record_200::i
    br L_case_end_128
L_check_case_129:
    ldloc $tmpSwitchValue9
    ldc.i4 2
    bne.un L_case_end_128
    .line 1727
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    neg
    stfld float64 T_interpret_record_200::r
L_case_end_128:
    br L_case_end_2
L_check_case_127:
    ldloc $tmpSwitchValue1
    ldc.i4 37
    bne.un L_check_case_130
    .line 1730
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::Chrcnt
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    add
    stfld int32 @interpret::Chrcnt
    .line 1731
    ldloc _F
    ldfld int32 @interpret::Chrcnt
    ldc.i4 250
    cgt
    brfalse L_else_131
    .line 1731
    ldloc _F
    ldc.i4 7 // lngchk 
    stfld int32 @interpret::Ps
    br L_if_end_132
L_else_131:
    .line 1732
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 2
    sub
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    pop
L_if_end_132:
    .line 1733
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 3
    sub
    stfld int32 @interpret::t
    br L_case_end_2
L_check_case_130:
    ldloc $tmpSwitchValue1
    ldc.i4 38
    bne.un L_check_case_133
    .line 1735
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldobj valuetype T_interpret_record_200
    stobj valuetype T_interpret_record_200
    .line 1735
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 2
    sub
    stfld int32 @interpret::t
    /* nop */
    br L_case_end_2
L_check_case_133:
    ldloc $tmpSwitchValue1
    ldc.i4 39
    bne.un L_check_case_134
    .line 1737
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1737
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    ceq
    stfld bool T_interpret_record_200::b
    br L_case_end_2
L_check_case_134:
    ldloc $tmpSwitchValue1
    ldc.i4 40
    bne.un L_check_case_135
    .line 1739
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1739
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    ceq
    ldc.i4.0
    ceq
    stfld bool T_interpret_record_200::b
    br L_case_end_2
L_check_case_135:
    ldloc $tmpSwitchValue1
    ldc.i4 41
    bne.un L_check_case_136
    .line 1741
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1741
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    clt
    stfld bool T_interpret_record_200::b
    br L_case_end_2
L_check_case_136:
    ldloc $tmpSwitchValue1
    ldc.i4 42
    bne.un L_check_case_137
    .line 1743
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1743
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    cgt
    ldc.i4.0
    ceq
    stfld bool T_interpret_record_200::b
    br L_case_end_2
L_check_case_137:
    ldloc $tmpSwitchValue1
    ldc.i4 43
    bne.un L_check_case_138
    .line 1745
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1745
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    cgt
    stfld bool T_interpret_record_200::b
    br L_case_end_2
L_check_case_138:
    ldloc $tmpSwitchValue1
    ldc.i4 44
    bne.un L_check_case_139
    .line 1747
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1747
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    clt
    ldc.i4.0
    ceq
    stfld bool T_interpret_record_200::b
    br L_case_end_2
L_check_case_139:
    ldloc $tmpSwitchValue1
    ldc.i4 45
    bne.un L_check_case_140
    .line 1749
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1749
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ceq
    stfld bool T_interpret_record_200::b
    br L_case_end_2
L_check_case_140:
    ldloc $tmpSwitchValue1
    ldc.i4 46
    bne.un L_check_case_141
    .line 1751
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1751
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ceq
    ldc.i4.0
    ceq
    stfld bool T_interpret_record_200::b
    br L_case_end_2
L_check_case_141:
    ldloc $tmpSwitchValue1
    ldc.i4 47
    bne.un L_check_case_142
    .line 1753
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1753
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    clt
    stfld bool T_interpret_record_200::b
    br L_case_end_2
L_check_case_142:
    ldloc $tmpSwitchValue1
    ldc.i4 48
    bne.un L_check_case_143
    .line 1755
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1755
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    cgt
    ldc.i4.0
    ceq
    stfld bool T_interpret_record_200::b
    br L_case_end_2
L_check_case_143:
    ldloc $tmpSwitchValue1
    ldc.i4 49
    bne.un L_check_case_144
    .line 1757
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1757
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    cgt
    stfld bool T_interpret_record_200::b
    br L_case_end_2
L_check_case_144:
    ldloc $tmpSwitchValue1
    ldc.i4 50
    bne.un L_check_case_145
    .line 1759
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1759
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    clt
    ldc.i4.0
    ceq
    stfld bool T_interpret_record_200::b
    br L_case_end_2
L_check_case_145:
    ldloc $tmpSwitchValue1
    ldc.i4 51
    bne.un L_check_case_146
    .line 1761
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1761
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld bool T_interpret_record_200::b
    dup
    brtrue L_OR_shortcut_147
    pop
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld bool T_interpret_record_200::b
L_OR_shortcut_147:
    stfld bool T_interpret_record_200::b
    br L_case_end_2
L_check_case_146:
    ldloc $tmpSwitchValue1
    ldc.i4 52
    bne.un L_check_case_148
    .line 1763
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1763
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    add
    stfld int32 T_interpret_record_200::i
    br L_case_end_2
L_check_case_148:
    ldloc $tmpSwitchValue1
    ldc.i4 53
    bne.un L_check_case_149
    .line 1765
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1765
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    sub
    stfld int32 T_interpret_record_200::i
    br L_case_end_2
L_check_case_149:
    ldloc $tmpSwitchValue1
    ldc.i4 54
    bne.un L_check_case_150
    .line 1767
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1767
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    add
    stfld float64 T_interpret_record_200::r
    /* nop */
    br L_case_end_2
L_check_case_150:
    ldloc $tmpSwitchValue1
    ldc.i4 55
    bne.un L_check_case_151
    .line 1769
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1769
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    sub
    stfld float64 T_interpret_record_200::r
    /* nop */
    br L_case_end_2
L_check_case_151:
    ldloc $tmpSwitchValue1
    ldc.i4 56
    bne.un L_check_case_152
    .line 1771
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1771
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld bool T_interpret_record_200::b
    dup
    brfalse L_AND_shortcut_153
    pop
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld bool T_interpret_record_200::b
L_AND_shortcut_153:
    stfld bool T_interpret_record_200::b
    /* nop */
    br L_case_end_2
L_check_case_152:
    ldloc $tmpSwitchValue1
    ldc.i4 57
    bne.un L_check_case_154
    .line 1773
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1773
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    mul
    stfld int32 T_interpret_record_200::i
    br L_case_end_2
L_check_case_154:
    ldloc $tmpSwitchValue1
    ldc.i4 58
    bne.un L_check_case_155
    .line 1775
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1776
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldc.i4 0
    ceq
    brfalse L_else_156
    .line 1776
    ldloc _F
    ldc.i4 3 // divchk 
    stfld int32 @interpret::Ps
    br L_if_end_157
L_else_156:
    .line 1777
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    div
    stfld int32 T_interpret_record_200::i
L_if_end_157:
    br L_case_end_2
L_check_case_155:
    ldloc $tmpSwitchValue1
    ldc.i4 59
    bne.un L_check_case_158
    .line 1779
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1780
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldc.i4 0
    ceq
    brfalse L_else_159
    .line 1780
    ldloc _F
    ldc.i4 3 // divchk 
    stfld int32 @interpret::Ps
    br L_if_end_160
L_else_159:
    .line 1781
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    stfld int32 T_interpret_record_200::i
L_if_end_160:
    br L_case_end_2
L_check_case_158:
    ldloc $tmpSwitchValue1
    ldc.i4 60
    bne.un L_check_case_161
    .line 1783
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1783
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    mul
    stfld float64 T_interpret_record_200::r
    /* nop */
    br L_case_end_2
L_check_case_161:
    ldloc $tmpSwitchValue1
    ldc.i4 61
    bne.un L_check_case_162
    .line 1785
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 1785
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    div
    stfld float64 T_interpret_record_200::r
    /* nop */
    br L_case_end_2
L_check_case_162:
    ldloc $tmpSwitchValue1
    ldc.i4 62
    bne.un L_check_case_163
    .line 1787
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance bool [lpcRuntime]LPC.File::Eof()
    brfalse L_else_164
    .line 1787
    ldloc _F
    ldc.i4 8 // redchk 
    stfld int32 @interpret::Ps
    br L_if_end_165
L_else_164:
    .line 1787
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance void [lpcRuntime]LPC.File::ReadLn()
L_if_end_165:
    br L_case_end_2
L_check_case_163:
    ldloc $tmpSwitchValue1
    ldc.i4 63
    bne.un L_case_end_2
    .line 1788
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1788
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::Lncnt
    ldc.i4 1
    add
    stfld int32 @interpret::Lncnt
    .line 1788
    ldloc _F
    ldc.i4 0
    stfld int32 @interpret::Chrcnt
    .line 1789
    ldloc _F
    ldfld int32 @interpret::Lncnt
    ldc.i4 10000
    cgt
    brfalse L_if_end_166
    .line 1789
    ldloc _F
    ldc.i4 6 // linchk 
    stfld int32 @interpret::Ps
L_if_end_166:
L_case_end_2:
    /* nop */
    ldloc _F
    ldfld int32 @interpret::Ps
    ldc.i4 0 // run 
    ceq
    ldc.i4.0
    ceq
    brfalse L_repeat_1
    .line 1794
    ldloc _F
    ldfld int32 @interpret::Ps
    ldc.i4 1 // fin 
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_167
    .line 1795
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1797
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "halt at"
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldloc _F
    ldfld int32 @interpret::Pc
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " because of "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1798
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1799
    ldloc _F
    ldfld int32 @interpret::Ps
    stloc $tmpSwitchValue10
    ldloc $tmpSwitchValue10
    ldc.i4 2 // caschk 
    bne.un L_check_case_169
    .line 1800
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "undefined case"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_168
L_check_case_169:
    ldloc $tmpSwitchValue10
    ldc.i4 3 // divchk 
    bne.un L_check_case_170
    .line 1801
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "division by 0"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_168
L_check_case_170:
    ldloc $tmpSwitchValue10
    ldc.i4 4 // inxchk 
    bne.un L_check_case_171
    .line 1802
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "invalid index"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_168
L_check_case_171:
    ldloc $tmpSwitchValue10
    ldc.i4 5 // stkchk 
    bne.un L_check_case_172
    .line 1803
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "storage overflow"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_168
L_check_case_172:
    ldloc $tmpSwitchValue10
    ldc.i4 6 // linchk 
    bne.un L_check_case_173
    .line 1804
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "too much output"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_168
L_check_case_173:
    ldloc $tmpSwitchValue10
    ldc.i4 7 // lngchk 
    bne.un L_check_case_174
    .line 1805
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "line too long"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_168
L_check_case_174:
    ldloc $tmpSwitchValue10
    ldc.i4 8 // redchk 
    bne.un L_case_end_168
    .line 1806
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "reading past end of file"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_case_end_168:
    .line 1808
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::b
    stfld int32 @interpret::H1
    .line 1808
    ldloc _F
    ldc.i4 10
    stfld int32 @interpret::Blkcnt
    .line 1809
L_repeat_175:
    .line 1809
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1809
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::Blkcnt
    ldc.i4 1
    sub
    stfld int32 @interpret::Blkcnt
    .line 1810
    ldloc _F
    ldfld int32 @interpret::Blkcnt
    ldc.i4 0
    ceq
    brfalse L_if_end_176
    .line 1810
    ldloc _F
    ldc.i4 0
    stfld int32 @interpret::H1
L_if_end_176:
    .line 1810
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H1
    ldc.i4 4
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld int32 @interpret::H2
    .line 1811
    ldloc _F
    ldfld int32 @interpret::H1
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_177
    .line 1812
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @interpret::H2
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld valuetype T_alfa T_record_86::Name
    call string T_alfa::arrayToString(valuetype T_alfa)
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr " called at"
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H1
    ldc.i4 1
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_177:
    .line 1813
    ldloc _F
    ldsflda valuetype T_array_92 _G::Btab
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @interpret::H2
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld int32 T_record_86::Ref
    call instance valuetype T_record_91& T_array_92::ldadr(int32)
    ldfld int32 T_record_91::Last
    stfld int32 @interpret::H2
    .line 1814
    br L_while_test_179
L_while_178:
    .line 1816
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @interpret::H2
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld int32 T_record_86::Obj
    ldc.i4 1
    ceq
    brfalse L_if_end_180
    .line 1817
    ldsfld valuetype T_typset _G::Stantyps
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @interpret::H2
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld int32 T_record_86::Typ
    call bool _SetContains(valuetype T_typset s, int32 val)
    brfalse L_if_end_181
    .line 1818
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "    "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @interpret::H2
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld valuetype T_alfa T_record_86::Name
    call string T_alfa::arrayToString(valuetype T_alfa)
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldstr " = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 1819
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @interpret::H2
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld bool T_record_86::Normal
    brfalse L_else_182
    .line 1819
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::H1
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @interpret::H2
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld int32 T_record_86::Adr
    add
    stfld int32 @interpret::H3
    br L_if_end_183
L_else_182:
    .line 1819
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H1
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @interpret::H2
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld int32 T_record_86::Adr
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld int32 @interpret::H3
L_if_end_183:
    .line 1820
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @interpret::H2
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld int32 T_record_86::Typ
    stloc $tmpSwitchValue11
    ldloc $tmpSwitchValue11
    ldc.i4 1
    bne.un L_check_case_185
    .line 1821
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H3
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_184
L_check_case_185:
    ldloc $tmpSwitchValue11
    ldc.i4 2
    bne.un L_check_case_186
    .line 1822
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H3
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld float64 T_interpret_record_200::r
    call instance void [lpcRuntime]LPC.File::Write(float64)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_184
L_check_case_186:
    ldloc $tmpSwitchValue11
    ldc.i4 3
    bne.un L_check_case_187
    .line 1823
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H3
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld bool T_interpret_record_200::b
    brtrue L_bool_to_string_true_188
    ldstr "false"
    br L_bool_to_string_false_189
L_bool_to_string_true_188:
    ldstr "true"
L_bool_to_string_false_189:
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_184
L_check_case_187:
    ldloc $tmpSwitchValue11
    ldc.i4 4
    bne.un L_case_end_184
    .line 1824
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H3
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld uint8 T_interpret_record_200::c
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_case_end_184:
L_if_end_181:
L_if_end_180:
    .line 1827
    ldloc _F
    ldsflda valuetype T_array_88 _G::Tab
    ldloc _F
    ldfld int32 @interpret::H2
    call instance valuetype T_record_86& T_array_88::ldadr(int32)
    ldfld int32 T_record_86::Link
    stfld int32 @interpret::H2
L_while_test_179:
    ldloc _F
    ldfld int32 @interpret::H2
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    brtrue L_while_178
    .line 1829
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_199 @interpret::s
    ldloc _F
    ldfld int32 @interpret::H1
    ldc.i4 3
    add
    call instance valuetype T_interpret_record_200& T_interpret_array_199::ldadr(int32)
    ldfld int32 T_interpret_record_200::i
    stfld int32 @interpret::H1
    ldloc _F
    ldfld int32 @interpret::H1
    ldc.i4 0
    clt
    brfalse L_repeat_175
    /* nop */
L_if_end_167:
    .line 1832
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1832
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld int32 @interpret::Ocnt
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldstr " steps"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()

L_Epilogue:
    ret
}

.line 0
//================================================================================
// scope: global scope (level : 0)

.line 167

.method static
void _Program()
{
    .maxstack 32

    .locals init(
        valuetype T_symset $tmpSetLiteral1,
        valuetype T_symset $tmpSetLiteral2,
        valuetype T_symset $tmpSetLiteral3,
        valuetype T_symset $tmpSetLiteral4,
        valuetype T_symset $tmpSetLiteral5,
        valuetype T_typset $tmpSetLiteral6,
        valuetype T_set_62 $tmpSetLiteral7,
        valuetype T_set_62 $tmpSetLiteral8)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    ldc.i4 0
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Srcfil
    ldc.i4 2
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldloca $tmpSetLiteral1
    ldc.i4 5 // plus 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 6 // minus 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 0 // intcon 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 1 // realcon 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 2 // charcon 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 36 // ident 
    call instance void T_symset::addValue(int32)

    ldloca $tmpSetLiteral2
    ldc.i4 36 // ident 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral2
    ldc.i4 33 // arraysy 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral2
    ldc.i4 34 // recordsy 
    call instance void T_symset::addValue(int32)

    ldloca $tmpSetLiteral3
    ldc.i4 28 // constsy 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral3
    ldc.i4 29 // typesy 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral3
    ldc.i4 30 // varsy 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral3
    ldc.i4 32 // proceduresy 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral3
    ldc.i4 31 // functionsy 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral3
    ldc.i4 37 // beginsy 
    call instance void T_symset::addValue(int32)

    ldloca $tmpSetLiteral4
    ldc.i4 0 // intcon 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral4
    ldc.i4 1 // realcon 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral4
    ldc.i4 2 // charcon 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral4
    ldc.i4 36 // ident 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral4
    ldc.i4 19 // lparent 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral4
    ldc.i4 4 // notsy 
    call instance void T_symset::addValue(int32)

    ldloca $tmpSetLiteral5
    ldc.i4 37 // beginsy 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral5
    ldc.i4 38 // ifsy 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral5
    ldc.i4 41 // whilesy 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral5
    ldc.i4 40 // repeatsy 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral5
    ldc.i4 42 // forsy 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral5
    ldc.i4 39 // casesy 
    call instance void T_symset::addValue(int32)

    ldloca $tmpSetLiteral6
    ldc.i4 0 // notyp 
    call instance void T_typset::addValue(int32)
    ldloca $tmpSetLiteral6
    ldc.i4 1 // ints 
    call instance void T_typset::addValue(int32)
    ldloca $tmpSetLiteral6
    ldc.i4 2 // reals 
    call instance void T_typset::addValue(int32)
    ldloca $tmpSetLiteral6
    ldc.i4 3 // bools 
    call instance void T_typset::addValue(int32)
    ldloca $tmpSetLiteral6
    ldc.i4 4 // chars 
    call instance void T_typset::addValue(int32)



L_Entry:
.try
{
    .line 1838
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1839
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Pascal-S compiler/interpreter"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1843
    ldsflda valuetype [lpcRuntime]LPC.File _G::Srcfil
    call instance void [lpcRuntime]LPC.File::Reset()
    .line 1845
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 1
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_62    // "and       "
    stobj valuetype T_alfa
    .line 1845
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 2
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_63    // "array     "
    stobj valuetype T_alfa
    .line 1846
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 3
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_52    // "begin     "
    stobj valuetype T_alfa
    .line 1846
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 4
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_64    // "case      "
    stobj valuetype T_alfa
    .line 1847
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 5
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_65    // "const     "
    stobj valuetype T_alfa
    .line 1847
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 6
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_66    // "div       "
    stobj valuetype T_alfa
    .line 1848
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 7
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_50    // "do        "
    stobj valuetype T_alfa
    .line 1848
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 8
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_67    // "downto    "
    stobj valuetype T_alfa
    .line 1849
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 9
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_68    // "else      "
    stobj valuetype T_alfa
    .line 1849
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 10
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_53    // "end       "
    stobj valuetype T_alfa
    .line 1850
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 11
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_69    // "for       "
    stobj valuetype T_alfa
    .line 1850
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 12
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_70    // "function  "
    stobj valuetype T_alfa
    .line 1851
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 13
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_71    // "if        "
    stobj valuetype T_alfa
    .line 1851
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 14
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_72    // "mod       "
    stobj valuetype T_alfa
    .line 1852
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 15
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_73    // "not       "
    stobj valuetype T_alfa
    .line 1852
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 16
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_9    // "of        "
    stobj valuetype T_alfa
    .line 1853
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 17
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_74    // "or        "
    stobj valuetype T_alfa
    .line 1853
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 18
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_75    // "procedure "
    stobj valuetype T_alfa
    .line 1854
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 19
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_4    // "program   "
    stobj valuetype T_alfa
    .line 1854
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 20
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_76    // "record    "
    stobj valuetype T_alfa
    .line 1855
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 21
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_77    // "repeat    "
    stobj valuetype T_alfa
    .line 1855
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 22
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_48    // "then      "
    stobj valuetype T_alfa
    .line 1856
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 23
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_78    // "to        "
    stobj valuetype T_alfa
    .line 1856
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 24
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_20    // "type      "
    stobj valuetype T_alfa
    .line 1857
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 25
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_49    // "until     "
    stobj valuetype T_alfa
    .line 1857
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 26
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_79    // "var       "
    stobj valuetype T_alfa
    .line 1858
    ldsflda valuetype T_array_79 _G::Key
    ldc.i4 27
    call instance valuetype T_alfa& T_array_79::ldadr(int32)
    ldsfld valuetype T_alfa STRING_80    // "while     "
    stobj valuetype T_alfa
    .line 1859
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 1
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 11 // andsy 
    stobj int32
    .line 1859
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 2
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 33 // arraysy 
    stobj int32
    .line 1860
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 3
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 37 // beginsy 
    stobj int32
    .line 1860
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 4
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 39 // casesy 
    stobj int32
    .line 1861
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 5
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 28 // constsy 
    stobj int32
    .line 1861
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 6
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 8 // idiv 
    stobj int32
    .line 1862
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 7
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 47 // dosy 
    stobj int32
    .line 1862
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 8
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 49 // downtosy 
    stobj int32
    .line 1863
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 9
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 44 // elsesy 
    stobj int32
    .line 1863
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 10
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 43 // endsy 
    stobj int32
    .line 1864
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 11
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 42 // forsy 
    stobj int32
    .line 1864
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 12
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 31 // functionsy 
    stobj int32
    .line 1865
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 13
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 38 // ifsy 
    stobj int32
    .line 1865
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 14
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 10 // imod 
    stobj int32
    .line 1866
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 15
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 4 // notsy 
    stobj int32
    .line 1866
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 16
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 46 // ofsy 
    stobj int32
    .line 1867
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 17
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 12 // orsy 
    stobj int32
    .line 1867
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 18
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 32 // proceduresy 
    stobj int32
    .line 1868
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 19
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 35 // programsy 
    stobj int32
    .line 1868
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 20
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 34 // recordsy 
    stobj int32
    .line 1869
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 21
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 40 // repeatsy 
    stobj int32
    .line 1869
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 22
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 50 // thensy 
    stobj int32
    .line 1870
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 23
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 48 // tosy 
    stobj int32
    .line 1870
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 24
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 29 // typesy 
    stobj int32
    .line 1871
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 25
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 45 // untilsy 
    stobj int32
    .line 1871
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 26
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 30 // varsy 
    stobj int32
    .line 1872
    ldsflda valuetype T_array_80 _G::Ksy
    ldc.i4 27
    call instance int32& T_array_80::ldadr(int32)
    ldc.i4 41 // whilesy 
    stobj int32
    .line 1873
    ldsflda valuetype T_array_85 _G::Sps
    ldc.i4 43 // '+'
    call instance int32& T_array_85::ldadr(int32)
    ldc.i4 5 // plus 
    stobj int32
    .line 1873
    ldsflda valuetype T_array_85 _G::Sps
    ldc.i4 45 // '-'
    call instance int32& T_array_85::ldadr(int32)
    ldc.i4 6 // minus 
    stobj int32
    .line 1874
    ldsflda valuetype T_array_85 _G::Sps
    ldc.i4 42 // '*'
    call instance int32& T_array_85::ldadr(int32)
    ldc.i4 7 // times 
    stobj int32
    .line 1874
    ldsflda valuetype T_array_85 _G::Sps
    ldc.i4 47 // '/'
    call instance int32& T_array_85::ldadr(int32)
    ldc.i4 9 // rdiv 
    stobj int32
    .line 1875
    ldsflda valuetype T_array_85 _G::Sps
    ldc.i4 40 // '('
    call instance int32& T_array_85::ldadr(int32)
    ldc.i4 19 // lparent 
    stobj int32
    .line 1875
    ldsflda valuetype T_array_85 _G::Sps
    ldc.i4 41 // ')'
    call instance int32& T_array_85::ldadr(int32)
    ldc.i4 20 // rparent 
    stobj int32
    .line 1876
    ldsflda valuetype T_array_85 _G::Sps
    ldc.i4 61 // '='
    call instance int32& T_array_85::ldadr(int32)
    ldc.i4 13 // egl 
    stobj int32
    .line 1876
    ldsflda valuetype T_array_85 _G::Sps
    ldc.i4 44 // ','
    call instance int32& T_array_85::ldadr(int32)
    ldc.i4 23 // comma 
    stobj int32
    .line 1877
    ldsflda valuetype T_array_85 _G::Sps
    ldc.i4 91 // '['
    call instance int32& T_array_85::ldadr(int32)
    ldc.i4 21 // lbrack 
    stobj int32
    .line 1877
    ldsflda valuetype T_array_85 _G::Sps
    ldc.i4 93 // ']'
    call instance int32& T_array_85::ldadr(int32)
    ldc.i4 22 // rbrack 
    stobj int32
    .line 1878
    ldsflda valuetype T_array_85 _G::Sps
    ldc.i4 35 // '#'
    call instance int32& T_array_85::ldadr(int32)
    ldc.i4 14 // neg 
    stobj int32
    .line 1878
    ldsflda valuetype T_array_85 _G::Sps
    ldc.i4 38 // '&'
    call instance int32& T_array_85::ldadr(int32)
    ldc.i4 11 // andsy 
    stobj int32
    .line 1879
    ldsflda valuetype T_array_85 _G::Sps
    ldc.i4 59 // ';'
    call instance int32& T_array_85::ldadr(int32)
    ldc.i4 24 // semicolon 
    stobj int32
    .line 1880
    ldloc $tmpSetLiteral1
    stsfld valuetype T_symset _G::Constbegsys
    .line 1881
    ldloc $tmpSetLiteral2
    stsfld valuetype T_symset _G::Typebegsys
    .line 1882
    ldloc $tmpSetLiteral3
    stsfld valuetype T_symset _G::Blockbegsys
    .line 1884
    ldloc $tmpSetLiteral4
    stsfld valuetype T_symset _G::Facbegsys
    .line 1885
    ldloc $tmpSetLiteral5
    stsfld valuetype T_symset _G::Statbegsys
    .line 1886
    ldloc $tmpSetLiteral6
    stsfld valuetype T_typset _G::Stantyps
    .line 1887
    ldc.i4 0
    stsfld int32 _G::Lc
    .line 1887
    ldc.i4 0
    stsfld int32 _G::Ll
    .line 1887
    ldc.i4 0
    stsfld int32 _G::Cc
    .line 1887
    ldc.i4 32 // ' '
    stsfld uint8 _G::Ch
    .line 1888
    ldc.i4 0
    stsfld int32 _G::Errpos
    .line 1888
    ldloc $tmpSetLiteral7
    dup
    ldc.i4 0
    ldc.i4 58
    call void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
    call valuetype T_set_61 _SetCastTo_T_set_61(valuetype T_set_62 s)
    stsfld valuetype T_set_61 _G::Errs
    .line 1888
    call void Insymbol()
    .line 1889
    ldc.i4 1
    neg
    stsfld int32 _G::t
    .line 1889
    ldc.i4 0
    stsfld int32 _G::a
    .line 1889
    ldc.i4 1
    stsfld int32 _G::b
    .line 1889
    ldc.i4 0
    stsfld int32 _G::Sx
    .line 1889
    ldc.i4 0
    stsfld int32 _G::C2
    .line 1890
    ldsflda valuetype T_array_100 _G::Display
    ldc.i4 0
    call instance int32& T_array_100::ldadr(int32)
    ldc.i4 1
    stobj int32
    .line 1891
    ldc.i4 0 // (false)
    stsfld bool _G::Iflag
    .line 1891
    ldc.i4 0 // (false)
    stsfld bool _G::Oflag
    .line 1892
    ldsfld int32 _G::Sy
    ldc.i4 35 // programsy 
    ceq
    ldc.i4.0
    ceq
    brfalse L_else_1
    .line 1892
    ldc.i4 3
    call void Error(int32 n)
    br L_if_end_2
L_else_1:
    .line 1893
    call void Insymbol()
    .line 1894
    ldsfld int32 _G::Sy
    ldc.i4 36 // ident 
    ceq
    ldc.i4.0
    ceq
    brfalse L_else_3
    .line 1894
    ldc.i4 2
    call void Error(int32 n)
    br L_if_end_4
L_else_3:
    .line 1895
    ldsfld valuetype T_alfa _G::Id
    stsfld valuetype T_alfa _G::Progname
    .line 1895
    call void Insymbol()
    .line 1896
    ldsfld int32 _G::Sy
    ldc.i4 19 // lparent 
    ceq
    ldc.i4.0
    ceq
    brfalse L_else_5
    .line 1896
    ldc.i4 9
    call void Error(int32 n)
    br L_if_end_6
L_else_5:
    .line 1897
L_repeat_7:
    .line 1897
    call void Insymbol()
    .line 1898
    ldsfld int32 _G::Sy
    ldc.i4 36 // ident 
    ceq
    ldc.i4.0
    ceq
    brfalse L_else_8
    .line 1898
    ldc.i4 2
    call void Error(int32 n)
    br L_if_end_9
L_else_8:
    .line 1899
    ldsfld valuetype T_alfa _G::Id
    call string T_alfa::arrayToString(valuetype T_alfa)
    ldstr "input     "
    call bool [lpcRuntime]LPC.Helpers::StrcmpEQ(string, string)
    brfalse L_else_10
    .line 1899
    ldc.i4 1 // (true)
    stsfld bool _G::Iflag
    br L_if_end_11
L_else_10:
    .line 1900
    ldsfld valuetype T_alfa _G::Id
    call string T_alfa::arrayToString(valuetype T_alfa)
    ldstr "output    "
    call bool [lpcRuntime]LPC.Helpers::StrcmpEQ(string, string)
    brfalse L_else_12
    .line 1900
    ldc.i4 1 // (true)
    stsfld bool _G::Oflag
    br L_if_end_13
L_else_12:
    .line 1900
    ldc.i4 0
    call void Error(int32 n)
L_if_end_13:
L_if_end_11:
    .line 1901
    call void Insymbol()
L_if_end_9:
    ldsfld int32 _G::Sy
    ldc.i4 23 // comma 
    ceq
    ldc.i4.0
    ceq
    brfalse L_repeat_7
L_if_end_6:
    .line 1904
    ldsfld int32 _G::Sy
    ldc.i4 20 // rparent 
    ceq
    brfalse L_else_14
    .line 1904
    call void Insymbol()
    br L_if_end_15
L_else_14:
    .line 1904
    ldc.i4 4
    call void Error(int32 n)
L_if_end_15:
    .line 1905
    ldsfld bool _G::Oflag
    ldc.i4.0
    ceq
    brfalse L_if_end_16
    .line 1905
    ldc.i4 20
    call void Error(int32 n)
L_if_end_16:
L_if_end_4:
L_if_end_2:
    .line 1908
    ldsfld valuetype T_alfa STRING_61    // "          "
    ldc.i4 1 // variable 
    ldc.i4 0 // notyp 
    ldc.i4 0
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1909
    ldsfld valuetype T_alfa STRING_81    // "false     "
    ldc.i4 0 // konstant 
    ldc.i4 3 // bools 
    ldc.i4 0
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1910
    ldsfld valuetype T_alfa STRING_82    // "true      "
    ldc.i4 0 // konstant 
    ldc.i4 3 // bools 
    ldc.i4 1
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1911
    ldsfld valuetype T_alfa STRING_83    // "real      "
    ldc.i4 2 // typel 
    ldc.i4 2 // reals 
    ldc.i4 1
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1912
    ldsfld valuetype T_alfa STRING_84    // "char      "
    ldc.i4 2 // typel 
    ldc.i4 4 // chars 
    ldc.i4 1
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1913
    ldsfld valuetype T_alfa STRING_18    // "boolean   "
    ldc.i4 2 // typel 
    ldc.i4 3 // bools 
    ldc.i4 1
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1914
    ldsfld valuetype T_alfa STRING_35    // "integer   "
    ldc.i4 2 // typel 
    ldc.i4 1 // ints 
    ldc.i4 1
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1915
    ldsfld valuetype T_alfa STRING_85    // "abs       "
    ldc.i4 4 // funktion 
    ldc.i4 2 // reals 
    ldc.i4 0
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1916
    ldsfld valuetype T_alfa STRING_86    // "sqr       "
    ldc.i4 4 // funktion 
    ldc.i4 2 // reals 
    ldc.i4 2
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1917
    ldsfld valuetype T_alfa STRING_87    // "odd       "
    ldc.i4 4 // funktion 
    ldc.i4 3 // bools 
    ldc.i4 4
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1918
    ldsfld valuetype T_alfa STRING_88    // "chr       "
    ldc.i4 4 // funktion 
    ldc.i4 4 // chars 
    ldc.i4 5
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1919
    ldsfld valuetype T_alfa STRING_89    // "ord       "
    ldc.i4 4 // funktion 
    ldc.i4 1 // ints 
    ldc.i4 6
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1920
    ldsfld valuetype T_alfa STRING_90    // "succ      "
    ldc.i4 4 // funktion 
    ldc.i4 4 // chars 
    ldc.i4 7
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1921
    ldsfld valuetype T_alfa STRING_91    // "pred      "
    ldc.i4 4 // funktion 
    ldc.i4 4 // chars 
    ldc.i4 8
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1922
    ldsfld valuetype T_alfa STRING_92    // "round     "
    ldc.i4 4 // funktion 
    ldc.i4 1 // ints 
    ldc.i4 9
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1923
    ldsfld valuetype T_alfa STRING_93    // "trunc     "
    ldc.i4 4 // funktion 
    ldc.i4 1 // ints 
    ldc.i4 10
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1924
    ldsfld valuetype T_alfa STRING_94    // "sin       "
    ldc.i4 4 // funktion 
    ldc.i4 2 // reals 
    ldc.i4 11
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1925
    ldsfld valuetype T_alfa STRING_95    // "cos       "
    ldc.i4 4 // funktion 
    ldc.i4 2 // reals 
    ldc.i4 12
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1926
    ldsfld valuetype T_alfa STRING_96    // "exp       "
    ldc.i4 4 // funktion 
    ldc.i4 2 // reals 
    ldc.i4 13
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1927
    ldsfld valuetype T_alfa STRING_97    // "ln        "
    ldc.i4 4 // funktion 
    ldc.i4 2 // reals 
    ldc.i4 14
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1928
    ldsfld valuetype T_alfa STRING_98    // "sqrt      "
    ldc.i4 4 // funktion 
    ldc.i4 2 // reals 
    ldc.i4 15
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1929
    ldsfld valuetype T_alfa STRING_99    // "arctan    "
    ldc.i4 4 // funktion 
    ldc.i4 2 // reals 
    ldc.i4 16
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1930
    ldsfld valuetype T_alfa STRING_100    // "eof       "
    ldc.i4 4 // funktion 
    ldc.i4 3 // bools 
    ldc.i4 17
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1931
    ldsfld valuetype T_alfa STRING_101    // "eoln      "
    ldc.i4 4 // funktion 
    ldc.i4 3 // bools 
    ldc.i4 18
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1932
    ldsfld valuetype T_alfa STRING_102    // "read      "
    ldc.i4 3 // prozedure 
    ldc.i4 0 // notyp 
    ldc.i4 1
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1933
    ldsfld valuetype T_alfa STRING_103    // "readln    "
    ldc.i4 3 // prozedure 
    ldc.i4 0 // notyp 
    ldc.i4 2
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1934
    ldsfld valuetype T_alfa STRING_104    // "write     "
    ldc.i4 3 // prozedure 
    ldc.i4 0 // notyp 
    ldc.i4 3
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1935
    ldsfld valuetype T_alfa STRING_105    // "writeln   "
    ldc.i4 3 // prozedure 
    ldc.i4 0 // notyp 
    ldc.i4 4
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1936
    ldsfld valuetype T_alfa STRING_61    // "          "
    ldc.i4 3 // prozedure 
    ldc.i4 0 // notyp 
    ldc.i4 0
    call void Enter(valuetype T_alfa X0, int32 X1, int32 X2, int32 X3)
    .line 1938
    ldsflda valuetype T_array_92 _G::Btab
    ldc.i4 1
    call instance valuetype T_record_91& T_array_92::ldadr(int32)
    ldsfld int32 _G::t
    dup
    ldc.i4 -131071
    ldc.i4 131071
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 T_record_91::Last
    .line 1938
    ldsflda valuetype T_array_92 _G::Btab
    ldc.i4 1
    call instance valuetype T_record_91& T_array_92::ldadr(int32)
    ldc.i4 1
    dup
    ldc.i4 -131071
    ldc.i4 131071
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 T_record_91::Lastpar
    .line 1938
    ldsflda valuetype T_array_92 _G::Btab
    ldc.i4 1
    call instance valuetype T_record_91& T_array_92::ldadr(int32)
    ldc.i4 0
    dup
    ldc.i4 -131071
    ldc.i4 131071
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 T_record_91::Psize
    .line 1938
    ldsflda valuetype T_array_92 _G::Btab
    ldc.i4 1
    call instance valuetype T_record_91& T_array_92::ldadr(int32)
    ldc.i4 0
    dup
    ldc.i4 -131071
    ldc.i4 131071
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int32 T_record_91::Vsize
    .line 1941
    ldsfld valuetype T_symset _G::Blockbegsys
    ldsfld valuetype T_symset _G::Statbegsys
    call valuetype T_symset _SetUnion(valuetype T_symset a, valuetype T_symset b)
    ldc.i4 0 // (false)
    ldc.i4 1
    call void Block(valuetype T_symset Fsys, bool Isfun, int32 Level)
    .line 1942
    ldsfld int32 _G::Sy
    ldc.i4 25 // period 
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_17
    .line 1942
    ldc.i4 22
    call void Error(int32 n)
L_if_end_17:
    .line 1943
    ldc.i4 31
    call void Emit(int32 Fct)
    .line 1944
    ldsflda valuetype T_array_92 _G::Btab
    ldc.i4 2
    call instance valuetype T_record_91& T_array_92::ldadr(int32)
    ldfld int32 T_record_91::Vsize
    ldc.i4 10000 // stacksize 
    cgt
    brfalse L_if_end_18
    .line 1944
    ldc.i4 49
    call void Error(int32 n)
L_if_end_18:
    .line 1945
    ldsfld valuetype T_alfa _G::Progname
    call string T_alfa::arrayToString(valuetype T_alfa)
    ldstr "test0     "
    call bool [lpcRuntime]LPC.Helpers::StrcmpEQ(string, string)
    brfalse L_if_end_19
    .line 1945
    call void Printtables()
L_if_end_19:
    .line 1947
    ldsfld valuetype T_set_61 _G::Errs
    call valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_set_61 s)
    ldloc $tmpSetLiteral8
    call bool _SetEqual(valuetype T_set_62 a, valuetype T_set_62 b)
    brfalse L_else_20
    .line 1949
    ldsfld bool _G::Iflag
    brfalse L_if_end_22
    .line 1951
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance bool [lpcRuntime]LPC.File::Eof()
    brfalse L_else_23
    .line 1951
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " input data missing"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_if_end_24
L_else_23:
    .line 1952
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " (eor) "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1953
    br L_while_test_26
L_while_25:
    .line 1954
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    .line 1955
    br L_while_test_28
L_while_27:
    .line 1956
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    dup
    ldsflda uint8 _G::Ch
    ldc.i4 0
    ldc.i4 255
    call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
    pop
    .line 1956
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld uint8 _G::Ch
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_while_test_28:
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance bool [lpcRuntime]LPC.File::Eoln()
    ldc.i4.0
    ceq
    brtrue L_while_27
    .line 1958
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1958
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    dup
    ldsflda uint8 _G::Ch
    ldc.i4 0
    ldc.i4 255
    call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
    pop
L_while_test_26:
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance bool [lpcRuntime]LPC.File::Eof()
    ldc.i4.0
    ceq
    brtrue L_while_25
    /* nop */
L_if_end_24:
L_if_end_22:
    .line 1962
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " (eof) "
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 1963
    call void Interpret()
    br L_if_end_21
L_else_20:
    .line 1965
    call void Errormsg()
L_if_end_21:
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

    ldsflda valuetype [lpcRuntime]LPC.File _G::Srcfil
    call instance void [lpcRuntime]LPC.File::Close()

    endfinally
}

}

.line 0xfeefee

//================================================================================
// internal helpers

.method static bool _SetContains(valuetype T_set_61 s, int32 val)
{
    ldarga s
    ldc.i4 8
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static bool _SetContains(valuetype T_set_62 s, int32 val)
{
    ldarga s
    ldc.i4 32
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static bool _SetContains(valuetype T_symset s, int32 val)
{
    ldarga s
    ldc.i4 8
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static bool _SetContains(valuetype T_typset s, int32 val)
{
    ldarga s
    ldc.i4 4
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static bool _SetEqual(valuetype T_set_62 a, valuetype T_set_62 b)
{
    ldarga a
    ldarga b
    ldc.i4 32
    call bool [lpcRuntime]LPC.Set::Equal(uint8*, uint8*, int32)
    ret
}

.method static valuetype T_set_61 _SetCastTo_T_set_61(valuetype T_set_62 s)
{
    .locals init (valuetype T_set_61 result)

    ldloca result
    ldarga s
    ldc.i4 8
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_set_61 s)
{
    .locals init (valuetype T_set_62 result)

    ldloca result
    ldarga s
    ldc.i4 8
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_62 _SetCastTo_T_set_62(valuetype T_symset s)
{
    .locals init (valuetype T_set_62 result)

    ldloca result
    ldarga s
    ldc.i4 8
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_62 _SetDifference(valuetype T_set_62 a, valuetype T_set_62 b)
{
    .locals init (valuetype T_set_62 result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 32
    call void [lpcRuntime]LPC.Set::Difference(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_set_62 _SetUnion(valuetype T_set_62 a, valuetype T_set_62 b)
{
    .locals init (valuetype T_set_62 result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 32
    call void [lpcRuntime]LPC.Set::Union(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_symset _SetCastTo_T_symset(valuetype T_set_62 s)
{
    .locals init (valuetype T_symset result)

    ldloca result
    ldarga s
    ldc.i4 8
    cpblk
    ldloc result
    ret
}

.method static valuetype T_symset _SetUnion(valuetype T_symset a, valuetype T_symset b)
{
    .locals init (valuetype T_symset result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 8
    call void [lpcRuntime]LPC.Set::Union(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static void _SetCheck(valuetype T_set_62 s, int32 min, int32 max)
{
    ldarga s
    ldc.i4 32
    ldarg min
    ldarg max
    call void [lpcRuntime]LPC.Set::RTCheck(uint8*, int32, int32, int32)
    ret
}



.line 0xfeefee

//================================================================================
// global string literals

// "          "
.data STRING_61_DATA = bytearray( 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_61 at STRING_61_DATA

// "(         "
.data STRING_10_DATA = bytearray( 28 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_10 at STRING_10_DATA

// ")         "
.data STRING_5_DATA = bytearray( 29 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_5 at STRING_5_DATA

// ".         "
.data STRING_23_DATA = bytearray( 2e 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_23 at STRING_23_DATA

// "..        "
.data STRING_14_DATA = bytearray( 2e 2e 20 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_14 at STRING_14_DATA

// ":         "
.data STRING_6_DATA = bytearray( 3a 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_6 at STRING_6_DATA

// ":=        "
.data STRING_47_DATA = bytearray( 3a 3d 20 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_47 at STRING_47_DATA

// ";         "
.data STRING_15_DATA = bytearray( 3b 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_15 at STRING_15_DATA

// "=         "
.data STRING_17_DATA = bytearray( 3d 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_17 at STRING_17_DATA

// "[         "
.data STRING_12_DATA = bytearray( 5b 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_12 at STRING_12_DATA

// "]         "
.data STRING_13_DATA = bytearray( 5d 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_13 at STRING_13_DATA

// "abs       "
.data STRING_85_DATA = bytearray( 61 62 73 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_85 at STRING_85_DATA

// "and       "
.data STRING_62_DATA = bytearray( 61 6e 64 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_62 at STRING_62_DATA

// "arctan    "
.data STRING_99_DATA = bytearray( 61 72 63 74 61 6e 20 20 20 20 )
.field static valuetype T_alfa STRING_99 at STRING_99_DATA

// "arith type"
.data STRING_34_DATA = bytearray( 61 72 69 74 68 20 74 79 70 65 )
.field static valuetype T_alfa STRING_34 at STRING_34_DATA

// "array     "
.data STRING_63_DATA = bytearray( 61 72 72 61 79 20 20 20 20 20 )
.field static valuetype T_alfa STRING_63 at STRING_63_DATA

// "arrays    "
.data STRING_57_DATA = bytearray( 61 72 72 61 79 73 20 20 20 20 )
.field static valuetype T_alfa STRING_57 at STRING_57_DATA

// "begin     "
.data STRING_52_DATA = bytearray( 62 65 67 69 6e 20 20 20 20 20 )
.field static valuetype T_alfa STRING_52 at STRING_52_DATA

// "boole type"
.data STRING_33_DATA = bytearray( 62 6f 6f 6c 65 20 74 79 70 65 )
.field static valuetype T_alfa STRING_33 at STRING_33_DATA

// "boolean   "
.data STRING_18_DATA = bytearray( 62 6f 6f 6c 65 61 6e 20 20 20 )
.field static valuetype T_alfa STRING_18 at STRING_18_DATA

// "case      "
.data STRING_64_DATA = bytearray( 63 61 73 65 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_64 at STRING_64_DATA

// "char      "
.data STRING_84_DATA = bytearray( 63 68 61 72 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_84 at STRING_84_DATA

// "character "
.data STRING_25_DATA = bytearray( 63 68 61 72 61 63 74 65 72 20 )
.field static valuetype T_alfa STRING_25 at STRING_25_DATA

// "chr       "
.data STRING_88_DATA = bytearray( 63 68 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_88 at STRING_88_DATA

// "code      "
.data STRING_59_DATA = bytearray( 63 6f 64 65 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_59 at STRING_59_DATA

// "const     "
.data STRING_65_DATA = bytearray( 63 6f 6e 73 74 20 20 20 20 20 )
.field static valuetype T_alfa STRING_65 at STRING_65_DATA

// "const id  "
.data STRING_26_DATA = bytearray( 63 6f 6e 73 74 20 69 64 20 20 )
.field static valuetype T_alfa STRING_26 at STRING_26_DATA

// "constant  "
.data STRING_46_DATA = bytearray( 63 6f 6e 73 74 61 6e 74 20 20 )
.field static valuetype T_alfa STRING_46 at STRING_46_DATA

// "convar typ"
.data STRING_19_DATA = bytearray( 63 6f 6e 76 61 72 20 74 79 70 )
.field static valuetype T_alfa STRING_19 at STRING_19_DATA

// "cos       "
.data STRING_95_DATA = bytearray( 63 6f 73 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_95 at STRING_95_DATA

// "div       "
.data STRING_66_DATA = bytearray( 64 69 76 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_66 at STRING_66_DATA

// "do        "
.data STRING_50_DATA = bytearray( 64 6f 20 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_50 at STRING_50_DATA

// "downto    "
.data STRING_67_DATA = bytearray( 64 6f 77 6e 74 6f 20 20 20 20 )
.field static valuetype T_alfa STRING_67 at STRING_67_DATA

// "else      "
.data STRING_68_DATA = bytearray( 65 6c 73 65 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_68 at STRING_68_DATA

// "end       "
.data STRING_53_DATA = bytearray( 65 6e 64 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_53 at STRING_53_DATA

// "eof       "
.data STRING_100_DATA = bytearray( 65 6f 66 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_100 at STRING_100_DATA

// "eoln      "
.data STRING_101_DATA = bytearray( 65 6f 6c 6e 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_101 at STRING_101_DATA

// "exp       "
.data STRING_96_DATA = bytearray( 65 78 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_96 at STRING_96_DATA

// "factor    "
.data STRING_54_DATA = bytearray( 66 61 63 74 6f 72 20 20 20 20 )
.field static valuetype T_alfa STRING_54 at STRING_54_DATA

// "false     "
.data STRING_81_DATA = bytearray( 66 61 6c 73 65 20 20 20 20 20 )
.field static valuetype T_alfa STRING_81 at STRING_81_DATA

// "for       "
.data STRING_69_DATA = bytearray( 66 6f 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_69 at STRING_69_DATA

// "func. type"
.data STRING_16_DATA = bytearray( 66 75 6e 63 2e 20 74 79 70 65 )
.field static valuetype T_alfa STRING_16 at STRING_16_DATA

// "function  "
.data STRING_70_DATA = bytearray( 66 75 6e 63 74 69 6f 6e 20 20 )
.field static valuetype T_alfa STRING_70 at STRING_70_DATA

// "id, array "
.data STRING_11_DATA = bytearray( 69 64 2c 20 61 72 72 61 79 20 )
.field static valuetype T_alfa STRING_11 at STRING_11_DATA

// "ident, var"
.data STRING_8_DATA = bytearray( 69 64 65 6e 74 2c 20 76 61 72 )
.field static valuetype T_alfa STRING_8 at STRING_8_DATA

// "identifier"
.data STRING_3_DATA = bytearray( 69 64 65 6e 74 69 66 69 65 72 )
.field static valuetype T_alfa STRING_3 at STRING_3_DATA

// "if        "
.data STRING_71_DATA = bytearray( 69 66 20 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_71 at STRING_71_DATA

// "index type"
.data STRING_27_DATA = bytearray( 69 6e 64 65 78 20 74 79 70 65 )
.field static valuetype T_alfa STRING_27 at STRING_27_DATA

// "indexbound"
.data STRING_28_DATA = bytearray( 69 6e 64 65 78 62 6f 75 6e 64 )
.field static valuetype T_alfa STRING_28 at STRING_28_DATA

// "integer   "
.data STRING_35_DATA = bytearray( 69 6e 74 65 67 65 72 20 20 20 )
.field static valuetype T_alfa STRING_35 at STRING_35_DATA

// "levels    "
.data STRING_58_DATA = bytearray( 6c 65 76 65 6c 73 20 20 20 20 )
.field static valuetype T_alfa STRING_58 at STRING_58_DATA

// "ln        "
.data STRING_97_DATA = bytearray( 6c 6e 20 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_97 at STRING_97_DATA

// "mod       "
.data STRING_72_DATA = bytearray( 6d 6f 64 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_72 at STRING_72_DATA

// "multi def "
.data STRING_2_DATA = bytearray( 6d 75 6c 74 69 20 64 65 66 20 )
.field static valuetype T_alfa STRING_2 at STRING_2_DATA

// "no array  "
.data STRING_29_DATA = bytearray( 6e 6f 20 61 72 72 61 79 20 20 )
.field static valuetype T_alfa STRING_29 at STRING_29_DATA

// "no record "
.data STRING_32_DATA = bytearray( 6e 6f 20 72 65 63 6f 72 64 20 )
.field static valuetype T_alfa STRING_32 at STRING_32_DATA

// "no.of pars"
.data STRING_40_DATA = bytearray( 6e 6f 2e 6f 66 20 70 61 72 73 )
.field static valuetype T_alfa STRING_40 at STRING_40_DATA

// "not       "
.data STRING_73_DATA = bytearray( 6e 6f 74 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_73 at STRING_73_DATA

// "odd       "
.data STRING_87_DATA = bytearray( 6f 64 64 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_87 at STRING_87_DATA

// "of        "
.data STRING_9_DATA = bytearray( 6f 66 20 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_9 at STRING_9_DATA

// "or        "
.data STRING_74_DATA = bytearray( 6f 72 20 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_74 at STRING_74_DATA

// "ord       "
.data STRING_89_DATA = bytearray( 6f 72 64 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_89 at STRING_89_DATA

// "param type"
.data STRING_37_DATA = bytearray( 70 61 72 61 6d 20 74 79 70 65 )
.field static valuetype T_alfa STRING_37 at STRING_37_DATA

// "pred      "
.data STRING_91_DATA = bytearray( 70 72 65 64 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_91 at STRING_91_DATA

// "procedure "
.data STRING_75_DATA = bytearray( 70 72 6f 63 65 64 75 72 65 20 )
.field static valuetype T_alfa STRING_75 at STRING_75_DATA

// "procedures"
.data STRING_55_DATA = bytearray( 70 72 6f 63 65 64 75 72 65 73 )
.field static valuetype T_alfa STRING_55 at STRING_55_DATA

// "prog.param"
.data STRING_21_DATA = bytearray( 70 72 6f 67 2e 70 61 72 61 6d )
.field static valuetype T_alfa STRING_21 at STRING_21_DATA

// "program   "
.data STRING_4_DATA = bytearray( 70 72 6f 67 72 61 6d 20 20 20 )
.field static valuetype T_alfa STRING_4 at STRING_4_DATA

// "read      "
.data STRING_102_DATA = bytearray( 72 65 61 64 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_102 at STRING_102_DATA

// "readln    "
.data STRING_103_DATA = bytearray( 72 65 61 64 6c 6e 20 20 20 20 )
.field static valuetype T_alfa STRING_103 at STRING_103_DATA

// "real      "
.data STRING_83_DATA = bytearray( 72 65 61 6c 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_83 at STRING_83_DATA

// "real type "
.data STRING_41_DATA = bytearray( 72 65 61 6c 20 74 79 70 65 20 )
.field static valuetype T_alfa STRING_41 at STRING_41_DATA

// "reals     "
.data STRING_56_DATA = bytearray( 72 65 61 6c 73 20 20 20 20 20 )
.field static valuetype T_alfa STRING_56 at STRING_56_DATA

// "record    "
.data STRING_76_DATA = bytearray( 72 65 63 6f 72 64 20 20 20 20 )
.field static valuetype T_alfa STRING_76 at STRING_76_DATA

// "repeat    "
.data STRING_77_DATA = bytearray( 72 65 70 65 61 74 20 20 20 20 )
.field static valuetype T_alfa STRING_77 at STRING_77_DATA

// "round     "
.data STRING_92_DATA = bytearray( 72 6f 75 6e 64 20 20 20 20 20 )
.field static valuetype T_alfa STRING_92 at STRING_92_DATA

// "sin       "
.data STRING_94_DATA = bytearray( 73 69 6e 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_94 at STRING_94_DATA

// "sqr       "
.data STRING_86_DATA = bytearray( 73 71 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_86 at STRING_86_DATA

// "sqrt      "
.data STRING_98_DATA = bytearray( 73 71 72 74 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_98 at STRING_98_DATA

// "store ovfl"
.data STRING_45_DATA = bytearray( 73 74 6f 72 65 20 6f 76 66 6c )
.field static valuetype T_alfa STRING_45 at STRING_45_DATA

// "string    "
.data STRING_39_DATA = bytearray( 73 74 72 69 6e 67 20 20 20 20 )
.field static valuetype T_alfa STRING_39 at STRING_39_DATA

// "strings   "
.data STRING_60_DATA = bytearray( 73 74 72 69 6e 67 73 20 20 20 )
.field static valuetype T_alfa STRING_60 at STRING_60_DATA

// "succ      "
.data STRING_90_DATA = bytearray( 73 75 63 63 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_90 at STRING_90_DATA

// "syntax    "
.data STRING_7_DATA = bytearray( 73 79 6e 74 61 78 20 20 20 20 )
.field static valuetype T_alfa STRING_7 at STRING_7_DATA

// "then      "
.data STRING_48_DATA = bytearray( 74 68 65 6e 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_48 at STRING_48_DATA

// "to        "
.data STRING_78_DATA = bytearray( 74 6f 20 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_78 at STRING_78_DATA

// "to downto "
.data STRING_51_DATA = bytearray( 74 6f 20 64 6f 77 6e 74 6f 20 )
.field static valuetype T_alfa STRING_51 at STRING_51_DATA

// "too big   "
.data STRING_22_DATA = bytearray( 74 6f 6f 20 62 69 67 20 20 20 )
.field static valuetype T_alfa STRING_22 at STRING_22_DATA

// "true      "
.data STRING_82_DATA = bytearray( 74 72 75 65 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_82 at STRING_82_DATA

// "trunc     "
.data STRING_93_DATA = bytearray( 74 72 75 6e 63 20 20 20 20 20 )
.field static valuetype T_alfa STRING_93 at STRING_93_DATA

// "typ (case)"
.data STRING_24_DATA = bytearray( 74 79 70 20 28 63 61 73 65 29 )
.field static valuetype T_alfa STRING_24 at STRING_24_DATA

// "type      "
.data STRING_20_DATA = bytearray( 74 79 70 65 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_20 at STRING_20_DATA

// "type id   "
.data STRING_30_DATA = bytearray( 74 79 70 65 20 69 64 20 20 20 )
.field static valuetype T_alfa STRING_30 at STRING_30_DATA

// "types     "
.data STRING_36_DATA = bytearray( 74 79 70 65 73 20 20 20 20 20 )
.field static valuetype T_alfa STRING_36 at STRING_36_DATA

// "types (:=)"
.data STRING_44_DATA = bytearray( 74 79 70 65 73 20 28 3a 3d 29 )
.field static valuetype T_alfa STRING_44 at STRING_44_DATA

// "undef id  "
.data STRING_1_DATA = bytearray( 75 6e 64 65 66 20 69 64 20 20 )
.field static valuetype T_alfa STRING_1 at STRING_1_DATA

// "undef type"
.data STRING_31_DATA = bytearray( 75 6e 64 65 66 20 74 79 70 65 )
.field static valuetype T_alfa STRING_31 at STRING_31_DATA

// "until     "
.data STRING_49_DATA = bytearray( 75 6e 74 69 6c 20 20 20 20 20 )
.field static valuetype T_alfa STRING_49 at STRING_49_DATA

// "var       "
.data STRING_79_DATA = bytearray( 76 61 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_79 at STRING_79_DATA

// "var, const"
.data STRING_42_DATA = bytearray( 76 61 72 2c 20 63 6f 6e 73 74 )
.field static valuetype T_alfa STRING_42 at STRING_42_DATA

// "var, proc "
.data STRING_43_DATA = bytearray( 76 61 72 2c 20 70 72 6f 63 20 )
.field static valuetype T_alfa STRING_43 at STRING_43_DATA

// "variab id "
.data STRING_38_DATA = bytearray( 76 61 72 69 61 62 20 69 64 20 )
.field static valuetype T_alfa STRING_38 at STRING_38_DATA

// "while     "
.data STRING_80_DATA = bytearray( 77 68 69 6c 65 20 20 20 20 20 )
.field static valuetype T_alfa STRING_80 at STRING_80_DATA

// "write     "
.data STRING_104_DATA = bytearray( 77 72 69 74 65 20 20 20 20 20 )
.field static valuetype T_alfa STRING_104 at STRING_104_DATA

// "writeln   "
.data STRING_105_DATA = bytearray( 77 72 69 74 65 6c 6e 20 20 20 )
.field static valuetype T_alfa STRING_105 at STRING_105_DATA


