
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

.line 0 "intrinsics.pas"

.line 4
//================================================================================
// scope: program scope (level : 1)

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype [lpcRuntime]LPC.File _output
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
    .line 6
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "sqrt(9.0) = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.r8 9.00000
    call float64 [lpcRuntime]LPC.Helpers::Sqrt(float64)
    call instance void [lpcRuntime]LPC.File::Write(float64)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 7
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "sqrt(9) = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 9
    conv.r8
    call float64 [lpcRuntime]LPC.Helpers::Sqrt(float64)
    call instance void [lpcRuntime]LPC.File::Write(float64)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 8
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "abs(-5.0) = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.r8 5.00000
    neg
    dup
    ldc.r8 0
    bge L_abs_question_1
    neg
L_abs_question_1:
    call instance void [lpcRuntime]LPC.File::Write(float64)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    .line 9
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "abs(-5) = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    neg
    dup
    ldc.i4 0
    bge L_abs_question_2
    neg
L_abs_question_2:
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
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
