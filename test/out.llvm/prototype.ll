
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 7
;================================================================================
; scope: program scope (level : 1)

; types
%T_A = type __array
%T_BYTE = type __range
%T_REC = type [17 x i8]
%T_array_2 = type __array
%T_array_3 = type __array
%T_UNION = type [9 x i8]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@gr = dso_local global %T_REC zeroinitializer
@gv = dso_local global i32 zeroinitializer
@gv2 = dso_local global i32 zeroinitializer

; line 34
;================================================================================
; scope: foo (level : 2)

; types
%T_foo_pointer_4 = type %T_BYTE*
%T_foo_subroutine_5 = type __subroutine

; line 54
;================================================================================
; scope: test (level : 2)

; line 56
;================================================================================
; scope: test_bar (level : 3)
