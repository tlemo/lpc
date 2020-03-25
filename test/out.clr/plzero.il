
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

.line 0 "plzero.pas"

.line 56
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


.line 63
//================================================================================
// scope: getsym_getch (level : 3)

.line 0xfeefee

// TYPE array_1 = array [1 .. 81] of uint8;
.class value explicit T_array_1
{
    // elem size = 1
    // alignment = 1
    .size 81

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 81)
        ldarg index
        ldc.i4 81
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
        ldc.i4 81
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

.class @getsym_getch
{
    // slink
    .field public class @getsym _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 60
//================================================================================
// scope: getsym (level : 2)

.line 0xfeefee

// TYPE set_2 = set of 0 .. 255
.class value explicit T_set_2
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
        call instance void T_set_2::addValue(int32)
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

// TYPE array_4 = array [1 .. 11] of valuetype T_alfa;
.class value explicit T_array_4
{
    // elem size = 10
    // alignment = 1
    .size 110

    .field [0] public valuetype T_alfa elem

    .method public valuetype T_alfa& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 11)
        ldarg index
        ldc.i4 11
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

// TYPE array_5 = array [1 .. 11] of int32;
.class value explicit T_array_5
{
    // elem size = 4
    // alignment = 4
    .size 44

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 11)
        ldarg index
        ldc.i4 11
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

// TYPE array_8 = array [0 .. 255] of int32;
.class value explicit T_array_8
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

.class @getsym
{
    // local variables
    .field public int32 i
    .field public int32 j
    .field public int32 k

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 63

    .method public
    void Getch()
    {
        .maxstack 32
    
        .locals init(class @getsym_getch _F)
        
        newobj instance void @getsym_getch::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @getsym @getsym_getch::_slink
    
    L_Entry:
        .line 64
        ldsfld int32 _G::Cc
        ldsfld int32 _G::Ll
        ceq
        brfalse L_if_end_1
        .line 65
        ldsflda valuetype [lpcRuntime]LPC.File _G::Input
        call instance bool [lpcRuntime]LPC.File::Eof()
        brfalse L_if_end_2
        .line 66
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldstr " program incomplete"
        call instance void [lpcRuntime]LPC.File::Write(string)
        pop
        .line 66
        ldc.i4 1
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
    L_if_end_2:
        .line 68
        ldc.i4 0
        stsfld int32 _G::Ll
        .line 68
        ldc.i4 0
        stsfld int32 _G::Cc
        .line 68
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldc.i4 5
        ldc.i4.0
        ldsfld int32 _G::Cx
        call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
        dup
        ldc.i4 32 // ' '
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        pop
        .line 69
        br L_while_test_4
    L_while_3:
        .line 70
        ldsfld int32 _G::Ll
        ldc.i4 1
        add
        stsfld int32 _G::Ll
        .line 70
        ldsflda valuetype [lpcRuntime]LPC.File _G::Input
        dup
        ldsflda uint8 _G::Ch
        ldc.i4 0
        ldc.i4 255
        call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
        pop
        .line 70
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldsfld uint8 _G::Ch
        call instance void [lpcRuntime]LPC.File::Write(uint8)
        pop
        .line 70
        ldsflda valuetype T_array_1 _G::Line
        ldsfld int32 _G::Ll
        call instance uint8& T_array_1::ldadr(int32)
        ldsfld uint8 _G::Ch
        stobj uint8
    L_while_test_4:
        ldsflda valuetype [lpcRuntime]LPC.File _G::Input
        call instance bool [lpcRuntime]LPC.File::Eoln()
        ldc.i4.0
        ceq
        brtrue L_while_3
        .line 72
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 72
        ldsflda valuetype [lpcRuntime]LPC.File _G::Input
        call instance void [lpcRuntime]LPC.File::ReadLn()
        .line 72
        ldsfld int32 _G::Ll
        ldc.i4 1
        add
        stsfld int32 _G::Ll
        .line 72
        ldsflda valuetype T_array_1 _G::Line
        ldsfld int32 _G::Ll
        call instance uint8& T_array_1::ldadr(int32)
        ldc.i4 32 // ' '
        stobj uint8
        /* nop */
    L_if_end_1:
        .line 74
        ldsfld int32 _G::Cc
        ldc.i4 1
        add
        stsfld int32 _G::Cc
        .line 74
        ldsflda valuetype T_array_1 _G::Line
        ldsfld int32 _G::Cc
        call instance uint8& T_array_1::ldadr(int32)
        ldobj uint8
        stsfld uint8 _G::Ch
    
    L_Epilogue:
        ret
    }
}


.line 113
//================================================================================
// scope: gen (level : 2)

.line 0xfeefee

// TYPE instruction = record;
.class value explicit T_instruction
{
    // alignment = 4
    .size 8
    
    .field [0] public int32 f
    .field [4] public int8 l
    .field [6] public int16 a
}

.line 0xfeefee

// TYPE array_11 = array [0 .. 200] of valuetype T_instruction;
.class value explicit T_array_11
{
    // elem size = 8
    // alignment = 4
    .size 1608

    .field [0] public valuetype T_instruction elem

    .method public valuetype T_instruction& ldadr(int32 index)
    {
        // check(index >= 0)
        ldarg index
        ldc.i4 0
        blt badIndex
    
        // check(index <= 200)
        ldarg index
        ldc.i4 200
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

.class @gen
{
    // parameters
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


.line 123
//================================================================================
// scope: test (level : 2)

.line 0xfeefee

// TYPE symset = set of 0 .. 29
.class value explicit T_symset
{
    .field [0] public uint32 bits0

    .method public void addValue(int32 val)
    {
        // check(value >= 0)
        ldarg val
        ldc.i4 0
        blt badValue
    
        // check(value <= 29)
        ldarg val
        ldc.i4 29
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
        ldc.i4 4
        initblk
        ret
    
    }
}

.class @test
{
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


.line 134
//================================================================================
// scope: block_enter (level : 3)

.line 0xfeefee

// TYPE record_12 = record;
.class value explicit T_record_12
{
    // alignment = 4
    .size 40
    
    .field [0] public valuetype T_alfa Name
    
    // variable fields selector
    .field [12] public int32 Kind
    
    // case constant = 0
        
        .field [16] public int32 Val
    
    // case varible = 1
    // case proc = 2
        
        .field [16] public int32 Level
        .field [20] public int32 Adr
}

.line 0xfeefee

// TYPE array_13 = array [0 .. 100] of valuetype T_record_12;
.class value explicit T_array_13
{
    // elem size = 40
    // alignment = 4
    .size 4040

    .field [0] public valuetype T_record_12 elem

    .method public valuetype T_record_12& ldadr(int32 index)
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

.class @block_enter
{
    // slink
    .field public class @block _slink

    // parameters
    .field public int32 k

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 151
//================================================================================
// scope: block_position (level : 3)

.class @block_position
{
    // slink
    .field public class @block _slink

    // parameters
    .field public valuetype T_alfa Id

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


.line 159
//================================================================================
// scope: block_constdeclaration (level : 3)

.class @block_constdeclaration
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


.line 173
//================================================================================
// scope: block_vardeclaration (level : 3)

.class @block_vardeclaration
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


.line 179
//================================================================================
// scope: block_listcode (level : 3)

.line 0xfeefee

// TYPE array_15 = array [1 .. 5] of uint8;
.class value explicit T_array_15
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

    .method public static string arrayToString(valuetype T_array_15)
    {
        ldarga 0
        ldc.i4.0
        ldc.i4 5
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

.line 0xfeefee

// TYPE array_16 = array [0 .. 7] of valuetype T_array_15;
.class value explicit T_array_16
{
    // elem size = 5
    // alignment = 1
    .size 40

    .field [0] public valuetype T_array_15 elem

    .method public valuetype T_array_15& ldadr(int32 index)
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

.class @block_listcode
{
    // slink
    .field public class @block _slink

    // local variables
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 193
//================================================================================
// scope: block_statement_expression_term_factor (level : 6)

.class @block_statement_expression_term_factor
{
    // slink
    .field public class @block_statement_expression_term _slink

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
}


.line 191
//================================================================================
// scope: block_statement_expression_term (level : 5)

.class @block_statement_expression_term
{
    // slink
    .field public class @block_statement_expression _slink

    // parameters
    .field public valuetype T_symset Fsys

    // local variables
    .field public int32 Mulop

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 193

    .method public
    void Factor(valuetype T_symset Fsys)
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_expression_term_factor _F,
            int32 $tmpSwitchValue1,
            valuetype T_symset $tmpSetLiteral2,
            valuetype T_symset $tmpSetLiteral3)
        
        newobj instance void @block_statement_expression_term_factor::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement_expression_term @block_statement_expression_term_factor::_slink
        
        ldloc _F
        ldarg Fsys
        stfld valuetype T_symset @block_statement_expression_term_factor::Fsys
    
        ldloca $tmpSetLiteral2
        ldc.i4 15
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral3
        ldc.i4 14
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 195
        ldsfld valuetype T_symset _G::Facbegsys
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression_term_factor::Fsys
        ldc.i4 24
        call void Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
        .line 196
        br L_while_test_2
    L_while_1:
        .line 198
        ldsfld int32 _G::Sym
        ldc.i4 1
        ceq
        brfalse L_else_3
        .line 199
        ldloc _F
        ldloc _F
        ldfld class @block_statement_expression_term @block_statement_expression_term_factor::_slink
        ldfld class @block_statement_expression @block_statement_expression_term::_slink
        ldfld class @block_statement @block_statement_expression::_slink
        ldfld class @block @block_statement::_slink
        ldsfld valuetype T_alfa _G::Id
        call instance int32 @block::Position(valuetype T_alfa Id)
        stfld int32 @block_statement_expression_term_factor::i
        .line 200
        ldloc _F
        ldfld int32 @block_statement_expression_term_factor::i
        ldc.i4 0
        ceq
        brfalse L_else_5
        .line 200
        ldc.i4 11
        call void Error(int32 n)
        br L_if_end_6
    L_else_5:
        .line 202
        ldsflda valuetype T_array_13 _G::Table
        ldloc _F
        ldfld int32 @block_statement_expression_term_factor::i
        call instance valuetype T_record_12& T_array_13::ldadr(int32)
        ldfld int32 T_record_12::Kind
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 0
        bne.un L_check_case_8
        .line 203
        ldc.i4 0
        ldc.i4 0
        ldsflda valuetype T_array_13 _G::Table
        ldloc _F
        ldfld int32 @block_statement_expression_term_factor::i
        call instance valuetype T_record_12& T_array_13::ldadr(int32)
        ldfld int32 T_record_12::Val
        call void Gen(int32 x, int32 y, int32 z)
        br L_case_end_7
    L_check_case_8:
        ldloc $tmpSwitchValue1
        ldc.i4 1
        bne.un L_check_case_9
        .line 204
        ldc.i4 2
        ldloc _F
        ldfld class @block_statement_expression_term @block_statement_expression_term_factor::_slink
        ldfld class @block_statement_expression @block_statement_expression_term::_slink
        ldfld class @block_statement @block_statement_expression::_slink
        ldfld class @block @block_statement::_slink
        ldfld int32 @block::Lev
        ldsflda valuetype T_array_13 _G::Table
        ldloc _F
        ldfld int32 @block_statement_expression_term_factor::i
        call instance valuetype T_record_12& T_array_13::ldadr(int32)
        ldfld int32 T_record_12::Level
        sub
        ldsflda valuetype T_array_13 _G::Table
        ldloc _F
        ldfld int32 @block_statement_expression_term_factor::i
        call instance valuetype T_record_12& T_array_13::ldadr(int32)
        ldfld int32 T_record_12::Adr
        call void Gen(int32 x, int32 y, int32 z)
        br L_case_end_7
    L_check_case_9:
        ldloc $tmpSwitchValue1
        ldc.i4 2
        bne.un L_case_end_7
        .line 205
        ldc.i4 21
        call void Error(int32 n)
    L_case_end_7:
    L_if_end_6:
        .line 207
        call void Getsym()
        br L_if_end_4
    L_else_3:
        .line 209
        ldsfld int32 _G::Sym
        ldc.i4 2
        ceq
        brfalse L_else_10
        .line 210
        ldsfld int32 _G::Num
        ldc.i4 2047
        cgt
        brfalse L_if_end_12
        .line 211
        ldc.i4 30
        call void Error(int32 n)
        .line 211
        ldc.i4 0
        stsfld int32 _G::Num
    L_if_end_12:
        .line 213
        ldc.i4 0
        ldc.i4 0
        ldsfld int32 _G::Num
        call void Gen(int32 x, int32 y, int32 z)
        .line 213
        call void Getsym()
        br L_if_end_11
    L_else_10:
        .line 215
        ldsfld int32 _G::Sym
        ldc.i4 14
        ceq
        brfalse L_if_end_13
        .line 216
        call void Getsym()
        .line 216
        ldloc _F
        ldfld class @block_statement_expression_term @block_statement_expression_term_factor::_slink
        ldfld class @block_statement_expression @block_statement_expression_term::_slink
        ldfld class @block_statement @block_statement_expression::_slink
        ldloc $tmpSetLiteral2
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression_term_factor::Fsys
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        call valuetype T_set_2 _SetUnion(valuetype T_set_2 a, valuetype T_set_2 b)
        dup
        ldc.i4 0
        ldc.i4 29
        call void _SetCheck(valuetype T_set_2 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_2 s)
        call instance void @block_statement::Expression(valuetype T_symset Fsys)
        .line 217
        ldsfld int32 _G::Sym
        ldc.i4 15
        ceq
        brfalse L_else_14
        .line 217
        call void Getsym()
        br L_if_end_15
    L_else_14:
        .line 217
        ldc.i4 22
        call void Error(int32 n)
    L_if_end_15:
    L_if_end_13:
    L_if_end_11:
    L_if_end_4:
        .line 219
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression_term_factor::Fsys
        ldloc $tmpSetLiteral3
        ldc.i4 23
        call void Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
    L_while_test_2:
        ldsfld valuetype T_symset _G::Facbegsys
        ldsfld int32 _G::Sym
        call bool _SetContains(valuetype T_symset s, int32 val)
        brtrue L_while_1
    
    L_Epilogue:
        ret
    }
}


.line 189
//================================================================================
// scope: block_statement_expression (level : 4)

.class @block_statement_expression
{
    // slink
    .field public class @block_statement _slink

    // parameters
    .field public valuetype T_symset Fsys

    // local variables
    .field public int32 Addop

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 191

    .method public
    void Term(valuetype T_symset Fsys)
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_expression_term _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_symset $tmpSetLiteral2,
            valuetype T_symset $tmpSetLiteral3)
        
        newobj instance void @block_statement_expression_term::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement_expression @block_statement_expression_term::_slink
        
        ldloc _F
        ldarg Fsys
        stfld valuetype T_symset @block_statement_expression_term::Fsys
    
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
    
    L_Entry:
        .line 223
        ldloc _F
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression_term::Fsys
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        ldloc $tmpSetLiteral1
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        call valuetype T_set_2 _SetUnion(valuetype T_set_2 a, valuetype T_set_2 b)
        dup
        ldc.i4 0
        ldc.i4 29
        call void _SetCheck(valuetype T_set_2 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_2 s)
        call instance void @block_statement_expression_term::Factor(valuetype T_symset Fsys)
        .line 224
        br L_while_test_2
    L_while_1:
        .line 225
        ldloc _F
        ldsfld int32 _G::Sym
        stfld int32 @block_statement_expression_term::Mulop
        .line 225
        call void Getsym()
        .line 225
        ldloc _F
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression_term::Fsys
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        ldloc $tmpSetLiteral2
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        call valuetype T_set_2 _SetUnion(valuetype T_set_2 a, valuetype T_set_2 b)
        dup
        ldc.i4 0
        ldc.i4 29
        call void _SetCheck(valuetype T_set_2 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_2 s)
        call instance void @block_statement_expression_term::Factor(valuetype T_symset Fsys)
        .line 226
        ldloc _F
        ldfld int32 @block_statement_expression_term::Mulop
        ldc.i4 5
        ceq
        brfalse L_else_3
        .line 226
        ldc.i4 1
        ldc.i4 0
        ldc.i4 4
        call void Gen(int32 x, int32 y, int32 z)
        br L_if_end_4
    L_else_3:
        .line 226
        ldc.i4 1
        ldc.i4 0
        ldc.i4 5
        call void Gen(int32 x, int32 y, int32 z)
    L_if_end_4:
    L_while_test_2:
        ldloc $tmpSetLiteral3
        ldsfld int32 _G::Sym
        call bool _SetContains(valuetype T_symset s, int32 val)
        brtrue L_while_1
    
    L_Epilogue:
        ret
    }
}


.line 240
//================================================================================
// scope: block_statement_condition (level : 4)

.class @block_statement_condition
{
    // slink
    .field public class @block_statement _slink

    // parameters
    .field public valuetype T_symset Fsys

    // local variables
    .field public int32 Relop

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 187
//================================================================================
// scope: block_statement (level : 3)

.class @block_statement
{
    // slink
    .field public class @block _slink

    // parameters
    .field public valuetype T_symset Fsys

    // local variables
    .field public int32 Cx1
    .field public int32 Cx2
    .field public int32 i

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 189

    .method public
    void Expression(valuetype T_symset Fsys)
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_expression _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_symset $tmpSetLiteral2,
            valuetype T_symset $tmpSetLiteral3,
            valuetype T_symset $tmpSetLiteral4,
            valuetype T_symset $tmpSetLiteral5)
        
        newobj instance void @block_statement_expression::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement @block_statement_expression::_slink
        
        ldloc _F
        ldarg Fsys
        stfld valuetype T_symset @block_statement_expression::Fsys
    
        ldloca $tmpSetLiteral1
        ldc.i4 3
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 4
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 3
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 4
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral3
        ldc.i4 3
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral3
        ldc.i4 4
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral4
        ldc.i4 3
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral4
        ldc.i4 4
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral5
        ldc.i4 3
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral5
        ldc.i4 4
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 230
        ldloc $tmpSetLiteral1
        ldsfld int32 _G::Sym
        call bool _SetContains(valuetype T_symset s, int32 val)
        brfalse L_else_1
        .line 231
        ldloc _F
        ldsfld int32 _G::Sym
        stfld int32 @block_statement_expression::Addop
        .line 231
        call void Getsym()
        .line 231
        ldloc _F
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression::Fsys
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        ldloc $tmpSetLiteral2
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        call valuetype T_set_2 _SetUnion(valuetype T_set_2 a, valuetype T_set_2 b)
        dup
        ldc.i4 0
        ldc.i4 29
        call void _SetCheck(valuetype T_set_2 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_2 s)
        call instance void @block_statement_expression::Term(valuetype T_symset Fsys)
        .line 232
        ldloc _F
        ldfld int32 @block_statement_expression::Addop
        ldc.i4 4
        ceq
        brfalse L_if_end_3
        .line 232
        ldc.i4 1
        ldc.i4 0
        ldc.i4 1
        call void Gen(int32 x, int32 y, int32 z)
    L_if_end_3:
        br L_if_end_2
    L_else_1:
        .line 233
        ldloc _F
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression::Fsys
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        ldloc $tmpSetLiteral3
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        call valuetype T_set_2 _SetUnion(valuetype T_set_2 a, valuetype T_set_2 b)
        dup
        ldc.i4 0
        ldc.i4 29
        call void _SetCheck(valuetype T_set_2 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_2 s)
        call instance void @block_statement_expression::Term(valuetype T_symset Fsys)
    L_if_end_2:
        .line 234
        br L_while_test_5
    L_while_4:
        .line 235
        ldloc _F
        ldsfld int32 _G::Sym
        stfld int32 @block_statement_expression::Addop
        .line 235
        call void Getsym()
        .line 235
        ldloc _F
        ldloc _F
        ldfld valuetype T_symset @block_statement_expression::Fsys
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        ldloc $tmpSetLiteral4
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        call valuetype T_set_2 _SetUnion(valuetype T_set_2 a, valuetype T_set_2 b)
        dup
        ldc.i4 0
        ldc.i4 29
        call void _SetCheck(valuetype T_set_2 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_2 s)
        call instance void @block_statement_expression::Term(valuetype T_symset Fsys)
        .line 236
        ldloc _F
        ldfld int32 @block_statement_expression::Addop
        ldc.i4 3
        ceq
        brfalse L_else_6
        .line 236
        ldc.i4 1
        ldc.i4 0
        ldc.i4 2
        call void Gen(int32 x, int32 y, int32 z)
        br L_if_end_7
    L_else_6:
        .line 236
        ldc.i4 1
        ldc.i4 0
        ldc.i4 3
        call void Gen(int32 x, int32 y, int32 z)
    L_if_end_7:
    L_while_test_5:
        ldloc $tmpSetLiteral5
        ldsfld int32 _G::Sym
        call bool _SetContains(valuetype T_symset s, int32 val)
        brtrue L_while_4
    
    L_Epilogue:
        ret
    }

.line 240

    .method public
    void Condition(valuetype T_symset Fsys)
    {
        .maxstack 32
    
        .locals init(
            class @block_statement_condition _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_symset $tmpSetLiteral2,
            int32 $tmpSwitchValue3)
        
        newobj instance void @block_statement_condition::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block_statement @block_statement_condition::_slink
        
        ldloc _F
        ldarg Fsys
        stfld valuetype T_symset @block_statement_condition::Fsys
    
        ldloca $tmpSetLiteral1
        ldc.i4 8
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 9
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 10
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 12
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 11
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 13
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 8
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 9
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 10
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 11
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 12
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 13
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 243
        ldsfld int32 _G::Sym
        ldc.i4 7
        ceq
        brfalse L_else_1
        .line 244
        call void Getsym()
        .line 244
        ldloc _F
        ldfld class @block_statement @block_statement_condition::_slink
        ldloc _F
        ldfld valuetype T_symset @block_statement_condition::Fsys
        call instance void @block_statement::Expression(valuetype T_symset Fsys)
        .line 244
        ldc.i4 1
        ldc.i4 0
        ldc.i4 6
        call void Gen(int32 x, int32 y, int32 z)
        br L_if_end_2
    L_else_1:
        .line 246
        ldloc _F
        ldfld class @block_statement @block_statement_condition::_slink
        ldloc $tmpSetLiteral1
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        ldloc _F
        ldfld valuetype T_symset @block_statement_condition::Fsys
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        call valuetype T_set_2 _SetUnion(valuetype T_set_2 a, valuetype T_set_2 b)
        dup
        ldc.i4 0
        ldc.i4 29
        call void _SetCheck(valuetype T_set_2 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_2 s)
        call instance void @block_statement::Expression(valuetype T_symset Fsys)
        .line 247
        ldloc $tmpSetLiteral2
        ldsfld int32 _G::Sym
        call bool _SetContains(valuetype T_symset s, int32 val)
        ldc.i4.0
        ceq
        brfalse L_else_3
        .line 248
        ldc.i4 20
        call void Error(int32 n)
        br L_if_end_4
    L_else_3:
        .line 249
        ldloc _F
        ldsfld int32 _G::Sym
        stfld int32 @block_statement_condition::Relop
        .line 249
        call void Getsym()
        .line 249
        ldloc _F
        ldfld class @block_statement @block_statement_condition::_slink
        ldloc _F
        ldfld valuetype T_symset @block_statement_condition::Fsys
        call instance void @block_statement::Expression(valuetype T_symset Fsys)
        .line 250
        ldloc _F
        ldfld int32 @block_statement_condition::Relop
        stloc $tmpSwitchValue3
        ldloc $tmpSwitchValue3
        ldc.i4 8
        bne.un L_check_case_6
        .line 251
        ldc.i4 1
        ldc.i4 0
        ldc.i4 8
        call void Gen(int32 x, int32 y, int32 z)
        br L_case_end_5
    L_check_case_6:
        ldloc $tmpSwitchValue3
        ldc.i4 9
        bne.un L_check_case_7
        .line 252
        ldc.i4 1
        ldc.i4 0
        ldc.i4 9
        call void Gen(int32 x, int32 y, int32 z)
        br L_case_end_5
    L_check_case_7:
        ldloc $tmpSwitchValue3
        ldc.i4 10
        bne.un L_check_case_8
        .line 253
        ldc.i4 1
        ldc.i4 0
        ldc.i4 10
        call void Gen(int32 x, int32 y, int32 z)
        br L_case_end_5
    L_check_case_8:
        ldloc $tmpSwitchValue3
        ldc.i4 13
        bne.un L_check_case_9
        .line 254
        ldc.i4 1
        ldc.i4 0
        ldc.i4 11
        call void Gen(int32 x, int32 y, int32 z)
        br L_case_end_5
    L_check_case_9:
        ldloc $tmpSwitchValue3
        ldc.i4 12
        bne.un L_check_case_10
        .line 255
        ldc.i4 1
        ldc.i4 0
        ldc.i4 12
        call void Gen(int32 x, int32 y, int32 z)
        br L_case_end_5
    L_check_case_10:
        ldloc $tmpSwitchValue3
        ldc.i4 11
        bne.un L_case_end_5
        .line 256
        ldc.i4 1
        ldc.i4 0
        ldc.i4 13
        call void Gen(int32 x, int32 y, int32 z)
    L_case_end_5:
    L_if_end_4:
    L_if_end_2:
    
    L_Epilogue:
        ret
    }
}


.line 130
//================================================================================
// scope: block (level : 2)

.class @block
{
    // parameters
    .field public valuetype T_symset Fsys
    .field public int32 Lev
    .field public int32 Tx

    // local variables
    .field public int32 Cx0
    .field public int32 Dx
    .field public int32 Tx0

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 134

    .method public
    void Enter(int32 k)
    {
        .maxstack 32
    
        .locals init(
            class @block_enter _F,
            int32 $tmpSwitchValue1)
        
        newobj instance void @block_enter::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block @block_enter::_slink
        
        ldloc _F
        ldarg k
        stfld int32 @block_enter::k
    
    L_Entry:
        .line 136
        ldloc _F
        ldfld class @block @block_enter::_slink
        ldloc _F
        ldfld class @block @block_enter::_slink
        ldfld int32 @block::Tx
        ldc.i4 1
        add
        stfld int32 @block::Tx
        .line 138
        ldsflda valuetype T_array_13 _G::Table
        ldloc _F
        ldfld class @block @block_enter::_slink
        ldfld int32 @block::Tx
        call instance valuetype T_record_12& T_array_13::ldadr(int32)
        ldsfld valuetype T_alfa _G::Id
        stfld valuetype T_alfa T_record_12::Name
        .line 138
        ldsflda valuetype T_array_13 _G::Table
        ldloc _F
        ldfld class @block @block_enter::_slink
        ldfld int32 @block::Tx
        call instance valuetype T_record_12& T_array_13::ldadr(int32)
        ldloc _F
        ldfld int32 @block_enter::k
        stfld int32 T_record_12::Kind
        .line 139
        ldloc _F
        ldfld int32 @block_enter::k
        stloc $tmpSwitchValue1
        ldloc $tmpSwitchValue1
        ldc.i4 0
        bne.un L_check_case_2
        .line 140
        ldsfld int32 _G::Num
        ldc.i4 2047
        cgt
        brfalse L_if_end_3
        .line 141
        ldc.i4 30
        call void Error(int32 n)
        .line 141
        ldc.i4 0
        stsfld int32 _G::Num
    L_if_end_3:
        .line 142
        ldsflda valuetype T_array_13 _G::Table
        ldloc _F
        ldfld class @block @block_enter::_slink
        ldfld int32 @block::Tx
        call instance valuetype T_record_12& T_array_13::ldadr(int32)
        ldsfld int32 _G::Num
        stfld int32 T_record_12::Val
        br L_case_end_1
    L_check_case_2:
        ldloc $tmpSwitchValue1
        ldc.i4 1
        bne.un L_check_case_4
        .line 144
        ldsflda valuetype T_array_13 _G::Table
        ldloc _F
        ldfld class @block @block_enter::_slink
        ldfld int32 @block::Tx
        call instance valuetype T_record_12& T_array_13::ldadr(int32)
        ldloc _F
        ldfld class @block @block_enter::_slink
        ldfld int32 @block::Lev
        stfld int32 T_record_12::Level
        .line 144
        ldsflda valuetype T_array_13 _G::Table
        ldloc _F
        ldfld class @block @block_enter::_slink
        ldfld int32 @block::Tx
        call instance valuetype T_record_12& T_array_13::ldadr(int32)
        ldloc _F
        ldfld class @block @block_enter::_slink
        ldfld int32 @block::Dx
        stfld int32 T_record_12::Adr
        .line 144
        ldloc _F
        ldfld class @block @block_enter::_slink
        ldloc _F
        ldfld class @block @block_enter::_slink
        ldfld int32 @block::Dx
        ldc.i4 1
        add
        stfld int32 @block::Dx
        /* nop */
        br L_case_end_1
    L_check_case_4:
        ldloc $tmpSwitchValue1
        ldc.i4 2
        bne.un L_case_end_1
        .line 146
        ldsflda valuetype T_array_13 _G::Table
        ldloc _F
        ldfld class @block @block_enter::_slink
        ldfld int32 @block::Tx
        call instance valuetype T_record_12& T_array_13::ldadr(int32)
        ldloc _F
        ldfld class @block @block_enter::_slink
        ldfld int32 @block::Lev
        stfld int32 T_record_12::Level
    L_case_end_1:
    
    L_Epilogue:
        ret
    }

.line 151

    .method public
    int32 Position(valuetype T_alfa Id)
    {
        .maxstack 32
    
        .locals init(class @block_position _F)
        
        newobj instance void @block_position::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block @block_position::_slink
        
        ldloc _F
        ldarg Id
        stfld valuetype T_alfa @block_position::Id
    
    L_Entry:
        .line 154
        ldsflda valuetype T_array_13 _G::Table
        ldc.i4 0
        call instance valuetype T_record_12& T_array_13::ldadr(int32)
        ldloc _F
        ldfld valuetype T_alfa @block_position::Id
        stfld valuetype T_alfa T_record_12::Name
        .line 154
        ldloc _F
        ldloc _F
        ldfld class @block @block_position::_slink
        ldfld int32 @block::Tx
        stfld int32 @block_position::i
        .line 155
        br L_while_test_2
    L_while_1:
        .line 155
        ldloc _F
        ldloc _F
        ldfld int32 @block_position::i
        ldc.i4 1
        sub
        stfld int32 @block_position::i
    L_while_test_2:
        ldsflda valuetype T_array_13 _G::Table
        ldloc _F
        ldfld int32 @block_position::i
        call instance valuetype T_record_12& T_array_13::ldadr(int32)
        ldfld valuetype T_alfa T_record_12::Name
        call string T_alfa::arrayToString(valuetype T_alfa)
        ldloc _F
        ldfld valuetype T_alfa @block_position::Id
        call string T_alfa::arrayToString(valuetype T_alfa)
        call bool [lpcRuntime]LPC.Helpers::StrcmpNE(string, string)
        brtrue L_while_1
        .line 156
        ldloc _F
        ldloc _F
        ldfld int32 @block_position::i
        stfld int32 @block_position::_fnvalue
    
    L_Epilogue:
        ldloc _F
        ldfld int32 @block_position::_fnvalue
        ret
    }

.line 159

    .method public
    void Constdeclaration()
    {
        .maxstack 32
    
        .locals init(
            class @block_constdeclaration _F,
            valuetype T_symset $tmpSetLiteral1)
        
        newobj instance void @block_constdeclaration::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block @block_constdeclaration::_slink
    
        ldloca $tmpSetLiteral1
        ldc.i4 8
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 19
        call instance void T_symset::addValue(int32)
    
    L_Entry:
        .line 160
        ldsfld int32 _G::Sym
        ldc.i4 1
        ceq
        brfalse L_else_1
        .line 161
        call void Getsym()
        .line 162
        ldloc $tmpSetLiteral1
        ldsfld int32 _G::Sym
        call bool _SetContains(valuetype T_symset s, int32 val)
        brfalse L_else_3
        .line 163
        ldsfld int32 _G::Sym
        ldc.i4 19
        ceq
        brfalse L_if_end_5
        .line 163
        ldc.i4 1
        call void Error(int32 n)
    L_if_end_5:
        .line 164
        call void Getsym()
        .line 165
        ldsfld int32 _G::Sym
        ldc.i4 2
        ceq
        brfalse L_else_6
        .line 166
        ldloc _F
        ldfld class @block @block_constdeclaration::_slink
        ldc.i4 0
        call instance void @block::Enter(int32 k)
        .line 166
        call void Getsym()
        br L_if_end_7
    L_else_6:
        .line 168
        ldc.i4 2
        call void Error(int32 n)
    L_if_end_7:
        br L_if_end_4
    L_else_3:
        .line 169
        ldc.i4 3
        call void Error(int32 n)
    L_if_end_4:
        br L_if_end_2
    L_else_1:
        .line 170
        ldc.i4 4
        call void Error(int32 n)
    L_if_end_2:
    
    L_Epilogue:
        ret
    }

.line 173

    .method public
    void Vardeclaration()
    {
        .maxstack 32
    
        .locals init(class @block_vardeclaration _F)
        
        newobj instance void @block_vardeclaration::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block @block_vardeclaration::_slink
    
    L_Entry:
        .line 174
        ldsfld int32 _G::Sym
        ldc.i4 1
        ceq
        brfalse L_else_1
        .line 175
        ldloc _F
        ldfld class @block @block_vardeclaration::_slink
        ldc.i4 1
        call instance void @block::Enter(int32 k)
        .line 175
        call void Getsym()
        br L_if_end_2
    L_else_1:
        .line 176
        ldc.i4 4
        call void Error(int32 n)
    L_if_end_2:
    
    L_Epilogue:
        ret
    }

.line 179

    .method public
    void Listcode()
    {
        .maxstack 32
    
        .locals init(
            class @block_listcode _F,
            int32 $tmpEndValue1,
            int32 $tmpIndex2,
            int32 $tmpIndex3)
        
        newobj instance void @block_listcode::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block @block_listcode::_slink
    
    L_Entry:
        .line 182
        ldsfld int32 _G::Cx
        ldc.i4 1
        sub
        stloc $tmpEndValue1
        ldloc _F
        ldfld class @block @block_listcode::_slink
        ldfld int32 @block::Cx0
        dup
        ldloc $tmpEndValue1
        bgt L_for_end_2
        stloc $tmpIndex2
        ldloc _F
        ldloc $tmpIndex2
        stfld int32 @block_listcode::i
    L_for_loop_1:
        .line 184
        ldsflda valuetype [lpcRuntime]LPC.File _G::Output
        dup
        ldc.i4 5
        ldc.i4.0
        ldloc _F
        ldfld int32 @block_listcode::i
        call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
        dup
        ldc.i4 5
        ldc.i4.0
        ldsflda valuetype T_array_16 _G::Mnemonic
        ldsflda valuetype T_array_11 _G::Code
        ldloc _F
        ldfld int32 @block_listcode::i
        call instance valuetype T_instruction& T_array_11::ldadr(int32)
        ldfld int32 T_instruction::f
        call instance valuetype T_array_15& T_array_16::ldadr(int32)
        ldobj valuetype T_array_15
        call string T_array_15::arrayToString(valuetype T_array_15)
        call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
        dup
        ldc.i4 3
        ldc.i4.0
        ldc.i4 1
        call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
        dup
        ldc.i4 5
        ldc.i4.0
        ldsflda valuetype T_array_11 _G::Code
        ldloc _F
        ldfld int32 @block_listcode::i
        call instance valuetype T_instruction& T_array_11::ldadr(int32)
        ldfld int16 T_instruction::a
        call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        ldloc _F
        ldfld int32 @block_listcode::i
        dup
        ldloc $tmpEndValue1
        beq L_for_end_2
        ldc.i4.1
        add
        stloc $tmpIndex3
        ldloc _F
        ldloc $tmpIndex3
        stfld int32 @block_listcode::i
        br L_for_loop_1
    L_for_end_2:
        pop
    
    L_Epilogue:
        ret
    }

.line 187

    .method public
    void Statement(valuetype T_symset Fsys)
    {
        .maxstack 32
    
        .locals init(
            class @block_statement _F,
            valuetype T_symset $tmpSetLiteral1,
            valuetype T_symset $tmpSetLiteral2,
            valuetype T_symset $tmpSetLiteral3,
            valuetype T_symset $tmpSetLiteral4,
            valuetype T_symset $tmpSetLiteral5,
            valuetype T_set_2 $tmpSetLiteral6)
        
        newobj instance void @block_statement::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @block @block_statement::_slink
        
        ldloc _F
        ldarg Fsys
        stfld valuetype T_symset @block_statement::Fsys
    
        ldloca $tmpSetLiteral1
        ldc.i4 23
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral1
        ldc.i4 25
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral2
        ldc.i4 17
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral2
        ldc.i4 21
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral3
        ldc.i4 17
        call instance void T_symset::addValue(int32)
        ldloca $tmpSetLiteral3
        ldc.i4 21
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral4
        ldc.i4 17
        call instance void T_symset::addValue(int32)
    
        ldloca $tmpSetLiteral5
        ldc.i4 25
        call instance void T_symset::addValue(int32)
    
    
    L_Entry:
        .line 263
        ldsfld int32 _G::Sym
        ldc.i4 1
        ceq
        brfalse L_else_1
        .line 264
        ldloc _F
        ldloc _F
        ldfld class @block @block_statement::_slink
        ldsfld valuetype T_alfa _G::Id
        call instance int32 @block::Position(valuetype T_alfa Id)
        stfld int32 @block_statement::i
        .line 265
        ldloc _F
        ldfld int32 @block_statement::i
        ldc.i4 0
        ceq
        brfalse L_else_3
        .line 265
        ldc.i4 11
        call void Error(int32 n)
        br L_if_end_4
    L_else_3:
        .line 266
        ldsflda valuetype T_array_13 _G::Table
        ldloc _F
        ldfld int32 @block_statement::i
        call instance valuetype T_record_12& T_array_13::ldadr(int32)
        ldfld int32 T_record_12::Kind
        ldc.i4 1
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_5
        .line 267
        ldc.i4 12
        call void Error(int32 n)
        .line 267
        ldloc _F
        ldc.i4 0
        stfld int32 @block_statement::i
    L_if_end_5:
    L_if_end_4:
        .line 269
        call void Getsym()
        .line 269
        ldsfld int32 _G::Sym
        ldc.i4 19
        ceq
        brfalse L_else_6
        .line 269
        call void Getsym()
        br L_if_end_7
    L_else_6:
        .line 269
        ldc.i4 13
        call void Error(int32 n)
    L_if_end_7:
        .line 270
        ldloc _F
        ldloc _F
        ldfld valuetype T_symset @block_statement::Fsys
        call instance void @block_statement::Expression(valuetype T_symset Fsys)
        .line 271
        ldloc _F
        ldfld int32 @block_statement::i
        ldc.i4 0
        ceq
        ldc.i4.0
        ceq
        brfalse L_if_end_8
        .line 272
        ldc.i4 3
        ldloc _F
        ldfld class @block @block_statement::_slink
        ldfld int32 @block::Lev
        ldsflda valuetype T_array_13 _G::Table
        ldloc _F
        ldfld int32 @block_statement::i
        call instance valuetype T_record_12& T_array_13::ldadr(int32)
        ldfld int32 T_record_12::Level
        sub
        ldsflda valuetype T_array_13 _G::Table
        ldloc _F
        ldfld int32 @block_statement::i
        call instance valuetype T_record_12& T_array_13::ldadr(int32)
        ldfld int32 T_record_12::Adr
        call void Gen(int32 x, int32 y, int32 z)
    L_if_end_8:
        br L_if_end_2
    L_else_1:
        .line 274
        ldsfld int32 _G::Sym
        ldc.i4 26
        ceq
        brfalse L_else_9
        .line 275
        call void Getsym()
        .line 276
        ldsfld int32 _G::Sym
        ldc.i4 1
        ceq
        ldc.i4.0
        ceq
        brfalse L_else_11
        .line 276
        ldc.i4 14
        call void Error(int32 n)
        br L_if_end_12
    L_else_11:
        .line 277
        ldloc _F
        ldloc _F
        ldfld class @block @block_statement::_slink
        ldsfld valuetype T_alfa _G::Id
        call instance int32 @block::Position(valuetype T_alfa Id)
        stfld int32 @block_statement::i
        .line 278
        ldloc _F
        ldfld int32 @block_statement::i
        ldc.i4 0
        ceq
        brfalse L_else_13
        .line 278
        ldc.i4 11
        call void Error(int32 n)
        br L_if_end_14
    L_else_13:
        .line 280
        ldsflda valuetype T_array_13 _G::Table
        ldloc _F
        ldfld int32 @block_statement::i
        call instance valuetype T_record_12& T_array_13::ldadr(int32)
        ldfld int32 T_record_12::Kind
        ldc.i4 2
        ceq
        brfalse L_else_15
        .line 280
        ldc.i4 4
        ldloc _F
        ldfld class @block @block_statement::_slink
        ldfld int32 @block::Lev
        ldsflda valuetype T_array_13 _G::Table
        ldloc _F
        ldfld int32 @block_statement::i
        call instance valuetype T_record_12& T_array_13::ldadr(int32)
        ldfld int32 T_record_12::Level
        sub
        ldsflda valuetype T_array_13 _G::Table
        ldloc _F
        ldfld int32 @block_statement::i
        call instance valuetype T_record_12& T_array_13::ldadr(int32)
        ldfld int32 T_record_12::Adr
        call void Gen(int32 x, int32 y, int32 z)
        br L_if_end_16
    L_else_15:
        .line 281
        ldc.i4 15
        call void Error(int32 n)
    L_if_end_16:
    L_if_end_14:
        .line 282
        call void Getsym()
    L_if_end_12:
        br L_if_end_10
    L_else_9:
        .line 285
        ldsfld int32 _G::Sym
        ldc.i4 22
        ceq
        brfalse L_else_17
        .line 286
        call void Getsym()
        .line 286
        ldloc _F
        ldloc $tmpSetLiteral1
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        ldloc _F
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        call valuetype T_set_2 _SetUnion(valuetype T_set_2 a, valuetype T_set_2 b)
        dup
        ldc.i4 0
        ldc.i4 29
        call void _SetCheck(valuetype T_set_2 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_2 s)
        call instance void @block_statement::Condition(valuetype T_symset Fsys)
        .line 287
        ldsfld int32 _G::Sym
        ldc.i4 23
        ceq
        brfalse L_else_19
        .line 287
        call void Getsym()
        br L_if_end_20
    L_else_19:
        .line 287
        ldc.i4 16
        call void Error(int32 n)
    L_if_end_20:
        .line 288
        ldloc _F
        ldsfld int32 _G::Cx
        stfld int32 @block_statement::Cx1
        .line 288
        ldc.i4 7
        ldc.i4 0
        ldc.i4 0
        call void Gen(int32 x, int32 y, int32 z)
        .line 289
        ldloc _F
        ldfld class @block @block_statement::_slink
        ldloc _F
        ldfld valuetype T_symset @block_statement::Fsys
        call instance void @block::Statement(valuetype T_symset Fsys)
        .line 289
        ldsflda valuetype T_array_11 _G::Code
        ldloc _F
        ldfld int32 @block_statement::Cx1
        call instance valuetype T_instruction& T_array_11::ldadr(int32)
        ldsfld int32 _G::Cx
        dup
        ldc.i4 0
        ldc.i4 2047
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 T_instruction::a
        br L_if_end_18
    L_else_17:
        .line 291
        ldsfld int32 _G::Sym
        ldc.i4 20
        ceq
        brfalse L_else_21
        .line 292
        call void Getsym()
        .line 292
        ldloc _F
        ldfld class @block @block_statement::_slink
        ldloc $tmpSetLiteral2
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        ldloc _F
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        call valuetype T_set_2 _SetUnion(valuetype T_set_2 a, valuetype T_set_2 b)
        dup
        ldc.i4 0
        ldc.i4 29
        call void _SetCheck(valuetype T_set_2 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_2 s)
        call instance void @block::Statement(valuetype T_symset Fsys)
        .line 293
        br L_while_test_24
    L_while_23:
        .line 295
        ldsfld int32 _G::Sym
        ldc.i4 17
        ceq
        brfalse L_else_25
        .line 295
        call void Getsym()
        br L_if_end_26
    L_else_25:
        .line 295
        ldc.i4 10
        call void Error(int32 n)
    L_if_end_26:
        .line 296
        ldloc _F
        ldfld class @block @block_statement::_slink
        ldloc $tmpSetLiteral3
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        ldloc _F
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        call valuetype T_set_2 _SetUnion(valuetype T_set_2 a, valuetype T_set_2 b)
        dup
        ldc.i4 0
        ldc.i4 29
        call void _SetCheck(valuetype T_set_2 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_2 s)
        call instance void @block::Statement(valuetype T_symset Fsys)
    L_while_test_24:
        ldloc $tmpSetLiteral4
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        ldsfld valuetype T_symset _G::Statbegsys
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        call valuetype T_set_2 _SetUnion(valuetype T_set_2 a, valuetype T_set_2 b)
        ldsfld int32 _G::Sym
        call bool _SetContains(valuetype T_set_2 s, int32 val)
        brtrue L_while_23
        .line 298
        ldsfld int32 _G::Sym
        ldc.i4 21
        ceq
        brfalse L_else_27
        .line 298
        call void Getsym()
        br L_if_end_28
    L_else_27:
        .line 298
        ldc.i4 17
        call void Error(int32 n)
    L_if_end_28:
        br L_if_end_22
    L_else_21:
        .line 300
        ldsfld int32 _G::Sym
        ldc.i4 24
        ceq
        brfalse L_if_end_29
        .line 301
        ldloc _F
        ldsfld int32 _G::Cx
        stfld int32 @block_statement::Cx1
        .line 301
        call void Getsym()
        .line 301
        ldloc _F
        ldloc $tmpSetLiteral5
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        ldloc _F
        ldfld valuetype T_symset @block_statement::Fsys
        call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
        call valuetype T_set_2 _SetUnion(valuetype T_set_2 a, valuetype T_set_2 b)
        dup
        ldc.i4 0
        ldc.i4 29
        call void _SetCheck(valuetype T_set_2 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_2 s)
        call instance void @block_statement::Condition(valuetype T_symset Fsys)
        .line 302
        ldloc _F
        ldsfld int32 _G::Cx
        stfld int32 @block_statement::Cx2
        .line 302
        ldc.i4 7
        ldc.i4 0
        ldc.i4 0
        call void Gen(int32 x, int32 y, int32 z)
        .line 303
        ldsfld int32 _G::Sym
        ldc.i4 25
        ceq
        brfalse L_else_30
        .line 303
        call void Getsym()
        br L_if_end_31
    L_else_30:
        .line 303
        ldc.i4 18
        call void Error(int32 n)
    L_if_end_31:
        .line 304
        ldloc _F
        ldfld class @block @block_statement::_slink
        ldloc _F
        ldfld valuetype T_symset @block_statement::Fsys
        call instance void @block::Statement(valuetype T_symset Fsys)
        .line 304
        ldc.i4 6
        ldc.i4 0
        ldloc _F
        ldfld int32 @block_statement::Cx1
        call void Gen(int32 x, int32 y, int32 z)
        .line 304
        ldsflda valuetype T_array_11 _G::Code
        ldloc _F
        ldfld int32 @block_statement::Cx2
        call instance valuetype T_instruction& T_array_11::ldadr(int32)
        ldsfld int32 _G::Cx
        dup
        ldc.i4 0
        ldc.i4 2047
        call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
        stfld int16 T_instruction::a
    L_if_end_29:
    L_if_end_22:
    L_if_end_18:
    L_if_end_10:
    L_if_end_2:
        .line 306
        ldloc _F
        ldfld valuetype T_symset @block_statement::Fsys
        ldloc $tmpSetLiteral6
        dup
        ldc.i4 0
        ldc.i4 29
        call void _SetCheck(valuetype T_set_2 s, int32 min, int32 max)
        call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_2 s)
        ldc.i4 19
        call void Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
    
    L_Epilogue:
        ret
    }
}


.line 361
//================================================================================
// scope: interpret_base (level : 3)

.line 0xfeefee

// TYPE array_41 = array [1 .. 500] of int32;
.class value explicit T_interpret_array_41
{
    // elem size = 4
    // alignment = 4
    .size 2000

    .field [0] public int32 elem

    .method public int32& ldadr(int32 index)
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

.class @interpret_base
{
    // slink
    .field public class @interpret _slink

    // parameters
    .field public int32 l

    // local variables
    .field public int32 _fnvalue
    .field public int32 B1

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 356
//================================================================================
// scope: interpret (level : 2)

.class @interpret
{
    // local variables
    .field public int32 b
    .field public valuetype T_instruction i
    .field public int32 p
    .field public valuetype T_interpret_array_41 s
    .field public int32 t

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 361

    .method public
    int32 Base(int32 l)
    {
        .maxstack 32
    
        .locals init(class @interpret_base _F)
        
        newobj instance void @interpret_base::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @interpret @interpret_base::_slink
        
        ldloc _F
        ldarg l
        stfld int32 @interpret_base::l
    
    L_Entry:
        .line 363
        ldloc _F
        ldloc _F
        ldfld class @interpret @interpret_base::_slink
        ldfld int32 @interpret::b
        stfld int32 @interpret_base::B1
        .line 364
        br L_while_test_2
    L_while_1:
        .line 365
        ldloc _F
        ldloc _F
        ldfld class @interpret @interpret_base::_slink
        ldflda valuetype T_interpret_array_41 @interpret::s
        ldloc _F
        ldfld int32 @interpret_base::B1
        call instance int32& T_interpret_array_41::ldadr(int32)
        ldobj int32
        stfld int32 @interpret_base::B1
        .line 365
        ldloc _F
        ldloc _F
        ldfld int32 @interpret_base::l
        ldc.i4 1
        sub
        stfld int32 @interpret_base::l
    L_while_test_2:
        ldloc _F
        ldfld int32 @interpret_base::l
        ldc.i4 0
        cgt
        brtrue L_while_1
        .line 367
        ldloc _F
        ldloc _F
        ldfld int32 @interpret_base::B1
        stfld int32 @interpret_base::_fnvalue
    
    L_Epilogue:
        ldloc _F
        ldfld int32 @interpret_base::_fnvalue
        ret
    }
}


.line 1
//================================================================================
// scope: program scope (level : 1)

// global variables
.class _G
{
    .field public static valuetype T_alfa a
    .field public static int32 Cc
    .field public static uint8 Ch
    .field public static valuetype T_array_11 Code
    .field public static int32 Cx
    .field public static valuetype T_symset Declbegsys
    .field public static int32 Err
    .field public static valuetype T_symset Facbegsys
    .field public static valuetype T_alfa Id
    .field public static valuetype [lpcRuntime]LPC.File Input
    .field public static int32 Kk
    .field public static valuetype T_array_1 Line
    .field public static int32 Ll
    .field public static valuetype T_array_16 Mnemonic
    .field public static int32 Num
    .field public static valuetype [lpcRuntime]LPC.File Output
    .field public static valuetype T_array_8 Ssym
    .field public static valuetype T_symset Statbegsys
    .field public static int32 Sym
    .field public static valuetype T_array_13 Table
    .field public static valuetype T_array_4 Word
    .field public static valuetype T_array_5 Wsym
}

.line 56

.method static
void Error(int32 n)
{
    .maxstack 32

    .locals init(class @error _F)
    
    newobj instance void @error::.ctor()
    stloc _F
    
    ldloc _F
    ldarg n
    stfld int32 @error::n

L_Entry:
    .line 57
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " ****"
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld int32 _G::Cc
    ldc.i4 1
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
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 57
    ldsfld int32 _G::Err
    ldc.i4 1
    add
    stsfld int32 _G::Err

L_Epilogue:
    ret
}

.line 60

.method static
void Getsym()
{
    .maxstack 32

    .locals init(
        class @getsym _F,
        valuetype T_set_2 $tmpSetLiteral1,
        valuetype T_set_2 $tmpSetLiteral2,
        valuetype T_set_2 $tmpSetLiteral3,
        valuetype T_set_2 $tmpSetLiteral4)
    
    newobj instance void @getsym::.ctor()
    stloc _F

    ldloca $tmpSetLiteral1
    ldc.i4 97 // 'a'
    ldc.i4 122 // 'z'
    call instance void T_set_2::addRange(int32, int32)

    ldloca $tmpSetLiteral2
    ldc.i4 97 // 'a'
    ldc.i4 122 // 'z'
    call instance void T_set_2::addRange(int32, int32)
    ldloca $tmpSetLiteral2
    ldc.i4 48 // '0'
    ldc.i4 57 // '9'
    call instance void T_set_2::addRange(int32, int32)

    ldloca $tmpSetLiteral3
    ldc.i4 48 // '0'
    ldc.i4 57 // '9'
    call instance void T_set_2::addRange(int32, int32)

    ldloca $tmpSetLiteral4
    ldc.i4 48 // '0'
    ldc.i4 57 // '9'
    call instance void T_set_2::addRange(int32, int32)

L_Entry:
    .line 78
    br L_while_test_2
L_while_1:
    .line 78
    ldloc _F
    call instance void @getsym::Getch()
L_while_test_2:
    ldsfld uint8 _G::Ch
    ldc.i4 32 // ' '
    ceq
    brtrue L_while_1
    .line 79
    ldloc $tmpSetLiteral1
    ldsfld uint8 _G::Ch
    call bool _SetContains(valuetype T_set_2 s, int32 val)
    brfalse L_else_3
    .line 80
    ldloc _F
    ldc.i4 0
    stfld int32 @getsym::k
    .line 81
L_repeat_5:
    .line 81
    ldloc _F
    ldfld int32 @getsym::k
    ldc.i4 10
    clt
    brfalse L_if_end_6
    .line 82
    ldloc _F
    ldloc _F
    ldfld int32 @getsym::k
    ldc.i4 1
    add
    stfld int32 @getsym::k
    .line 82
    ldsflda valuetype T_alfa _G::a
    ldloc _F
    ldfld int32 @getsym::k
    call instance uint8& T_alfa::ldadr(int32)
    ldsfld uint8 _G::Ch
    stobj uint8
L_if_end_6:
    .line 84
    ldloc _F
    call instance void @getsym::Getch()
    /* nop */
    ldloc $tmpSetLiteral2
    ldsfld uint8 _G::Ch
    call bool _SetContains(valuetype T_set_2 s, int32 val)
    ldc.i4.0
    ceq
    brfalse L_repeat_5
    .line 86
    ldloc _F
    ldfld int32 @getsym::k
    ldsfld int32 _G::Kk
    clt
    ldc.i4.0
    ceq
    brfalse L_else_7
    .line 86
    ldloc _F
    ldfld int32 @getsym::k
    stsfld int32 _G::Kk
    br L_if_end_8
L_else_7:
    .line 87
L_repeat_9:
    .line 87
    ldsflda valuetype T_alfa _G::a
    ldsfld int32 _G::Kk
    call instance uint8& T_alfa::ldadr(int32)
    ldc.i4 32 // ' '
    stobj uint8
    .line 87
    ldsfld int32 _G::Kk
    ldc.i4 1
    sub
    stsfld int32 _G::Kk
    ldsfld int32 _G::Kk
    ldloc _F
    ldfld int32 @getsym::k
    ceq
    brfalse L_repeat_9
L_if_end_8:
    .line 89
    ldsfld valuetype T_alfa _G::a
    stsfld valuetype T_alfa _G::Id
    .line 89
    ldloc _F
    ldc.i4 1
    stfld int32 @getsym::i
    .line 89
    ldloc _F
    ldc.i4 11
    stfld int32 @getsym::j
    .line 90
L_repeat_10:
    .line 90
    ldloc _F
    ldloc _F
    ldfld int32 @getsym::i
    ldloc _F
    ldfld int32 @getsym::j
    add
    ldc.i4 2
    div
    stfld int32 @getsym::k
    .line 91
    ldsfld valuetype T_alfa _G::Id
    call string T_alfa::arrayToString(valuetype T_alfa)
    ldsflda valuetype T_array_4 _G::Word
    ldloc _F
    ldfld int32 @getsym::k
    call instance valuetype T_alfa& T_array_4::ldadr(int32)
    ldobj valuetype T_alfa
    call string T_alfa::arrayToString(valuetype T_alfa)
    call bool [lpcRuntime]LPC.Helpers::StrcmpLE(string, string)
    brfalse L_if_end_11
    .line 91
    ldloc _F
    ldloc _F
    ldfld int32 @getsym::k
    ldc.i4 1
    sub
    stfld int32 @getsym::j
L_if_end_11:
    .line 92
    ldsfld valuetype T_alfa _G::Id
    call string T_alfa::arrayToString(valuetype T_alfa)
    ldsflda valuetype T_array_4 _G::Word
    ldloc _F
    ldfld int32 @getsym::k
    call instance valuetype T_alfa& T_array_4::ldadr(int32)
    ldobj valuetype T_alfa
    call string T_alfa::arrayToString(valuetype T_alfa)
    call bool [lpcRuntime]LPC.Helpers::StrcmpGE(string, string)
    brfalse L_if_end_12
    .line 92
    ldloc _F
    ldloc _F
    ldfld int32 @getsym::k
    ldc.i4 1
    add
    stfld int32 @getsym::i
L_if_end_12:
    ldloc _F
    ldfld int32 @getsym::i
    ldloc _F
    ldfld int32 @getsym::j
    cgt
    brfalse L_repeat_10
    .line 94
    ldloc _F
    ldfld int32 @getsym::i
    ldc.i4 1
    sub
    ldloc _F
    ldfld int32 @getsym::j
    cgt
    brfalse L_else_13
    .line 94
    ldsflda valuetype T_array_5 _G::Wsym
    ldloc _F
    ldfld int32 @getsym::k
    call instance int32& T_array_5::ldadr(int32)
    ldobj int32
    stsfld int32 _G::Sym
    br L_if_end_14
L_else_13:
    .line 94
    ldc.i4 1
    stsfld int32 _G::Sym
L_if_end_14:
    br L_if_end_4
L_else_3:
    .line 96
    ldloc $tmpSetLiteral3
    ldsfld uint8 _G::Ch
    call bool _SetContains(valuetype T_set_2 s, int32 val)
    brfalse L_else_15
    .line 97
    ldloc _F
    ldc.i4 0
    stfld int32 @getsym::k
    .line 97
    ldc.i4 0
    stsfld int32 _G::Num
    .line 97
    ldc.i4 2
    stsfld int32 _G::Sym
    .line 98
L_repeat_17:
    .line 98
    ldc.i4 10
    ldsfld int32 _G::Num
    mul
    ldsfld uint8 _G::Ch
    ldc.i4 48 // '0'
    sub
    add
    stsfld int32 _G::Num
    .line 99
    ldloc _F
    ldloc _F
    ldfld int32 @getsym::k
    ldc.i4 1
    add
    stfld int32 @getsym::k
    .line 99
    ldloc _F
    call instance void @getsym::Getch()
    ldloc $tmpSetLiteral4
    ldsfld uint8 _G::Ch
    call bool _SetContains(valuetype T_set_2 s, int32 val)
    ldc.i4.0
    ceq
    brfalse L_repeat_17
    .line 101
    ldloc _F
    ldfld int32 @getsym::k
    ldc.i4 14
    cgt
    brfalse L_if_end_18
    .line 101
    ldc.i4 30
    call void Error(int32 n)
L_if_end_18:
    br L_if_end_16
L_else_15:
    .line 103
    ldsfld uint8 _G::Ch
    ldc.i4 58 // ':'
    ceq
    brfalse L_else_19
    .line 104
    ldloc _F
    call instance void @getsym::Getch()
    .line 105
    ldsfld uint8 _G::Ch
    ldc.i4 61 // '='
    ceq
    brfalse L_else_21
    .line 106
    ldc.i4 19
    stsfld int32 _G::Sym
    .line 106
    ldloc _F
    call instance void @getsym::Getch()
    br L_if_end_22
L_else_21:
    .line 107
    ldc.i4 0
    stsfld int32 _G::Sym
L_if_end_22:
    /* nop */
    br L_if_end_20
L_else_19:
    .line 109
    ldsflda valuetype T_array_8 _G::Ssym
    ldsfld uint8 _G::Ch
    call instance int32& T_array_8::ldadr(int32)
    ldobj int32
    stsfld int32 _G::Sym
    .line 109
    ldloc _F
    call instance void @getsym::Getch()
L_if_end_20:
L_if_end_16:
L_if_end_4:

L_Epilogue:
    ret
}

.line 113

.method static
void Gen(int32 x, int32 y, int32 z)
{
    .maxstack 32

    .locals init(class @gen _F)
    
    newobj instance void @gen::.ctor()
    stloc _F
    
    ldloc _F
    ldarg x
    stfld int32 @gen::x
    
    ldloc _F
    ldarg y
    stfld int32 @gen::y
    
    ldloc _F
    ldarg z
    stfld int32 @gen::z

L_Entry:
    .line 114
    ldsfld int32 _G::Cx
    ldc.i4 200
    cgt
    brfalse L_if_end_1
    .line 115
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " program too long"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 115
    ldc.i4 1
    newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
    throw
L_if_end_1:
    .line 118
    ldsflda valuetype T_array_11 _G::Code
    ldsfld int32 _G::Cx
    call instance valuetype T_instruction& T_array_11::ldadr(int32)
    ldloc _F
    ldfld int32 @gen::x
    stfld int32 T_instruction::f
    .line 118
    ldsflda valuetype T_array_11 _G::Code
    ldsfld int32 _G::Cx
    call instance valuetype T_instruction& T_array_11::ldadr(int32)
    ldloc _F
    ldfld int32 @gen::y
    dup
    ldc.i4 0
    ldc.i4 3
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int8 T_instruction::l
    .line 118
    ldsflda valuetype T_array_11 _G::Code
    ldsfld int32 _G::Cx
    call instance valuetype T_instruction& T_array_11::ldadr(int32)
    ldloc _F
    ldfld int32 @gen::z
    dup
    ldc.i4 0
    ldc.i4 2047
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int16 T_instruction::a
    .line 120
    ldsfld int32 _G::Cx
    ldc.i4 1
    add
    stsfld int32 _G::Cx

L_Epilogue:
    ret
}

.line 123

.method static
void Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
{
    .maxstack 32

    .locals init(class @test _F)
    
    newobj instance void @test::.ctor()
    stloc _F
    
    ldloc _F
    ldarg n
    stfld int32 @test::n
    
    ldloc _F
    ldarg S1
    stfld valuetype T_symset @test::S1
    
    ldloc _F
    ldarg S2
    stfld valuetype T_symset @test::S2

L_Entry:
    .line 124
    ldloc _F
    ldfld valuetype T_symset @test::S1
    ldsfld int32 _G::Sym
    call bool _SetContains(valuetype T_symset s, int32 val)
    ldc.i4.0
    ceq
    brfalse L_if_end_1
    .line 125
    ldloc _F
    ldfld int32 @test::n
    call void Error(int32 n)
    .line 125
    ldloc _F
    ldloc _F
    ldfld valuetype T_symset @test::S1
    ldloc _F
    ldfld valuetype T_symset @test::S2
    call valuetype T_symset _SetUnion(valuetype T_symset a, valuetype T_symset b)
    stfld valuetype T_symset @test::S1
    .line 126
    br L_while_test_3
L_while_2:
    .line 126
    call void Getsym()
L_while_test_3:
    ldloc _F
    ldfld valuetype T_symset @test::S1
    ldsfld int32 _G::Sym
    call bool _SetContains(valuetype T_symset s, int32 val)
    ldc.i4.0
    ceq
    brtrue L_while_2
L_if_end_1:

L_Epilogue:
    ret
}

.line 130

.method static
void Block(int32 Lev, int32 Tx, valuetype T_symset Fsys)
{
    .maxstack 32

    .locals init(
        class @block _F,
        valuetype T_symset $tmpSetLiteral1,
        valuetype T_symset $tmpSetLiteral2,
        valuetype T_symset $tmpSetLiteral3,
        valuetype T_symset $tmpSetLiteral4,
        valuetype T_set_2 $tmpSetLiteral5)
    
    newobj instance void @block::.ctor()
    stloc _F
    
    ldloc _F
    ldarg Fsys
    stfld valuetype T_symset @block::Fsys
    
    ldloc _F
    ldarg Lev
    stfld int32 @block::Lev
    
    ldloc _F
    ldarg Tx
    stfld int32 @block::Tx

    ldloca $tmpSetLiteral1
    ldc.i4 17
    call instance void T_symset::addValue(int32)

    ldloca $tmpSetLiteral2
    ldc.i4 1
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral2
    ldc.i4 29
    call instance void T_symset::addValue(int32)

    ldloca $tmpSetLiteral3
    ldc.i4 1
    call instance void T_symset::addValue(int32)

    ldloca $tmpSetLiteral4
    ldc.i4 17
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral4
    ldc.i4 21
    call instance void T_symset::addValue(int32)


L_Entry:
    .line 309
    ldloc _F
    ldc.i4 3
    stfld int32 @block::Dx
    .line 309
    ldloc _F
    ldloc _F
    ldfld int32 @block::Tx
    stfld int32 @block::Tx0
    .line 309
    ldsflda valuetype T_array_13 _G::Table
    ldloc _F
    ldfld int32 @block::Tx
    call instance valuetype T_record_12& T_array_13::ldadr(int32)
    ldsfld int32 _G::Cx
    stfld int32 T_record_12::Adr
    .line 309
    ldc.i4 6
    ldc.i4 0
    ldc.i4 0
    call void Gen(int32 x, int32 y, int32 z)
    .line 310
    ldloc _F
    ldfld int32 @block::Lev
    ldc.i4 3
    cgt
    brfalse L_if_end_1
    .line 310
    ldc.i4 32
    call void Error(int32 n)
L_if_end_1:
    .line 311
L_repeat_2:
    .line 312
    ldsfld int32 _G::Sym
    ldc.i4 27
    ceq
    brfalse L_if_end_3
    .line 313
    call void Getsym()
    .line 314
L_repeat_4:
    .line 314
    ldloc _F
    call instance void @block::Constdeclaration()
    .line 315
    br L_while_test_6
L_while_5:
    .line 316
    call void Getsym()
    .line 316
    ldloc _F
    call instance void @block::Constdeclaration()
L_while_test_6:
    ldsfld int32 _G::Sym
    ldc.i4 16
    ceq
    brtrue L_while_5
    .line 318
    ldsfld int32 _G::Sym
    ldc.i4 17
    ceq
    brfalse L_else_7
    .line 318
    call void Getsym()
    br L_if_end_8
L_else_7:
    .line 318
    ldc.i4 5
    call void Error(int32 n)
L_if_end_8:
    ldsfld int32 _G::Sym
    ldc.i4 1
    ceq
    ldc.i4.0
    ceq
    brfalse L_repeat_4
L_if_end_3:
    .line 321
    ldsfld int32 _G::Sym
    ldc.i4 28
    ceq
    brfalse L_if_end_9
    .line 322
    call void Getsym()
    .line 323
L_repeat_10:
    .line 323
    ldloc _F
    call instance void @block::Vardeclaration()
    .line 324
    br L_while_test_12
L_while_11:
    .line 325
    call void Getsym()
    .line 325
    ldloc _F
    call instance void @block::Vardeclaration()
L_while_test_12:
    ldsfld int32 _G::Sym
    ldc.i4 16
    ceq
    brtrue L_while_11
    .line 327
    ldsfld int32 _G::Sym
    ldc.i4 17
    ceq
    brfalse L_else_13
    .line 327
    call void Getsym()
    br L_if_end_14
L_else_13:
    .line 327
    ldc.i4 5
    call void Error(int32 n)
L_if_end_14:
    ldsfld int32 _G::Sym
    ldc.i4 1
    ceq
    ldc.i4.0
    ceq
    brfalse L_repeat_10
    /* nop */
L_if_end_9:
    .line 330
    br L_while_test_16
L_while_15:
    .line 331
    call void Getsym()
    .line 332
    ldsfld int32 _G::Sym
    ldc.i4 1
    ceq
    brfalse L_else_17
    .line 333
    ldloc _F
    ldc.i4 2
    call instance void @block::Enter(int32 k)
    .line 333
    call void Getsym()
    br L_if_end_18
L_else_17:
    .line 335
    ldc.i4 4
    call void Error(int32 n)
L_if_end_18:
    .line 336
    ldsfld int32 _G::Sym
    ldc.i4 17
    ceq
    brfalse L_else_19
    .line 336
    call void Getsym()
    br L_if_end_20
L_else_19:
    .line 336
    ldc.i4 5
    call void Error(int32 n)
L_if_end_20:
    .line 337
    ldloc _F
    ldfld int32 @block::Lev
    ldc.i4 1
    add
    ldloc _F
    ldfld int32 @block::Tx
    ldloc $tmpSetLiteral1
    call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
    ldloc _F
    ldfld valuetype T_symset @block::Fsys
    call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
    call valuetype T_set_2 _SetUnion(valuetype T_set_2 a, valuetype T_set_2 b)
    dup
    ldc.i4 0
    ldc.i4 29
    call void _SetCheck(valuetype T_set_2 s, int32 min, int32 max)
    call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_2 s)
    call void Block(int32 Lev, int32 Tx, valuetype T_symset Fsys)
    .line 338
    ldsfld int32 _G::Sym
    ldc.i4 17
    ceq
    brfalse L_else_21
    .line 339
    call void Getsym()
    .line 339
    ldsfld valuetype T_symset _G::Statbegsys
    call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
    ldloc $tmpSetLiteral2
    call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
    call valuetype T_set_2 _SetUnion(valuetype T_set_2 a, valuetype T_set_2 b)
    dup
    ldc.i4 0
    ldc.i4 29
    call void _SetCheck(valuetype T_set_2 s, int32 min, int32 max)
    call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_2 s)
    ldloc _F
    ldfld valuetype T_symset @block::Fsys
    ldc.i4 6
    call void Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
    br L_if_end_22
L_else_21:
    .line 341
    ldc.i4 5
    call void Error(int32 n)
L_if_end_22:
L_while_test_16:
    ldsfld int32 _G::Sym
    ldc.i4 29
    ceq
    brtrue L_while_15
    .line 343
    ldsfld valuetype T_symset _G::Statbegsys
    call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
    ldloc $tmpSetLiteral3
    call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
    call valuetype T_set_2 _SetUnion(valuetype T_set_2 a, valuetype T_set_2 b)
    dup
    ldc.i4 0
    ldc.i4 29
    call void _SetCheck(valuetype T_set_2 s, int32 min, int32 max)
    call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_2 s)
    ldsfld valuetype T_symset _G::Declbegsys
    ldc.i4 7
    call void Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
    ldsfld valuetype T_symset _G::Declbegsys
    ldsfld int32 _G::Sym
    call bool _SetContains(valuetype T_symset s, int32 val)
    ldc.i4.0
    ceq
    brfalse L_repeat_2
    .line 345
    ldsflda valuetype T_array_11 _G::Code
    ldsflda valuetype T_array_13 _G::Table
    ldloc _F
    ldfld int32 @block::Tx0
    call instance valuetype T_record_12& T_array_13::ldadr(int32)
    ldfld int32 T_record_12::Adr
    call instance valuetype T_instruction& T_array_11::ldadr(int32)
    ldsfld int32 _G::Cx
    dup
    ldc.i4 0
    ldc.i4 2047
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stfld int16 T_instruction::a
    .line 347
    ldsflda valuetype T_array_13 _G::Table
    ldloc _F
    ldfld int32 @block::Tx0
    call instance valuetype T_record_12& T_array_13::ldadr(int32)
    ldsfld int32 _G::Cx
    stfld int32 T_record_12::Adr
    /* nop */
    .line 349
    ldloc _F
    ldc.i4 0
    stfld int32 @block::Cx0
    .line 349
    ldc.i4 5
    ldc.i4 0
    ldloc _F
    ldfld int32 @block::Dx
    call void Gen(int32 x, int32 y, int32 z)
    .line 350
    ldloc _F
    ldloc $tmpSetLiteral4
    call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
    ldloc _F
    ldfld valuetype T_symset @block::Fsys
    call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
    call valuetype T_set_2 _SetUnion(valuetype T_set_2 a, valuetype T_set_2 b)
    dup
    ldc.i4 0
    ldc.i4 29
    call void _SetCheck(valuetype T_set_2 s, int32 min, int32 max)
    call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_2 s)
    call instance void @block::Statement(valuetype T_symset Fsys)
    .line 351
    ldc.i4 1
    ldc.i4 0
    ldc.i4 0
    call void Gen(int32 x, int32 y, int32 z)
    .line 352
    ldloc _F
    ldfld valuetype T_symset @block::Fsys
    ldloc $tmpSetLiteral5
    dup
    ldc.i4 0
    ldc.i4 29
    call void _SetCheck(valuetype T_set_2 s, int32 min, int32 max)
    call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_2 s)
    ldc.i4 8
    call void Test(valuetype T_symset S1, valuetype T_symset S2, int32 n)
    .line 353
    ldloc _F
    call instance void @block::Listcode()
    /* nop */

L_Epilogue:
    ret
}

.line 356

.method static
void Interpret()
{
    .maxstack 32

    .locals init(
        class @interpret _F,
        int32 $tmpSwitchValue1,
        int16 $tmpSwitchValue2)
    
    newobj instance void @interpret::.ctor()
    stloc _F

L_Entry:
    .line 370
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " start pl/0"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 371
    ldloc _F
    ldc.i4 0
    stfld int32 @interpret::t
    .line 371
    ldloc _F
    ldc.i4 1
    stfld int32 @interpret::b
    .line 371
    ldloc _F
    ldc.i4 0
    stfld int32 @interpret::p
    .line 372
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldc.i4 1
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldc.i4 0
    stobj int32
    .line 372
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldc.i4 2
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldc.i4 0
    stobj int32
    .line 372
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldc.i4 3
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldc.i4 0
    stobj int32
    .line 373
L_repeat_1:
    .line 373
    ldloc _F
    ldsflda valuetype T_array_11 _G::Code
    ldloc _F
    ldfld int32 @interpret::p
    call instance valuetype T_instruction& T_array_11::ldadr(int32)
    ldobj valuetype T_instruction
    stfld valuetype T_instruction @interpret::i
    .line 373
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::p
    ldc.i4 1
    add
    stfld int32 @interpret::p
    .line 375
    ldloc _F
    ldflda valuetype T_instruction @interpret::i
    ldfld int32 T_instruction::f
    stloc $tmpSwitchValue1
    ldloc $tmpSwitchValue1
    ldc.i4 0
    bne.un L_check_case_3
    .line 376
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    stfld int32 @interpret::t
    .line 376
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldloc _F
    ldflda valuetype T_instruction @interpret::i
    ldfld int16 T_instruction::a
    stobj int32
    br L_case_end_2
L_check_case_3:
    ldloc $tmpSwitchValue1
    ldc.i4 1
    bne.un L_check_case_4
    .line 378
    ldloc _F
    ldflda valuetype T_instruction @interpret::i
    ldfld int16 T_instruction::a
    stloc $tmpSwitchValue2
    ldloc $tmpSwitchValue2
    ldc.i4 0
    bne.un L_check_case_6
    .line 380
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::b
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 380
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 3
    add
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    stfld int32 @interpret::p
    .line 380
    ldloc _F
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 2
    add
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    stfld int32 @interpret::b
    /* nop */
    br L_case_end_5
L_check_case_6:
    ldloc $tmpSwitchValue2
    ldc.i4 1
    bne.un L_check_case_7
    .line 382
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    neg
    stobj int32
    br L_case_end_5
L_check_case_7:
    ldloc $tmpSwitchValue2
    ldc.i4 2
    bne.un L_check_case_8
    .line 383
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 383
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    add
    stobj int32
    br L_case_end_5
L_check_case_8:
    ldloc $tmpSwitchValue2
    ldc.i4 3
    bne.un L_check_case_9
    .line 385
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 385
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    sub
    stobj int32
    br L_case_end_5
L_check_case_9:
    ldloc $tmpSwitchValue2
    ldc.i4 4
    bne.un L_check_case_10
    .line 387
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 387
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    mul
    stobj int32
    br L_case_end_5
L_check_case_10:
    ldloc $tmpSwitchValue2
    ldc.i4 5
    bne.un L_check_case_11
    .line 389
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 389
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    div
    stobj int32
    br L_case_end_5
L_check_case_11:
    ldloc $tmpSwitchValue2
    ldc.i4 6
    bne.un L_check_case_12
    .line 391
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    ldc.i4.1
    and
    stobj int32
    br L_case_end_5
L_check_case_12:
    ldloc $tmpSwitchValue2
    ldc.i4 8
    bne.un L_check_case_13
    .line 392
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 392
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    ceq
    stobj int32
    br L_case_end_5
L_check_case_13:
    ldloc $tmpSwitchValue2
    ldc.i4 9
    bne.un L_check_case_14
    .line 394
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 394
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    ceq
    ldc.i4.0
    ceq
    stobj int32
    br L_case_end_5
L_check_case_14:
    ldloc $tmpSwitchValue2
    ldc.i4 10
    bne.un L_check_case_15
    .line 396
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 396
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    clt
    stobj int32
    br L_case_end_5
L_check_case_15:
    ldloc $tmpSwitchValue2
    ldc.i4 11
    bne.un L_check_case_16
    .line 398
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 398
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    clt
    ldc.i4.0
    ceq
    stobj int32
    br L_case_end_5
L_check_case_16:
    ldloc $tmpSwitchValue2
    ldc.i4 12
    bne.un L_check_case_17
    .line 400
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 400
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    cgt
    stobj int32
    br L_case_end_5
L_check_case_17:
    ldloc $tmpSwitchValue2
    ldc.i4 13
    bne.un L_case_end_5
    .line 402
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    .line 402
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    cgt
    ldc.i4.0
    ceq
    stobj int32
L_case_end_5:
    br L_case_end_2
L_check_case_4:
    ldloc $tmpSwitchValue1
    ldc.i4 2
    bne.un L_check_case_18
    .line 405
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    stfld int32 @interpret::t
    .line 405
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldloc _F
    ldflda valuetype T_instruction @interpret::i
    ldfld int8 T_instruction::l
    call instance int32 @interpret::Base(int32 l)
    ldloc _F
    ldflda valuetype T_instruction @interpret::i
    ldfld int16 T_instruction::a
    add
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    stobj int32
    br L_case_end_2
L_check_case_18:
    ldloc $tmpSwitchValue1
    ldc.i4 3
    bne.un L_check_case_19
    .line 407
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldloc _F
    ldflda valuetype T_instruction @interpret::i
    ldfld int8 T_instruction::l
    call instance int32 @interpret::Base(int32 l)
    ldloc _F
    ldflda valuetype T_instruction @interpret::i
    ldfld int16 T_instruction::a
    add
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    stobj int32
    .line 407
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 407
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
    br L_case_end_2
L_check_case_19:
    ldloc $tmpSwitchValue1
    ldc.i4 4
    bne.un L_check_case_20
    .line 410
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldloc _F
    ldloc _F
    ldflda valuetype T_instruction @interpret::i
    ldfld int8 T_instruction::l
    call instance int32 @interpret::Base(int32 l)
    stobj int32
    .line 410
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 2
    add
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldloc _F
    ldfld int32 @interpret::b
    stobj int32
    .line 410
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 3
    add
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldloc _F
    ldfld int32 @interpret::p
    stobj int32
    .line 411
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    add
    stfld int32 @interpret::b
    .line 411
    ldloc _F
    ldloc _F
    ldflda valuetype T_instruction @interpret::i
    ldfld int16 T_instruction::a
    stfld int32 @interpret::p
    br L_case_end_2
L_check_case_20:
    ldloc $tmpSwitchValue1
    ldc.i4 5
    bne.un L_check_case_21
    .line 413
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldloc _F
    ldflda valuetype T_instruction @interpret::i
    ldfld int16 T_instruction::a
    add
    stfld int32 @interpret::t
    br L_case_end_2
L_check_case_21:
    ldloc $tmpSwitchValue1
    ldc.i4 6
    bne.un L_check_case_22
    .line 414
    ldloc _F
    ldloc _F
    ldflda valuetype T_instruction @interpret::i
    ldfld int16 T_instruction::a
    stfld int32 @interpret::p
    br L_case_end_2
L_check_case_22:
    ldloc $tmpSwitchValue1
    ldc.i4 7
    bne.un L_case_end_2
    .line 415
    ldloc _F
    ldflda valuetype T_interpret_array_41 @interpret::s
    ldloc _F
    ldfld int32 @interpret::t
    call instance int32& T_interpret_array_41::ldadr(int32)
    ldobj int32
    ldc.i4 0
    ceq
    brfalse L_if_end_23
    .line 415
    ldloc _F
    ldloc _F
    ldflda valuetype T_instruction @interpret::i
    ldfld int16 T_instruction::a
    stfld int32 @interpret::p
L_if_end_23:
    .line 415
    ldloc _F
    ldloc _F
    ldfld int32 @interpret::t
    ldc.i4 1
    sub
    stfld int32 @interpret::t
L_case_end_2:
    ldloc _F
    ldfld int32 @interpret::p
    ldc.i4 0
    ceq
    brfalse L_repeat_1
    .line 419
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " end pl/0"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
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

    .locals init(
        uint8 $tmpEndValue1,
        uint8 $tmpIndex2,
        uint8 $tmpIndex3,
        valuetype T_symset $tmpSetLiteral4,
        valuetype T_symset $tmpSetLiteral5,
        valuetype T_symset $tmpSetLiteral6,
        valuetype T_symset $tmpSetLiteral7)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Input
    ldc.i4 0
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldloca $tmpSetLiteral4
    ldc.i4 27 // constsym 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral4
    ldc.i4 28 // varsym 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral4
    ldc.i4 29 // procsym 
    call instance void T_symset::addValue(int32)

    ldloca $tmpSetLiteral5
    ldc.i4 20 // beginsym 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral5
    ldc.i4 26 // callsym 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral5
    ldc.i4 22 // ifsym 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral5
    ldc.i4 24 // whilesym 
    call instance void T_symset::addValue(int32)

    ldloca $tmpSetLiteral6
    ldc.i4 1 // ident 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral6
    ldc.i4 2 // number 
    call instance void T_symset::addValue(int32)
    ldloca $tmpSetLiteral6
    ldc.i4 14 // lparen 
    call instance void T_symset::addValue(int32)

    ldloca $tmpSetLiteral7
    ldc.i4 18 // period 
    call instance void T_symset::addValue(int32)

L_Entry:
.try
{
    .line 423
    ldc.i4 255
    stloc $tmpEndValue1
    ldc.i4 0
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc $tmpIndex2
    stsfld uint8 _G::Ch
L_for_loop_1:
    .line 423
    ldsflda valuetype T_array_8 _G::Ssym
    ldsfld uint8 _G::Ch
    call instance int32& T_array_8::ldadr(int32)
    ldc.i4 0 // nul 
    stobj int32
    ldsfld uint8 _G::Ch
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc $tmpIndex3
    stsfld uint8 _G::Ch
    br L_for_loop_1
L_for_end_2:
    pop
    .line 424
    ldsflda valuetype T_array_4 _G::Word
    ldc.i4 1
    call instance valuetype T_alfa& T_array_4::ldadr(int32)
    ldsfld valuetype T_alfa STRING_1    // "begin     "
    stobj valuetype T_alfa
    .line 424
    ldsflda valuetype T_array_4 _G::Word
    ldc.i4 2
    call instance valuetype T_alfa& T_array_4::ldadr(int32)
    ldsfld valuetype T_alfa STRING_2    // "call      "
    stobj valuetype T_alfa
    .line 425
    ldsflda valuetype T_array_4 _G::Word
    ldc.i4 3
    call instance valuetype T_alfa& T_array_4::ldadr(int32)
    ldsfld valuetype T_alfa STRING_3    // "const     "
    stobj valuetype T_alfa
    .line 425
    ldsflda valuetype T_array_4 _G::Word
    ldc.i4 4
    call instance valuetype T_alfa& T_array_4::ldadr(int32)
    ldsfld valuetype T_alfa STRING_4    // "do        "
    stobj valuetype T_alfa
    .line 426
    ldsflda valuetype T_array_4 _G::Word
    ldc.i4 5
    call instance valuetype T_alfa& T_array_4::ldadr(int32)
    ldsfld valuetype T_alfa STRING_5    // "end       "
    stobj valuetype T_alfa
    .line 426
    ldsflda valuetype T_array_4 _G::Word
    ldc.i4 6
    call instance valuetype T_alfa& T_array_4::ldadr(int32)
    ldsfld valuetype T_alfa STRING_6    // "if        "
    stobj valuetype T_alfa
    .line 427
    ldsflda valuetype T_array_4 _G::Word
    ldc.i4 7
    call instance valuetype T_alfa& T_array_4::ldadr(int32)
    ldsfld valuetype T_alfa STRING_7    // "odd       "
    stobj valuetype T_alfa
    .line 427
    ldsflda valuetype T_array_4 _G::Word
    ldc.i4 8
    call instance valuetype T_alfa& T_array_4::ldadr(int32)
    ldsfld valuetype T_alfa STRING_8    // "procedure "
    stobj valuetype T_alfa
    .line 428
    ldsflda valuetype T_array_4 _G::Word
    ldc.i4 9
    call instance valuetype T_alfa& T_array_4::ldadr(int32)
    ldsfld valuetype T_alfa STRING_9    // "then      "
    stobj valuetype T_alfa
    .line 428
    ldsflda valuetype T_array_4 _G::Word
    ldc.i4 10
    call instance valuetype T_alfa& T_array_4::ldadr(int32)
    ldsfld valuetype T_alfa STRING_10    // "var       "
    stobj valuetype T_alfa
    .line 429
    ldsflda valuetype T_array_4 _G::Word
    ldc.i4 11
    call instance valuetype T_alfa& T_array_4::ldadr(int32)
    ldsfld valuetype T_alfa STRING_11    // "while     "
    stobj valuetype T_alfa
    .line 430
    ldsflda valuetype T_array_5 _G::Wsym
    ldc.i4 1
    call instance int32& T_array_5::ldadr(int32)
    ldc.i4 20 // beginsym 
    stobj int32
    .line 430
    ldsflda valuetype T_array_5 _G::Wsym
    ldc.i4 2
    call instance int32& T_array_5::ldadr(int32)
    ldc.i4 26 // callsym 
    stobj int32
    .line 431
    ldsflda valuetype T_array_5 _G::Wsym
    ldc.i4 3
    call instance int32& T_array_5::ldadr(int32)
    ldc.i4 27 // constsym 
    stobj int32
    .line 431
    ldsflda valuetype T_array_5 _G::Wsym
    ldc.i4 4
    call instance int32& T_array_5::ldadr(int32)
    ldc.i4 25 // dosym 
    stobj int32
    .line 432
    ldsflda valuetype T_array_5 _G::Wsym
    ldc.i4 5
    call instance int32& T_array_5::ldadr(int32)
    ldc.i4 21 // endsym 
    stobj int32
    .line 432
    ldsflda valuetype T_array_5 _G::Wsym
    ldc.i4 6
    call instance int32& T_array_5::ldadr(int32)
    ldc.i4 22 // ifsym 
    stobj int32
    .line 433
    ldsflda valuetype T_array_5 _G::Wsym
    ldc.i4 7
    call instance int32& T_array_5::ldadr(int32)
    ldc.i4 7 // oddsym 
    stobj int32
    .line 433
    ldsflda valuetype T_array_5 _G::Wsym
    ldc.i4 8
    call instance int32& T_array_5::ldadr(int32)
    ldc.i4 29 // procsym 
    stobj int32
    .line 434
    ldsflda valuetype T_array_5 _G::Wsym
    ldc.i4 9
    call instance int32& T_array_5::ldadr(int32)
    ldc.i4 23 // thensym 
    stobj int32
    .line 434
    ldsflda valuetype T_array_5 _G::Wsym
    ldc.i4 10
    call instance int32& T_array_5::ldadr(int32)
    ldc.i4 28 // varsym 
    stobj int32
    .line 435
    ldsflda valuetype T_array_5 _G::Wsym
    ldc.i4 11
    call instance int32& T_array_5::ldadr(int32)
    ldc.i4 24 // whilesym 
    stobj int32
    .line 436
    ldsflda valuetype T_array_8 _G::Ssym
    ldc.i4 43 // '+'
    call instance int32& T_array_8::ldadr(int32)
    ldc.i4 3 // plus 
    stobj int32
    .line 436
    ldsflda valuetype T_array_8 _G::Ssym
    ldc.i4 45 // '-'
    call instance int32& T_array_8::ldadr(int32)
    ldc.i4 4 // minus 
    stobj int32
    .line 437
    ldsflda valuetype T_array_8 _G::Ssym
    ldc.i4 42 // '*'
    call instance int32& T_array_8::ldadr(int32)
    ldc.i4 5 // times 
    stobj int32
    .line 437
    ldsflda valuetype T_array_8 _G::Ssym
    ldc.i4 47 // '/'
    call instance int32& T_array_8::ldadr(int32)
    ldc.i4 6 // slash 
    stobj int32
    .line 438
    ldsflda valuetype T_array_8 _G::Ssym
    ldc.i4 40 // '('
    call instance int32& T_array_8::ldadr(int32)
    ldc.i4 14 // lparen 
    stobj int32
    .line 438
    ldsflda valuetype T_array_8 _G::Ssym
    ldc.i4 41 // ')'
    call instance int32& T_array_8::ldadr(int32)
    ldc.i4 15 // rparen 
    stobj int32
    .line 439
    ldsflda valuetype T_array_8 _G::Ssym
    ldc.i4 61 // '='
    call instance int32& T_array_8::ldadr(int32)
    ldc.i4 8 // eql 
    stobj int32
    .line 439
    ldsflda valuetype T_array_8 _G::Ssym
    ldc.i4 44 // ','
    call instance int32& T_array_8::ldadr(int32)
    ldc.i4 16 // comma 
    stobj int32
    .line 440
    ldsflda valuetype T_array_8 _G::Ssym
    ldc.i4 46 // '.'
    call instance int32& T_array_8::ldadr(int32)
    ldc.i4 18 // period 
    stobj int32
    .line 440
    ldsflda valuetype T_array_8 _G::Ssym
    ldc.i4 35 // '#'
    call instance int32& T_array_8::ldadr(int32)
    ldc.i4 9 // neq 
    stobj int32
    .line 441
    ldsflda valuetype T_array_8 _G::Ssym
    ldc.i4 60 // '<'
    call instance int32& T_array_8::ldadr(int32)
    ldc.i4 10 // lss 
    stobj int32
    .line 441
    ldsflda valuetype T_array_8 _G::Ssym
    ldc.i4 62 // '>'
    call instance int32& T_array_8::ldadr(int32)
    ldc.i4 12 // gtr 
    stobj int32
    .line 442
    ldsflda valuetype T_array_8 _G::Ssym
    ldc.i4 91 // '['
    call instance int32& T_array_8::ldadr(int32)
    ldc.i4 11 // leq 
    stobj int32
    .line 442
    ldsflda valuetype T_array_8 _G::Ssym
    ldc.i4 93 // ']'
    call instance int32& T_array_8::ldadr(int32)
    ldc.i4 13 // geq 
    stobj int32
    .line 443
    ldsflda valuetype T_array_8 _G::Ssym
    ldc.i4 59 // ';'
    call instance int32& T_array_8::ldadr(int32)
    ldc.i4 17 // semicolon 
    stobj int32
    .line 444
    ldsflda valuetype T_array_16 _G::Mnemonic
    ldc.i4 0 // lit 
    call instance valuetype T_array_15& T_array_16::ldadr(int32)
    ldsfld valuetype T_array_15 STRING_12    // "  lit"
    stobj valuetype T_array_15
    .line 444
    ldsflda valuetype T_array_16 _G::Mnemonic
    ldc.i4 1 // opr 
    call instance valuetype T_array_15& T_array_16::ldadr(int32)
    ldsfld valuetype T_array_15 STRING_13    // "  opr"
    stobj valuetype T_array_15
    .line 445
    ldsflda valuetype T_array_16 _G::Mnemonic
    ldc.i4 2 // lod 
    call instance valuetype T_array_15& T_array_16::ldadr(int32)
    ldsfld valuetype T_array_15 STRING_14    // "  lod"
    stobj valuetype T_array_15
    .line 445
    ldsflda valuetype T_array_16 _G::Mnemonic
    ldc.i4 3 // sto 
    call instance valuetype T_array_15& T_array_16::ldadr(int32)
    ldsfld valuetype T_array_15 STRING_15    // "  sto"
    stobj valuetype T_array_15
    .line 446
    ldsflda valuetype T_array_16 _G::Mnemonic
    ldc.i4 4 // cal 
    call instance valuetype T_array_15& T_array_16::ldadr(int32)
    ldsfld valuetype T_array_15 STRING_16    // "  cal"
    stobj valuetype T_array_15
    .line 446
    ldsflda valuetype T_array_16 _G::Mnemonic
    ldc.i4 5 // int 
    call instance valuetype T_array_15& T_array_16::ldadr(int32)
    ldsfld valuetype T_array_15 STRING_17    // "  int"
    stobj valuetype T_array_15
    .line 447
    ldsflda valuetype T_array_16 _G::Mnemonic
    ldc.i4 6 // jmp 
    call instance valuetype T_array_15& T_array_16::ldadr(int32)
    ldsfld valuetype T_array_15 STRING_18    // "  jmp"
    stobj valuetype T_array_15
    .line 447
    ldsflda valuetype T_array_16 _G::Mnemonic
    ldc.i4 7 // jpc 
    call instance valuetype T_array_15& T_array_16::ldadr(int32)
    ldsfld valuetype T_array_15 STRING_19    // "  jpc"
    stobj valuetype T_array_15
    .line 448
    ldloc $tmpSetLiteral4
    stsfld valuetype T_symset _G::Declbegsys
    .line 449
    ldloc $tmpSetLiteral5
    stsfld valuetype T_symset _G::Statbegsys
    .line 450
    ldloc $tmpSetLiteral6
    stsfld valuetype T_symset _G::Facbegsys
    .line 451
    ldc.i4 0
    stsfld int32 _G::Err
    .line 452
    ldc.i4 0
    stsfld int32 _G::Cc
    .line 452
    ldc.i4 0
    stsfld int32 _G::Cx
    .line 452
    ldc.i4 0
    stsfld int32 _G::Ll
    .line 452
    ldc.i4 32 // ' '
    stsfld uint8 _G::Ch
    .line 452
    ldc.i4 10 // al 
    stsfld int32 _G::Kk
    .line 452
    call void Getsym()
    .line 453
    ldc.i4 0
    ldc.i4 0
    ldloc $tmpSetLiteral7
    call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
    ldsfld valuetype T_symset _G::Declbegsys
    call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
    call valuetype T_set_2 _SetUnion(valuetype T_set_2 a, valuetype T_set_2 b)
    ldsfld valuetype T_symset _G::Statbegsys
    call valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
    call valuetype T_set_2 _SetUnion(valuetype T_set_2 a, valuetype T_set_2 b)
    dup
    ldc.i4 0
    ldc.i4 29
    call void _SetCheck(valuetype T_set_2 s, int32 min, int32 max)
    call valuetype T_symset _SetCastTo_T_symset(valuetype T_set_2 s)
    call void Block(int32 Lev, int32 Tx, valuetype T_symset Fsys)
    .line 454
    ldsfld int32 _G::Sym
    ldc.i4 18 // period 
    ceq
    ldc.i4.0
    ceq
    brfalse L_if_end_3
    .line 454
    ldc.i4 9
    call void Error(int32 n)
L_if_end_3:
    .line 455
    ldsfld int32 _G::Err
    ldc.i4 0
    ceq
    brfalse L_else_4
    .line 455
    call void Interpret()
    br L_if_end_5
L_else_4:
    .line 455
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldstr " errors in pl/0 program"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_if_end_5:
    .line 456
L_99:
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
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

.method static bool _SetContains(valuetype T_set_2 s, int32 val)
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
    ldc.i4 4
    ldarg val
    call bool [lpcRuntime]LPC.Set::Contains(uint8*, int32, int32)
    ret
}

.method static valuetype T_set_2 _SetCastTo_T_set_2(valuetype T_symset s)
{
    .locals init (valuetype T_set_2 result)

    ldloca result
    ldarga s
    ldc.i4 4
    cpblk
    ldloc result
    ret
}

.method static valuetype T_set_2 _SetUnion(valuetype T_set_2 a, valuetype T_set_2 b)
{
    .locals init (valuetype T_set_2 result)

    ldarga a
    ldarga b
    ldloca result
    ldc.i4 32
    call void [lpcRuntime]LPC.Set::Union(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static valuetype T_symset _SetCastTo_T_symset(valuetype T_set_2 s)
{
    .locals init (valuetype T_symset result)

    ldloca result
    ldarga s
    ldc.i4 4
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
    ldc.i4 4
    call void [lpcRuntime]LPC.Set::Union(uint8*, uint8*, uint8*, int32)
    ldloc result
    ret
}

.method static void _SetCheck(valuetype T_set_2 s, int32 min, int32 max)
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

// "  cal"
.data STRING_16_DATA = bytearray( 20 20 63 61 6c )
.field static valuetype T_array_15 STRING_16 at STRING_16_DATA

// "  int"
.data STRING_17_DATA = bytearray( 20 20 69 6e 74 )
.field static valuetype T_array_15 STRING_17 at STRING_17_DATA

// "  jmp"
.data STRING_18_DATA = bytearray( 20 20 6a 6d 70 )
.field static valuetype T_array_15 STRING_18 at STRING_18_DATA

// "  jpc"
.data STRING_19_DATA = bytearray( 20 20 6a 70 63 )
.field static valuetype T_array_15 STRING_19 at STRING_19_DATA

// "  lit"
.data STRING_12_DATA = bytearray( 20 20 6c 69 74 )
.field static valuetype T_array_15 STRING_12 at STRING_12_DATA

// "  lod"
.data STRING_14_DATA = bytearray( 20 20 6c 6f 64 )
.field static valuetype T_array_15 STRING_14 at STRING_14_DATA

// "  opr"
.data STRING_13_DATA = bytearray( 20 20 6f 70 72 )
.field static valuetype T_array_15 STRING_13 at STRING_13_DATA

// "  sto"
.data STRING_15_DATA = bytearray( 20 20 73 74 6f )
.field static valuetype T_array_15 STRING_15 at STRING_15_DATA

// "begin     "
.data STRING_1_DATA = bytearray( 62 65 67 69 6e 20 20 20 20 20 )
.field static valuetype T_alfa STRING_1 at STRING_1_DATA

// "call      "
.data STRING_2_DATA = bytearray( 63 61 6c 6c 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_2 at STRING_2_DATA

// "const     "
.data STRING_3_DATA = bytearray( 63 6f 6e 73 74 20 20 20 20 20 )
.field static valuetype T_alfa STRING_3 at STRING_3_DATA

// "do        "
.data STRING_4_DATA = bytearray( 64 6f 20 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_4 at STRING_4_DATA

// "end       "
.data STRING_5_DATA = bytearray( 65 6e 64 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_5 at STRING_5_DATA

// "if        "
.data STRING_6_DATA = bytearray( 69 66 20 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_6 at STRING_6_DATA

// "odd       "
.data STRING_7_DATA = bytearray( 6f 64 64 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_7 at STRING_7_DATA

// "procedure "
.data STRING_8_DATA = bytearray( 70 72 6f 63 65 64 75 72 65 20 )
.field static valuetype T_alfa STRING_8 at STRING_8_DATA

// "then      "
.data STRING_9_DATA = bytearray( 74 68 65 6e 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_9 at STRING_9_DATA

// "var       "
.data STRING_10_DATA = bytearray( 76 61 72 20 20 20 20 20 20 20 )
.field static valuetype T_alfa STRING_10 at STRING_10_DATA

// "while     "
.data STRING_11_DATA = bytearray( 77 68 69 6c 65 20 20 20 20 20 )
.field static valuetype T_alfa STRING_11 at STRING_11_DATA


