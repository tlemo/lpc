
#include "commonDefs.il"

.field public static string[] _ProgramArgs

.method static void .cctor()
{
    ldc.i4 4
    newarr string
    dup
    ldc.i4 0
    ldstr "_input"
    stelem string
    dup
    ldc.i4 1
    ldstr "_output"
    stelem string
    dup
    ldc.i4 2
    ldstr "INPUTFILE"
    stelem string
    dup
    ldc.i4 3
    ldstr "OUTPUTFILE"
    stelem string
    stsfld string[] _ProgramArgs
    ret
}

// "prettyp.pas"

// line 317
//================================================================================
// scope: GETCHAR (level : 2)

// line 0xfeefee

// TYPE CHARINFO = record;
.class value explicit T_CHARINFO
{
    // alignment = 4
    .size 5
    
    .field [0] public int32 NAME
    .field [4] public uint8 VALUE
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

// line 0xfeefee

// TYPE set_3 = set of 0 .. 6
.class value explicit T_set_3
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
        call instance void T_set_3::addValue(int32)
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

.class @GETCHAR
{
    // parameters
    .field public valuetype T_CHARINFO* CURRCHAR
    .field public valuetype [lpcRuntime]LPC.File* INPUTFILE
    .field public valuetype T_CHARINFO* NEXTCHAR

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 369
//================================================================================
// scope: STORENEXTCHAR (level : 2)

// line 0xfeefee

// TYPE STRING = array [1 .. 200] of uint8;
.class value explicit T_STRING
{
    // elem size = 1
    // alignment = 1
    .size 200

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 200)
        ldarg index
        ldc.i4 200
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

    .method public static string arrayToString(valuetype T_STRING)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 200
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

.class @STORENEXTCHAR
{
    // parameters
    .field public valuetype T_CHARINFO* CURRCHAR
    .field public valuetype [lpcRuntime]LPC.File* INPUTFILE
    .field public int32* LENGTH
    .field public valuetype T_CHARINFO* NEXTCHAR
    .field public valuetype T_STRING* VALUE

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 392
//================================================================================
// scope: SKIPSPACES (level : 2)

.class @SKIPSPACES
{
    // parameters
    .field public int32* CRSBEFORE
    .field public valuetype T_CHARINFO* CURRCHAR
    .field public valuetype [lpcRuntime]LPC.File* INPUTFILE
    .field public valuetype T_CHARINFO* NEXTCHAR
    .field public int32* SPACESBEFORE

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 426
//================================================================================
// scope: GETCOMMENT (level : 2)

.class @GETCOMMENT
{
    // parameters
    .field public valuetype T_CHARINFO* CURRCHAR
    .field public valuetype [lpcRuntime]LPC.File* INPUTFILE
    .field public int32* LENGTH
    .field public int32* NAME
    .field public valuetype T_CHARINFO* NEXTCHAR
    .field public valuetype T_STRING* VALUE

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 465
//================================================================================
// scope: IDTYPE (level : 2)

// line 0xfeefee

// TYPE KEY = array [1 .. 10] of uint8;
.class value explicit T_KEY
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

    .method public static string arrayToString(valuetype T_KEY)
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

// TYPE KEYWORDTABLE = array [0 .. 21] of valuetype T_KEY;
.class value explicit T_KEYWORDTABLE
{
    // elem size = 10
    // alignment = 1
    .size 220

    .field [0] public valuetype T_KEY elem

    .method public valuetype T_KEY& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 21)
        ldarg index
        ldc.i4 21
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

.class @IDTYPE
{
    // parameters
    .field public int32 LENGTH
    .field public valuetype T_STRING VALUE

    // local variables
    .field public int32 _fnvalue
    .field public bool HIT
    .field public int32 I
    .field public valuetype T_KEY KEYVALUE
    .field public int32 THISKEY

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 508
//================================================================================
// scope: GETIDENTIFIER (level : 2)

// line 0xfeefee

// TYPE set_6 = set of 0 .. 32
.class value explicit T_set_6
{
    .field [0] public uint32 bits0
    .field [4] public uint32 bits1

    .method public void addValue(int32 val)
    {
        // check(value >= 0)
        ldarg val
        ldc.i4 0
        blt badValue
    
        // check(value <= 32)
        ldarg val
        ldc.i4 32
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
        call instance void T_set_6::addValue(int32)
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

.class @GETIDENTIFIER
{
    // parameters
    .field public valuetype T_CHARINFO* CURRCHAR
    .field public valuetype [lpcRuntime]LPC.File* INPUTFILE
    .field public int32* LENGTH
    .field public int32* NAME
    .field public valuetype T_CHARINFO* NEXTCHAR
    .field public valuetype T_STRING* VALUE

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 546
//================================================================================
// scope: GETNUMBER (level : 2)

.class @GETNUMBER
{
    // parameters
    .field public valuetype T_CHARINFO* CURRCHAR
    .field public valuetype [lpcRuntime]LPC.File* INPUTFILE
    .field public int32* LENGTH
    .field public int32* NAME
    .field public valuetype T_CHARINFO* NEXTCHAR
    .field public valuetype T_STRING* VALUE

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 568
//================================================================================
// scope: GETCHARLITERAL (level : 2)

.class @GETCHARLITERAL
{
    // parameters
    .field public valuetype T_CHARINFO* CURRCHAR
    .field public valuetype [lpcRuntime]LPC.File* INPUTFILE
    .field public int32* LENGTH
    .field public int32* NAME
    .field public valuetype T_CHARINFO* NEXTCHAR
    .field public valuetype T_STRING* VALUE

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 608
//================================================================================
// scope: CHARTYPE (level : 2)

// line 0xfeefee

// TYPE SPECIALCHAR = array [1 .. 2] of uint8;
.class value explicit T_SPECIALCHAR
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

    .method public static string arrayToString(valuetype T_SPECIALCHAR)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 2
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

// line 0xfeefee

// TYPE DBLCHARTABLE = array [22 .. 23] of valuetype T_SPECIALCHAR;
.class value explicit T_DBLCHARTABLE
{
    // elem size = 2
    // alignment = 1
    .size 4

    .field [0] public valuetype T_SPECIALCHAR elem

    .method public valuetype T_SPECIALCHAR& ldadr(int32 index)
    {
        // check(index >= 22)
        ldarg index
        ldc.i4 22
        blt badIndex
    
        // check(index <= 23)
        ldarg index
        ldc.i4 23
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 22
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

// TYPE SGLCHARTABLE = array [25 .. 30] of uint8;
.class value explicit T_SGLCHARTABLE
{
    // elem size = 1
    // alignment = 1
    .size 6

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 25)
        ldarg index
        ldc.i4 25
        blt badIndex
    
        // check(index <= 30)
        ldarg index
        ldc.i4 30
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 25
        sub
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

.class @CHARTYPE
{
    // parameters
    .field public valuetype T_CHARINFO CURRCHAR
    .field public valuetype T_CHARINFO NEXTCHAR

    // local variables
    .field public int32 _fnvalue
    .field public bool HIT
    .field public valuetype T_SPECIALCHAR NEXTTWOCHARS
    .field public int32 THISCHAR

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 654
//================================================================================
// scope: GETSPECIALCHAR (level : 2)

// line 0xfeefee

// TYPE DBLCHRSET = set of 22 .. 23
.class value explicit T_DBLCHRSET
{
    .field [0] public uint32 bits0

    .method public void addValue(int32 val)
    {
        // check(value >= 22)
        ldarg val
        ldc.i4 22
        blt badValue
    
        // check(value <= 23)
        ldarg val
        ldc.i4 23
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
        call instance void T_DBLCHRSET::addValue(int32)
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

.class @GETSPECIALCHAR
{
    // parameters
    .field public valuetype T_CHARINFO* CURRCHAR
    .field public valuetype [lpcRuntime]LPC.File* INPUTFILE
    .field public int32* LENGTH
    .field public int32* NAME
    .field public valuetype T_CHARINFO* NEXTCHAR
    .field public valuetype T_STRING* VALUE

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 682
//================================================================================
// scope: GETNEXTSYMBOL (level : 2)

.class @GETNEXTSYMBOL
{
    // parameters
    .field public valuetype T_CHARINFO* CURRCHAR
    .field public valuetype [lpcRuntime]LPC.File* INPUTFILE
    .field public int32* LENGTH
    .field public int32* NAME
    .field public valuetype T_CHARINFO* NEXTCHAR
    .field public valuetype T_STRING* VALUE

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 741
//================================================================================
// scope: GETSYMBOL (level : 2)

// line 0xfeefee

// TYPE SYMBOL = record;
.class value explicit T_SYMBOL
{
    // alignment = 4
    .size 216
    
    .field [0] public int32 NAME
    .field [4] public valuetype T_STRING VALUE
    .field [204] public int32 LENGTH
    .field [208] public int32 SPACESBEFORE
    .field [212] public int32 CRSBEFORE
}

.class @GETSYMBOL
{
    // parameters
    .field public void** CURRSYM
    .field public valuetype [lpcRuntime]LPC.File* INPUTFILE
    .field public void** NEXTSYM

    // local variables
    .field public void* DUMMY

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 784
//================================================================================
// scope: INITIALISE (level : 2)

// line 0xfeefee

// TYPE OPTIONSET = set of 0 .. 10
.class value explicit T_OPTIONSET
{
    .field [0] public uint32 bits0

    .method public void addValue(int32 val)
    {
        // check(value >= 0)
        ldarg val
        ldc.i4 0
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
        call instance void T_OPTIONSET::addValue(int32)
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

// TYPE TABLEENTRY = record;
.class value explicit T_TABLEENTRY
{
    // alignment = 4
    .size 20
    
    .field [0] public valuetype T_OPTIONSET OPTIONSSELECTED
    .field [4] public valuetype T_set_6 DINDENTSYMBOLS
    .field [12] public valuetype T_set_6 GOBBLETERMINATORS
}

// line 0xfeefee

// TYPE OPTIONTABLE = array [0 .. 32] of valuetype T_TABLEENTRY;
.class value explicit T_OPTIONTABLE
{
    // elem size = 20
    // alignment = 4
    .size 660

    .field [0] public valuetype T_TABLEENTRY elem

    .method public valuetype T_TABLEENTRY& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 32)
        ldarg index
        ldc.i4 32
        bgt badIndex
    
        ldarg.0
        ldarg index
        ldc.i4 20
        mul
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

.class @INITIALISE
{
    // parameters
    .field public valuetype T_CHARINFO* CURRCHAR
    .field public int32* CURRLINEPOS
    .field public int32* CURRMARGIN
    .field public void** CURRSYM
    .field public valuetype T_DBLCHARTABLE* DBLCHAR
    .field public valuetype T_DBLCHRSET* DBLCHARS
    .field public valuetype [lpcRuntime]LPC.File* INPUTFILE
    .field public valuetype T_KEYWORDTABLE* KEYWORD
    .field public valuetype T_CHARINFO* NEXTCHAR
    .field public void** NEXTSYM
    .field public valuetype [lpcRuntime]LPC.File* OUTPUTFILE
    .field public valuetype T_OPTIONTABLE* PPOPTION
    .field public bool* RECORDSEEN
    .field public valuetype T_SGLCHARTABLE* SGLCHAR
    .field public int32* TOPOFSTACK

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1175
//================================================================================
// scope: STACKEMPTY (level : 2)

.class @STACKEMPTY
{
    // local variables
    .field public bool _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1187
//================================================================================
// scope: STACKFULL (level : 2)

.class @STACKFULL
{
    // local variables
    .field public bool _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1199
//================================================================================
// scope: POPSTACK (level : 2)

// line 0xfeefee

// TYPE STACKENTRY = record;
.class value explicit T_STACKENTRY
{
    // alignment = 4
    .size 8
    
    .field [0] public int32 INDENTSYMBOL
    .field [4] public int32 PREVMARGIN
}

// line 0xfeefee

// TYPE SYMBOLSTACK = array [1 .. 100] of valuetype T_STACKENTRY;
.class value explicit T_SYMBOLSTACK
{
    // elem size = 8
    // alignment = 4
    .size 800

    .field [0] public valuetype T_STACKENTRY elem

    .method public valuetype T_STACKENTRY& ldadr(int32 index)
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

.class @POPSTACK
{
    // parameters
    .field public int32* INDENTSYMBOL
    .field public int32* PREVMARGIN

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1222
//================================================================================
// scope: PUSHSTACK (level : 2)

.class @PUSHSTACK
{
    // parameters
    .field public int32 INDENTSYMBOL
    .field public int32 PREVMARGIN

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1235
//================================================================================
// scope: WRITECRS (level : 2)

.class @WRITECRS
{
    // parameters
    .field public int32* CURRLINEPOS
    .field public int32 NUMBEROFCRS
    .field public valuetype [lpcRuntime]LPC.File* OUTPUTFILE

    // local variables
    .field public int32 I

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1256
//================================================================================
// scope: INSERTCR (level : 2)

.class @INSERTCR
{
    // parameters
    .field public void** CURRSYM
    .field public valuetype [lpcRuntime]LPC.File* OUTPUTFILE

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1276
//================================================================================
// scope: INSERTBLANKLINE (level : 2)

.class @INSERTBLANKLINE
{
    // parameters
    .field public void** CURRSYM
    .field public valuetype [lpcRuntime]LPC.File* OUTPUTFILE

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1306
//================================================================================
// scope: LSHIFTON (level : 2)

.class @LSHIFTON
{
    // parameters
    .field public valuetype T_set_6 DINDENTSYMBOLS

    // local variables
    .field public int32 INDENTSYMBOL
    .field public int32 PREVMARGIN

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1335
//================================================================================
// scope: LSHIFT (level : 2)

.class @LSHIFT
{
    // local variables
    .field public int32 INDENTSYMBOL
    .field public int32 PREVMARGIN

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1352
//================================================================================
// scope: INSERTSPACE (level : 2)

.class @INSERTSPACE
{
    // parameters
    .field public valuetype [lpcRuntime]LPC.File* OUTPUTFILE
    .field public void** SYMBOL

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1372
//================================================================================
// scope: MOVELINEPOS (level : 2)

.class @MOVELINEPOS
{
    // parameters
    .field public int32* CURRLINEPOS
    .field public int32 NEWLINEPOS
    .field public valuetype [lpcRuntime]LPC.File* OUTPUTFILE

    // local variables
    .field public int32 I

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1389
//================================================================================
// scope: PRINTSYMBOL (level : 2)

.class @PRINTSYMBOL
{
    // parameters
    .field public int32* CURRLINEPOS
    .field public void* CURRSYM
    .field public valuetype [lpcRuntime]LPC.File* OUTPUTFILE

    // local variables
    .field public int32 I

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1410
//================================================================================
// scope: PPSYMBOL (level : 2)

.class @PPSYMBOL
{
    // parameters
    .field public void* CURRSYM
    .field public valuetype [lpcRuntime]LPC.File* OUTPUTFILE

    // local variables
    .field public int32 NEWLINEPOS

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1465
//================================================================================
// scope: GOBBLE (level : 2)

.class @GOBBLE
{
    // parameters
    .field public void** CURRSYM
    .field public valuetype [lpcRuntime]LPC.File* INPUTFILE
    .field public void** NEXTSYM
    .field public valuetype [lpcRuntime]LPC.File* OUTPUTFILE
    .field public valuetype T_set_6 TERMINATORS

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1491
//================================================================================
// scope: RSHIFT (level : 2)

.class @RSHIFT
{
    // parameters
    .field public int32 CURRSYM

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 1508
//================================================================================
// scope: RSHIFTTOCLP (level : 2)

.class @RSHIFTTOCLP
{
    // parameters
    .field public int32 CURRSYM

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 167
//================================================================================
// scope: program scope (level : 1)

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype [lpcRuntime]LPC.File _output
    .field public static bool CRPENDING
    .field public static valuetype T_CHARINFO CURRCHAR
    .field public static int32 CURRLINEPOS
    .field public static int32 CURRMARGIN
    .field public static void* CURRSYM
    .field public static valuetype T_DBLCHARTABLE DBLCHAR
    .field public static valuetype T_DBLCHRSET DBLCHARS
    .field public static valuetype [lpcRuntime]LPC.File INPUTFILE
    .field public static valuetype T_KEYWORDTABLE KEYWORD
    .field public static valuetype T_CHARINFO NEXTCHAR
    .field public static void* NEXTSYM
    .field public static valuetype [lpcRuntime]LPC.File OUTPUTFILE
    .field public static valuetype T_OPTIONTABLE PPOPTION
    .field public static bool RECORDSEEN
    .field public static valuetype T_SGLCHARTABLE SGLCHAR
    .field public static valuetype T_SYMBOLSTACK STACK
    .field public static int32 TOP
}

// line 317

.method static
void GETCHAR(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_CHARINFO& NEXTCHAR, valuetype T_CHARINFO& CURRCHAR)
{
    .maxstack 32

    .locals init(
        class @GETCHAR _F,
        valuetype T_set_1 $tmpSetLiteral1,
        valuetype T_set_1 $tmpSetLiteral2,
        valuetype T_set_3 $tmpSetLiteral3,
        valuetype T_CHARINFO& pinned $CURRCHAR,
        valuetype [lpcRuntime]LPC.File& pinned $INPUTFILE,
        valuetype T_CHARINFO& pinned $NEXTCHAR)
    
    newobj instance void @GETCHAR::.ctor()
    stloc _F
    
    ldarg CURRCHAR
    stloc $CURRCHAR
    
    ldloc _F
    ldarg CURRCHAR
    stfld valuetype T_CHARINFO* @GETCHAR::CURRCHAR
    
    ldarg INPUTFILE
    stloc $INPUTFILE
    
    ldloc _F
    ldarg INPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @GETCHAR::INPUTFILE
    
    ldarg NEXTCHAR
    stloc $NEXTCHAR
    
    ldloc _F
    ldarg NEXTCHAR
    stfld valuetype T_CHARINFO* @GETCHAR::NEXTCHAR

    ldloca $tmpSetLiteral1
    ldc.i4 65 // 'A'
    ldc.i4 90 // 'Z'
    call instance void T_set_1::addRange(int32, int32)
    ldloca $tmpSetLiteral1
    ldc.i4 97 // 'a'
    ldc.i4 122 // 'z'
    call instance void T_set_1::addRange(int32, int32)

    ldloca $tmpSetLiteral2
    ldc.i4 48 // '0'
    ldc.i4 57 // '9'
    call instance void T_set_1::addRange(int32, int32)

    ldloca $tmpSetLiteral3
    ldc.i4 5
    call instance void T_set_3::addValue(int32)
    ldloca $tmpSetLiteral3
    ldc.i4 4
    call instance void T_set_3::addValue(int32)

L_Entry:
    // line 323
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHAR::CURRCHAR
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHAR::NEXTCHAR
    ldobj valuetype T_CHARINFO
    stobj valuetype T_CHARINFO
    // line 328
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETCHAR::INPUTFILE
    call instance bool [lpcRuntime]LPC.File::Eof()
    brfalse L_else_1
    // line 330
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHAR::NEXTCHAR
    ldc.i4 5
    stfld int32 T_CHARINFO::NAME
    br L_if_end_2
L_else_1:
    // line 332
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETCHAR::INPUTFILE
    call instance bool [lpcRuntime]LPC.File::Eoln()
    brfalse L_else_3
    // line 334
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHAR::NEXTCHAR
    ldc.i4 4
    stfld int32 T_CHARINFO::NAME
    br L_if_end_4
L_else_3:
    // line 336
    ldloc $tmpSetLiteral1
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETCHAR::INPUTFILE
    dup
    call instance void [lpcRuntime]LPC.File::VarRead()
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldobj uint8
    call bool _SetContains(valuetype T_set_1 s, int32 val)
    brfalse L_else_5
    // line 338
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHAR::NEXTCHAR
    ldc.i4 0
    stfld int32 T_CHARINFO::NAME
    br L_if_end_6
L_else_5:
    // line 340
    ldloc $tmpSetLiteral2
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETCHAR::INPUTFILE
    dup
    call instance void [lpcRuntime]LPC.File::VarRead()
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldobj uint8
    call bool _SetContains(valuetype T_set_1 s, int32 val)
    brfalse L_else_7
    // line 342
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHAR::NEXTCHAR
    ldc.i4 1
    stfld int32 T_CHARINFO::NAME
    br L_if_end_8
L_else_7:
    // line 344
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETCHAR::INPUTFILE
    dup
    call instance void [lpcRuntime]LPC.File::VarRead()
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldobj uint8
    ldc.i4 39 // '''
    ceq
    brfalse L_else_9
    // line 346
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHAR::NEXTCHAR
    ldc.i4 3
    stfld int32 T_CHARINFO::NAME
    br L_if_end_10
L_else_9:
    // line 348
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETCHAR::INPUTFILE
    dup
    call instance void [lpcRuntime]LPC.File::VarRead()
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldobj uint8
    ldc.i4 32 // ' '
    ceq
    brfalse L_else_11
    // line 350
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHAR::NEXTCHAR
    ldc.i4 2
    stfld int32 T_CHARINFO::NAME
    br L_if_end_12
L_else_11:
    // line 352
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHAR::NEXTCHAR
    ldc.i4 6
    stfld int32 T_CHARINFO::NAME
L_if_end_12:
L_if_end_10:
L_if_end_8:
L_if_end_6:
L_if_end_4:
L_if_end_2:
    // line 355
    ldloc $tmpSetLiteral3
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHAR::NEXTCHAR
    ldfld int32 T_CHARINFO::NAME
    call bool _SetContains(valuetype T_set_3 s, int32 val)
    brfalse L_else_13
    // line 357
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHAR::NEXTCHAR
    ldc.i4 32 // ' '
    stfld uint8 T_CHARINFO::VALUE
    br L_if_end_14
L_else_13:
    // line 359
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHAR::NEXTCHAR
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETCHAR::INPUTFILE
    dup
    call instance void [lpcRuntime]LPC.File::VarRead()
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldobj uint8
    stfld uint8 T_CHARINFO::VALUE
L_if_end_14:
    // line 361
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHAR::NEXTCHAR
    ldfld int32 T_CHARINFO::NAME
    ldc.i4 5
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_15
    // line 362
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETCHAR::INPUTFILE
    call instance void [lpcRuntime]LPC.File::Get()
L_if_end_15:

L_Epilogue:
    ret
}

// line 369

.method static
void STORENEXTCHAR(valuetype [lpcRuntime]LPC.File& INPUTFILE, int32& LENGTH, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, valuetype T_STRING& VALUE)
{
    .maxstack 32

    .locals init(class @STORENEXTCHAR _F,
        valuetype T_CHARINFO& pinned $CURRCHAR,
        valuetype [lpcRuntime]LPC.File& pinned $INPUTFILE,
        int32& pinned $LENGTH,
        valuetype T_CHARINFO& pinned $NEXTCHAR,
        valuetype T_STRING& pinned $VALUE)
    
    newobj instance void @STORENEXTCHAR::.ctor()
    stloc _F
    
    ldarg CURRCHAR
    stloc $CURRCHAR
    
    ldloc _F
    ldarg CURRCHAR
    stfld valuetype T_CHARINFO* @STORENEXTCHAR::CURRCHAR
    
    ldarg INPUTFILE
    stloc $INPUTFILE
    
    ldloc _F
    ldarg INPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @STORENEXTCHAR::INPUTFILE
    
    ldarg LENGTH
    stloc $LENGTH
    
    ldloc _F
    ldarg LENGTH
    stfld int32* @STORENEXTCHAR::LENGTH
    
    ldarg NEXTCHAR
    stloc $NEXTCHAR
    
    ldloc _F
    ldarg NEXTCHAR
    stfld valuetype T_CHARINFO* @STORENEXTCHAR::NEXTCHAR
    
    ldarg VALUE
    stloc $VALUE
    
    ldloc _F
    ldarg VALUE
    stfld valuetype T_STRING* @STORENEXTCHAR::VALUE

L_Entry:
    // line 377
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @STORENEXTCHAR::INPUTFILE
    ldloc _F
    ldfld valuetype T_CHARINFO* @STORENEXTCHAR::NEXTCHAR
    ldloc _F
    ldfld valuetype T_CHARINFO* @STORENEXTCHAR::CURRCHAR
    call void GETCHAR(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_CHARINFO& NEXTCHAR, valuetype T_CHARINFO& CURRCHAR)
    // line 381
    ldloc _F
    ldfld int32* @STORENEXTCHAR::LENGTH
    ldobj int32
    ldc.i4 200
    clt
    brfalse L_if_end_1
    // line 383
    ldloc _F
    ldfld int32* @STORENEXTCHAR::LENGTH
    ldloc _F
    ldfld int32* @STORENEXTCHAR::LENGTH
    ldobj int32
    ldc.i4 1
    add
    stobj int32
    // line 385
    ldloc _F
    ldfld valuetype T_STRING* @STORENEXTCHAR::VALUE
    ldloc _F
    ldfld int32* @STORENEXTCHAR::LENGTH
    ldobj int32
    call instance uint8& T_STRING::ldadr(int32)
    ldloc _F
    ldfld valuetype T_CHARINFO* @STORENEXTCHAR::CURRCHAR
    ldfld uint8 T_CHARINFO::VALUE
    stobj uint8
L_if_end_1:

L_Epilogue:
    ret
}

// line 392

.method static
void SKIPSPACES(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, int32& SPACESBEFORE, int32& CRSBEFORE)
{
    .maxstack 32

    .locals init(
        class @SKIPSPACES _F,
        int32 $tmpSwitchValue1,
        valuetype T_set_3 $tmpSetLiteral2,
        int32& pinned $CRSBEFORE,
        valuetype T_CHARINFO& pinned $CURRCHAR,
        valuetype [lpcRuntime]LPC.File& pinned $INPUTFILE,
        valuetype T_CHARINFO& pinned $NEXTCHAR,
        int32& pinned $SPACESBEFORE)
    
    newobj instance void @SKIPSPACES::.ctor()
    stloc _F
    
    ldarg CRSBEFORE
    stloc $CRSBEFORE
    
    ldloc _F
    ldarg CRSBEFORE
    stfld int32* @SKIPSPACES::CRSBEFORE
    
    ldarg CURRCHAR
    stloc $CURRCHAR
    
    ldloc _F
    ldarg CURRCHAR
    stfld valuetype T_CHARINFO* @SKIPSPACES::CURRCHAR
    
    ldarg INPUTFILE
    stloc $INPUTFILE
    
    ldloc _F
    ldarg INPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @SKIPSPACES::INPUTFILE
    
    ldarg NEXTCHAR
    stloc $NEXTCHAR
    
    ldloc _F
    ldarg NEXTCHAR
    stfld valuetype T_CHARINFO* @SKIPSPACES::NEXTCHAR
    
    ldarg SPACESBEFORE
    stloc $SPACESBEFORE
    
    ldloc _F
    ldarg SPACESBEFORE
    stfld int32* @SKIPSPACES::SPACESBEFORE

    ldloca $tmpSetLiteral2
    ldc.i4 2
    call instance void T_set_3::addValue(int32)
    ldloca $tmpSetLiteral2
    ldc.i4 4
    call instance void T_set_3::addValue(int32)

L_Entry:
    // line 400
    ldloc _F
    ldfld int32* @SKIPSPACES::CRSBEFORE
    ldc.i4 0
    stobj int32
    // line 401
    ldloc _F
    ldfld int32* @SKIPSPACES::SPACESBEFORE
    ldc.i4 0
    stobj int32
    // line 403
    br L_while_test_2
L_while_1:
    // line 406
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @SKIPSPACES::INPUTFILE
    ldloc _F
    ldfld valuetype T_CHARINFO* @SKIPSPACES::NEXTCHAR
    ldloc _F
    ldfld valuetype T_CHARINFO* @SKIPSPACES::CURRCHAR
    call void GETCHAR(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_CHARINFO& NEXTCHAR, valuetype T_CHARINFO& CURRCHAR)
    // line 410
    ldloc _F
    ldfld valuetype T_CHARINFO* @SKIPSPACES::CURRCHAR
    ldfld int32 T_CHARINFO::NAME
    stloc $tmpSwitchValue1
    ldloc $tmpSwitchValue1
    ldc.i4 2
    bne.un L_check_case_4
    // line 412
    ldloc _F
    ldfld int32* @SKIPSPACES::SPACESBEFORE
    ldloc _F
    ldfld int32* @SKIPSPACES::SPACESBEFORE
    ldobj int32
    ldc.i4 1
    add
    stobj int32
    br L_case_end_3
L_check_case_4:
    ldloc $tmpSwitchValue1
    ldc.i4 4
    bne.un L_case_end_3
    // line 415
    ldloc _F
    ldfld int32* @SKIPSPACES::CRSBEFORE
    ldloc _F
    ldfld int32* @SKIPSPACES::CRSBEFORE
    ldobj int32
    ldc.i4 1
    add
    stobj int32
    // line 416
    ldloc _F
    ldfld int32* @SKIPSPACES::SPACESBEFORE
    ldc.i4 0
    stobj int32
L_case_end_3:
L_while_test_2:
    ldloc $tmpSetLiteral2
    ldloc _F
    ldfld valuetype T_CHARINFO* @SKIPSPACES::NEXTCHAR
    ldfld int32 T_CHARINFO::NAME
    call bool _SetContains(valuetype T_set_3 s, int32 val)
    brtrue L_while_1

L_Epilogue:
    ret
}

// line 426

.method static
void GETCOMMENT(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, int32& NAME, valuetype T_STRING& VALUE, int32& LENGTH)
{
    .maxstack 32

    .locals init(class @GETCOMMENT _F,
        valuetype T_CHARINFO& pinned $CURRCHAR,
        valuetype [lpcRuntime]LPC.File& pinned $INPUTFILE,
        int32& pinned $LENGTH,
        int32& pinned $NAME,
        valuetype T_CHARINFO& pinned $NEXTCHAR,
        valuetype T_STRING& pinned $VALUE)
    
    newobj instance void @GETCOMMENT::.ctor()
    stloc _F
    
    ldarg CURRCHAR
    stloc $CURRCHAR
    
    ldloc _F
    ldarg CURRCHAR
    stfld valuetype T_CHARINFO* @GETCOMMENT::CURRCHAR
    
    ldarg INPUTFILE
    stloc $INPUTFILE
    
    ldloc _F
    ldarg INPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @GETCOMMENT::INPUTFILE
    
    ldarg LENGTH
    stloc $LENGTH
    
    ldloc _F
    ldarg LENGTH
    stfld int32* @GETCOMMENT::LENGTH
    
    ldarg NAME
    stloc $NAME
    
    ldloc _F
    ldarg NAME
    stfld int32* @GETCOMMENT::NAME
    
    ldarg NEXTCHAR
    stloc $NEXTCHAR
    
    ldloc _F
    ldarg NEXTCHAR
    stfld valuetype T_CHARINFO* @GETCOMMENT::NEXTCHAR
    
    ldarg VALUE
    stloc $VALUE
    
    ldloc _F
    ldarg VALUE
    stfld valuetype T_STRING* @GETCOMMENT::VALUE

L_Entry:
    // line 435
    ldloc _F
    ldfld int32* @GETCOMMENT::NAME
    ldc.i4 23
    stobj int32
    // line 437
    br L_while_test_2
L_while_1:
    // line 441
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETCOMMENT::INPUTFILE
    ldloc _F
    ldfld int32* @GETCOMMENT::LENGTH
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCOMMENT::CURRCHAR
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCOMMENT::NEXTCHAR
    ldloc _F
    ldfld valuetype T_STRING* @GETCOMMENT::VALUE
    call void STORENEXTCHAR(valuetype [lpcRuntime]LPC.File& INPUTFILE, int32& LENGTH, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, valuetype T_STRING& VALUE)
L_while_test_2:
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCOMMENT::CURRCHAR
    ldfld uint8 T_CHARINFO::VALUE
    ldc.i4 42 // '*'
    ceq
    dup
    brfalse L_AND_shortcut_5
    pop
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCOMMENT::NEXTCHAR
    ldfld uint8 T_CHARINFO::VALUE
    ldc.i4 41 // ')'
    ceq
L_AND_shortcut_5:
    dup
    brtrue L_OR_shortcut_4
    pop
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCOMMENT::NEXTCHAR
    ldfld int32 T_CHARINFO::NAME
    ldc.i4 4
    ceq
L_OR_shortcut_4:
    dup
    brtrue L_OR_shortcut_3
    pop
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCOMMENT::NEXTCHAR
    ldfld int32 T_CHARINFO::NAME
    ldc.i4 5
    ceq
L_OR_shortcut_3:
    ldc.i4.0
    ceq
    brtrue L_while_1
    // line 448
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCOMMENT::CURRCHAR
    ldfld uint8 T_CHARINFO::VALUE
    ldc.i4 42 // '*'
    ceq
    dup
    brfalse L_AND_shortcut_6
    pop
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCOMMENT::NEXTCHAR
    ldfld uint8 T_CHARINFO::VALUE
    ldc.i4 41 // ')'
    ceq
L_AND_shortcut_6:
    brfalse L_if_end_7
    // line 452
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETCOMMENT::INPUTFILE
    ldloc _F
    ldfld int32* @GETCOMMENT::LENGTH
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCOMMENT::CURRCHAR
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCOMMENT::NEXTCHAR
    ldloc _F
    ldfld valuetype T_STRING* @GETCOMMENT::VALUE
    call void STORENEXTCHAR(valuetype [lpcRuntime]LPC.File& INPUTFILE, int32& LENGTH, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, valuetype T_STRING& VALUE)
    // line 458
    ldloc _F
    ldfld int32* @GETCOMMENT::NAME
    ldc.i4 24
    stobj int32
    /* nop */
L_if_end_7:

L_Epilogue:
    ret
}

// line 465

.method static
int32 IDTYPE(valuetype T_STRING VALUE, int32 LENGTH)
{
    .maxstack 32

    .locals init(
        class @IDTYPE _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3,
        int32 $tmpEndValue4,
        int32 $tmpIndex5,
        int32 $tmpIndex6)
    
    newobj instance void @IDTYPE::.ctor()
    stloc _F
    
    ldloc _F
    ldarg LENGTH
    stfld int32 @IDTYPE::LENGTH
    
    ldloc _F
    ldarg VALUE
    stfld valuetype T_STRING @IDTYPE::VALUE

L_Entry:
    // line 481
    ldloc _F
    ldc.i4 32
    stfld int32 @IDTYPE::_fnvalue
    // line 483
    ldloc _F
    ldfld int32 @IDTYPE::LENGTH
    ldc.i4 10
    cgt
    ldc.i4.0
    ceq
    brfalse L_if_end_1
    // line 485
    ldloc _F
    ldfld int32 @IDTYPE::LENGTH
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_3
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @IDTYPE::I
L_for_loop_2:
    // line 486
    ldloc _F
    ldflda valuetype T_KEY @IDTYPE::KEYVALUE
    ldloc _F
    ldfld int32 @IDTYPE::I
    call instance uint8& T_KEY::ldadr(int32)
    ldloc _F
    ldflda valuetype T_STRING @IDTYPE::VALUE
    ldloc _F
    ldfld int32 @IDTYPE::I
    call instance uint8& T_STRING::ldadr(int32)
    ldobj uint8
    stobj uint8
    ldloc _F
    ldfld int32 @IDTYPE::I
    dup
    ldloc $tmpEndValue1
    beq L_for_end_3
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @IDTYPE::I
    br L_for_loop_2
L_for_end_3:
    pop
    // line 488
    ldc.i4 10
    stloc $tmpEndValue4
    ldloc _F
    ldfld int32 @IDTYPE::LENGTH
    ldc.i4 1
    add
    dup
    ldloc $tmpEndValue4
    bgt L_for_end_5
    stloc $tmpIndex5
    ldloc _F
    ldloc $tmpIndex5
    stfld int32 @IDTYPE::I
L_for_loop_4:
    // line 489
    ldloc _F
    ldflda valuetype T_KEY @IDTYPE::KEYVALUE
    ldloc _F
    ldfld int32 @IDTYPE::I
    call instance uint8& T_KEY::ldadr(int32)
    ldc.i4 32 // ' '
    stobj uint8
    ldloc _F
    ldfld int32 @IDTYPE::I
    dup
    ldloc $tmpEndValue4
    beq L_for_end_5
    ldc.i4.1
    add
    stloc $tmpIndex6
    ldloc _F
    ldloc $tmpIndex6
    stfld int32 @IDTYPE::I
    br L_for_loop_4
L_for_end_5:
    pop
    // line 491
    ldloc _F
    ldc.i4 0
    stfld int32 @IDTYPE::THISKEY
    // line 492
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @IDTYPE::HIT
    // line 494
    br L_while_test_7
L_while_6:
    // line 495
    ldloc _F
    ldfld valuetype T_KEY @IDTYPE::KEYVALUE
    call string T_KEY::arrayToString(valuetype T_KEY)
    ldsflda valuetype T_KEYWORDTABLE _G::KEYWORD
    ldloc _F
    ldfld int32 @IDTYPE::THISKEY
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldobj valuetype T_KEY
    call string T_KEY::arrayToString(valuetype T_KEY)
    call bool [lpcRuntime]LPC.Helpers::StrcmpEQ(string, string)
    brfalse L_else_8
    // line 496
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @IDTYPE::HIT
    br L_if_end_9
L_else_8:
    // line 498
    ldloc _F
    ldloc _F
    ldfld int32 @IDTYPE::THISKEY
    ldc.i4.1
    add
    stfld int32 @IDTYPE::THISKEY
L_if_end_9:
L_while_test_7:
    ldloc _F
    ldfld bool @IDTYPE::HIT
    dup
    brtrue L_OR_shortcut_10
    pop
    ldloc _F
    ldfld int32 @IDTYPE::THISKEY
    ldc.i4.1
    sub
    ldc.i4 21
    ceq
L_OR_shortcut_10:
    ldc.i4.0
    ceq
    brtrue L_while_6
    // line 500
    ldloc _F
    ldfld bool @IDTYPE::HIT
    brfalse L_if_end_11
    // line 501
    ldloc _F
    ldloc _F
    ldfld int32 @IDTYPE::THISKEY
    stfld int32 @IDTYPE::_fnvalue
L_if_end_11:
L_if_end_1:
    /* nop */

L_Epilogue:
    ldloc _F
    ldfld int32 @IDTYPE::_fnvalue
    ret
}

// line 508

.method static
void GETIDENTIFIER(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, int32& NAME, valuetype T_STRING& VALUE, int32& LENGTH)
{
    .maxstack 32

    .locals init(
        class @GETIDENTIFIER _F,
        valuetype T_set_3 $tmpSetLiteral1,
        valuetype T_set_6 $tmpSetLiteral2,
        int32 $tmpSwitchValue3,
        valuetype T_CHARINFO& pinned $CURRCHAR,
        valuetype [lpcRuntime]LPC.File& pinned $INPUTFILE,
        int32& pinned $LENGTH,
        int32& pinned $NAME,
        valuetype T_CHARINFO& pinned $NEXTCHAR,
        valuetype T_STRING& pinned $VALUE)
    
    newobj instance void @GETIDENTIFIER::.ctor()
    stloc _F
    
    ldarg CURRCHAR
    stloc $CURRCHAR
    
    ldloc _F
    ldarg CURRCHAR
    stfld valuetype T_CHARINFO* @GETIDENTIFIER::CURRCHAR
    
    ldarg INPUTFILE
    stloc $INPUTFILE
    
    ldloc _F
    ldarg INPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @GETIDENTIFIER::INPUTFILE
    
    ldarg LENGTH
    stloc $LENGTH
    
    ldloc _F
    ldarg LENGTH
    stfld int32* @GETIDENTIFIER::LENGTH
    
    ldarg NAME
    stloc $NAME
    
    ldloc _F
    ldarg NAME
    stfld int32* @GETIDENTIFIER::NAME
    
    ldarg NEXTCHAR
    stloc $NEXTCHAR
    
    ldloc _F
    ldarg NEXTCHAR
    stfld valuetype T_CHARINFO* @GETIDENTIFIER::NEXTCHAR
    
    ldarg VALUE
    stloc $VALUE
    
    ldloc _F
    ldarg VALUE
    stfld valuetype T_STRING* @GETIDENTIFIER::VALUE

    ldloca $tmpSetLiteral1
    ldc.i4 0
    call instance void T_set_3::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 1
    call instance void T_set_3::addValue(int32)

    ldloca $tmpSetLiteral2
    ldc.i4 9
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral2
    ldc.i4 10
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral2
    ldc.i4 20
    call instance void T_set_6::addValue(int32)

L_Entry:
    // line 517
    br L_while_test_2
L_while_1:
    // line 519
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETIDENTIFIER::INPUTFILE
    ldloc _F
    ldfld int32* @GETIDENTIFIER::LENGTH
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETIDENTIFIER::CURRCHAR
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETIDENTIFIER::NEXTCHAR
    ldloc _F
    ldfld valuetype T_STRING* @GETIDENTIFIER::VALUE
    call void STORENEXTCHAR(valuetype [lpcRuntime]LPC.File& INPUTFILE, int32& LENGTH, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, valuetype T_STRING& VALUE)
L_while_test_2:
    ldloc $tmpSetLiteral1
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETIDENTIFIER::NEXTCHAR
    ldfld int32 T_CHARINFO::NAME
    call bool _SetContains(valuetype T_set_3 s, int32 val)
    brtrue L_while_1
    // line 526
    ldloc _F
    ldfld int32* @GETIDENTIFIER::NAME
    ldloc _F
    ldfld valuetype T_STRING* @GETIDENTIFIER::VALUE
    ldobj valuetype T_STRING
    ldloc _F
    ldfld int32* @GETIDENTIFIER::LENGTH
    ldobj int32
    call int32 IDTYPE(valuetype T_STRING VALUE, int32 LENGTH)
    stobj int32
    // line 529
    ldloc $tmpSetLiteral2
    ldloc _F
    ldfld int32* @GETIDENTIFIER::NAME
    ldobj int32
    call bool _SetContains(valuetype T_set_6 s, int32 val)
    brfalse L_if_end_3
    // line 531
    ldloc _F
    ldfld int32* @GETIDENTIFIER::NAME
    ldobj int32
    stloc $tmpSwitchValue3
    ldloc $tmpSwitchValue3
    ldc.i4 9
    bne.un L_check_case_5
    // line 533
    ldc.i4 1 // (true)
    stsfld bool _G::RECORDSEEN
    br L_case_end_4
L_check_case_5:
    ldloc $tmpSwitchValue3
    ldc.i4 10
    bne.un L_check_case_6
    // line 535
    ldsfld bool _G::RECORDSEEN
    brfalse L_if_end_7
    // line 537
    ldloc _F
    ldfld int32* @GETIDENTIFIER::NAME
    ldc.i4 11
    stobj int32
L_if_end_7:
    br L_case_end_4
L_check_case_6:
    ldloc $tmpSwitchValue3
    ldc.i4 20
    bne.un L_case_end_4
    // line 539
    ldc.i4 0 // (false)
    stsfld bool _G::RECORDSEEN
L_case_end_4:
L_if_end_3:

L_Epilogue:
    ret
}

// line 546

.method static
void GETNUMBER(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, int32& NAME, valuetype T_STRING& VALUE, int32& LENGTH)
{
    .maxstack 32

    .locals init(class @GETNUMBER _F,
        valuetype T_CHARINFO& pinned $CURRCHAR,
        valuetype [lpcRuntime]LPC.File& pinned $INPUTFILE,
        int32& pinned $LENGTH,
        int32& pinned $NAME,
        valuetype T_CHARINFO& pinned $NEXTCHAR,
        valuetype T_STRING& pinned $VALUE)
    
    newobj instance void @GETNUMBER::.ctor()
    stloc _F
    
    ldarg CURRCHAR
    stloc $CURRCHAR
    
    ldloc _F
    ldarg CURRCHAR
    stfld valuetype T_CHARINFO* @GETNUMBER::CURRCHAR
    
    ldarg INPUTFILE
    stloc $INPUTFILE
    
    ldloc _F
    ldarg INPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @GETNUMBER::INPUTFILE
    
    ldarg LENGTH
    stloc $LENGTH
    
    ldloc _F
    ldarg LENGTH
    stfld int32* @GETNUMBER::LENGTH
    
    ldarg NAME
    stloc $NAME
    
    ldloc _F
    ldarg NAME
    stfld int32* @GETNUMBER::NAME
    
    ldarg NEXTCHAR
    stloc $NEXTCHAR
    
    ldloc _F
    ldarg NEXTCHAR
    stfld valuetype T_CHARINFO* @GETNUMBER::NEXTCHAR
    
    ldarg VALUE
    stloc $VALUE
    
    ldloc _F
    ldarg VALUE
    stfld valuetype T_STRING* @GETNUMBER::VALUE

L_Entry:
    // line 555
    br L_while_test_2
L_while_1:
    // line 557
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETNUMBER::INPUTFILE
    ldloc _F
    ldfld int32* @GETNUMBER::LENGTH
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETNUMBER::CURRCHAR
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETNUMBER::NEXTCHAR
    ldloc _F
    ldfld valuetype T_STRING* @GETNUMBER::VALUE
    call void STORENEXTCHAR(valuetype [lpcRuntime]LPC.File& INPUTFILE, int32& LENGTH, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, valuetype T_STRING& VALUE)
L_while_test_2:
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETNUMBER::NEXTCHAR
    ldfld int32 T_CHARINFO::NAME
    ldc.i4 1
    ceq
    brtrue L_while_1
    // line 563
    ldloc _F
    ldfld int32* @GETNUMBER::NAME
    ldc.i4 32
    stobj int32

L_Epilogue:
    ret
}

// line 568

.method static
void GETCHARLITERAL(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, int32& NAME, valuetype T_STRING& VALUE, int32& LENGTH)
{
    .maxstack 32

    .locals init(
        class @GETCHARLITERAL _F,
        valuetype T_set_3 $tmpSetLiteral1,
        valuetype T_CHARINFO& pinned $CURRCHAR,
        valuetype [lpcRuntime]LPC.File& pinned $INPUTFILE,
        int32& pinned $LENGTH,
        int32& pinned $NAME,
        valuetype T_CHARINFO& pinned $NEXTCHAR,
        valuetype T_STRING& pinned $VALUE)
    
    newobj instance void @GETCHARLITERAL::.ctor()
    stloc _F
    
    ldarg CURRCHAR
    stloc $CURRCHAR
    
    ldloc _F
    ldarg CURRCHAR
    stfld valuetype T_CHARINFO* @GETCHARLITERAL::CURRCHAR
    
    ldarg INPUTFILE
    stloc $INPUTFILE
    
    ldloc _F
    ldarg INPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @GETCHARLITERAL::INPUTFILE
    
    ldarg LENGTH
    stloc $LENGTH
    
    ldloc _F
    ldarg LENGTH
    stfld int32* @GETCHARLITERAL::LENGTH
    
    ldarg NAME
    stloc $NAME
    
    ldloc _F
    ldarg NAME
    stfld int32* @GETCHARLITERAL::NAME
    
    ldarg NEXTCHAR
    stloc $NEXTCHAR
    
    ldloc _F
    ldarg NEXTCHAR
    stfld valuetype T_CHARINFO* @GETCHARLITERAL::NEXTCHAR
    
    ldarg VALUE
    stloc $VALUE
    
    ldloc _F
    ldarg VALUE
    stfld valuetype T_STRING* @GETCHARLITERAL::VALUE

    ldloca $tmpSetLiteral1
    ldc.i4 3
    call instance void T_set_3::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 4
    call instance void T_set_3::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 5
    call instance void T_set_3::addValue(int32)

L_Entry:
    // line 577
    br L_while_test_2
L_while_1:
    // line 579
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETCHARLITERAL::INPUTFILE
    ldloc _F
    ldfld int32* @GETCHARLITERAL::LENGTH
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHARLITERAL::CURRCHAR
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHARLITERAL::NEXTCHAR
    ldloc _F
    ldfld valuetype T_STRING* @GETCHARLITERAL::VALUE
    call void STORENEXTCHAR(valuetype [lpcRuntime]LPC.File& INPUTFILE, int32& LENGTH, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, valuetype T_STRING& VALUE)
    // line 585
    br L_while_test_4
L_while_3:
    // line 587
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETCHARLITERAL::INPUTFILE
    ldloc _F
    ldfld int32* @GETCHARLITERAL::LENGTH
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHARLITERAL::CURRCHAR
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHARLITERAL::NEXTCHAR
    ldloc _F
    ldfld valuetype T_STRING* @GETCHARLITERAL::VALUE
    call void STORENEXTCHAR(valuetype [lpcRuntime]LPC.File& INPUTFILE, int32& LENGTH, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, valuetype T_STRING& VALUE)
L_while_test_4:
    ldloc $tmpSetLiteral1
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHARLITERAL::NEXTCHAR
    ldfld int32 T_CHARINFO::NAME
    call bool _SetContains(valuetype T_set_3 s, int32 val)
    ldc.i4.0
    ceq
    brtrue L_while_3
    // line 594
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHARLITERAL::NEXTCHAR
    ldfld int32 T_CHARINFO::NAME
    ldc.i4 3
    ceq
    brfalse L_if_end_5
    // line 595
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETCHARLITERAL::INPUTFILE
    ldloc _F
    ldfld int32* @GETCHARLITERAL::LENGTH
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHARLITERAL::CURRCHAR
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHARLITERAL::NEXTCHAR
    ldloc _F
    ldfld valuetype T_STRING* @GETCHARLITERAL::VALUE
    call void STORENEXTCHAR(valuetype [lpcRuntime]LPC.File& INPUTFILE, int32& LENGTH, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, valuetype T_STRING& VALUE)
L_if_end_5:
L_while_test_2:
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETCHARLITERAL::NEXTCHAR
    ldfld int32 T_CHARINFO::NAME
    ldc.i4 3
    ceq
    brtrue L_while_1
    // line 603
    ldloc _F
    ldfld int32* @GETCHARLITERAL::NAME
    ldc.i4 32
    stobj int32

L_Epilogue:
    ret
}

// line 608

.method static
int32 CHARTYPE(valuetype T_CHARINFO CURRCHAR, valuetype T_CHARINFO NEXTCHAR)
{
    .maxstack 32

    .locals init(class @CHARTYPE _F)
    
    newobj instance void @CHARTYPE::.ctor()
    stloc _F
    
    ldloc _F
    ldarg CURRCHAR
    stfld valuetype T_CHARINFO @CHARTYPE::CURRCHAR
    
    ldloc _F
    ldarg NEXTCHAR
    stfld valuetype T_CHARINFO @CHARTYPE::NEXTCHAR

L_Entry:
    // line 622
    ldloc _F
    ldflda valuetype T_SPECIALCHAR @CHARTYPE::NEXTTWOCHARS
    ldc.i4 1
    call instance uint8& T_SPECIALCHAR::ldadr(int32)
    ldloc _F
    ldflda valuetype T_CHARINFO @CHARTYPE::CURRCHAR
    ldfld uint8 T_CHARINFO::VALUE
    stobj uint8
    // line 623
    ldloc _F
    ldflda valuetype T_SPECIALCHAR @CHARTYPE::NEXTTWOCHARS
    ldc.i4 2
    call instance uint8& T_SPECIALCHAR::ldadr(int32)
    ldloc _F
    ldflda valuetype T_CHARINFO @CHARTYPE::NEXTCHAR
    ldfld uint8 T_CHARINFO::VALUE
    stobj uint8
    // line 625
    ldloc _F
    ldc.i4 22
    stfld int32 @CHARTYPE::THISCHAR
    // line 626
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @CHARTYPE::HIT
    // line 628
    br L_while_test_2
L_while_1:
    // line 629
    ldloc _F
    ldfld valuetype T_SPECIALCHAR @CHARTYPE::NEXTTWOCHARS
    call string T_SPECIALCHAR::arrayToString(valuetype T_SPECIALCHAR)
    ldsflda valuetype T_DBLCHARTABLE _G::DBLCHAR
    ldloc _F
    ldfld int32 @CHARTYPE::THISCHAR
    call instance valuetype T_SPECIALCHAR& T_DBLCHARTABLE::ldadr(int32)
    ldobj valuetype T_SPECIALCHAR
    call string T_SPECIALCHAR::arrayToString(valuetype T_SPECIALCHAR)
    call bool [lpcRuntime]LPC.Helpers::StrcmpEQ(string, string)
    brfalse L_else_3
    // line 630
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @CHARTYPE::HIT
    br L_if_end_4
L_else_3:
    // line 632
    ldloc _F
    ldloc _F
    ldfld int32 @CHARTYPE::THISCHAR
    ldc.i4.1
    add
    stfld int32 @CHARTYPE::THISCHAR
L_if_end_4:
L_while_test_2:
    ldloc _F
    ldfld bool @CHARTYPE::HIT
    dup
    brtrue L_OR_shortcut_5
    pop
    ldloc _F
    ldfld int32 @CHARTYPE::THISCHAR
    ldc.i4 24
    ceq
L_OR_shortcut_5:
    ldc.i4.0
    ceq
    brtrue L_while_1
    // line 634
    ldloc _F
    ldfld bool @CHARTYPE::HIT
    ldc.i4.0
    ceq
    brfalse L_if_end_6
    // line 636
    ldloc _F
    ldc.i4 25
    stfld int32 @CHARTYPE::THISCHAR
    // line 638
    br L_while_test_8
L_while_7:
    // line 639
    ldloc _F
    ldflda valuetype T_CHARINFO @CHARTYPE::CURRCHAR
    ldfld uint8 T_CHARINFO::VALUE
    ldsflda valuetype T_SGLCHARTABLE _G::SGLCHAR
    ldloc _F
    ldfld int32 @CHARTYPE::THISCHAR
    call instance uint8& T_SGLCHARTABLE::ldadr(int32)
    ldobj uint8
    ceq
    brfalse L_else_9
    // line 640
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @CHARTYPE::HIT
    br L_if_end_10
L_else_9:
    // line 642
    ldloc _F
    ldloc _F
    ldfld int32 @CHARTYPE::THISCHAR
    ldc.i4.1
    add
    stfld int32 @CHARTYPE::THISCHAR
L_if_end_10:
L_while_test_8:
    ldloc _F
    ldfld bool @CHARTYPE::HIT
    dup
    brtrue L_OR_shortcut_11
    pop
    ldloc _F
    ldfld int32 @CHARTYPE::THISCHAR
    ldc.i4.1
    sub
    ldc.i4 30
    ceq
L_OR_shortcut_11:
    ldc.i4.0
    ceq
    brtrue L_while_7
L_if_end_6:
    // line 646
    ldloc _F
    ldfld bool @CHARTYPE::HIT
    brfalse L_else_12
    // line 647
    ldloc _F
    ldloc _F
    ldfld int32 @CHARTYPE::THISCHAR
    stfld int32 @CHARTYPE::_fnvalue
    br L_if_end_13
L_else_12:
    // line 649
    ldloc _F
    ldc.i4 32
    stfld int32 @CHARTYPE::_fnvalue
L_if_end_13:

L_Epilogue:
    ldloc _F
    ldfld int32 @CHARTYPE::_fnvalue
    ret
}

// line 654

.method static
void GETSPECIALCHAR(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, int32& NAME, valuetype T_STRING& VALUE, int32& LENGTH)
{
    .maxstack 32

    .locals init(class @GETSPECIALCHAR _F,
        valuetype T_CHARINFO& pinned $CURRCHAR,
        valuetype [lpcRuntime]LPC.File& pinned $INPUTFILE,
        int32& pinned $LENGTH,
        int32& pinned $NAME,
        valuetype T_CHARINFO& pinned $NEXTCHAR,
        valuetype T_STRING& pinned $VALUE)
    
    newobj instance void @GETSPECIALCHAR::.ctor()
    stloc _F
    
    ldarg CURRCHAR
    stloc $CURRCHAR
    
    ldloc _F
    ldarg CURRCHAR
    stfld valuetype T_CHARINFO* @GETSPECIALCHAR::CURRCHAR
    
    ldarg INPUTFILE
    stloc $INPUTFILE
    
    ldloc _F
    ldarg INPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @GETSPECIALCHAR::INPUTFILE
    
    ldarg LENGTH
    stloc $LENGTH
    
    ldloc _F
    ldarg LENGTH
    stfld int32* @GETSPECIALCHAR::LENGTH
    
    ldarg NAME
    stloc $NAME
    
    ldloc _F
    ldarg NAME
    stfld int32* @GETSPECIALCHAR::NAME
    
    ldarg NEXTCHAR
    stloc $NEXTCHAR
    
    ldloc _F
    ldarg NEXTCHAR
    stfld valuetype T_CHARINFO* @GETSPECIALCHAR::NEXTCHAR
    
    ldarg VALUE
    stloc $VALUE
    
    ldloc _F
    ldarg VALUE
    stfld valuetype T_STRING* @GETSPECIALCHAR::VALUE

L_Entry:
    // line 663
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETSPECIALCHAR::INPUTFILE
    ldloc _F
    ldfld int32* @GETSPECIALCHAR::LENGTH
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETSPECIALCHAR::CURRCHAR
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETSPECIALCHAR::NEXTCHAR
    ldloc _F
    ldfld valuetype T_STRING* @GETSPECIALCHAR::VALUE
    call void STORENEXTCHAR(valuetype [lpcRuntime]LPC.File& INPUTFILE, int32& LENGTH, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, valuetype T_STRING& VALUE)
    // line 669
    ldloc _F
    ldfld int32* @GETSPECIALCHAR::NAME
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETSPECIALCHAR::CURRCHAR
    ldobj valuetype T_CHARINFO
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETSPECIALCHAR::NEXTCHAR
    ldobj valuetype T_CHARINFO
    call int32 CHARTYPE(valuetype T_CHARINFO CURRCHAR, valuetype T_CHARINFO NEXTCHAR)
    stobj int32
    // line 672
    ldsfld valuetype T_DBLCHRSET _G::DBLCHARS
    ldloc _F
    ldfld int32* @GETSPECIALCHAR::NAME
    ldobj int32
    call bool _SetContains(valuetype T_DBLCHRSET s, int32 val)
    brfalse L_if_end_1
    // line 673
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETSPECIALCHAR::INPUTFILE
    ldloc _F
    ldfld int32* @GETSPECIALCHAR::LENGTH
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETSPECIALCHAR::CURRCHAR
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETSPECIALCHAR::NEXTCHAR
    ldloc _F
    ldfld valuetype T_STRING* @GETSPECIALCHAR::VALUE
    call void STORENEXTCHAR(valuetype [lpcRuntime]LPC.File& INPUTFILE, int32& LENGTH, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, valuetype T_STRING& VALUE)
L_if_end_1:
    /* nop */

L_Epilogue:
    ret
}

// line 682

.method static
void GETNEXTSYMBOL(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, int32& NAME, valuetype T_STRING& VALUE, int32& LENGTH)
{
    .maxstack 32

    .locals init(
        class @GETNEXTSYMBOL _F,
        int32 $tmpSwitchValue1,
        valuetype T_CHARINFO& pinned $CURRCHAR,
        valuetype [lpcRuntime]LPC.File& pinned $INPUTFILE,
        int32& pinned $LENGTH,
        int32& pinned $NAME,
        valuetype T_CHARINFO& pinned $NEXTCHAR,
        valuetype T_STRING& pinned $VALUE)
    
    newobj instance void @GETNEXTSYMBOL::.ctor()
    stloc _F
    
    ldarg CURRCHAR
    stloc $CURRCHAR
    
    ldloc _F
    ldarg CURRCHAR
    stfld valuetype T_CHARINFO* @GETNEXTSYMBOL::CURRCHAR
    
    ldarg INPUTFILE
    stloc $INPUTFILE
    
    ldloc _F
    ldarg INPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @GETNEXTSYMBOL::INPUTFILE
    
    ldarg LENGTH
    stloc $LENGTH
    
    ldloc _F
    ldarg LENGTH
    stfld int32* @GETNEXTSYMBOL::LENGTH
    
    ldarg NAME
    stloc $NAME
    
    ldloc _F
    ldarg NAME
    stfld int32* @GETNEXTSYMBOL::NAME
    
    ldarg NEXTCHAR
    stloc $NEXTCHAR
    
    ldloc _F
    ldarg NEXTCHAR
    stfld valuetype T_CHARINFO* @GETNEXTSYMBOL::NEXTCHAR
    
    ldarg VALUE
    stloc $VALUE
    
    ldloc _F
    ldarg VALUE
    stfld valuetype T_STRING* @GETNEXTSYMBOL::VALUE

L_Entry:
    // line 691
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETNEXTSYMBOL::NEXTCHAR
    ldfld int32 T_CHARINFO::NAME
    stloc $tmpSwitchValue1
    ldloc $tmpSwitchValue1
    ldc.i4 0
    bne.un L_check_case_2
    // line 693
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETNEXTSYMBOL::INPUTFILE
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETNEXTSYMBOL::CURRCHAR
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETNEXTSYMBOL::NEXTCHAR
    ldloc _F
    ldfld int32* @GETNEXTSYMBOL::NAME
    ldloc _F
    ldfld valuetype T_STRING* @GETNEXTSYMBOL::VALUE
    ldloc _F
    ldfld int32* @GETNEXTSYMBOL::LENGTH
    call void GETIDENTIFIER(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, int32& NAME, valuetype T_STRING& VALUE, int32& LENGTH)
    br L_case_end_1
L_check_case_2:
    ldloc $tmpSwitchValue1
    ldc.i4 1
    bne.un L_check_case_3
    // line 700
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETNEXTSYMBOL::INPUTFILE
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETNEXTSYMBOL::CURRCHAR
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETNEXTSYMBOL::NEXTCHAR
    ldloc _F
    ldfld int32* @GETNEXTSYMBOL::NAME
    ldloc _F
    ldfld valuetype T_STRING* @GETNEXTSYMBOL::VALUE
    ldloc _F
    ldfld int32* @GETNEXTSYMBOL::LENGTH
    call void GETNUMBER(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, int32& NAME, valuetype T_STRING& VALUE, int32& LENGTH)
    br L_case_end_1
L_check_case_3:
    ldloc $tmpSwitchValue1
    ldc.i4 3
    bne.un L_check_case_4
    // line 707
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETNEXTSYMBOL::INPUTFILE
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETNEXTSYMBOL::CURRCHAR
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETNEXTSYMBOL::NEXTCHAR
    ldloc _F
    ldfld int32* @GETNEXTSYMBOL::NAME
    ldloc _F
    ldfld valuetype T_STRING* @GETNEXTSYMBOL::VALUE
    ldloc _F
    ldfld int32* @GETNEXTSYMBOL::LENGTH
    call void GETCHARLITERAL(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, int32& NAME, valuetype T_STRING& VALUE, int32& LENGTH)
    br L_case_end_1
L_check_case_4:
    ldloc $tmpSwitchValue1
    ldc.i4 6
    bne.un L_check_case_5
    // line 716
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETNEXTSYMBOL::INPUTFILE
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETNEXTSYMBOL::CURRCHAR
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETNEXTSYMBOL::NEXTCHAR
    ldloc _F
    ldfld int32* @GETNEXTSYMBOL::NAME
    ldloc _F
    ldfld valuetype T_STRING* @GETNEXTSYMBOL::VALUE
    ldloc _F
    ldfld int32* @GETNEXTSYMBOL::LENGTH
    call void GETSPECIALCHAR(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, int32& NAME, valuetype T_STRING& VALUE, int32& LENGTH)
    // line 723
    ldloc _F
    ldfld int32* @GETNEXTSYMBOL::NAME
    ldobj int32
    ldc.i4 23
    ceq
    brfalse L_if_end_6
    // line 725
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETNEXTSYMBOL::INPUTFILE
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETNEXTSYMBOL::CURRCHAR
    ldloc _F
    ldfld valuetype T_CHARINFO* @GETNEXTSYMBOL::NEXTCHAR
    ldloc _F
    ldfld int32* @GETNEXTSYMBOL::NAME
    ldloc _F
    ldfld valuetype T_STRING* @GETNEXTSYMBOL::VALUE
    ldloc _F
    ldfld int32* @GETNEXTSYMBOL::LENGTH
    call void GETCOMMENT(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, int32& NAME, valuetype T_STRING& VALUE, int32& LENGTH)
L_if_end_6:
    /* nop */
    br L_case_end_1
L_check_case_5:
    ldloc $tmpSwitchValue1
    ldc.i4 5
    bne.un L_case_end_1
    // line 734
    ldloc _F
    ldfld int32* @GETNEXTSYMBOL::NAME
    ldc.i4 31
    stobj int32
L_case_end_1:

L_Epilogue:
    ret
}

// line 741

.method static
void GETSYMBOL(valuetype [lpcRuntime]LPC.File& INPUTFILE, void*& NEXTSYM, void*& CURRSYM)
{
    .maxstack 32

    .locals init(class @GETSYMBOL _F,
        void*& pinned $CURRSYM,
        valuetype [lpcRuntime]LPC.File& pinned $INPUTFILE,
        void*& pinned $NEXTSYM)
    
    newobj instance void @GETSYMBOL::.ctor()
    stloc _F
    
    ldarg CURRSYM
    stloc $CURRSYM
    
    ldloc _F
    ldarg CURRSYM
    stfld void** @GETSYMBOL::CURRSYM
    
    ldarg INPUTFILE
    stloc $INPUTFILE
    
    ldloc _F
    ldarg INPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @GETSYMBOL::INPUTFILE
    
    ldarg NEXTSYM
    stloc $NEXTSYM
    
    ldloc _F
    ldarg NEXTSYM
    stfld void** @GETSYMBOL::NEXTSYM

L_Entry:
    // line 750
    ldloc _F
    ldloc _F
    ldfld void** @GETSYMBOL::CURRSYM
    ldobj void*
    stfld void* @GETSYMBOL::DUMMY
    // line 751
    ldloc _F
    ldfld void** @GETSYMBOL::CURRSYM
    ldloc _F
    ldfld void** @GETSYMBOL::NEXTSYM
    ldobj void*
    stobj void*
    // line 752
    ldloc _F
    ldfld void** @GETSYMBOL::NEXTSYM
    ldloc _F
    ldfld void* @GETSYMBOL::DUMMY
    stobj void*
    // line 756
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETSYMBOL::INPUTFILE
    ldsflda valuetype T_CHARINFO _G::CURRCHAR
    ldsflda valuetype T_CHARINFO _G::NEXTCHAR
    ldloc _F
    ldfld void** @GETSYMBOL::NEXTSYM
    ldobj void*
    ldflda int32 T_SYMBOL::SPACESBEFORE
    ldloc _F
    ldfld void** @GETSYMBOL::NEXTSYM
    ldobj void*
    ldflda int32 T_SYMBOL::CRSBEFORE
    call void SKIPSPACES(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, int32& SPACESBEFORE, int32& CRSBEFORE)
    // line 762
    ldloc _F
    ldfld void** @GETSYMBOL::NEXTSYM
    ldobj void*
    ldc.i4 0
    stfld int32 T_SYMBOL::LENGTH
    // line 764
    ldloc _F
    ldfld void** @GETSYMBOL::CURRSYM
    ldobj void*
    ldfld int32 T_SYMBOL::NAME
    ldc.i4 23
    ceq
    brfalse L_else_1
    // line 765
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETSYMBOL::INPUTFILE
    ldsflda valuetype T_CHARINFO _G::CURRCHAR
    ldsflda valuetype T_CHARINFO _G::NEXTCHAR
    ldloc _F
    ldfld void** @GETSYMBOL::NEXTSYM
    ldobj void*
    ldflda int32 T_SYMBOL::NAME
    ldloc _F
    ldfld void** @GETSYMBOL::NEXTSYM
    ldobj void*
    ldflda valuetype T_STRING T_SYMBOL::VALUE
    ldloc _F
    ldfld void** @GETSYMBOL::NEXTSYM
    ldobj void*
    ldflda int32 T_SYMBOL::LENGTH
    call void GETCOMMENT(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, int32& NAME, valuetype T_STRING& VALUE, int32& LENGTH)
    br L_if_end_2
L_else_1:
    // line 772
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GETSYMBOL::INPUTFILE
    ldsflda valuetype T_CHARINFO _G::CURRCHAR
    ldsflda valuetype T_CHARINFO _G::NEXTCHAR
    ldloc _F
    ldfld void** @GETSYMBOL::NEXTSYM
    ldobj void*
    ldflda int32 T_SYMBOL::NAME
    ldloc _F
    ldfld void** @GETSYMBOL::NEXTSYM
    ldobj void*
    ldflda valuetype T_STRING T_SYMBOL::VALUE
    ldloc _F
    ldfld void** @GETSYMBOL::NEXTSYM
    ldobj void*
    ldflda int32 T_SYMBOL::LENGTH
    call void GETNEXTSYMBOL(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, int32& NAME, valuetype T_STRING& VALUE, int32& LENGTH)
L_if_end_2:
    /* nop */
    /* nop */

L_Epilogue:
    ret
}

// line 784

.method static
void INITIALISE(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype [lpcRuntime]LPC.File& OUTPUTFILE, int32& TOPOFSTACK, int32& CURRLINEPOS, int32& CURRMARGIN, valuetype T_KEYWORDTABLE& KEYWORD, valuetype T_DBLCHRSET& DBLCHARS, valuetype T_DBLCHARTABLE& DBLCHAR, valuetype T_SGLCHARTABLE& SGLCHAR, bool& RECORDSEEN, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, void*& CURRSYM, void*& NEXTSYM, valuetype T_OPTIONTABLE& PPOPTION)
{
    .maxstack 32

    .locals init(
        class @INITIALISE _F,
        valuetype T_set_6 $tmpSetLiteral1,
        valuetype T_OPTIONSET $tmpSetLiteral2,
        valuetype T_set_1 $tmpSetLiteral3,
        valuetype T_set_1 $tmpSetLiteral4,
        valuetype T_OPTIONSET $tmpSetLiteral5,
        valuetype T_set_6 $tmpSetLiteral6,
        valuetype T_set_1 $tmpSetLiteral7,
        valuetype T_OPTIONSET $tmpSetLiteral8,
        valuetype T_set_6 $tmpSetLiteral9,
        valuetype T_set_1 $tmpSetLiteral10,
        valuetype T_OPTIONSET $tmpSetLiteral11,
        valuetype T_set_1 $tmpSetLiteral12,
        valuetype T_set_1 $tmpSetLiteral13,
        valuetype T_OPTIONSET $tmpSetLiteral14,
        valuetype T_set_6 $tmpSetLiteral15,
        valuetype T_set_1 $tmpSetLiteral16,
        valuetype T_OPTIONSET $tmpSetLiteral17,
        valuetype T_set_6 $tmpSetLiteral18,
        valuetype T_set_1 $tmpSetLiteral19,
        valuetype T_OPTIONSET $tmpSetLiteral20,
        valuetype T_set_6 $tmpSetLiteral21,
        valuetype T_set_1 $tmpSetLiteral22,
        valuetype T_OPTIONSET $tmpSetLiteral23,
        valuetype T_set_6 $tmpSetLiteral24,
        valuetype T_set_1 $tmpSetLiteral25,
        valuetype T_OPTIONSET $tmpSetLiteral26,
        valuetype T_set_1 $tmpSetLiteral27,
        valuetype T_set_1 $tmpSetLiteral28,
        valuetype T_OPTIONSET $tmpSetLiteral29,
        valuetype T_set_1 $tmpSetLiteral30,
        valuetype T_set_1 $tmpSetLiteral31,
        valuetype T_OPTIONSET $tmpSetLiteral32,
        valuetype T_set_1 $tmpSetLiteral33,
        valuetype T_set_6 $tmpSetLiteral34,
        valuetype T_OPTIONSET $tmpSetLiteral35,
        valuetype T_set_1 $tmpSetLiteral36,
        valuetype T_set_6 $tmpSetLiteral37,
        valuetype T_OPTIONSET $tmpSetLiteral38,
        valuetype T_set_1 $tmpSetLiteral39,
        valuetype T_set_1 $tmpSetLiteral40,
        valuetype T_OPTIONSET $tmpSetLiteral41,
        valuetype T_set_1 $tmpSetLiteral42,
        valuetype T_set_6 $tmpSetLiteral43,
        valuetype T_OPTIONSET $tmpSetLiteral44,
        valuetype T_set_1 $tmpSetLiteral45,
        valuetype T_set_6 $tmpSetLiteral46,
        valuetype T_OPTIONSET $tmpSetLiteral47,
        valuetype T_set_1 $tmpSetLiteral48,
        valuetype T_set_6 $tmpSetLiteral49,
        valuetype T_OPTIONSET $tmpSetLiteral50,
        valuetype T_set_1 $tmpSetLiteral51,
        valuetype T_set_1 $tmpSetLiteral52,
        valuetype T_OPTIONSET $tmpSetLiteral53,
        valuetype T_set_1 $tmpSetLiteral54,
        valuetype T_set_6 $tmpSetLiteral55,
        valuetype T_OPTIONSET $tmpSetLiteral56,
        valuetype T_set_1 $tmpSetLiteral57,
        valuetype T_set_1 $tmpSetLiteral58,
        valuetype T_OPTIONSET $tmpSetLiteral59,
        valuetype T_set_6 $tmpSetLiteral60,
        valuetype T_set_1 $tmpSetLiteral61,
        valuetype T_OPTIONSET $tmpSetLiteral62,
        valuetype T_set_6 $tmpSetLiteral63,
        valuetype T_set_1 $tmpSetLiteral64,
        valuetype T_OPTIONSET $tmpSetLiteral65,
        valuetype T_set_6 $tmpSetLiteral66,
        valuetype T_set_6 $tmpSetLiteral67,
        valuetype T_OPTIONSET $tmpSetLiteral68,
        valuetype T_set_1 $tmpSetLiteral69,
        valuetype T_set_6 $tmpSetLiteral70,
        valuetype T_OPTIONSET $tmpSetLiteral71,
        valuetype T_set_1 $tmpSetLiteral72,
        valuetype T_set_1 $tmpSetLiteral73,
        valuetype T_OPTIONSET $tmpSetLiteral74,
        valuetype T_set_1 $tmpSetLiteral75,
        valuetype T_set_1 $tmpSetLiteral76,
        valuetype T_OPTIONSET $tmpSetLiteral77,
        valuetype T_set_6 $tmpSetLiteral78,
        valuetype T_set_1 $tmpSetLiteral79,
        valuetype T_OPTIONSET $tmpSetLiteral80,
        valuetype T_set_1 $tmpSetLiteral81,
        valuetype T_set_1 $tmpSetLiteral82,
        valuetype T_OPTIONSET $tmpSetLiteral83,
        valuetype T_set_1 $tmpSetLiteral84,
        valuetype T_set_1 $tmpSetLiteral85,
        valuetype T_OPTIONSET $tmpSetLiteral86,
        valuetype T_set_1 $tmpSetLiteral87,
        valuetype T_set_6 $tmpSetLiteral88,
        valuetype T_set_1 $tmpSetLiteral89,
        valuetype T_set_1 $tmpSetLiteral90,
        valuetype T_set_1 $tmpSetLiteral91,
        valuetype T_OPTIONSET $tmpSetLiteral92,
        valuetype T_set_1 $tmpSetLiteral93,
        valuetype T_set_1 $tmpSetLiteral94,
        valuetype T_set_1 $tmpSetLiteral95,
        valuetype T_set_1 $tmpSetLiteral96,
        valuetype T_set_1 $tmpSetLiteral97,
        valuetype T_set_1 $tmpSetLiteral98,
        valuetype T_set_1 $tmpSetLiteral99,
        valuetype T_set_1 $tmpSetLiteral100,
        valuetype T_CHARINFO& pinned $CURRCHAR,
        int32& pinned $CURRLINEPOS,
        int32& pinned $CURRMARGIN,
        void*& pinned $CURRSYM,
        valuetype T_DBLCHARTABLE& pinned $DBLCHAR,
        valuetype T_DBLCHRSET& pinned $DBLCHARS,
        valuetype [lpcRuntime]LPC.File& pinned $INPUTFILE,
        valuetype T_KEYWORDTABLE& pinned $KEYWORD,
        valuetype T_CHARINFO& pinned $NEXTCHAR,
        void*& pinned $NEXTSYM,
        valuetype [lpcRuntime]LPC.File& pinned $OUTPUTFILE,
        valuetype T_OPTIONTABLE& pinned $PPOPTION,
        bool& pinned $RECORDSEEN,
        valuetype T_SGLCHARTABLE& pinned $SGLCHAR,
        int32& pinned $TOPOFSTACK)
    
    newobj instance void @INITIALISE::.ctor()
    stloc _F
    
    ldarg CURRCHAR
    stloc $CURRCHAR
    
    ldloc _F
    ldarg CURRCHAR
    stfld valuetype T_CHARINFO* @INITIALISE::CURRCHAR
    
    ldarg CURRLINEPOS
    stloc $CURRLINEPOS
    
    ldloc _F
    ldarg CURRLINEPOS
    stfld int32* @INITIALISE::CURRLINEPOS
    
    ldarg CURRMARGIN
    stloc $CURRMARGIN
    
    ldloc _F
    ldarg CURRMARGIN
    stfld int32* @INITIALISE::CURRMARGIN
    
    ldarg CURRSYM
    stloc $CURRSYM
    
    ldloc _F
    ldarg CURRSYM
    stfld void** @INITIALISE::CURRSYM
    
    ldarg DBLCHAR
    stloc $DBLCHAR
    
    ldloc _F
    ldarg DBLCHAR
    stfld valuetype T_DBLCHARTABLE* @INITIALISE::DBLCHAR
    
    ldarg DBLCHARS
    stloc $DBLCHARS
    
    ldloc _F
    ldarg DBLCHARS
    stfld valuetype T_DBLCHRSET* @INITIALISE::DBLCHARS
    
    ldarg INPUTFILE
    stloc $INPUTFILE
    
    ldloc _F
    ldarg INPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @INITIALISE::INPUTFILE
    
    ldarg KEYWORD
    stloc $KEYWORD
    
    ldloc _F
    ldarg KEYWORD
    stfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    
    ldarg NEXTCHAR
    stloc $NEXTCHAR
    
    ldloc _F
    ldarg NEXTCHAR
    stfld valuetype T_CHARINFO* @INITIALISE::NEXTCHAR
    
    ldarg NEXTSYM
    stloc $NEXTSYM
    
    ldloc _F
    ldarg NEXTSYM
    stfld void** @INITIALISE::NEXTSYM
    
    ldarg OUTPUTFILE
    stloc $OUTPUTFILE
    
    ldloc _F
    ldarg OUTPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @INITIALISE::OUTPUTFILE
    
    ldarg PPOPTION
    stloc $PPOPTION
    
    ldloc _F
    ldarg PPOPTION
    stfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    
    ldarg RECORDSEEN
    stloc $RECORDSEEN
    
    ldloc _F
    ldarg RECORDSEEN
    stfld bool* @INITIALISE::RECORDSEEN
    
    ldarg SGLCHAR
    stloc $SGLCHAR
    
    ldloc _F
    ldarg SGLCHAR
    stfld valuetype T_SGLCHARTABLE* @INITIALISE::SGLCHAR
    
    ldarg TOPOFSTACK
    stloc $TOPOFSTACK
    
    ldloc _F
    ldarg TOPOFSTACK
    stfld int32* @INITIALISE::TOPOFSTACK

    ldloca $tmpSetLiteral1
    ldc.i4 22
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 23
    call instance void T_set_6::addValue(int32)

    ldloca $tmpSetLiteral2
    ldc.i4 2
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral2
    ldc.i4 6
    call instance void T_OPTIONSET::addValue(int32)



    ldloca $tmpSetLiteral5
    ldc.i4 2
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral5
    ldc.i4 3
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral5
    ldc.i4 6
    call instance void T_OPTIONSET::addValue(int32)

    ldloca $tmpSetLiteral6
    ldc.i4 3
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral6
    ldc.i4 4
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral6
    ldc.i4 5
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral6
    ldc.i4 6
    call instance void T_set_6::addValue(int32)


    ldloca $tmpSetLiteral8
    ldc.i4 2
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral8
    ldc.i4 3
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral8
    ldc.i4 6
    call instance void T_OPTIONSET::addValue(int32)

    ldloca $tmpSetLiteral9
    ldc.i4 3
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral9
    ldc.i4 4
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral9
    ldc.i4 5
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral9
    ldc.i4 6
    call instance void T_set_6::addValue(int32)


    ldloca $tmpSetLiteral11
    ldc.i4 2
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral11
    ldc.i4 6
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral11
    ldc.i4 9
    call instance void T_OPTIONSET::addValue(int32)



    ldloca $tmpSetLiteral14
    ldc.i4 2
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral14
    ldc.i4 3
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral14
    ldc.i4 6
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral14
    ldc.i4 9
    call instance void T_OPTIONSET::addValue(int32)

    ldloca $tmpSetLiteral15
    ldc.i4 3
    call instance void T_set_6::addValue(int32)


    ldloca $tmpSetLiteral17
    ldc.i4 2
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral17
    ldc.i4 3
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral17
    ldc.i4 6
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral17
    ldc.i4 9
    call instance void T_OPTIONSET::addValue(int32)

    ldloca $tmpSetLiteral18
    ldc.i4 3
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral18
    ldc.i4 4
    call instance void T_set_6::addValue(int32)


    ldloca $tmpSetLiteral20
    ldc.i4 2
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral20
    ldc.i4 3
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral20
    ldc.i4 6
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral20
    ldc.i4 9
    call instance void T_OPTIONSET::addValue(int32)

    ldloca $tmpSetLiteral21
    ldc.i4 3
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral21
    ldc.i4 4
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral21
    ldc.i4 5
    call instance void T_set_6::addValue(int32)


    ldloca $tmpSetLiteral23
    ldc.i4 3
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral23
    ldc.i4 8
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral23
    ldc.i4 10
    call instance void T_OPTIONSET::addValue(int32)

    ldloca $tmpSetLiteral24
    ldc.i4 3
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral24
    ldc.i4 4
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral24
    ldc.i4 5
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral24
    ldc.i4 6
    call instance void T_set_6::addValue(int32)


    ldloca $tmpSetLiteral26
    ldc.i4 8
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral26
    ldc.i4 10
    call instance void T_OPTIONSET::addValue(int32)



    ldloca $tmpSetLiteral29
    ldc.i4 8
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral29
    ldc.i4 10
    call instance void T_OPTIONSET::addValue(int32)



    ldloca $tmpSetLiteral32
    ldc.i4 6
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral32
    ldc.i4 8
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral32
    ldc.i4 7
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral32
    ldc.i4 10
    call instance void T_OPTIONSET::addValue(int32)


    ldloca $tmpSetLiteral34
    ldc.i4 12
    call instance void T_set_6::addValue(int32)

    ldloca $tmpSetLiteral35
    ldc.i4 6
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral35
    ldc.i4 8
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral35
    ldc.i4 7
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral35
    ldc.i4 10
    call instance void T_OPTIONSET::addValue(int32)


    ldloca $tmpSetLiteral37
    ldc.i4 12
    call instance void T_set_6::addValue(int32)

    ldloca $tmpSetLiteral38
    ldc.i4 0
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral38
    ldc.i4 5
    call instance void T_OPTIONSET::addValue(int32)



    ldloca $tmpSetLiteral41
    ldc.i4 6
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral41
    ldc.i4 8
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral41
    ldc.i4 7
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral41
    ldc.i4 10
    call instance void T_OPTIONSET::addValue(int32)


    ldloca $tmpSetLiteral43
    ldc.i4 16
    call instance void T_set_6::addValue(int32)

    ldloca $tmpSetLiteral44
    ldc.i4 6
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral44
    ldc.i4 8
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral44
    ldc.i4 7
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral44
    ldc.i4 10
    call instance void T_OPTIONSET::addValue(int32)


    ldloca $tmpSetLiteral46
    ldc.i4 16
    call instance void T_set_6::addValue(int32)

    ldloca $tmpSetLiteral47
    ldc.i4 6
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral47
    ldc.i4 8
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral47
    ldc.i4 7
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral47
    ldc.i4 10
    call instance void T_OPTIONSET::addValue(int32)


    ldloca $tmpSetLiteral49
    ldc.i4 16
    call instance void T_set_6::addValue(int32)

    ldloca $tmpSetLiteral50
    ldc.i4 0
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral50
    ldc.i4 5
    call instance void T_OPTIONSET::addValue(int32)



    ldloca $tmpSetLiteral53
    ldc.i4 6
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral53
    ldc.i4 8
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral53
    ldc.i4 7
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral53
    ldc.i4 10
    call instance void T_OPTIONSET::addValue(int32)


    ldloca $tmpSetLiteral55
    ldc.i4 18
    call instance void T_set_6::addValue(int32)

    ldloca $tmpSetLiteral56
    ldc.i4 8
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral56
    ldc.i4 10
    call instance void T_OPTIONSET::addValue(int32)



    ldloca $tmpSetLiteral59
    ldc.i4 1
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral59
    ldc.i4 3
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral59
    ldc.i4 4
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral59
    ldc.i4 8
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral59
    ldc.i4 10
    call instance void T_OPTIONSET::addValue(int32)

    ldloca $tmpSetLiteral60
    ldc.i4 17
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral60
    ldc.i4 19
    call instance void T_set_6::addValue(int32)


    ldloca $tmpSetLiteral62
    ldc.i4 1
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral62
    ldc.i4 3
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral62
    ldc.i4 4
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral62
    ldc.i4 10
    call instance void T_OPTIONSET::addValue(int32)

    ldloca $tmpSetLiteral63
    ldc.i4 17
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral63
    ldc.i4 18
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral63
    ldc.i4 19
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral63
    ldc.i4 13
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral63
    ldc.i4 14
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral63
    ldc.i4 15
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral63
    ldc.i4 11
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral63
    ldc.i4 26
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral63
    ldc.i4 27
    call instance void T_set_6::addValue(int32)


    ldloca $tmpSetLiteral65
    ldc.i4 1
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral65
    ldc.i4 3
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral65
    ldc.i4 4
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral65
    ldc.i4 6
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral65
    ldc.i4 7
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral65
    ldc.i4 10
    call instance void T_OPTIONSET::addValue(int32)

    ldloca $tmpSetLiteral66
    ldc.i4 17
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral66
    ldc.i4 18
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral66
    ldc.i4 19
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral66
    ldc.i4 13
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral66
    ldc.i4 14
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral66
    ldc.i4 15
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral66
    ldc.i4 26
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral66
    ldc.i4 27
    call instance void T_set_6::addValue(int32)

    ldloca $tmpSetLiteral67
    ldc.i4 20
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral67
    ldc.i4 21
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral67
    ldc.i4 19
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral67
    ldc.i4 25
    call instance void T_set_6::addValue(int32)

    ldloca $tmpSetLiteral68
    ldc.i4 5
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral68
    ldc.i4 6
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral68
    ldc.i4 7
    call instance void T_OPTIONSET::addValue(int32)


    ldloca $tmpSetLiteral70
    ldc.i4 20
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral70
    ldc.i4 21
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral70
    ldc.i4 19
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral70
    ldc.i4 25
    call instance void T_set_6::addValue(int32)

    ldloca $tmpSetLiteral71
    ldc.i4 0
    call instance void T_OPTIONSET::addValue(int32)



    ldloca $tmpSetLiteral74
    ldc.i4 0
    call instance void T_OPTIONSET::addValue(int32)



    ldloca $tmpSetLiteral77
    ldc.i4 0
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral77
    ldc.i4 3
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral77
    ldc.i4 10
    call instance void T_OPTIONSET::addValue(int32)

    ldloca $tmpSetLiteral78
    ldc.i4 17
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral78
    ldc.i4 18
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral78
    ldc.i4 19
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral78
    ldc.i4 13
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral78
    ldc.i4 14
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral78
    ldc.i4 15
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral78
    ldc.i4 26
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral78
    ldc.i4 27
    call instance void T_set_6::addValue(int32)


    ldloca $tmpSetLiteral80
    ldc.i4 6
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral80
    ldc.i4 9
    call instance void T_OPTIONSET::addValue(int32)



    ldloca $tmpSetLiteral83
    ldc.i4 5
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral83
    ldc.i4 6
    call instance void T_OPTIONSET::addValue(int32)
    ldloca $tmpSetLiteral83
    ldc.i4 9
    call instance void T_OPTIONSET::addValue(int32)



    ldloca $tmpSetLiteral86
    ldc.i4 7
    call instance void T_OPTIONSET::addValue(int32)


    ldloca $tmpSetLiteral88
    ldc.i4 29
    call instance void T_set_6::addValue(int32)




    ldloca $tmpSetLiteral92
    ldc.i4 0
    call instance void T_OPTIONSET::addValue(int32)









L_Entry:
    // line 813
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @INITIALISE::INPUTFILE
    call instance void [lpcRuntime]LPC.File::Reset()
    // line 814
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @INITIALISE::OUTPUTFILE
    call instance void [lpcRuntime]LPC.File::Rewrite()
    // line 816
    ldloc _F
    ldfld int32* @INITIALISE::TOPOFSTACK
    ldc.i4 0
    stobj int32
    // line 817
    ldloc _F
    ldfld int32* @INITIALISE::CURRLINEPOS
    ldc.i4 0
    stobj int32
    // line 818
    ldloc _F
    ldfld int32* @INITIALISE::CURRMARGIN
    ldc.i4 0
    stobj int32
    // line 820
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 0
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_1    // "PROGRAM   "
    stobj valuetype T_KEY
    // line 821
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 1
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_2    // "FUNCTION  "
    stobj valuetype T_KEY
    // line 822
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 2
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_3    // "PROCEDURE "
    stobj valuetype T_KEY
    // line 823
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 3
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_4    // "LABEL     "
    stobj valuetype T_KEY
    // line 824
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 4
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_5    // "CONST     "
    stobj valuetype T_KEY
    // line 825
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 5
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_6    // "TYPE      "
    stobj valuetype T_KEY
    // line 826
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 6
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_7    // "VAR       "
    stobj valuetype T_KEY
    // line 827
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 7
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_8    // "BEGIN     "
    stobj valuetype T_KEY
    // line 828
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 8
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_9    // "REPEAT    "
    stobj valuetype T_KEY
    // line 829
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 9
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_10    // "RECORD    "
    stobj valuetype T_KEY
    // line 830
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 10
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_11    // "CASE      "
    stobj valuetype T_KEY
    // line 831
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 11
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_11    // "CASE      "
    stobj valuetype T_KEY
    // line 832
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 12
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_12    // "OF        "
    stobj valuetype T_KEY
    // line 833
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 13
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_13    // "FOR       "
    stobj valuetype T_KEY
    // line 834
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 14
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_14    // "WHILE     "
    stobj valuetype T_KEY
    // line 835
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 15
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_15    // "WITH      "
    stobj valuetype T_KEY
    // line 836
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 16
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_16    // "DO        "
    stobj valuetype T_KEY
    // line 837
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 17
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_17    // "IF        "
    stobj valuetype T_KEY
    // line 838
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 18
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_18    // "THEN      "
    stobj valuetype T_KEY
    // line 839
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 19
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_19    // "ELSE      "
    stobj valuetype T_KEY
    // line 840
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 20
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_20    // "END       "
    stobj valuetype T_KEY
    // line 841
    ldloc _F
    ldfld valuetype T_KEYWORDTABLE* @INITIALISE::KEYWORD
    ldc.i4 21
    call instance valuetype T_KEY& T_KEYWORDTABLE::ldadr(int32)
    ldsfld valuetype T_KEY STRING_21    // "UNTIL     "
    stobj valuetype T_KEY
    // line 844
    ldloc _F
    ldfld valuetype T_DBLCHRSET* @INITIALISE::DBLCHARS
    ldloc $tmpSetLiteral1
    dup
    ldc.i4 22
    ldc.i4 23
    call void _SetCheck(valuetype T_set_6 s, int32 min, int32 max)
    call valuetype T_DBLCHRSET _SetCastTo_T_DBLCHRSET(valuetype T_set_6 s)
    stobj valuetype T_DBLCHRSET
    // line 846
    ldloc _F
    ldfld valuetype T_DBLCHARTABLE* @INITIALISE::DBLCHAR
    ldc.i4 22
    call instance valuetype T_SPECIALCHAR& T_DBLCHARTABLE::ldadr(int32)
    ldsfld valuetype T_SPECIALCHAR STRING_22    // ":="
    stobj valuetype T_SPECIALCHAR
    // line 847
    ldloc _F
    ldfld valuetype T_DBLCHARTABLE* @INITIALISE::DBLCHAR
    ldc.i4 23
    call instance valuetype T_SPECIALCHAR& T_DBLCHARTABLE::ldadr(int32)
    ldsfld valuetype T_SPECIALCHAR STRING_23    // "(*"
    stobj valuetype T_SPECIALCHAR
    // line 849
    ldloc _F
    ldfld valuetype T_SGLCHARTABLE* @INITIALISE::SGLCHAR
    ldc.i4 25
    call instance uint8& T_SGLCHARTABLE::ldadr(int32)
    ldc.i4 59 // ';'
    stobj uint8
    // line 850
    ldloc _F
    ldfld valuetype T_SGLCHARTABLE* @INITIALISE::SGLCHAR
    ldc.i4 26
    call instance uint8& T_SGLCHARTABLE::ldadr(int32)
    ldc.i4 58 // ':'
    stobj uint8
    // line 851
    ldloc _F
    ldfld valuetype T_SGLCHARTABLE* @INITIALISE::SGLCHAR
    ldc.i4 27
    call instance uint8& T_SGLCHARTABLE::ldadr(int32)
    ldc.i4 61 // '='
    stobj uint8
    // line 852
    ldloc _F
    ldfld valuetype T_SGLCHARTABLE* @INITIALISE::SGLCHAR
    ldc.i4 28
    call instance uint8& T_SGLCHARTABLE::ldadr(int32)
    ldc.i4 40 // '('
    stobj uint8
    // line 853
    ldloc _F
    ldfld valuetype T_SGLCHARTABLE* @INITIALISE::SGLCHAR
    ldc.i4 29
    call instance uint8& T_SGLCHARTABLE::ldadr(int32)
    ldc.i4 41 // ')'
    stobj uint8
    // line 854
    ldloc _F
    ldfld valuetype T_SGLCHARTABLE* @INITIALISE::SGLCHAR
    ldc.i4 30
    call instance uint8& T_SGLCHARTABLE::ldadr(int32)
    ldc.i4 46 // '.'
    stobj uint8
    // line 856
    ldloc _F
    ldfld bool* @INITIALISE::RECORDSEEN
    ldc.i4 0 // (false)
    stobj bool
    // line 859
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @INITIALISE::INPUTFILE
    ldloc _F
    ldfld valuetype T_CHARINFO* @INITIALISE::NEXTCHAR
    ldloc _F
    ldfld valuetype T_CHARINFO* @INITIALISE::CURRCHAR
    call void GETCHAR(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_CHARINFO& NEXTCHAR, valuetype T_CHARINFO& CURRCHAR)
    // line 863
    // line 863
    ldloc _F
    ldfld void** @INITIALISE::CURRSYM
    ldc.i4 216
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stobj void*
    // line 864
    // line 864
    ldloc _F
    ldfld void** @INITIALISE::NEXTSYM
    ldc.i4 216
    call void* [lpcRuntime]LPC.Heap::Malloc(int32)
    stobj void*
    // line 866
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @INITIALISE::INPUTFILE
    ldloc _F
    ldfld void** @INITIALISE::NEXTSYM
    ldloc _F
    ldfld void** @INITIALISE::CURRSYM
    call void GETSYMBOL(valuetype [lpcRuntime]LPC.File& INPUTFILE, void*& NEXTSYM, void*& CURRSYM)
    // line 872
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 0
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral2
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 874
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 0
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral3
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 875
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 0
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral4
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 879
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 1
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral5
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 882
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 1
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral6
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 886
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 1
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral7
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 890
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 2
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral8
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 893
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 2
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral9
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 897
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 2
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral10
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 901
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 3
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral11
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 904
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 3
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral12
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 905
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 3
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral13
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 909
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 4
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral14
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 913
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 4
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral15
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 914
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 4
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral16
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 918
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 5
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral17
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 922
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 5
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral18
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 924
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 5
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral19
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 928
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 6
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral20
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 932
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 6
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral21
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 935
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 6
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral22
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 939
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 7
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral23
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 942
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 7
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral24
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 946
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 7
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral25
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 950
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 8
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral26
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 952
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 8
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral27
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 953
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 8
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral28
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 957
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 9
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral29
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 959
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 9
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral30
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 960
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 9
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral31
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 964
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 10
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral32
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 968
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 10
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral33
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 969
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 10
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral34
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 973
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 11
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral35
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 977
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 11
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral36
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 978
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 11
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral37
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 982
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 12
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral38
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 984
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 12
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral39
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 985
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 12
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral40
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 989
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 13
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral41
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 993
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 13
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral42
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 994
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 13
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral43
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 998
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 14
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral44
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 1002
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 14
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral45
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 1003
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 14
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral46
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 1007
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 15
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral47
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 1011
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 15
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral48
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 1012
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 15
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral49
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 1016
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 16
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral50
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 1018
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 16
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral51
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 1019
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 16
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral52
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    /* nop */
    // line 1023
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 17
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral53
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 1027
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 17
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral54
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 1028
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 17
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral55
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 1032
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 18
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral56
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 1034
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 18
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral57
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 1035
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 18
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral58
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 1039
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 19
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral59
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 1044
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 19
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral60
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 1046
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 19
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral61
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 1050
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 20
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral62
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 1054
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 20
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral63
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 1063
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 20
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral64
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 1067
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 21
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral65
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 1073
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 21
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral66
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 1081
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 21
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral67
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    /* nop */
    // line 1088
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 22
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral68
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 1091
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 22
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral69
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 1092
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 22
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral70
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 1099
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 23
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral71
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 1100
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 23
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral72
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 1101
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 23
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral73
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 1105
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 24
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral74
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 1106
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 24
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral75
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 1107
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 24
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral76
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 1111
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 25
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral77
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 1114
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 25
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral78
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 1122
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 25
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral79
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 1126
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 26
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral80
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 1128
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 26
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral81
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 1129
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 26
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral82
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 1133
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 27
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral83
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 1136
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 27
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral84
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 1137
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 27
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral85
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 1141
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 28
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral86
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 1142
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 28
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral87
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 1143
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 28
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral88
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 1147
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 29
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral89
    dup
    ldc.i4 0
    ldc.i4 10
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_OPTIONSET _SetCastTo_T_OPTIONSET(valuetype T_set_1 s)
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 1148
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 29
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral90
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 1149
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 29
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral91
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 1153
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 30
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral92
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 1154
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 30
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral93
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 1155
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 30
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral94
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 1159
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 31
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral95
    dup
    ldc.i4 0
    ldc.i4 10
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_OPTIONSET _SetCastTo_T_OPTIONSET(valuetype T_set_1 s)
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 1160
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 31
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral96
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 1161
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 31
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral97
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    // line 1165
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 32
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral98
    dup
    ldc.i4 0
    ldc.i4 10
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_OPTIONSET _SetCastTo_T_OPTIONSET(valuetype T_set_1 s)
    stfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    // line 1166
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 32
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral99
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    // line 1167
    ldloc _F
    ldfld valuetype T_OPTIONTABLE* @INITIALISE::PPOPTION
    ldc.i4 32
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldloc $tmpSetLiteral100
    dup
    ldc.i4 0
    ldc.i4 32
    call void _SetCheck(valuetype T_set_1 s, int32 min, int32 max)
    call valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
    stfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    /* nop */

L_Epilogue:
    ret
}

// line 1175

.method static
bool STACKEMPTY()
{
    .maxstack 32

    .locals init(class @STACKEMPTY _F)
    
    newobj instance void @STACKEMPTY::.ctor()
    stloc _F

L_Entry:
    // line 1179
    ldsfld int32 _G::TOP
    ldc.i4 0
    ceq
    brfalse L_else_1
    // line 1180
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @STACKEMPTY::_fnvalue
    br L_if_end_2
L_else_1:
    // line 1182
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @STACKEMPTY::_fnvalue
L_if_end_2:

L_Epilogue:
    ldloc _F
    ldfld bool @STACKEMPTY::_fnvalue
    ret
}

// line 1187

.method static
bool STACKFULL()
{
    .maxstack 32

    .locals init(class @STACKFULL _F)
    
    newobj instance void @STACKFULL::.ctor()
    stloc _F

L_Entry:
    // line 1191
    ldsfld int32 _G::TOP
    ldc.i4 100
    ceq
    brfalse L_else_1
    // line 1192
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @STACKFULL::_fnvalue
    br L_if_end_2
L_else_1:
    // line 1194
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @STACKFULL::_fnvalue
L_if_end_2:

L_Epilogue:
    ldloc _F
    ldfld bool @STACKFULL::_fnvalue
    ret
}

// line 1199

.method static
void POPSTACK(int32& INDENTSYMBOL, int32& PREVMARGIN)
{
    .maxstack 32

    .locals init(class @POPSTACK _F,
        int32& pinned $INDENTSYMBOL,
        int32& pinned $PREVMARGIN)
    
    newobj instance void @POPSTACK::.ctor()
    stloc _F
    
    ldarg INDENTSYMBOL
    stloc $INDENTSYMBOL
    
    ldloc _F
    ldarg INDENTSYMBOL
    stfld int32* @POPSTACK::INDENTSYMBOL
    
    ldarg PREVMARGIN
    stloc $PREVMARGIN
    
    ldloc _F
    ldarg PREVMARGIN
    stfld int32* @POPSTACK::PREVMARGIN

L_Entry:
    // line 1204
    call bool STACKEMPTY()
    ldc.i4.0
    ceq
    brfalse L_else_1
    // line 1206
    ldloc _F
    ldfld int32* @POPSTACK::INDENTSYMBOL
    ldsflda valuetype T_SYMBOLSTACK _G::STACK
    ldsfld int32 _G::TOP
    call instance valuetype T_STACKENTRY& T_SYMBOLSTACK::ldadr(int32)
    ldfld int32 T_STACKENTRY::INDENTSYMBOL
    stobj int32
    // line 1207
    ldloc _F
    ldfld int32* @POPSTACK::PREVMARGIN
    ldsflda valuetype T_SYMBOLSTACK _G::STACK
    ldsfld int32 _G::TOP
    call instance valuetype T_STACKENTRY& T_SYMBOLSTACK::ldadr(int32)
    ldfld int32 T_STACKENTRY::PREVMARGIN
    stobj int32
    // line 1209
    ldsfld int32 _G::TOP
    ldc.i4 1
    sub
    stsfld int32 _G::TOP
    br L_if_end_2
L_else_1:
    // line 1214
    ldloc _F
    ldfld int32* @POPSTACK::INDENTSYMBOL
    ldc.i4 32
    stobj int32
    // line 1215
    ldloc _F
    ldfld int32* @POPSTACK::PREVMARGIN
    ldc.i4 0
    stobj int32
L_if_end_2:
    /* nop */

L_Epilogue:
    ret
}

// line 1222

.method static
void PUSHSTACK(int32 INDENTSYMBOL, int32 PREVMARGIN)
{
    .maxstack 32

    .locals init(class @PUSHSTACK _F)
    
    newobj instance void @PUSHSTACK::.ctor()
    stloc _F
    
    ldloc _F
    ldarg INDENTSYMBOL
    stfld int32 @PUSHSTACK::INDENTSYMBOL
    
    ldloc _F
    ldarg PREVMARGIN
    stfld int32 @PUSHSTACK::PREVMARGIN

L_Entry:
    // line 1227
    ldsfld int32 _G::TOP
    ldc.i4 1
    add
    stsfld int32 _G::TOP
    // line 1229
    ldsflda valuetype T_SYMBOLSTACK _G::STACK
    ldsfld int32 _G::TOP
    call instance valuetype T_STACKENTRY& T_SYMBOLSTACK::ldadr(int32)
    ldloc _F
    ldfld int32 @PUSHSTACK::INDENTSYMBOL
    stfld int32 T_STACKENTRY::INDENTSYMBOL
    // line 1230
    ldsflda valuetype T_SYMBOLSTACK _G::STACK
    ldsfld int32 _G::TOP
    call instance valuetype T_STACKENTRY& T_SYMBOLSTACK::ldadr(int32)
    ldloc _F
    ldfld int32 @PUSHSTACK::PREVMARGIN
    stfld int32 T_STACKENTRY::PREVMARGIN
    /* nop */

L_Epilogue:
    ret
}

// line 1235

.method static
void WRITECRS(int32 NUMBEROFCRS, int32& CURRLINEPOS, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
{
    .maxstack 32

    .locals init(
        class @WRITECRS _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3,
        int32& pinned $CURRLINEPOS,
        valuetype [lpcRuntime]LPC.File& pinned $OUTPUTFILE)
    
    newobj instance void @WRITECRS::.ctor()
    stloc _F
    
    ldarg CURRLINEPOS
    stloc $CURRLINEPOS
    
    ldloc _F
    ldarg CURRLINEPOS
    stfld int32* @WRITECRS::CURRLINEPOS
    
    ldloc _F
    ldarg NUMBEROFCRS
    stfld int32 @WRITECRS::NUMBEROFCRS
    
    ldarg OUTPUTFILE
    stloc $OUTPUTFILE
    
    ldloc _F
    ldarg OUTPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @WRITECRS::OUTPUTFILE

L_Entry:
    // line 1244
    ldloc _F
    ldfld int32 @WRITECRS::NUMBEROFCRS
    ldc.i4 0
    cgt
    brfalse L_if_end_1
    // line 1246
    ldloc _F
    ldfld int32 @WRITECRS::NUMBEROFCRS
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_3
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @WRITECRS::I
L_for_loop_2:
    // line 1247
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @WRITECRS::OUTPUTFILE
    call instance void [lpcRuntime]LPC.File::WriteLn()
    ldloc _F
    ldfld int32 @WRITECRS::I
    dup
    ldloc $tmpEndValue1
    beq L_for_end_3
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @WRITECRS::I
    br L_for_loop_2
L_for_end_3:
    pop
    // line 1249
    ldloc _F
    ldfld int32* @WRITECRS::CURRLINEPOS
    ldc.i4 0
    stobj int32
L_if_end_1:

L_Epilogue:
    ret
}

// line 1256

.method static
void INSERTCR(void*& CURRSYM, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
{
    .maxstack 32

    .locals init(class @INSERTCR _F,
        void*& pinned $CURRSYM,
        valuetype [lpcRuntime]LPC.File& pinned $OUTPUTFILE)
    
    newobj instance void @INSERTCR::.ctor()
    stloc _F
    
    ldarg CURRSYM
    stloc $CURRSYM
    
    ldloc _F
    ldarg CURRSYM
    stfld void** @INSERTCR::CURRSYM
    
    ldarg OUTPUTFILE
    stloc $OUTPUTFILE
    
    ldloc _F
    ldarg OUTPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @INSERTCR::OUTPUTFILE

L_Entry:
    // line 1264
    ldloc _F
    ldfld void** @INSERTCR::CURRSYM
    ldobj void*
    ldfld int32 T_SYMBOL::CRSBEFORE
    ldc.i4 0
    ceq
    brfalse L_if_end_1
    // line 1266
    ldc.i4 1 // ONCE 
    ldsflda int32 _G::CURRLINEPOS
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @INSERTCR::OUTPUTFILE
    call void WRITECRS(int32 NUMBEROFCRS, int32& CURRLINEPOS, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
    // line 1269
    ldloc _F
    ldfld void** @INSERTCR::CURRSYM
    ldobj void*
    ldc.i4 0
    stfld int32 T_SYMBOL::SPACESBEFORE
L_if_end_1:

L_Epilogue:
    ret
}

// line 1276

.method static
void INSERTBLANKLINE(void*& CURRSYM, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
{
    .maxstack 32

    .locals init(class @INSERTBLANKLINE _F,
        void*& pinned $CURRSYM,
        valuetype [lpcRuntime]LPC.File& pinned $OUTPUTFILE)
    
    newobj instance void @INSERTBLANKLINE::.ctor()
    stloc _F
    
    ldarg CURRSYM
    stloc $CURRSYM
    
    ldloc _F
    ldarg CURRSYM
    stfld void** @INSERTBLANKLINE::CURRSYM
    
    ldarg OUTPUTFILE
    stloc $OUTPUTFILE
    
    ldloc _F
    ldarg OUTPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @INSERTBLANKLINE::OUTPUTFILE

L_Entry:
    // line 1285
    ldloc _F
    ldfld void** @INSERTBLANKLINE::CURRSYM
    ldobj void*
    ldfld int32 T_SYMBOL::CRSBEFORE
    ldc.i4 0
    ceq
    brfalse L_else_1
    // line 1287
    ldsfld int32 _G::CURRLINEPOS
    ldc.i4 0
    ceq
    brfalse L_else_3
    // line 1288
    ldc.i4 1 // ONCE 
    ldsflda int32 _G::CURRLINEPOS
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @INSERTBLANKLINE::OUTPUTFILE
    call void WRITECRS(int32 NUMBEROFCRS, int32& CURRLINEPOS, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
    br L_if_end_4
L_else_3:
    // line 1291
    ldc.i4 2 // TWICE 
    ldsflda int32 _G::CURRLINEPOS
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @INSERTBLANKLINE::OUTPUTFILE
    call void WRITECRS(int32 NUMBEROFCRS, int32& CURRLINEPOS, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
L_if_end_4:
    // line 1294
    ldloc _F
    ldfld void** @INSERTBLANKLINE::CURRSYM
    ldobj void*
    ldc.i4 0
    stfld int32 T_SYMBOL::SPACESBEFORE
    br L_if_end_2
L_else_1:
    // line 1298
    ldloc _F
    ldfld void** @INSERTBLANKLINE::CURRSYM
    ldobj void*
    ldfld int32 T_SYMBOL::CRSBEFORE
    ldc.i4 1
    ceq
    brfalse L_if_end_5
    // line 1299
    ldsfld int32 _G::CURRLINEPOS
    ldc.i4 0
    cgt
    brfalse L_if_end_6
    // line 1300
    ldc.i4 1 // ONCE 
    ldsflda int32 _G::CURRLINEPOS
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @INSERTBLANKLINE::OUTPUTFILE
    call void WRITECRS(int32 NUMBEROFCRS, int32& CURRLINEPOS, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
L_if_end_6:
L_if_end_5:
L_if_end_2:

L_Epilogue:
    ret
}

// line 1306

.method static
void LSHIFTON(valuetype T_set_6 DINDENTSYMBOLS)
{
    .maxstack 32

    .locals init(class @LSHIFTON _F)
    
    newobj instance void @LSHIFTON::.ctor()
    stloc _F
    
    ldloc _F
    ldarg DINDENTSYMBOLS
    stfld valuetype T_set_6 @LSHIFTON::DINDENTSYMBOLS

L_Entry:
    // line 1314
    call bool STACKEMPTY()
    ldc.i4.0
    ceq
    brfalse L_if_end_1
    // line 1316
L_repeat_2:
    // line 1317
    ldloc _F
    ldflda int32 @LSHIFTON::INDENTSYMBOL
    ldloc _F
    ldflda int32 @LSHIFTON::PREVMARGIN
    call void POPSTACK(int32& INDENTSYMBOL, int32& PREVMARGIN)
    // line 1320
    ldloc _F
    ldfld valuetype T_set_6 @LSHIFTON::DINDENTSYMBOLS
    ldloc _F
    ldfld int32 @LSHIFTON::INDENTSYMBOL
    call bool _SetContains(valuetype T_set_6 s, int32 val)
    brfalse L_if_end_3
    // line 1321
    ldloc _F
    ldfld int32 @LSHIFTON::PREVMARGIN
    stsfld int32 _G::CURRMARGIN
L_if_end_3:
    ldloc _F
    ldfld valuetype T_set_6 @LSHIFTON::DINDENTSYMBOLS
    ldloc _F
    ldfld int32 @LSHIFTON::INDENTSYMBOL
    call bool _SetContains(valuetype T_set_6 s, int32 val)
    ldc.i4.0
    ceq
    dup
    brtrue L_OR_shortcut_4
    pop
    call bool STACKEMPTY()
L_OR_shortcut_4:
    brfalse L_repeat_2
    // line 1326
    ldloc _F
    ldfld valuetype T_set_6 @LSHIFTON::DINDENTSYMBOLS
    ldloc _F
    ldfld int32 @LSHIFTON::INDENTSYMBOL
    call bool _SetContains(valuetype T_set_6 s, int32 val)
    ldc.i4.0
    ceq
    brfalse L_if_end_5
    // line 1327
    ldloc _F
    ldfld int32 @LSHIFTON::INDENTSYMBOL
    ldloc _F
    ldfld int32 @LSHIFTON::PREVMARGIN
    call void PUSHSTACK(int32 INDENTSYMBOL, int32 PREVMARGIN)
L_if_end_5:
    /* nop */
L_if_end_1:

L_Epilogue:
    ret
}

// line 1335

.method static
void LSHIFT()
{
    .maxstack 32

    .locals init(class @LSHIFT _F)
    
    newobj instance void @LSHIFT::.ctor()
    stloc _F

L_Entry:
    // line 1343
    call bool STACKEMPTY()
    ldc.i4.0
    ceq
    brfalse L_if_end_1
    // line 1344
    ldloc _F
    ldflda int32 @LSHIFT::INDENTSYMBOL
    ldloc _F
    ldflda int32 @LSHIFT::PREVMARGIN
    call void POPSTACK(int32& INDENTSYMBOL, int32& PREVMARGIN)
    // line 1346
    ldloc _F
    ldfld int32 @LSHIFT::PREVMARGIN
    stsfld int32 _G::CURRMARGIN
L_if_end_1:

L_Epilogue:
    ret
}

// line 1352

.method static
void INSERTSPACE(void*& SYMBOL, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
{
    .maxstack 32

    .locals init(class @INSERTSPACE _F,
        valuetype [lpcRuntime]LPC.File& pinned $OUTPUTFILE,
        void*& pinned $SYMBOL)
    
    newobj instance void @INSERTSPACE::.ctor()
    stloc _F
    
    ldarg OUTPUTFILE
    stloc $OUTPUTFILE
    
    ldloc _F
    ldarg OUTPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @INSERTSPACE::OUTPUTFILE
    
    ldarg SYMBOL
    stloc $SYMBOL
    
    ldloc _F
    ldarg SYMBOL
    stfld void** @INSERTSPACE::SYMBOL

L_Entry:
    // line 1357
    ldsfld int32 _G::CURRLINEPOS
    ldc.i4 72
    clt
    brfalse L_if_end_1
    // line 1359
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @INSERTSPACE::OUTPUTFILE
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    // line 1361
    ldsfld int32 _G::CURRLINEPOS
    ldc.i4 1
    add
    stsfld int32 _G::CURRLINEPOS
    // line 1364
    ldloc _F
    ldfld void** @INSERTSPACE::SYMBOL
    ldobj void*
    ldfld int32 T_SYMBOL::CRSBEFORE
    ldc.i4 0
    ceq
    dup
    brfalse L_AND_shortcut_2
    pop
    ldloc _F
    ldfld void** @INSERTSPACE::SYMBOL
    ldobj void*
    ldfld int32 T_SYMBOL::SPACESBEFORE
    ldc.i4 0
    cgt
L_AND_shortcut_2:
    brfalse L_if_end_3
    // line 1365
    ldloc _F
    ldfld void** @INSERTSPACE::SYMBOL
    ldobj void*
    ldloc _F
    ldfld void** @INSERTSPACE::SYMBOL
    ldobj void*
    ldfld int32 T_SYMBOL::SPACESBEFORE
    ldc.i4 1
    sub
    stfld int32 T_SYMBOL::SPACESBEFORE
L_if_end_3:
L_if_end_1:

L_Epilogue:
    ret
}

// line 1372

.method static
void MOVELINEPOS(int32 NEWLINEPOS, int32& CURRLINEPOS, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
{
    .maxstack 32

    .locals init(
        class @MOVELINEPOS _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3,
        int32& pinned $CURRLINEPOS,
        valuetype [lpcRuntime]LPC.File& pinned $OUTPUTFILE)
    
    newobj instance void @MOVELINEPOS::.ctor()
    stloc _F
    
    ldarg CURRLINEPOS
    stloc $CURRLINEPOS
    
    ldloc _F
    ldarg CURRLINEPOS
    stfld int32* @MOVELINEPOS::CURRLINEPOS
    
    ldloc _F
    ldarg NEWLINEPOS
    stfld int32 @MOVELINEPOS::NEWLINEPOS
    
    ldarg OUTPUTFILE
    stloc $OUTPUTFILE
    
    ldloc _F
    ldarg OUTPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @MOVELINEPOS::OUTPUTFILE

L_Entry:
    // line 1381
    ldloc _F
    ldfld int32 @MOVELINEPOS::NEWLINEPOS
    stloc $tmpEndValue1
    ldloc _F
    ldfld int32* @MOVELINEPOS::CURRLINEPOS
    ldobj int32
    ldc.i4 1
    add
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @MOVELINEPOS::I
L_for_loop_1:
    // line 1382
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @MOVELINEPOS::OUTPUTFILE
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldloc _F
    ldfld int32 @MOVELINEPOS::I
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @MOVELINEPOS::I
    br L_for_loop_1
L_for_end_2:
    pop
    // line 1384
    ldloc _F
    ldfld int32* @MOVELINEPOS::CURRLINEPOS
    ldloc _F
    ldfld int32 @MOVELINEPOS::NEWLINEPOS
    stobj int32

L_Epilogue:
    ret
}

// line 1389

.method static
void PRINTSYMBOL(void* CURRSYM, int32& CURRLINEPOS, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
{
    .maxstack 32

    .locals init(
        class @PRINTSYMBOL _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3,
        int32& pinned $CURRLINEPOS,
        valuetype [lpcRuntime]LPC.File& pinned $OUTPUTFILE)
    
    newobj instance void @PRINTSYMBOL::.ctor()
    stloc _F
    
    ldarg CURRLINEPOS
    stloc $CURRLINEPOS
    
    ldloc _F
    ldarg CURRLINEPOS
    stfld int32* @PRINTSYMBOL::CURRLINEPOS
    
    ldloc _F
    ldarg CURRSYM
    stfld void* @PRINTSYMBOL::CURRSYM
    
    ldarg OUTPUTFILE
    stloc $OUTPUTFILE
    
    ldloc _F
    ldarg OUTPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @PRINTSYMBOL::OUTPUTFILE

L_Entry:
    // line 1400
    ldloc _F
    ldfld void* @PRINTSYMBOL::CURRSYM
    ldfld int32 T_SYMBOL::LENGTH
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @PRINTSYMBOL::I
L_for_loop_1:
    // line 1401
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @PRINTSYMBOL::OUTPUTFILE
    dup
    ldloc _F
    ldfld void* @PRINTSYMBOL::CURRSYM
    ldflda valuetype T_STRING T_SYMBOL::VALUE
    ldloc _F
    ldfld int32 @PRINTSYMBOL::I
    call instance uint8& T_STRING::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldloc _F
    ldfld int32 @PRINTSYMBOL::I
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @PRINTSYMBOL::I
    br L_for_loop_1
L_for_end_2:
    pop
    // line 1403
    ldloc _F
    ldfld int32* @PRINTSYMBOL::CURRLINEPOS
    ldloc _F
    ldfld int32* @PRINTSYMBOL::CURRLINEPOS
    ldobj int32
    ldloc _F
    ldfld void* @PRINTSYMBOL::CURRSYM
    ldfld int32 T_SYMBOL::LENGTH
    add
    stobj int32

L_Epilogue:
    ret
}

// line 1410

.method static
void PPSYMBOL(void* CURRSYM, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
{
    .maxstack 32

    .locals init(
        class @PPSYMBOL _F,
        valuetype T_set_6 $tmpSetLiteral1,
        valuetype [lpcRuntime]LPC.File& pinned $OUTPUTFILE)
    
    newobj instance void @PPSYMBOL::.ctor()
    stloc _F
    
    ldloc _F
    ldarg CURRSYM
    stfld void* @PPSYMBOL::CURRSYM
    
    ldarg OUTPUTFILE
    stloc $OUTPUTFILE
    
    ldloc _F
    ldarg OUTPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @PPSYMBOL::OUTPUTFILE

    ldloca $tmpSetLiteral1
    ldc.i4 23
    call instance void T_set_6::addValue(int32)
    ldloca $tmpSetLiteral1
    ldc.i4 24
    call instance void T_set_6::addValue(int32)

L_Entry:
    // line 1423
    ldloc _F
    ldfld void* @PPSYMBOL::CURRSYM
    ldfld int32 T_SYMBOL::CRSBEFORE
    ldsflda int32 _G::CURRLINEPOS
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @PPSYMBOL::OUTPUTFILE
    call void WRITECRS(int32 NUMBEROFCRS, int32& CURRLINEPOS, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
    // line 1427
    ldsfld int32 _G::CURRLINEPOS
    ldloc _F
    ldfld void* @PPSYMBOL::CURRSYM
    ldfld int32 T_SYMBOL::SPACESBEFORE
    add
    ldsfld int32 _G::CURRMARGIN
    cgt
    dup
    brtrue L_OR_shortcut_1
    pop
    ldloc $tmpSetLiteral1
    ldloc _F
    ldfld void* @PPSYMBOL::CURRSYM
    ldfld int32 T_SYMBOL::NAME
    call bool _SetContains(valuetype T_set_6 s, int32 val)
L_OR_shortcut_1:
    brfalse L_else_2
    // line 1430
    ldloc _F
    ldsfld int32 _G::CURRLINEPOS
    ldloc _F
    ldfld void* @PPSYMBOL::CURRSYM
    ldfld int32 T_SYMBOL::SPACESBEFORE
    add
    stfld int32 @PPSYMBOL::NEWLINEPOS
    br L_if_end_3
L_else_2:
    // line 1432
    ldloc _F
    ldsfld int32 _G::CURRMARGIN
    stfld int32 @PPSYMBOL::NEWLINEPOS
L_if_end_3:
    // line 1434
    ldloc _F
    ldfld int32 @PPSYMBOL::NEWLINEPOS
    ldloc _F
    ldfld void* @PPSYMBOL::CURRSYM
    ldfld int32 T_SYMBOL::LENGTH
    add
    ldc.i4 72
    cgt
    brfalse L_if_end_4
    // line 1436
    ldc.i4 1 // ONCE 
    ldsflda int32 _G::CURRLINEPOS
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @PPSYMBOL::OUTPUTFILE
    call void WRITECRS(int32 NUMBEROFCRS, int32& CURRLINEPOS, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
    // line 1439
    ldsfld int32 _G::CURRMARGIN
    ldloc _F
    ldfld void* @PPSYMBOL::CURRSYM
    ldfld int32 T_SYMBOL::LENGTH
    add
    ldc.i4 72
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_5
    // line 1440
    ldloc _F
    ldsfld int32 _G::CURRMARGIN
    stfld int32 @PPSYMBOL::NEWLINEPOS
    br L_if_end_6
L_else_5:
    // line 1441
    ldloc _F
    ldfld void* @PPSYMBOL::CURRSYM
    ldfld int32 T_SYMBOL::LENGTH
    ldc.i4 72
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_7
    // line 1442
    ldloc _F
    ldc.i4 72
    ldloc _F
    ldfld void* @PPSYMBOL::CURRSYM
    ldfld int32 T_SYMBOL::LENGTH
    sub
    stfld int32 @PPSYMBOL::NEWLINEPOS
    br L_if_end_8
L_else_7:
    // line 1444
    ldloc _F
    ldc.i4 0
    stfld int32 @PPSYMBOL::NEWLINEPOS
L_if_end_8:
L_if_end_6:
L_if_end_4:
    // line 1448
    ldloc _F
    ldfld int32 @PPSYMBOL::NEWLINEPOS
    ldsflda int32 _G::CURRLINEPOS
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @PPSYMBOL::OUTPUTFILE
    call void MOVELINEPOS(int32 NEWLINEPOS, int32& CURRLINEPOS, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
    // line 1452
    ldloc _F
    ldfld void* @PPSYMBOL::CURRSYM
    ldsflda int32 _G::CURRLINEPOS
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @PPSYMBOL::OUTPUTFILE
    call void PRINTSYMBOL(void* CURRSYM, int32& CURRLINEPOS, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)

L_Epilogue:
    ret
}

// line 1465

.method static
void GOBBLE(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_set_6 TERMINATORS, void*& CURRSYM, void*& NEXTSYM, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
{
    .maxstack 32

    .locals init(
        class @GOBBLE _F,
        valuetype T_set_6 $tmpSetLiteral1,
        void*& pinned $CURRSYM,
        valuetype [lpcRuntime]LPC.File& pinned $INPUTFILE,
        void*& pinned $NEXTSYM,
        valuetype [lpcRuntime]LPC.File& pinned $OUTPUTFILE)
    
    newobj instance void @GOBBLE::.ctor()
    stloc _F
    
    ldarg CURRSYM
    stloc $CURRSYM
    
    ldloc _F
    ldarg CURRSYM
    stfld void** @GOBBLE::CURRSYM
    
    ldarg INPUTFILE
    stloc $INPUTFILE
    
    ldloc _F
    ldarg INPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @GOBBLE::INPUTFILE
    
    ldarg NEXTSYM
    stloc $NEXTSYM
    
    ldloc _F
    ldarg NEXTSYM
    stfld void** @GOBBLE::NEXTSYM
    
    ldarg OUTPUTFILE
    stloc $OUTPUTFILE
    
    ldloc _F
    ldarg OUTPUTFILE
    stfld valuetype [lpcRuntime]LPC.File* @GOBBLE::OUTPUTFILE
    
    ldloc _F
    ldarg TERMINATORS
    stfld valuetype T_set_6 @GOBBLE::TERMINATORS

    ldloca $tmpSetLiteral1
    ldc.i4 31
    call instance void T_set_6::addValue(int32)

L_Entry:
    // line 1473
    ldloc _F
    ldfld void** @GOBBLE::CURRSYM
    ldobj void*
    ldfld int32 T_SYMBOL::NAME
    call void RSHIFTTOCLP(int32 CURRSYM)
    // line 1475
    br L_while_test_2
L_while_1:
    // line 1477
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GOBBLE::INPUTFILE
    ldloc _F
    ldfld void** @GOBBLE::NEXTSYM
    ldloc _F
    ldfld void** @GOBBLE::CURRSYM
    call void GETSYMBOL(valuetype [lpcRuntime]LPC.File& INPUTFILE, void*& NEXTSYM, void*& CURRSYM)
    // line 1481
    ldloc _F
    ldfld void** @GOBBLE::CURRSYM
    ldobj void*
    ldloc _F
    ldfld valuetype [lpcRuntime]LPC.File* @GOBBLE::OUTPUTFILE
    call void PPSYMBOL(void* CURRSYM, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
L_while_test_2:
    ldloc _F
    ldfld valuetype T_set_6 @GOBBLE::TERMINATORS
    call valuetype T_set_1 _SetCastTo_T_set_1(valuetype T_set_6 s)
    ldloc $tmpSetLiteral1
    call valuetype T_set_1 _SetCastTo_T_set_1(valuetype T_set_6 s)
    call valuetype T_set_1 _SetUnion(valuetype T_set_1 a, valuetype T_set_1 b)
    ldloc _F
    ldfld void** @GOBBLE::NEXTSYM
    ldobj void*
    ldfld int32 T_SYMBOL::NAME
    call bool _SetContains(valuetype T_set_1 s, int32 val)
    ldc.i4.0
    ceq
    brtrue L_while_1
    // line 1486
    call void LSHIFT()

L_Epilogue:
    ret
}

// line 1491

.method static
void RSHIFT(int32 CURRSYM)
{
    .maxstack 32

    .locals init(class @RSHIFT _F)
    
    newobj instance void @RSHIFT::.ctor()
    stloc _F
    
    ldloc _F
    ldarg CURRSYM
    stfld int32 @RSHIFT::CURRSYM

L_Entry:
    // line 1495
    call bool STACKFULL()
    ldc.i4.0
    ceq
    brfalse L_if_end_1
    // line 1496
    ldloc _F
    ldfld int32 @RSHIFT::CURRSYM
    ldsfld int32 _G::CURRMARGIN
    call void PUSHSTACK(int32 INDENTSYMBOL, int32 PREVMARGIN)
L_if_end_1:
    // line 1499
    ldsfld int32 _G::CURRMARGIN
    ldc.i4 30
    clt
    brfalse L_else_2
    // line 1500
    ldsfld int32 _G::CURRMARGIN
    ldc.i4 3
    add
    stsfld int32 _G::CURRMARGIN
    br L_if_end_3
L_else_2:
    // line 1502
    ldsfld int32 _G::CURRMARGIN
    ldc.i4 48
    clt
    brfalse L_if_end_4
    // line 1503
    ldsfld int32 _G::CURRMARGIN
    ldc.i4 1
    add
    stsfld int32 _G::CURRMARGIN
L_if_end_4:
L_if_end_3:

L_Epilogue:
    ret
}

// line 1508

.method static
void RSHIFTTOCLP(int32 CURRSYM)
{
    .maxstack 32

    .locals init(class @RSHIFTTOCLP _F)
    
    newobj instance void @RSHIFTTOCLP::.ctor()
    stloc _F
    
    ldloc _F
    ldarg CURRSYM
    stfld int32 @RSHIFTTOCLP::CURRSYM

L_Entry:
    // line 1512
    call bool STACKFULL()
    ldc.i4.0
    ceq
    brfalse L_if_end_1
    // line 1513
    ldloc _F
    ldfld int32 @RSHIFTTOCLP::CURRSYM
    ldsfld int32 _G::CURRMARGIN
    call void PUSHSTACK(int32 INDENTSYMBOL, int32 PREVMARGIN)
L_if_end_1:
    // line 1516
    ldsfld int32 _G::CURRLINEPOS
    stsfld int32 _G::CURRMARGIN
    /* nop */

L_Epilogue:
    ret
}

// line 0
//================================================================================
// scope: global scope (level : 0)

// line 167

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

    ldsflda valuetype [lpcRuntime]LPC.File _G::INPUTFILE
    ldc.i4 2
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::OUTPUTFILE
    ldc.i4 3
    call instance void [lpcRuntime]LPC.File::Init(int32)

L_Entry:
    // line 1522
    ldsflda valuetype [lpcRuntime]LPC.File _G::INPUTFILE
    ldsflda valuetype [lpcRuntime]LPC.File _G::OUTPUTFILE
    ldsflda int32 _G::TOP
    ldsflda int32 _G::CURRLINEPOS
    ldsflda int32 _G::CURRMARGIN
    ldsflda valuetype T_KEYWORDTABLE _G::KEYWORD
    ldsflda valuetype T_DBLCHRSET _G::DBLCHARS
    ldsflda valuetype T_DBLCHARTABLE _G::DBLCHAR
    ldsflda valuetype T_SGLCHARTABLE _G::SGLCHAR
    ldsflda bool _G::RECORDSEEN
    ldsflda valuetype T_CHARINFO _G::CURRCHAR
    ldsflda valuetype T_CHARINFO _G::NEXTCHAR
    ldsflda void* _G::CURRSYM
    ldsflda void* _G::NEXTSYM
    ldsflda valuetype T_OPTIONTABLE _G::PPOPTION
    call void INITIALISE(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype [lpcRuntime]LPC.File& OUTPUTFILE, int32& TOPOFSTACK, int32& CURRLINEPOS, int32& CURRMARGIN, valuetype T_KEYWORDTABLE& KEYWORD, valuetype T_DBLCHRSET& DBLCHARS, valuetype T_DBLCHARTABLE& DBLCHAR, valuetype T_SGLCHARTABLE& SGLCHAR, bool& RECORDSEEN, valuetype T_CHARINFO& CURRCHAR, valuetype T_CHARINFO& NEXTCHAR, void*& CURRSYM, void*& NEXTSYM, valuetype T_OPTIONTABLE& PPOPTION)
    // line 1527
    ldc.i4 0 // (false)
    stsfld bool _G::CRPENDING
    // line 1529
    br L_while_test_2
L_while_1:
    // line 1531
    ldsflda valuetype [lpcRuntime]LPC.File _G::INPUTFILE
    ldsflda void* _G::NEXTSYM
    ldsflda void* _G::CURRSYM
    call void GETSYMBOL(valuetype [lpcRuntime]LPC.File& INPUTFILE, void*& NEXTSYM, void*& CURRSYM)
    // line 1538
    ldsfld bool _G::CRPENDING
    dup
    brfalse L_AND_shortcut_4
    pop
    ldsflda valuetype T_OPTIONTABLE _G::PPOPTION
    ldsfld void* _G::CURRSYM
    ldfld int32 T_SYMBOL::NAME
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    ldc.i4 0 // CRSUPPRESS 
    call bool _SetContains(valuetype T_OPTIONSET s, int32 val)
    ldc.i4.0
    ceq
L_AND_shortcut_4:
    dup
    brtrue L_OR_shortcut_3
    pop
    ldsflda valuetype T_OPTIONTABLE _G::PPOPTION
    ldsfld void* _G::CURRSYM
    ldfld int32 T_SYMBOL::NAME
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    ldc.i4 1 // CRBEFORE 
    call bool _SetContains(valuetype T_OPTIONSET s, int32 val)
L_OR_shortcut_3:
    brfalse L_if_end_5
    // line 1540
    ldsflda void* _G::CURRSYM
    ldsflda valuetype [lpcRuntime]LPC.File _G::OUTPUTFILE
    call void INSERTCR(void*& CURRSYM, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
    // line 1542
    ldc.i4 0 // (false)
    stsfld bool _G::CRPENDING
    /* nop */
L_if_end_5:
    // line 1545
    ldsflda valuetype T_OPTIONTABLE _G::PPOPTION
    ldsfld void* _G::CURRSYM
    ldfld int32 T_SYMBOL::NAME
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    ldc.i4 2 // BLANKLINEBEFORE 
    call bool _SetContains(valuetype T_OPTIONSET s, int32 val)
    brfalse L_if_end_6
    // line 1546
    ldsflda void* _G::CURRSYM
    ldsflda valuetype [lpcRuntime]LPC.File _G::OUTPUTFILE
    call void INSERTBLANKLINE(void*& CURRSYM, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
    // line 1548
    ldc.i4 0 // (false)
    stsfld bool _G::CRPENDING
L_if_end_6:
    // line 1551
    ldsflda valuetype T_OPTIONTABLE _G::PPOPTION
    ldsfld void* _G::CURRSYM
    ldfld int32 T_SYMBOL::NAME
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    ldc.i4 3 // DINDENTONKEYS 
    call bool _SetContains(valuetype T_OPTIONSET s, int32 val)
    brfalse L_if_end_7
    // line 1552
    ldsflda valuetype T_OPTIONTABLE _G::PPOPTION
    ldsfld void* _G::CURRSYM
    ldfld int32 T_SYMBOL::NAME
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldfld valuetype T_set_6 T_TABLEENTRY::DINDENTSYMBOLS
    call void LSHIFTON(valuetype T_set_6 DINDENTSYMBOLS)
L_if_end_7:
    // line 1554
    ldsflda valuetype T_OPTIONTABLE _G::PPOPTION
    ldsfld void* _G::CURRSYM
    ldfld int32 T_SYMBOL::NAME
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    ldc.i4 4 // DINDENT 
    call bool _SetContains(valuetype T_OPTIONSET s, int32 val)
    brfalse L_if_end_8
    // line 1555
    call void LSHIFT()
L_if_end_8:
    // line 1557
    ldsflda valuetype T_OPTIONTABLE _G::PPOPTION
    ldsfld void* _G::CURRSYM
    ldfld int32 T_SYMBOL::NAME
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    ldc.i4 5 // SPACEBEFORE 
    call bool _SetContains(valuetype T_OPTIONSET s, int32 val)
    brfalse L_if_end_9
    // line 1558
    ldsflda void* _G::CURRSYM
    ldsflda valuetype [lpcRuntime]LPC.File _G::OUTPUTFILE
    call void INSERTSPACE(void*& SYMBOL, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
L_if_end_9:
    // line 1561
    ldsfld void* _G::CURRSYM
    ldsflda valuetype [lpcRuntime]LPC.File _G::OUTPUTFILE
    call void PPSYMBOL(void* CURRSYM, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
    // line 1564
    ldsflda valuetype T_OPTIONTABLE _G::PPOPTION
    ldsfld void* _G::CURRSYM
    ldfld int32 T_SYMBOL::NAME
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    ldc.i4 6 // SPACEAFTER 
    call bool _SetContains(valuetype T_OPTIONSET s, int32 val)
    brfalse L_if_end_10
    // line 1565
    ldsflda void* _G::NEXTSYM
    ldsflda valuetype [lpcRuntime]LPC.File _G::OUTPUTFILE
    call void INSERTSPACE(void*& SYMBOL, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
L_if_end_10:
    // line 1568
    ldsflda valuetype T_OPTIONTABLE _G::PPOPTION
    ldsfld void* _G::CURRSYM
    ldfld int32 T_SYMBOL::NAME
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    ldc.i4 8 // INDENTBYTAB 
    call bool _SetContains(valuetype T_OPTIONSET s, int32 val)
    brfalse L_if_end_11
    // line 1570
    ldsfld void* _G::CURRSYM
    ldfld int32 T_SYMBOL::NAME
    call void RSHIFT(int32 CURRSYM)
L_if_end_11:
    // line 1572
    ldsflda valuetype T_OPTIONTABLE _G::PPOPTION
    ldsfld void* _G::CURRSYM
    ldfld int32 T_SYMBOL::NAME
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    ldc.i4 9 // INDENTTOCLP 
    call bool _SetContains(valuetype T_OPTIONSET s, int32 val)
    brfalse L_if_end_12
    // line 1573
    ldsfld void* _G::CURRSYM
    ldfld int32 T_SYMBOL::NAME
    call void RSHIFTTOCLP(int32 CURRSYM)
L_if_end_12:
    // line 1575
    ldsflda valuetype T_OPTIONTABLE _G::PPOPTION
    ldsfld void* _G::CURRSYM
    ldfld int32 T_SYMBOL::NAME
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    ldc.i4 7 // GOBBLESYMBOLS 
    call bool _SetContains(valuetype T_OPTIONSET s, int32 val)
    brfalse L_if_end_13
    // line 1576
    ldsflda valuetype [lpcRuntime]LPC.File _G::INPUTFILE
    ldsflda valuetype T_OPTIONTABLE _G::PPOPTION
    ldsfld void* _G::CURRSYM
    ldfld int32 T_SYMBOL::NAME
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldfld valuetype T_set_6 T_TABLEENTRY::GOBBLETERMINATORS
    ldsflda void* _G::CURRSYM
    ldsflda void* _G::NEXTSYM
    ldsflda valuetype [lpcRuntime]LPC.File _G::OUTPUTFILE
    call void GOBBLE(valuetype [lpcRuntime]LPC.File& INPUTFILE, valuetype T_set_6 TERMINATORS, void*& CURRSYM, void*& NEXTSYM, valuetype [lpcRuntime]LPC.File& OUTPUTFILE)
L_if_end_13:
    // line 1582
    ldsflda valuetype T_OPTIONTABLE _G::PPOPTION
    ldsfld void* _G::CURRSYM
    ldfld int32 T_SYMBOL::NAME
    call instance valuetype T_TABLEENTRY& T_OPTIONTABLE::ldadr(int32)
    ldfld valuetype T_OPTIONSET T_TABLEENTRY::OPTIONSSELECTED
    ldc.i4 10 // CRAFTER 
    call bool _SetContains(valuetype T_OPTIONSET s, int32 val)
    brfalse L_if_end_14
    // line 1583
    ldc.i4 1 // (true)
    stsfld bool _G::CRPENDING
L_if_end_14:
    /* nop */
    /* nop */
L_while_test_2:
    ldsfld void* _G::NEXTSYM
    ldfld int32 T_SYMBOL::NAME
    ldc.i4 31 // ENDOFFILE 
    ceq
    ldc.i4.0
    ceq
    brtrue L_while_1
    // line 1589
    ldsfld bool _G::CRPENDING
    brfalse L_if_end_15
    // line 1590
    ldsflda valuetype [lpcRuntime]LPC.File _G::OUTPUTFILE
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_if_end_15:
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

    ldsflda valuetype [lpcRuntime]LPC.File _G::INPUTFILE
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::OUTPUTFILE
    call instance void [lpcRuntime]LPC.File::Close()

    endfinally
}

}

// line 0xfeefee

//================================================================================
// internal helpers

.method static bool _SetContains(valuetype T_DBLCHRSET s, int32 val)
{
    ldarga s
    ldc.i4 4
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static bool _SetContains(valuetype T_OPTIONSET s, int32 val)
{
    ldarga s
    ldc.i4 4
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static bool _SetContains(valuetype T_set_1 s, int32 val)
{
    ldarga s
    ldc.i4 32
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static bool _SetContains(valuetype T_set_3 s, int32 val)
{
    ldarga s
    ldc.i4 4
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static bool _SetContains(valuetype T_set_6 s, int32 val)
{
    ldarga s
    ldc.i4 8
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static valuetype T_DBLCHRSET _SetCastTo_T_DBLCHRSET(valuetype T_set_6 s)
{
    .locals init (valuetype T_DBLCHRSET result)

    ldloca result
    ldarga s
    ldc.i4 4
    cpblk
    ldloc result
    ret
}

.method static valuetype T_OPTIONSET _SetCastTo_T_OPTIONSET(valuetype T_set_1 s)
{
    .locals init (valuetype T_OPTIONSET result)

    ldloca result
    ldarga s
    ldc.i4 4
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_1 _SetCastTo_T_set_1(valuetype T_set_6 s)
{
    .locals init (valuetype T_set_1 result)

    ldloca result
    ldarga s
    ldc.i4 8
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_1 _SetUnion(valuetype T_set_1 a, valuetype T_set_1 b)
{
    .locals init (valuetype T_set_1 result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 32
    call void [lpcRuntime]LPC.Set::Union(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_set_6 _SetCastTo_T_set_6(valuetype T_set_1 s)
{
    .locals init (valuetype T_set_6 result)

    ldloca result
    ldarga s
    ldc.i4 8
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

.method static void _SetCheck(valuetype T_set_6 s, int32 min, int32 max)
{
    ldarga s
    ldc.i4 8
    ldarg min
    ldarg max
    call void [lpcRuntime]LPC.Set::RTCheck(uint8*, int32, int32, int32)
    ret
}



// line 0xfeefee

//================================================================================
// global string literals

// "(*"
.data STRING_23_DATA = bytearray( 28 2a )
.field static valuetype T_SPECIALCHAR STRING_23 at STRING_23_DATA

// ":="
.data STRING_22_DATA = bytearray( 3a 3d )
.field static valuetype T_SPECIALCHAR STRING_22 at STRING_22_DATA

// "BEGIN     "
.data STRING_8_DATA = bytearray( 42 45 47 49 4e 20 20 20 20 20 )
.field static valuetype T_KEY STRING_8 at STRING_8_DATA

// "CASE      "
.data STRING_11_DATA = bytearray( 43 41 53 45 20 20 20 20 20 20 )
.field static valuetype T_KEY STRING_11 at STRING_11_DATA

// "CONST     "
.data STRING_5_DATA = bytearray( 43 4f 4e 53 54 20 20 20 20 20 )
.field static valuetype T_KEY STRING_5 at STRING_5_DATA

// "DO        "
.data STRING_16_DATA = bytearray( 44 4f 20 20 20 20 20 20 20 20 )
.field static valuetype T_KEY STRING_16 at STRING_16_DATA

// "ELSE      "
.data STRING_19_DATA = bytearray( 45 4c 53 45 20 20 20 20 20 20 )
.field static valuetype T_KEY STRING_19 at STRING_19_DATA

// "END       "
.data STRING_20_DATA = bytearray( 45 4e 44 20 20 20 20 20 20 20 )
.field static valuetype T_KEY STRING_20 at STRING_20_DATA

// "FOR       "
.data STRING_13_DATA = bytearray( 46 4f 52 20 20 20 20 20 20 20 )
.field static valuetype T_KEY STRING_13 at STRING_13_DATA

// "FUNCTION  "
.data STRING_2_DATA = bytearray( 46 55 4e 43 54 49 4f 4e 20 20 )
.field static valuetype T_KEY STRING_2 at STRING_2_DATA

// "IF        "
.data STRING_17_DATA = bytearray( 49 46 20 20 20 20 20 20 20 20 )
.field static valuetype T_KEY STRING_17 at STRING_17_DATA

// "LABEL     "
.data STRING_4_DATA = bytearray( 4c 41 42 45 4c 20 20 20 20 20 )
.field static valuetype T_KEY STRING_4 at STRING_4_DATA

// "OF        "
.data STRING_12_DATA = bytearray( 4f 46 20 20 20 20 20 20 20 20 )
.field static valuetype T_KEY STRING_12 at STRING_12_DATA

// "PROCEDURE "
.data STRING_3_DATA = bytearray( 50 52 4f 43 45 44 55 52 45 20 )
.field static valuetype T_KEY STRING_3 at STRING_3_DATA

// "PROGRAM   "
.data STRING_1_DATA = bytearray( 50 52 4f 47 52 41 4d 20 20 20 )
.field static valuetype T_KEY STRING_1 at STRING_1_DATA

// "RECORD    "
.data STRING_10_DATA = bytearray( 52 45 43 4f 52 44 20 20 20 20 )
.field static valuetype T_KEY STRING_10 at STRING_10_DATA

// "REPEAT    "
.data STRING_9_DATA = bytearray( 52 45 50 45 41 54 20 20 20 20 )
.field static valuetype T_KEY STRING_9 at STRING_9_DATA

// "THEN      "
.data STRING_18_DATA = bytearray( 54 48 45 4e 20 20 20 20 20 20 )
.field static valuetype T_KEY STRING_18 at STRING_18_DATA

// "TYPE      "
.data STRING_6_DATA = bytearray( 54 59 50 45 20 20 20 20 20 20 )
.field static valuetype T_KEY STRING_6 at STRING_6_DATA

// "UNTIL     "
.data STRING_21_DATA = bytearray( 55 4e 54 49 4c 20 20 20 20 20 )
.field static valuetype T_KEY STRING_21 at STRING_21_DATA

// "VAR       "
.data STRING_7_DATA = bytearray( 56 41 52 20 20 20 20 20 20 20 )
.field static valuetype T_KEY STRING_7 at STRING_7_DATA

// "WHILE     "
.data STRING_14_DATA = bytearray( 57 48 49 4c 45 20 20 20 20 20 )
.field static valuetype T_KEY STRING_14 at STRING_14_DATA

// "WITH      "
.data STRING_15_DATA = bytearray( 57 49 54 48 20 20 20 20 20 20 )
.field static valuetype T_KEY STRING_15 at STRING_15_DATA


