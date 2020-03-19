
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
%T_alfa = type __array
%T_array_2 = type __array
%T_symset = type __set
%T_range_3 = type __range
%T_range_4 = type __range
%T_instruction = type [6 x i8]
%T_array_5 = type __array
%T_array_6 = type __array
%T_array_7 = type __array
%T_array_8 = type __array
%T_array_9 = type __array
%T_array_10 = type __array

; program variables
@a = dso_local global %T_alfa zeroinitializer
@cc = dso_local global i32 zeroinitializer
@ch = dso_local global i8 zeroinitializer
@code = dso_local global %T_array_2 zeroinitializer
@cx = dso_local global i32 zeroinitializer
@declbegsys = dso_local global %T_symset zeroinitializer
@err = dso_local global i32 zeroinitializer
@facbegsys = dso_local global %T_symset zeroinitializer
@id = dso_local global %T_alfa zeroinitializer
@input = dso_local global %T_text zeroinitializer
@kk = dso_local global i32 zeroinitializer
@line = dso_local global %T_array_5 zeroinitializer
@ll = dso_local global i32 zeroinitializer
@mnemonic = dso_local global %T_array_6 zeroinitializer
@num = dso_local global i32 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@ssym = dso_local global %T_array_7 zeroinitializer
@statbegsys = dso_local global %T_symset zeroinitializer
@sym = dso_local global i32 zeroinitializer
@table = dso_local global %T_array_8 zeroinitializer
@word = dso_local global %T_array_9 zeroinitializer
@wsym = dso_local global %T_array_10 zeroinitializer

; line 56
;================================================================================
; scope: error (level : 2)

; line 60
;================================================================================
; scope: getsym (level : 2)

; line 63
;================================================================================
; scope: getsym_getch (level : 3)

; line 113
;================================================================================
; scope: gen (level : 2)

; line 123
;================================================================================
; scope: test (level : 2)

; line 130
;================================================================================
; scope: block (level : 2)

; line 134
;================================================================================
; scope: block_enter (level : 3)

; line 151
;================================================================================
; scope: block_position (level : 3)

; line 159
;================================================================================
; scope: block_constdeclaration (level : 3)

; line 173
;================================================================================
; scope: block_vardeclaration (level : 3)

; line 179
;================================================================================
; scope: block_listcode (level : 3)

; line 187
;================================================================================
; scope: block_statement (level : 3)

; line 189
;================================================================================
; scope: block_statement_expression (level : 4)

; line 191
;================================================================================
; scope: block_statement_expression_term (level : 5)

; line 193
;================================================================================
; scope: block_statement_expression_term_factor (level : 6)

; line 240
;================================================================================
; scope: block_statement_condition (level : 4)

; line 356
;================================================================================
; scope: interpret (level : 2)

; types
%T_interpret_array_11 = type __array

; line 361
;================================================================================
; scope: interpret_base (level : 3)
