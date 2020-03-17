
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type <file>

; line 4
;================================================================================
; scope: program scope (level : 1)

; types
%T_array_2 = type <array>
%T_array_3 = type <array>
%T_array_4 = type <array>
%T_array_5 = type <array>
%T_pointer_6 = type double*
%T_rec = type <record>
%T_pointer_7 = type %T_rec*

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@a1 = dso_local global %T_array_2 zeroinitializer
@a2 = dso_local global %T_array_3 zeroinitializer
@a3 = dso_local global %T_array_4 zeroinitializer
@a4 = dso_local global %T_array_5 zeroinitializer
@i = dso_local global i32 zeroinitializer
@p = dso_local global %T_pointer_6 zeroinitializer
@pr = dso_local global %T_pointer_7 zeroinitializer
