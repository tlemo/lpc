
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
@A = dso_local global i32 zeroinitializer
@AnimalCookies = dso_local global i8 zeroinitializer
@B = dso_local global i32 zeroinitializer
@C = dso_local global %T_range_2 zeroinitializer
@D = dso_local global %T_range_2 zeroinitializer
@DogTail = dso_local global double zeroinitializer
@Puppy = dso_local global i1 zeroinitializer
