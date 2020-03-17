
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type <file>

; line 93
;================================================================================
; scope: program scope (level : 1)

; types
%T_addrrange = type <range>
%T_alpha = type <array>
%T_attr = type <record>
%T_setofsys = type <set>
%T_structure = type <record>
%T_stp = type %T_structure*
%T_array_2 = type <array>
%T_array_3 = type <array>
%T_constant = type <record>
%T_csp = type %T_constant*
%T_identifier = type <record>
%T_ctp = type %T_identifier*
%T_array_4 = type <array>
%T_disprange = type <range>
%T_range_5 = type <range>
%T_array_6 = type <array>
%T_filerec = type <record>
%T_extfilep = type %T_filerec*
%T_array_7 = type <array>
%T_testpointer = type <record>
%T_testp = type %T_testpointer*
%T_range_8 = type <range>
%T_labl = type <record>
%T_lbp = type %T_labl*
%T_levrange = type <range>
%T_marktype = type i32*
%T_array_9 = type <array>
%T_array_10 = type <array>
%T_array_11 = type <array>
%T_array_12 = type <array>
%T_array_13 = type <array>
%T_array_14 = type <array>
%T_array_15 = type <array>
%T_setofids = type <set>
%T_setty = type <set>
%T_array_16 = type <array>
%T_array_17 = type <array>
%T_array_18 = type <array>
%T_valu = type <record>

; program variables
@_input = dso_local global %T_text zeroinitializer
@blockbegsys = dso_local global %T_setofsys zeroinitializer
@boolptr = dso_local global %T_stp zeroinitializer
@cdx = dso_local global %T_array_2 zeroinitializer
@ch = dso_local global i8 zeroinitializer
@charptr = dso_local global %T_stp zeroinitializer
@chartp = dso_local global %T_array_3 zeroinitializer
@chcnt = dso_local global i32 zeroinitializer
@constbegsys = dso_local global %T_setofsys zeroinitializer
@debug = dso_local global %bool zeroinitializer
@digmax = dso_local global i32 zeroinitializer
@display = dso_local global %T_array_4 zeroinitializer
@disx = dso_local global %T_disprange zeroinitializer
@dp = dso_local global %bool zeroinitializer
@eol = dso_local global %bool zeroinitializer
@errinx = dso_local global %T_range_5 zeroinitializer
@errlist = dso_local global %T_array_6 zeroinitializer
@facbegsys = dso_local global %T_setofsys zeroinitializer
@fextfilep = dso_local global %T_extfilep zeroinitializer
@frw = dso_local global %T_array_7 zeroinitializer
@fwptr = dso_local global %T_ctp zeroinitializer
@gattr = dso_local global %T_attr zeroinitializer
@globtestp = dso_local global %T_testp zeroinitializer
@ic = dso_local global %T_addrrange zeroinitializer
@id = dso_local global %T_alpha zeroinitializer
@intlabel = dso_local global i32 zeroinitializer
@intptr = dso_local global %T_stp zeroinitializer
@kk = dso_local global %T_range_8 zeroinitializer
@lc = dso_local global %T_addrrange zeroinitializer
@level = dso_local global %T_levrange zeroinitializer
@lgth = dso_local global i32 zeroinitializer
@linecount = dso_local global i32 zeroinitializer
@list = dso_local global %bool zeroinitializer
@mn = dso_local global %T_array_9 zeroinitializer
@mxint10 = dso_local global i32 zeroinitializer
@na = dso_local global %T_array_10 zeroinitializer
@nilptr = dso_local global %T_stp zeroinitializer
@op = dso_local global i32 zeroinitializer
@ordint = dso_local global %T_array_11 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@parmptr = dso_local global %T_stp zeroinitializer
@pdx = dso_local global %T_array_12 zeroinitializer
@prcode = dso_local global %bool zeroinitializer
@prr = dso_local global %T_text zeroinitializer
@prtables = dso_local global %bool zeroinitializer
@prterr = dso_local global %bool zeroinitializer
@realptr = dso_local global %T_stp zeroinitializer
@rop = dso_local global %T_array_13 zeroinitializer
@rsy = dso_local global %T_array_14 zeroinitializer
@rw = dso_local global %T_array_15 zeroinitializer
@selectsys = dso_local global %T_setofsys zeroinitializer
@simptypebegsys = dso_local global %T_setofsys zeroinitializer
@sna = dso_local global %T_array_16 zeroinitializer
@sop = dso_local global %T_array_17 zeroinitializer
@source = dso_local global %T_text zeroinitializer
@ssy = dso_local global %T_array_18 zeroinitializer
@statbegsys = dso_local global %T_setofsys zeroinitializer
@sy = dso_local global i32 zeroinitializer
@textptr = dso_local global %T_stp zeroinitializer
@top = dso_local global %T_disprange zeroinitializer
@typebegsys = dso_local global %T_setofsys zeroinitializer
@typedels = dso_local global %T_setofsys zeroinitializer
@ucstptr = dso_local global %T_ctp zeroinitializer
@ufctptr = dso_local global %T_ctp zeroinitializer
@ufldptr = dso_local global %T_ctp zeroinitializer
@uprcptr = dso_local global %T_ctp zeroinitializer
@utypptr = dso_local global %T_ctp zeroinitializer
@uvarptr = dso_local global %T_ctp zeroinitializer
@val = dso_local global %T_valu zeroinitializer

; line 366
;================================================================================
; scope: mark (level : 2)

; types

; line 367
;================================================================================
; scope: release (level : 2)

; types

; line 369
;================================================================================
; scope: endofline (level : 2)

; types

; line 404
;================================================================================
; scope: error (level : 2)

; types

; line 415
;================================================================================
; scope: insymbol (level : 2)

; types
%T_insymbol_array_19 = type <array>
%T_insymbol_array_20 = type <array>

; line 424
;================================================================================
; scope: insymbol_nextch (level : 3)

; types

; line 439
;================================================================================
; scope: insymbol_options (level : 3)

; types

; line 617
;================================================================================
; scope: enterid (level : 2)

; types

; line 641
;================================================================================
; scope: searchsection (level : 2)

; types

; line 659
;================================================================================
; scope: searchid (level : 2)

; types

; line 701
;================================================================================
; scope: getbounds (level : 2)

; types

; line 719
;================================================================================
; scope: alignquot (level : 2)

; types

; line 741
;================================================================================
; scope: align (level : 2)

; types

; line 749
;================================================================================
; scope: printtables (level : 2)

; types

; line 759
;================================================================================
; scope: printtables_stptoint (level : 3)

; types
%T_printtables_stptoint_record_21 = type <record>

; line 763
;================================================================================
; scope: printtables_ctptoint (level : 3)

; types
%T_printtables_ctptoint_record_22 = type <record>

; line 767
;================================================================================
; scope: printtables_marker (level : 3)

; types

; line 773
;================================================================================
; scope: printtables_marker_markstp (level : 4)

; types

; line 794
;================================================================================
; scope: printtables_marker_markctp (level : 4)

; types

; line 810
;================================================================================
; scope: printtables_followstp (level : 3)

; types

; line 862
;================================================================================
; scope: printtables_followctp (level : 3)

; types

; line 934
;================================================================================
; scope: genlabel (level : 2)

; types

; line 939
;================================================================================
; scope: block (level : 2)

; types

; line 942
;================================================================================
; scope: block_skip (level : 3)

; types

; line 951
;================================================================================
; scope: block_constant (level : 3)

; types
%T_block_constant_range_23 = type <range>

; line 1021
;================================================================================
; scope: block_equalbounds (level : 3)

; types

; line 1033
;================================================================================
; scope: block_comptypes (level : 3)

; types

; line 1105
;================================================================================
; scope: block_string (level : 3)

; types

; line 1112
;================================================================================
; scope: block_typ (level : 3)

; types

; line 1116
;================================================================================
; scope: block_typ_simpletype (level : 4)

; types

; line 1201
;================================================================================
; scope: block_typ_fieldlist (level : 4)

; types

; line 1474
;================================================================================
; scope: block_labeldeclaration (level : 3)

; types

; line 1504
;================================================================================
; scope: block_constdeclaration (level : 3)

; types

; line 1527
;================================================================================
; scope: block_typedeclaration (level : 3)

; types

; line 1570
;================================================================================
; scope: block_vardeclaration (level : 3)

; types

; line 1615
;================================================================================
; scope: block_procdeclaration (level : 3)

; types
%T_block_procdeclaration_range_25 = type <range>

; line 1620
;================================================================================
; scope: block_procdeclaration_parameterlist (level : 4)

; types

; line 1895
;================================================================================
; scope: block_body (level : 3)

; types
%T_block_body_array_26 = type <array>
%T_block_body_range_27 = type <range>
%T_block_body_oprange = type <range>

; line 1912
;================================================================================
; scope: block_body_mes (level : 4)

; types

; line 1917
;================================================================================
; scope: block_body_putic (level : 4)

; types

; line 1920
;================================================================================
; scope: block_body_gen0 (level : 4)

; types

; line 1926
;================================================================================
; scope: block_body_gen1 (level : 4)

; types

; line 1955
;================================================================================
; scope: block_body_gen2 (level : 4)

; types

; line 1991
;================================================================================
; scope: block_body_gentypindicator (level : 4)

; types

; line 2012
;================================================================================
; scope: block_body_gen0t (level : 4)

; types

; line 2023
;================================================================================
; scope: block_body_gen1t (level : 4)

; types

; line 2034
;================================================================================
; scope: block_body_gen2t (level : 4)

; types

; line 2045
;================================================================================
; scope: block_body_load (level : 4)

; types

; line 2082
;================================================================================
; scope: block_body_store (level : 4)

; types

; line 2095
;================================================================================
; scope: block_body_loadaddress (level : 4)

; types

; line 2123
;================================================================================
; scope: block_body_genfjp (level : 4)

; types

; line 2131
;================================================================================
; scope: block_body_genujpxjp (level : 4)

; types

; line 2139
;================================================================================
; scope: block_body_gencupent (level : 4)

; types

; line 2149
;================================================================================
; scope: block_body_checkbnds (level : 4)

; types

; line 2163
;================================================================================
; scope: block_body_putlabel (level : 4)

; types

; line 2167
;================================================================================
; scope: block_body_statement (level : 4)

; types

; line 2173
;================================================================================
; scope: block_body_statement_selector (level : 5)

; types

; line 2314
;================================================================================
; scope: block_body_statement_call (level : 5)

; types
%T_block_body_statement_call_range_28 = type <range>

; line 2317
;================================================================================
; scope: block_body_statement_call_variable (level : 6)

; types

; line 2326
;================================================================================
; scope: block_body_statement_call_getputresetrewrite (level : 6)

; types

; line 2334
;================================================================================
; scope: block_body_statement_call_read (level : 6)

; types

; line 2391
;================================================================================
; scope: block_body_statement_call_write (level : 6)

; types
%T_block_body_statement_call_write_range_29 = type <range>

; line 2485
;================================================================================
; scope: block_body_statement_call_pack (level : 6)

; types

; line 2513
;================================================================================
; scope: block_body_statement_call_unpack (level : 6)

; types

; line 2541
;================================================================================
; scope: block_body_statement_call_new (level : 6)

; types

; line 2586
;================================================================================
; scope: block_body_statement_call_mark (level : 6)

; types

; line 2594
;================================================================================
; scope: block_body_statement_call_release (level : 6)

; types

; line 2604
;================================================================================
; scope: block_body_statement_call_abs (level : 6)

; types

; line 2613
;================================================================================
; scope: block_body_statement_call_sqr (level : 6)

; types

; line 2622
;================================================================================
; scope: block_body_statement_call_trunc (level : 6)

; types

; line 2630
;================================================================================
; scope: block_body_statement_call_odd (level : 6)

; types

; line 2638
;================================================================================
; scope: block_body_statement_call_ord (level : 6)

; types

; line 2646
;================================================================================
; scope: block_body_statement_call_chr (level : 6)

; types

; line 2654
;================================================================================
; scope: block_body_statement_call_predsucc (level : 6)

; types

; line 2662
;================================================================================
; scope: block_body_statement_call_eof (level : 6)

; types

; line 2682
;================================================================================
; scope: block_body_statement_call_callnonstandard (level : 6)

; types

; line 2826
;================================================================================
; scope: block_body_statement_expression (level : 5)

; types

; line 2829
;================================================================================
; scope: block_body_statement_expression_simpleexpression (level : 6)

; types

; line 2832
;================================================================================
; scope: block_body_statement_expression_simpleexpression_term (level : 7)

; types

; line 2835
;================================================================================
; scope: block_body_statement_expression_simpleexpression_term_factor (level : 8)

; types

; line 3191
;================================================================================
; scope: block_body_statement_assignment (level : 5)

; types

; line 3233
;================================================================================
; scope: block_body_statement_gotostatement (level : 5)

; types

; line 3261
;================================================================================
; scope: block_body_statement_compoundstatement (level : 5)

; types

; line 3272
;================================================================================
; scope: block_body_statement_ifstatement (level : 5)

; types

; line 3287
;================================================================================
; scope: block_body_statement_casestatement (level : 5)

; types
%T_block_body_statement_casestatement_caseinfo = type <record>
%T_block_body_statement_casestatement_cip = type %T_block_body_statement_casestatement_caseinfo*

; line 3378
;================================================================================
; scope: block_body_statement_repeatstatement (level : 5)

; types

; line 3396
;================================================================================
; scope: block_body_statement_whilestatement (level : 5)

; types

; line 3404
;================================================================================
; scope: block_body_statement_forstatement (level : 5)

; types

; line 3477
;================================================================================
; scope: block_body_statement_withstatement (level : 5)

; types

; line 3677
;================================================================================
; scope: programme (level : 2)

; types

; line 3711
;================================================================================
; scope: stdnames (level : 2)

; types

; line 3728
;================================================================================
; scope: enterstdtypes (level : 2)

; types

; line 3756
;================================================================================
; scope: entstdnames (level : 2)

; types

; line 3851
;================================================================================
; scope: enterundecl (level : 2)

; types

; line 3885
;================================================================================
; scope: initscalars (level : 2)

; types

; line 3898
;================================================================================
; scope: initsets (level : 2)

; types

; line 3910
;================================================================================
; scope: inittables (level : 2)

; types

; line 3911
;================================================================================
; scope: inittables_reswords (level : 3)

; types

; line 3930
;================================================================================
; scope: inittables_symbols (level : 3)

; types

; line 3954
;================================================================================
; scope: inittables_rators (level : 3)

; types

; line 3965
;================================================================================
; scope: inittables_procmnemonics (level : 3)

; types

; line 3975
;================================================================================
; scope: inittables_instrmnemonics (level : 3)

; types

; line 3995
;================================================================================
; scope: inittables_chartypes (level : 3)

; types

; line 4033
;================================================================================
; scope: inittables_initdx (level : 3)

; types
