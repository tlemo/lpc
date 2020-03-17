
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
%T_A = type <array>
%T_R = type <record>
%T_S = type <set>

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@i = dso_local global i32 zeroinitializer
@vA = dso_local global %T_A zeroinitializer
@vR = dso_local global %T_R zeroinitializer
@vS = dso_local global %T_S zeroinitializer

; line 19
;================================================================================
; scope: fooA (level : 2)

; line 29
;================================================================================
; scope: fooS (level : 2)

; line 34
;================================================================================
; scope: fooR (level : 2)
