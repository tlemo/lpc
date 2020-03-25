
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

.line 0 "nonlocalGoto.pas"

.line 12
//================================================================================
// scope: foo (level : 2)

.class @foo
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


.line 27
//================================================================================
// scope: bar_moo (level : 3)

.class @bar_moo
{
    // slink
    .field public class @bar _slink

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 23
//================================================================================
// scope: bar (level : 2)

.class @bar
{
    // parameters
    .field public int32 x

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 27

    .method public
    void Moo()
    {
        .maxstack 32
    
        .locals init(class @bar_moo _F)
        
        newobj instance void @bar_moo::.ctor()
        stloc _F
        
        ldloc _F
        ldarg.0
        stfld class @bar @bar_moo::_slink
    
    L_Entry:
        .line 29
        ldc.i4 3
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        /* nop */
    
    L_Epilogue:
        ret
    }
}


.line 4
//================================================================================
// scope: program scope (level : 1)

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype [lpcRuntime]LPC.File _output
    .field public static int32 P1
    .field public static int32 P2
}

.line 12

.method static
int32 Foo(int32 x)
{
    .maxstack 32

    .locals init(
        class @foo _F,
        int32 $tmpSwitchValue1)
    
    newobj instance void @foo::.ctor()
    stloc _F
    
    ldloc _F
    ldarg x
    stfld int32 @foo::x

L_Entry:
    .line 14
    ldloc _F
    ldfld int32 @foo::x
    stloc $tmpSwitchValue1
    ldloc $tmpSwitchValue1
    ldc.i4 1
    bne.un L_check_case_2
    .line 15
    ldloc _F
    ldfld int32 @foo::x
    call void Bar(int32 x)
    br L_case_end_1
L_check_case_2:
    ldloc $tmpSwitchValue1
    ldc.i4 3
    bne.un L_check_case_3
    .line 16
    ldc.i4 1
    newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
    throw
    br L_case_end_1
L_check_case_3:
    ldloc $tmpSwitchValue1
    ldc.i4 2
    bne.un L_case_end_1
    .line 17
    ldc.i4 2
    newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
    throw
L_case_end_1:
    .line 19
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "UNEXPECTED"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 20
    ldloc _F
    ldc.i4 1
    neg
    stfld int32 @foo::_fnvalue
    /* nop */

L_Epilogue:
    ldloc _F
    ldfld int32 @foo::_fnvalue
    ret
}

.line 23

.method static
void Bar(int32 x)
{
    .maxstack 32

    .locals init(class @bar _F)
    
    newobj instance void @bar::.ctor()
    stloc _F
    
    ldloc _F
    ldarg x
    stfld int32 @bar::x

L_Entry:
.try
{
    .line 33
    ldloc _F
    call instance void @bar::Moo()
    .line 34
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "UNEXPECTED"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 36
L_1:
    ldc.i4 3
    call int32 Foo(int32 x)
    stsfld int32 _G::P2
    /* nop */
    leave L_Epilogue
}
catch [lpcRuntime]LPC.NonLocalGoto
{
    ldfld int32 [lpcRuntime]LPC.NonLocalGoto::label
    dup
    ldc.i4 3
    beq GOTO_L_1
    rethrow
GOTO_L_1:
    leave L_1
}

L_Epilogue:
    ret
}

.line 0
//================================================================================
// scope: global scope (level : 0)

.line 4

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
.try
{
    .line 40
    ldc.i4 0
    stsfld int32 _G::P1
    .line 41
    ldc.i4 0
    stsfld int32 _G::P2
    .line 44
L_1:
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "P_L1"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 45
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "p1 = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld int32 _G::P1
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 46
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "p2 = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld int32 _G::P2
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 48
    ldsfld int32 _G::P1
    ldc.i4 1
    add
    stsfld int32 _G::P1
    .line 50
    ldsfld int32 _G::P1
    call int32 Foo(int32 x)
    stsfld int32 _G::P2
    .line 51
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "UNEXPECTED"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 52
    br L_1
    .line 55
L_2:
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "P_L2"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 56
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "p1 = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld int32 _G::P1
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 57
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "p2 = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld int32 _G::P2
    call instance void [lpcRuntime]LPC.File::Write(int32)
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
    dup
    ldc.i4 2
    beq GOTO_L_2
    rethrow
GOTO_L_1:
    leave L_1
GOTO_L_2:
    leave L_2
}

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
