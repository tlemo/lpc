
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 4
;================================================================================
; scope: program scope (level : 1)

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@p1 = dso_local global i32 zeroinitializer
@p2 = dso_local global i32 zeroinitializer

; line 12
;================================================================================
; scope: foo (level : 2)

; line 23
;================================================================================
; scope: bar (level : 2)

; line 27
;================================================================================
; scope: bar_moo (level : 3)
