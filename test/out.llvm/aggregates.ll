
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 4
;================================================================================
; scope: program scope (level : 1)

; types
%T_A = type __array
%T_R = type [12 x i8]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@v1 = dso_local global %T_A zeroinitializer
@v2 = dso_local global %T_A zeroinitializer
@v3 = dso_local global %T_R zeroinitializer
@v4 = dso_local global %T_R zeroinitializer
