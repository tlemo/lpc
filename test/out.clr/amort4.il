
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

// "amort4.pas"

// line 15
//================================================================================
// scope: CalculatePayment (level : 2)

.class @CalculatePayment
{
    // local variables
    .field public int32 Index
    .field public float64 Temp

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 25
//================================================================================
// scope: InitializeData (level : 2)

.class @InitializeData
{
    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 45
//================================================================================
// scope: PrintAnnualHeader (level : 2)

.class @PrintAnnualHeader
{
    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 56
//================================================================================
// scope: CalculateAndPrint (level : 2)

.class @CalculateAndPrint
{
    // local variables
    .field public float64 InterestPayment
    .field public float64 PrincipalPayment

    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 78
//================================================================================
// scope: PrintAnnualSummary (level : 2)

.class @PrintAnnualSummary
{
    .method public void .ctor()
    {
        ldarg.0
        call instance void [mscorlib]System.Object::.ctor()
        ret
    }
}


// line 2
//================================================================================
// scope: program scope (level : 1)

// global variables
.class _G
{
    .field public static valuetype [lpcRuntime]LPC.File _input
    .field public static valuetype [lpcRuntime]LPC.File _output
    .field public static float64 AnnualAccumInterest
    .field public static float64 Balance
    .field public static float64 InterestRate
    .field public static int8 Month
    .field public static int32 NumberOfYears
    .field public static float64 OriginalLoan
    .field public static float64 Payment
    .field public static int8 StartingMonth
    .field public static int32 Year
}

// line 15

.method static
void CalculatePayment()
{
    .maxstack 32

    .locals init(
        class @CalculatePayment _F,
        int32 $tmpEndValue1,
        int32 $tmpIndex2,
        int32 $tmpIndex3)
    
    newobj instance void @CalculatePayment::.ctor()
    stloc _F

L_Entry:
    // line 19
    ldloc _F
    ldc.r8 1.00000
    stfld float64 @CalculatePayment::Temp
    // line 20
    ldc.i4 12
    ldsfld int32 _G::NumberOfYears
    mul
    stloc $tmpEndValue1
    ldc.i4 1
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_2
    stloc $tmpIndex2
    ldloc _F
    ldloc $tmpIndex2
    stfld int32 @CalculatePayment::Index
L_for_loop_1:
    // line 21
    ldloc _F
    ldloc _F
    ldfld float64 @CalculatePayment::Temp
    ldc.r8 1.00000
    ldsfld float64 _G::InterestRate
    add
    mul
    stfld float64 @CalculatePayment::Temp
    ldloc _F
    ldfld int32 @CalculatePayment::Index
    dup
    ldloc $tmpEndValue1
    beq L_for_end_2
    ldc.i4.1
    add
    stloc $tmpIndex3
    ldloc _F
    ldloc $tmpIndex3
    stfld int32 @CalculatePayment::Index
    br L_for_loop_1
L_for_end_2:
    pop
    // line 22
    ldsfld float64 _G::OriginalLoan
    ldsfld float64 _G::InterestRate
    mul
    ldc.r8 1.00000
    ldc.r8 1.00000
    ldloc _F
    ldfld float64 @CalculatePayment::Temp
    div
    sub
    div
    stsfld float64 _G::Payment
    /* nop */

L_Epilogue:
    ret
}

// line 25

.method static
void InitializeData()
{
    .maxstack 32

    .locals init(class @InitializeData _F)
    
    newobj instance void @InitializeData::.ctor()
    stloc _F

L_Entry:
    // line 27
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "   Pascal amortization program"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 28
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 29
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "Enter amount borrowed                         "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 30
    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    dup
    ldsflda float64 _G::OriginalLoan
    call instance void [lpcRuntime]LPC.File::Read(float64*)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    // line 31
    ldsfld float64 _G::OriginalLoan
    stsfld float64 _G::Balance
    // line 32
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "Enter interest rate as percentage (i.e. 13.5) "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 33
    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    dup
    ldsflda float64 _G::InterestRate
    call instance void [lpcRuntime]LPC.File::Read(float64*)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    // line 34
    ldsfld float64 _G::InterestRate
    ldc.r8 1200.00
    div
    stsfld float64 _G::InterestRate
    // line 35
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "Enter number of years of payoff               "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 36
    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    dup
    ldsflda int32 _G::NumberOfYears
    ldc.i4 -2147483648
    ldc.i4 2147483647
    call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    // line 37
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "Enter month of first payment (i.e. 5 for May) "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 38
    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    dup
    ldsflda int8 _G::StartingMonth
    ldc.i4 1
    ldc.i4 12
    call instance void [lpcRuntime]LPC.File::Read(int8*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    // line 39
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "Enter year of first payment (i.e. 1991)       "
    call instance void [lpcRuntime]LPC.File::Write(string)
    pop
    // line 40
    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    dup
    ldsflda int32 _G::Year
    ldc.i4 -2147483648
    ldc.i4 2147483647
    call instance void [lpcRuntime]LPC.File::Read(int32*, int32, int32)
    call instance void [lpcRuntime]LPC.File::ReadLn()
    // line 41
    call void CalculatePayment()
    // line 42
    ldc.r8 0.000000
    stsfld float64 _G::AnnualAccumInterest
    /* nop */

L_Epilogue:
    ret
}

// line 45

.method static
void PrintAnnualHeader()
{
    .maxstack 32

    .locals init(class @PrintAnnualHeader _F)
    
    newobj instance void @PrintAnnualHeader::.ctor()
    stloc _F

L_Entry:
    // line 47
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 48
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 49
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "Original loan amount = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 10
    ldc.i4 2
    ldsfld float64 _G::OriginalLoan
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldstr "   Interest rate = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 6
    ldc.i4 2
    ldc.r8 1200.00
    ldsfld float64 _G::InterestRate
    mul
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldc.i4 37 // '%'
    call instance void [lpcRuntime]LPC.File::Write(uint8)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 51
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 52
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "Month    payment  interest    princ   balance"
    call instance void [lpcRuntime]LPC.File::Write(string)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 53
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */

L_Epilogue:
    ret
}

// line 56

.method static
void CalculateAndPrint()
{
    .maxstack 32

    .locals init(class @CalculateAndPrint _F)
    
    newobj instance void @CalculateAndPrint::.ctor()
    stloc _F

L_Entry:
    // line 60
    ldsfld float64 _G::Balance
    ldc.r8 0.000000
    cgt
    brfalse L_if_end_1
    // line 61
    ldloc _F
    ldsfld float64 _G::InterestRate
    ldsfld float64 _G::Balance
    mul
    stfld float64 @CalculateAndPrint::InterestPayment
    // line 62
    ldloc _F
    ldsfld float64 _G::Payment
    ldloc _F
    ldfld float64 @CalculateAndPrint::InterestPayment
    sub
    stfld float64 @CalculateAndPrint::PrincipalPayment
    // line 63
    ldloc _F
    ldfld float64 @CalculateAndPrint::PrincipalPayment
    ldsfld float64 _G::Balance
    cgt
    brfalse L_else_2
    // line 64
    ldloc _F
    ldsfld float64 _G::Balance
    stfld float64 @CalculateAndPrint::PrincipalPayment
    // line 65
    ldloc _F
    ldfld float64 @CalculateAndPrint::PrincipalPayment
    ldloc _F
    ldfld float64 @CalculateAndPrint::InterestPayment
    add
    stsfld float64 _G::Payment
    // line 66
    ldc.r8 0.000000
    stsfld float64 _G::Balance
    /* nop */
    br L_if_end_3
L_else_2:
    // line 69
    ldsfld float64 _G::Balance
    ldloc _F
    ldfld float64 @CalculateAndPrint::PrincipalPayment
    sub
    stsfld float64 _G::Balance
    /* nop */
L_if_end_3:
    // line 71
    ldsfld float64 _G::AnnualAccumInterest
    ldloc _F
    ldfld float64 @CalculateAndPrint::InterestPayment
    add
    stsfld float64 _G::AnnualAccumInterest
    // line 73
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int8 _G::Month
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldc.i4 10
    ldc.i4 2
    ldsfld float64 _G::Payment
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldc.i4 10
    ldc.i4 2
    ldloc _F
    ldfld float64 @CalculateAndPrint::InterestPayment
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldc.i4 10
    ldc.i4 2
    ldloc _F
    ldfld float64 @CalculateAndPrint::PrincipalPayment
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    dup
    ldc.i4 10
    ldc.i4 2
    ldsfld float64 _G::Balance
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */
L_if_end_1:
    /* nop */

L_Epilogue:
    ret
}

// line 78

.method static
void PrintAnnualSummary()
{
    .maxstack 32

    .locals init(class @PrintAnnualSummary _F)
    
    newobj instance void @PrintAnnualSummary::.ctor()
    stloc _F

L_Entry:
    // line 80
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 81
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    dup
    ldstr "Total interest for "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 5
    ldc.i4.0
    ldsfld int32 _G::Year
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, int32)
    dup
    ldstr " = "
    call instance void [lpcRuntime]LPC.File::Write(string)
    dup
    ldc.i4 10
    ldc.i4 2
    ldsfld float64 _G::AnnualAccumInterest
    call instance void [lpcRuntime]LPC.File::Format(int32, int32, float64)
    call instance void [lpcRuntime]LPC.File::WriteLn()
    // line 83
    ldc.r8 0.000000
    stsfld float64 _G::AnnualAccumInterest
    // line 84
    ldsfld int32 _G::Year
    ldc.i4 1
    add
    stsfld int32 _G::Year
    // line 85
    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    call instance void [lpcRuntime]LPC.File::WriteLn()
    /* nop */

L_Epilogue:
    ret
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
        int8 $tmpEndValue1,
        int8 $tmpIndex2,
        int8 $tmpIndex3)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_input
    ldc.i4 0
    call instance void [lpcRuntime]LPC.File::Init(int32)

    ldsflda valuetype [lpcRuntime]LPC.File _G::_output
    ldc.i4 1
    call instance void [lpcRuntime]LPC.File::Init(int32)

L_Entry:
    // line 89
    call void InitializeData()
    // line 90
L_repeat_1:
    // line 91
    call void PrintAnnualHeader()
    // line 92
    ldc.i4 12
    stloc $tmpEndValue1
    ldsfld int8 _G::StartingMonth
    dup
    ldloc $tmpEndValue1
    bgt L_for_end_3
    dup
    ldc.i4 1
    ldc.i4 12
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex2
    ldloc $tmpIndex2
    stsfld int8 _G::Month
L_for_loop_2:
    // line 93
    call void CalculateAndPrint()
    /* nop */
    ldsfld int8 _G::Month
    dup
    ldloc $tmpEndValue1
    beq L_for_end_3
    ldc.i4.1
    add
    dup
    ldc.i4 1
    ldc.i4 12
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stloc $tmpIndex3
    ldloc $tmpIndex3
    stsfld int8 _G::Month
    br L_for_loop_2
L_for_end_3:
    pop
    // line 95
    call void PrintAnnualSummary()
    // line 96
    ldc.i4 1
    dup
    ldc.i4 1
    ldc.i4 12
    call void [lpcRuntime]LPC.Runtime::RTCheckRange(int32, int32, int32)
    stsfld int8 _G::StartingMonth
    /* nop */
    ldsfld float64 _G::Balance
    ldc.r8 0.000000
    cgt
    ldc.i4.0
    ceq
    brfalse L_repeat_1
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
