
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 1
;================================================================================
; scope: program scope (level : 1)

; types
%T_point = type %T_nod*
%T_nod = type [24 x i8]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@i = dso_local global i32 zeroinitializer
@j = dso_local global i32 zeroinitializer
@k = dso_local global i32 zeroinitializer
@l = dso_local global i32 zeroinitializer
@n = dso_local global i32 zeroinitializer
@n1 = dso_local global i32 zeroinitializer
@niv = dso_local global i32 zeroinitializer
@ns = dso_local global i32 zeroinitializer
@virf = dso_local global %T_point zeroinitializer

; line 12
;================================================================================
; scope: punere (level : 2)

; line 23
;================================================================================
; scope: scoatere (level : 2)
