
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

.line 0 "nonlocalGoto2.pas"

.line 8
//================================================================================
// scope: foo (level : 2)

.class @foo
{
    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 17
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


.line 15
//================================================================================
// scope: bar (level : 2)

.class @bar
{
    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }

.line 17

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
        .line 19
        ldsflda valuetype [lpcRuntime]LPC.File _G::_output
        dup
        ldstr "moo"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 20
        ldc.i4 2
        newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
        throw
        .line 21
        ldsflda valuetype [lpcRuntime]LPC.File _G::_output
        dup
        ldstr "UNEXPECTED"
        call instance void [lpcRuntime]LPC.File::Write(string)
        call instance void [lpcRuntime]LPC.File::WriteLn()
        .line 22
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
}

.line 8

.method static
void Foo()
{
    .maxstack 32

    .locals init(class @foo _F)
    
    newobj instance void @foo::.ctor()
    stloc _F

L_Entry:
    .line 10
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "foo"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 11
    ldc.i4 1
    newobj instance void [lpcRuntime]LPC.NonLocalGoto::.ctor(int32)
    throw
    .line 12
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "UNEXPECTED"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */

L_Epilogue:
    ret
}

.line 15

.method static
void Bar()
{
    .maxstack 32

    .locals init(class @bar _F)
    
    newobj instance void @bar::.ctor()
    stloc _F

L_Entry:
.try
{
    .line 25
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "bar"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 26
    br L_1
    .line 27
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "UNEXPECTED"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 29
L_1:
    ldloc _F
    call instance void @bar::Moo()
    .line 30
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "UNEXPECTED"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
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
    .line 34
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "entry"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 35
    call void Foo()
    .line 36
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "UNEXPECTED"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 38
L_1:
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "P_L1"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 39
    call void Bar()
    .line 40
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "UNEXPECTED"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 41
    br L_1
    .line 43
L_2:
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "P_L2"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 44
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "done"
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
