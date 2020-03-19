
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
%T_vec = type __array

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@a = dso_local global %T_vec zeroinitializer
@i = dso_local global i32 zeroinitializer
@ig = dso_local global i32 zeroinitializer
@k = dso_local global i32 zeroinitializer
@n = dso_local global i32 zeroinitializer
@v = dso_local global %T_vec zeroinitializer

; line 7
;================================================================================
; scope: gen (level : 2)

; types
%T_gen_range_2 = type __range

; line 23
;================================================================================
; scope: prel (level : 2)
