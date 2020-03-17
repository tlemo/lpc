
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type <file>

; line 7
;================================================================================
; scope: program scope (level : 1)

; types
%T_A = type <array>
%T_BYTE = type <range>
%T_REC = type <record>
%T_array_2 = type <array>
%T_UNION = type <record>

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
%T_foo_pointer_3 = type %T_BYTE*
%T_foo_subroutine_4 = type <subroutine>

; line 54
;================================================================================
; scope: test (level : 2)

; types

; line 56
;================================================================================
; scope: test_bar (level : 3)

; types
