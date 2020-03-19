
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 4
;================================================================================
; scope: program scope (level : 1)

; types
%T_t1 = type __array
%T_t2 = type __range
%T_array_3 = type __array

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@x = dso_local global %T_array_3 zeroinitializer
@y = dso_local global %T_t1 zeroinitializer

; line 14
;================================================================================
; scope: outter (level : 2)

; line 15
;================================================================================
; scope: outter_inner (level : 3)

; line 16
;================================================================================
; scope: outter_inner_setOutter (level : 4)
