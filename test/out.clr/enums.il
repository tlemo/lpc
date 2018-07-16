
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

// "enums.pas"

// line 2
//================================================================================
// scope: program scope (level : 1)

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype [lpcRuntime]LPC.File _output
    .field public static int32 Day
    .field public static float64 EveningPremium
    .field public static float64 NightPremium
    .field public static float64 RegularRate
    .field public static int32 Time
    .field public static float64 TotalPay
    .field public static float64 WeekendPremium
}

// line 0
//================================================================================
// scope: global scope (level : 0)

// line 2

.method static
void _Program()
{
    .maxstack 32

    .locals init(
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpSwitchValue3,
        int32 $tmpEndValue4,
        int32 $tmpIndex5,
        int32 $tmpSwitchValue6,
        int32 $tmpSwitchValue7,
        int32 $tmpIndex8,
        int32 $tmpIndex9)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    ldc.i4 0
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

L_Entry:
    // line 16
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldc.i4 33
    ldc.i4.0
    ldstr "Pay rate table"
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 17
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 18
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "  DAY        Morning  Afternoon"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 19
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "  Evening    Night"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 20
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 22
    ldc.r8 12.0000
    stsfld float64 _G::RegularRate
    // line 23
    ldc.r8 1.10000
    stsfld float64 _G::EveningPremium
    // line 24
    ldc.r8 1.33000
    stsfld float64 _G::NightPremium
    // line 25
    ldc.r8 1.25000
    stsfld float64 _G::WeekendPremium
    // line 27
    ldc.i4 6 // Sun 
    stloc $tmpEndValue1
    ldc.i4 0 // Mon 
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    dup
    ldc.i4 0
    ldc.i4 6
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc $tmpIndex2
    stsfld int32 _G::Day
L_for_loop_1:
    // line 28
    ldsfld int32 _G::Day
    stloc $tmpSwitchValue3
    ldloc $tmpSwitchValue3
    ldc.i4 0 // Mon 
    bne.un L_check_case_4
    // line 29
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "Monday   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_3
L_check_case_4:
    ldloc $tmpSwitchValue3
    ldc.i4 1 // Tue 
    bne.un L_check_case_5
    // line 30
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "Tuesday  "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_3
L_check_case_5:
    ldloc $tmpSwitchValue3
    ldc.i4 2 // Wed 
    bne.un L_check_case_6
    // line 31
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "Wednesday"
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_3
L_check_case_6:
    ldloc $tmpSwitchValue3
    ldc.i4 3 // Thu 
    bne.un L_check_case_7
    // line 32
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "Thursday "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_3
L_check_case_7:
    ldloc $tmpSwitchValue3
    ldc.i4 4 // Fri 
    bne.un L_check_case_8
    // line 33
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "Friday   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_3
L_check_case_8:
    ldloc $tmpSwitchValue3
    ldc.i4 5 // Sat 
    bne.un L_check_case_9
    // line 34
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "Saturday "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    br L_case_end_3
L_check_case_9:
    ldloc $tmpSwitchValue3
    ldc.i4 6 // Sun 
    bne.un L_case_end_3
    // line 35
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "Sunday   "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
L_case_end_3:
    // line 38
    ldc.i4 3 // Night 
    stloc $tmpEndValue4
    ldc.i4 0 // Morning 
    dup
    ldloc $tmpEndValue4
    bgt L_for_end_11
    dup
    ldc.i4 0
    ldc.i4 3
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex5
    ldloc $tmpIndex5
    stsfld int32 _G::Time
L_for_loop_10:
    // line 39
    ldsfld int32 _G::Time
    stloc $tmpSwitchValue6
    ldloc $tmpSwitchValue6
    ldc.i4 0 // Morning 
    bne.un L_check_case_13
    // line 40
    ldsfld float64 _G::RegularRate
    stsfld float64 _G::TotalPay
    br L_case_end_12
L_check_case_13:
    ldloc $tmpSwitchValue6
    ldc.i4 1 // Afternoon 
    bne.un L_check_case_14
    // line 41
    ldsfld float64 _G::RegularRate
    stsfld float64 _G::TotalPay
    br L_case_end_12
L_check_case_14:
    ldloc $tmpSwitchValue6
    ldc.i4 2 // Evening 
    bne.un L_check_case_15
    // line 42
    ldsfld float64 _G::RegularRate
    ldsfld float64 _G::EveningPremium
    mul
    stsfld float64 _G::TotalPay
    br L_case_end_12
L_check_case_15:
    ldloc $tmpSwitchValue6
    ldc.i4 3 // Night 
    bne.un L_case_end_12
    // line 43
    ldsfld float64 _G::RegularRate
    ldsfld float64 _G::NightPremium
    mul
    stsfld float64 _G::TotalPay
L_case_end_12:
    // line 46
    ldsfld int32 _G::Day
    stloc $tmpSwitchValue7
    ldloc $tmpSwitchValue7
    ldc.i4 5 // Sat 
    bne.un L_check_case_17
    // line 47
    ldsfld float64 _G::TotalPay
    ldsfld float64 _G::WeekendPremium
    mul
    stsfld float64 _G::TotalPay
    br L_case_end_16
L_check_case_17:
    ldloc $tmpSwitchValue7
    ldc.i4 6 // Sun 
    bne.un L_case_end_16
    // line 48
    ldsfld float64 _G::TotalPay
    ldsfld float64 _G::WeekendPremium
    mul
    stsfld float64 _G::TotalPay
L_case_end_16:
    // line 51
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldc.i4 10
    ldc.i4 2
    ldsfld float64 _G::TotalPay
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    pop
    /* nop */
    ldsfld int32 _G::Time
    dup
    ldloc $tmpEndValue4
    beq L_for_end_11
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 3
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex8
    ldloc $tmpIndex8
    stsfld int32 _G::Time
    br L_for_loop_10
L_for_end_11:
    pop
    // line 53
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
    ldsfld int32 _G::Day
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    dup
    ldc.i4 0
    ldc.i4 6
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex9
    ldloc $tmpIndex9
    stsfld int32 _G::Day
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
