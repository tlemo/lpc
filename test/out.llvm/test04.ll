
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 3
;================================================================================
; scope: program scope (level : 1)

; types
%T_A = type i32*
%T_C = type %T_B*
%T_B = type %T_C*
%T_pointer_3 = type %T_R1*
%T_R2 = type [8 x i8]
%T_pointer_2 = type %T_R2*
%T_R1 = type [8 x i8]
%T_pointer_4 = type %T_R3*
%T_R3 = type [16 x i8]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer

; line 27
;================================================================================
; scope: foo (level : 2)
