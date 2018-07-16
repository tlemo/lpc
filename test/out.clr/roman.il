
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
    ldstr "output"
    stelem string
    stsfld string[] _ProgramArgs
    ret
}

// "roman.pas"

// line 4
//================================================================================
// scope: program scope (level : 1)

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype [lpcRuntime]LPC.File Output
    .field public static int32 x
    .field public static int32 y
}

// line 0
//================================================================================
// scope: global scope (level : 0)

// line 4

.method static
void _Program()
{
    .maxstack 32

    .locals init()

    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    ldc.i4 0
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

L_Entry:
    // line 7
    ldc.i4 1
    stsfld int32 _G::y
    // line 8
L_repeat_1:
    // line 8
    ldsfld int32 _G::y
    stsfld int32 _G::x
    // line 8
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldsfld int32 _G::x
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    // line 9
    br L_while_test_3
L_while_2:
    // line 10
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 109 // 'm'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    // line 10
    ldsfld int32 _G::x
    ldc.i4 1000
    sub
    stsfld int32 _G::x
L_while_test_3:
    ldsfld int32 _G::x
    ldc.i4 1000
    clt
    ldc.i4.0
    ceq
    brtrue L_while_2
    // line 11
    ldsfld int32 _G::x
    ldc.i4 500
    clt
    ldc.i4.0
    ceq
    brfalse L_if_end_4
    // line 12
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 100 // 'd'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    // line 12
    ldsfld int32 _G::x
    ldc.i4 500
    sub
    stsfld int32 _G::x
L_if_end_4:
    // line 13
    br L_while_test_6
L_while_5:
    // line 14
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 99 // 'c'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    // line 14
    ldsfld int32 _G::x
    ldc.i4 100
    sub
    stsfld int32 _G::x
L_while_test_6:
    ldsfld int32 _G::x
    ldc.i4 100
    clt
    ldc.i4.0
    ceq
    brtrue L_while_5
    // line 15
    ldsfld int32 _G::x
    ldc.i4 50
    clt
    ldc.i4.0
    ceq
    brfalse L_if_end_7
    // line 16
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 108 // 'l'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    // line 16
    ldsfld int32 _G::x
    ldc.i4 50
    sub
    stsfld int32 _G::x
L_if_end_7:
    // line 17
    br L_while_test_9
L_while_8:
    // line 18
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 120 // 'x'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    // line 18
    ldsfld int32 _G::x
    ldc.i4 10
    sub
    stsfld int32 _G::x
L_while_test_9:
    ldsfld int32 _G::x
    ldc.i4 10
    clt
    ldc.i4.0
    ceq
    brtrue L_while_8
    // line 19
    ldsfld int32 _G::x
    ldc.i4 5
    clt
    ldc.i4.0
    ceq
    brfalse L_if_end_10
    // line 20
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 118 // 'v'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    // line 20
    ldsfld int32 _G::x
    ldc.i4 5
    sub
    stsfld int32 _G::x
L_if_end_10:
    // line 21
    br L_while_test_12
L_while_11:
    // line 22
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    dup
    ldc.i4 105 // 'i'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    pop
    // line 22
    ldsfld int32 _G::x
    ldc.i4 1
    sub
    stsfld int32 _G::x
L_while_test_12:
    ldsfld int32 _G::x
    ldc.i4 1
    clt
    ldc.i4.0
    ceq
    brtrue L_while_11
    // line 23
    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 23
    ldc.i4 2
    ldsfld int32 _G::y
    mul
    stsfld int32 _G::y
    ldsfld int32 _G::y
    ldc.i4 5000
    cgt
    brfalse L_repeat_1
    leave L_Epilogue

L_Epilogue:
    ret

.try L_Entry to L_Epilogue finally
{
    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    call instance void [lpcRuntime]LPC.File::Close()

    ldsflda valuetype [lpcRuntime]LPC.File _G::Output
    call instance void [lpcRuntime]LPC.File::Close()

    endfinally
}

}
