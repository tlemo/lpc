
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 167
;================================================================================
; scope: program scope (level : 1)

; types
%T_alfa = type __array
%T_array_2 = type __array
%T_symset = type __set
%T_array_3 = type __array
%T_array_4 = type __array
%T_array_5 = type __array
%T_set_6 = type __set
%T_index = type __range
%T_item = type [5 x i8]
%T_array_7 = type __array
%T_array_8 = type __array
%T_array_9 = type __array
%T_range_10 = type __range
%T_range_11 = type __range
%T_range_12 = type __range
%T_order = type [3 x i8]
%T_array_13 = type __array
%T_array_14 = type __array
%T_array_15 = type __array
%T_typset = type __set
%T_array_16 = type __array

; program variables
@a = dso_local global i32 zeroinitializer
@atab = dso_local global %T_array_2 zeroinitializer
@b = dso_local global i32 zeroinitializer
@blockbegsys = dso_local global %T_symset zeroinitializer
@btab = dso_local global %T_array_3 zeroinitializer
@c1 = dso_local global i32 zeroinitializer
@c2 = dso_local global i32 zeroinitializer
@cc = dso_local global i32 zeroinitializer
@ch = dso_local global i8 zeroinitializer
@code = dso_local global %T_array_4 zeroinitializer
@constbegsys = dso_local global %T_symset zeroinitializer
@display = dso_local global %T_array_5 zeroinitializer
@errpos = dso_local global i32 zeroinitializer
@errs = dso_local global %T_set_6 zeroinitializer
@facbegsys = dso_local global %T_symset zeroinitializer
@id = dso_local global %T_alfa zeroinitializer
@iflag = dso_local global i1 zeroinitializer
@input = dso_local global %T_text zeroinitializer
@inum = dso_local global i32 zeroinitializer
@key = dso_local global %T_array_7 zeroinitializer
@ksy = dso_local global %T_array_8 zeroinitializer
@lc = dso_local global i32 zeroinitializer
@line = dso_local global %T_array_9 zeroinitializer
@ll = dso_local global i32 zeroinitializer
@oflag = dso_local global i1 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@progname = dso_local global %T_alfa zeroinitializer
@rconst = dso_local global %T_array_13 zeroinitializer
@rnum = dso_local global double zeroinitializer
@sleng = dso_local global i32 zeroinitializer
@sps = dso_local global %T_array_14 zeroinitializer
@srcfil = dso_local global %T_text zeroinitializer
@stab = dso_local global %T_array_15 zeroinitializer
@stantyps = dso_local global %T_typset zeroinitializer
@statbegsys = dso_local global %T_symset zeroinitializer
@sx = dso_local global i32 zeroinitializer
@sy = dso_local global i32 zeroinitializer
@t = dso_local global i32 zeroinitializer
@tab = dso_local global %T_array_16 zeroinitializer
@typebegsys = dso_local global %T_symset zeroinitializer

; line 268
;================================================================================
; scope: errormsg (level : 2)

; types
%T_errormsg_array_17 = type __array

; line 310
;================================================================================
; scope: nextch (level : 2)

; line 330
;================================================================================
; scope: error (level : 2)

; line 338
;================================================================================
; scope: fatal (level : 2)

; types
%T_fatal_array_18 = type __array

; line 349
;================================================================================
; scope: insymbol (level : 2)

; line 353
;================================================================================
; scope: insymbol_readscale (level : 3)

; line 364
;================================================================================
; scope: insymbol_adjustscale (level : 3)

; line 477
;================================================================================
; scope: enter (level : 2)

; line 487
;================================================================================
; scope: enterarray (level : 2)

; line 500
;================================================================================
; scope: enterblock (level : 2)

; line 506
;================================================================================
; scope: enterreal (level : 2)

; line 514
;================================================================================
; scope: emit (level : 2)

; line 519
;================================================================================
; scope: emit1 (level : 2)

; line 526
;================================================================================
; scope: emit2 (level : 2)

; line 533
;================================================================================
; scope: printtables (level : 2)

; line 574
;================================================================================
; scope: block (level : 2)

; types
%T_block_conrec = type [20 x i8]

; line 587
;================================================================================
; scope: block_skip (level : 3)

; line 592
;================================================================================
; scope: block_test (level : 3)

; line 597
;================================================================================
; scope: block_testsemicolon (level : 3)

; line 606
;================================================================================
; scope: block_enter (level : 3)

; line 624
;================================================================================
; scope: block_loc (level : 3)

; line 634
;================================================================================
; scope: block_entervariable (level : 3)

; line 641
;================================================================================
; scope: block_constant (level : 3)

; line 679
;================================================================================
; scope: block_typ (level : 3)

; line 684
;================================================================================
; scope: block_typ_arraytyp (level : 4)

; line 775
;================================================================================
; scope: block_parameterlist (level : 3)

; line 826
;================================================================================
; scope: block_constantdeclaration (level : 3)

; line 845
;================================================================================
; scope: block_typedeclaration (level : 3)

; line 863
;================================================================================
; scope: block_variabledeclaration (level : 3)

; line 887
;================================================================================
; scope: block_procdeclaration (level : 3)

; line 900
;================================================================================
; scope: block_statement (level : 3)

; line 904
;================================================================================
; scope: block_statement_selector (level : 4)

; line 942
;================================================================================
; scope: block_statement_call (level : 4)

; line 992
;================================================================================
; scope: block_statement_resulttype (level : 4)

; line 1008
;================================================================================
; scope: block_statement_expression (level : 4)

; line 1011
;================================================================================
; scope: block_statement_expression_simpleexpression (level : 5)

; line 1014
;================================================================================
; scope: block_statement_expression_simpleexpression_term (level : 6)

; line 1017
;================================================================================
; scope: block_statement_expression_simpleexpression_term_factor (level : 7)

; line 1020
;================================================================================
; scope: block_statement_expression_simpleexpression_term_factor_standfct (level : 8)

; line 1229
;================================================================================
; scope: block_statement_assignment (level : 4)

; line 1253
;================================================================================
; scope: block_statement_compoundstatement (level : 4)

; line 1263
;================================================================================
; scope: block_statement_ifstatement (level : 4)

; line 1280
;================================================================================
; scope: block_statement_casestatement (level : 4)

; types
%T_block_statement_casestatement_array_19 = type __array
%T_block_statement_casestatement_array_20 = type __array

; line 1287
;================================================================================
; scope: block_statement_casestatement_caselabel (level : 5)

; line 1299
;================================================================================
; scope: block_statement_casestatement_onecase (level : 5)

; line 1329
;================================================================================
; scope: block_statement_repeatstatement (level : 4)

; line 1345
;================================================================================
; scope: block_statement_whilestatement (level : 4)

; line 1355
;================================================================================
; scope: block_statement_forstatement (level : 4)

; line 1387
;================================================================================
; scope: block_statement_standproc (level : 4)

; line 1515
;================================================================================
; scope: interpret (level : 2)

; types
%T_interpret_array_22 = type __array
%T_interpret_array_23 = type __array
%T_interpret_array_24 = type __array
