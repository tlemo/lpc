
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

// "allvar.pas"

// line 2
//================================================================================
// scope: program scope (level : 1)

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype [lpcRuntime]LPC.File _output
    .field public static int32 A
    .field public static uint8 AnimalCookies
    .field public static int32 B
    .field public static uint8 C
    .field public static uint8 D
    .field public static float64 DogTail
    .field public static bool Puppy
}

// line 0
//================================================================================
// scope: global scope (level : 0)

// line 2

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
    // line 11
    ldc.i4 4
    stsfld int32 _G::A
    // line 12
    ldc.i4 5
    stsfld int32 _G::B
    // line 13
    ldc.i4 212
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld uint8 _G::C
    // line 14
    ldsfld uint8 _G::C
    ldc.i4 3
    add
    dup
    ldc.i4 0
    ldc.i4 255
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld uint8 _G::D
    // line 15
    ldc.r8 345.125
    stsfld float64 _G::DogTail
    // line 16
    ldsfld int32 _G::B
    ldsfld int32 _G::A
    cgt
    stsfld bool _G::Puppy
    // line 18
    ldc.i4 82 // 'R'
    stsfld uint8 _G::AnimalCookies
    // line 20
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "The integers are"
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::A
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::B
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 21
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "The bytes are"
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld uint8 _G::C
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld uint8 _G::D
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 24
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "The real value is"
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 12
    ldc.i4 2
    ldsfld float64 _G::DogTail
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldc.i4 12
    ldc.i4 4
    ldsfld float64 _G::DogTail
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 25
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 26
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "The boolean value is "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld bool _G::Puppy
    brtrue L_bool_to_string_true_1
    ldstr "false"
    br L_bool_to_string_false_2
L_bool_to_string_true_1:
    ldstr "true"
L_bool_to_string_false_2:
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 13
    ldc.i4.0
    ldsfld bool _G::Puppy
    brtrue L_bool_to_string_true_3
    ldstr "false"
    br L_bool_to_string_false_4
L_bool_to_string_true_3:
    ldstr "true"
L_bool_to_string_false_4:
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 27
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "The char variable is an "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld uint8 _G::AnimalCookies
    call instance void [lpcRuntime]LPC.File::Write(uint8)
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
