; ModuleID = 'amort4.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\amort4.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"

; runtime functions
declare dso_local i8* @_OpenFile(i32)
declare dso_local i8* @_OpenTempFile(i8*)
declare dso_local void @_CloseFile(i8*)

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
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @_input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @_output
    %t3 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t3)
    %t4 = load %T_text, %T_text* @_output
    call void @_CloseFile(i8* %t4)
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
    %frame = alloca %Frame_CalculatePayment, align 8
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
    %frame = alloca %Frame_InitializeData, align 8
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
    %frame = alloca %Frame_PrintAnnualHeader, align 8
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
    %frame = alloca %Frame_CalculateAndPrint, align 8
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
    %frame = alloca %Frame_PrintAnnualSummary, align 8
    ret void
}


;================================================================================
; string literals

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

