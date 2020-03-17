
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type <file>

; line 2
;================================================================================
; scope: program scope (level : 1)

; types
%T_array_2 = type <array>

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@myName = dso_local global %T_array_2 zeroinitializer
