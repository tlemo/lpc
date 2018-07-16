
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

// "ranges.pas"

// line 4
//================================================================================
// scope: program scope (level : 1)

// line 0xfeefee

// TYPE array_1 = array [1 .. 3] of uint8;
.class value explicit T_array_1
{
    // elem size = 1
    // alignment = 1
    .size 3

    .field [0] public uint8 elem

    .method public uint8& ldadr(int32 index)
    {
        // check(index >= 1)
        ldarg index
        ldc.i4 1
        blt badIndex
    
        // check(index <= 3)
        ldarg index
        ldc.i4 3
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
        ldc.i4 3
        ldnull
        newobj instance void [mscorlib]System.String::.ctor(int8*, int32, int32, class [mscorlib]System.Text.Encoding)
        ret
    }
}

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype [lpcRuntime]LPC.File _output
    .field public static uint8 T1
    .field public static int8 T2
    .field public static uint8 T3
    .field public static int16 T4
    .field public static uint16 T5
    .field public static int32 T6
    .field public static valuetype [lpcRuntime]LPC.File Tmp
    .field public static uint8 V1
    .field public static int8 V2
    .field public static uint8 V3
    .field public static int16 V4
    .field public static uint16 V5
    .field public static int32 V6
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

    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::Tmp
    ldstr "tmp"
    call instance void [lpcRuntime]LPC.File::Init(string)

L_Entry:
    // line 22
    ldc.i4 120 // 'x'
    dup
    ldc.i4 97
    ldc.i4 122
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld uint8 _G::V1
    // line 23
    ldc.i4 1
    dup
    ldc.i4 1
    ldc.i4 10
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int8 _G::V2
    // line 24
    ldc.i4 200
    dup
    ldc.i4 100
    ldc.i4 200
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld uint8 _G::V3
    // line 25
    ldc.i4 123
    dup
    ldc.i4 0
    ldc.i4 300
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int16 _G::V4
    // line 26
    ldc.i4 32768
    dup
    ldc.i4 0
    ldc.i4 65535
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld uint16 _G::V5
    // line 27
    ldc.i4 1
    neg
    dup
    ldc.i4 -16384
    ldc.i4 65536
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int32 _G::V6
    // line 29
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "initial   : "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld uint8 _G::V1
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsfld int8 _G::V2
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsfld uint8 _G::V3
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsfld int16 _G::V4
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsfld uint16 _G::V5
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsfld int32 _G::V6
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 31
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "write part  1 ..."
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 32
    ldsflda valuetype [lpcRuntime]LPC.File _G::Tmp
    call instance void [lpcRuntime]LPC.File::Rewrite()
    // line 33
    ldsflda valuetype [lpcRuntime]LPC.File _G::Tmp
    dup
    ldsfld uint8 _G::V1
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsfld int8 _G::V2
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsfld uint8 _G::V3
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 35
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "read part   1 ..."
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 36
    ldsflda valuetype [lpcRuntime]LPC.File _G::Tmp
    call instance void [lpcRuntime]LPC.File::Reset()
    // line 37
    ldsflda valuetype [lpcRuntime]LPC.File _G::Tmp
    dup
    ldsflda uint8 _G::T1
    ldc.i4 97
    ldc.i4 122
    call instance void [lpcRuntime]LPC.File::ReadChar(uint8*, int32, int32)
    dup
    ldsflda int8 _G::T2
    ldc.i4 1
    ldc.i4 10
    call instance void [lpcRuntime]LPC.File::Read(int8*, int32, int32)
    dup
    ldsflda uint8 _G::T3
    ldc.i4 100
    ldc.i4 200
    call instance void [lpcRuntime]LPC.File::Read(uint8*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    // line 39
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "write part  2 ..."
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 40
    ldsflda valuetype [lpcRuntime]LPC.File _G::Tmp
    call instance void [lpcRuntime]LPC.File::Rewrite()
    // line 41
    ldsflda valuetype [lpcRuntime]LPC.File _G::Tmp
    dup
    ldsfld int16 _G::V4
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsfld uint16 _G::V5
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsfld int32 _G::V6
    call instance void [lpcRuntime]LPC.File::Write(int32)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 43
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "read part   2 ..."
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 44
    ldsflda valuetype [lpcRuntime]LPC.File _G::Tmp
    call instance void [lpcRuntime]LPC.File::Reset()
    // line 45
    ldsflda valuetype [lpcRuntime]LPC.File _G::Tmp
    dup
    ldsflda int16 _G::T4
    ldc.i4 0
    ldc.i4 300
    call instance void [lpcRuntime]LPC.File::Read(int16*, int32, int32)
    dup
    ldsflda uint16 _G::T5
    ldc.i4 0
    ldc.i4 65535
    call instance void [lpcRuntime]LPC.File::Read(uint16*, int32, int32)
    dup
    ldsflda int32 _G::T6
    ldc.i4 -16384
    ldc.i4 65536
    call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    // line 47
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "final     : "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldsfld uint8 _G::T1
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsfld int8 _G::T2
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsfld uint8 _G::T3
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsfld int16 _G::T4
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsfld uint16 _G::T5
    call instance void [lpcRuntime]LPC.File::Write(int32)
    dup
    ldc.i4 32 // ' '
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    dup
    ldsfld int32 _G::T6
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

    ldsflda valuetype [lpcRuntime]LPC.File _G::Tmp
    call instance void [lpcRuntime]LPC.File::Close()

    endfinally
}

}
