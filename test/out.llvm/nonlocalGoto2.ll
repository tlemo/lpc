
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type <file>

; line 4
;================================================================================
; scope: program scope (level : 1)

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer

; line 8
;================================================================================
; scope: foo (level : 2)

; line 15
;================================================================================
; scope: bar (level : 2)

; line 17
;================================================================================
; scope: bar_moo (level : 3)
