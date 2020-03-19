
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
%T_digit = type __range
%T_digitarray = type __array
%T_pointer_2 = type %T_digitarray*

; program variables
@i = dso_local global i32 zeroinitializer
@input = dso_local global %T_text zeroinitializer
@output = dso_local global %T_text zeroinitializer
@s = dso_local global %T_pointer_2 zeroinitializer
@t = dso_local global %T_pointer_2 zeroinitializer
@ts = dso_local global i32 zeroinitializer
@x = dso_local global %T_pointer_2 zeroinitializer
@xs = dso_local global i32 zeroinitializer

; line 17
;================================================================================
; scope: initinteger (level : 2)

; line 25
;================================================================================
; scope: divide (level : 2)

; line 41
;================================================================================
; scope: add (level : 2)

; line 71
;================================================================================
; scope: sub (level : 2)
