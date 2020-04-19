; ModuleID = 'amort4.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\amort4.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"

; runtime functions
declare dso_local i8* @_OpenFile(i32)
declare dso_local i8* @_OpenTempFile(i8*)
declare dso_local void @_CloseFile(i8*)
declare dso_local void @_WriteBool(i8*, i32, i32, i1)
declare dso_local void @_WriteChar(i8*, i32, i32, i8)
declare dso_local void @_WriteInteger(i8*, i32, i32, i32)
declare dso_local void @_WriteReal(i8*, i32, i32, double)
declare dso_local void @_WriteString(i8*, i32, i32, i8*, i32)
declare dso_local void @_WriteLn(i8*)

; program arguments (command line mapping)
%struct._Filename = type { i8*, i8* }
@_FilenameMapEntries = internal global [3 x %struct._Filename]
    [
    %struct._Filename { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* null },
    %struct._Filename { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* null },
    %struct._Filename { i8* null, i8* null }
    ], align 16
@_FilenameMap = dso_local global %struct._Filename* getelementptr inbounds ([3 x %struct._Filename], [3 x %struct._Filename]* @_FilenameMapEntries, i32 0, i32 0), align 8
@_FilenameMapSize = dso_local constant i32 2, align 4

; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_text = type i8*

; line 2
;================================================================================
; scope: program scope (level : 1)

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@AnnualAccumInterest = dso_local global double zeroinitializer
@Balance = dso_local global double zeroinitializer
@InterestRate = dso_local global double zeroinitializer
@Month = dso_local global i32 zeroinitializer
@NumberOfYears = dso_local global i32 zeroinitializer
@OriginalLoan = dso_local global double zeroinitializer
@Payment = dso_local global double zeroinitializer
@StartingMonth = dso_local global i32 zeroinitializer
@Year = dso_local global i32 zeroinitializer

; procedure body
define void @P_()
{
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @_input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @_output

    ; body
    call void @P_InitializeData()
    ; nop

    ; cleanup
    %t3 = load %T_text, %T_text* @_output
    call void @_CloseFile(i8* %t3)
    %t4 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t4)

    ; epilogue
    ret void
}


; line 15
;================================================================================
; scope: CalculatePayment (level : 2)

; activation record
%Frame_CalculatePayment = type
{
    ; variables
    i32,    ; 0: Index
    double,    ; 1: Temp

    ; dummy
    i8*
};

; procedure body
define void @P_CalculatePayment()
{
    ; allocate frame
    %.frame = alloca %Frame_CalculatePayment, align 8

    ; body
    %t1 = getelementptr inbounds %Frame_CalculatePayment, %Frame_CalculatePayment* %.frame, i32 0, i32 1
    store double 1.00000, double* %t1
    %t4 = load double, double* @OriginalLoan
    %t5 = load double, double* @InterestRate
    %t3 = fmul double %t4, %t5
    %t9 = getelementptr inbounds %Frame_CalculatePayment, %Frame_CalculatePayment* %.frame, i32 0, i32 1
    %t8 = load double, double* %t9
    %t7 = fdiv double 1.00000, %t8
    %t6 = fsub double 1.00000, %t7
    %t2 = fdiv double %t3, %t6
    store double %t2, double* @Payment
    ; nop

    ; epilogue
    ret void
}


; line 25
;================================================================================
; scope: InitializeData (level : 2)

; activation record
%Frame_InitializeData = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_InitializeData()
{
    ; allocate frame
    %.frame = alloca %Frame_InitializeData, align 8

    ; body
    %t1 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t1, i32 0, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i32 30)
    call void @_WriteLn(i8* %t1)
    %t2 = load %T_text, %T_text* @_output
    call void @_WriteLn(i8* %t2)
    %t3 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i32 0, i32 0), i32 46)
    %t4 = load double, double* @OriginalLoan
    store double %t4, double* @Balance
    %t5 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i32 0, i32 0), i32 46)
    %t7 = load double, double* @InterestRate
    %t6 = fdiv double %t7, 1200.00
    store double %t6, double* @InterestRate
    %t8 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t8, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0), i32 46)
    %t9 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t9, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i32 0, i32 0), i32 46)
    %t10 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t10, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i32 0, i32 0), i32 46)
    call void @P_CalculatePayment()
    store double 0.000000, double* @AnnualAccumInterest
    ; nop

    ; epilogue
    ret void
}


; line 45
;================================================================================
; scope: PrintAnnualHeader (level : 2)

; activation record
%Frame_PrintAnnualHeader = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_PrintAnnualHeader()
{
    ; allocate frame
    %.frame = alloca %Frame_PrintAnnualHeader, align 8

    ; body
    %t1 = load %T_text, %T_text* @_output
    call void @_WriteLn(i8* %t1)
    %t2 = load %T_text, %T_text* @_output
    call void @_WriteLn(i8* %t2)
    %t3 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i32 23)
    %t4 = load double, double* @OriginalLoan
    call void @_WriteReal(i8* %t3, i32 10, i32 2, double %t4)
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 19)
    %t6 = load double, double* @InterestRate
    %t5 = fmul double 1200.00, %t6
    call void @_WriteReal(i8* %t3, i32 6, i32 2, double %t5)
    call void @_WriteChar(i8* %t3, i32 0, i32 0, i8 37)
    call void @_WriteLn(i8* %t3)
    %t7 = load %T_text, %T_text* @_output
    call void @_WriteLn(i8* %t7)
    %t8 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t8, i32 0, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i32 0, i32 0), i32 45)
    call void @_WriteLn(i8* %t8)
    %t9 = load %T_text, %T_text* @_output
    call void @_WriteLn(i8* %t9)
    ; nop

    ; epilogue
    ret void
}


; line 56
;================================================================================
; scope: CalculateAndPrint (level : 2)

; activation record
%Frame_CalculateAndPrint = type
{
    ; variables
    double,    ; 0: InterestPayment
    double,    ; 1: PrincipalPayment

    ; dummy
    i8*
};

; procedure body
define void @P_CalculateAndPrint()
{
    ; allocate frame
    %.frame = alloca %Frame_CalculateAndPrint, align 8

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 78
;================================================================================
; scope: PrintAnnualSummary (level : 2)

; activation record
%Frame_PrintAnnualSummary = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_PrintAnnualSummary()
{
    ; allocate frame
    %.frame = alloca %Frame_PrintAnnualSummary, align 8

    ; body
    %t1 = load %T_text, %T_text* @_output
    call void @_WriteLn(i8* %t1)
    %t2 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 19)
    %t3 = load i32, i32* @Year
    call void @_WriteInteger(i8* %t2, i32 5, i32 0, i32 %t3)
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 3)
    %t4 = load double, double* @AnnualAccumInterest
    call void @_WriteReal(i8* %t2, i32 10, i32 2, double %t4)
    call void @_WriteLn(i8* %t2)
    store double 0.000000, double* @AnnualAccumInterest
    %t6 = load i32, i32* @Year
    %t5 = add i32 %t6, 1
    store i32 %t5, i32* @Year
    %t7 = load %T_text, %T_text* @_output
    call void @_WriteLn(i8* %t7)
    ; nop

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.10 = private unnamed_addr constant [20 x i8] c"   Interest rate = \00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"   Pascal amortization program\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Enter amount borrowed                         \00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Enter interest rate as percentage (i.e. 13.5) \00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Enter month of first payment (i.e. 5 for May) \00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Enter number of years of payoff               \00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Enter year of first payment (i.e. 1991)       \00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"Month    payment  interest    princ   balance\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Original loan amount = \00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Total interest for \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_output\00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!13}

!0 = !DIFile(filename: "amort4.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!10 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9}
!11 = !{}
!12 = !{}
!13 = !{!"LPC 1.1"}
!14 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !10, globals: !12, nameTableKind: None)
!15 = !{i32 2, !"CodeView", i32 1}
!16 = !{i32 2, !"Debug Info Version", i32 3}

