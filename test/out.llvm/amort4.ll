; ModuleID = 'amort4.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\amort4.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"


; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_text = type i8

; line 2
;================================================================================
; scope: program scope (level : 1)

; types
%T_range_2 = type i8
%T_range_3 = type i8

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@AnnualAccumInterest = dso_local global double zeroinitializer
@Balance = dso_local global double zeroinitializer
@InterestRate = dso_local global double zeroinitializer
@Month = dso_local global %T_range_2 zeroinitializer
@NumberOfYears = dso_local global i32 zeroinitializer
@OriginalLoan = dso_local global double zeroinitializer
@Payment = dso_local global double zeroinitializer
@StartingMonth = dso_local global %T_range_3 zeroinitializer
@Year = dso_local global i32 zeroinitializer

; line 15
;================================================================================
; scope: CalculatePayment (level : 2)

; line 25
;================================================================================
; scope: InitializeData (level : 2)

; line 45
;================================================================================
; scope: PrintAnnualHeader (level : 2)

; line 56
;================================================================================
; scope: CalculateAndPrint (level : 2)

; line 78
;================================================================================
; scope: PrintAnnualSummary (level : 2)
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
!7 = !DIBasicType(name: "void", size: 0)
!8 = !DIBasicType(name: "void", size: 0)
!9 = !DIBasicType(name: "void", size: 0)
!10 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9}
!11 = !{}
!12 = !{}
!13 = !{!"LPC 1.1"}
!14 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !10, globals: !12, nameTableKind: None)
!15 = !{i32 2, !"CodeView", i32 1}
!16 = !{i32 2, !"Debug Info Version", i32 3}

