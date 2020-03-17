
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type <file>

; line 1
;================================================================================
; scope: program scope (level : 1)

; types
%T_vec = type <array>

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@i = dso_local global i32 zeroinitializer
@k = dso_local global i32 zeroinitializer
@x = dso_local global %T_vec zeroinitializer

; line 8
;================================================================================
; scope: f (level : 2)

; types
