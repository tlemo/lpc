
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
%T_ptr = type i32*

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@i = dso_local global i32 zeroinitializer
@p = dso_local global %T_ptr zeroinitializer

; line 11
;================================================================================
; scope: init (level : 2)

; types

; line 16
;================================================================================
; scope: setValue (level : 2)

; types

; line 22
;================================================================================
; scope: free (level : 2)

; types
