
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
%T_R1 = type <range>
%T_R2 = type <range>
%T_R3 = type <range>
%T_R4 = type <range>
%T_R5 = type <range>
%T_R6 = type <range>

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@t1 = dso_local global %T_R1 zeroinitializer
@t2 = dso_local global %T_R2 zeroinitializer
@t3 = dso_local global %T_R3 zeroinitializer
@t4 = dso_local global %T_R4 zeroinitializer
@t5 = dso_local global %T_R5 zeroinitializer
@t6 = dso_local global %T_R6 zeroinitializer
@tmp = dso_local global %T_text zeroinitializer
@v1 = dso_local global %T_R1 zeroinitializer
@v2 = dso_local global %T_R2 zeroinitializer
@v3 = dso_local global %T_R3 zeroinitializer
@v4 = dso_local global %T_R4 zeroinitializer
@v5 = dso_local global %T_R5 zeroinitializer
@v6 = dso_local global %T_R6 zeroinitializer
