
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

.line 0 "pint.pas"

.line 138
//================================================================================
// scope: load_init (level : 3)

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

// TYPE array_1 = array [0 .. 127] of valuetype T_alfa;
.class value explicit T_array_1
{
    // elem size = 10
    // alignment = 1
    .size 1280

    .field [0] public valuetype T_alfa elem

    .method public valuetype T_alfa& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 127)
        ldarg index
        ldc.i4 127
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

// TYPE array_64 = array [0 .. 20] of valuetype T_alfa;
.class value explicit T_array_64
{
    // elem size = 10
    // alignment = 1
    .size 210

    .field [0] public valuetype T_alfa elem

    .method public valuetype T_alfa& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 20)
        ldarg index
        ldc.i4 20
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

// TYPE array_86 = array [0 .. 127] of int32;
.class value explicit T_array_86
{
    // elem size = 4
    // alignment = 4
    .size 512

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 127)
        ldarg index
        ldc.i4 127
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

// TYPE labelrec = record;
.class value explicit T_load_labelrec
{
    // alignment = 4
    .size 8
    
    .field [0] public int16 Val
    .field [4] public int32 St
}

.line 0xfeefee

// TYPE array_89 = array [0 .. 1850] of valuetype T_load_labelrec;
.class value explicit T_load_array_89
{
    // elem size = 8
    // alignment = 4
    .size 14808

    .field [0] public valuetype T_load_labelrec elem

    .method public valuetype T_load_labelrec& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 1850)
        ldarg index
        ldc.i4 1850
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


.line 202
//================================================================================
// scope: load_errorl (level : 3)

.line 0xfeefee

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


.line 208
//================================================================================
// scope: load_update (level : 3)

.line 0xfeefee

// TYPE record_92 = record;
.class value explicit T_record_92
{
    // alignment = 2
    .size 8
    
    .field [0] public int8 Op1
    .field [1] public int8 P1
    .field [2] public int16 Q1
    .field [4] public int8 Op2
    .field [5] public int8 P2
    .field [6] public int16 Q2
}

.line 0xfeefee

// TYPE array_93 = array [0 .. 8650] of valuetype T_record_92;
.class value explicit T_array_93
{
    // elem size = 8
    // alignment = 2
    .size 69208

    .field [0] public valuetype T_record_92 elem

    .method public valuetype T_record_92& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 8650)
        ldarg index
        ldc.i4 8650
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

.class @load_update
{
    // slink
    .field public class @load _slink

    // parameters
    .field public int16 x

    // local variables
    .field public int16 Curr
    .field public bool Endlist
    .field public int16 Succ

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 237
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


.line 264
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


.line 273
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


.line 279
//================================================================================
// scope: load_assemble_getname (level : 4)

.class @load_assemble_getname
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


.line 286
//================================================================================
// scope: load_assemble_typesymbol (level : 4)

.class @load_assemble_typesymbol
{
    // slink
    .field public class @load_assemble _slink

    // local variables
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 259
//================================================================================
// scope: load_assemble (level : 3)

.line 0xfeefee

// TYPE settype = set of 0 .. 58
.class value explicit T_settype
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
        ldc.i4 8
        initblk
        ret
    
    }
}

.line 0xfeefee

// TYPE record_97 = record;
.class value explicit T_record_97
{
    // alignment = 8
    .size 8
    
    // case undef = 0
    
    // case int = 1
        
        .field [0] public int32 Vi
    
    // case reel = 2
        
        .field [0] public float64 Vr
    
    // case bool = 3
        
        .field [0] public bool Vb
    
    // case sett = 4
        
        .field [0] public valuetype T_settype Vs
    
    // case car = 7
        
        .field [0] public uint8 Vc
    
    // case adr = 5
        
        .field [0] public int16 Va
    
    // case mark = 6
        
        .field [0] public int32 Vm
}

.line 0xfeefee

// TYPE array_98 = array [0 .. 18000] of valuetype T_record_97;
.class value explicit T_array_98
{
    // elem size = 8
    // alignment = 8
    .size 144008

    .field [0] public valuetype T_record_97 elem

    .method public valuetype T_record_97& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 18000)
        ldarg index
        ldc.i4 18000
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

// TYPE set_103 = set of 0 .. 255
.class value explicit T_set_103
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
        call instance void T_set_103::addValue(int32)
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

.class @load_assemble
{
    // slink
    .field public class @load _slink

    // local variables
    .field public int32 i
    .field public int32 Lb
    .field public valuetype T_alfa Name
    .field public float64 r
    .field public valuetype T_settype s
    .field public int32 S1
    .field public int32 Ub

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 264

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
        .line 265
        ldloc _F
        ldfld class @load_assemble @load_assemble_lookup::_slink
        ldfld class @load @load_assemble::_slink
        ldflda valuetype T_load_array_89 @load::Labeltab
        ldloc _F
        ldfld int16 @load_assemble_lookup::x
        call instance valuetype T_load_labelrec& T_load_array_89::ldadr(int32)
        ldfld int32 T_load_labelrec::St
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 0
        bne.un L_check_case_2
        .line 266
        ldloc _F
        ldfld class @load_assemble @load_assemble_lookup::_slink
        ldfld class @load @load_assemble::_slink
        ldflda valuetype T_load_array_89 @load::Labeltab
        ldloc _F
        ldfld int16 @load_assemble_lookup::x
        call instance valuetype T_load_labelrec& T_load_array_89::ldadr(int32)
        ldfld int16 T_load_labelrec::Val
        stsfld int16 _G::q
        .line 267
        ldloc _F
        ldfld class @load_assemble @load_assemble_lookup::_slink
        ldfld class @load @load_assemble::_slink
        ldflda valuetype T_load_array_89 @load::Labeltab
        ldloc _F
        ldfld int16 @load_assemble_lookup::x
        call instance valuetype T_load_labelrec& T_load_array_89::ldadr(int32)
        ldsfld int16 _G::Pc
        stfld int16 T_load_labelrec::Val
        br L_case_end_1
    L_check_case_2:
        ldloc $tmpSwitchValue1
        ldc.i4 1
        bne.un L_case_end_1
        .line 269
        ldloc _F
        ldfld class @load_assemble @load_assemble_lookup::_slink
        ldfld class @load @load_assemble::_slink
        ldflda valuetype T_load_array_89 @load::Labeltab
        ldloc _F
        ldfld int16 @load_assemble_lookup::x
        call instance valuetype T_load_labelrec& T_load_array_89::ldadr(int32)
        ldfld int16 T_load_labelrec::Val
        stsfld int16 _G::q
    L_case_end_1:
    
    L_Epilogue:
        ret
    }

.line 273

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
        .line 275
        br L_while_test_2
    L_while_1:
        .line 275
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
        .line 276
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldflda int16 @load_assemble_labelsearch::x
        ldc.i4 0
        ldc.i4 1850
        call instance void [lpcRuntime]LPC.File::Read(int16*, int32, int32)
        pop
        .line 276
        ldloc _F
        ldfld class @load_assemble @load_assemble_labelsearch::_slink
        ldloc _F
        ldfld int16 @load_assemble_labelsearch::x
        call instance void @load_assemble::Lookup(int16 x)
    
    L_Epilogue:
        ret
    }

.line 279

    .method public
    void Getname()
    {
        .maxstack 32
    
        .locals init(
            class @load_assemble_getname _F,
            int8 $tmpSrcIndex1,
            int8 $tmpDstIndex2)
        
        newobj instance void @load_assemble_getname::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load_assemble @load_assemble_getname::_slink
    
    L_Entry:
        .line 280
        ldloc _F
        ldfld class @load_assemble @load_assemble_getname::_slink
        ldfld class @load @load_assemble::_slink
        ldflda valuetype T_alfa @load::Word
        ldc.i4 1
        call instance uint8& T_alfa::ldadr(int32)
        ldloc _F
        ldfld class @load_assemble @load_assemble_getname::_slink
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        stobj uint8
        .line 281
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldfld class @load_assemble @load_assemble_getname::_slink
        ldfld class @load @load_assemble::_slink
        ldflda valuetype T_alfa @load::Word
        ldc.i4 2
        call instance uint8& T_alfa::ldadr(int32)
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        dup
        ldloc _F
        ldfld class @load_assemble @load_assemble_getname::_slink
        ldfld class @load @load_assemble::_slink
        ldflda valuetype T_alfa @load::Word
        ldc.i4 3
        call instance uint8& T_alfa::ldadr(int32)
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        pop
        .line 282
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        call instance bool [lpcRuntime]LPC.File::Eoln()
        ldc.i4.0
        ceq
        brfalse L_if_end_1
        .line 282
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
    L_if_end_1:
        .line 283
        ldc.i4 1
        stloc $tmpSrcIndex1
        ldc.i4 1
        stloc $tmpDstIndex2
    L_pack_loop_2:
        .line 283
        ldloc _F
        ldfld class @load_assemble @load_assemble_getname::_slink
        ldflda valuetype T_alfa @load_assemble::Name
        ldloc $tmpDstIndex2
        call instance uint8& T_alfa::ldadr(int32)
        ldloc _F
        ldfld class @load_assemble @load_assemble_getname::_slink
        ldfld class @load @load_assemble::_slink
        ldflda valuetype T_alfa @load::Word
        ldloc $tmpSrcIndex1
        call instance uint8& T_alfa::ldadr(int32)
        ldobj uint8
        stobj uint8
        ldloc $tmpSrcIndex1
        ldc.i4.1
        add
        stloc $tmpSrcIndex1
        ldloc $tmpDstIndex2
        ldc.i4.1
        add
        dup
        stloc $tmpDstIndex2
        ldc.i4 10
        ble L_pack_loop_2
    
    L_Epilogue:
        ret
    }

.line 286

    .method public
    void Typesymbol()
    {
        .maxstack 32
    
        .locals init(
            class @load_assemble_typesymbol _F,
            uint8 $tmpSwitchValue1)
        
        newobj instance void @load_assemble_typesymbol::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load_assemble @load_assemble_typesymbol::_slink
    
    L_Entry:
        .line 289
        ldloc _F
        ldfld class @load_assemble @load_assemble_typesymbol::_slink
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        ldc.i4 105 // 'i'
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_1
        .line 291
        ldloc _F
        ldfld class @load_assemble @load_assemble_typesymbol::_slink
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 97 // 'a'
        bne.un L_check_case_3
        .line 292
        ldloc _F
        ldc.i4 0
        stfld int32 @load_assemble_typesymbol::i
        br L_case_end_2
    L_check_case_3:
        ldloc $tmpSwitchValue1
        ldc.i4 114 // 'r'
        bne.un L_check_case_4
        .line 293
        ldloc _F
        ldc.i4 1
        stfld int32 @load_assemble_typesymbol::i
        br L_case_end_2
    L_check_case_4:
        ldloc $tmpSwitchValue1
        ldc.i4 115 // 's'
        bne.un L_check_case_5
        .line 294
        ldloc _F
        ldc.i4 2
        stfld int32 @load_assemble_typesymbol::i
        br L_case_end_2
    L_check_case_5:
        ldloc $tmpSwitchValue1
        ldc.i4 98 // 'b'
        bne.un L_check_case_6
        .line 295
        ldloc _F
        ldc.i4 3
        stfld int32 @load_assemble_typesymbol::i
        br L_case_end_2
    L_check_case_6:
        ldloc $tmpSwitchValue1
        ldc.i4 99 // 'c'
        bne.un L_case_end_2
        .line 296
        ldloc _F
        ldc.i4 4
        stfld int32 @load_assemble_typesymbol::i
    L_case_end_2:
        .line 298
        ldsflda valuetype T_array_86 _G::Cop
        ldsfld int8 _G::Op
        call instance int32& T_array_86::ldadr(int32)
        ldobj int32
        ldloc _F
        ldfld int32 @load_assemble_typesymbol::i
        add
        dup
        ldc.i4 0
        ldc.i4 127
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::Op
        /* nop */
    L_if_end_1:
        /* nop */
    
    L_Epilogue:
        ret
    }
}


.line 124
//================================================================================
// scope: load (level : 2)

.class @load
{
    // local variables
    .field public int16 Bcp
    .field public uint8 Ch
    .field public int16 Icp
    .field public valuetype T_load_array_89 Labeltab
    .field public int16 Labelvalue
    .field public int16 Mcp
    .field public int16 Rcp
    .field public int16 Scp
    .field public valuetype T_alfa Word

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 138

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
            int32 $tmpIndex6)
        
        newobj instance void @load_init::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load @load_init::_slink
    
    L_Entry:
        .line 140
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 0
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_1    // "lod       "
        stobj valuetype T_alfa
        .line 140
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 1
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_2    // "ldo       "
        stobj valuetype T_alfa
        .line 141
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 2
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_3    // "str       "
        stobj valuetype T_alfa
        .line 141
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 3
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_4    // "sro       "
        stobj valuetype T_alfa
        .line 142
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 4
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_5    // "lda       "
        stobj valuetype T_alfa
        .line 142
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 5
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_6    // "lao       "
        stobj valuetype T_alfa
        .line 143
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 6
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_7    // "sto       "
        stobj valuetype T_alfa
        .line 143
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 7
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_8    // "ldc       "
        stobj valuetype T_alfa
        .line 144
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 8
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_9    // "...       "
        stobj valuetype T_alfa
        .line 144
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 9
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_10    // "ind       "
        stobj valuetype T_alfa
        .line 145
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 10
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_11    // "inc       "
        stobj valuetype T_alfa
        .line 145
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 11
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_12    // "mst       "
        stobj valuetype T_alfa
        .line 146
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 12
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_13    // "cup       "
        stobj valuetype T_alfa
        .line 146
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 13
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_14    // "ent       "
        stobj valuetype T_alfa
        .line 147
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 14
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_15    // "ret       "
        stobj valuetype T_alfa
        .line 147
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 15
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_16    // "csp       "
        stobj valuetype T_alfa
        .line 148
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 16
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_17    // "ixa       "
        stobj valuetype T_alfa
        .line 148
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 17
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_18    // "equ       "
        stobj valuetype T_alfa
        .line 149
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 18
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_19    // "neq       "
        stobj valuetype T_alfa
        .line 149
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 19
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_20    // "geq       "
        stobj valuetype T_alfa
        .line 150
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 20
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_21    // "grt       "
        stobj valuetype T_alfa
        .line 150
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 21
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_22    // "leq       "
        stobj valuetype T_alfa
        .line 151
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 22
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_23    // "les       "
        stobj valuetype T_alfa
        .line 151
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 23
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_24    // "ujp       "
        stobj valuetype T_alfa
        .line 152
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 24
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_25    // "fjp       "
        stobj valuetype T_alfa
        .line 152
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 25
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_26    // "xjp       "
        stobj valuetype T_alfa
        .line 153
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 26
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_27    // "chk       "
        stobj valuetype T_alfa
        .line 153
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 27
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_28    // "eof       "
        stobj valuetype T_alfa
        .line 154
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 28
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_29    // "adi       "
        stobj valuetype T_alfa
        .line 154
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 29
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_30    // "adr       "
        stobj valuetype T_alfa
        .line 155
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 30
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_31    // "sbi       "
        stobj valuetype T_alfa
        .line 155
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 31
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_32    // "sbr       "
        stobj valuetype T_alfa
        .line 156
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 32
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_33    // "sgs       "
        stobj valuetype T_alfa
        .line 156
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 33
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_34    // "flt       "
        stobj valuetype T_alfa
        .line 157
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 34
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_35    // "flo       "
        stobj valuetype T_alfa
        .line 157
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 35
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_36    // "trc       "
        stobj valuetype T_alfa
        .line 158
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 36
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_37    // "ngi       "
        stobj valuetype T_alfa
        .line 158
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 37
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_38    // "ngr       "
        stobj valuetype T_alfa
        .line 159
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 38
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_39    // "sqi       "
        stobj valuetype T_alfa
        .line 159
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 39
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_40    // "sqr       "
        stobj valuetype T_alfa
        .line 160
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 40
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_41    // "abi       "
        stobj valuetype T_alfa
        .line 160
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 41
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_42    // "abr       "
        stobj valuetype T_alfa
        .line 161
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 42
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_43    // "not       "
        stobj valuetype T_alfa
        .line 161
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 43
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_44    // "and       "
        stobj valuetype T_alfa
        .line 162
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 44
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_45    // "ior       "
        stobj valuetype T_alfa
        .line 162
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 45
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_46    // "dif       "
        stobj valuetype T_alfa
        .line 163
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 46
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_47    // "int       "
        stobj valuetype T_alfa
        .line 163
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 47
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_48    // "uni       "
        stobj valuetype T_alfa
        .line 164
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 48
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_49    // "inn       "
        stobj valuetype T_alfa
        .line 164
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 49
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_50    // "mod       "
        stobj valuetype T_alfa
        .line 165
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 50
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_51    // "odd       "
        stobj valuetype T_alfa
        .line 165
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 51
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_52    // "mpi       "
        stobj valuetype T_alfa
        .line 166
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 52
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_53    // "mpr       "
        stobj valuetype T_alfa
        .line 166
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 53
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_54    // "dvi       "
        stobj valuetype T_alfa
        .line 167
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 54
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_55    // "dvr       "
        stobj valuetype T_alfa
        .line 167
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 55
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_56    // "mov       "
        stobj valuetype T_alfa
        .line 168
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 56
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_57    // "lca       "
        stobj valuetype T_alfa
        .line 168
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 57
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_58    // "dec       "
        stobj valuetype T_alfa
        .line 169
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 58
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_59    // "stp       "
        stobj valuetype T_alfa
        .line 169
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 59
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_60    // "ord       "
        stobj valuetype T_alfa
        .line 170
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 60
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_61    // "chr       "
        stobj valuetype T_alfa
        .line 170
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 61
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldsfld valuetype T_alfa STRING_62    // "ujc       "
        stobj valuetype T_alfa
        .line 172
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 0
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_63    // "get       "
        stobj valuetype T_alfa
        .line 172
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 1
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_64    // "put       "
        stobj valuetype T_alfa
        .line 173
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 2
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_65    // "rst       "
        stobj valuetype T_alfa
        .line 173
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 3
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_66    // "rln       "
        stobj valuetype T_alfa
        .line 174
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 4
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_67    // "new       "
        stobj valuetype T_alfa
        .line 174
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 5
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_68    // "wln       "
        stobj valuetype T_alfa
        .line 175
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 6
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_69    // "wrs       "
        stobj valuetype T_alfa
        .line 175
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 7
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_70    // "eln       "
        stobj valuetype T_alfa
        .line 176
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 8
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_71    // "wri       "
        stobj valuetype T_alfa
        .line 176
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 9
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_72    // "wrr       "
        stobj valuetype T_alfa
        .line 177
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 10
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_73    // "wrc       "
        stobj valuetype T_alfa
        .line 177
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 11
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_74    // "rdi       "
        stobj valuetype T_alfa
        .line 178
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 12
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_75    // "rdr       "
        stobj valuetype T_alfa
        .line 178
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 13
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_76    // "rdc       "
        stobj valuetype T_alfa
        .line 179
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 14
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_77    // "sin       "
        stobj valuetype T_alfa
        .line 179
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 15
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_78    // "cos       "
        stobj valuetype T_alfa
        .line 180
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 16
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_79    // "exp       "
        stobj valuetype T_alfa
        .line 180
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 17
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_80    // "log       "
        stobj valuetype T_alfa
        .line 181
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 18
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_81    // "sqt       "
        stobj valuetype T_alfa
        .line 181
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 19
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_82    // "atn       "
        stobj valuetype T_alfa
        .line 182
        ldsflda valuetype T_array_64 _G::Sptable
        ldc.i4 20
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldsfld valuetype T_alfa STRING_83    // "sav       "
        stobj valuetype T_alfa
        .line 184
        ldsflda valuetype T_array_86 _G::Cop
        ldc.i4 0
        call instance int32& T_array_86::ldadr(int32)
        ldc.i4 105
        stobj int32
        .line 184
        ldsflda valuetype T_array_86 _G::Cop
        ldc.i4 1
        call instance int32& T_array_86::ldadr(int32)
        ldc.i4 65
        stobj int32
        .line 185
        ldsflda valuetype T_array_86 _G::Cop
        ldc.i4 2
        call instance int32& T_array_86::ldadr(int32)
        ldc.i4 70
        stobj int32
        .line 185
        ldsflda valuetype T_array_86 _G::Cop
        ldc.i4 3
        call instance int32& T_array_86::ldadr(int32)
        ldc.i4 75
        stobj int32
        .line 186
        ldsflda valuetype T_array_86 _G::Cop
        ldc.i4 6
        call instance int32& T_array_86::ldadr(int32)
        ldc.i4 80
        stobj int32
        .line 186
        ldsflda valuetype T_array_86 _G::Cop
        ldc.i4 9
        call instance int32& T_array_86::ldadr(int32)
        ldc.i4 85
        stobj int32
        .line 187
        ldsflda valuetype T_array_86 _G::Cop
        ldc.i4 10
        call instance int32& T_array_86::ldadr(int32)
        ldc.i4 90
        stobj int32
        .line 187
        ldsflda valuetype T_array_86 _G::Cop
        ldc.i4 26
        call instance int32& T_array_86::ldadr(int32)
        ldc.i4 95
        stobj int32
        .line 188
        ldsflda valuetype T_array_86 _G::Cop
        ldc.i4 57
        call instance int32& T_array_86::ldadr(int32)
        ldc.i4 100
        stobj int32
        .line 190
        ldc.i4 3
        dup
        ldc.i4 0
        ldc.i4 17500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::Pc
        .line 191
        ldloc _F
        ldfld class @load @load_init::_slink
        ldc.i4 13650
        ldc.i4 1
        add
        dup
        ldc.i4 -1
        ldc.i4 18001
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @load::Icp
        .line 192
        ldloc _F
        ldfld class @load @load_init::_slink
        ldc.i4 13655
        ldc.i4 1
        add
        dup
        ldc.i4 -1
        ldc.i4 18001
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @load::Rcp
        .line 193
        ldloc _F
        ldfld class @load @load_init::_slink
        ldc.i4 13660
        ldc.i4 1
        add
        dup
        ldc.i4 -1
        ldc.i4 18001
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @load::Scp
        .line 194
        ldloc _F
        ldfld class @load @load_init::_slink
        ldc.i4 13730
        ldc.i4 2
        add
        dup
        ldc.i4 -1
        ldc.i4 18001
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @load::Bcp
        .line 195
        ldloc _F
        ldfld class @load @load_init::_slink
        ldc.i4 13820
        ldc.i4 1
        add
        dup
        ldc.i4 -1
        ldc.i4 18001
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @load::Mcp
        .line 196
        ldc.i4 10
        stloc $tmpEndValue1
        ldc.i4 1
        dup
        ldloc $tmpEndValue1
        bgt L_for_end_2
        stloc $tmpIndex2
        ldloc _F
        ldloc $tmpIndex2
        stfld int32 @load_init::i
    L_for_loop_1:
        .line 196
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
        .line 197
        ldc.i4 1850
        stloc $tmpEndValue4
        ldc.i4 0
        dup
        ldloc $tmpEndValue4
        bgt L_for_end_4
        stloc $tmpIndex5
        ldloc _F
        ldloc $tmpIndex5
        stfld int32 @load_init::i
    L_for_loop_3:
        .line 198
        ldloc _F
        ldfld class @load @load_init::_slink
        ldflda valuetype T_load_array_89 @load::Labeltab
        ldloc _F
        ldfld int32 @load_init::i
        call instance valuetype T_load_labelrec& T_load_array_89::ldadr(int32)
        ldc.i4 1
        neg
        dup
        ldc.i4 -1
        ldc.i4 18001
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 T_load_labelrec::Val
        .line 198
        ldloc _F
        ldfld class @load @load_init::_slink
        ldflda valuetype T_load_array_89 @load::Labeltab
        ldloc _F
        ldfld int32 @load_init::i
        call instance valuetype T_load_labelrec& T_load_array_89::ldadr(int32)
        ldc.i4 0
        stfld int32 T_load_labelrec::St
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
        .line 199
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        call instance void [lpcRuntime]LPC.File::Reset()
        /* nop */
    
    L_Epilogue:
        ret
    }

.line 202

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
        .line 203
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 204
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldloc _F
        ldfld valuetype T_beta @load_errorl::String
        call string T_beta::arrayToString(valuetype T_beta)
        call instance void [lpcRuntime]LPC.File::Write(string)
        pop
        .line 205
        call void [lpcRuntime]LPC.Helpers::Halt()
    
    L_Epilogue:
        ret
    }

.line 208

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
        .line 213
        ldloc _F
        ldfld class @load @load_update::_slink
        ldflda valuetype T_load_array_89 @load::Labeltab
        ldloc _F
        ldfld int16 @load_update::x
        call instance valuetype T_load_labelrec& T_load_array_89::ldadr(int32)
        ldfld int32 T_load_labelrec::St
        ldc.i4 1
        ceq
        brfalse L_else_1
        .line 213
        ldloc _F
        ldfld class @load @load_update::_slink
        ldsfld valuetype T_beta STRING_84    // " duplicated label        "
        call instance void @load::Errorl(valuetype T_beta String)
        br L_if_end_2
    L_else_1:
        .line 215
        ldloc _F
        ldfld class @load @load_update::_slink
        ldflda valuetype T_load_array_89 @load::Labeltab
        ldloc _F
        ldfld int16 @load_update::x
        call instance valuetype T_load_labelrec& T_load_array_89::ldadr(int32)
        ldfld int16 T_load_labelrec::Val
        ldc.i4 1
        neg
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_3
        .line 216
        ldloc _F
        ldloc _F
        ldfld class @load @load_update::_slink
        ldflda valuetype T_load_array_89 @load::Labeltab
        ldloc _F
        ldfld int16 @load_update::x
        call instance valuetype T_load_labelrec& T_load_array_89::ldadr(int32)
        ldfld int16 T_load_labelrec::Val
        dup
        ldc.i4 -1
        ldc.i4 17500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @load_update::Curr
        .line 216
        ldloc _F
        ldc.i4 0 // (false)
        stfld bool @load_update::Endlist
        .line 217
        br L_while_test_5
    L_while_4:
        .line 220
        ldloc _F
        ldfld int16 @load_update::Curr
        ldc.i4.1
        and
        brfalse L_else_6
        .line 220
        ldloc _F
        ldsflda valuetype T_array_93 _G::Code
        ldloc _F
        ldfld int16 @load_update::Curr
        ldc.i4 2
        div
        call instance valuetype T_record_92& T_array_93::ldadr(int32)
        ldfld int16 T_record_92::Q2
        dup
        ldc.i4 -1
        ldc.i4 17500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @load_update::Succ
        .line 221
        ldsflda valuetype T_array_93 _G::Code
        ldloc _F
        ldfld int16 @load_update::Curr
        ldc.i4 2
        div
        call instance valuetype T_record_92& T_array_93::ldadr(int32)
        ldloc _F
        ldfld class @load @load_update::_slink
        ldfld int16 @load::Labelvalue
        stfld int16 T_record_92::Q2
        br L_if_end_7
    L_else_6:
        .line 223
        ldloc _F
        ldsflda valuetype T_array_93 _G::Code
        ldloc _F
        ldfld int16 @load_update::Curr
        ldc.i4 2
        div
        call instance valuetype T_record_92& T_array_93::ldadr(int32)
        ldfld int16 T_record_92::Q1
        dup
        ldc.i4 -1
        ldc.i4 17500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @load_update::Succ
        .line 224
        ldsflda valuetype T_array_93 _G::Code
        ldloc _F
        ldfld int16 @load_update::Curr
        ldc.i4 2
        div
        call instance valuetype T_record_92& T_array_93::ldadr(int32)
        ldloc _F
        ldfld class @load @load_update::_slink
        ldfld int16 @load::Labelvalue
        stfld int16 T_record_92::Q1
    L_if_end_7:
        .line 226
        ldloc _F
        ldfld int16 @load_update::Succ
        ldc.i4 1
        neg
        ceq
        brfalse L_else_8
        .line 226
        ldloc _F
        ldc.i4 1 // (true)
        stfld bool @load_update::Endlist
        br L_if_end_9
    L_else_8:
        .line 227
        ldloc _F
        ldloc _F
        ldfld int16 @load_update::Succ
        stfld int16 @load_update::Curr
    L_if_end_9:
    L_while_test_5:
        ldloc _F
        ldfld bool @load_update::Endlist
        ldc.i4.0
        ceq
        brtrue L_while_4
        /* nop */
    L_if_end_3:
        .line 230
        ldloc _F
        ldfld class @load @load_update::_slink
        ldflda valuetype T_load_array_89 @load::Labeltab
        ldloc _F
        ldfld int16 @load_update::x
        call instance valuetype T_load_labelrec& T_load_array_89::ldadr(int32)
        ldc.i4 1
        stfld int32 T_load_labelrec::St
        .line 231
        ldloc _F
        ldfld class @load @load_update::_slink
        ldflda valuetype T_load_array_89 @load::Labeltab
        ldloc _F
        ldfld int16 @load_update::x
        call instance valuetype T_load_labelrec& T_load_array_89::ldadr(int32)
        ldloc _F
        ldfld class @load @load_update::_slink
        ldfld int16 @load::Labelvalue
        stfld int16 T_load_labelrec::Val
        /* nop */
    L_if_end_2:
    
    L_Epilogue:
        ret
    }

.line 237

    .method public
    void Generate()
    {
        .maxstack 32
    
        .locals init(
            class @load_generate _F,
            uint8 $tmpSwitchValue1)
        
        newobj instance void @load_generate::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load @load_generate::_slink
    
    L_Entry:
        .line 241
        ldloc _F
        ldc.i4 1 // (true)
        stfld bool @load_generate::Again
        .line 242
        br L_while_test_2
    L_while_1:
        .line 243
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldfld class @load @load_generate::_slink
        ldflda uint8 @load::Ch
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        pop
        .line 244
        ldloc _F
        ldfld class @load @load_generate::_slink
        ldfld uint8 @load::Ch
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 105 // 'i'
        bne.un L_check_case_4
        .line 245
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        call instance void [lpcRuntime]LPC.File::ReadLn()
        br L_case_end_3
    L_check_case_4:
        ldloc $tmpSwitchValue1
        ldc.i4 108 // 'l'
        bne.un L_check_case_5
        .line 246
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldflda int32 @load_generate::x
        ldc.i4 -2147483648
        ldc.i4 2147483647
        call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
        pop
        .line 247
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        call instance bool [lpcRuntime]LPC.File::Eoln()
        ldc.i4.0
        ceq
        brfalse L_if_end_6
        .line 247
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldfld class @load @load_generate::_slink
        ldflda uint8 @load::Ch
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        pop
    L_if_end_6:
        .line 248
        ldloc _F
        ldfld class @load @load_generate::_slink
        ldfld uint8 @load::Ch
        ldc.i4 61 // '='
        ceq
        brfalse L_else_7
        .line 248
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldfld class @load @load_generate::_slink
        ldflda int16 @load::Labelvalue
        ldc.i4 -1
        ldc.i4 18001
        call instance void [lpcRuntime]LPC.File::Read(int16*, int32, int32)
        pop
        br L_if_end_8
    L_else_7:
        .line 249
        ldloc _F
        ldfld class @load @load_generate::_slink
        ldsfld int16 _G::Pc
        stfld int16 @load::Labelvalue
    L_if_end_8:
        .line 250
        ldloc _F
        ldfld class @load @load_generate::_slink
        ldloc _F
        ldfld int32 @load_generate::x
        dup
        ldc.i4 0
        ldc.i4 1850
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        call instance void @load::Update(int16 x)
        .line 250
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        call instance void [lpcRuntime]LPC.File::ReadLn()
        /* nop */
        br L_case_end_3
    L_check_case_5:
        ldloc $tmpSwitchValue1
        ldc.i4 113 // 'q'
        bne.un L_check_case_9
        .line 252
        ldloc _F
        ldc.i4 0 // (false)
        stfld bool @load_generate::Again
        .line 252
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        call instance void [lpcRuntime]LPC.File::ReadLn()
        br L_case_end_3
    L_check_case_9:
        ldloc $tmpSwitchValue1
        ldc.i4 32 // ' '
        bne.un L_case_end_3
        .line 253
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldfld class @load @load_generate::_slink
        ldflda uint8 @load::Ch
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        pop
        .line 253
        ldloc _F
        ldfld class @load @load_generate::_slink
        call instance void @load::Assemble()
    L_case_end_3:
        /* nop */
    L_while_test_2:
        ldloc _F
        ldfld bool @load_generate::Again
        brtrue L_while_1
    
    L_Epilogue:
        ret
    }

.line 259

    .method public
    void Assemble()
    {
        .maxstack 32
    
        .locals init(
            class @load_assemble _F,
            int8 $tmpSwitchValue1,
            uint8 $tmpSwitchValue2,
            uint8 $tmpSwitchValue3,
            int32 $tmpEndValue4,
            int32 $tmpIndex5,
            int32 $tmpIndex6,
            uint8 $tmpSwitchValue7,
            valuetype T_set_103 $tmpSetLiteral8,
            valuetype T_set_103 $tmpSetLiteral9,
            int32 $tmpEndValue10,
            int32 $tmpIndex11,
            int32 $tmpIndex12)
        
        newobj instance void @load_assemble::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @load @load_assemble::_slink
    
    
    L_Entry:
        .line 302
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 15
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::p
        .line 302
        ldc.i4 0
        dup
        ldc.i4 -26143
        ldc.i4 26143
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::q
        .line 302
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 127
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::Op
        .line 303
        ldloc _F
        call instance void @load_assemble::Getname()
        .line 304
        ldsflda valuetype T_array_1 _G::Instr
        ldc.i4 62
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldloc _F
        ldfld valuetype T_alfa @load_assemble::Name
        stobj valuetype T_alfa
        .line 305
        br L_while_test_2
    L_while_1:
        .line 305
        ldsfld int8 _G::Op
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 127
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::Op
    L_while_test_2:
        ldsflda valuetype T_array_1 _G::Instr
        ldsfld int8 _G::Op
        call instance valuetype T_alfa& T_array_1::ldadr(int32)
        ldobj valuetype T_alfa
        call string T_alfa::arrayToString(valuetype T_alfa)
        ldloc _F
        ldfld valuetype T_alfa @load_assemble::Name
        call string T_alfa::arrayToString(valuetype T_alfa)
        call bool [lpcRuntime]LPC.Helpers::StrcmpNE(string, string)
        brtrue L_while_1
        .line 306
        ldsfld int8 _G::Op
        ldc.i4 62
        ceq
        brfalse L_if_end_3
        .line 306
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_85    // " illegal instruction     "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_3:
        .line 308
        ldsfld int8 _G::Op
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 17
        beq L_case_6
        ldloc $tmpSwitchValue1
        ldc.i4 18
        beq L_case_6
        ldloc $tmpSwitchValue1
        ldc.i4 19
        beq L_case_6
        ldloc $tmpSwitchValue1
        ldc.i4 20
        beq L_case_6
        ldloc $tmpSwitchValue1
        ldc.i4 21
        beq L_case_6
        ldloc $tmpSwitchValue1
        ldc.i4 22
        beq L_case_6
        br L_check_case_5
    L_case_6:
        .line 312
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        stloc $tmpSwitchValue2
        ldloc $tmpSwitchValue2
        ldc.i4 97 // 'a'
        bne.un L_check_case_8
        /* nop */
        br L_case_end_7
    L_check_case_8:
        ldloc $tmpSwitchValue2
        ldc.i4 105 // 'i'
        bne.un L_check_case_9
        .line 314
        ldc.i4 1
        dup
        ldc.i4 0
        ldc.i4 15
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::p
        br L_case_end_7
    L_check_case_9:
        ldloc $tmpSwitchValue2
        ldc.i4 114 // 'r'
        bne.un L_check_case_10
        .line 315
        ldc.i4 2
        dup
        ldc.i4 0
        ldc.i4 15
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::p
        br L_case_end_7
    L_check_case_10:
        ldloc $tmpSwitchValue2
        ldc.i4 98 // 'b'
        bne.un L_check_case_11
        .line 316
        ldc.i4 3
        dup
        ldc.i4 0
        ldc.i4 15
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::p
        br L_case_end_7
    L_check_case_11:
        ldloc $tmpSwitchValue2
        ldc.i4 115 // 's'
        bne.un L_check_case_12
        .line 317
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 15
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::p
        br L_case_end_7
    L_check_case_12:
        ldloc $tmpSwitchValue2
        ldc.i4 99 // 'c'
        bne.un L_check_case_13
        .line 318
        ldc.i4 6
        dup
        ldc.i4 0
        ldc.i4 15
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::p
        br L_case_end_7
    L_check_case_13:
        ldloc $tmpSwitchValue2
        ldc.i4 109 // 'm'
        bne.un L_case_end_7
        .line 319
        ldc.i4 5
        dup
        ldc.i4 0
        ldc.i4 15
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::p
        .line 320
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldsflda int16 _G::q
        ldc.i4 -26143
        ldc.i4 26143
        call instance void [lpcRuntime]LPC.File::Read(int16*, int32, int32)
        pop
    L_case_end_7:
        br L_case_end_4
    L_check_case_5:
        ldloc $tmpSwitchValue1
        ldc.i4 0
        beq L_case_15
        ldloc $tmpSwitchValue1
        ldc.i4 2
        beq L_case_15
        br L_check_case_14
    L_case_15:
        .line 326
        ldloc _F
        call instance void @load_assemble::Typesymbol()
        .line 326
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldsflda int8 _G::p
        ldc.i4 0
        ldc.i4 15
        call instance void [lpcRuntime]LPC.File::Read(int8*, int32, int32)
        dup
        ldsflda int16 _G::q
        ldc.i4 -26143
        ldc.i4 26143
        call instance void [lpcRuntime]LPC.File::Read(int16*, int32, int32)
        pop
        br L_case_end_4
    L_check_case_14:
        ldloc $tmpSwitchValue1
        ldc.i4 4
        bne.un L_check_case_16
        .line 329
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldsflda int8 _G::p
        ldc.i4 0
        ldc.i4 15
        call instance void [lpcRuntime]LPC.File::Read(int8*, int32, int32)
        dup
        ldsflda int16 _G::q
        ldc.i4 -26143
        ldc.i4 26143
        call instance void [lpcRuntime]LPC.File::Read(int16*, int32, int32)
        pop
        br L_case_end_4
    L_check_case_16:
        ldloc $tmpSwitchValue1
        ldc.i4 12
        bne.un L_check_case_17
        .line 331
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldsflda int8 _G::p
        ldc.i4 0
        ldc.i4 15
        call instance void [lpcRuntime]LPC.File::Read(int8*, int32, int32)
        pop
        .line 331
        ldloc _F
        call instance void @load_assemble::Labelsearch()
        br L_case_end_4
    L_check_case_17:
        ldloc $tmpSwitchValue1
        ldc.i4 11
        bne.un L_check_case_18
        .line 333
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldsflda int8 _G::p
        ldc.i4 0
        ldc.i4 15
        call instance void [lpcRuntime]LPC.File::Read(int8*, int32, int32)
        pop
        br L_case_end_4
    L_check_case_18:
        ldloc $tmpSwitchValue1
        ldc.i4 14
        bne.un L_check_case_19
        .line 335
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        stloc $tmpSwitchValue3
        ldloc $tmpSwitchValue3
        ldc.i4 112 // 'p'
        bne.un L_check_case_21
        .line 336
        ldc.i4 0
        dup
        ldc.i4 0
        ldc.i4 15
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::p
        br L_case_end_20
    L_check_case_21:
        ldloc $tmpSwitchValue3
        ldc.i4 105 // 'i'
        bne.un L_check_case_22
        .line 337
        ldc.i4 1
        dup
        ldc.i4 0
        ldc.i4 15
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::p
        br L_case_end_20
    L_check_case_22:
        ldloc $tmpSwitchValue3
        ldc.i4 114 // 'r'
        bne.un L_check_case_23
        .line 338
        ldc.i4 2
        dup
        ldc.i4 0
        ldc.i4 15
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::p
        br L_case_end_20
    L_check_case_23:
        ldloc $tmpSwitchValue3
        ldc.i4 99 // 'c'
        bne.un L_check_case_24
        .line 339
        ldc.i4 3
        dup
        ldc.i4 0
        ldc.i4 15
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::p
        br L_case_end_20
    L_check_case_24:
        ldloc $tmpSwitchValue3
        ldc.i4 98 // 'b'
        bne.un L_check_case_25
        .line 340
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 15
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::p
        br L_case_end_20
    L_check_case_25:
        ldloc $tmpSwitchValue3
        ldc.i4 97 // 'a'
        bne.un L_case_end_20
        .line 341
        ldc.i4 5
        dup
        ldc.i4 0
        ldc.i4 15
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::p
    L_case_end_20:
        br L_case_end_4
    L_check_case_19:
        ldloc $tmpSwitchValue1
        ldc.i4 5
        beq L_case_27
        ldloc $tmpSwitchValue1
        ldc.i4 16
        beq L_case_27
        ldloc $tmpSwitchValue1
        ldc.i4 55
        beq L_case_27
        br L_check_case_26
    L_case_27:
        .line 345
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldsflda int16 _G::q
        ldc.i4 -26143
        ldc.i4 26143
        call instance void [lpcRuntime]LPC.File::Read(int16*, int32, int32)
        pop
        br L_case_end_4
    L_check_case_26:
        ldloc $tmpSwitchValue1
        ldc.i4 1
        beq L_case_29
        ldloc $tmpSwitchValue1
        ldc.i4 3
        beq L_case_29
        ldloc $tmpSwitchValue1
        ldc.i4 9
        beq L_case_29
        ldloc $tmpSwitchValue1
        ldc.i4 10
        beq L_case_29
        ldloc $tmpSwitchValue1
        ldc.i4 57
        beq L_case_29
        br L_check_case_28
    L_case_29:
        .line 348
        ldloc _F
        call instance void @load_assemble::Typesymbol()
        .line 348
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldsflda int16 _G::q
        ldc.i4 -26143
        ldc.i4 26143
        call instance void [lpcRuntime]LPC.File::Read(int16*, int32, int32)
        pop
        br L_case_end_4
    L_check_case_28:
        ldloc $tmpSwitchValue1
        ldc.i4 23
        beq L_case_31
        ldloc $tmpSwitchValue1
        ldc.i4 24
        beq L_case_31
        ldloc $tmpSwitchValue1
        ldc.i4 25
        beq L_case_31
        br L_check_case_30
    L_case_31:
        .line 352
        ldloc _F
        call instance void @load_assemble::Labelsearch()
        br L_case_end_4
    L_check_case_30:
        ldloc $tmpSwitchValue1
        ldc.i4 13
        bne.un L_check_case_32
        .line 354
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldsflda int8 _G::p
        ldc.i4 0
        ldc.i4 15
        call instance void [lpcRuntime]LPC.File::Read(int8*, int32, int32)
        pop
        .line 354
        ldloc _F
        call instance void @load_assemble::Labelsearch()
        br L_case_end_4
    L_check_case_32:
        ldloc $tmpSwitchValue1
        ldc.i4 15
        bne.un L_check_case_33
        .line 357
        ldc.i4 9
        stloc $tmpEndValue4
        ldc.i4 1
        dup
        ldloc $tmpEndValue4
        bgt L_for_end_35
        stloc $tmpIndex5
        ldloc _F
        ldloc $tmpIndex5
        stfld int32 @load_assemble::i
    L_for_loop_34:
        .line 357
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldflda uint8 @load::Ch
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        pop
        ldloc _F
        ldfld int32 @load_assemble::i
        dup
        ldloc $tmpEndValue4
        beq L_for_end_35
        ldc.i4.1
        add
        stloc $tmpIndex6
        ldloc _F
        ldloc $tmpIndex6
        stfld int32 @load_assemble::i
        br L_for_loop_34
    L_for_end_35:
        pop
        .line 358
        ldloc _F
        call instance void @load_assemble::Getname()
        .line 359
        br L_while_test_37
    L_while_36:
        .line 359
        ldsfld int16 _G::q
        ldc.i4 1
        add
        dup
        ldc.i4 -26143
        ldc.i4 26143
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::q
    L_while_test_37:
        ldloc _F
        ldfld valuetype T_alfa @load_assemble::Name
        call string T_alfa::arrayToString(valuetype T_alfa)
        ldsflda valuetype T_array_64 _G::Sptable
        ldsfld int16 _G::q
        call instance valuetype T_alfa& T_array_64::ldadr(int32)
        ldobj valuetype T_alfa
        call string T_alfa::arrayToString(valuetype T_alfa)
        call bool [lpcRuntime]LPC.Helpers::StrcmpNE(string, string)
        brtrue L_while_36
        /* nop */
        br L_case_end_4
    L_check_case_33:
        ldloc $tmpSwitchValue1
        ldc.i4 7
        bne.un L_check_case_38
        .line 362
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        stloc $tmpSwitchValue7
        ldloc $tmpSwitchValue7
        ldc.i4 105 // 'i'
        bne.un L_check_case_40
        .line 363
        ldc.i4 1
        dup
        ldc.i4 0
        ldc.i4 15
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::p
        .line 363
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldflda int32 @load_assemble::i
        ldc.i4 -2147483648
        ldc.i4 2147483647
        call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
        pop
        .line 364
        ldloc _F
        ldfld int32 @load_assemble::i
        dup
        ldc.i4 0
        bge L_abs_question_41
        neg
    L_abs_question_41:
        ldc.i4 26144
        clt
        ldc.i4.0
        ceq
        brfalse L_else_42
        .line 365
        ldc.i4 8
        dup
        ldc.i4 0
        ldc.i4 127
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::Op
        .line 366
        ldsflda valuetype T_array_98 _G::Store
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld int16 @load::Icp
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldloc _F
        ldfld int32 @load_assemble::i
        stfld int32 T_record_97::Vi
        .line 366
        ldc.i4 13650
        dup
        ldc.i4 -26143
        ldc.i4 26143
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::q
        .line 367
    L_repeat_44:
        .line 367
        ldsfld int16 _G::q
        ldc.i4 1
        add
        dup
        ldc.i4 -26143
        ldc.i4 26143
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::q
        ldsflda valuetype T_array_98 _G::Store
        ldsfld int16 _G::q
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld int32 T_record_97::Vi
        ldloc _F
        ldfld int32 @load_assemble::i
        ceq
        brfalse L_repeat_44
        .line 368
        ldsfld int16 _G::q
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld int16 @load::Icp
        ceq
        brfalse L_if_end_45
        .line 369
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld int16 @load::Icp
        ldc.i4 1
        add
        dup
        ldc.i4 -1
        ldc.i4 18001
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @load::Icp
        .line 370
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld int16 @load::Icp
        ldc.i4 13655
        ceq
        brfalse L_if_end_46
        .line 371
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_86    // " integer table overflow  "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_46:
        /* nop */
    L_if_end_45:
        br L_if_end_43
    L_else_42:
        .line 373
        ldloc _F
        ldfld int32 @load_assemble::i
        dup
        ldc.i4 -26143
        ldc.i4 26143
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::q
    L_if_end_43:
        br L_case_end_39
    L_check_case_40:
        ldloc $tmpSwitchValue7
        ldc.i4 114 // 'r'
        bne.un L_check_case_47
        .line 376
        ldc.i4 8
        dup
        ldc.i4 0
        ldc.i4 127
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::Op
        .line 376
        ldc.i4 2
        dup
        ldc.i4 0
        ldc.i4 15
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::p
        .line 377
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldflda float64 @load_assemble::r
        call instance void [lpcRuntime]LPC.File::Read(float64*)
        pop
        .line 378
        ldsflda valuetype T_array_98 _G::Store
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld int16 @load::Rcp
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldloc _F
        ldfld float64 @load_assemble::r
        stfld float64 T_record_97::Vr
        .line 378
        ldc.i4 13655
        dup
        ldc.i4 -26143
        ldc.i4 26143
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::q
        .line 379
    L_repeat_48:
        .line 379
        ldsfld int16 _G::q
        ldc.i4 1
        add
        dup
        ldc.i4 -26143
        ldc.i4 26143
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::q
        ldsflda valuetype T_array_98 _G::Store
        ldsfld int16 _G::q
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld float64 T_record_97::Vr
        ldloc _F
        ldfld float64 @load_assemble::r
        ceq
        brfalse L_repeat_48
        .line 380
        ldsfld int16 _G::q
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld int16 @load::Rcp
        ceq
        brfalse L_if_end_49
        .line 381
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld int16 @load::Rcp
        ldc.i4 1
        add
        dup
        ldc.i4 -1
        ldc.i4 18001
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @load::Rcp
        .line 382
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld int16 @load::Rcp
        ldc.i4 13660
        ceq
        brfalse L_if_end_50
        .line 383
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_87    // " real table overflow     "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_50:
        /* nop */
    L_if_end_49:
        br L_case_end_39
    L_check_case_47:
        ldloc $tmpSwitchValue7
        ldc.i4 110 // 'n'
        bne.un L_check_case_51
        /* nop */
        br L_case_end_39
    L_check_case_51:
        ldloc $tmpSwitchValue7
        ldc.i4 98 // 'b'
        bne.un L_check_case_52
        .line 389
        ldc.i4 3
        dup
        ldc.i4 0
        ldc.i4 15
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::p
        .line 389
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldsflda int16 _G::q
        ldc.i4 -26143
        ldc.i4 26143
        call instance void [lpcRuntime]LPC.File::Read(int16*, int32, int32)
        pop
        br L_case_end_39
    L_check_case_52:
        ldloc $tmpSwitchValue7
        ldc.i4 99 // 'c'
        bne.un L_check_case_53
        .line 391
        ldc.i4 6
        dup
        ldc.i4 0
        ldc.i4 15
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::p
        .line 392
    L_repeat_54:
        .line 392
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldflda uint8 @load::Ch
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        pop
        /* nop */
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        ldc.i4 32 // ' '
        ceq
        ldc.i4.0
        ceq
        brfalse L_repeat_54
        .line 393
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        ldc.i4 39 // '''
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_55
        .line 394
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_88    // " illegal character       "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_55:
        .line 395
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldflda uint8 @load::Ch
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        pop
        .line 395
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        dup
        ldc.i4 -26143
        ldc.i4 26143
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::q
        .line 396
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldflda uint8 @load::Ch
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        pop
        .line 397
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        ldc.i4 39 // '''
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_56
        .line 398
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_88    // " illegal character       "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_56:
        /* nop */
        br L_case_end_39
    L_check_case_53:
        ldloc $tmpSwitchValue7
        ldc.i4 40 // '('
        bne.un L_case_end_39
        .line 400
        ldc.i4 8
        dup
        ldc.i4 0
        ldc.i4 127
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::Op
        .line 400
        ldc.i4 4
        dup
        ldc.i4 0
        ldc.i4 15
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int8 _G::p
        .line 401
        ldloc _F
        ldloc $tmpSetLiteral8
        dup
        ldc.i4 0
        ldc.i4 58
        call void _SetCheck(valuetype T_set_103 s, int32 min, int32 max)
        call valuetype T_settype _SetCastTo_T_settype(valuetype T_set_103 s)
        stfld valuetype T_settype @load_assemble::s
        .line 401
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldflda uint8 @load::Ch
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        pop
        .line 402
        br L_while_test_58
    L_while_57:
        .line 403
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldflda int32 @load_assemble::S1
        ldc.i4 -2147483648
        ldc.i4 2147483647
        call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
        dup
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldflda uint8 @load::Ch
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        pop
        .line 403
        ldloca $tmpSetLiteral9
        call instance void T_set_103::clear()
        ldloca $tmpSetLiteral9
        ldloc _F
        ldfld int32 @load_assemble::S1
        call instance void T_set_103::addValue(int32)
        ldloc _F
        ldloc _F
        ldfld valuetype T_settype @load_assemble::s
        call valuetype T_set_103 _SetCastTo_T_set_103(valuetype T_settype s)
        ldloc $tmpSetLiteral9
        call valuetype T_set_103 _SetUnion(valuetype T_set_103 a, valuetype T_set_103 b)
        dup
        ldc.i4 0
        ldc.i4 58
        call void _SetCheck(valuetype T_set_103 s, int32 min, int32 max)
        call valuetype T_settype _SetCastTo_T_settype(valuetype T_set_103 s)
        stfld valuetype T_settype @load_assemble::s
    L_while_test_58:
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        ldc.i4 41 // ')'
        ceq
        ldc.i4.0
        ceq
        brtrue L_while_57
        .line 405
        ldsflda valuetype T_array_98 _G::Store
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld int16 @load::Scp
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldloc _F
        ldfld valuetype T_settype @load_assemble::s
        stfld valuetype T_settype T_record_97::Vs
        .line 405
        ldc.i4 13660
        dup
        ldc.i4 -26143
        ldc.i4 26143
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::q
        .line 406
    L_repeat_59:
        .line 406
        ldsfld int16 _G::q
        ldc.i4 1
        add
        dup
        ldc.i4 -26143
        ldc.i4 26143
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::q
        ldsflda valuetype T_array_98 _G::Store
        ldsfld int16 _G::q
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld valuetype T_settype T_record_97::Vs
        ldloc _F
        ldfld valuetype T_settype @load_assemble::s
        call bool _SetEqual(valuetype T_settype a, valuetype T_settype b)
        brfalse L_repeat_59
        .line 407
        ldsfld int16 _G::q
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld int16 @load::Scp
        ceq
        brfalse L_if_end_60
        .line 408
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld int16 @load::Scp
        ldc.i4 1
        add
        dup
        ldc.i4 -1
        ldc.i4 18001
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @load::Scp
        .line 409
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld int16 @load::Scp
        ldc.i4 13730
        ceq
        brfalse L_if_end_61
        .line 410
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_89    // " set table overflow      "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_61:
        /* nop */
    L_if_end_60:
    L_case_end_39:
        br L_case_end_4
    L_check_case_38:
        ldloc $tmpSwitchValue1
        ldc.i4 26
        bne.un L_check_case_62
        .line 416
        ldloc _F
        call instance void @load_assemble::Typesymbol()
        .line 417
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
        .line 418
        ldsfld int8 _G::Op
        ldc.i4 95
        ceq
        brfalse L_else_63
        .line 418
        ldloc _F
        ldfld int32 @load_assemble::Lb
        dup
        ldc.i4 -26143
        ldc.i4 26143
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::q
        br L_if_end_64
    L_else_63:
        .line 421
        ldsflda valuetype T_array_98 _G::Store
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld int16 @load::Bcp
        ldc.i4 1
        sub
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldloc _F
        ldfld int32 @load_assemble::Lb
        stfld int32 T_record_97::Vi
        .line 421
        ldsflda valuetype T_array_98 _G::Store
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld int16 @load::Bcp
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldloc _F
        ldfld int32 @load_assemble::Ub
        stfld int32 T_record_97::Vi
        .line 422
        ldc.i4 13730
        dup
        ldc.i4 -26143
        ldc.i4 26143
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::q
        .line 423
    L_repeat_65:
        .line 423
        ldsfld int16 _G::q
        ldc.i4 2
        add
        dup
        ldc.i4 -26143
        ldc.i4 26143
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::q
        ldsflda valuetype T_array_98 _G::Store
        ldsfld int16 _G::q
        ldc.i4 1
        sub
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld int32 T_record_97::Vi
        ldloc _F
        ldfld int32 @load_assemble::Lb
        ceq
        dup
        brfalse L_AND_shortcut_66
        pop
        ldsflda valuetype T_array_98 _G::Store
        ldsfld int16 _G::q
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld int32 T_record_97::Vi
        ldloc _F
        ldfld int32 @load_assemble::Ub
        ceq
    L_AND_shortcut_66:
        brfalse L_repeat_65
        .line 425
        ldsfld int16 _G::q
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld int16 @load::Bcp
        ceq
        brfalse L_if_end_67
        .line 426
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld int16 @load::Bcp
        ldc.i4 2
        add
        dup
        ldc.i4 -1
        ldc.i4 18001
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @load::Bcp
        .line 427
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld int16 @load::Bcp
        ldc.i4 13820
        ceq
        brfalse L_if_end_68
        .line 428
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_90    // " boundary table overflow "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_68:
        /* nop */
    L_if_end_67:
    L_if_end_64:
        br L_case_end_4
    L_check_case_62:
        ldloc $tmpSwitchValue1
        ldc.i4 56
        bne.un L_check_case_69
        .line 434
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld int16 @load::Mcp
        ldc.i4 16
        add
        ldc.i4 18000
        clt
        ldc.i4.0
        ceq
        brfalse L_if_end_70
        .line 435
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldsfld valuetype T_beta STRING_91    // " multiple table overflow "
        call instance void @load::Errorl(valuetype T_beta String)
    L_if_end_70:
        .line 436
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld int16 @load::Mcp
        ldc.i4 16
        add
        dup
        ldc.i4 -1
        ldc.i4 18001
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 @load::Mcp
        .line 437
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld int16 @load::Mcp
        stsfld int16 _G::q
        .line 438
        ldc.i4 15
        stloc $tmpEndValue10
        ldc.i4 0
        dup
        ldloc $tmpEndValue10
        bgt L_for_end_72
        stloc $tmpIndex11
        ldloc _F
        ldloc $tmpIndex11
        stfld int32 @load_assemble::i
    L_for_loop_71:
        .line 439
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        dup
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldflda uint8 @load::Ch
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        pop
        .line 440
        ldsflda valuetype T_array_98 _G::Store
        ldsfld int16 _G::q
        ldloc _F
        ldfld int32 @load_assemble::i
        add
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldloc _F
        ldfld class @load @load_assemble::_slink
        ldfld uint8 @load::Ch
        stfld uint8 T_record_97::Vc
        ldloc _F
        ldfld int32 @load_assemble::i
        dup
        ldloc $tmpEndValue10
        beq L_for_end_72
        ldc.i4.1
        add
        stloc $tmpIndex12
        ldloc _F
        ldloc $tmpIndex12
        stfld int32 @load_assemble::i
        br L_for_loop_71
    L_for_end_72:
        pop
        /* nop */
        br L_case_end_4
    L_check_case_69:
        ldloc $tmpSwitchValue1
        ldc.i4 6
        bne.un L_check_case_73
        .line 444
        ldloc _F
        call instance void @load_assemble::Typesymbol()
        br L_case_end_4
    L_check_case_73:
        ldloc $tmpSwitchValue1
        ldc.i4 27
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 28
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 29
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 30
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 31
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 32
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 33
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 34
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 35
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 36
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 37
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 38
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 39
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 40
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 41
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 42
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 43
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 44
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 45
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 46
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 47
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 48
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 49
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 50
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 51
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 52
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 53
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 54
        beq L_case_75
        ldloc $tmpSwitchValue1
        ldc.i4 58
        beq L_case_75
        br L_check_case_74
    L_case_75:
        /* nop */
        br L_case_end_4
    L_check_case_74:
        ldloc $tmpSwitchValue1
        ldc.i4 59
        beq L_case_77
        ldloc $tmpSwitchValue1
        ldc.i4 60
        beq L_case_77
        br L_check_case_76
    L_case_77:
        .line 450
        br L_1
        br L_case_end_4
    L_check_case_76:
        ldloc $tmpSwitchValue1
        ldc.i4 61
        bne.un L_case_end_4
        /* nop */
    L_case_end_4:
        .line 458
        ldsfld int16 _G::Pc
        ldc.i4.1
        and
        brfalse L_else_78
        .line 459
        ldsflda valuetype T_array_93 _G::Code
        ldsfld int16 _G::Pc
        ldc.i4 2
        div
        call instance valuetype T_record_92& T_array_93::ldadr(int32)
        ldsfld int8 _G::Op
        stfld int8 T_record_92::Op2
        .line 459
        ldsflda valuetype T_array_93 _G::Code
        ldsfld int16 _G::Pc
        ldc.i4 2
        div
        call instance valuetype T_record_92& T_array_93::ldadr(int32)
        ldsfld int8 _G::p
        stfld int8 T_record_92::P2
        .line 459
        ldsflda valuetype T_array_93 _G::Code
        ldsfld int16 _G::Pc
        ldc.i4 2
        div
        call instance valuetype T_record_92& T_array_93::ldadr(int32)
        ldsfld int16 _G::q
        stfld int16 T_record_92::Q2
        br L_if_end_79
    L_else_78:
        .line 461
        ldsflda valuetype T_array_93 _G::Code
        ldsfld int16 _G::Pc
        ldc.i4 2
        div
        call instance valuetype T_record_92& T_array_93::ldadr(int32)
        ldsfld int8 _G::Op
        stfld int8 T_record_92::Op1
        .line 461
        ldsflda valuetype T_array_93 _G::Code
        ldsfld int16 _G::Pc
        ldc.i4 2
        div
        call instance valuetype T_record_92& T_array_93::ldadr(int32)
        ldsfld int8 _G::p
        stfld int8 T_record_92::P1
        .line 461
        ldsflda valuetype T_array_93 _G::Code
        ldsfld int16 _G::Pc
        ldc.i4 2
        div
        call instance valuetype T_record_92& T_array_93::ldadr(int32)
        ldsfld int16 _G::q
        stfld int16 T_record_92::Q1
    L_if_end_79:
        .line 463
        ldsfld int16 _G::Pc
        ldc.i4 1
        add
        dup
        ldc.i4 0
        ldc.i4 17500
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::Pc
        .line 464
    L_1:
        ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
        call instance void [lpcRuntime]LPC.File::ReadLn()
        /* nop */
    
    L_Epilogue:
        ret
    }
}


.line 479
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


.line 476
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

.line 479

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
        .line 480
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldc.i4 6
        ldc.i4.0
        ldloc _F
        ldfld class @pmd @pmd_pt::_slink
        ldfld int32 @pmd::s
        call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
        pop
        .line 481
        ldsflda valuetype T_array_98 _G::Store
        ldloc _F
        ldfld class @pmd @pmd_pt::_slink
        ldfld int32 @pmd::s
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld int32 T_record_97::Vi
        dup
        ldc.i4 0
        bge L_abs_question_1
        neg
    L_abs_question_1:
        ldc.i4 2147483647
        clt
        brfalse L_else_2
        .line 481
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldsflda valuetype T_array_98 _G::Store
        ldloc _F
        ldfld class @pmd @pmd_pt::_slink
        ldfld int32 @pmd::s
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld int32 T_record_97::Vi
        call instance void [lpcRuntime]LPC.File::Write(int32)
        pop
        br L_if_end_3
    L_else_2:
        .line 482
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr "too big "
        call instance void [lpcRuntime]LPC.File::Write(string)
        pop
    L_if_end_3:
        .line 483
        ldloc _F
        ldfld class @pmd @pmd_pt::_slink
        ldloc _F
        ldfld class @pmd @pmd_pt::_slink
        ldfld int32 @pmd::s
        ldc.i4 1
        sub
        stfld int32 @pmd::s
        .line 484
        ldloc _F
        ldfld class @pmd @pmd_pt::_slink
        ldloc _F
        ldfld class @pmd @pmd_pt::_slink
        ldfld int32 @pmd::i
        ldc.i4 1
        add
        stfld int32 @pmd::i
        .line 485
        ldloc _F
        ldfld class @pmd @pmd_pt::_slink
        ldfld int32 @pmd::i
        ldc.i4 4
        ceq
        brfalse L_if_end_4
        .line 486
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 486
        ldloc _F
        ldfld class @pmd @pmd_pt::_slink
        ldc.i4 0
        stfld int32 @pmd::i
    L_if_end_4:
        /* nop */
    
    L_Epilogue:
        ret
    }
}


.line 500
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


.line 505
//================================================================================
// scope: base (level : 2)

.class @base
{
    // parameters
    .field public int32 Ld

    // local variables
    .field public int16 _fnvalue
    .field public int16 Ad

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 514
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


.line 530
//================================================================================
// scope: callsp_readi (level : 3)

.class @callsp_readi
{
    // slink
    .field public class @callsp _slink

    // parameters
    .field public valuetype [lpcRuntime]LPC.File* f

    // local variables
    .field public int16 Ad

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 538
//================================================================================
// scope: callsp_readr (level : 3)

.class @callsp_readr
{
    // slink
    .field public class @callsp _slink

    // parameters
    .field public valuetype [lpcRuntime]LPC.File* f

    // local variables
    .field public int16 Ad

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 546
//================================================================================
// scope: callsp_readc (level : 3)

.class @callsp_readc
{
    // slink
    .field public class @callsp _slink

    // parameters
    .field public valuetype [lpcRuntime]LPC.File* f

    // local variables
    .field public int16 Ad
    .field public uint8 c

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 556
//================================================================================
// scope: callsp_writestr (level : 3)

.class @callsp_writestr
{
    // slink
    .field public class @callsp _slink

    // parameters
    .field public valuetype [lpcRuntime]LPC.File* f

    // local variables
    .field public int16 Ad
    .field public int32 i
    .field public int32 j
    .field public int32 k

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 568
//================================================================================
// scope: callsp_getfile (level : 3)

.class @callsp_getfile
{
    // slink
    .field public class @callsp _slink

    // parameters
    .field public valuetype [lpcRuntime]LPC.File* f

    // local variables
    .field public int16 Ad

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 575
//================================================================================
// scope: callsp_putfile (level : 3)

.class @callsp_putfile
{
    // slink
    .field public class @callsp _slink

    // parameters
    .field public valuetype [lpcRuntime]LPC.File* f

    // local variables
    .field public int16 Ad

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 526
//================================================================================
// scope: callsp (level : 2)

.class @callsp
{
    // local variables
    .field public bool Line

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 530

    .method public
    void Readi(valuetype [lpcRuntime]LPC.File& f)
    {
        .maxstack 32
    
        .locals init(class @callsp_readi _F,
            valuetype [lpcRuntime]LPC.File& pinned $f)
        
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
    
    L_Entry:
        .line 532
        ldloc _F
        ldsflda valuetype T_array_98 _G::Store
        ldsfld int16 _G::Sp
        ldc.i4 1
        sub
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld int16 T_record_97::Va
        stfld int16 @callsp_readi::Ad
        .line 533
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_readi::f
        dup
        ldsflda valuetype T_array_98 _G::Store
        ldloc _F
        ldfld int16 @callsp_readi::Ad
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldflda int32 T_record_97::Vi
        ldc.i4 -2147483648
        ldc.i4 2147483647
        call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
        pop
        .line 534
        ldsflda valuetype T_array_98 _G::Store
        ldsflda valuetype T_array_98 _G::Store
        ldsfld int16 _G::Sp
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld int16 T_record_97::Va
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_readi::f
        dup
        call instance void [lpcRuntime]LPC.File::VarRead()
        ldflda uint8 [lpcRuntime]LPC.File::FileVar
        ldobj uint8
        stfld uint8 T_record_97::Vc
        .line 535
        ldsfld int16 _G::Sp
        ldc.i4 2
        sub
        dup
        ldc.i4 -1
        ldc.i4 18001
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::Sp
    
    L_Epilogue:
        ret
    }

.line 538

    .method public
    void Readr(valuetype [lpcRuntime]LPC.File& f)
    {
        .maxstack 32
    
        .locals init(class @callsp_readr _F,
            valuetype [lpcRuntime]LPC.File& pinned $f)
        
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
    
    L_Entry:
        .line 540
        ldloc _F
        ldsflda valuetype T_array_98 _G::Store
        ldsfld int16 _G::Sp
        ldc.i4 1
        sub
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld int16 T_record_97::Va
        stfld int16 @callsp_readr::Ad
        .line 541
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_readr::f
        dup
        ldsflda valuetype T_array_98 _G::Store
        ldloc _F
        ldfld int16 @callsp_readr::Ad
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldflda float64 T_record_97::Vr
        call instance void [lpcRuntime]LPC.File::Read(float64*)
        pop
        .line 542
        ldsflda valuetype T_array_98 _G::Store
        ldsflda valuetype T_array_98 _G::Store
        ldsfld int16 _G::Sp
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld int16 T_record_97::Va
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_readr::f
        dup
        call instance void [lpcRuntime]LPC.File::VarRead()
        ldflda uint8 [lpcRuntime]LPC.File::FileVar
        ldobj uint8
        stfld uint8 T_record_97::Vc
        .line 543
        ldsfld int16 _G::Sp
        ldc.i4 2
        sub
        dup
        ldc.i4 -1
        ldc.i4 18001
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::Sp
    
    L_Epilogue:
        ret
    }

.line 546

    .method public
    void Readc(valuetype [lpcRuntime]LPC.File& f)
    {
        .maxstack 32
    
        .locals init(class @callsp_readc _F,
            valuetype [lpcRuntime]LPC.File& pinned $f)
        
        newobj instance void @callsp_readc::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @callsp @callsp_readc::_slink
        
        ldarg f
        stloc $f
        
        ldloc _F
        ldarg f
        stfld valuetype [lpcRuntime]LPC.File* @callsp_readc::f
    
    L_Entry:
        .line 548
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_readc::f
        dup
        ldloc _F
        ldflda uint8 @callsp_readc::c
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        pop
        .line 549
        ldloc _F
        ldsflda valuetype T_array_98 _G::Store
        ldsfld int16 _G::Sp
        ldc.i4 1
        sub
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld int16 T_record_97::Va
        stfld int16 @callsp_readc::Ad
        .line 550
        ldsflda valuetype T_array_98 _G::Store
        ldloc _F
        ldfld int16 @callsp_readc::Ad
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldloc _F
        ldfld uint8 @callsp_readc::c
        stfld uint8 T_record_97::Vc
        .line 551
        ldsflda valuetype T_array_98 _G::Store
        ldsflda valuetype T_array_98 _G::Store
        ldsfld int16 _G::Sp
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld int16 T_record_97::Va
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_readc::f
        dup
        call instance void [lpcRuntime]LPC.File::VarRead()
        ldflda uint8 [lpcRuntime]LPC.File::FileVar
        ldobj uint8
        stfld uint8 T_record_97::Vc
        .line 552
        ldsflda valuetype T_array_98 _G::Store
        ldsflda valuetype T_array_98 _G::Store
        ldsfld int16 _G::Sp
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld int16 T_record_97::Va
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_readc::f
        dup
        call instance void [lpcRuntime]LPC.File::VarRead()
        ldflda uint8 [lpcRuntime]LPC.File::FileVar
        ldobj uint8
        stfld int32 T_record_97::Vi
        .line 553
        ldsfld int16 _G::Sp
        ldc.i4 2
        sub
        dup
        ldc.i4 -1
        ldc.i4 18001
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::Sp
    
    L_Epilogue:
        ret
    }

.line 556

    .method public
    void Writestr(valuetype [lpcRuntime]LPC.File& f)
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
        
        ldarg f
        stloc $f
        
        ldloc _F
        ldarg f
        stfld valuetype [lpcRuntime]LPC.File* @callsp_writestr::f
    
    L_Entry:
        .line 559
        ldloc _F
        ldsflda valuetype T_array_98 _G::Store
        ldsfld int16 _G::Sp
        ldc.i4 3
        sub
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld int16 T_record_97::Va
        stfld int16 @callsp_writestr::Ad
        .line 560
        ldloc _F
        ldsflda valuetype T_array_98 _G::Store
        ldsfld int16 _G::Sp
        ldc.i4 2
        sub
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld int32 T_record_97::Vi
        stfld int32 @callsp_writestr::k
        .line 560
        ldloc _F
        ldsflda valuetype T_array_98 _G::Store
        ldsfld int16 _G::Sp
        ldc.i4 1
        sub
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld int32 T_record_97::Vi
        stfld int32 @callsp_writestr::j
        .line 562
        ldloc _F
        ldfld int32 @callsp_writestr::k
        ldloc _F
        ldfld int32 @callsp_writestr::j
        cgt
        brfalse L_else_1
        .line 562
        ldloc _F
        ldfld int32 @callsp_writestr::k
        ldloc _F
        ldfld int32 @callsp_writestr::j
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
        .line 562
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
        .line 563
        ldloc _F
        ldloc _F
        ldfld int32 @callsp_writestr::k
        stfld int32 @callsp_writestr::j
    L_if_end_2:
        .line 564
        ldloc _F
        ldfld int32 @callsp_writestr::j
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
        .line 564
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_writestr::f
        dup
        ldsflda valuetype T_array_98 _G::Store
        ldloc _F
        ldfld int16 @callsp_writestr::Ad
        ldloc _F
        ldfld int32 @callsp_writestr::i
        add
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld uint8 T_record_97::Vc
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
        .line 565
        ldsfld int16 _G::Sp
        ldc.i4 4
        sub
        dup
        ldc.i4 -1
        ldc.i4 18001
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::Sp
    
    L_Epilogue:
        ret
    }

.line 568

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
        .line 570
        ldloc _F
        ldsflda valuetype T_array_98 _G::Store
        ldsfld int16 _G::Sp
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld int16 T_record_97::Va
        stfld int16 @callsp_getfile::Ad
        .line 571
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_getfile::f
        call instance void [lpcRuntime]LPC.File::Get()
        .line 571
        ldsflda valuetype T_array_98 _G::Store
        ldloc _F
        ldfld int16 @callsp_getfile::Ad
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_getfile::f
        dup
        call instance void [lpcRuntime]LPC.File::VarRead()
        ldflda uint8 [lpcRuntime]LPC.File::FileVar
        ldobj uint8
        stfld uint8 T_record_97::Vc
        .line 572
        ldsfld int16 _G::Sp
        ldc.i4 1
        sub
        dup
        ldc.i4 -1
        ldc.i4 18001
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::Sp
    
    L_Epilogue:
        ret
    }

.line 575

    .method public
    void Putfile(valuetype [lpcRuntime]LPC.File& f)
    {
        .maxstack 32
    
        .locals init(class @callsp_putfile _F,
            valuetype [lpcRuntime]LPC.File& pinned $f)
        
        newobj instance void @callsp_putfile::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @callsp @callsp_putfile::_slink
        
        ldarg f
        stloc $f
        
        ldloc _F
        ldarg f
        stfld valuetype [lpcRuntime]LPC.File* @callsp_putfile::f
    
    L_Entry:
        .line 577
        ldloc _F
        ldsflda valuetype T_array_98 _G::Store
        ldsfld int16 _G::Sp
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld int16 T_record_97::Va
        stfld int16 @callsp_putfile::Ad
        .line 578
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_putfile::f
        ldflda uint8 [lpcRuntime]LPC.File::FileVar
        ldsflda valuetype T_array_98 _G::Store
        ldloc _F
        ldfld int16 @callsp_putfile::Ad
        call instance valuetype T_record_97& T_array_98::ldadr(int32)
        ldfld uint8 T_record_97::Vc
        stobj uint8
        .line 578
        ldloc _F
        ldfld valuetype [lpcRuntime]LPC.File* @callsp_putfile::f
        call instance void [lpcRuntime]LPC.File::Put()
        .line 579
        ldsfld int16 _G::Sp
        ldc.i4 1
        sub
        dup
        ldc.i4 -1
        ldc.i4 18001
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stsfld int16 _G::Sp
        /* nop */
    
    L_Epilogue:
        ret
    }
}


.line 6
//================================================================================
// scope: program scope (level : 1)

// global variables
.class _G
{
    .field public static int16 Ad
    .field public static int16 Ad1
    .field public static bool b
    .field public static uint8 c
    .field public static valuetype T_array_93 Code
    .field public static valuetype T_array_86 Cop
    .field public static int16 Ep
    .field public static int32 i
    .field public static int32 I1
    .field public static int32 I2
    .field public static int32 I3
    .field public static valuetype [lpcRuntime]LPC.File Input
    .field public static valuetype T_array_1 Instr
    .field public static bool Interpreting
    .field public static int32 j
    .field public static int16 Mp
    .field public static int16 Np
    .field public static int8 Op
    .field public static valuetype [lpcRuntime]LPC.File Output
    .field public static int8 p
    .field public static int16 Pc
    .field public static valuetype [lpcRuntime]LPC.File Prd
    .field public static valuetype [lpcRuntime]LPC.File Prr
    .field public static int16 q
    .field public static int16 Sp
    .field public static valuetype T_array_64 Sptable
    .field public static valuetype T_array_98 Store
}

.line 124

.method static
void Load()
{
    .maxstack 32

    .locals init(class @load _F)
    
    newobj instance void @load::.ctor()
    stloc _F

L_Entry:
    .line 468
    ldloc _F
    call instance void @load::Init()
    .line 469
    ldloc _F
    call instance void @load::Generate()
    .line 470
    ldc.i4 0
    dup
    ldc.i4 0
    ldc.i4 17500
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Pc
    .line 471
    ldloc _F
    call instance void @load::Generate()
    /* nop */

L_Epilogue:
    ret
}

.line 476

.method static
void Pmd()
{
    .maxstack 32

    .locals init(class @pmd _F)
    
    newobj instance void @pmd::.ctor()
    stloc _F

L_Entry:
    .line 490
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " pc ="
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int16 _G::Pc
    ldc.i4 1
    sub
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " op ="
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 3
    ldc.i4.0
    ldsfld int8 _G::Op
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr "  sp ="
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int16 _G::Sp
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr "  mp ="
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int16 _G::Mp
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr "  np ="
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int16 _G::Np
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    .line 492
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 492
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr "--------------------------------------"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 494
    ldloc _F
    ldsfld int16 _G::Sp
    stfld int32 @pmd::s
    .line 494
    ldloc _F
    ldc.i4 0
    stfld int32 @pmd::i
    .line 495
    br L_while_test_2
L_while_1:
    .line 495
    ldloc _F
    call instance void @pmd::Pt()
L_while_test_2:
    ldloc _F
    ldfld int32 @pmd::s
    ldc.i4 0
    clt
    ldc.i4.0
    ceq
    brtrue L_while_1
    .line 496
    ldloc _F
    ldc.i4 13650
    stfld int32 @pmd::s
    .line 497
    br L_while_test_4
L_while_3:
    .line 497
    ldloc _F
    call instance void @pmd::Pt()
L_while_test_4:
    ldloc _F
    ldfld int32 @pmd::s
    ldsfld int16 _G::Np
    clt
    ldc.i4.0
    ceq
    brtrue L_while_3
    /* nop */

L_Epilogue:
    ret
}

.line 500

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
    .line 501
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 501
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldfld valuetype T_beta @errori::String
    call string T_beta::arrayToString(valuetype T_beta)
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 502
    call void Pmd()
    .line 502
    ldc.i4 1
    newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
    throw

L_Epilogue:
    ret
}

.line 505

.method static
int16 Base(int32 Ld)
{
    .maxstack 32

    .locals init(class @base _F)
    
    newobj instance void @base::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Ld
    stfld int32 @base::Ld

L_Entry:
    .line 507
    ldloc _F
    ldsfld int16 _G::Mp
    stfld int16 @base::Ad
    .line 508
    br L_while_test_2
L_while_1:
    .line 509
    ldloc _F
    ldsflda valuetype T_array_98 _G::Store
    ldloc _F
    ldfld int16 @base::Ad
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vm
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int16 @base::Ad
    .line 509
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
    .line 511
    ldloc _F
    ldloc _F
    ldfld int16 @base::Ad
    stfld int16 @base::_fnvalue

L_Epilogue:
    ldloc _F
    ldfld int16 @base::_fnvalue
    ret
}

.line 514

.method static
void Compare()
{
    .maxstack 32

    .locals init(class @compare _F)
    
    newobj instance void @compare::.ctor()
    stloc _F

L_Entry:
    .line 517
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    stsfld int32 _G::I1
    .line 518
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    stsfld int32 _G::I2
    .line 519
    ldc.i4 0
    stsfld int32 _G::i
    .line 519
    ldc.i4 1 // (true)
    stsfld bool _G::b
    .line 520
    br L_while_test_2
L_while_1:
    .line 521
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int32 _G::I1
    ldsfld int32 _G::i
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int32 _G::I2
    ldsfld int32 _G::i
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ceq
    brfalse L_else_3
    .line 521
    ldsfld int32 _G::i
    ldc.i4 1
    add
    stsfld int32 _G::i
    br L_if_end_4
L_else_3:
    .line 522
    ldc.i4 0 // (false)
    stsfld bool _G::b
L_if_end_4:
L_while_test_2:
    ldsfld bool _G::b
    dup
    brfalse L_AND_shortcut_5
    pop
    ldsfld int32 _G::i
    ldsfld int16 _G::q
    ceq
    ldc.i4.0
    ceq
L_AND_shortcut_5:
    brtrue L_while_1

L_Epilogue:
    ret
}

.line 526

.method static
void Callsp()
{
    .maxstack 32

    .locals init(
        class @callsp _F,
        int16 $tmpSwitchValue1,
        int16 $tmpSwitchValue2,
        int16 $tmpSwitchValue3,
        int16 $tmpSwitchValue4,
        int16 $tmpSwitchValue5,
        int16 $tmpSwitchValue6,
        int16 $tmpSwitchValue7,
        int16 $tmpSwitchValue8,
        int16 $tmpSwitchValue9,
        int16 $tmpSwitchValue10,
        int16 $tmpSwitchValue11,
        int16 $tmpSwitchValue12,
        int16 $tmpSwitchValue13)
    
    newobj instance void @callsp::.ctor()
    stloc _F

L_Entry:
    .line 583
    ldsfld int16 _G::q
    stloc $tmpSwitchValue1
    ldloc $tmpSwitchValue1
    ldc.i4 0
    bne.un L_check_case_2
    .line 584
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    stloc $tmpSwitchValue2
    ldloc $tmpSwitchValue2
    ldc.i4 5
    bne.un L_check_case_4
    .line 585
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance void @callsp::Getfile(valuetype [lpcRuntime]LPC.File& f)
    br L_case_end_3
L_check_case_4:
    ldloc $tmpSwitchValue2
    ldc.i4 6
    bne.un L_check_case_5
    .line 586
    ldsfld valuetype T_beta STRING_92    // " get on output file      "
    call void Errori(valuetype T_beta String)
    br L_case_end_3
L_check_case_5:
    ldloc $tmpSwitchValue2
    ldc.i4 7
    bne.un L_check_case_6
    .line 587
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
    call instance void @callsp::Getfile(valuetype [lpcRuntime]LPC.File& f)
    br L_case_end_3
L_check_case_6:
    ldloc $tmpSwitchValue2
    ldc.i4 8
    bne.un L_case_end_3
    .line 588
    ldsfld valuetype T_beta STRING_93    // " get on prr file         "
    call void Errori(valuetype T_beta String)
L_case_end_3:
    br L_case_end_1
L_check_case_2:
    ldloc $tmpSwitchValue1
    ldc.i4 1
    bne.un L_check_case_7
    .line 590
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    stloc $tmpSwitchValue3
    ldloc $tmpSwitchValue3
    ldc.i4 5
    bne.un L_check_case_9
    .line 591
    ldsfld valuetype T_beta STRING_94    // " put on read file        "
    call void Errori(valuetype T_beta String)
    br L_case_end_8
L_check_case_9:
    ldloc $tmpSwitchValue3
    ldc.i4 6
    bne.un L_check_case_10
    .line 592
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void @callsp::Putfile(valuetype [lpcRuntime]LPC.File& f)
    br L_case_end_8
L_check_case_10:
    ldloc $tmpSwitchValue3
    ldc.i4 7
    bne.un L_check_case_11
    .line 593
    ldsfld valuetype T_beta STRING_95    // " put on prd file         "
    call void Errori(valuetype T_beta String)
    br L_case_end_8
L_check_case_11:
    ldloc $tmpSwitchValue3
    ldc.i4 8
    bne.un L_case_end_8
    .line 594
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prr
    call instance void @callsp::Putfile(valuetype [lpcRuntime]LPC.File& f)
L_case_end_8:
    br L_case_end_1
L_check_case_7:
    ldloc $tmpSwitchValue1
    ldc.i4 2
    bne.un L_check_case_12
    .line 598
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    stsfld int16 _G::Np
    .line 598
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    br L_case_end_1
L_check_case_12:
    ldloc $tmpSwitchValue1
    ldc.i4 3
    bne.un L_check_case_13
    .line 600
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    stloc $tmpSwitchValue4
    ldloc $tmpSwitchValue4
    ldc.i4 5
    bne.un L_check_case_15
    .line 601
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 602
    ldsflda valuetype T_array_98 _G::Store
    ldc.i4 5
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    dup
    call instance void [lpcRuntime]LPC.File::VarRead()
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldobj uint8
    stfld uint8 T_record_97::Vc
    br L_case_end_14
L_check_case_15:
    ldloc $tmpSwitchValue4
    ldc.i4 6
    bne.un L_check_case_16
    .line 604
    ldsfld valuetype T_beta STRING_96    // " readln on output file   "
    call void Errori(valuetype T_beta String)
    br L_case_end_14
L_check_case_16:
    ldloc $tmpSwitchValue4
    ldc.i4 7
    bne.un L_check_case_17
    .line 605
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance void [lpcRuntime]LPC.File::ReadLn()
    .line 606
    ldsflda valuetype T_array_98 _G::Store
    ldc.i4 5
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    dup
    call instance void [lpcRuntime]LPC.File::VarRead()
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldobj uint8
    stfld uint8 T_record_97::Vc
    br L_case_end_14
L_check_case_17:
    ldloc $tmpSwitchValue4
    ldc.i4 8
    bne.un L_case_end_14
    .line 608
    ldsfld valuetype T_beta STRING_97    // " readln on prr file      "
    call void Errori(valuetype T_beta String)
L_case_end_14:
    .line 610
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    br L_case_end_1
L_check_case_13:
    ldloc $tmpSwitchValue1
    ldc.i4 4
    bne.un L_check_case_18
    .line 612
    ldsfld int16 _G::Np
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Ad
    .line 614
    ldsfld int16 _G::Ad
    ldsfld int16 _G::Ep
    cgt
    ldc.i4.0
    ceq
    brfalse L_if_end_19
    .line 615
    ldsfld valuetype T_beta STRING_98    // " store overflow          "
    call void Errori(valuetype T_beta String)
L_if_end_19:
    .line 616
    ldsfld int16 _G::Ad
    stsfld int16 _G::Np
    .line 616
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    stsfld int16 _G::Ad
    .line 617
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Ad
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsfld int16 _G::Np
    stfld int16 T_record_97::Va
    .line 618
    ldsfld int16 _G::Sp
    ldc.i4 2
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    br L_case_end_1
L_check_case_18:
    ldloc $tmpSwitchValue1
    ldc.i4 5
    bne.un L_check_case_20
    .line 620
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    stloc $tmpSwitchValue5
    ldloc $tmpSwitchValue5
    ldc.i4 5
    bne.un L_check_case_22
    .line 621
    ldsfld valuetype T_beta STRING_99    // " writeln on input file   "
    call void Errori(valuetype T_beta String)
    br L_case_end_21
L_check_case_22:
    ldloc $tmpSwitchValue5
    ldc.i4 6
    bne.un L_check_case_23
    .line 622
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    br L_case_end_21
L_check_case_23:
    ldloc $tmpSwitchValue5
    ldc.i4 7
    bne.un L_check_case_24
    .line 623
    ldsfld valuetype T_beta STRING_100    // " writeln on prd file     "
    call void Errori(valuetype T_beta String)
    br L_case_end_21
L_check_case_24:
    ldloc $tmpSwitchValue5
    ldc.i4 8
    bne.un L_case_end_21
    .line 624
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prr
    call instance void [lpcRuntime]LPC.File::WriteLn()
L_case_end_21:
    .line 626
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    br L_case_end_1
L_check_case_20:
    ldloc $tmpSwitchValue1
    ldc.i4 6
    bne.un L_check_case_25
    .line 628
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    stloc $tmpSwitchValue6
    ldloc $tmpSwitchValue6
    ldc.i4 5
    bne.un L_check_case_27
    .line 629
    ldsfld valuetype T_beta STRING_101    // " write on input file     "
    call void Errori(valuetype T_beta String)
    br L_case_end_26
L_check_case_27:
    ldloc $tmpSwitchValue6
    ldc.i4 6
    bne.un L_check_case_28
    .line 630
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void @callsp::Writestr(valuetype [lpcRuntime]LPC.File& f)
    br L_case_end_26
L_check_case_28:
    ldloc $tmpSwitchValue6
    ldc.i4 7
    bne.un L_check_case_29
    .line 631
    ldsfld valuetype T_beta STRING_102    // " write on prd file       "
    call void Errori(valuetype T_beta String)
    br L_case_end_26
L_check_case_29:
    ldloc $tmpSwitchValue6
    ldc.i4 8
    bne.un L_case_end_26
    .line 632
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prr
    call instance void @callsp::Writestr(valuetype [lpcRuntime]LPC.File& f)
L_case_end_26:
    br L_case_end_1
L_check_case_25:
    ldloc $tmpSwitchValue1
    ldc.i4 7
    bne.un L_check_case_30
    .line 634
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    stloc $tmpSwitchValue7
    ldloc $tmpSwitchValue7
    ldc.i4 5
    bne.un L_check_case_32
    .line 635
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance bool [lpcRuntime]LPC.File::Eoln()
    stfld bool @callsp::Line
    br L_case_end_31
L_check_case_32:
    ldloc $tmpSwitchValue7
    ldc.i4 6
    bne.un L_check_case_33
    .line 636
    ldsfld valuetype T_beta STRING_103    // " eoln output file        "
    call void Errori(valuetype T_beta String)
    br L_case_end_31
L_check_case_33:
    ldloc $tmpSwitchValue7
    ldc.i4 7
    bne.un L_check_case_34
    .line 637
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
    call instance bool [lpcRuntime]LPC.File::Eoln()
    stfld bool @callsp::Line
    br L_case_end_31
L_check_case_34:
    ldloc $tmpSwitchValue7
    ldc.i4 8
    bne.un L_case_end_31
    .line 638
    ldsfld valuetype T_beta STRING_104    // " eoln on prr file        "
    call void Errori(valuetype T_beta String)
L_case_end_31:
    .line 640
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldloc _F
    ldfld bool @callsp::Line
    stfld bool T_record_97::Vb
    br L_case_end_1
L_check_case_30:
    ldloc $tmpSwitchValue1
    ldc.i4 8
    bne.un L_check_case_35
    .line 642
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    stloc $tmpSwitchValue8
    ldloc $tmpSwitchValue8
    ldc.i4 5
    bne.un L_check_case_37
    .line 643
    ldsfld valuetype T_beta STRING_101    // " write on input file     "
    call void Errori(valuetype T_beta String)
    br L_case_end_36
L_check_case_37:
    ldloc $tmpSwitchValue8
    ldc.i4 6
    bne.un L_check_case_38
    .line 644
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldc.i4.0
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 2
    sub
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    br L_case_end_36
L_check_case_38:
    ldloc $tmpSwitchValue8
    ldc.i4 7
    bne.un L_check_case_39
    .line 646
    ldsfld valuetype T_beta STRING_102    // " write on prd file       "
    call void Errori(valuetype T_beta String)
    br L_case_end_36
L_check_case_39:
    ldloc $tmpSwitchValue8
    ldc.i4 8
    bne.un L_case_end_36
    .line 647
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prr
    dup
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldc.i4.0
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 2
    sub
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
L_case_end_36:
    .line 650
    ldsfld int16 _G::Sp
    ldc.i4 3
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    br L_case_end_1
L_check_case_35:
    ldloc $tmpSwitchValue1
    ldc.i4 9
    bne.un L_check_case_40
    .line 652
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    stloc $tmpSwitchValue9
    ldloc $tmpSwitchValue9
    ldc.i4 5
    bne.un L_check_case_42
    .line 653
    ldsfld valuetype T_beta STRING_101    // " write on input file     "
    call void Errori(valuetype T_beta String)
    br L_case_end_41
L_check_case_42:
    ldloc $tmpSwitchValue9
    ldc.i4 6
    bne.un L_check_case_43
    .line 654
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldc.i4.0
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 2
    sub
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    pop
    br L_case_end_41
L_check_case_43:
    ldloc $tmpSwitchValue9
    ldc.i4 7
    bne.un L_check_case_44
    .line 656
    ldsfld valuetype T_beta STRING_102    // " write on prd file       "
    call void Errori(valuetype T_beta String)
    br L_case_end_41
L_check_case_44:
    ldloc $tmpSwitchValue9
    ldc.i4 8
    bne.un L_case_end_41
    .line 657
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prr
    dup
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldc.i4.0
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 2
    sub
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    pop
L_case_end_41:
    .line 660
    ldsfld int16 _G::Sp
    ldc.i4 3
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    br L_case_end_1
L_check_case_40:
    ldloc $tmpSwitchValue1
    ldc.i4 10
    bne.un L_check_case_45
    .line 662
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    stloc $tmpSwitchValue10
    ldloc $tmpSwitchValue10
    ldc.i4 5
    bne.un L_check_case_47
    .line 663
    ldsfld valuetype T_beta STRING_101    // " write on input file     "
    call void Errori(valuetype T_beta String)
    br L_case_end_46
L_check_case_47:
    ldloc $tmpSwitchValue10
    ldc.i4 6
    bne.un L_check_case_48
    .line 664
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldc.i4.0
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 2
    sub
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld uint8 T_record_97::Vc
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    pop
    br L_case_end_46
L_check_case_48:
    ldloc $tmpSwitchValue10
    ldc.i4 7
    bne.un L_check_case_49
    .line 666
    ldsfld valuetype T_beta STRING_102    // " write on prd file       "
    call void Errori(valuetype T_beta String)
    br L_case_end_46
L_check_case_49:
    ldloc $tmpSwitchValue10
    ldc.i4 8
    bne.un L_case_end_46
    .line 667
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prr
    dup
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldc.i4.0
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 2
    sub
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, uint8)
    pop
L_case_end_46:
    .line 670
    ldsfld int16 _G::Sp
    ldc.i4 3
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    br L_case_end_1
L_check_case_45:
    ldloc $tmpSwitchValue1
    ldc.i4 11
    bne.un L_check_case_50
    .line 672
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    stloc $tmpSwitchValue11
    ldloc $tmpSwitchValue11
    ldc.i4 5
    bne.un L_check_case_52
    .line 673
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance void @callsp::Readi(valuetype [lpcRuntime]LPC.File& f)
    br L_case_end_51
L_check_case_52:
    ldloc $tmpSwitchValue11
    ldc.i4 6
    bne.un L_check_case_53
    .line 674
    ldsfld valuetype T_beta STRING_105    // " read on output file     "
    call void Errori(valuetype T_beta String)
    br L_case_end_51
L_check_case_53:
    ldloc $tmpSwitchValue11
    ldc.i4 7
    bne.un L_check_case_54
    .line 675
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
    call instance void @callsp::Readi(valuetype [lpcRuntime]LPC.File& f)
    br L_case_end_51
L_check_case_54:
    ldloc $tmpSwitchValue11
    ldc.i4 8
    bne.un L_case_end_51
    .line 676
    ldsfld valuetype T_beta STRING_106    // " read on prr file        "
    call void Errori(valuetype T_beta String)
L_case_end_51:
    br L_case_end_1
L_check_case_50:
    ldloc $tmpSwitchValue1
    ldc.i4 12
    bne.un L_check_case_55
    .line 678
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    stloc $tmpSwitchValue12
    ldloc $tmpSwitchValue12
    ldc.i4 5
    bne.un L_check_case_57
    .line 679
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance void @callsp::Readr(valuetype [lpcRuntime]LPC.File& f)
    br L_case_end_56
L_check_case_57:
    ldloc $tmpSwitchValue12
    ldc.i4 6
    bne.un L_check_case_58
    .line 680
    ldsfld valuetype T_beta STRING_105    // " read on output file     "
    call void Errori(valuetype T_beta String)
    br L_case_end_56
L_check_case_58:
    ldloc $tmpSwitchValue12
    ldc.i4 7
    bne.un L_check_case_59
    .line 681
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
    call instance void @callsp::Readr(valuetype [lpcRuntime]LPC.File& f)
    br L_case_end_56
L_check_case_59:
    ldloc $tmpSwitchValue12
    ldc.i4 8
    bne.un L_case_end_56
    .line 682
    ldsfld valuetype T_beta STRING_106    // " read on prr file        "
    call void Errori(valuetype T_beta String)
L_case_end_56:
    br L_case_end_1
L_check_case_55:
    ldloc $tmpSwitchValue1
    ldc.i4 13
    bne.un L_check_case_60
    .line 684
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    stloc $tmpSwitchValue13
    ldloc $tmpSwitchValue13
    ldc.i4 5
    bne.un L_check_case_62
    .line 685
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance void @callsp::Readc(valuetype [lpcRuntime]LPC.File& f)
    br L_case_end_61
L_check_case_62:
    ldloc $tmpSwitchValue13
    ldc.i4 6
    bne.un L_check_case_63
    .line 686
    ldsfld valuetype T_beta STRING_105    // " read on output file     "
    call void Errori(valuetype T_beta String)
    br L_case_end_61
L_check_case_63:
    ldloc $tmpSwitchValue13
    ldc.i4 7
    bne.un L_check_case_64
    .line 687
    ldloc _F
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prd
    call instance void @callsp::Readc(valuetype [lpcRuntime]LPC.File& f)
    br L_case_end_61
L_check_case_64:
    ldloc $tmpSwitchValue13
    ldc.i4 8
    bne.un L_case_end_61
    .line 688
    ldsfld valuetype T_beta STRING_106    // " read on prr file        "
    call void Errori(valuetype T_beta String)
L_case_end_61:
    br L_case_end_1
L_check_case_60:
    ldloc $tmpSwitchValue1
    ldc.i4 14
    bne.un L_check_case_65
    .line 690
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    call float64 [lpcRuntime]LPC.Helpers::Sin(float64)
    stfld float64 T_record_97::Vr
    br L_case_end_1
L_check_case_65:
    ldloc $tmpSwitchValue1
    ldc.i4 15
    bne.un L_check_case_66
    .line 691
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    call float64 [lpcRuntime]LPC.Helpers::Cos(float64)
    stfld float64 T_record_97::Vr
    br L_case_end_1
L_check_case_66:
    ldloc $tmpSwitchValue1
    ldc.i4 16
    bne.un L_check_case_67
    .line 692
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    call float64 [lpcRuntime]LPC.Helpers::Exp(float64)
    stfld float64 T_record_97::Vr
    br L_case_end_1
L_check_case_67:
    ldloc $tmpSwitchValue1
    ldc.i4 17
    bne.un L_check_case_68
    .line 693
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    call float64 [lpcRuntime]LPC.Helpers::Ln(float64)
    stfld float64 T_record_97::Vr
    br L_case_end_1
L_check_case_68:
    ldloc $tmpSwitchValue1
    ldc.i4 18
    bne.un L_check_case_69
    .line 694
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    call float64 [lpcRuntime]LPC.Helpers::Sqrt(float64)
    stfld float64 T_record_97::Vr
    br L_case_end_1
L_check_case_69:
    ldloc $tmpSwitchValue1
    ldc.i4 19
    bne.un L_check_case_70
    .line 695
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    call float64 [lpcRuntime]LPC.Helpers::Arctan(float64)
    stfld float64 T_record_97::Vr
    br L_case_end_1
L_check_case_70:
    ldloc $tmpSwitchValue1
    ldc.i4 20
    bne.un L_case_end_1
    .line 696
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    stsfld int16 _G::Ad
    .line 697
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Ad
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsfld int16 _G::Np
    stfld int16 T_record_97::Va
    .line 698
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
L_case_end_1:
    /* nop */

L_Epilogue:
    ret
}

.line 0
//================================================================================
// scope: global scope (level : 0)

.line 6

.method static
void _Program()
{
    .maxstack 32

    .locals init(
        int8 $tmpSwitchValue1,
        int8 $tmpSwitchValue2,
        int8 $tmpSwitchValue3,
        int8 $tmpSwitchValue4,
        int8 $tmpSwitchValue5,
        int8 $tmpSwitchValue6,
        int8 $tmpSwitchValue7,
        int8 $tmpSwitchValue8,
        valuetype T_set_103 $tmpSetLiteral9,
        int32 $tmpEndValue10,
        int32 $tmpIndex11,
        int32 $tmpIndex12)

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
    .line 704
    ldsflda valuetype [lpcRuntime]LPC.File _G::Prr
    call instance void [lpcRuntime]LPC.File::Rewrite()
    .line 705
    call void Load()
    .line 707
    ldc.i4 0
    dup
    ldc.i4 0
    ldc.i4 17500
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Pc
    .line 707
    ldc.i4 1
    neg
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 707
    ldc.i4 0
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Mp
    .line 707
    ldc.i4 13650 // maxstk 
    ldc.i4 1
    add
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Np
    .line 707
    ldc.i4 5
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Ep
    .line 708
    ldsflda valuetype T_array_98 _G::Store
    ldc.i4 5 // inputadr 
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    dup
    call instance void [lpcRuntime]LPC.File::VarRead()
    ldflda uint8 [lpcRuntime]LPC.File::FileVar
    ldobj uint8
    stfld uint8 T_record_97::Vc
    .line 710
    ldc.i4 1 // (true)
    stsfld bool _G::Interpreting
    .line 712
    br L_while_test_2
L_while_1:
    .line 716
    ldsfld int16 _G::Pc
    ldc.i4.1
    and
    brfalse L_else_3
    .line 717
    ldsflda valuetype T_array_93 _G::Code
    ldsfld int16 _G::Pc
    ldc.i4 2
    div
    call instance valuetype T_record_92& T_array_93::ldadr(int32)
    ldfld int8 T_record_92::Op2
    stsfld int8 _G::Op
    .line 717
    ldsflda valuetype T_array_93 _G::Code
    ldsfld int16 _G::Pc
    ldc.i4 2
    div
    call instance valuetype T_record_92& T_array_93::ldadr(int32)
    ldfld int8 T_record_92::P2
    stsfld int8 _G::p
    .line 717
    ldsflda valuetype T_array_93 _G::Code
    ldsfld int16 _G::Pc
    ldc.i4 2
    div
    call instance valuetype T_record_92& T_array_93::ldadr(int32)
    ldfld int16 T_record_92::Q2
    stsfld int16 _G::q
    br L_if_end_4
L_else_3:
    .line 719
    ldsflda valuetype T_array_93 _G::Code
    ldsfld int16 _G::Pc
    ldc.i4 2
    div
    call instance valuetype T_record_92& T_array_93::ldadr(int32)
    ldfld int8 T_record_92::Op1
    stsfld int8 _G::Op
    .line 719
    ldsflda valuetype T_array_93 _G::Code
    ldsfld int16 _G::Pc
    ldc.i4 2
    div
    call instance valuetype T_record_92& T_array_93::ldadr(int32)
    ldfld int8 T_record_92::P1
    stsfld int8 _G::p
    .line 719
    ldsflda valuetype T_array_93 _G::Code
    ldsfld int16 _G::Pc
    ldc.i4 2
    div
    call instance valuetype T_record_92& T_array_93::ldadr(int32)
    ldfld int16 T_record_92::Q1
    stsfld int16 _G::q
L_if_end_4:
    .line 721
    ldsfld int16 _G::Pc
    ldc.i4 1
    add
    dup
    ldc.i4 0
    ldc.i4 17500
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Pc
    .line 724
    ldsfld int8 _G::Op
    stloc $tmpSwitchValue1
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
    ldc.i4 0
    beq L_case_7
    br L_check_case_6
L_case_7:
    .line 727
    ldsfld int8 _G::p
    call int16 Base(int32 Ld)
    ldsfld int16 _G::q
    add
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Ad
    .line 728
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 729
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Ad
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldobj valuetype T_record_97
    stobj valuetype T_record_97
    br L_case_end_5
L_check_case_6:
    ldloc $tmpSwitchValue1
    ldc.i4 65
    beq L_case_9
    ldloc $tmpSwitchValue1
    ldc.i4 66
    beq L_case_9
    ldloc $tmpSwitchValue1
    ldc.i4 67
    beq L_case_9
    ldloc $tmpSwitchValue1
    ldc.i4 68
    beq L_case_9
    ldloc $tmpSwitchValue1
    ldc.i4 69
    beq L_case_9
    ldloc $tmpSwitchValue1
    ldc.i4 1
    beq L_case_9
    br L_check_case_8
L_case_9:
    .line 734
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 735
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::q
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldobj valuetype T_record_97
    stobj valuetype T_record_97
    br L_case_end_5
L_check_case_8:
    ldloc $tmpSwitchValue1
    ldc.i4 70
    beq L_case_11
    ldloc $tmpSwitchValue1
    ldc.i4 71
    beq L_case_11
    ldloc $tmpSwitchValue1
    ldc.i4 72
    beq L_case_11
    ldloc $tmpSwitchValue1
    ldc.i4 73
    beq L_case_11
    ldloc $tmpSwitchValue1
    ldc.i4 74
    beq L_case_11
    ldloc $tmpSwitchValue1
    ldc.i4 2
    beq L_case_11
    br L_check_case_10
L_case_11:
    .line 739
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int8 _G::p
    call int16 Base(int32 Ld)
    ldsfld int16 _G::q
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldobj valuetype T_record_97
    stobj valuetype T_record_97
    .line 740
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    br L_case_end_5
L_check_case_10:
    ldloc $tmpSwitchValue1
    ldc.i4 75
    beq L_case_13
    ldloc $tmpSwitchValue1
    ldc.i4 76
    beq L_case_13
    ldloc $tmpSwitchValue1
    ldc.i4 77
    beq L_case_13
    ldloc $tmpSwitchValue1
    ldc.i4 78
    beq L_case_13
    ldloc $tmpSwitchValue1
    ldc.i4 79
    beq L_case_13
    ldloc $tmpSwitchValue1
    ldc.i4 3
    beq L_case_13
    br L_check_case_12
L_case_13:
    .line 744
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::q
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldobj valuetype T_record_97
    stobj valuetype T_record_97
    .line 745
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    br L_case_end_5
L_check_case_12:
    ldloc $tmpSwitchValue1
    ldc.i4 4
    bne.un L_check_case_14
    .line 748
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 749
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsfld int8 _G::p
    call int16 Base(int32 Ld)
    ldsfld int16 _G::q
    add
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int16 T_record_97::Va
    br L_case_end_5
L_check_case_14:
    ldloc $tmpSwitchValue1
    ldc.i4 5
    bne.un L_check_case_15
    .line 752
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 753
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsfld int16 _G::q
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int16 T_record_97::Va
    br L_case_end_5
L_check_case_15:
    ldloc $tmpSwitchValue1
    ldc.i4 80
    beq L_case_17
    ldloc $tmpSwitchValue1
    ldc.i4 81
    beq L_case_17
    ldloc $tmpSwitchValue1
    ldc.i4 82
    beq L_case_17
    ldloc $tmpSwitchValue1
    ldc.i4 83
    beq L_case_17
    ldloc $tmpSwitchValue1
    ldc.i4 84
    beq L_case_17
    ldloc $tmpSwitchValue1
    ldc.i4 6
    beq L_case_17
    br L_check_case_16
L_case_17:
    .line 758
    ldsflda valuetype T_array_98 _G::Store
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldobj valuetype T_record_97
    stobj valuetype T_record_97
    .line 759
    ldsfld int16 _G::Sp
    ldc.i4 2
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    /* nop */
    br L_case_end_5
L_check_case_16:
    ldloc $tmpSwitchValue1
    ldc.i4 7
    bne.un L_check_case_18
    .line 762
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 763
    ldsfld int8 _G::p
    ldc.i4 1
    ceq
    brfalse L_else_19
    .line 764
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsfld int16 _G::q
    stfld int32 T_record_97::Vi
    /* nop */
    br L_if_end_20
L_else_19:
    .line 766
    ldsfld int8 _G::p
    ldc.i4 6
    ceq
    brfalse L_else_21
    .line 766
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsfld int16 _G::q
    stfld uint8 T_record_97::Vc
    br L_if_end_22
L_else_21:
    .line 768
    ldsfld int8 _G::p
    ldc.i4 3
    ceq
    brfalse L_else_23
    .line 768
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsfld int16 _G::q
    ldc.i4 1
    ceq
    stfld bool T_record_97::Vb
    br L_if_end_24
L_else_23:
    .line 769
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldc.i4 18001 // maxstr 
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int16 T_record_97::Va
L_if_end_24:
L_if_end_22:
L_if_end_20:
    br L_case_end_5
L_check_case_18:
    ldloc $tmpSwitchValue1
    ldc.i4 8
    bne.un L_check_case_25
    .line 772
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 773
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::q
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldobj valuetype T_record_97
    stobj valuetype T_record_97
    br L_case_end_5
L_check_case_25:
    ldloc $tmpSwitchValue1
    ldc.i4 85
    beq L_case_27
    ldloc $tmpSwitchValue1
    ldc.i4 86
    beq L_case_27
    ldloc $tmpSwitchValue1
    ldc.i4 87
    beq L_case_27
    ldloc $tmpSwitchValue1
    ldc.i4 88
    beq L_case_27
    ldloc $tmpSwitchValue1
    ldc.i4 89
    beq L_case_27
    ldloc $tmpSwitchValue1
    ldc.i4 9
    beq L_case_27
    br L_check_case_26
L_case_27:
    .line 777
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    ldsfld int16 _G::q
    add
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Ad
    .line 779
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Ad
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldobj valuetype T_record_97
    stobj valuetype T_record_97
    br L_case_end_5
L_check_case_26:
    ldloc $tmpSwitchValue1
    ldc.i4 90
    beq L_case_29
    ldloc $tmpSwitchValue1
    ldc.i4 91
    beq L_case_29
    ldloc $tmpSwitchValue1
    ldc.i4 92
    beq L_case_29
    ldloc $tmpSwitchValue1
    ldc.i4 93
    beq L_case_29
    ldloc $tmpSwitchValue1
    ldc.i4 94
    beq L_case_29
    ldloc $tmpSwitchValue1
    ldc.i4 10
    beq L_case_29
    br L_check_case_28
L_case_29:
    .line 783
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsfld int16 _G::q
    add
    stfld int32 T_record_97::Vi
    br L_case_end_5
L_check_case_28:
    ldloc $tmpSwitchValue1
    ldc.i4 11
    bne.un L_check_case_30
    .line 789
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 2
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsfld int8 _G::p
    call int16 Base(int32 Ld)
    stfld int32 T_record_97::Vm
    .line 791
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 3
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsfld int16 _G::Mp
    stfld int32 T_record_97::Vm
    .line 793
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 4
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsfld int16 _G::Ep
    stfld int32 T_record_97::Vm
    .line 795
    ldsfld int16 _G::Sp
    ldc.i4 5
    add
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    br L_case_end_5
L_check_case_30:
    ldloc $tmpSwitchValue1
    ldc.i4 12
    bne.un L_check_case_31
    .line 799
    ldsfld int16 _G::Sp
    ldsfld int8 _G::p
    ldc.i4 4
    add
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Mp
    .line 800
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Mp
    ldc.i4 4
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsfld int16 _G::Pc
    stfld int32 T_record_97::Vm
    .line 801
    ldsfld int16 _G::q
    dup
    ldc.i4 0
    ldc.i4 17500
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Pc
    br L_case_end_5
L_check_case_31:
    ldloc $tmpSwitchValue1
    ldc.i4 13
    bne.un L_check_case_32
    .line 804
    ldsfld int8 _G::p
    ldc.i4 1
    ceq
    brfalse L_else_33
    .line 805
    ldsfld int16 _G::Mp
    ldsfld int16 _G::q
    add
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 806
    ldsfld int16 _G::Sp
    ldsfld int16 _G::Np
    cgt
    brfalse L_if_end_35
    .line 806
    ldsfld valuetype T_beta STRING_98    // " store overflow          "
    call void Errori(valuetype T_beta String)
L_if_end_35:
    /* nop */
    br L_if_end_34
L_else_33:
    .line 809
    ldsfld int16 _G::Sp
    ldsfld int16 _G::q
    add
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Ep
    .line 810
    ldsfld int16 _G::Ep
    ldsfld int16 _G::Np
    cgt
    brfalse L_if_end_36
    .line 810
    ldsfld valuetype T_beta STRING_98    // " store overflow          "
    call void Errori(valuetype T_beta String)
L_if_end_36:
    /* nop */
L_if_end_34:
    br L_case_end_5
L_check_case_32:
    ldloc $tmpSwitchValue1
    ldc.i4 14
    bne.un L_check_case_37
    .line 814
    ldsfld int8 _G::p
    stloc $tmpSwitchValue2
    ldloc $tmpSwitchValue2
    ldc.i4 0
    bne.un L_check_case_39
    .line 815
    ldsfld int16 _G::Mp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    br L_case_end_38
L_check_case_39:
    ldloc $tmpSwitchValue2
    ldc.i4 1
    beq L_case_40
    ldloc $tmpSwitchValue2
    ldc.i4 2
    beq L_case_40
    ldloc $tmpSwitchValue2
    ldc.i4 3
    beq L_case_40
    ldloc $tmpSwitchValue2
    ldc.i4 4
    beq L_case_40
    ldloc $tmpSwitchValue2
    ldc.i4 5
    beq L_case_40
    br L_case_end_38
L_case_40:
    .line 816
    ldsfld int16 _G::Mp
    stsfld int16 _G::Sp
L_case_end_38:
    .line 818
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Mp
    ldc.i4 4
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vm
    dup
    ldc.i4 0
    ldc.i4 17500
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Pc
    .line 819
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Mp
    ldc.i4 3
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vm
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Ep
    .line 820
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Mp
    ldc.i4 2
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vm
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Mp
    /* nop */
    br L_case_end_5
L_check_case_37:
    ldloc $tmpSwitchValue1
    ldc.i4 15
    bne.un L_check_case_41
    .line 823
    call void Callsp()
    br L_case_end_5
L_check_case_41:
    ldloc $tmpSwitchValue1
    ldc.i4 16
    bne.un L_check_case_42
    .line 826
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    stsfld int32 _G::i
    .line 827
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 828
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsfld int16 _G::q
    ldsfld int32 _G::i
    mul
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    add
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int16 T_record_97::Va
    /* nop */
    br L_case_end_5
L_check_case_42:
    ldloc $tmpSwitchValue1
    ldc.i4 17
    bne.un L_check_case_43
    .line 831
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 832
    ldsfld int8 _G::p
    stloc $tmpSwitchValue3
    ldloc $tmpSwitchValue3
    ldc.i4 1
    bne.un L_check_case_45
    .line 833
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ceq
    stfld bool T_record_97::Vb
    br L_case_end_44
L_check_case_45:
    ldloc $tmpSwitchValue3
    ldc.i4 0
    bne.un L_check_case_46
    .line 834
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    ceq
    stfld bool T_record_97::Vb
    br L_case_end_44
L_check_case_46:
    ldloc $tmpSwitchValue3
    ldc.i4 6
    bne.un L_check_case_47
    .line 835
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld uint8 T_record_97::Vc
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld uint8 T_record_97::Vc
    ceq
    stfld bool T_record_97::Vb
    br L_case_end_44
L_check_case_47:
    ldloc $tmpSwitchValue3
    ldc.i4 2
    bne.un L_check_case_48
    .line 836
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    ceq
    stfld bool T_record_97::Vb
    br L_case_end_44
L_check_case_48:
    ldloc $tmpSwitchValue3
    ldc.i4 3
    bne.un L_check_case_49
    .line 837
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld bool T_record_97::Vb
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld bool T_record_97::Vb
    ceq
    stfld bool T_record_97::Vb
    br L_case_end_44
L_check_case_49:
    ldloc $tmpSwitchValue3
    ldc.i4 4
    bne.un L_check_case_50
    .line 838
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld valuetype T_settype T_record_97::Vs
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld valuetype T_settype T_record_97::Vs
    call bool _SetEqual(valuetype T_settype a, valuetype T_settype b)
    stfld bool T_record_97::Vb
    br L_case_end_44
L_check_case_50:
    ldloc $tmpSwitchValue3
    ldc.i4 5
    bne.un L_case_end_44
    .line 839
    call void Compare()
    .line 840
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsfld bool _G::b
    stfld bool T_record_97::Vb
    /* nop */
L_case_end_44:
    /* nop */
    br L_case_end_5
L_check_case_43:
    ldloc $tmpSwitchValue1
    ldc.i4 18
    bne.un L_check_case_51
    .line 845
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 846
    ldsfld int8 _G::p
    stloc $tmpSwitchValue4
    ldloc $tmpSwitchValue4
    ldc.i4 0
    bne.un L_check_case_53
    .line 847
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    ceq
    ldc.i4.0
    ceq
    stfld bool T_record_97::Vb
    br L_case_end_52
L_check_case_53:
    ldloc $tmpSwitchValue4
    ldc.i4 1
    bne.un L_check_case_54
    .line 848
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ceq
    ldc.i4.0
    ceq
    stfld bool T_record_97::Vb
    br L_case_end_52
L_check_case_54:
    ldloc $tmpSwitchValue4
    ldc.i4 6
    bne.un L_check_case_55
    .line 849
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld uint8 T_record_97::Vc
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld uint8 T_record_97::Vc
    ceq
    ldc.i4.0
    ceq
    stfld bool T_record_97::Vb
    br L_case_end_52
L_check_case_55:
    ldloc $tmpSwitchValue4
    ldc.i4 2
    bne.un L_check_case_56
    .line 850
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    ceq
    ldc.i4.0
    ceq
    stfld bool T_record_97::Vb
    br L_case_end_52
L_check_case_56:
    ldloc $tmpSwitchValue4
    ldc.i4 3
    bne.un L_check_case_57
    .line 851
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld bool T_record_97::Vb
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld bool T_record_97::Vb
    ceq
    ldc.i4.0
    ceq
    stfld bool T_record_97::Vb
    br L_case_end_52
L_check_case_57:
    ldloc $tmpSwitchValue4
    ldc.i4 4
    bne.un L_check_case_58
    .line 852
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld valuetype T_settype T_record_97::Vs
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld valuetype T_settype T_record_97::Vs
    call bool _SetEqual(valuetype T_settype a, valuetype T_settype b)
    ldc.i4.0
    ceq
    stfld bool T_record_97::Vb
    br L_case_end_52
L_check_case_58:
    ldloc $tmpSwitchValue4
    ldc.i4 5
    bne.un L_case_end_52
    .line 853
    call void Compare()
    .line 854
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsfld bool _G::b
    ldc.i4.0
    ceq
    stfld bool T_record_97::Vb
    /* nop */
L_case_end_52:
    /* nop */
    br L_case_end_5
L_check_case_51:
    ldloc $tmpSwitchValue1
    ldc.i4 19
    bne.un L_check_case_59
    .line 859
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 860
    ldsfld int8 _G::p
    stloc $tmpSwitchValue5
    ldloc $tmpSwitchValue5
    ldc.i4 0
    bne.un L_check_case_61
    .line 861
    ldsfld valuetype T_beta STRING_107    // " <,<=,>,>= for address   "
    call void Errori(valuetype T_beta String)
    br L_case_end_60
L_check_case_61:
    ldloc $tmpSwitchValue5
    ldc.i4 1
    bne.un L_check_case_62
    .line 862
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    clt
    ldc.i4.0
    ceq
    stfld bool T_record_97::Vb
    br L_case_end_60
L_check_case_62:
    ldloc $tmpSwitchValue5
    ldc.i4 6
    bne.un L_check_case_63
    .line 863
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld uint8 T_record_97::Vc
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld uint8 T_record_97::Vc
    clt
    ldc.i4.0
    ceq
    stfld bool T_record_97::Vb
    br L_case_end_60
L_check_case_63:
    ldloc $tmpSwitchValue5
    ldc.i4 2
    bne.un L_check_case_64
    .line 864
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    clt
    ldc.i4.0
    ceq
    stfld bool T_record_97::Vb
    br L_case_end_60
L_check_case_64:
    ldloc $tmpSwitchValue5
    ldc.i4 3
    bne.un L_check_case_65
    .line 865
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld bool T_record_97::Vb
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld bool T_record_97::Vb
    clt
    ldc.i4.0
    ceq
    stfld bool T_record_97::Vb
    br L_case_end_60
L_check_case_65:
    ldloc $tmpSwitchValue5
    ldc.i4 4
    bne.un L_check_case_66
    .line 866
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld valuetype T_settype T_record_97::Vs
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld valuetype T_settype T_record_97::Vs
    call bool _SetIsSubset(valuetype T_settype a, valuetype T_settype b)
    stfld bool T_record_97::Vb
    br L_case_end_60
L_check_case_66:
    ldloc $tmpSwitchValue5
    ldc.i4 5
    bne.un L_case_end_60
    .line 867
    call void Compare()
    .line 868
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsfld bool _G::b
    dup
    brtrue L_OR_shortcut_67
    pop
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int32 _G::I1
    ldsfld int32 _G::i
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int32 _G::I2
    ldsfld int32 _G::i
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    clt
    ldc.i4.0
    ceq
L_OR_shortcut_67:
    stfld bool T_record_97::Vb
L_case_end_60:
    /* nop */
    br L_case_end_5
L_check_case_59:
    ldloc $tmpSwitchValue1
    ldc.i4 20
    bne.un L_check_case_68
    .line 874
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 875
    ldsfld int8 _G::p
    stloc $tmpSwitchValue6
    ldloc $tmpSwitchValue6
    ldc.i4 0
    bne.un L_check_case_70
    .line 876
    ldsfld valuetype T_beta STRING_107    // " <,<=,>,>= for address   "
    call void Errori(valuetype T_beta String)
    br L_case_end_69
L_check_case_70:
    ldloc $tmpSwitchValue6
    ldc.i4 1
    bne.un L_check_case_71
    .line 877
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    cgt
    stfld bool T_record_97::Vb
    br L_case_end_69
L_check_case_71:
    ldloc $tmpSwitchValue6
    ldc.i4 6
    bne.un L_check_case_72
    .line 878
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld uint8 T_record_97::Vc
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld uint8 T_record_97::Vc
    cgt
    stfld bool T_record_97::Vb
    br L_case_end_69
L_check_case_72:
    ldloc $tmpSwitchValue6
    ldc.i4 2
    bne.un L_check_case_73
    .line 879
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    cgt
    stfld bool T_record_97::Vb
    br L_case_end_69
L_check_case_73:
    ldloc $tmpSwitchValue6
    ldc.i4 3
    bne.un L_check_case_74
    .line 880
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld bool T_record_97::Vb
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld bool T_record_97::Vb
    cgt
    stfld bool T_record_97::Vb
    br L_case_end_69
L_check_case_74:
    ldloc $tmpSwitchValue6
    ldc.i4 4
    bne.un L_check_case_75
    .line 881
    ldsfld valuetype T_beta STRING_108    // " set inclusion           "
    call void Errori(valuetype T_beta String)
    br L_case_end_69
L_check_case_75:
    ldloc $tmpSwitchValue6
    ldc.i4 5
    bne.un L_case_end_69
    .line 882
    call void Compare()
    .line 883
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsfld bool _G::b
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_76
    pop
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int32 _G::I1
    ldsfld int32 _G::i
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int32 _G::I2
    ldsfld int32 _G::i
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    cgt
L_AND_shortcut_76:
    stfld bool T_record_97::Vb
L_case_end_69:
    /* nop */
    br L_case_end_5
L_check_case_68:
    ldloc $tmpSwitchValue1
    ldc.i4 21
    bne.un L_check_case_77
    .line 889
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 890
    ldsfld int8 _G::p
    stloc $tmpSwitchValue7
    ldloc $tmpSwitchValue7
    ldc.i4 0
    bne.un L_check_case_79
    .line 891
    ldsfld valuetype T_beta STRING_107    // " <,<=,>,>= for address   "
    call void Errori(valuetype T_beta String)
    br L_case_end_78
L_check_case_79:
    ldloc $tmpSwitchValue7
    ldc.i4 1
    bne.un L_check_case_80
    .line 892
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    cgt
    ldc.i4.0
    ceq
    stfld bool T_record_97::Vb
    br L_case_end_78
L_check_case_80:
    ldloc $tmpSwitchValue7
    ldc.i4 6
    bne.un L_check_case_81
    .line 893
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld uint8 T_record_97::Vc
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld uint8 T_record_97::Vc
    cgt
    ldc.i4.0
    ceq
    stfld bool T_record_97::Vb
    br L_case_end_78
L_check_case_81:
    ldloc $tmpSwitchValue7
    ldc.i4 2
    bne.un L_check_case_82
    .line 894
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    cgt
    ldc.i4.0
    ceq
    stfld bool T_record_97::Vb
    br L_case_end_78
L_check_case_82:
    ldloc $tmpSwitchValue7
    ldc.i4 3
    bne.un L_check_case_83
    .line 895
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld bool T_record_97::Vb
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld bool T_record_97::Vb
    cgt
    ldc.i4.0
    ceq
    stfld bool T_record_97::Vb
    br L_case_end_78
L_check_case_83:
    ldloc $tmpSwitchValue7
    ldc.i4 4
    bne.un L_check_case_84
    .line 896
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld valuetype T_settype T_record_97::Vs
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld valuetype T_settype T_record_97::Vs
    call bool _SetIsSubset(valuetype T_settype a, valuetype T_settype b)
    stfld bool T_record_97::Vb
    br L_case_end_78
L_check_case_84:
    ldloc $tmpSwitchValue7
    ldc.i4 5
    bne.un L_case_end_78
    .line 897
    call void Compare()
    .line 898
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsfld bool _G::b
    dup
    brtrue L_OR_shortcut_85
    pop
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int32 _G::I1
    ldsfld int32 _G::i
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int32 _G::I2
    ldsfld int32 _G::i
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    cgt
    ldc.i4.0
    ceq
L_OR_shortcut_85:
    stfld bool T_record_97::Vb
L_case_end_78:
    /* nop */
    br L_case_end_5
L_check_case_77:
    ldloc $tmpSwitchValue1
    ldc.i4 22
    bne.un L_check_case_86
    .line 904
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 905
    ldsfld int8 _G::p
    stloc $tmpSwitchValue8
    ldloc $tmpSwitchValue8
    ldc.i4 0
    bne.un L_check_case_88
    .line 906
    ldsfld valuetype T_beta STRING_107    // " <,<=,>,>= for address   "
    call void Errori(valuetype T_beta String)
    br L_case_end_87
L_check_case_88:
    ldloc $tmpSwitchValue8
    ldc.i4 1
    bne.un L_check_case_89
    .line 907
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    clt
    stfld bool T_record_97::Vb
    br L_case_end_87
L_check_case_89:
    ldloc $tmpSwitchValue8
    ldc.i4 6
    bne.un L_check_case_90
    .line 908
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld uint8 T_record_97::Vc
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld uint8 T_record_97::Vc
    clt
    stfld bool T_record_97::Vb
    br L_case_end_87
L_check_case_90:
    ldloc $tmpSwitchValue8
    ldc.i4 2
    bne.un L_check_case_91
    .line 909
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    clt
    stfld bool T_record_97::Vb
    br L_case_end_87
L_check_case_91:
    ldloc $tmpSwitchValue8
    ldc.i4 3
    bne.un L_check_case_92
    .line 910
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld bool T_record_97::Vb
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld bool T_record_97::Vb
    clt
    stfld bool T_record_97::Vb
    br L_case_end_87
L_check_case_92:
    ldloc $tmpSwitchValue8
    ldc.i4 5
    bne.un L_case_end_87
    .line 911
    call void Compare()
    .line 912
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsfld bool _G::b
    ldc.i4.0
    ceq
    dup
    brfalse L_AND_shortcut_93
    pop
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int32 _G::I1
    ldsfld int32 _G::i
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int32 _G::I2
    ldsfld int32 _G::i
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    clt
L_AND_shortcut_93:
    stfld bool T_record_97::Vb
L_case_end_87:
    /* nop */
    br L_case_end_5
L_check_case_86:
    ldloc $tmpSwitchValue1
    ldc.i4 23
    bne.un L_check_case_94
    .line 918
    ldsfld int16 _G::q
    dup
    ldc.i4 0
    ldc.i4 17500
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Pc
    br L_case_end_5
L_check_case_94:
    ldloc $tmpSwitchValue1
    ldc.i4 24
    bne.un L_check_case_95
    .line 920
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld bool T_record_97::Vb
    ldc.i4.0
    ceq
    brfalse L_if_end_96
    .line 920
    ldsfld int16 _G::q
    dup
    ldc.i4 0
    ldc.i4 17500
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Pc
L_if_end_96:
    .line 921
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    br L_case_end_5
L_check_case_95:
    ldloc $tmpSwitchValue1
    ldc.i4 25
    bne.un L_check_case_97
    .line 925
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsfld int16 _G::q
    add
    dup
    ldc.i4 0
    ldc.i4 17500
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Pc
    .line 926
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    br L_case_end_5
L_check_case_97:
    ldloc $tmpSwitchValue1
    ldc.i4 95
    bne.un L_check_case_98
    .line 929
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    ldsfld int16 _G::Np
    clt
    dup
    brtrue L_OR_shortcut_99
    pop
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    ldc.i4 18001 // maxstr 
    ldsfld int16 _G::q
    sub
    cgt
L_OR_shortcut_99:
    brfalse L_if_end_100
    .line 931
    ldsfld valuetype T_beta STRING_109    // " bad pointer value       "
    call void Errori(valuetype T_beta String)
L_if_end_100:
    br L_case_end_5
L_check_case_98:
    ldloc $tmpSwitchValue1
    ldc.i4 96
    beq L_case_102
    ldloc $tmpSwitchValue1
    ldc.i4 97
    beq L_case_102
    ldloc $tmpSwitchValue1
    ldc.i4 98
    beq L_case_102
    ldloc $tmpSwitchValue1
    ldc.i4 99
    beq L_case_102
    ldloc $tmpSwitchValue1
    ldc.i4 26
    beq L_case_102
    br L_check_case_101
L_case_102:
    .line 934
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::q
    ldc.i4 1
    sub
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    clt
    dup
    brtrue L_OR_shortcut_103
    pop
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::q
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    cgt
L_OR_shortcut_103:
    brfalse L_if_end_104
    .line 936
    ldsfld valuetype T_beta STRING_110    // " value out of range      "
    call void Errori(valuetype T_beta String)
L_if_end_104:
    br L_case_end_5
L_check_case_101:
    ldloc $tmpSwitchValue1
    ldc.i4 27
    bne.un L_check_case_105
    .line 938
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    stsfld int32 _G::i
    .line 939
    ldsfld int32 _G::i
    ldc.i4 5 // inputadr 
    ceq
    brfalse L_else_106
    .line 940
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    call instance bool [lpcRuntime]LPC.File::Eof()
    stfld bool T_record_97::Vb
    /* nop */
    br L_if_end_107
L_else_106:
    .line 941
    ldsfld valuetype T_beta STRING_111    // " code in error           "
    call void Errori(valuetype T_beta String)
L_if_end_107:
    br L_case_end_5
L_check_case_105:
    ldloc $tmpSwitchValue1
    ldc.i4 28
    bne.un L_check_case_108
    .line 944
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 945
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    add
    stfld int32 T_record_97::Vi
    br L_case_end_5
L_check_case_108:
    ldloc $tmpSwitchValue1
    ldc.i4 29
    bne.un L_check_case_109
    .line 948
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 949
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    add
    stfld float64 T_record_97::Vr
    br L_case_end_5
L_check_case_109:
    ldloc $tmpSwitchValue1
    ldc.i4 30
    bne.un L_check_case_110
    .line 952
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 953
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    sub
    stfld int32 T_record_97::Vi
    br L_case_end_5
L_check_case_110:
    ldloc $tmpSwitchValue1
    ldc.i4 31
    bne.un L_check_case_111
    .line 956
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 957
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    sub
    stfld float64 T_record_97::Vr
    br L_case_end_5
L_check_case_111:
    ldloc $tmpSwitchValue1
    ldc.i4 32
    bne.un L_check_case_112
    .line 960
    ldloca $tmpSetLiteral9
    call instance void T_set_103::clear()
    ldloca $tmpSetLiteral9
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    call instance void T_set_103::addValue(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldloc $tmpSetLiteral9
    dup
    ldc.i4 0
    ldc.i4 58
    call void _SetCheck(valuetype T_set_103 s, int32 min, int32 max)
    call valuetype T_settype _SetCastTo_T_settype(valuetype T_set_103 s)
    stfld valuetype T_settype T_record_97::Vs
    br L_case_end_5
L_check_case_112:
    ldloc $tmpSwitchValue1
    ldc.i4 33
    bne.un L_check_case_113
    .line 962
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    conv.r8
    stfld float64 T_record_97::Vr
    br L_case_end_5
L_check_case_113:
    ldloc $tmpSwitchValue1
    ldc.i4 34
    bne.un L_check_case_114
    .line 964
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    conv.r8
    stfld float64 T_record_97::Vr
    br L_case_end_5
L_check_case_114:
    ldloc $tmpSwitchValue1
    ldc.i4 35
    bne.un L_check_case_115
    .line 966
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    call int32 [lpcRuntime]LPC.Helpers::Trunc(float64)
    stfld int32 T_record_97::Vi
    br L_case_end_5
L_check_case_115:
    ldloc $tmpSwitchValue1
    ldc.i4 36
    bne.un L_check_case_116
    .line 968
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    neg
    stfld int32 T_record_97::Vi
    br L_case_end_5
L_check_case_116:
    ldloc $tmpSwitchValue1
    ldc.i4 37
    bne.un L_check_case_117
    .line 970
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    neg
    stfld float64 T_record_97::Vr
    br L_case_end_5
L_check_case_117:
    ldloc $tmpSwitchValue1
    ldc.i4 38
    bne.un L_check_case_118
    .line 972
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    dup
    mul
    stfld int32 T_record_97::Vi
    br L_case_end_5
L_check_case_118:
    ldloc $tmpSwitchValue1
    ldc.i4 39
    bne.un L_check_case_119
    .line 974
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    dup
    mul
    stfld float64 T_record_97::Vr
    br L_case_end_5
L_check_case_119:
    ldloc $tmpSwitchValue1
    ldc.i4 40
    bne.un L_check_case_120
    .line 976
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    dup
    ldc.i4 0
    bge L_abs_question_121
    neg
L_abs_question_121:
    stfld int32 T_record_97::Vi
    br L_case_end_5
L_check_case_120:
    ldloc $tmpSwitchValue1
    ldc.i4 41
    bne.un L_check_case_122
    .line 978
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    dup
    ldc.r8 0
    bge L_abs_question_123
    neg
L_abs_question_123:
    stfld float64 T_record_97::Vr
    br L_case_end_5
L_check_case_122:
    ldloc $tmpSwitchValue1
    ldc.i4 42
    bne.un L_check_case_124
    .line 980
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld bool T_record_97::Vb
    ldc.i4.0
    ceq
    stfld bool T_record_97::Vb
    br L_case_end_5
L_check_case_124:
    ldloc $tmpSwitchValue1
    ldc.i4 43
    bne.un L_check_case_125
    .line 982
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 983
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld bool T_record_97::Vb
    dup
    brfalse L_AND_shortcut_126
    pop
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld bool T_record_97::Vb
L_AND_shortcut_126:
    stfld bool T_record_97::Vb
    br L_case_end_5
L_check_case_125:
    ldloc $tmpSwitchValue1
    ldc.i4 44
    bne.un L_check_case_127
    .line 986
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 987
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld bool T_record_97::Vb
    dup
    brtrue L_OR_shortcut_128
    pop
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld bool T_record_97::Vb
L_OR_shortcut_128:
    stfld bool T_record_97::Vb
    br L_case_end_5
L_check_case_127:
    ldloc $tmpSwitchValue1
    ldc.i4 45
    bne.un L_check_case_129
    .line 990
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 991
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld valuetype T_settype T_record_97::Vs
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld valuetype T_settype T_record_97::Vs
    call valuetype T_settype _SetDifference(valuetype T_settype a, valuetype T_settype b)
    stfld valuetype T_settype T_record_97::Vs
    br L_case_end_5
L_check_case_129:
    ldloc $tmpSwitchValue1
    ldc.i4 46
    bne.un L_check_case_130
    .line 994
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 995
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld valuetype T_settype T_record_97::Vs
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld valuetype T_settype T_record_97::Vs
    call valuetype T_settype _SetIntersection(valuetype T_settype a, valuetype T_settype b)
    stfld valuetype T_settype T_record_97::Vs
    br L_case_end_5
L_check_case_130:
    ldloc $tmpSwitchValue1
    ldc.i4 47
    bne.un L_check_case_131
    .line 998
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 999
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld valuetype T_settype T_record_97::Vs
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld valuetype T_settype T_record_97::Vs
    call valuetype T_settype _SetUnion(valuetype T_settype a, valuetype T_settype b)
    stfld valuetype T_settype T_record_97::Vs
    br L_case_end_5
L_check_case_131:
    ldloc $tmpSwitchValue1
    ldc.i4 48
    bne.un L_check_case_132
    .line 1003
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 1003
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    stsfld int32 _G::i
    .line 1004
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld valuetype T_settype T_record_97::Vs
    ldsfld int32 _G::i
    call bool _SetContains(valuetype T_settype s, int32 val)
    stfld bool T_record_97::Vb
    /* nop */
    br L_case_end_5
L_check_case_132:
    ldloc $tmpSwitchValue1
    ldc.i4 49
    bne.un L_check_case_133
    .line 1007
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 1008
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    call int32 [lpcRuntime]LPC.Helpers::Mod(int32, int32)
    stfld int32 T_record_97::Vi
    br L_case_end_5
L_check_case_133:
    ldloc $tmpSwitchValue1
    ldc.i4 50
    bne.un L_check_case_134
    .line 1011
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldc.i4.1
    and
    stfld bool T_record_97::Vb
    br L_case_end_5
L_check_case_134:
    ldloc $tmpSwitchValue1
    ldc.i4 51
    bne.un L_check_case_135
    .line 1013
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 1014
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    mul
    stfld int32 T_record_97::Vi
    br L_case_end_5
L_check_case_135:
    ldloc $tmpSwitchValue1
    ldc.i4 52
    bne.un L_check_case_136
    .line 1017
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 1018
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    mul
    stfld float64 T_record_97::Vr
    br L_case_end_5
L_check_case_136:
    ldloc $tmpSwitchValue1
    ldc.i4 53
    bne.un L_check_case_137
    .line 1021
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 1022
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    div
    stfld int32 T_record_97::Vi
    br L_case_end_5
L_check_case_137:
    ldloc $tmpSwitchValue1
    ldc.i4 54
    bne.un L_check_case_138
    .line 1025
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 1026
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld float64 T_record_97::Vr
    div
    stfld float64 T_record_97::Vr
    br L_case_end_5
L_check_case_138:
    ldloc $tmpSwitchValue1
    ldc.i4 55
    bne.un L_check_case_139
    .line 1029
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    ldc.i4 1
    sub
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    stsfld int32 _G::I1
    .line 1030
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int16 T_record_97::Va
    stsfld int32 _G::I2
    .line 1030
    ldsfld int16 _G::Sp
    ldc.i4 2
    sub
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 1031
    ldsfld int16 _G::q
    ldc.i4 1
    sub
    stloc $tmpEndValue10
    ldc.i4 0
    dup
    ldloc $tmpEndValue10
    bgt L_for_end_141
    stloc $tmpIndex11
    ldloc $tmpIndex11
    stsfld int32 _G::I3
L_for_loop_140:
    .line 1031
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int32 _G::I1
    ldsfld int32 _G::I3
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int32 _G::I2
    ldsfld int32 _G::I3
    add
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldobj valuetype T_record_97
    stobj valuetype T_record_97
    ldsfld int32 _G::I3
    dup
    ldloc $tmpEndValue10
    beq L_for_end_141
    ldc.i4.1
    add
    stloc $tmpIndex12
    ldloc $tmpIndex12
    stsfld int32 _G::I3
    br L_for_loop_140
L_for_end_141:
    pop
    br L_case_end_5
L_check_case_139:
    ldloc $tmpSwitchValue1
    ldc.i4 56
    bne.un L_check_case_142
    .line 1035
    ldsfld int16 _G::Sp
    ldc.i4 1
    add
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::Sp
    .line 1036
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsfld int16 _G::q
    dup
    ldc.i4 -1
    ldc.i4 18001
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int16 T_record_97::Va
    /* nop */
    br L_case_end_5
L_check_case_142:
    ldloc $tmpSwitchValue1
    ldc.i4 100
    beq L_case_144
    ldloc $tmpSwitchValue1
    ldc.i4 101
    beq L_case_144
    ldloc $tmpSwitchValue1
    ldc.i4 102
    beq L_case_144
    ldloc $tmpSwitchValue1
    ldc.i4 103
    beq L_case_144
    ldloc $tmpSwitchValue1
    ldc.i4 104
    beq L_case_144
    ldloc $tmpSwitchValue1
    ldc.i4 57
    beq L_case_144
    br L_check_case_143
L_case_144:
    .line 1040
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldsflda valuetype T_array_98 _G::Store
    ldsfld int16 _G::Sp
    call instance valuetype T_record_97& T_array_98::ldadr(int32)
    ldfld int32 T_record_97::Vi
    ldsfld int16 _G::q
    sub
    stfld int32 T_record_97::Vi
    br L_case_end_5
L_check_case_143:
    ldloc $tmpSwitchValue1
    ldc.i4 58
    bne.un L_check_case_145
    .line 1042
    ldc.i4 0 // (false)
    stsfld bool _G::Interpreting
    br L_case_end_5
L_check_case_145:
    ldloc $tmpSwitchValue1
    ldc.i4 59
    bne.un L_check_case_146
    /* nop */
    br L_case_end_5
L_check_case_146:
    ldloc $tmpSwitchValue1
    ldc.i4 60
    bne.un L_check_case_147
    /* nop */
    br L_case_end_5
L_check_case_147:
    ldloc $tmpSwitchValue1
    ldc.i4 61
    bne.un L_case_end_5
    .line 1051
    ldsfld valuetype T_beta STRING_112    // " case - error            "
    call void Errori(valuetype T_beta String)
L_case_end_5:
L_while_test_2:
    ldsfld bool _G::Interpreting
    brtrue L_while_1
L_1:
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

.line 0xfeefee

//================================================================================
// internal helpers

.method static bool _SetContains(valuetype T_settype s, int32 val)
{
    ldarga s
    ldc.i4 8
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static bool _SetEqual(valuetype T_settype a, valuetype T_settype b)
{
    ldarga a
    ldarga b
    ldc.i4 8
    call bool [lpcRuntime]LPC.Set::Equal(uint8*, uint8*, int32)
    ret
}

.method static bool _SetIsSubset(valuetype T_settype a, valuetype T_settype b)
{
    ldarga a
    ldarga b
    ldc.i4 8
    call bool [lpcRuntime]LPC.Set::IsSubset(uint8*, uint8*, int32)
    ret
}

.method static valuetype T_set_103 _SetCastTo_T_set_103(valuetype T_settype s)
{
    .locals init (valuetype T_set_103 result)

    ldloca result
    ldarga s
    ldc.i4 8
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_103 _SetUnion(valuetype T_set_103 a, valuetype T_set_103 b)
{
    .locals init (valuetype T_set_103 result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 32
    call void [lpcRuntime]LPC.Set::Union(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_settype _SetCastTo_T_settype(valuetype T_set_103 s)
{
    .locals init (valuetype T_settype result)

    ldloca result
    ldarga s
    ldc.i4 8
    cpblk
    ldloc result
    ret
}

.method static valuetype T_settype _SetDifference(valuetype T_settype a, valuetype T_settype b)
{
    .locals init (valuetype T_settype result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 8
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
    ldc.i4 8
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
    ldc.i4 8
    call void [lpcRuntime]LPC.Set::Union(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static void _SetCheck(valuetype T_set_103 s, int32 min, int32 max)
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

// " <,<=,>,>= for address   "
.data STRING_107_DATA = bytearray( 20 3c 2c 3c 3d 2c 3e 2c 3e 3d 20 66 6f 72 20 61 64 64 72 65 73 73 20 20 20 )
.field static valuetype T_beta STRING_107 at STRING_107_DATA

// " bad pointer value       "
.data STRING_109_DATA = bytearray( 20 62 61 64 20 70 6f 69 6e 74 65 72 20 76 61 6c 75 65 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_109 at STRING_109_DATA

// " boundary table overflow "
.data STRING_90_DATA = bytearray( 20 62 6f 75 6e 64 61 72 79 20 74 61 62 6c 65 20 6f 76 65 72 66 6c 6f 77 20 )
.field static valuetype T_beta STRING_90 at STRING_90_DATA

// " case - error            "
.data STRING_112_DATA = bytearray( 20 63 61 73 65 20 2d 20 65 72 72 6f 72 20 20 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_112 at STRING_112_DATA

// " code in error           "
.data STRING_111_DATA = bytearray( 20 63 6f 64 65 20 69 6e 20 65 72 72 6f 72 20 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_111 at STRING_111_DATA

// " duplicated label        "
.data STRING_84_DATA = bytearray( 20 64 75 70 6c 69 63 61 74 65 64 20 6c 61 62 65 6c 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_84 at STRING_84_DATA

// " eoln on prr file        "
.data STRING_104_DATA = bytearray( 20 65 6f 6c 6e 20 6f 6e 20 70 72 72 20 66 69 6c 65 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_104 at STRING_104_DATA

// " eoln output file        "
.data STRING_103_DATA = bytearray( 20 65 6f 6c 6e 20 6f 75 74 70 75 74 20 66 69 6c 65 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_103 at STRING_103_DATA

// " get on output file      "
.data STRING_92_DATA = bytearray( 20 67 65 74 20 6f 6e 20 6f 75 74 70 75 74 20 66 69 6c 65 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_92 at STRING_92_DATA

// " get on prr file         "
.data STRING_93_DATA = bytearray( 20 67 65 74 20 6f 6e 20 70 72 72 20 66 69 6c 65 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_93 at STRING_93_DATA

// " illegal character       "
.data STRING_88_DATA = bytearray( 20 69 6c 6c 65 67 61 6c 20 63 68 61 72 61 63 74 65 72 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_88 at STRING_88_DATA

// " illegal instruction     "
.data STRING_85_DATA = bytearray( 20 69 6c 6c 65 67 61 6c 20 69 6e 73 74 72 75 63 74 69 6f 6e 20 20 20 20 20 )
.field static valuetype T_beta STRING_85 at STRING_85_DATA

// " integer table overflow  "
.data STRING_86_DATA = bytearray( 20 69 6e 74 65 67 65 72 20 74 61 62 6c 65 20 6f 76 65 72 66 6c 6f 77 20 20 )
.field static valuetype T_beta STRING_86 at STRING_86_DATA

// " multiple table overflow "
.data STRING_91_DATA = bytearray( 20 6d 75 6c 74 69 70 6c 65 20 74 61 62 6c 65 20 6f 76 65 72 66 6c 6f 77 20 )
.field static valuetype T_beta STRING_91 at STRING_91_DATA

// " put on prd file         "
.data STRING_95_DATA = bytearray( 20 70 75 74 20 6f 6e 20 70 72 64 20 66 69 6c 65 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_95 at STRING_95_DATA

// " put on read file        "
.data STRING_94_DATA = bytearray( 20 70 75 74 20 6f 6e 20 72 65 61 64 20 66 69 6c 65 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_94 at STRING_94_DATA

// " read on output file     "
.data STRING_105_DATA = bytearray( 20 72 65 61 64 20 6f 6e 20 6f 75 74 70 75 74 20 66 69 6c 65 20 20 20 20 20 )
.field static valuetype T_beta STRING_105 at STRING_105_DATA

// " read on prr file        "
.data STRING_106_DATA = bytearray( 20 72 65 61 64 20 6f 6e 20 70 72 72 20 66 69 6c 65 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_106 at STRING_106_DATA

// " readln on output file   "
.data STRING_96_DATA = bytearray( 20 72 65 61 64 6c 6e 20 6f 6e 20 6f 75 74 70 75 74 20 66 69 6c 65 20 20 20 )
.field static valuetype T_beta STRING_96 at STRING_96_DATA

// " readln on prr file      "
.data STRING_97_DATA = bytearray( 20 72 65 61 64 6c 6e 20 6f 6e 20 70 72 72 20 66 69 6c 65 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_97 at STRING_97_DATA

// " real table overflow     "
.data STRING_87_DATA = bytearray( 20 72 65 61 6c 20 74 61 62 6c 65 20 6f 76 65 72 66 6c 6f 77 20 20 20 20 20 )
.field static valuetype T_beta STRING_87 at STRING_87_DATA

// " set inclusion           "
.data STRING_108_DATA = bytearray( 20 73 65 74 20 69 6e 63 6c 75 73 69 6f 6e 20 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_108 at STRING_108_DATA

// " set table overflow      "
.data STRING_89_DATA = bytearray( 20 73 65 74 20 74 61 62 6c 65 20 6f 76 65 72 66 6c 6f 77 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_89 at STRING_89_DATA

// " store overflow          "
.data STRING_98_DATA = bytearray( 20 73 74 6f 72 65 20 6f 76 65 72 66 6c 6f 77 20 20 20 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_98 at STRING_98_DATA

// " value out of range      "
.data STRING_110_DATA = bytearray( 20 76 61 6c 75 65 20 6f 75 74 20 6f 66 20 72 61 6e 67 65 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_110 at STRING_110_DATA

// " write on input file     "
.data STRING_101_DATA = bytearray( 20 77 72 69 74 65 20 6f 6e 20 69 6e 70 75 74 20 66 69 6c 65 20 20 20 20 20 )
.field static valuetype T_beta STRING_101 at STRING_101_DATA

// " write on prd file       "
.data STRING_102_DATA = bytearray( 20 77 72 69 74 65 20 6f 6e 20 70 72 64 20 66 69 6c 65 20 20 20 20 20 20 20 )
.field static valuetype T_beta STRING_102 at STRING_102_DATA

// " writeln on input file   "
.data STRING_99_DATA = bytearray( 20 77 72 69 74 65 6c 6e 20 6f 6e 20 69 6e 70 75 74 20 66 69 6c 65 20 20 20 )
.field static valuetype T_beta STRING_99 at STRING_99_DATA

// " writeln on prd file     "
.data STRING_100_DATA = bytearray( 20 77 72 69 74 65 6c 6e 20 6f 6e 20 70 72 64 20 66 69 6c 65 20 20 20 20 20 )
.field static valuetype T_beta STRING_100 at STRING_100_DATA

// "...       "
.data STRING_9_DATA = bytearray( 2e 2e 2e 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_9 at STRING_9_DATA

// "abi       "
.data STRING_41_DATA = bytearray( 61 62 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_41 at STRING_41_DATA

// "abr       "
.data STRING_42_DATA = bytearray( 61 62 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_42 at STRING_42_DATA

// "adi       "
.data STRING_29_DATA = bytearray( 61 64 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_29 at STRING_29_DATA

// "adr       "
.data STRING_30_DATA = bytearray( 61 64 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_30 at STRING_30_DATA

// "and       "
.data STRING_44_DATA = bytearray( 61 6e 64 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_44 at STRING_44_DATA

// "atn       "
.data STRING_82_DATA = bytearray( 61 74 6e 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_82 at STRING_82_DATA

// "chk       "
.data STRING_27_DATA = bytearray( 63 68 6b 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_27 at STRING_27_DATA

// "chr       "
.data STRING_61_DATA = bytearray( 63 68 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_61 at STRING_61_DATA

// "cos       "
.data STRING_78_DATA = bytearray( 63 6f 73 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_78 at STRING_78_DATA

// "csp       "
.data STRING_16_DATA = bytearray( 63 73 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_16 at STRING_16_DATA

// "cup       "
.data STRING_13_DATA = bytearray( 63 75 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_13 at STRING_13_DATA

// "dec       "
.data STRING_58_DATA = bytearray( 64 65 63 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_58 at STRING_58_DATA

// "dif       "
.data STRING_46_DATA = bytearray( 64 69 66 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_46 at STRING_46_DATA

// "dvi       "
.data STRING_54_DATA = bytearray( 64 76 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_54 at STRING_54_DATA

// "dvr       "
.data STRING_55_DATA = bytearray( 64 76 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_55 at STRING_55_DATA

// "eln       "
.data STRING_70_DATA = bytearray( 65 6c 6e 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_70 at STRING_70_DATA

// "ent       "
.data STRING_14_DATA = bytearray( 65 6e 74 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_14 at STRING_14_DATA

// "eof       "
.data STRING_28_DATA = bytearray( 65 6f 66 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_28 at STRING_28_DATA

// "equ       "
.data STRING_18_DATA = bytearray( 65 71 75 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_18 at STRING_18_DATA

// "exp       "
.data STRING_79_DATA = bytearray( 65 78 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_79 at STRING_79_DATA

// "fjp       "
.data STRING_25_DATA = bytearray( 66 6a 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_25 at STRING_25_DATA

// "flo       "
.data STRING_35_DATA = bytearray( 66 6c 6f 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_35 at STRING_35_DATA

// "flt       "
.data STRING_34_DATA = bytearray( 66 6c 74 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_34 at STRING_34_DATA

// "geq       "
.data STRING_20_DATA = bytearray( 67 65 71 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_20 at STRING_20_DATA

// "get       "
.data STRING_63_DATA = bytearray( 67 65 74 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_63 at STRING_63_DATA

// "grt       "
.data STRING_21_DATA = bytearray( 67 72 74 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_21 at STRING_21_DATA

// "inc       "
.data STRING_11_DATA = bytearray( 69 6e 63 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_11 at STRING_11_DATA

// "ind       "
.data STRING_10_DATA = bytearray( 69 6e 64 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_10 at STRING_10_DATA

// "inn       "
.data STRING_49_DATA = bytearray( 69 6e 6e 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_49 at STRING_49_DATA

// "int       "
.data STRING_47_DATA = bytearray( 69 6e 74 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_47 at STRING_47_DATA

// "ior       "
.data STRING_45_DATA = bytearray( 69 6f 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_45 at STRING_45_DATA

// "ixa       "
.data STRING_17_DATA = bytearray( 69 78 61 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_17 at STRING_17_DATA

// "lao       "
.data STRING_6_DATA = bytearray( 6c 61 6f 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_6 at STRING_6_DATA

// "lca       "
.data STRING_57_DATA = bytearray( 6c 63 61 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_57 at STRING_57_DATA

// "lda       "
.data STRING_5_DATA = bytearray( 6c 64 61 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_5 at STRING_5_DATA

// "ldc       "
.data STRING_8_DATA = bytearray( 6c 64 63 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_8 at STRING_8_DATA

// "ldo       "
.data STRING_2_DATA = bytearray( 6c 64 6f 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_2 at STRING_2_DATA

// "leq       "
.data STRING_22_DATA = bytearray( 6c 65 71 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_22 at STRING_22_DATA

// "les       "
.data STRING_23_DATA = bytearray( 6c 65 73 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_23 at STRING_23_DATA

// "lod       "
.data STRING_1_DATA = bytearray( 6c 6f 64 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_1 at STRING_1_DATA

// "log       "
.data STRING_80_DATA = bytearray( 6c 6f 67 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_80 at STRING_80_DATA

// "mod       "
.data STRING_50_DATA = bytearray( 6d 6f 64 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_50 at STRING_50_DATA

// "mov       "
.data STRING_56_DATA = bytearray( 6d 6f 76 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_56 at STRING_56_DATA

// "mpi       "
.data STRING_52_DATA = bytearray( 6d 70 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_52 at STRING_52_DATA

// "mpr       "
.data STRING_53_DATA = bytearray( 6d 70 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_53 at STRING_53_DATA

// "mst       "
.data STRING_12_DATA = bytearray( 6d 73 74 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_12 at STRING_12_DATA

// "neq       "
.data STRING_19_DATA = bytearray( 6e 65 71 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_19 at STRING_19_DATA

// "new       "
.data STRING_67_DATA = bytearray( 6e 65 77 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_67 at STRING_67_DATA

// "ngi       "
.data STRING_37_DATA = bytearray( 6e 67 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_37 at STRING_37_DATA

// "ngr       "
.data STRING_38_DATA = bytearray( 6e 67 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_38 at STRING_38_DATA

// "not       "
.data STRING_43_DATA = bytearray( 6e 6f 74 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_43 at STRING_43_DATA

// "odd       "
.data STRING_51_DATA = bytearray( 6f 64 64 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_51 at STRING_51_DATA

// "ord       "
.data STRING_60_DATA = bytearray( 6f 72 64 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_60 at STRING_60_DATA

// "put       "
.data STRING_64_DATA = bytearray( 70 75 74 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_64 at STRING_64_DATA

// "rdc       "
.data STRING_76_DATA = bytearray( 72 64 63 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_76 at STRING_76_DATA

// "rdi       "
.data STRING_74_DATA = bytearray( 72 64 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_74 at STRING_74_DATA

// "rdr       "
.data STRING_75_DATA = bytearray( 72 64 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_75 at STRING_75_DATA

// "ret       "
.data STRING_15_DATA = bytearray( 72 65 74 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_15 at STRING_15_DATA

// "rln       "
.data STRING_66_DATA = bytearray( 72 6c 6e 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_66 at STRING_66_DATA

// "rst       "
.data STRING_65_DATA = bytearray( 72 73 74 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_65 at STRING_65_DATA

// "sav       "
.data STRING_83_DATA = bytearray( 73 61 76 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_83 at STRING_83_DATA

// "sbi       "
.data STRING_31_DATA = bytearray( 73 62 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_31 at STRING_31_DATA

// "sbr       "
.data STRING_32_DATA = bytearray( 73 62 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_32 at STRING_32_DATA

// "sgs       "
.data STRING_33_DATA = bytearray( 73 67 73 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_33 at STRING_33_DATA

// "sin       "
.data STRING_77_DATA = bytearray( 73 69 6e 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_77 at STRING_77_DATA

// "sqi       "
.data STRING_39_DATA = bytearray( 73 71 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_39 at STRING_39_DATA

// "sqr       "
.data STRING_40_DATA = bytearray( 73 71 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_40 at STRING_40_DATA

// "sqt       "
.data STRING_81_DATA = bytearray( 73 71 74 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_81 at STRING_81_DATA

// "sro       "
.data STRING_4_DATA = bytearray( 73 72 6f 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_4 at STRING_4_DATA

// "sto       "
.data STRING_7_DATA = bytearray( 73 74 6f 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_7 at STRING_7_DATA

// "stp       "
.data STRING_59_DATA = bytearray( 73 74 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_59 at STRING_59_DATA

// "str       "
.data STRING_3_DATA = bytearray( 73 74 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_3 at STRING_3_DATA

// "trc       "
.data STRING_36_DATA = bytearray( 74 72 63 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_36 at STRING_36_DATA

// "ujc       "
.data STRING_62_DATA = bytearray( 75 6a 63 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_62 at STRING_62_DATA

// "ujp       "
.data STRING_24_DATA = bytearray( 75 6a 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_24 at STRING_24_DATA

// "uni       "
.data STRING_48_DATA = bytearray( 75 6e 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_48 at STRING_48_DATA

// "wln       "
.data STRING_68_DATA = bytearray( 77 6c 6e 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_68 at STRING_68_DATA

// "wrc       "
.data STRING_73_DATA = bytearray( 77 72 63 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_73 at STRING_73_DATA

// "wri       "
.data STRING_71_DATA = bytearray( 77 72 69 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_71 at STRING_71_DATA

// "wrr       "
.data STRING_72_DATA = bytearray( 77 72 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_72 at STRING_72_DATA

// "wrs       "
.data STRING_69_DATA = bytearray( 77 72 73 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_69 at STRING_69_DATA

// "xjp       "
.data STRING_26_DATA = bytearray( 78 6a 70 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_26 at STRING_26_DATA


