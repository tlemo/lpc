
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

// "basics.pas"

// line 132
//================================================================================
// scope: prtlin_prtkey (level : 3)

// line 0xfeefee

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

.class @prtlin_prtkey
{
    // slink
    .field public class @prtlin _slink

    // parameters
    .field public valuetype T_string10* Str

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


// line 128
//================================================================================
// scope: prtlin (level : 2)

// line 0xfeefee

// TYPE string80 = array [1 .. 80] of uint8;
.class value explicit T_string80
{
    // elem size = 1
    // alignment = 1
    .size 80

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 80)
        ldarg index
        ldc.i4 80
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

    .method public static string arrayToString(valuetype T_string80)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 80
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

// line 0xfeefee

// TYPE array_1 = array [1 .. 29] of valuetype T_string10;
.class value explicit T_array_1
{
    // elem size = 10
    // alignment = 1
    .size 290

    .field [0] public valuetype T_string10 elem

    .method public valuetype T_string10& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 29)
        ldarg index
        ldc.i4 29
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

.class @prtlin
{
    // parameters
    .field public valuetype T_string80* Str

    // local variables
    .field public int32 i
    .field public int32 j

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 132

    .method public
    void Prtkey(valuetype T_string10& Str)
    {
        .maxstack 32
    
        .locals init(class @prtlin_prtkey _F,
            valuetype T_string10& pinned $Str)
        
        newobj instance void @prtlin_prtkey::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @prtlin @prtlin_prtkey::_slink
        
        ldarg Str
        stloc $Str
        
        ldloc _F
        ldarg Str
        stfld valuetype T_string10* @prtlin_prtkey::Str
    
    L_Entry:
        // line 138
        ldloc _F
        ldc.i4 10
        stfld int32 @prtlin_prtkey::j
        // line 139
        br L_while_test_2
    L_while_1:
        // line 139
        ldloc _F
        ldloc _F
        ldfld int32 @prtlin_prtkey::j
        ldc.i4 1
        sub
        stfld int32 @prtlin_prtkey::j
    L_while_test_2:
        ldloc _F
        ldfld valuetype T_string10* @prtlin_prtkey::Str
        ldloc _F
        ldfld int32 @prtlin_prtkey::j
        call instance uint8& T_string10::ldadr(int32)
        ldobj uint8
        ldc.i4 32 // ' '
        ceq
        dup
        brfalse L_AND_shortcut_3
        pop
        ldloc _F
        ldfld int32 @prtlin_prtkey::j
        ldc.i4 0
        cgt
    L_AND_shortcut_3:
        brtrue L_while_1
        // line 140
        ldloc _F
        ldloc _F
        ldfld int32 @prtlin_prtkey::j
        ldc.i4 1
        add
        stfld int32 @prtlin_prtkey::j
        // line 141
        ldloc _F
        ldc.i4 1
        stfld int32 @prtlin_prtkey::i
        // line 142
        br L_while_test_5
    L_while_4:
        // line 142
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldloc _F
        ldfld valuetype T_string10* @prtlin_prtkey::Str
        ldloc _F
        ldfld int32 @prtlin_prtkey::i
        call instance uint8& T_string10::ldadr(int32)
        ldobj uint8
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        pop
        // line 142
        ldloc _F
        ldloc _F
        ldfld int32 @prtlin_prtkey::i
        ldc.i4 1
        add
        stfld int32 @prtlin_prtkey::i
    L_while_test_5:
        ldloc _F
        ldfld int32 @prtlin_prtkey::i
        ldloc _F
        ldfld int32 @prtlin_prtkey::j
        clt
        brtrue L_while_4
    
    L_Epilogue:
        ret
    }
}


// line 165
//================================================================================
// scope: prterr (level : 2)

// line 0xfeefee

// TYPE array_2 = array [0 .. 100] of valuetype T_string80;
.class value explicit T_array_2
{
    // elem size = 80
    // alignment = 1
    .size 8080

    .field [0] public valuetype T_string80 elem

    .method public valuetype T_string80& ldadr(int32 index)
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
        ldc.i4 80
        mul
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

.class @prterr
{
    // parameters
    .field public int32 Err

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 205
//================================================================================
// scope: chkchr (level : 2)

.class @chkchr
{
    // local variables
    .field public uint8 _fnvalue
    .field public uint8 c

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 219
//================================================================================
// scope: chkend (level : 2)

.class @chkend
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


// line 229
//================================================================================
// scope: getchr (level : 2)

.class @getchr
{
    // local variables
    .field public uint8 _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 240
//================================================================================
// scope: chknxt (level : 2)

.class @chknxt
{
    // parameters
    .field public uint8 c

    // local variables
    .field public bool _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 251
//================================================================================
// scope: skpspc (level : 2)

.class @skpspc
{
    // local variables
    .field public uint8 c

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 263
//================================================================================
// scope: chksend (level : 2)

.class @chksend
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


// line 274
//================================================================================
// scope: null (level : 2)

.class @null
{
    // parameters
    .field public valuetype T_string80* Str

    // local variables
    .field public bool _fnvalue
    .field public bool f
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 289
//================================================================================
// scope: digit (level : 2)

.class @digit
{
    // parameters
    .field public uint8 c

    // local variables
    .field public bool _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 299
//================================================================================
// scope: lcase (level : 2)

.class @lcase
{
    // parameters
    .field public uint8 c

    // local variables
    .field public uint8 _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 311
//================================================================================
// scope: alpha (level : 2)

.class @alpha
{
    // parameters
    .field public uint8 c

    // local variables
    .field public bool _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 322
//================================================================================
// scope: lint (level : 2)

.class @lint
{
    // parameters
    .field public valuetype T_string80* Str

    // local variables
    .field public int32 _fnvalue
    .field public bool b
    .field public int32 i
    .field public int32 v

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 353
//================================================================================
// scope: schlab (level : 2)

.class @schlab
{
    // parameters
    .field public int32 Lab

    // local variables
    .field public int32 _fnvalue
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 368
//================================================================================
// scope: inpstr (level : 2)

.class @inpstr
{
    // parameters
    .field public valuetype T_string80* Str

    // local variables
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 389
//================================================================================
// scope: getvar (level : 2)

.class @getvar
{
    // local variables
    .field public uint8 _fnvalue

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 400
//================================================================================
// scope: enter (level : 2)

.class @enter
{
    // parameters
    .field public valuetype T_string80* Str

    // local variables
    .field public bool f
    .field public int32 i
    .field public int32 j
    .field public int32 k
    .field public int32 Line

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 456
//================================================================================
// scope: keycom_matstr (level : 3)

.class @keycom_matstr
{
    // slink
    .field public class @keycom _slink

    // parameters
    .field public int32* i
    .field public valuetype T_string80* Stra
    .field public valuetype T_string10* Strb

    // local variables
    .field public bool _fnvalue
    .field public bool f
    .field public int32 I1
    .field public int32 I2

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 449
//================================================================================
// scope: keycom (level : 2)

.class @keycom
{
    // parameters
    .field public valuetype T_string80* Str

    // local variables
    .field public uint8 c
    .field public bool f
    .field public int32 I1
    .field public int32 I2
    .field public int32 k
    .field public valuetype T_string80 Ts

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 456

    .method public
    bool Matstr(valuetype T_string80& Stra, int32& i, valuetype T_string10& Strb)
    {
        .maxstack 32
    
        .locals init(class @keycom_matstr _F,
            int32& pinned $i,
            valuetype T_string80& pinned $Stra,
            valuetype T_string10& pinned $Strb)
        
        newobj instance void @keycom_matstr::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @keycom @keycom_matstr::_slink
        
        ldarg i
        stloc $i
        
        ldloc _F
        ldarg i
        stfld int32* @keycom_matstr::i
        
        ldarg Stra
        stloc $Stra
        
        ldloc _F
        ldarg Stra
        stfld valuetype T_string80* @keycom_matstr::Stra
        
        ldarg Strb
        stloc $Strb
        
        ldloc _F
        ldarg Strb
        stfld valuetype T_string10* @keycom_matstr::Strb
    
    L_Entry:
        // line 464
        ldloc _F
        ldloc _F
        ldfld int32* @keycom_matstr::i
        ldobj int32
        stfld int32 @keycom_matstr::I1
        // line 465
        ldloc _F
        ldc.i4 1
        stfld int32 @keycom_matstr::I2
        // line 466
    L_repeat_1:
        // line 468
        ldloc _F
        ldfld valuetype T_string10* @keycom_matstr::Strb
        ldloc _F
        ldfld int32 @keycom_matstr::I2
        call instance uint8& T_string10::ldadr(int32)
        ldobj uint8
        ldc.i4 32 // ' '
        ceq
        brfalse L_else_2
        // line 468
        ldloc _F
        ldc.i4 0 // (false)
        stfld bool @keycom_matstr::f
        br L_if_end_3
    L_else_2:
        // line 469
        ldloc _F
        ldfld valuetype T_string80* @keycom_matstr::Stra
        ldloc _F
        ldfld int32 @keycom_matstr::I1
        call instance uint8& T_string80::ldadr(int32)
        ldobj uint8
        call uint8 Lcase(uint8 c)
        ldloc _F
        ldfld valuetype T_string10* @keycom_matstr::Strb
        ldloc _F
        ldfld int32 @keycom_matstr::I2
        call instance uint8& T_string10::ldadr(int32)
        ldobj uint8
        call uint8 Lcase(uint8 c)
        ceq
        brfalse L_else_4
        // line 471
        ldloc _F
        ldc.i4 1 // (true)
        stfld bool @keycom_matstr::f
        // line 472
        ldloc _F
        ldloc _F
        ldfld int32 @keycom_matstr::I1
        ldc.i4 1
        add
        stfld int32 @keycom_matstr::I1
        // line 473
        ldloc _F
        ldloc _F
        ldfld int32 @keycom_matstr::I2
        ldc.i4 1
        add
        stfld int32 @keycom_matstr::I2
        br L_if_end_5
    L_else_4:
        // line 476
        ldloc _F
        ldc.i4 0 // (false)
        stfld bool @keycom_matstr::f
    L_if_end_5:
    L_if_end_3:
        ldloc _F
        ldfld bool @keycom_matstr::f
        ldc.i4.0
        ceq
        dup
        brtrue L_OR_shortcut_7
        pop
        ldloc _F
        ldfld int32 @keycom_matstr::I1
        ldc.i4 80
        cgt
    L_OR_shortcut_7:
        dup
        brtrue L_OR_shortcut_6
        pop
        ldloc _F
        ldfld int32 @keycom_matstr::I2
        ldc.i4 10
        cgt
    L_OR_shortcut_6:
        brfalse L_repeat_1
        // line 479
        ldloc _F
        ldfld int32 @keycom_matstr::I2
        ldc.i4 10
        cgt
        brfalse L_else_8
        // line 479
        ldloc _F
        ldc.i4 1 // (true)
        stfld bool @keycom_matstr::f
        // line 479
        ldloc _F
        ldfld int32* @keycom_matstr::i
        ldloc _F
        ldfld int32 @keycom_matstr::I1
        stobj int32
        br L_if_end_9
    L_else_8:
        // line 480
        ldloc _F
        ldfld valuetype T_string10* @keycom_matstr::Strb
        ldloc _F
        ldfld int32 @keycom_matstr::I2
        call instance uint8& T_string10::ldadr(int32)
        ldobj uint8
        ldc.i4 32 // ' '
        ceq
        brfalse L_else_10
        // line 480
        ldloc _F
        ldc.i4 1 // (true)
        stfld bool @keycom_matstr::f
        // line 480
        ldloc _F
        ldfld int32* @keycom_matstr::i
        ldloc _F
        ldfld int32 @keycom_matstr::I1
        stobj int32
        br L_if_end_11
    L_else_10:
        // line 481
        ldloc _F
        ldc.i4 0 // (false)
        stfld bool @keycom_matstr::f
    L_if_end_11:
    L_if_end_9:
        // line 482
        ldloc _F
        ldloc _F
        ldfld bool @keycom_matstr::f
        stfld bool @keycom_matstr::_fnvalue
    
    L_Epilogue:
        ldloc _F
        ldfld bool @keycom_matstr::_fnvalue
        ret
    }
}


// line 540
//================================================================================
// scope: getint (level : 2)

.class @getint
{
    // local variables
    .field public int32 _fnvalue
    .field public int32 v

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 557
//================================================================================
// scope: getval (level : 2)

.class @getval
{
    // parameters
    .field public valuetype T_string80* Str

    // local variables
    .field public int32 _fnvalue
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 575
//================================================================================
// scope: getbval (level : 2)

// line 0xfeefee

// TYPE bstring80 = record;
.class value explicit T_bstring80
{
    // alignment = 4
    .size 84
    
    .field [0] public int32 Len
    .field [4] public valuetype T_string80 Str
}

.class @getbval
{
    // parameters
    .field public valuetype T_bstring80* Str

    // local variables
    .field public int32 _fnvalue
    .field public int32 i
    .field public int32 v

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 599
//================================================================================
// scope: putbval (level : 2)

.class @putbval
{
    // parameters
    .field public valuetype T_bstring80* Str
    .field public int32 v

    // local variables
    .field public int32 i
    .field public int32 p

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 635
//================================================================================
// scope: prtbstr (level : 2)

.class @prtbstr
{
    // parameters
    .field public valuetype T_bstring80* Bstr

    // local variables
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 647
//================================================================================
// scope: inpbstr (level : 2)

.class @inpbstr
{
    // parameters
    .field public valuetype T_bstring80* Bstr

    // local variables
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 669
//================================================================================
// scope: cat (level : 2)

.class @cat
{
    // parameters
    .field public valuetype T_bstring80* Bstra
    .field public valuetype T_bstring80* Bstrb

    // local variables
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 684
//================================================================================
// scope: chkequ (level : 2)

// line 0xfeefee

// TYPE record_3 = record;
.class value explicit T_record_3
{
    // alignment = 4
    .size 92
    
    .field [0] public int32 Typ
    .field [4] public int32 Int
    .field [8] public valuetype T_bstring80 Bstr
}

// line 0xfeefee

// TYPE array_4 = array [1 .. 10] of valuetype T_record_3;
.class value explicit T_array_4
{
    // elem size = 92
    // alignment = 4
    .size 920

    .field [0] public valuetype T_record_3 elem

    .method public valuetype T_record_3& ldadr(int32 index)
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
        ldc.i4 92
        mul
        add
        ret
    
    badIndex:
        ldstr "index out of bounds"
        newobj instance void [mscorlib]System.Exception::.ctor(string)
        throw
    }
}

.class @chkequ
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


// line 696
//================================================================================
// scope: chkltn (level : 2)

.class @chkltn
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


// line 708
//================================================================================
// scope: chkgtn (level : 2)

.class @chkgtn
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


// line 720
//================================================================================
// scope: settrue (level : 2)

.class @settrue
{
    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 731
//================================================================================
// scope: setfalse (level : 2)

.class @setfalse
{
    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 742
//================================================================================
// scope: clear (level : 2)

// line 0xfeefee

// TYPE array_5 = array [97 .. 122] of valuetype T_bstring80;
.class value explicit T_array_5
{
    // elem size = 84
    // alignment = 4
    .size 2184

    .field [0] public valuetype T_bstring80 elem

    .method public valuetype T_bstring80& ldadr(int32 index)
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
        ldc.i4 84
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

// TYPE array_6 = array [97 .. 122] of int32;
.class value explicit T_array_6
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

.class @clear
{
    // local variables
    .field public uint8 c
    .field public int32 x
    .field public int32 y

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 761
//================================================================================
// scope: clrvar (level : 2)

.class @clrvar
{
    // local variables
    .field public uint8 c

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 806
//================================================================================
// scope: exec_stat_expr_sexpr_term_factor (level : 7)

.class @exec_stat_expr_sexpr_term_factor
{
    // slink
    .field public class @exec_stat_expr_sexpr_term _slink

    // local variables
    .field public uint8 c
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 802
//================================================================================
// scope: exec_stat_expr_sexpr_term (level : 6)

// line 0xfeefee

// TYPE set_7 = set of 0 .. 255
.class value explicit T_set_7
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
        call instance void T_set_7::addValue(int32)
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

.class @exec_stat_expr_sexpr_term
{
    // slink
    .field public class @exec_stat_expr_sexpr _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 806

    .method public
    void Factor()
    {
        .maxstack 32
    
        .locals init(
            class @exec_stat_expr_sexpr_term_factor _F,
            int32 $tmpEndValue1,
            int32 $tmpIndex2,
            int32 $tmpIndex3,
            int32 $tmpEndValue4,
            int32 $tmpIndex5,
            int32 $tmpIndex6)
        
        newobj instance void @exec_stat_expr_sexpr_term_factor::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @exec_stat_expr_sexpr_term @exec_stat_expr_sexpr_term_factor::_slink
    
    L_Entry:
        // line 813
        call void Skpspc()
        // line 814
        ldloc _F
        call uint8 Chkchr()
        stfld uint8 @exec_stat_expr_sexpr_term_factor::c
        // line 815
        ldc.i4 40 // '('
        call bool Chknxt(uint8 c)
        brfalse L_else_1
        // line 817
        ldloc _F
        ldfld class @exec_stat_expr_sexpr_term @exec_stat_expr_sexpr_term_factor::_slink
        ldfld class @exec_stat_expr_sexpr @exec_stat_expr_sexpr_term::_slink
        ldfld class @exec_stat_expr @exec_stat_expr_sexpr::_slink
        ldfld class @exec_stat @exec_stat_expr::_slink
        call instance void @exec_stat::Expr()
        // line 818
        ldc.i4 41 // ')'
        call bool Chknxt(uint8 c)
        ldc.i4.0
        ceq
        brfalse L_if_end_3
        // line 818
        ldc.i4 13
        call void Prterr(int32 Err)
    L_if_end_3:
        br L_if_end_2
    L_else_1:
        // line 820
        ldc.i4 18
        call bool Chknxt(uint8 c)
        brfalse L_else_4
        // line 822
        ldloc _F
        ldfld class @exec_stat_expr_sexpr_term @exec_stat_expr_sexpr_term_factor::_slink
        call instance void @exec_stat_expr_sexpr_term::Factor()
        // line 823
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_6
        // line 823
        ldc.i4 12
        call void Prterr(int32 Err)
    L_if_end_6:
        br L_if_end_5
    L_else_4:
        // line 825
        ldc.i4 19
        call bool Chknxt(uint8 c)
        brfalse L_else_7
        // line 827
        ldloc _F
        ldfld class @exec_stat_expr_sexpr_term @exec_stat_expr_sexpr_term_factor::_slink
        call instance void @exec_stat_expr_sexpr_term::Factor()
        // line 828
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_9
        // line 828
        ldc.i4 12
        call void Prterr(int32 Err)
    L_if_end_9:
        // line 829
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        neg
        stfld int32 T_record_3::Int
        br L_if_end_8
    L_else_7:
        // line 831
        ldc.i4 34 // '"'
        call bool Chknxt(uint8 c)
        brfalse L_else_10
        // line 833
        ldsfld int32 _G::Top
        ldc.i4 1
        add
        stsfld int32 _G::Top
        // line 834
        ldsfld int32 _G::Top
        ldc.i4 10
        cgt
        brfalse L_if_end_12
        // line 834
        ldc.i4 14
        call void Prterr(int32 Err)
    L_if_end_12:
        // line 835
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldc.i4 1
        stfld int32 T_record_3::Typ
        // line 836
        ldloc _F
        ldc.i4 1
        stfld int32 @exec_stat_expr_sexpr_term_factor::i
        // line 837
        br L_while_test_14
    L_while_13:
        // line 839
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldflda valuetype T_bstring80 T_record_3::Bstr
        ldflda valuetype T_string80 T_bstring80::Str
        ldloc _F
        ldfld int32 @exec_stat_expr_sexpr_term_factor::i
        call instance uint8& T_string80::ldadr(int32)
        call uint8 Getchr()
        stobj uint8
        // line 840
        ldloc _F
        ldloc _F
        ldfld int32 @exec_stat_expr_sexpr_term_factor::i
        ldc.i4 1
        add
        stfld int32 @exec_stat_expr_sexpr_term_factor::i
    L_while_test_14:
        ldloc _F
        ldfld int32 @exec_stat_expr_sexpr_term_factor::i
        ldc.i4 80
        cgt
        ldc.i4.0
        ceq
        dup
        brfalse L_AND_shortcut_15
        pop
        call uint8 Chkchr()
        ldc.i4 34 // '"'
        ceq
        ldc.i4.0
        ceq
    L_AND_shortcut_15:
        brtrue L_while_13
        // line 843
        ldc.i4 34 // '"'
        call bool Chknxt(uint8 c)
        ldc.i4.0
        ceq
        brfalse L_if_end_16
        // line 843
        ldc.i4 15
        call void Prterr(int32 Err)
    L_if_end_16:
        // line 844
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldflda valuetype T_bstring80 T_record_3::Bstr
        ldloc _F
        ldfld int32 @exec_stat_expr_sexpr_term_factor::i
        ldc.i4 1
        sub
        stfld int32 T_bstring80::Len
        br L_if_end_11
    L_else_10:
        // line 846
        call uint8 Chkchr()
        call bool Digit(uint8 c)
        brfalse L_else_17
        // line 848
        ldsfld int32 _G::Top
        ldc.i4 1
        add
        stsfld int32 _G::Top
        // line 849
        ldsfld int32 _G::Top
        ldc.i4 10
        cgt
        brfalse L_if_end_19
        // line 849
        ldc.i4 14
        call void Prterr(int32 Err)
    L_if_end_19:
        // line 850
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldc.i4 0
        stfld int32 T_record_3::Typ
        // line 851
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        call int32 Getint()
        stfld int32 T_record_3::Int
        br L_if_end_18
    L_else_17:
        // line 853
        call uint8 Chkchr()
        call bool Alpha(uint8 c)
        brfalse L_else_20
        // line 855
        ldsfld int32 _G::Top
        ldc.i4 1
        add
        stsfld int32 _G::Top
        // line 856
        ldsfld int32 _G::Top
        ldc.i4 10
        cgt
        brfalse L_if_end_22
        // line 856
        ldc.i4 14
        call void Prterr(int32 Err)
    L_if_end_22:
        // line 857
        ldloc _F
        call uint8 Getvar()
        stfld uint8 @exec_stat_expr_sexpr_term_factor::c
        // line 858
        ldc.i4 36 // '$'
        call bool Chknxt(uint8 c)
        brfalse L_else_23
        // line 860
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldc.i4 1
        stfld int32 T_record_3::Typ
        // line 861
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldsflda valuetype T_array_5 _G::Strs
        ldloc _F
        ldfld uint8 @exec_stat_expr_sexpr_term_factor::c
        call instance valuetype T_bstring80& T_array_5::ldadr(int32)
        ldobj valuetype T_bstring80
        stfld valuetype T_bstring80 T_record_3::Bstr
        br L_if_end_24
    L_else_23:
        // line 865
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldc.i4 0
        stfld int32 T_record_3::Typ
        // line 866
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldsflda valuetype T_array_6 _G::Ints
        ldloc _F
        ldfld uint8 @exec_stat_expr_sexpr_term_factor::c
        call instance int32& T_array_6::ldadr(int32)
        ldobj int32
        stfld int32 T_record_3::Int
    L_if_end_24:
        br L_if_end_21
    L_else_20:
        // line 870
        ldc.i4 23
        call bool Chknxt(uint8 c)
        dup
        brtrue L_OR_shortcut_26
        pop
        ldc.i4 24
        call bool Chknxt(uint8 c)
    L_OR_shortcut_26:
        dup
        brtrue L_OR_shortcut_25
        pop
        ldc.i4 25
        call bool Chknxt(uint8 c)
    L_OR_shortcut_25:
        brfalse L_else_27
        // line 874
        call void Skpspc()
        // line 875
        ldc.i4 40 // '('
        call bool Chknxt(uint8 c)
        ldc.i4.0
        ceq
        brfalse L_if_end_29
        // line 875
        ldc.i4 20
        call void Prterr(int32 Err)
    L_if_end_29:
        // line 876
        ldloc _F
        ldfld class @exec_stat_expr_sexpr_term @exec_stat_expr_sexpr_term_factor::_slink
        ldfld class @exec_stat_expr_sexpr @exec_stat_expr_sexpr_term::_slink
        ldfld class @exec_stat_expr @exec_stat_expr_sexpr::_slink
        ldfld class @exec_stat @exec_stat_expr::_slink
        call instance void @exec_stat::Expr()
        // line 877
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 1
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_30
        // line 877
        ldc.i4 22
        call void Prterr(int32 Err)
    L_if_end_30:
        // line 878
        call void Skpspc()
        // line 879
        ldc.i4 44 // ','
        call bool Chknxt(uint8 c)
        ldc.i4.0
        ceq
        brfalse L_if_end_31
        // line 879
        ldc.i4 21
        call void Prterr(int32 Err)
    L_if_end_31:
        // line 880
        ldloc _F
        ldfld class @exec_stat_expr_sexpr_term @exec_stat_expr_sexpr_term_factor::_slink
        ldfld class @exec_stat_expr_sexpr @exec_stat_expr_sexpr_term::_slink
        ldfld class @exec_stat_expr @exec_stat_expr_sexpr::_slink
        ldfld class @exec_stat @exec_stat_expr::_slink
        call instance void @exec_stat::Expr()
        // line 881
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_32
        // line 881
        ldc.i4 9
        call void Prterr(int32 Err)
    L_if_end_32:
        // line 882
        call void Skpspc()
        // line 883
        ldloc _F
        ldfld uint8 @exec_stat_expr_sexpr_term_factor::c
        ldc.i4 25
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_33
        // line 885
        ldc.i4 41 // ')'
        call bool Chknxt(uint8 c)
        ldc.i4.0
        ceq
        brfalse L_if_end_35
        // line 885
        ldc.i4 13
        call void Prterr(int32 Err)
    L_if_end_35:
        // line 886
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldflda valuetype T_bstring80 T_record_3::Bstr
        ldfld int32 T_bstring80::Len
        cgt
        brfalse L_if_end_36
        // line 886
        ldc.i4 23
        call void Prterr(int32 Err)
    L_if_end_36:
        // line 887
        ldloc _F
        ldfld uint8 @exec_stat_expr_sexpr_term_factor::c
        ldc.i4 24
        ceq
        brfalse L_if_end_37
        // line 888
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        stloc $tmpEndValue1
        ldc.i4 1
        dup
        ldloc $tmpEndValue1
        bgt L_for_end_39
        stloc $tmpIndex2
        ldloc _F
        ldloc $tmpIndex2
        stfld int32 @exec_stat_expr_sexpr_term_factor::i
    L_for_loop_38:
        // line 889
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldflda valuetype T_bstring80 T_record_3::Bstr
        ldflda valuetype T_string80 T_bstring80::Str
        ldloc _F
        ldfld int32 @exec_stat_expr_sexpr_term_factor::i
        call instance uint8& T_string80::ldadr(int32)
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldflda valuetype T_bstring80 T_record_3::Bstr
        ldflda valuetype T_string80 T_bstring80::Str
        ldloc _F
        ldfld int32 @exec_stat_expr_sexpr_term_factor::i
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldflda valuetype T_bstring80 T_record_3::Bstr
        ldfld int32 T_bstring80::Len
        add
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        sub
        call instance uint8& T_string80::ldadr(int32)
        ldobj uint8
        stobj uint8
        ldloc _F
        ldfld int32 @exec_stat_expr_sexpr_term_factor::i
        dup
        ldloc $tmpEndValue1
        beq L_for_end_39
        ldc.i4.1
        add
        stloc $tmpIndex3
        ldloc _F
        ldloc $tmpIndex3
        stfld int32 @exec_stat_expr_sexpr_term_factor::i
        br L_for_loop_38
    L_for_end_39:
        pop
    L_if_end_37:
        // line 891
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldflda valuetype T_bstring80 T_record_3::Bstr
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        stfld int32 T_bstring80::Len
        // line 892
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        br L_if_end_34
    L_else_33:
        // line 896
        ldc.i4 44 // ','
        call bool Chknxt(uint8 c)
        ldc.i4.0
        ceq
        brfalse L_if_end_40
        // line 896
        ldc.i4 21
        call void Prterr(int32 Err)
    L_if_end_40:
        // line 897
        ldloc _F
        ldfld class @exec_stat_expr_sexpr_term @exec_stat_expr_sexpr_term_factor::_slink
        ldfld class @exec_stat_expr_sexpr @exec_stat_expr_sexpr_term::_slink
        ldfld class @exec_stat_expr @exec_stat_expr_sexpr::_slink
        ldfld class @exec_stat @exec_stat_expr::_slink
        call instance void @exec_stat::Expr()
        // line 898
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_41
        // line 898
        ldc.i4 9
        call void Prterr(int32 Err)
    L_if_end_41:
        // line 899
        call void Skpspc()
        // line 900
        ldc.i4 41 // ')'
        call bool Chknxt(uint8 c)
        ldc.i4.0
        ceq
        brfalse L_if_end_42
        // line 900
        ldc.i4 13
        call void Prterr(int32 Err)
    L_if_end_42:
        // line 902
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        add
        ldc.i4 1
        sub
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 2
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldflda valuetype T_bstring80 T_record_3::Bstr
        ldfld int32 T_bstring80::Len
        cgt
        brfalse L_if_end_43
        // line 903
        ldc.i4 23
        call void Prterr(int32 Err)
    L_if_end_43:
        // line 904
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        stloc $tmpEndValue4
        ldc.i4 1
        dup
        ldloc $tmpEndValue4
        bgt L_for_end_45
        stloc $tmpIndex5
        ldloc _F
        ldloc $tmpIndex5
        stfld int32 @exec_stat_expr_sexpr_term_factor::i
    L_for_loop_44:
        // line 905
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 2
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldflda valuetype T_bstring80 T_record_3::Bstr
        ldflda valuetype T_string80 T_bstring80::Str
        ldloc _F
        ldfld int32 @exec_stat_expr_sexpr_term_factor::i
        call instance uint8& T_string80::ldadr(int32)
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 2
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldflda valuetype T_bstring80 T_record_3::Bstr
        ldflda valuetype T_string80 T_bstring80::Str
        ldloc _F
        ldfld int32 @exec_stat_expr_sexpr_term_factor::i
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        add
        ldc.i4 1
        sub
        call instance uint8& T_string80::ldadr(int32)
        ldobj uint8
        stobj uint8
        ldloc _F
        ldfld int32 @exec_stat_expr_sexpr_term_factor::i
        dup
        ldloc $tmpEndValue4
        beq L_for_end_45
        ldc.i4.1
        add
        stloc $tmpIndex6
        ldloc _F
        ldloc $tmpIndex6
        stfld int32 @exec_stat_expr_sexpr_term_factor::i
        br L_for_loop_44
    L_for_end_45:
        pop
        // line 906
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 2
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldflda valuetype T_bstring80 T_record_3::Bstr
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        stfld int32 T_bstring80::Len
        // line 907
        ldsfld int32 _G::Top
        ldc.i4 2
        sub
        stsfld int32 _G::Top
    L_if_end_34:
        br L_if_end_28
    L_else_27:
        // line 911
        ldc.i4 29
        call bool Chknxt(uint8 c)
        brfalse L_else_46
        // line 913
        ldc.i4 40 // '('
        call bool Chknxt(uint8 c)
        ldc.i4.0
        ceq
        brfalse L_if_end_48
        // line 913
        ldc.i4 20
        call void Prterr(int32 Err)
    L_if_end_48:
        // line 914
        ldloc _F
        ldfld class @exec_stat_expr_sexpr_term @exec_stat_expr_sexpr_term_factor::_slink
        ldfld class @exec_stat_expr_sexpr @exec_stat_expr_sexpr_term::_slink
        ldfld class @exec_stat_expr @exec_stat_expr_sexpr::_slink
        ldfld class @exec_stat @exec_stat_expr::_slink
        call instance void @exec_stat::Expr()
        // line 915
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 1
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_49
        // line 915
        ldc.i4 22
        call void Prterr(int32 Err)
    L_if_end_49:
        // line 916
        call void Skpspc()
        // line 917
        ldc.i4 41 // ')'
        call bool Chknxt(uint8 c)
        ldc.i4.0
        ceq
        brfalse L_if_end_50
        // line 917
        ldc.i4 13
        call void Prterr(int32 Err)
    L_if_end_50:
        // line 918
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldflda valuetype T_bstring80 T_record_3::Bstr
        ldfld int32 T_bstring80::Len
        ldc.i4 1
        clt
        brfalse L_if_end_51
        // line 918
        ldc.i4 23
        call void Prterr(int32 Err)
    L_if_end_51:
        // line 919
        ldloc _F
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldflda valuetype T_bstring80 T_record_3::Bstr
        ldflda valuetype T_string80 T_bstring80::Str
        ldc.i4 1
        call instance uint8& T_string80::ldadr(int32)
        ldobj uint8
        stfld uint8 @exec_stat_expr_sexpr_term_factor::c
        // line 920
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldc.i4 0
        stfld int32 T_record_3::Typ
        // line 921
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldloc _F
        ldfld uint8 @exec_stat_expr_sexpr_term_factor::c
        stfld int32 T_record_3::Int
        br L_if_end_47
    L_else_46:
        // line 923
        ldc.i4 28
        call bool Chknxt(uint8 c)
        brfalse L_else_52
        // line 925
        ldc.i4 40 // '('
        call bool Chknxt(uint8 c)
        ldc.i4.0
        ceq
        brfalse L_if_end_54
        // line 925
        ldc.i4 20
        call void Prterr(int32 Err)
    L_if_end_54:
        // line 926
        ldloc _F
        ldfld class @exec_stat_expr_sexpr_term @exec_stat_expr_sexpr_term_factor::_slink
        ldfld class @exec_stat_expr_sexpr @exec_stat_expr_sexpr_term::_slink
        ldfld class @exec_stat_expr @exec_stat_expr_sexpr::_slink
        ldfld class @exec_stat @exec_stat_expr::_slink
        call instance void @exec_stat::Expr()
        // line 927
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 1
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_55
        // line 927
        ldc.i4 22
        call void Prterr(int32 Err)
    L_if_end_55:
        // line 928
        call void Skpspc()
        // line 929
        ldc.i4 41 // ')'
        call bool Chknxt(uint8 c)
        ldc.i4.0
        ceq
        brfalse L_if_end_56
        // line 929
        ldc.i4 13
        call void Prterr(int32 Err)
    L_if_end_56:
        // line 930
        ldloc _F
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldflda valuetype T_bstring80 T_record_3::Bstr
        call int32 Getbval(valuetype T_bstring80& Str)
        stfld int32 @exec_stat_expr_sexpr_term_factor::i
        // line 931
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldc.i4 0
        stfld int32 T_record_3::Typ
        // line 932
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldloc _F
        ldfld int32 @exec_stat_expr_sexpr_term_factor::i
        stfld int32 T_record_3::Int
        br L_if_end_53
    L_else_52:
        // line 934
        ldc.i4 27
        call bool Chknxt(uint8 c)
        brfalse L_else_57
        // line 936
        ldc.i4 40 // '('
        call bool Chknxt(uint8 c)
        ldc.i4.0
        ceq
        brfalse L_if_end_59
        // line 936
        ldc.i4 20
        call void Prterr(int32 Err)
    L_if_end_59:
        // line 937
        ldloc _F
        ldfld class @exec_stat_expr_sexpr_term @exec_stat_expr_sexpr_term_factor::_slink
        ldfld class @exec_stat_expr_sexpr @exec_stat_expr_sexpr_term::_slink
        ldfld class @exec_stat_expr @exec_stat_expr_sexpr::_slink
        ldfld class @exec_stat @exec_stat_expr::_slink
        call instance void @exec_stat::Expr()
        // line 938
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_60
        // line 938
        ldc.i4 9
        call void Prterr(int32 Err)
    L_if_end_60:
        // line 939
        call void Skpspc()
        // line 940
        ldc.i4 41 // ')'
        call bool Chknxt(uint8 c)
        ldc.i4.0
        ceq
        brfalse L_if_end_61
        // line 940
        ldc.i4 13
        call void Prterr(int32 Err)
    L_if_end_61:
        // line 941
        ldloc _F
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        stfld int32 @exec_stat_expr_sexpr_term_factor::i
        // line 942
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldc.i4 1
        stfld int32 T_record_3::Typ
        // line 943
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldflda valuetype T_bstring80 T_record_3::Bstr
        ldloc _F
        ldfld int32 @exec_stat_expr_sexpr_term_factor::i
        call void Putbval(valuetype T_bstring80& Str, int32 v)
        br L_if_end_58
    L_else_57:
        // line 945
        ldc.i4 16
        call void Prterr(int32 Err)
    L_if_end_58:
    L_if_end_53:
    L_if_end_47:
    L_if_end_28:
    L_if_end_21:
    L_if_end_18:
    L_if_end_11:
    L_if_end_8:
    L_if_end_5:
    L_if_end_2:
    
    L_Epilogue:
        ret
    }
}


// line 798
//================================================================================
// scope: exec_stat_expr_sexpr (level : 5)

.class @exec_stat_expr_sexpr
{
    // slink
    .field public class @exec_stat_expr _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 802

    .method public
    void Term()
    {
        .maxstack 32
    
        .locals init(
            class @exec_stat_expr_sexpr_term _F,
            int32 $tmpSwitchValue1,
            valuetype T_set_7 $tmpSetLiteral2)
        
        newobj instance void @exec_stat_expr_sexpr_term::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @exec_stat_expr_sexpr @exec_stat_expr_sexpr_term::_slink
    
        ldloca $tmpSetLiteral2
        ldc.i4 20
        call instance void T_set_7::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 21
        call instance void T_set_7::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 22
        call instance void T_set_7::addValue(int32)
    
    L_Entry:
        // line 951
        ldloc _F
        call instance void @exec_stat_expr_sexpr_term::Factor()
        // line 952
        call void Skpspc()
        // line 953
        br L_while_test_2
    L_while_1:
        // line 955
        call uint8 Getchr()
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 20
        bne.un L_check_case_4
        // line 959
        ldloc _F
        call instance void @exec_stat_expr_sexpr_term::Factor()
        // line 960
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        dup
        brtrue L_OR_shortcut_5
        pop
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
    L_OR_shortcut_5:
        brfalse L_if_end_6
        // line 961
        ldc.i4 12
        call void Prterr(int32 Err)
    L_if_end_6:
        // line 962
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        mul
        stfld int32 T_record_3::Int
        // line 963
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        br L_case_end_3
    L_check_case_4:
        ldloc $tmpSwitchValue1
        ldc.i4 21
        bne.un L_check_case_7
        // line 969
        ldloc _F
        call instance void @exec_stat_expr_sexpr_term::Factor()
        // line 970
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        dup
        brtrue L_OR_shortcut_8
        pop
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
    L_OR_shortcut_8:
        brfalse L_if_end_9
        // line 971
        ldc.i4 12
        call void Prterr(int32 Err)
    L_if_end_9:
        // line 972
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        div
        stfld int32 T_record_3::Int
        // line 973
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        br L_case_end_3
    L_check_case_7:
        ldloc $tmpSwitchValue1
        ldc.i4 22
        bne.un L_case_end_3
        // line 979
        ldloc _F
        call instance void @exec_stat_expr_sexpr_term::Factor()
        // line 980
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        dup
        brtrue L_OR_shortcut_10
        pop
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
    L_OR_shortcut_10:
        brfalse L_if_end_11
        // line 981
        ldc.i4 12
        call void Prterr(int32 Err)
    L_if_end_11:
        // line 982
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
        stfld int32 T_record_3::Int
        // line 984
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
    L_case_end_3:
        // line 989
        call void Skpspc()
    L_while_test_2:
        ldloc $tmpSetLiteral2
        call uint8 Chkchr()
        call bool _SetContains(valuetype T_set_7 s, int32 val)
        brtrue L_while_1
    
    L_Epilogue:
        ret
    }
}


// line 794
//================================================================================
// scope: exec_stat_expr (level : 4)

.class @exec_stat_expr
{
    // slink
    .field public class @exec_stat _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 798

    .method public
    void Sexpr()
    {
        .maxstack 32
    
        .locals init(
            class @exec_stat_expr_sexpr _F,
            int32 $tmpSwitchValue1,
            valuetype T_set_7 $tmpSetLiteral2)
        
        newobj instance void @exec_stat_expr_sexpr::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @exec_stat_expr @exec_stat_expr_sexpr::_slink
    
        ldloca $tmpSetLiteral2
        ldc.i4 18
        call instance void T_set_7::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 19
        call instance void T_set_7::addValue(int32)
    
    L_Entry:
        // line 997
        ldloc _F
        call instance void @exec_stat_expr_sexpr::Term()
        // line 998
        call void Skpspc()
        // line 999
        br L_while_test_2
    L_while_1:
        // line 1001
        call uint8 Getchr()
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 18
        bne.un L_check_case_4
        // line 1005
        ldloc _F
        call instance void @exec_stat_expr_sexpr::Term()
        // line 1006
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 1
        ceq
        brfalse L_else_5
        // line 1008
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 1
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_7
        // line 1008
        ldc.i4 4
        call void Prterr(int32 Err)
    L_if_end_7:
        // line 1009
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldflda valuetype T_bstring80 T_record_3::Bstr
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldflda valuetype T_bstring80 T_record_3::Bstr
        call void Cat(valuetype T_bstring80& Bstra, valuetype T_bstring80& Bstrb)
        // line 1010
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        br L_if_end_6
    L_else_5:
        // line 1014
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_8
        // line 1014
        ldc.i4 4
        call void Prterr(int32 Err)
    L_if_end_8:
        // line 1015
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        add
        stfld int32 T_record_3::Int
        // line 1017
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        /* nop */
    L_if_end_6:
        br L_case_end_3
    L_check_case_4:
        ldloc $tmpSwitchValue1
        ldc.i4 19
        bne.un L_case_end_3
        // line 1025
        ldloc _F
        call instance void @exec_stat_expr_sexpr::Term()
        // line 1026
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        dup
        brtrue L_OR_shortcut_9
        pop
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
    L_OR_shortcut_9:
        brfalse L_if_end_10
        // line 1027
        ldc.i4 12
        call void Prterr(int32 Err)
    L_if_end_10:
        // line 1028
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        sub
        stfld int32 T_record_3::Int
        // line 1029
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
    L_case_end_3:
        // line 1034
        call void Skpspc()
    L_while_test_2:
        ldloc $tmpSetLiteral2
        call uint8 Chkchr()
        call bool _SetContains(valuetype T_set_7 s, int32 val)
        brtrue L_while_1
    
    L_Epilogue:
        ret
    }
}


// line 1105
//================================================================================
// scope: exec_stat_let (level : 4)

.class @exec_stat_let
{
    // slink
    .field public class @exec_stat _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 785
//================================================================================
// scope: exec_stat (level : 3)

.class @exec_stat
{
    // slink
    .field public class @exec _slink

    // local variables
    .field public bool b
    .field public uint8 c
    .field public valuetype T_string80 s
    .field public int32 x
    .field public int32 y

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 794

    .method public
    void Expr()
    {
        .maxstack 32
    
        .locals init(
            class @exec_stat_expr _F,
            int32 $tmpSwitchValue1,
            valuetype T_set_7 $tmpSetLiteral2)
        
        newobj instance void @exec_stat_expr::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @exec_stat @exec_stat_expr::_slink
    
        ldloca $tmpSetLiteral2
        ldc.i4 14
        call instance void T_set_7::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 15
        call instance void T_set_7::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 16
        call instance void T_set_7::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 17
        call instance void T_set_7::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 12
        call instance void T_set_7::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 13
        call instance void T_set_7::addValue(int32)
    
    L_Entry:
        // line 1042
        ldloc _F
        call instance void @exec_stat_expr::Sexpr()
        // line 1043
        call void Skpspc()
        // line 1044
        br L_while_test_2
    L_while_1:
        // line 1046
        call uint8 Getchr()
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 14
        bne.un L_check_case_4
        // line 1050
        ldloc _F
        call instance void @exec_stat_expr::Sexpr()
        // line 1051
        call bool Chkequ()
        brfalse L_else_5
        // line 1051
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        // line 1051
        call void Settrue()
        br L_if_end_6
    L_else_5:
        // line 1052
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        // line 1052
        call void Setfalse()
    L_if_end_6:
        br L_case_end_3
    L_check_case_4:
        ldloc $tmpSwitchValue1
        ldc.i4 15
        bne.un L_check_case_7
        // line 1058
        ldloc _F
        call instance void @exec_stat_expr::Sexpr()
        // line 1059
        call bool Chkequ()
        brfalse L_else_8
        // line 1059
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        // line 1059
        call void Setfalse()
        br L_if_end_9
    L_else_8:
        // line 1060
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        // line 1060
        call void Settrue()
    L_if_end_9:
        br L_case_end_3
    L_check_case_7:
        ldloc $tmpSwitchValue1
        ldc.i4 16
        bne.un L_check_case_10
        // line 1066
        ldloc _F
        call instance void @exec_stat_expr::Sexpr()
        // line 1067
        call bool Chkltn()
        brfalse L_else_11
        // line 1067
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        // line 1067
        call void Settrue()
        br L_if_end_12
    L_else_11:
        // line 1068
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        // line 1068
        call void Setfalse()
    L_if_end_12:
        br L_case_end_3
    L_check_case_10:
        ldloc $tmpSwitchValue1
        ldc.i4 17
        bne.un L_check_case_13
        // line 1074
        ldloc _F
        call instance void @exec_stat_expr::Sexpr()
        // line 1075
        call bool Chkgtn()
        brfalse L_else_14
        // line 1075
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        // line 1075
        call void Settrue()
        br L_if_end_15
    L_else_14:
        // line 1076
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        // line 1076
        call void Setfalse()
    L_if_end_15:
        br L_case_end_3
    L_check_case_13:
        ldloc $tmpSwitchValue1
        ldc.i4 12
        bne.un L_check_case_16
        // line 1082
        ldloc _F
        call instance void @exec_stat_expr::Sexpr()
        // line 1083
        call bool Chkgtn()
        brfalse L_else_17
        // line 1083
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        // line 1083
        call void Setfalse()
        br L_if_end_18
    L_else_17:
        // line 1084
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        // line 1084
        call void Settrue()
    L_if_end_18:
        br L_case_end_3
    L_check_case_16:
        ldloc $tmpSwitchValue1
        ldc.i4 13
        bne.un L_case_end_3
        // line 1090
        ldloc _F
        call instance void @exec_stat_expr::Sexpr()
        // line 1091
        call bool Chkltn()
        brfalse L_else_19
        // line 1091
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        // line 1091
        call void Setfalse()
        br L_if_end_20
    L_else_19:
        // line 1092
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        // line 1092
        call void Settrue()
    L_if_end_20:
    L_case_end_3:
        // line 1097
        call void Skpspc()
    L_while_test_2:
        ldloc $tmpSetLiteral2
        call uint8 Chkchr()
        call bool _SetContains(valuetype T_set_7 s, int32 val)
        brtrue L_while_1
    
    L_Epilogue:
        ret
    }

// line 1105

    .method public
    void Let()
    {
        .maxstack 32
    
        .locals init(class @exec_stat_let _F)
        
        newobj instance void @exec_stat_let::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @exec_stat @exec_stat_let::_slink
    
    L_Entry:
        // line 1109
        call void Skpspc()
        // line 1110
        ldloc _F
        ldfld class @exec_stat @exec_stat_let::_slink
        call uint8 Getvar()
        stfld uint8 @exec_stat::c
        // line 1111
        ldc.i4 36 // '$'
        call bool Chknxt(uint8 c)
        brfalse L_else_1
        // line 1113
        call void Skpspc()
        // line 1114
        ldc.i4 14
        call bool Chknxt(uint8 c)
        ldc.i4.0
        ceq
        brfalse L_if_end_3
        // line 1115
        ldc.i4 3
        call void Prterr(int32 Err)
    L_if_end_3:
        // line 1116
        ldloc _F
        ldfld class @exec_stat @exec_stat_let::_slink
        call instance void @exec_stat::Expr()
        // line 1117
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 1
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_4
        // line 1118
        ldc.i4 4
        call void Prterr(int32 Err)
    L_if_end_4:
        // line 1119
        ldsflda valuetype T_array_5 _G::Strs
        ldloc _F
        ldfld class @exec_stat @exec_stat_let::_slink
        ldfld uint8 @exec_stat::c
        call instance valuetype T_bstring80& T_array_5::ldadr(int32)
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld valuetype T_bstring80 T_record_3::Bstr
        stobj valuetype T_bstring80
        // line 1120
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        br L_if_end_2
    L_else_1:
        // line 1124
        call void Skpspc()
        // line 1125
        ldc.i4 14
        call bool Chknxt(uint8 c)
        ldc.i4.0
        ceq
        brfalse L_if_end_5
        // line 1126
        ldc.i4 3
        call void Prterr(int32 Err)
    L_if_end_5:
        // line 1127
        ldloc _F
        ldfld class @exec_stat @exec_stat_let::_slink
        call instance void @exec_stat::Expr()
        // line 1128
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_6
        // line 1129
        ldc.i4 4
        call void Prterr(int32 Err)
    L_if_end_6:
        // line 1130
        ldsflda valuetype T_array_6 _G::Ints
        ldloc _F
        ldfld class @exec_stat @exec_stat_let::_slink
        ldfld uint8 @exec_stat::c
        call instance int32& T_array_6::ldadr(int32)
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        stobj int32
        // line 1131
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
    L_if_end_2:
    
    L_Epilogue:
        ret
    }
}


// line 777
//================================================================================
// scope: exec (level : 2)

.class @exec
{
    // local variables
    .field public uint8 c

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

// line 785

    .method public
    void Stat()
    {
        .maxstack 32
    
        .locals init(
            class @exec_stat _F,
            int32 $tmpSwitchValue1,
            int32 $tmpEndValue2,
            int32 $tmpIndex3,
            int32 $tmpIndex4)
        
        newobj instance void @exec_stat::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @exec @exec_stat::_slink
    
    L_Entry:
        // line 1139
        call void Skpspc()
        // line 1140
        call uint8 Chkchr()
        ldc.i4 32 // ' '
        clt
        brfalse L_else_1
        // line 1142
        call uint8 Chkchr()
        ldc.i4 11
        cgt
        brfalse L_if_end_3
        // line 1142
        ldc.i4 1
        call void Prterr(int32 Err)
    L_if_end_3:
        // line 1143
        call uint8 Getchr()
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 1
        bne.un L_check_case_5
        // line 1147
        call void Skpspc()
        // line 1148
        ldloc _F
        call uint8 Getvar()
        stfld uint8 @exec_stat::c
        // line 1149
        ldc.i4 36 // '$'
        call bool Chknxt(uint8 c)
        brfalse L_else_6
        // line 1149
        ldsflda valuetype T_array_5 _G::Strs
        ldloc _F
        ldfld uint8 @exec_stat::c
        call instance valuetype T_bstring80& T_array_5::ldadr(int32)
        call void Inpbstr(valuetype T_bstring80& Bstr)
        br L_if_end_7
    L_else_6:
        // line 1152
        ldloc _F
        ldflda valuetype T_string80 @exec_stat::s
        call void Inpstr(valuetype T_string80& Str)
        // line 1153
        ldsflda valuetype T_array_6 _G::Ints
        ldloc _F
        ldfld uint8 @exec_stat::c
        call instance int32& T_array_6::ldadr(int32)
        ldloc _F
        ldflda valuetype T_string80 @exec_stat::s
        call int32 Getval(valuetype T_string80& Str)
        stobj int32
    L_if_end_7:
        br L_case_end_4
    L_check_case_5:
        ldloc $tmpSwitchValue1
        ldc.i4 2
        bne.un L_check_case_8
        // line 1161
    L_repeat_9:
        // line 1163
        ldloc _F
        call instance void @exec_stat::Expr()
        // line 1164
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 1
        ceq
        brfalse L_else_10
        // line 1164
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldflda valuetype T_bstring80 T_record_3::Bstr
        call void Prtbstr(valuetype T_bstring80& Bstr)
        br L_if_end_11
    L_else_10:
        // line 1165
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        call instance void [lpcRuntime]LPC.File::Write(int32)
        pop
    L_if_end_11:
        // line 1166
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        // line 1167
        call void Skpspc()
        ldc.i4 44 // ','
        call bool Chknxt(uint8 c)
        ldc.i4.0
        ceq
        brfalse L_repeat_9
        // line 1170
        ldc.i4 59 // ';'
        call bool Chknxt(uint8 c)
        ldc.i4.0
        ceq
        brfalse L_if_end_12
        // line 1170
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
    L_if_end_12:
        br L_case_end_4
    L_check_case_8:
        ldloc $tmpSwitchValue1
        ldc.i4 3
        bne.un L_check_case_13
        // line 1176
        call int32 Getint()
        call int32 Schlab(int32 Lab)
        stsfld int32 _G::Prgmc
        // line 1177
        ldc.i4 2
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        br L_case_end_4
    L_check_case_13:
        ldloc $tmpSwitchValue1
        ldc.i4 4
        bne.un L_check_case_14
        // line 1183
        ldloc _F
        call instance void @exec_stat::Expr()
        // line 1184
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Typ
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_15
        // line 1185
        ldc.i4 2
        call void Prterr(int32 Err)
    L_if_end_15:
        // line 1186
        ldsflda valuetype T_array_4 _G::Temp
        ldsfld int32 _G::Top
        call instance valuetype T_record_3& T_array_4::ldadr(int32)
        ldfld int32 T_record_3::Int
        ldc.i4 0
        ceq
        brfalse L_if_end_16
        // line 1188
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        // line 1190
        ldsfld int32 _G::Prgmc
        ldc.i4 0
        cgt
        brfalse L_if_end_17
        // line 1190
        ldsfld int32 _G::Prgmc
        ldc.i4 1
        add
        stsfld int32 _G::Prgmc
    L_if_end_17:
        // line 1191
        ldc.i4 2
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
    L_if_end_16:
        // line 1194
        ldsfld int32 _G::Top
        ldc.i4 1
        sub
        stsfld int32 _G::Top
        // line 1195
        ldloc _F
        ldc.i4 26
        call bool Chknxt(uint8 c)
        stfld bool @exec_stat::b
        // line 1196
        ldloc _F
        ldfld class @exec @exec_stat::_slink
        call instance void @exec::Stat()
        br L_case_end_4
    L_check_case_14:
        ldloc $tmpSwitchValue1
        ldc.i4 5
        bne.un L_check_case_18
        // line 1202
        ldsfld int32 _G::Prgmc
        ldc.i4 0
        cgt
        brfalse L_if_end_19
        // line 1202
        ldsfld int32 _G::Prgmc
        ldc.i4 1
        add
        stsfld int32 _G::Prgmc
    L_if_end_19:
        // line 1203
        ldc.i4 2
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        br L_case_end_4
    L_check_case_18:
        ldloc $tmpSwitchValue1
        ldc.i4 6
        bne.un L_check_case_20
        // line 1207
        ldc.i4 1
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        br L_case_end_4
    L_check_case_20:
        ldloc $tmpSwitchValue1
        ldc.i4 7
        bne.un L_check_case_21
        // line 1209
        call void Clrvar()
        // line 1209
        ldc.i4 1
        stsfld int32 _G::Prgmc
        // line 1209
        ldc.i4 2
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        br L_case_end_4
    L_check_case_21:
        ldloc $tmpSwitchValue1
        ldc.i4 8
        bne.un L_check_case_22
        // line 1213
        ldloc _F
        ldc.i4 1
        stfld int32 @exec_stat::x
        // line 1214
        ldloc _F
        ldc.i4 100
        stfld int32 @exec_stat::y
        // line 1215
        call bool Chksend()
        ldc.i4.0
        ceq
        brfalse L_if_end_23
        // line 1217
        ldloc _F
        call int32 Getint()
        call int32 Schlab(int32 Lab)
        stfld int32 @exec_stat::x
        // line 1218
        call void Skpspc()
        // line 1220
        ldc.i4 44 // ','
        call bool Chknxt(uint8 c)
        brfalse L_if_end_24
        // line 1220
        ldloc _F
        call int32 Getint()
        call int32 Schlab(int32 Lab)
        stfld int32 @exec_stat::y
    L_if_end_24:
    L_if_end_23:
        // line 1223
        ldloc _F
        ldfld int32 @exec_stat::y
        stloc $tmpEndValue2
        ldloc _F
        ldfld int32 @exec_stat::x
        dup
        ldloc $tmpEndValue2
        bgt L_for_end_26
        stloc $tmpIndex3
        ldloc _F
        ldloc $tmpIndex3
        stfld int32 @exec_stat::x
    L_for_loop_25:
        // line 1224
        ldsflda valuetype T_array_2 _G::Prgm
        ldloc _F
        ldfld int32 @exec_stat::x
        call instance valuetype T_string80& T_array_2::ldadr(int32)
        call bool Null(valuetype T_string80& Str)
        ldc.i4.0
        ceq
        brfalse L_if_end_27
        // line 1225
        ldsflda valuetype T_array_2 _G::Prgm
        ldloc _F
        ldfld int32 @exec_stat::x
        call instance valuetype T_string80& T_array_2::ldadr(int32)
        call void Prtlin(valuetype T_string80& Str)
    L_if_end_27:
        ldloc _F
        ldfld int32 @exec_stat::x
        dup
        ldloc $tmpEndValue2
        beq L_for_end_26
        ldc.i4.1
        add
        stloc $tmpIndex4
        ldloc _F
        ldloc $tmpIndex4
        stfld int32 @exec_stat::x
        br L_for_loop_25
    L_for_end_26:
        pop
        br L_case_end_4
    L_check_case_22:
        ldloc $tmpSwitchValue1
        ldc.i4 9
        bne.un L_check_case_28
        // line 1229
        call void Clear()
        // line 1229
        ldc.i4 1
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        br L_case_end_4
    L_check_case_28:
        ldloc $tmpSwitchValue1
        ldc.i4 10
        bne.un L_check_case_29
        // line 1231
        ldloc _F
        call instance void @exec_stat::Let()
        br L_case_end_4
    L_check_case_29:
        ldloc $tmpSwitchValue1
        ldc.i4 11
        bne.un L_case_end_4
        // line 1233
        ldc.i4 3
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
    L_case_end_4:
        br L_if_end_2
    L_else_1:
        // line 1237
        ldloc _F
        call instance void @exec_stat::Let()
    L_if_end_2:
    
    L_Epilogue:
        ret
    }
}


// line 80
//================================================================================
// scope: program scope (level : 1)

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File Input
    .field public static valuetype T_array_6 Ints
    .field public static valuetype T_array_1 Keywd
    .field public static int32 Linec
    .field public static valuetype [lpcRuntime]LPC.File Output
    .field public static valuetype T_array_2 Prgm
    .field public static int32 Prgmc
    .field public static valuetype T_array_5 Strs
    .field public static valuetype T_array_4 Temp
    .field public static int32 Top
}

// line 128

.method static
void Prtlin(valuetype T_string80& Str)
{
    .maxstack 32

    .locals init(class @prtlin _F,
        valuetype T_string80& pinned $Str)
    
    newobj instance void @prtlin::.ctor()
    stloc _F
    
    ldarg Str
    stloc $Str
    
    ldloc _F
    ldarg Str
    stfld valuetype T_string80* @prtlin::Str

L_Entry:
    // line 148
    ldloc _F
    ldc.i4 80
    stfld int32 @prtlin::j
    // line 149
    br L_while_test_2
L_while_1:
    // line 149
    ldloc _F
    ldloc _F
    ldfld int32 @prtlin::j
    ldc.i4 1
    sub
    stfld int32 @prtlin::j
L_while_test_2:
    ldloc _F
    ldfld valuetype T_string80* @prtlin::Str
    ldloc _F
    ldfld int32 @prtlin::j
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    ldc.i4 32 // ' '
    ceq
    dup
    brfalse L_AND_shortcut_3
    pop
    ldloc _F
    ldfld int32 @prtlin::j
    ldc.i4 0
    cgt
L_AND_shortcut_3:
    brtrue L_while_1
    // line 150
    ldloc _F
    ldloc _F
    ldfld int32 @prtlin::j
    ldc.i4 1
    add
    stfld int32 @prtlin::j
    // line 151
    ldloc _F
    ldc.i4 1
    stfld int32 @prtlin::i
    // line 152
    br L_while_test_5
L_while_4:
    // line 154
    ldloc _F
    ldfld valuetype T_string80* @prtlin::Str
    ldloc _F
    ldfld int32 @prtlin::i
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    ldc.i4 32 // ' '
    clt
    brfalse L_else_6
    // line 154
    ldloc _F
    ldsflda valuetype T_array_1 _G::Keywd
    ldloc _F
    ldfld valuetype T_string80* @prtlin::Str
    ldloc _F
    ldfld int32 @prtlin::i
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    call instance void @prtlin::Prtkey(valuetype T_string10& Str)
    br L_if_end_7
L_else_6:
    // line 155
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld valuetype T_string80* @prtlin::Str
    ldloc _F
    ldfld int32 @prtlin::i
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
L_if_end_7:
    // line 156
    ldloc _F
    ldloc _F
    ldfld int32 @prtlin::i
    ldc.i4 1
    add
    stfld int32 @prtlin::i
L_while_test_5:
    ldloc _F
    ldfld int32 @prtlin::i
    ldloc _F
    ldfld int32 @prtlin::j
    clt
    brtrue L_while_4
    // line 159
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()

L_Epilogue:
    ret
}

// line 165

.method static
void Prterr(int32 Err)
{
    .maxstack 32

    .locals init(
        class @prterr _F,
        int32 $tmpSwitchValue1)
    
    newobj instance void @prterr::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Err
    stfld int32 @prterr::Err

L_Entry:
    // line 169
    ldsfld int32 _G::Prgmc
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_1
    // line 169
    ldsflda valuetype T_array_2 _G::Prgm
    ldsfld int32 _G::Prgmc
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    call void Prtlin(valuetype T_string80& Str)
L_if_end_1:
    // line 170
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "*** "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 171
    ldloc _F
    ldfld int32 @prterr::Err
    stloc $tmpSwitchValue1
    ldloc $tmpSwitchValue1
    ldc.i4 0
    bne.un L_check_case_3
    // line 173
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Interpreter error"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_3:
    ldloc $tmpSwitchValue1
    ldc.i4 1
    bne.un L_check_case_4
    // line 174
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Statement expected"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_4:
    ldloc $tmpSwitchValue1
    ldc.i4 2
    bne.un L_check_case_5
    // line 175
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Expression must be integer"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_5:
    ldloc $tmpSwitchValue1
    ldc.i4 3
    bne.un L_check_case_6
    // line 176
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "\"=\" expected"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_6:
    ldloc $tmpSwitchValue1
    ldc.i4 4
    bne.un L_check_case_7
    // line 177
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Operands not of same type"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_7:
    ldloc $tmpSwitchValue1
    ldc.i4 5
    bne.un L_check_case_8
    // line 178
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Program buffer full"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_8:
    ldloc $tmpSwitchValue1
    ldc.i4 6
    bne.un L_check_case_9
    // line 179
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Input overflow"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_9:
    ldloc $tmpSwitchValue1
    ldc.i4 7
    bne.un L_check_case_10
    // line 180
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Variable expected"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_10:
    ldloc $tmpSwitchValue1
    ldc.i4 8
    bne.un L_check_case_11
    // line 181
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Statement label not found"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_11:
    ldloc $tmpSwitchValue1
    ldc.i4 9
    bne.un L_check_case_12
    // line 182
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Integer expected"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_12:
    ldloc $tmpSwitchValue1
    ldc.i4 10
    bne.un L_check_case_13
    // line 183
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Conversion error"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_13:
    ldloc $tmpSwitchValue1
    ldc.i4 11
    bne.un L_check_case_14
    // line 184
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Line number too large"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_14:
    ldloc $tmpSwitchValue1
    ldc.i4 12
    bne.un L_check_case_15
    // line 185
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Operand(s) of wrong type"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_15:
    ldloc $tmpSwitchValue1
    ldc.i4 13
    bne.un L_check_case_16
    // line 186
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "\")\" expected"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_16:
    ldloc $tmpSwitchValue1
    ldc.i4 14
    bne.un L_check_case_17
    // line 187
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Expression too complex"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_17:
    ldloc $tmpSwitchValue1
    ldc.i4 15
    bne.un L_check_case_18
    // line 188
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Missing quote"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_18:
    ldloc $tmpSwitchValue1
    ldc.i4 16
    bne.un L_check_case_19
    // line 189
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Invalid factor"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_19:
    ldloc $tmpSwitchValue1
    ldc.i4 17
    bne.un L_check_case_20
    // line 190
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Line number too large"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_20:
    ldloc $tmpSwitchValue1
    ldc.i4 18
    bne.un L_check_case_21
    // line 191
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "String overflow"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_21:
    ldloc $tmpSwitchValue1
    ldc.i4 19
    bne.un L_check_case_22
    // line 192
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "End of line expected"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_22:
    ldloc $tmpSwitchValue1
    ldc.i4 20
    bne.un L_check_case_23
    // line 193
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "\"(\" expected"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_23:
    ldloc $tmpSwitchValue1
    ldc.i4 21
    bne.un L_check_case_24
    // line 194
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "\",\" expected"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_24:
    ldloc $tmpSwitchValue1
    ldc.i4 22
    bne.un L_check_case_25
    // line 195
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "String expected"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_2
L_check_case_25:
    ldloc $tmpSwitchValue1
    ldc.i4 23
    bne.un L_case_end_2
    // line 196
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "String indexing error"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_case_end_2:
    // line 199
    ldc.i4 1
    newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
    throw

L_Epilogue:
    ret
}

// line 205

.method static
uint8 Chkchr()
{
    .maxstack 32

    .locals init(class @chkchr _F)
    
    newobj instance void @chkchr::.ctor()
    stloc _F

L_Entry:
    // line 211
    ldsfld int32 _G::Linec
    ldc.i4 80
    cgt
    ldc.i4.0
    ceq
    brfalse L_else_1
    // line 211
    ldloc _F
    ldsflda valuetype T_array_2 _G::Prgm
    ldsfld int32 _G::Prgmc
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    ldsfld int32 _G::Linec
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    stfld uint8 @chkchr::c
    br L_if_end_2
L_else_1:
    // line 212
    ldloc _F
    ldc.i4 32 // ' '
    stfld uint8 @chkchr::c
L_if_end_2:
    // line 213
    ldloc _F
    ldloc _F
    ldfld uint8 @chkchr::c
    stfld uint8 @chkchr::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld uint8 @chkchr::_fnvalue
    ret
}

// line 219

.method static
bool Chkend()
{
    .maxstack 32

    .locals init(class @chkend _F)
    
    newobj instance void @chkend::.ctor()
    stloc _F

L_Entry:
    // line 223
    ldloc _F
    ldsfld int32 _G::Linec
    ldc.i4 80
    cgt
    stfld bool @chkend::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld bool @chkend::_fnvalue
    ret
}

// line 229

.method static
uint8 Getchr()
{
    .maxstack 32

    .locals init(class @getchr _F)
    
    newobj instance void @getchr::.ctor()
    stloc _F

L_Entry:
    // line 233
    ldloc _F
    call uint8 Chkchr()
    stfld uint8 @getchr::_fnvalue
    // line 234
    call bool Chkend()
    ldc.i4.0
    ceq
    brfalse L_if_end_1
    // line 234
    ldsfld int32 _G::Linec
    ldc.i4 1
    add
    stsfld int32 _G::Linec
L_if_end_1:

L_Epilogue:
    ldloc _F
    ldfld uint8 @getchr::_fnvalue
    ret
}

// line 240

.method static
bool Chknxt(uint8 c)
{
    .maxstack 32

    .locals init(class @chknxt _F)
    
    newobj instance void @chknxt::.ctor()
    stloc _F
    
    ldloc _F
    ldarg c
    stfld uint8 @chknxt::c

L_Entry:
    // line 244
    ldloc _F
    ldloc _F
    ldfld uint8 @chknxt::c
    call uint8 Chkchr()
    ceq
    stfld bool @chknxt::_fnvalue
    // line 245
    ldloc _F
    ldfld uint8 @chknxt::c
    call uint8 Chkchr()
    ceq
    brfalse L_if_end_1
    // line 245
    ldloc _F
    call uint8 Getchr()
    stfld uint8 @chknxt::c
L_if_end_1:

L_Epilogue:
    ldloc _F
    ldfld bool @chknxt::_fnvalue
    ret
}

// line 251

.method static
void Skpspc()
{
    .maxstack 32

    .locals init(class @skpspc _F)
    
    newobj instance void @skpspc::.ctor()
    stloc _F

L_Entry:
    // line 257
    br L_while_test_2
L_while_1:
    // line 257
    ldloc _F
    call uint8 Getchr()
    stfld uint8 @skpspc::c
L_while_test_2:
    call uint8 Chkchr()
    ldc.i4 32 // ' '
    ceq
    dup
    brfalse L_AND_shortcut_3
    pop
    call bool Chkend()
    ldc.i4.0
    ceq
L_AND_shortcut_3:
    brtrue L_while_1
    /* nop */

L_Epilogue:
    ret
}

// line 263

.method static
bool Chksend()
{
    .maxstack 32

    .locals init(class @chksend _F)
    
    newobj instance void @chksend::.ctor()
    stloc _F

L_Entry:
    // line 267
    call void Skpspc()
    // line 268
    ldloc _F
    call bool Chkend()
    dup
    brtrue L_OR_shortcut_1
    pop
    call uint8 Chkchr()
    ldc.i4 58 // ':'
    ceq
L_OR_shortcut_1:
    stfld bool @chksend::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld bool @chksend::_fnvalue
    ret
}

// line 274

.method static
bool Null(valuetype T_string80& Str)
{
    .maxstack 32

    .locals init(
        class @null _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3,
        valuetype T_string80& pinned $Str)
    
    newobj instance void @null::.ctor()
    stloc _F
    
    ldarg Str
    stloc $Str
    
    ldloc _F
    ldarg Str
    stfld valuetype T_string80* @null::Str

L_Entry:
    // line 281
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @null::f
    // line 282
    ldc.i4 80
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @null::i
L_for_loop_1:
    // line 282
    ldloc _F
    ldfld valuetype T_string80* @null::Str
    ldloc _F
    ldfld int32 @null::i
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    ldc.i4 32 // ' '
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_3
    // line 282
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @null::f
L_if_end_3:
    ldloc _F
    ldfld int32 @null::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @null::i
    br L_for_loop_1
L_for_end_2:
    pop
    // line 283
    ldloc _F
    ldloc _F
    ldfld bool @null::f
    stfld bool @null::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld bool @null::_fnvalue
    ret
}

// line 289

.method static
bool Digit(uint8 c)
{
    .maxstack 32

    .locals init(class @digit _F)
    
    newobj instance void @digit::.ctor()
    stloc _F
    
    ldloc _F
    ldarg c
    stfld uint8 @digit::c

L_Entry:
    // line 293
    ldloc _F
    ldloc _F
    ldfld uint8 @digit::c
    ldc.i4 48 // '0'
    clt
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_1
    pop
    ldloc _F
    ldfld uint8 @digit::c
    ldc.i4 57 // '9'
    cgt
    ldc.i4.0
    ceq
L_AND_shortcut_1:
    stfld bool @digit::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld bool @digit::_fnvalue
    ret
}

// line 299

.method static
uint8 Lcase(uint8 c)
{
    .maxstack 32

    .locals init(class @lcase _F)
    
    newobj instance void @lcase::.ctor()
    stloc _F
    
    ldloc _F
    ldarg c
    stfld uint8 @lcase::c

L_Entry:
    // line 303
    ldloc _F
    ldfld uint8 @lcase::c
    ldc.i4 65 // 'A'
    clt
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_1
    pop
    ldloc _F
    ldfld uint8 @lcase::c
    ldc.i4 90 // 'Z'
    cgt
    ldc.i4.0
    ceq
L_AND_shortcut_1:
    brfalse L_if_end_2
    // line 304
    ldloc _F
    ldloc _F
    ldfld uint8 @lcase::c
    ldc.i4 65 // 'A'
    sub
    ldc.i4 97 // 'a'
    add
    stfld uint8 @lcase::c
L_if_end_2:
    // line 305
    ldloc _F
    ldloc _F
    ldfld uint8 @lcase::c
    stfld uint8 @lcase::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld uint8 @lcase::_fnvalue
    ret
}

// line 311

.method static
bool Alpha(uint8 c)
{
    .maxstack 32

    .locals init(class @alpha _F)
    
    newobj instance void @alpha::.ctor()
    stloc _F
    
    ldloc _F
    ldarg c
    stfld uint8 @alpha::c

L_Entry:
    // line 315
    ldloc _F
    ldloc _F
    ldfld uint8 @alpha::c
    call uint8 Lcase(uint8 c)
    ldc.i4 97 // 'a'
    clt
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_1
    pop
    ldloc _F
    ldfld uint8 @alpha::c
    ldc.i4 122 // 'z'
    cgt
    ldc.i4.0
    ceq
L_AND_shortcut_1:
    stfld bool @alpha::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld bool @alpha::_fnvalue
    ret
}

// line 322

.method static
int32 Lint(valuetype T_string80& Str)
{
    .maxstack 32

    .locals init(class @lint _F,
        valuetype T_string80& pinned $Str)
    
    newobj instance void @lint::.ctor()
    stloc _F
    
    ldarg Str
    stloc $Str
    
    ldloc _F
    ldarg Str
    stfld valuetype T_string80* @lint::Str

L_Entry:
    // line 329
    ldloc _F
    ldc.i4 0
    stfld int32 @lint::v
    // line 330
    ldloc _F
    ldc.i4 1
    stfld int32 @lint::i
    // line 331
    br L_while_test_2
L_while_1:
    // line 331
    ldloc _F
    ldloc _F
    ldfld int32 @lint::i
    ldc.i4 1
    add
    stfld int32 @lint::i
L_while_test_2:
    ldloc _F
    ldfld int32 @lint::i
    ldc.i4 80
    clt
    dup
    brfalse L_AND_shortcut_3
    pop
    ldloc _F
    ldfld valuetype T_string80* @lint::Str
    ldloc _F
    ldfld int32 @lint::i
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    ldc.i4 32 // ' '
    ceq
L_AND_shortcut_3:
    brtrue L_while_1
    // line 332
L_repeat_4:
    // line 334
    ldloc _F
    ldfld valuetype T_string80* @lint::Str
    ldloc _F
    ldfld int32 @lint::i
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    call bool Digit(uint8 c)
    brfalse L_else_5
    // line 336
    ldloc _F
    ldloc _F
    ldfld int32 @lint::v
    ldc.i4 10
    mul
    ldloc _F
    ldfld valuetype T_string80* @lint::Str
    ldloc _F
    ldfld int32 @lint::i
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    ldc.i4 48 // '0'
    sub
    add
    stfld int32 @lint::v
    // line 337
    ldloc _F
    ldfld int32 @lint::i
    ldc.i4 80
    ceq
    ldc.i4.0
    ceq
    brfalse L_else_7
    // line 339
    ldloc _F
    ldloc _F
    ldfld int32 @lint::i
    ldc.i4 1
    add
    stfld int32 @lint::i
    // line 340
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @lint::b
    br L_if_end_8
L_else_7:
    // line 342
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @lint::b
L_if_end_8:
    br L_if_end_6
L_else_5:
    // line 344
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @lint::b
L_if_end_6:
    ldloc _F
    ldfld bool @lint::b
    brfalse L_repeat_4
    // line 347
    ldloc _F
    ldloc _F
    ldfld int32 @lint::v
    stfld int32 @lint::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld int32 @lint::_fnvalue
    ret
}

// line 353

.method static
int32 Schlab(int32 Lab)
{
    .maxstack 32

    .locals init(class @schlab _F)
    
    newobj instance void @schlab::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Lab
    stfld int32 @schlab::Lab

L_Entry:
    // line 359
    ldloc _F
    ldc.i4 1
    stfld int32 @schlab::i
    // line 360
    br L_while_test_2
L_while_1:
    // line 360
    ldloc _F
    ldloc _F
    ldfld int32 @schlab::i
    ldc.i4 1
    add
    stfld int32 @schlab::i
L_while_test_2:
    ldloc _F
    ldfld int32 @schlab::Lab
    ldsflda valuetype T_array_2 _G::Prgm
    ldloc _F
    ldfld int32 @schlab::i
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    call int32 Lint(valuetype T_string80& Str)
    ceq
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_3
    pop
    ldloc _F
    ldfld int32 @schlab::i
    ldc.i4 100
    cgt
    ldc.i4.0
    ceq
L_AND_shortcut_3:
    brtrue L_while_1
    // line 361
    ldloc _F
    ldfld int32 @schlab::Lab
    ldsflda valuetype T_array_2 _G::Prgm
    ldloc _F
    ldfld int32 @schlab::i
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    call int32 Lint(valuetype T_string80& Str)
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_4
    // line 361
    ldc.i4 8
    call void Prterr(int32 Err)
L_if_end_4:
    // line 362
    ldloc _F
    ldloc _F
    ldfld int32 @schlab::i
    stfld int32 @schlab::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld int32 @schlab::_fnvalue
    ret
}

// line 368

.method static
void Inpstr(valuetype T_string80& Str)
{
    .maxstack 32

    .locals init(
        class @inpstr _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3,
        valuetype T_string80& pinned $Str)
    
    newobj instance void @inpstr::.ctor()
    stloc _F
    
    ldarg Str
    stloc $Str
    
    ldloc _F
    ldarg Str
    stfld valuetype T_string80* @inpstr::Str

L_Entry:
    // line 374
    ldc.i4 80
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @inpstr::i
L_for_loop_1:
    // line 374
    ldloc _F
    ldfld valuetype T_string80* @inpstr::Str
    ldloc _F
    ldfld int32 @inpstr::i
    call instance uint8& T_string80::ldadr(int32)
    ldc.i4 32 // ' '
    stobj uint8
    ldloc _F
    ldfld int32 @inpstr::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @inpstr::i
    br L_for_loop_1
L_for_end_2:
    pop
    // line 375
    ldloc _F
    ldc.i4 1
    stfld int32 @inpstr::i
    // line 376
    br L_while_test_4
L_while_3:
    // line 378
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    dup
    ldloc _F
    ldfld valuetype T_string80* @inpstr::Str
    ldloc _F
    ldfld int32 @inpstr::i
    call instance uint8& T_string80::ldadr(int32)
    ldc.i4 0
    ldc.i4 255
    call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
    pop
    // line 379
    ldloc _F
    ldloc _F
    ldfld int32 @inpstr::i
    ldc.i4 1
    add
    stfld int32 @inpstr::i
L_while_test_4:
    ldloc _F
    ldfld int32 @inpstr::i
    ldc.i4 80
    cgt
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_5
    pop
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance bool [lpcRuntime]LPC.File::Eoln()
    ldc.i4.0
    ceq
L_AND_shortcut_5:
    brtrue L_while_3
    // line 382
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance void [lpcRuntime]LPC.File::ReadLn()
    // line 383
    ldloc _F
    ldfld int32 @inpstr::i
    ldc.i4 80
    cgt
    brfalse L_if_end_6
    // line 383
    ldc.i4 6
    call void Prterr(int32 Err)
L_if_end_6:

L_Epilogue:
    ret
}

// line 389

.method static
uint8 Getvar()
{
    .maxstack 32

    .locals init(class @getvar _F)
    
    newobj instance void @getvar::.ctor()
    stloc _F

L_Entry:
    // line 393
    call uint8 Chkchr()
    call bool Alpha(uint8 c)
    ldc.i4.0
    ceq
    brfalse L_if_end_1
    // line 393
    ldc.i4 7
    call void Prterr(int32 Err)
L_if_end_1:
    // line 394
    ldloc _F
    call uint8 Getchr()
    call uint8 Lcase(uint8 c)
    stfld uint8 @getvar::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld uint8 @getvar::_fnvalue
    ret
}

// line 400

.method static
void Enter(valuetype T_string80& Str)
{
    .maxstack 32

    .locals init(
        class @enter _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3,
        int32 $tmpEndValue4,
        int32 $tmpIndex5,
        int32 $tmpIndex6,
        int32 $tmpEndValue7,
        int32 $tmpIndex8,
        int32 $tmpIndex9,
        valuetype T_string80& pinned $Str)
    
    newobj instance void @enter::.ctor()
    stloc _F
    
    ldarg Str
    stloc $Str
    
    ldloc _F
    ldarg Str
    stfld valuetype T_string80* @enter::Str

L_Entry:
    // line 407
    ldloc _F
    ldloc _F
    ldfld valuetype T_string80* @enter::Str
    call int32 Lint(valuetype T_string80& Str)
    stfld int32 @enter::Line
    // line 408
    ldloc _F
    ldfld int32 @enter::Line
    ldc.i4 9999
    cgt
    brfalse L_if_end_1
    // line 408
    ldc.i4 17
    call void Prterr(int32 Err)
L_if_end_1:
    // line 409
    ldloc _F
    ldc.i4 1
    stfld int32 @enter::i
    // line 410
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @enter::f
    // line 411
L_repeat_2:
    // line 413
    ldsflda valuetype T_array_2 _G::Prgm
    ldloc _F
    ldfld int32 @enter::i
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    call bool Null(valuetype T_string80& Str)
    brfalse L_else_3
    // line 413
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @enter::f
    br L_if_end_4
L_else_3:
    // line 414
    ldsflda valuetype T_array_2 _G::Prgm
    ldloc _F
    ldfld int32 @enter::i
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    call int32 Lint(valuetype T_string80& Str)
    ldloc _F
    ldfld int32 @enter::Line
    clt
    brfalse L_else_5
    // line 416
    ldloc _F
    ldloc _F
    ldfld int32 @enter::i
    ldc.i4 1
    add
    stfld int32 @enter::i
    // line 417
    ldloc _F
    ldfld int32 @enter::i
    ldc.i4 100
    cgt
    brfalse L_if_end_7
    // line 417
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @enter::f
L_if_end_7:
    br L_if_end_6
L_else_5:
    // line 419
    ldloc _F
    ldc.i4 1 // (true)
    stfld bool @enter::f
L_if_end_6:
L_if_end_4:
    ldloc _F
    ldfld bool @enter::f
    brfalse L_repeat_2
    // line 422
    ldloc _F
    ldfld int32 @enter::i
    ldc.i4 100
    cgt
    brfalse L_if_end_8
    // line 422
    ldc.i4 5
    call void Prterr(int32 Err)
L_if_end_8:
    // line 423
    ldsflda valuetype T_array_2 _G::Prgm
    ldloc _F
    ldfld int32 @enter::i
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    call bool Null(valuetype T_string80& Str)
    brfalse L_else_9
    // line 423
    ldsflda valuetype T_array_2 _G::Prgm
    ldloc _F
    ldfld int32 @enter::i
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    ldloc _F
    ldfld valuetype T_string80* @enter::Str
    ldobj valuetype T_string80
    stobj valuetype T_string80
    br L_if_end_10
L_else_9:
    // line 424
    ldsflda valuetype T_array_2 _G::Prgm
    ldloc _F
    ldfld int32 @enter::i
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    call int32 Lint(valuetype T_string80& Str)
    ldloc _F
    ldfld int32 @enter::Line
    ceq
    brfalse L_else_11
    // line 426
    ldloc _F
    ldc.i4 1
    stfld int32 @enter::j
    // line 427
    br L_while_test_14
L_while_13:
    // line 427
    ldloc _F
    ldloc _F
    ldfld int32 @enter::j
    ldc.i4 1
    add
    stfld int32 @enter::j
L_while_test_14:
    ldloc _F
    ldfld valuetype T_string80* @enter::Str
    ldloc _F
    ldfld int32 @enter::j
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    ldc.i4 32 // ' '
    ceq
    dup
    brfalse L_AND_shortcut_15
    pop
    ldloc _F
    ldfld int32 @enter::j
    ldc.i4 80
    clt
L_AND_shortcut_15:
    brtrue L_while_13
    // line 428
    br L_while_test_17
L_while_16:
    // line 428
    ldloc _F
    ldloc _F
    ldfld int32 @enter::j
    ldc.i4 1
    add
    stfld int32 @enter::j
L_while_test_17:
    ldloc _F
    ldfld valuetype T_string80* @enter::Str
    ldloc _F
    ldfld int32 @enter::j
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    call bool Digit(uint8 c)
    dup
    brfalse L_AND_shortcut_18
    pop
    ldloc _F
    ldfld int32 @enter::j
    ldc.i4 80
    clt
L_AND_shortcut_18:
    brtrue L_while_16
    // line 429
    br L_while_test_20
L_while_19:
    // line 429
    ldloc _F
    ldloc _F
    ldfld int32 @enter::j
    ldc.i4 1
    add
    stfld int32 @enter::j
L_while_test_20:
    ldloc _F
    ldfld valuetype T_string80* @enter::Str
    ldloc _F
    ldfld int32 @enter::j
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    ldc.i4 32 // ' '
    ceq
    dup
    brfalse L_AND_shortcut_21
    pop
    ldloc _F
    ldfld int32 @enter::j
    ldc.i4 80
    clt
L_AND_shortcut_21:
    brtrue L_while_19
    // line 430
    ldloc _F
    ldfld int32 @enter::j
    ldc.i4 80
    ceq
    brfalse L_else_22
    // line 432
    ldc.i4 100
    ldc.i4 1
    sub
    stloc $tmpEndValue1
    ldloc _F
    ldfld int32 @enter::i
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_25
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @enter::k
L_for_loop_24:
    // line 432
    ldsflda valuetype T_array_2 _G::Prgm
    ldloc _F
    ldfld int32 @enter::k
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    ldsflda valuetype T_array_2 _G::Prgm
    ldloc _F
    ldfld int32 @enter::k
    ldc.i4 1
    add
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    ldobj valuetype T_string80
    stobj valuetype T_string80
    ldloc _F
    ldfld int32 @enter::k
    dup
    ldloc $tmpEndValue1
    beq L_for_end_25
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @enter::k
    br L_for_loop_24
L_for_end_25:
    pop
    // line 433
    ldc.i4 80
    stloc $tmpEndValue4
    ldc.i4 1
    dup
    ldloc $tmpEndValue4
    bgt L_for_end_27
    stloc $tmpIndex5
    ldloc _F
    ldloc $tmpIndex5
    stfld int32 @enter::j
L_for_loop_26:
    // line 433
    ldsflda valuetype T_array_2 _G::Prgm
    ldc.i4 100
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    ldloc _F
    ldfld int32 @enter::j
    call instance uint8& T_string80::ldadr(int32)
    ldc.i4 32 // ' '
    stobj uint8
    ldloc _F
    ldfld int32 @enter::j
    dup
    ldloc $tmpEndValue4
    beq L_for_end_27
    ldc.i4.1
    add
    stloc $tmpIndex6
    ldloc _F
    ldloc $tmpIndex6
    stfld int32 @enter::j
    br L_for_loop_26
L_for_end_27:
    pop
    br L_if_end_23
L_else_22:
    // line 435
    ldsflda valuetype T_array_2 _G::Prgm
    ldloc _F
    ldfld int32 @enter::i
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    ldloc _F
    ldfld valuetype T_string80* @enter::Str
    ldobj valuetype T_string80
    stobj valuetype T_string80
L_if_end_23:
    br L_if_end_12
L_else_11:
    // line 437
    ldsflda valuetype T_array_2 _G::Prgm
    ldc.i4 100
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    call bool Null(valuetype T_string80& Str)
    ldc.i4.0
    ceq
    brfalse L_else_28
    // line 437
    ldc.i4 5
    call void Prterr(int32 Err)
    br L_if_end_29
L_else_28:
    // line 440
    ldloc _F
    ldfld int32 @enter::i
    ldc.i4 1
    add
    stloc $tmpEndValue7
    ldc.i4 100
    dup
    ldloc $tmpEndValue7
    blt L_for_end_31
    stloc $tmpIndex8
    ldloc _F
    ldloc $tmpIndex8
    stfld int32 @enter::k
L_for_loop_30:
    // line 440
    ldsflda valuetype T_array_2 _G::Prgm
    ldloc _F
    ldfld int32 @enter::k
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    ldsflda valuetype T_array_2 _G::Prgm
    ldloc _F
    ldfld int32 @enter::k
    ldc.i4 1
    sub
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    ldobj valuetype T_string80
    stobj valuetype T_string80
    ldloc _F
    ldfld int32 @enter::k
    dup
    ldloc $tmpEndValue7
    beq L_for_end_31
    ldc.i4.1
    sub
    stloc $tmpIndex9
    ldloc _F
    ldloc $tmpIndex9
    stfld int32 @enter::k
    br L_for_loop_30
L_for_end_31:
    pop
    // line 441
    ldsflda valuetype T_array_2 _G::Prgm
    ldloc _F
    ldfld int32 @enter::i
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    ldloc _F
    ldfld valuetype T_string80* @enter::Str
    ldobj valuetype T_string80
    stobj valuetype T_string80
L_if_end_29:
L_if_end_12:
L_if_end_10:

L_Epilogue:
    ret
}

// line 449

.method static
void Keycom(valuetype T_string80& Str)
{
    .maxstack 32

    .locals init(
        class @keycom _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3,
        int32 $tmpEndValue4,
        int32 $tmpIndex5,
        int32 $tmpIndex6,
        valuetype T_string80& pinned $Str)
    
    newobj instance void @keycom::.ctor()
    stloc _F
    
    ldarg Str
    stloc $Str
    
    ldloc _F
    ldarg Str
    stfld valuetype T_string80* @keycom::Str

L_Entry:
    // line 488
    ldc.i4 80
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @keycom::I2
L_for_loop_1:
    // line 488
    ldloc _F
    ldflda valuetype T_string80 @keycom::Ts
    ldloc _F
    ldfld int32 @keycom::I2
    call instance uint8& T_string80::ldadr(int32)
    ldc.i4 32 // ' '
    stobj uint8
    ldloc _F
    ldfld int32 @keycom::I2
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @keycom::I2
    br L_for_loop_1
L_for_end_2:
    pop
    // line 489
    ldloc _F
    ldc.i4 1
    stfld int32 @keycom::I1
    // line 490
    ldloc _F
    ldc.i4 1
    stfld int32 @keycom::I2
    // line 491
L_repeat_3:
    // line 493
    ldloc _F
    ldfld valuetype T_string80* @keycom::Str
    ldloc _F
    ldfld int32 @keycom::I1
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    ldc.i4 34 // '"'
    ceq
    brfalse L_else_4
    // line 495
    ldloc _F
    ldflda valuetype T_string80 @keycom::Ts
    ldloc _F
    ldfld int32 @keycom::I2
    call instance uint8& T_string80::ldadr(int32)
    ldc.i4 34 // '"'
    stobj uint8
    // line 496
    ldloc _F
    ldloc _F
    ldfld int32 @keycom::I1
    ldc.i4 1
    add
    stfld int32 @keycom::I1
    // line 497
    ldloc _F
    ldloc _F
    ldfld int32 @keycom::I2
    ldc.i4 1
    add
    stfld int32 @keycom::I2
    // line 498
    ldloc _F
    ldc.i4 32 // ' '
    stfld uint8 @keycom::c
    // line 499
    br L_while_test_7
L_while_6:
    // line 501
    ldloc _F
    ldloc _F
    ldfld valuetype T_string80* @keycom::Str
    ldloc _F
    ldfld int32 @keycom::I1
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    stfld uint8 @keycom::c
    // line 502
    ldloc _F
    ldflda valuetype T_string80 @keycom::Ts
    ldloc _F
    ldfld int32 @keycom::I2
    call instance uint8& T_string80::ldadr(int32)
    ldloc _F
    ldfld valuetype T_string80* @keycom::Str
    ldloc _F
    ldfld int32 @keycom::I1
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    stobj uint8
    // line 503
    ldloc _F
    ldloc _F
    ldfld int32 @keycom::I1
    ldc.i4 1
    add
    stfld int32 @keycom::I1
    // line 504
    ldloc _F
    ldloc _F
    ldfld int32 @keycom::I2
    ldc.i4 1
    add
    stfld int32 @keycom::I2
L_while_test_7:
    ldloc _F
    ldfld int32 @keycom::I1
    ldc.i4 80
    cgt
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_8
    pop
    ldloc _F
    ldfld uint8 @keycom::c
    ldc.i4 34 // '"'
    ceq
    ldc.i4.0
    ceq
L_AND_shortcut_8:
    brtrue L_while_6
    br L_if_end_5
L_else_4:
    // line 508
    ldloc _F
    ldfld valuetype T_string80* @keycom::Str
    ldloc _F
    ldfld int32 @keycom::I1
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    ldc.i4 32 // ' '
    ceq
    brfalse L_else_9
    // line 510
    ldloc _F
    ldflda valuetype T_string80 @keycom::Ts
    ldloc _F
    ldfld int32 @keycom::I2
    call instance uint8& T_string80::ldadr(int32)
    ldloc _F
    ldfld valuetype T_string80* @keycom::Str
    ldloc _F
    ldfld int32 @keycom::I1
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    stobj uint8
    // line 511
    ldloc _F
    ldloc _F
    ldfld int32 @keycom::I1
    ldc.i4 1
    add
    stfld int32 @keycom::I1
    // line 512
    ldloc _F
    ldloc _F
    ldfld int32 @keycom::I2
    ldc.i4 1
    add
    stfld int32 @keycom::I2
    br L_if_end_10
L_else_9:
    // line 516
    ldloc _F
    ldc.i4 1
    stfld int32 @keycom::k
    // line 517
    ldloc _F
    ldc.i4 0 // (false)
    stfld bool @keycom::f
    // line 518
    br L_while_test_12
L_while_11:
    // line 521
    ldloc _F
    ldloc _F
    ldloc _F
    ldfld valuetype T_string80* @keycom::Str
    ldloc _F
    ldflda int32 @keycom::I1
    ldsflda valuetype T_array_1 _G::Keywd
    ldloc _F
    ldfld int32 @keycom::k
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    call instance bool @keycom::Matstr(valuetype T_string80& Stra, int32& i, valuetype T_string10& Strb)
    stfld bool @keycom::f
    // line 522
    ldloc _F
    ldloc _F
    ldfld int32 @keycom::k
    ldc.i4 1
    add
    stfld int32 @keycom::k
L_while_test_12:
    ldloc _F
    ldfld int32 @keycom::k
    ldc.i4 29
    cgt
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_13
    pop
    ldloc _F
    ldfld bool @keycom::f
    ldc.i4.0
    ceq
L_AND_shortcut_13:
    brtrue L_while_11
    // line 525
    ldloc _F
    ldfld bool @keycom::f
    brfalse L_else_14
    // line 525
    ldloc _F
    ldflda valuetype T_string80 @keycom::Ts
    ldloc _F
    ldfld int32 @keycom::I2
    call instance uint8& T_string80::ldadr(int32)
    ldloc _F
    ldfld int32 @keycom::k
    ldc.i4 1
    sub
    stobj uint8
    br L_if_end_15
L_else_14:
    // line 526
    ldloc _F
    ldflda valuetype T_string80 @keycom::Ts
    ldloc _F
    ldfld int32 @keycom::I2
    call instance uint8& T_string80::ldadr(int32)
    ldloc _F
    ldfld valuetype T_string80* @keycom::Str
    ldloc _F
    ldfld int32 @keycom::I1
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    stobj uint8
    // line 526
    ldloc _F
    ldloc _F
    ldfld int32 @keycom::I1
    ldc.i4 1
    add
    stfld int32 @keycom::I1
L_if_end_15:
    // line 527
    ldloc _F
    ldloc _F
    ldfld int32 @keycom::I2
    ldc.i4 1
    add
    stfld int32 @keycom::I2
L_if_end_10:
L_if_end_5:
    ldloc _F
    ldfld int32 @keycom::I1
    ldc.i4 80
    cgt
    brfalse L_repeat_3
    // line 532
    ldc.i4 80
    stloc $tmpEndValue4
    ldc.i4 1
    dup
    ldloc $tmpEndValue4
    bgt L_for_end_17
    stloc $tmpIndex5
    ldloc _F
    ldloc $tmpIndex5
    stfld int32 @keycom::I1
L_for_loop_16:
    // line 532
    ldloc _F
    ldfld valuetype T_string80* @keycom::Str
    ldloc _F
    ldfld int32 @keycom::I1
    call instance uint8& T_string80::ldadr(int32)
    ldloc _F
    ldflda valuetype T_string80 @keycom::Ts
    ldloc _F
    ldfld int32 @keycom::I1
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    stobj uint8
    ldloc _F
    ldfld int32 @keycom::I1
    dup
    ldloc $tmpEndValue4
    beq L_for_end_17
    ldc.i4.1
    add
    stloc $tmpIndex6
    ldloc _F
    ldloc $tmpIndex6
    stfld int32 @keycom::I1
    br L_for_loop_16
L_for_end_17:
    pop

L_Epilogue:
    ret
}

// line 540

.method static
int32 Getint()
{
    .maxstack 32

    .locals init(class @getint _F)
    
    newobj instance void @getint::.ctor()
    stloc _F

L_Entry:
    // line 546
    ldloc _F
    ldc.i4 0
    stfld int32 @getint::v
    // line 547
    call void Skpspc()
    // line 548
    call uint8 Chkchr()
    call bool Digit(uint8 c)
    ldc.i4.0
    ceq
    brfalse L_if_end_1
    // line 548
    ldc.i4 9
    call void Prterr(int32 Err)
L_if_end_1:
    // line 549
L_repeat_2:
    // line 549
    ldloc _F
    ldloc _F
    ldfld int32 @getint::v
    ldc.i4 10
    mul
    call uint8 Getchr()
    ldc.i4 48 // '0'
    sub
    add
    stfld int32 @getint::v
    call uint8 Chkchr()
    call bool Digit(uint8 c)
    ldc.i4.0
    ceq
    brfalse L_repeat_2
    // line 551
    ldloc _F
    ldloc _F
    ldfld int32 @getint::v
    stfld int32 @getint::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld int32 @getint::_fnvalue
    ret
}

// line 557

.method static
int32 Getval(valuetype T_string80& Str)
{
    .maxstack 32

    .locals init(class @getval _F,
        valuetype T_string80& pinned $Str)
    
    newobj instance void @getval::.ctor()
    stloc _F
    
    ldarg Str
    stloc $Str
    
    ldloc _F
    ldarg Str
    stfld valuetype T_string80* @getval::Str

L_Entry:
    // line 563
    ldloc _F
    ldc.i4 1
    stfld int32 @getval::i
    // line 564
    br L_while_test_2
L_while_1:
    // line 564
    ldloc _F
    ldloc _F
    ldfld int32 @getval::i
    ldc.i4 1
    add
    stfld int32 @getval::i
L_while_test_2:
    ldloc _F
    ldfld int32 @getval::i
    ldc.i4 80
    cgt
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_3
    pop
    ldloc _F
    ldfld valuetype T_string80* @getval::Str
    ldloc _F
    ldfld int32 @getval::i
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    ldc.i4 32 // ' '
    ceq
L_AND_shortcut_3:
    brtrue L_while_1
    // line 565
    ldloc _F
    ldfld valuetype T_string80* @getval::Str
    ldloc _F
    ldfld int32 @getval::i
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    call bool Digit(uint8 c)
    ldc.i4.0
    ceq
    brfalse L_if_end_4
    // line 565
    ldc.i4 9
    call void Prterr(int32 Err)
L_if_end_4:
    // line 566
    ldloc _F
    ldloc _F
    ldfld valuetype T_string80* @getval::Str
    call int32 Lint(valuetype T_string80& Str)
    stfld int32 @getval::_fnvalue
    // line 567
    br L_while_test_6
L_while_5:
    // line 567
    ldloc _F
    ldloc _F
    ldfld int32 @getval::i
    ldc.i4 1
    add
    stfld int32 @getval::i
L_while_test_6:
    ldloc _F
    ldfld int32 @getval::i
    ldc.i4 80
    clt
    dup
    brfalse L_AND_shortcut_7
    pop
    ldloc _F
    ldfld valuetype T_string80* @getval::Str
    ldloc _F
    ldfld int32 @getval::i
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    call bool Digit(uint8 c)
L_AND_shortcut_7:
    brtrue L_while_5
    // line 568
    br L_while_test_9
L_while_8:
    // line 568
    ldloc _F
    ldloc _F
    ldfld int32 @getval::i
    ldc.i4 1
    add
    stfld int32 @getval::i
L_while_test_9:
    ldloc _F
    ldfld int32 @getval::i
    ldc.i4 80
    clt
    dup
    brfalse L_AND_shortcut_10
    pop
    ldloc _F
    ldfld valuetype T_string80* @getval::Str
    ldloc _F
    ldfld int32 @getval::i
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    ldc.i4 32 // ' '
    ceq
L_AND_shortcut_10:
    brtrue L_while_8
    // line 569
    ldloc _F
    ldfld int32 @getval::i
    ldc.i4 80
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_11
    // line 569
    ldc.i4 10
    call void Prterr(int32 Err)
L_if_end_11:

L_Epilogue:
    ldloc _F
    ldfld int32 @getval::_fnvalue
    ret
}

// line 575

.method static
int32 Getbval(valuetype T_bstring80& Str)
{
    .maxstack 32

    .locals init(class @getbval _F,
        valuetype T_bstring80& pinned $Str)
    
    newobj instance void @getbval::.ctor()
    stloc _F
    
    ldarg Str
    stloc $Str
    
    ldloc _F
    ldarg Str
    stfld valuetype T_bstring80* @getbval::Str

L_Entry:
    // line 581
    ldloc _F
    ldc.i4 1
    stfld int32 @getbval::i
    // line 582
    br L_while_test_2
L_while_1:
    // line 582
    ldloc _F
    ldloc _F
    ldfld int32 @getbval::i
    ldc.i4 1
    add
    stfld int32 @getbval::i
L_while_test_2:
    ldloc _F
    ldfld int32 @getbval::i
    ldloc _F
    ldfld valuetype T_bstring80* @getbval::Str
    ldfld int32 T_bstring80::Len
    cgt
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_3
    pop
    ldloc _F
    ldfld valuetype T_bstring80* @getbval::Str
    ldflda valuetype T_string80 T_bstring80::Str
    ldloc _F
    ldfld int32 @getbval::i
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    ldc.i4 32 // ' '
    ceq
L_AND_shortcut_3:
    brtrue L_while_1
    // line 583
    ldloc _F
    ldfld valuetype T_bstring80* @getbval::Str
    ldflda valuetype T_string80 T_bstring80::Str
    ldloc _F
    ldfld int32 @getbval::i
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    call bool Digit(uint8 c)
    ldc.i4.0
    ceq
    brfalse L_if_end_4
    // line 583
    ldc.i4 9
    call void Prterr(int32 Err)
L_if_end_4:
    // line 584
    ldloc _F
    ldc.i4 0
    stfld int32 @getbval::v
    // line 585
    br L_while_test_6
L_while_5:
    // line 587
    ldloc _F
    ldloc _F
    ldfld int32 @getbval::v
    ldc.i4 10
    mul
    ldloc _F
    ldfld valuetype T_bstring80* @getbval::Str
    ldflda valuetype T_string80 T_bstring80::Str
    ldloc _F
    ldfld int32 @getbval::i
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    add
    ldc.i4 48 // '0'
    sub
    stfld int32 @getbval::v
    // line 588
    ldloc _F
    ldloc _F
    ldfld int32 @getbval::i
    ldc.i4 1
    add
    stfld int32 @getbval::i
L_while_test_6:
    ldloc _F
    ldfld int32 @getbval::i
    ldloc _F
    ldfld valuetype T_bstring80* @getbval::Str
    ldfld int32 T_bstring80::Len
    cgt
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_7
    pop
    ldloc _F
    ldfld valuetype T_bstring80* @getbval::Str
    ldflda valuetype T_string80 T_bstring80::Str
    ldloc _F
    ldfld int32 @getbval::i
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    call bool Digit(uint8 c)
L_AND_shortcut_7:
    brtrue L_while_5
    // line 591
    br L_while_test_9
L_while_8:
    // line 591
    ldloc _F
    ldloc _F
    ldfld int32 @getbval::i
    ldc.i4 1
    add
    stfld int32 @getbval::i
L_while_test_9:
    ldloc _F
    ldfld int32 @getbval::i
    ldloc _F
    ldfld valuetype T_bstring80* @getbval::Str
    ldfld int32 T_bstring80::Len
    cgt
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_10
    pop
    ldloc _F
    ldfld valuetype T_bstring80* @getbval::Str
    ldflda valuetype T_string80 T_bstring80::Str
    ldloc _F
    ldfld int32 @getbval::i
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    ldc.i4 32 // ' '
    ceq
L_AND_shortcut_10:
    brtrue L_while_8
    // line 592
    ldloc _F
    ldfld int32 @getbval::i
    ldloc _F
    ldfld valuetype T_bstring80* @getbval::Str
    ldfld int32 T_bstring80::Len
    cgt
    ldc.i4.0
    ceq
    brfalse L_if_end_11
    // line 592
    ldc.i4 10
    call void Prterr(int32 Err)
L_if_end_11:
    // line 593
    ldloc _F
    ldloc _F
    ldfld int32 @getbval::v
    stfld int32 @getbval::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld int32 @getbval::_fnvalue
    ret
}

// line 599

.method static
void Putbval(valuetype T_bstring80& Str, int32 v)
{
    .maxstack 32

    .locals init(class @putbval _F,
        valuetype T_bstring80& pinned $Str)
    
    newobj instance void @putbval::.ctor()
    stloc _F
    
    ldarg Str
    stloc $Str
    
    ldloc _F
    ldarg Str
    stfld valuetype T_bstring80* @putbval::Str
    
    ldloc _F
    ldarg v
    stfld int32 @putbval::v

L_Entry:
    // line 606
    ldloc _F
    ldfld valuetype T_bstring80* @putbval::Str
    ldc.i4 0
    stfld int32 T_bstring80::Len
    // line 607
    ldloc _F
    ldc.i4 10000
    stfld int32 @putbval::p
    // line 608
    ldloc _F
    ldc.i4 1
    stfld int32 @putbval::i
    // line 609
    ldloc _F
    ldfld int32 @putbval::v
    ldc.i4 0
    clt
    brfalse L_if_end_1
    // line 611
    ldloc _F
    ldfld valuetype T_bstring80* @putbval::Str
    ldflda valuetype T_string80 T_bstring80::Str
    ldloc _F
    ldfld int32 @putbval::i
    call instance uint8& T_string80::ldadr(int32)
    ldc.i4 45 // '-'
    stobj uint8
    // line 612
    ldloc _F
    ldloc _F
    ldfld int32 @putbval::i
    ldc.i4 1
    add
    stfld int32 @putbval::i
    // line 613
    ldloc _F
    ldloc _F
    ldfld int32 @putbval::v
    neg
    stfld int32 @putbval::v
L_if_end_1:
    // line 616
    br L_while_test_3
L_while_2:
    // line 618
    ldloc _F
    ldfld valuetype T_bstring80* @putbval::Str
    ldflda valuetype T_string80 T_bstring80::Str
    ldloc _F
    ldfld int32 @putbval::i
    call instance uint8& T_string80::ldadr(int32)
    ldloc _F
    ldfld int32 @putbval::v
    ldloc _F
    ldfld int32 @putbval::p
    div
    ldc.i4 48 // '0'
    add
    stobj uint8
    // line 619
    ldloc _F
    ldfld valuetype T_bstring80* @putbval::Str
    ldflda valuetype T_string80 T_bstring80::Str
    ldc.i4 1
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    ldc.i4 45 // '-'
    ceq
    brfalse L_else_4
    // line 621
    ldloc _F
    ldfld valuetype T_bstring80* @putbval::Str
    ldflda valuetype T_string80 T_bstring80::Str
    ldc.i4 2
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    ldc.i4 48 // '0'
    ceq
    ldc.i4.0
    ceq
    dup
    brtrue L_OR_shortcut_6
    pop
    ldloc _F
    ldfld int32 @putbval::p
    ldc.i4 1
    ceq
L_OR_shortcut_6:
    brfalse L_if_end_7
    // line 621
    ldloc _F
    ldloc _F
    ldfld int32 @putbval::i
    ldc.i4 1
    add
    stfld int32 @putbval::i
L_if_end_7:
    /* nop */
    br L_if_end_5
L_else_4:
    // line 624
    ldloc _F
    ldfld valuetype T_bstring80* @putbval::Str
    ldflda valuetype T_string80 T_bstring80::Str
    ldc.i4 1
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    ldc.i4 48 // '0'
    ceq
    ldc.i4.0
    ceq
    dup
    brtrue L_OR_shortcut_8
    pop
    ldloc _F
    ldfld int32 @putbval::p
    ldc.i4 1
    ceq
L_OR_shortcut_8:
    brfalse L_if_end_9
    // line 624
    ldloc _F
    ldloc _F
    ldfld int32 @putbval::i
    ldc.i4 1
    add
    stfld int32 @putbval::i
L_if_end_9:
L_if_end_5:
    // line 625
    ldloc _F
    ldloc _F
    ldfld int32 @putbval::v
    ldloc _F
    ldfld int32 @putbval::p
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    stfld int32 @putbval::v
    // line 626
    ldloc _F
    ldloc _F
    ldfld int32 @putbval::p
    ldc.i4 10
    div
    stfld int32 @putbval::p
L_while_test_3:
    ldloc _F
    ldfld int32 @putbval::p
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    brtrue L_while_2
    // line 629
    ldloc _F
    ldfld valuetype T_bstring80* @putbval::Str
    ldloc _F
    ldfld int32 @putbval::i
    ldc.i4 1
    sub
    stfld int32 T_bstring80::Len

L_Epilogue:
    ret
}

// line 635

.method static
void Prtbstr(valuetype T_bstring80& Bstr)
{
    .maxstack 32

    .locals init(
        class @prtbstr _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3,
        valuetype T_bstring80& pinned $Bstr)
    
    newobj instance void @prtbstr::.ctor()
    stloc _F
    
    ldarg Bstr
    stloc $Bstr
    
    ldloc _F
    ldarg Bstr
    stfld valuetype T_bstring80* @prtbstr::Bstr

L_Entry:
    // line 641
    ldloc _F
    ldfld valuetype T_bstring80* @prtbstr::Bstr
    ldfld int32 T_bstring80::Len
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @prtbstr::i
L_for_loop_1:
    // line 641
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld valuetype T_bstring80* @prtbstr::Bstr
    ldflda valuetype T_string80 T_bstring80::Str
    ldloc _F
    ldfld int32 @prtbstr::i
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    ldloc _F
    ldfld int32 @prtbstr::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @prtbstr::i
    br L_for_loop_1
L_for_end_2:
    pop
    /* nop */

L_Epilogue:
    ret
}

// line 647

.method static
void Inpbstr(valuetype T_bstring80& Bstr)
{
    .maxstack 32

    .locals init(
        class @inpbstr _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3,
        valuetype T_bstring80& pinned $Bstr)
    
    newobj instance void @inpbstr::.ctor()
    stloc _F
    
    ldarg Bstr
    stloc $Bstr
    
    ldloc _F
    ldarg Bstr
    stfld valuetype T_bstring80* @inpbstr::Bstr

L_Entry:
    // line 653
    ldc.i4 80
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @inpbstr::i
L_for_loop_1:
    // line 653
    ldloc _F
    ldfld valuetype T_bstring80* @inpbstr::Bstr
    ldflda valuetype T_string80 T_bstring80::Str
    ldloc _F
    ldfld int32 @inpbstr::i
    call instance uint8& T_string80::ldadr(int32)
    ldc.i4 32 // ' '
    stobj uint8
    ldloc _F
    ldfld int32 @inpbstr::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @inpbstr::i
    br L_for_loop_1
L_for_end_2:
    pop
    // line 654
    ldloc _F
    ldc.i4 1
    stfld int32 @inpbstr::i
    // line 655
    br L_while_test_4
L_while_3:
    // line 657
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    dup
    ldloc _F
    ldfld valuetype T_bstring80* @inpbstr::Bstr
    ldflda valuetype T_string80 T_bstring80::Str
    ldloc _F
    ldfld int32 @inpbstr::i
    call instance uint8& T_string80::ldadr(int32)
    ldc.i4 0
    ldc.i4 255
    call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
    pop
    // line 658
    ldloc _F
    ldloc _F
    ldfld int32 @inpbstr::i
    ldc.i4 1
    add
    stfld int32 @inpbstr::i
L_while_test_4:
    ldloc _F
    ldfld int32 @inpbstr::i
    ldc.i4 80
    clt
    dup
    brfalse L_AND_shortcut_5
    pop
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance bool [lpcRuntime]LPC.File::Eoln()
    ldc.i4.0
    ceq
L_AND_shortcut_5:
    brtrue L_while_3
    // line 661
    ldloc _F
    ldfld int32 @inpbstr::i
    ldc.i4 80
    cgt
    dup
    brfalse L_AND_shortcut_6
    pop
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance bool [lpcRuntime]LPC.File::Eoln()
    ldc.i4.0
    ceq
L_AND_shortcut_6:
    brfalse L_if_end_7
    // line 661
    ldc.i4 6
    call void Prterr(int32 Err)
L_if_end_7:
    // line 662
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance void [lpcRuntime]LPC.File::ReadLn()
    // line 663
    ldloc _F
    ldfld valuetype T_bstring80* @inpbstr::Bstr
    ldloc _F
    ldfld int32 @inpbstr::i
    stfld int32 T_bstring80::Len

L_Epilogue:
    ret
}

// line 669

.method static
void Cat(valuetype T_bstring80& Bstra, valuetype T_bstring80& Bstrb)
{
    .maxstack 32

    .locals init(
        class @cat _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3,
        valuetype T_bstring80& pinned $Bstra,
        valuetype T_bstring80& pinned $Bstrb)
    
    newobj instance void @cat::.ctor()
    stloc _F
    
    ldarg Bstra
    stloc $Bstra
    
    ldloc _F
    ldarg Bstra
    stfld valuetype T_bstring80* @cat::Bstra
    
    ldarg Bstrb
    stloc $Bstrb
    
    ldloc _F
    ldarg Bstrb
    stfld valuetype T_bstring80* @cat::Bstrb

L_Entry:
    // line 675
    ldloc _F
    ldfld valuetype T_bstring80* @cat::Bstra
    ldfld int32 T_bstring80::Len
    ldloc _F
    ldfld valuetype T_bstring80* @cat::Bstrb
    ldfld int32 T_bstring80::Len
    add
    ldc.i4 80
    cgt
    brfalse L_if_end_1
    // line 675
    ldc.i4 18
    call void Prterr(int32 Err)
L_if_end_1:
    // line 677
    ldloc _F
    ldfld valuetype T_bstring80* @cat::Bstrb
    ldfld int32 T_bstring80::Len
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_3
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @cat::i
L_for_loop_2:
    // line 677
    ldloc _F
    ldfld valuetype T_bstring80* @cat::Bstra
    ldflda valuetype T_string80 T_bstring80::Str
    ldloc _F
    ldfld valuetype T_bstring80* @cat::Bstra
    ldfld int32 T_bstring80::Len
    ldloc _F
    ldfld int32 @cat::i
    add
    call instance uint8& T_string80::ldadr(int32)
    ldloc _F
    ldfld valuetype T_bstring80* @cat::Bstrb
    ldflda valuetype T_string80 T_bstring80::Str
    ldloc _F
    ldfld int32 @cat::i
    call instance uint8& T_string80::ldadr(int32)
    ldobj uint8
    stobj uint8
    ldloc _F
    ldfld int32 @cat::i
    dup
    ldloc $tmpEndValue1
    beq L_for_end_3
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @cat::i
    br L_for_loop_2
L_for_end_3:
    pop
    // line 678
    ldloc _F
    ldfld valuetype T_bstring80* @cat::Bstra
    ldloc _F
    ldfld valuetype T_bstring80* @cat::Bstra
    ldfld int32 T_bstring80::Len
    ldloc _F
    ldfld valuetype T_bstring80* @cat::Bstrb
    ldfld int32 T_bstring80::Len
    add
    stfld int32 T_bstring80::Len

L_Epilogue:
    ret
}

// line 684

.method static
bool Chkequ()
{
    .maxstack 32

    .locals init(class @chkequ _F)
    
    newobj instance void @chkequ::.ctor()
    stloc _F

L_Entry:
    // line 688
    ldsflda valuetype T_array_4 _G::Temp
    ldsfld int32 _G::Top
    call instance valuetype T_record_3& T_array_4::ldadr(int32)
    ldfld int32 T_record_3::Typ
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    dup
    brtrue L_OR_shortcut_1
    pop
    ldsflda valuetype T_array_4 _G::Temp
    ldsfld int32 _G::Top
    ldc.i4 1
    sub
    call instance valuetype T_record_3& T_array_4::ldadr(int32)
    ldfld int32 T_record_3::Typ
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
L_OR_shortcut_1:
    brfalse L_if_end_2
    // line 689
    ldc.i4 12
    call void Prterr(int32 Err)
L_if_end_2:
    // line 690
    ldloc _F
    ldsflda valuetype T_array_4 _G::Temp
    ldsfld int32 _G::Top
    ldc.i4 1
    sub
    call instance valuetype T_record_3& T_array_4::ldadr(int32)
    ldfld int32 T_record_3::Int
    ldsflda valuetype T_array_4 _G::Temp
    ldsfld int32 _G::Top
    call instance valuetype T_record_3& T_array_4::ldadr(int32)
    ldfld int32 T_record_3::Int
    ceq
    stfld bool @chkequ::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld bool @chkequ::_fnvalue
    ret
}

// line 696

.method static
bool Chkltn()
{
    .maxstack 32

    .locals init(class @chkltn _F)
    
    newobj instance void @chkltn::.ctor()
    stloc _F

L_Entry:
    // line 700
    ldsflda valuetype T_array_4 _G::Temp
    ldsfld int32 _G::Top
    call instance valuetype T_record_3& T_array_4::ldadr(int32)
    ldfld int32 T_record_3::Typ
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    dup
    brtrue L_OR_shortcut_1
    pop
    ldsflda valuetype T_array_4 _G::Temp
    ldsfld int32 _G::Top
    ldc.i4 1
    sub
    call instance valuetype T_record_3& T_array_4::ldadr(int32)
    ldfld int32 T_record_3::Typ
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
L_OR_shortcut_1:
    brfalse L_if_end_2
    // line 701
    ldc.i4 12
    call void Prterr(int32 Err)
L_if_end_2:
    // line 702
    ldloc _F
    ldsflda valuetype T_array_4 _G::Temp
    ldsfld int32 _G::Top
    ldc.i4 1
    sub
    call instance valuetype T_record_3& T_array_4::ldadr(int32)
    ldfld int32 T_record_3::Int
    ldsflda valuetype T_array_4 _G::Temp
    ldsfld int32 _G::Top
    call instance valuetype T_record_3& T_array_4::ldadr(int32)
    ldfld int32 T_record_3::Int
    clt
    stfld bool @chkltn::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld bool @chkltn::_fnvalue
    ret
}

// line 708

.method static
bool Chkgtn()
{
    .maxstack 32

    .locals init(class @chkgtn _F)
    
    newobj instance void @chkgtn::.ctor()
    stloc _F

L_Entry:
    // line 712
    ldsflda valuetype T_array_4 _G::Temp
    ldsfld int32 _G::Top
    call instance valuetype T_record_3& T_array_4::ldadr(int32)
    ldfld int32 T_record_3::Typ
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
    dup
    brtrue L_OR_shortcut_1
    pop
    ldsflda valuetype T_array_4 _G::Temp
    ldsfld int32 _G::Top
    ldc.i4 1
    sub
    call instance valuetype T_record_3& T_array_4::ldadr(int32)
    ldfld int32 T_record_3::Typ
    ldc.i4 0
    ceq
    ldc.i4.0
    ceq
L_OR_shortcut_1:
    brfalse L_if_end_2
    // line 713
    ldc.i4 12
    call void Prterr(int32 Err)
L_if_end_2:
    // line 714
    ldloc _F
    ldsflda valuetype T_array_4 _G::Temp
    ldsfld int32 _G::Top
    ldc.i4 1
    sub
    call instance valuetype T_record_3& T_array_4::ldadr(int32)
    ldfld int32 T_record_3::Int
    ldsflda valuetype T_array_4 _G::Temp
    ldsfld int32 _G::Top
    call instance valuetype T_record_3& T_array_4::ldadr(int32)
    ldfld int32 T_record_3::Int
    cgt
    stfld bool @chkgtn::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld bool @chkgtn::_fnvalue
    ret
}

// line 720

.method static
void Settrue()
{
    .maxstack 32

    .locals init(class @settrue _F)
    
    newobj instance void @settrue::.ctor()
    stloc _F

L_Entry:
    // line 724
    ldsflda valuetype T_array_4 _G::Temp
    ldsfld int32 _G::Top
    call instance valuetype T_record_3& T_array_4::ldadr(int32)
    ldc.i4 0
    stfld int32 T_record_3::Typ
    // line 725
    ldsflda valuetype T_array_4 _G::Temp
    ldsfld int32 _G::Top
    call instance valuetype T_record_3& T_array_4::ldadr(int32)
    ldc.i4 1
    stfld int32 T_record_3::Int

L_Epilogue:
    ret
}

// line 731

.method static
void Setfalse()
{
    .maxstack 32

    .locals init(class @setfalse _F)
    
    newobj instance void @setfalse::.ctor()
    stloc _F

L_Entry:
    // line 735
    ldsflda valuetype T_array_4 _G::Temp
    ldsfld int32 _G::Top
    call instance valuetype T_record_3& T_array_4::ldadr(int32)
    ldc.i4 0
    stfld int32 T_record_3::Typ
    // line 736
    ldsflda valuetype T_array_4 _G::Temp
    ldsfld int32 _G::Top
    call instance valuetype T_record_3& T_array_4::ldadr(int32)
    ldc.i4 0
    stfld int32 T_record_3::Int

L_Epilogue:
    ret
}

// line 742

.method static
void Clear()
{
    .maxstack 32

    .locals init(
        class @clear _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpEndValue3,
        int32 $tmpIndex4,
        int32 $tmpIndex5,
        int32 $tmpIndex6,
        uint8 $tmpEndValue7,
        uint8 $tmpIndex8,
        uint8 $tmpIndex9,
        uint8 $tmpEndValue10,
        uint8 $tmpIndex11,
        uint8 $tmpIndex12)
    
    newobj instance void @clear::.ctor()
    stloc _F

L_Entry:
    // line 749
    ldc.i4 100
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @clear::x
L_for_loop_1:
    // line 750
    ldc.i4 80
    stloc $tmpEndValue3
    ldc.i4 1
    dup
    ldloc $tmpEndValue3
    bgt L_for_end_4
    stloc $tmpIndex4
    ldloc _F
    ldloc $tmpIndex4
    stfld int32 @clear::y
L_for_loop_3:
    // line 750
    ldsflda valuetype T_array_2 _G::Prgm
    ldloc _F
    ldfld int32 @clear::x
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    ldloc _F
    ldfld int32 @clear::y
    call instance uint8& T_string80::ldadr(int32)
    ldc.i4 32 // ' '
    stobj uint8
    ldloc _F
    ldfld int32 @clear::y
    dup
    ldloc $tmpEndValue3
    beq L_for_end_4
    ldc.i4.1
    add
    stloc $tmpIndex5
    ldloc _F
    ldloc $tmpIndex5
    stfld int32 @clear::y
    br L_for_loop_3
L_for_end_4:
    pop
    ldloc _F
    ldfld int32 @clear::x
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex6
    ldloc _F
    ldloc $tmpIndex6
    stfld int32 @clear::x
    br L_for_loop_1
L_for_end_2:
    pop
    // line 751
    ldc.i4 122 // 'z'
    stloc $tmpEndValue7
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue7
    bgt L_for_end_6
    stloc $tmpIndex8
    ldloc _F
    ldloc $tmpIndex8
    stfld uint8 @clear::c
L_for_loop_5:
    // line 751
    ldsflda valuetype T_array_5 _G::Strs
    ldloc _F
    ldfld uint8 @clear::c
    call instance valuetype T_bstring80& T_array_5::ldadr(int32)
    ldc.i4 0
    stfld int32 T_bstring80::Len
    ldloc _F
    ldfld uint8 @clear::c
    dup
    ldloc $tmpEndValue7
    beq L_for_end_6
    ldc.i4.1
    add
    stloc $tmpIndex9
    ldloc _F
    ldloc $tmpIndex9
    stfld uint8 @clear::c
    br L_for_loop_5
L_for_end_6:
    pop
    // line 752
    ldc.i4 122 // 'z'
    stloc $tmpEndValue10
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue10
    bgt L_for_end_8
    stloc $tmpIndex11
    ldloc _F
    ldloc $tmpIndex11
    stfld uint8 @clear::c
L_for_loop_7:
    // line 752
    ldsflda valuetype T_array_6 _G::Ints
    ldloc _F
    ldfld uint8 @clear::c
    call instance int32& T_array_6::ldadr(int32)
    ldc.i4 0
    stobj int32
    ldloc _F
    ldfld uint8 @clear::c
    dup
    ldloc $tmpEndValue10
    beq L_for_end_8
    ldc.i4.1
    add
    stloc $tmpIndex12
    ldloc _F
    ldloc $tmpIndex12
    stfld uint8 @clear::c
    br L_for_loop_7
L_for_end_8:
    pop
    // line 753
    ldc.i4 0
    stsfld int32 _G::Prgmc
    // line 754
    ldc.i4 1
    stsfld int32 _G::Linec
    // line 755
    ldc.i4 1
    stsfld int32 _G::Top

L_Epilogue:
    ret
}

// line 761

.method static
void Clrvar()
{
    .maxstack 32

    .locals init(
        class @clrvar _F,
        uint8 $tmpEndValue1,
        uint8 $tmpIndex2,
        uint8 $tmpIndex3,
        uint8 $tmpEndValue4,
        uint8 $tmpIndex5,
        uint8 $tmpIndex6)
    
    newobj instance void @clrvar::.ctor()
    stloc _F

L_Entry:
    // line 767
    ldc.i4 122 // 'z'
    stloc $tmpEndValue1
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld uint8 @clrvar::c
L_for_loop_1:
    // line 767
    ldsflda valuetype T_array_5 _G::Strs
    ldloc _F
    ldfld uint8 @clrvar::c
    call instance valuetype T_bstring80& T_array_5::ldadr(int32)
    ldc.i4 0
    stfld int32 T_bstring80::Len
    ldloc _F
    ldfld uint8 @clrvar::c
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld uint8 @clrvar::c
    br L_for_loop_1
L_for_end_2:
    pop
    // line 768
    ldc.i4 122 // 'z'
    stloc $tmpEndValue4
    ldc.i4 97 // 'a'
    dup
    ldloc $tmpEndValue4
    bgt L_for_end_4
    stloc $tmpIndex5
    ldloc _F
    ldloc $tmpIndex5
    stfld uint8 @clrvar::c
L_for_loop_3:
    // line 768
    ldsflda valuetype T_array_6 _G::Ints
    ldloc _F
    ldfld uint8 @clrvar::c
    call instance int32& T_array_6::ldadr(int32)
    ldc.i4 0
    stobj int32
    ldloc _F
    ldfld uint8 @clrvar::c
    dup
    ldloc $tmpEndValue4
    beq L_for_end_4
    ldc.i4.1
    add
    stloc $tmpIndex6
    ldloc _F
    ldloc $tmpIndex6
    stfld uint8 @clrvar::c
    br L_for_loop_3
L_for_end_4:
    pop
    // line 769
    ldc.i4 0
    stsfld int32 _G::Prgmc
    // line 770
    ldc.i4 1
    stsfld int32 _G::Linec
    // line 771
    ldc.i4 1
    stsfld int32 _G::Top

L_Epilogue:
    ret
}

// line 777

.method static
void Exec()
{
    .maxstack 32

    .locals init(class @exec _F)
    
    newobj instance void @exec::.ctor()
    stloc _F

L_Entry:
.try
{
    // line 1243
    ldc.i4 1
    stsfld int32 _G::Linec
    // line 1244
    br L_while_test_2
L_while_1:
    // line 1244
    ldloc _F
    call uint8 Getchr()
    stfld uint8 @exec::c
L_while_test_2:
    call uint8 Chkchr()
    call bool Digit(uint8 c)
    brtrue L_while_1
    // line 1245
L_repeat_3:
    // line 1245
    ldloc _F
    call instance void @exec::Stat()
    call uint8 Getchr()
    ldc.i4 58 // ':'
    ceq
    ldc.i4.0
    ceq
    brfalse L_repeat_3
    // line 1246
    call void Skpspc()
    // line 1247
    call bool Chkend()
    ldc.i4.0
    ceq
    brfalse L_if_end_4
    // line 1247
    ldc.i4 19
    call void Prterr(int32 Err)
L_if_end_4:
    // line 1248
    ldsfld int32 _G::Prgmc
    ldc.i4 0
    cgt
    brfalse L_if_end_5
    // line 1248
    ldsfld int32 _G::Prgmc
    ldc.i4 1
    add
    stsfld int32 _G::Prgmc
L_if_end_5:
L_1:
    /* nop */
    leave L_Epilogue
}
catch [lpcRuntime]LPC.NonLocalGoto
{
    ldfld int32 [lpcRuntime]LPC.NonLocalGoto::label
    dup
    ldc.i4 2
    beq GOTO_L_1
    rethrow
GOTO_L_1:
    leave L_1
}

L_Epilogue:
    ret
}

// line 0
//================================================================================
// scope: global scope (level : 0)

// line 80

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
    // line 1255
    call void Clear()
    // line 1257
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 1 // cinput 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_1    // "input     "
    stobj valuetype T_string10
    // line 1257
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 2 // cprint 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_2    // "print     "
    stobj valuetype T_string10
    // line 1258
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 3 // cgoto 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_3    // "goto      "
    stobj valuetype T_string10
    // line 1258
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 4 // cif 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_4    // "if        "
    stobj valuetype T_string10
    // line 1259
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 5 // crem 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_5    // "rem       "
    stobj valuetype T_string10
    // line 1259
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 6 // cstop 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_6    // "stop      "
    stobj valuetype T_string10
    // line 1260
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 7 // crun 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_7    // "run       "
    stobj valuetype T_string10
    // line 1260
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 8 // clist 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_8    // "list      "
    stobj valuetype T_string10
    // line 1261
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 9 // cnew 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_9    // "new       "
    stobj valuetype T_string10
    // line 1261
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 10 // clet 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_10    // "let       "
    stobj valuetype T_string10
    // line 1262
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 11 // cbye 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_11    // "bye       "
    stobj valuetype T_string10
    // line 1262
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 12 // clequ 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_12    // "<=        "
    stobj valuetype T_string10
    // line 1263
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 13 // cgequ 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_13    // ">=        "
    stobj valuetype T_string10
    // line 1263
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 14 // cequ 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_14    // "=         "
    stobj valuetype T_string10
    // line 1264
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 15 // cnequ 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_15    // "<>        "
    stobj valuetype T_string10
    // line 1264
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 16 // cltn 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_16    // "<         "
    stobj valuetype T_string10
    // line 1265
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 17 // cgtn 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_17    // ">         "
    stobj valuetype T_string10
    // line 1265
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 18 // cadd 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_18    // "+         "
    stobj valuetype T_string10
    // line 1266
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 19 // csub 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_19    // "-         "
    stobj valuetype T_string10
    // line 1266
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 20 // cmult 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_20    // "*         "
    stobj valuetype T_string10
    // line 1267
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 21 // cdiv 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_21    // "/         "
    stobj valuetype T_string10
    // line 1267
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 22 // cmod 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_22    // "mod       "
    stobj valuetype T_string10
    // line 1268
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 23 // cleft 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_23    // "left$     "
    stobj valuetype T_string10
    // line 1268
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 24 // cright 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_24    // "right$    "
    stobj valuetype T_string10
    // line 1269
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 25 // cmid 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_25    // "mid$      "
    stobj valuetype T_string10
    // line 1269
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 26 // cthen 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_26    // "then      "
    stobj valuetype T_string10
    // line 1270
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 27 // cstr 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_27    // "str$      "
    stobj valuetype T_string10
    // line 1270
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 28 // cval 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_28    // "val       "
    stobj valuetype T_string10
    // line 1271
    ldsflda valuetype T_array_1 _G::Keywd
    ldc.i4 29 // cchr 
    call instance valuetype T_string10& T_array_1::ldadr(int32)
    ldsfld valuetype T_string10 STRING_29    // "chr       "
    stobj valuetype T_string10
    // line 1272
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1273
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Tiny basic interpreter vs. 0.1 Copyright (C) 1994 S. A. Moore"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1274
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1275
L_88:
    br L_while_test_2
L_while_1:
    // line 1277
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Ready"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 1278
L_77:
    ldc.i4 0
    stsfld int32 _G::Prgmc
    // line 1279
    ldc.i4 1
    stsfld int32 _G::Linec
    // line 1280
    ldc.i4 0
    stsfld int32 _G::Top
    // line 1282
L_repeat_3:
    // line 1282
    ldsflda valuetype T_array_2 _G::Prgm
    ldc.i4 0
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    call void Inpstr(valuetype T_string80& Str)
    ldsflda valuetype T_array_2 _G::Prgm
    ldc.i4 0
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    call bool Null(valuetype T_string80& Str)
    ldc.i4.0
    ceq
    brfalse L_repeat_3
    // line 1283
    ldsflda valuetype T_array_2 _G::Prgm
    ldc.i4 0
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    call void Keycom(valuetype T_string80& Str)
    // line 1284
    ldsflda valuetype T_array_2 _G::Prgm
    ldc.i4 0
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    call int32 Lint(valuetype T_string80& Str)
    ldc.i4 0
    cgt
    brfalse L_else_4
    // line 1286
    ldsflda valuetype T_array_2 _G::Prgm
    ldc.i4 0
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    call void Enter(valuetype T_string80& Str)
    // line 1287
    br L_77
    br L_if_end_5
L_else_4:
    // line 1289
L_repeat_6:
    // line 1291
    call void Exec()
    // line 1292
    ldsfld int32 _G::Prgmc
    ldc.i4 100 // maxpgm 
    cgt
    brfalse L_else_7
    // line 1292
    ldc.i4 0
    stsfld int32 _G::Prgmc
    br L_if_end_8
L_else_7:
    // line 1293
    ldsflda valuetype T_array_2 _G::Prgm
    ldsfld int32 _G::Prgmc
    call instance valuetype T_string80& T_array_2::ldadr(int32)
    call bool Null(valuetype T_string80& Str)
    brfalse L_if_end_9
    // line 1293
    ldc.i4 0
    stsfld int32 _G::Prgmc
L_if_end_9:
L_if_end_8:
    ldsfld int32 _G::Prgmc
    ldc.i4 0
    ceq
    brfalse L_repeat_6
L_if_end_5:
L_while_test_2:
    ldc.i4 1 // (true)
    brtrue L_while_1
    // line 1298
L_99:
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "Bye..."
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    leave L_Epilogue
}
catch [lpcRuntime]LPC.NonLocalGoto
{
    ldfld int32 [lpcRuntime]LPC.NonLocalGoto::label
    dup
    ldc.i4 1
    beq GOTO_L_88
    dup
    ldc.i4 3
    beq GOTO_L_99
    rethrow
GOTO_L_88:
    leave L_88
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

// line 0xfeefee

//================================================================================
// internal helpers

.method static bool _SetContains(valuetype T_set_7 s, int32 val)
{
    ldarga s
    ldc.i4 32
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}



// line 0xfeefee

//================================================================================
// global string literals

// "*         "
.data STRING_20_DATA = bytearray( 2a 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_20 at STRING_20_DATA

// "+         "
.data STRING_18_DATA = bytearray( 2b 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_18 at STRING_18_DATA

// "-         "
.data STRING_19_DATA = bytearray( 2d 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_19 at STRING_19_DATA

// "/         "
.data STRING_21_DATA = bytearray( 2f 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_21 at STRING_21_DATA

// "<         "
.data STRING_16_DATA = bytearray( 3c 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_16 at STRING_16_DATA

// "<=        "
.data STRING_12_DATA = bytearray( 3c 3d 20 20 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_12 at STRING_12_DATA

// "<>        "
.data STRING_15_DATA = bytearray( 3c 3e 20 20 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_15 at STRING_15_DATA

// "=         "
.data STRING_14_DATA = bytearray( 3d 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_14 at STRING_14_DATA

// ">         "
.data STRING_17_DATA = bytearray( 3e 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_17 at STRING_17_DATA

// ">=        "
.data STRING_13_DATA = bytearray( 3e 3d 20 20 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_13 at STRING_13_DATA

// "bye       "
.data STRING_11_DATA = bytearray( 62 79 65 20 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_11 at STRING_11_DATA

// "chr       "
.data STRING_29_DATA = bytearray( 63 68 72 20 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_29 at STRING_29_DATA

// "goto      "
.data STRING_3_DATA = bytearray( 67 6f 74 6f 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_3 at STRING_3_DATA

// "if        "
.data STRING_4_DATA = bytearray( 69 66 20 20 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_4 at STRING_4_DATA

// "input     "
.data STRING_1_DATA = bytearray( 69 6e 70 75 74 20 20 20 20 20 )
.field static valuetype T_string10 STRING_1 at STRING_1_DATA

// "left$     "
.data STRING_23_DATA = bytearray( 6c 65 66 74 24 20 20 20 20 20 )
.field static valuetype T_string10 STRING_23 at STRING_23_DATA

// "let       "
.data STRING_10_DATA = bytearray( 6c 65 74 20 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_10 at STRING_10_DATA

// "list      "
.data STRING_8_DATA = bytearray( 6c 69 73 74 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_8 at STRING_8_DATA

// "mid$      "
.data STRING_25_DATA = bytearray( 6d 69 64 24 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_25 at STRING_25_DATA

// "mod       "
.data STRING_22_DATA = bytearray( 6d 6f 64 20 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_22 at STRING_22_DATA

// "new       "
.data STRING_9_DATA = bytearray( 6e 65 77 20 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_9 at STRING_9_DATA

// "print     "
.data STRING_2_DATA = bytearray( 70 72 69 6e 74 20 20 20 20 20 )
.field static valuetype T_string10 STRING_2 at STRING_2_DATA

// "rem       "
.data STRING_5_DATA = bytearray( 72 65 6d 20 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_5 at STRING_5_DATA

// "right$    "
.data STRING_24_DATA = bytearray( 72 69 67 68 74 24 20 20 20 20 )
.field static valuetype T_string10 STRING_24 at STRING_24_DATA

// "run       "
.data STRING_7_DATA = bytearray( 72 75 6e 20 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_7 at STRING_7_DATA

// "stop      "
.data STRING_6_DATA = bytearray( 73 74 6f 70 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_6 at STRING_6_DATA

// "str$      "
.data STRING_27_DATA = bytearray( 73 74 72 24 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_27 at STRING_27_DATA

// "then      "
.data STRING_26_DATA = bytearray( 74 68 65 6e 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_26 at STRING_26_DATA

// "val       "
.data STRING_28_DATA = bytearray( 76 61 6c 20 20 20 20 20 20 20 )
.field static valuetype T_string10 STRING_28 at STRING_28_DATA


