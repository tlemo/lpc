
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 1
;================================================================================
; scope: program scope (level : 1)

; types
%T_array_2 = type __array
%T_array_3 = type __array

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@i = dso_local global i32 zeroinitializer
@j = dso_local global i32 zeroinitializer
@M = dso_local global %T_array_2 zeroinitializer
@n = dso_local global i32 zeroinitializer
@nn = dso_local global i32 zeroinitializer
@S = dso_local global %T_array_3 zeroinitializer

; line 5
;================================================================================
; scope: hanoi1 (level : 2)

; line 19
;================================================================================
; scope: hanoi2 (level : 2)

; line 38
;================================================================================
; scope: hanoi3 (level : 2)
