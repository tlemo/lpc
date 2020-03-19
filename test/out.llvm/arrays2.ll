
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
%T_array_2 = type __array
%T_array_3 = type __array

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@Checkerboard = dso_local global %T_array_2 zeroinitializer
@Count = dso_local global i32 zeroinitializer
@Index = dso_local global i32 zeroinitializer
@Value = dso_local global %T_array_3 zeroinitializer
