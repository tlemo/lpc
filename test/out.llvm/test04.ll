
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type <file>

; line 3
;================================================================================
; scope: program scope (level : 1)

; types
%T_A = type i32*
%T_C = type %T_B*
%T_B = type %T_C*
%T_R1 = type <record>
%T_R2 = type <record>
%T_R3 = type <record>

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer

; line 27
;================================================================================
; scope: foo (level : 2)
