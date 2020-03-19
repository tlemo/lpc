
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 2
;================================================================================
; scope: program scope (level : 1)

; types
%T_range_2 = type __range

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@Count = dso_local global i32 zeroinitializer
@Index = dso_local global %T_range_2 zeroinitializer
