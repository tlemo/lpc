
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 2
;================================================================================
; scope: program scope (level : 1)

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@Day = dso_local global i32 zeroinitializer
@EveningPremium = dso_local global double zeroinitializer
@NightPremium = dso_local global double zeroinitializer
@RegularRate = dso_local global double zeroinitializer
@Time = dso_local global i32 zeroinitializer
@TotalPay = dso_local global double zeroinitializer
@WeekendPremium = dso_local global double zeroinitializer
