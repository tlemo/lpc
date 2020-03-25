
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

.line 0 "test04.pas"

.line 27
//================================================================================
// scope: foo (level : 2)

.class @foo
{
    // local variables
    .field public void* p

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


.line 3
//================================================================================
// scope: program scope (level : 1)

.line 0xfeefee

// TYPE R1 = record;
.class value explicit T_R1
{
    // alignment = 8
    .size 8
    
    .field [0] public void* p
}

.line 0xfeefee

// TYPE R2 = record;
.class value explicit T_R2
{
    // alignment = 8
    .size 8
    
    .field [0] public void* p
}

.line 0xfeefee

// TYPE R3 = record;
.class value explicit T_R3
{
    // alignment = 8
    .size 16
    
    .field [0] public int32 Val
    .field [8] public void* Next
}

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype [lpcRuntime]LPC.File _output
}

.line 27

.method static
void Foo()
{
    .maxstack 32

    .locals init(class @foo _F)
    
    newobj instance void @foo::.ctor()
    stloc _F

L_Entry:
    /* nop */

L_Epilogue:
    ret
}

.line 0
//================================================================================
// scope: global scope (level : 0)

.line 3

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

    endfinally
}

}
