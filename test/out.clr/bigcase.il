
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

.line 0 "bigcase.pas"

.line 2
//================================================================================
// scope: program scope (level : 1)

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype [lpcRuntime]LPC.File _output
    .field public static int32 Count
    .field public static uint8 Index
}

.line 0
//================================================================================
// scope: global scope (level : 0)

.line 2

.method static
void _Program()
{
    .maxstack 32

    .locals init(
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpSwitchValue3,
        uint8 $tmpEndValue4,
        uint8 $tmpIndex5,
        uint8 $tmpIndex6,
        int32 $tmpIndex7)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    ldc.i4 0
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

L_Entry:
    .line 8
    ldc.i4 10
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc $tmpIndex2
    stsfld int32 _G::Count
L_for_loop_1:
    .line 9
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Count
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    pop
    .line 10
    ldsfld int32 _G::Count
    stloc $tmpSwitchValue3
    ldloc $tmpSwitchValue3
    ldc.i4 7
    beq L_case_5
    ldloc $tmpSwitchValue3
    ldc.i4 8
    beq L_case_5
    ldloc $tmpSwitchValue3
    ldc.i4 9
    beq L_case_5
    br L_check_case_4
L_case_5:
    .line 11
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr " Big Number"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_3
L_check_case_4:
    ldloc $tmpSwitchValue3
    ldc.i4 2
    beq L_case_7
    ldloc $tmpSwitchValue3
    ldc.i4 4
    beq L_case_7
    ldloc $tmpSwitchValue3
    ldc.i4 6
    beq L_case_7
    br L_check_case_6
L_case_7:
    .line 12
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr " Small"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 13
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr " even"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 14
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr " number."
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    /* nop */
    br L_case_end_3
L_check_case_6:
    ldloc $tmpSwitchValue3
    ldc.i4 3
    bne.un L_check_case_8
    .line 16
    ldc.i4 3
    stloc $tmpEndValue4
    ldc.i4 1
    dup
    ldloc $tmpEndValue4
    bgt L_for_end_10
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex5
    ldloc $tmpIndex5
    stsfld uint8 _G::Index
L_for_loop_9:
    .line 16
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr " Boo"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    ldsfld uint8 _G::Index
    dup
    ldloc $tmpEndValue4
    beq L_for_end_10
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex6
    ldloc $tmpIndex6
    stsfld uint8 _G::Index
    br L_for_loop_9
L_for_end_10:
    pop
    br L_case_end_3
L_check_case_8:
    ldloc $tmpSwitchValue3
    ldc.i4 1
    bne.un L_case_end_3
    .line 17
    ldc.i4 1 // (true)
    brfalse L_if_end_11
    .line 17
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr " TRUE is True,"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    .line 18
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr " and this is dumb."
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    /* nop */
L_if_end_11:
L_case_end_3:
    .line 22
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
    ldsfld int32 _G::Count
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex7
    ldloc $tmpIndex7
    stsfld int32 _G::Count
    br L_for_loop_1
L_for_end_2:
    pop
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
