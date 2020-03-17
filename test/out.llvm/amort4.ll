
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type <file>

; line 2
;================================================================================
; scope: program scope (level : 1)

; types
%T_range_2 = type <range>
%T_range_3 = type <range>

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
