
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type <file>

; line 236
;================================================================================
; scope: program scope (level : 1)

; types
%T_addrrange = type <range>
%T_attr = type <record>
%T_setofsys = type <set>
%T_structure = type <record>
%T_stp = type %T_structure*
%T_caseinfo = type <record>
%T_array_2 = type <array>
%T_array_3 = type <array>
%T_cip = type %T_caseinfo*
%T_constant = type <record>
%T_csp = type %T_constant*
%T_csstr = type <array>
%T_identifier = type <record>
%T_ctp = type %T_identifier*
%T_array_4 = type <array>
%T_disprange = type <range>
%T_range_5 = type <range>
%T_array_6 = type <array>
%T_array_7 = type <array>
%T_filerec = type <record>
%T_extfilep = type %T_filerec*
%T_array_8 = type <array>
%T_range_9 = type <range>
%T_idstr = type <array>
%T_range_10 = type <range>
%T_labl = type <record>
%T_lbp = type %T_labl*
%T_levrange = type <range>
%T_array_11 = type <array>
%T_array_12 = type <array>
%T_nmstr = type <array>
%T_array_13 = type <array>
%T_array_14 = type <array>
%T_restr = type <array>
%T_array_15 = type <array>
%T_array_16 = type <array>
%T_array_17 = type <array>
%T_setofids = type <set>
%T_setty = type <set>
%T_array_18 = type <array>
%T_array_19 = type <array>
%T_array_20 = type <array>
%T_strvs = type <record>
%T_strvsp = type %T_strvs*
%T_valu = type <record>

; program variables
@blockbegsys = dso_local global %T_setofsys zeroinitializer
@boolptr = dso_local global %T_stp zeroinitializer
@cdx = dso_local global %T_array_2 zeroinitializer
@ch = dso_local global i8 zeroinitializer
@charptr = dso_local global %T_stp zeroinitializer
@chartp = dso_local global %T_array_3 zeroinitializer
@chcnt = dso_local global i32 zeroinitializer
@cipcnt = dso_local global i32 zeroinitializer
@constbegsys = dso_local global %T_setofsys zeroinitializer
@cspcnt = dso_local global i32 zeroinitializer
@ctpcnt = dso_local global i32 zeroinitializer
@debug = dso_local global %bool zeroinitializer
@display = dso_local global %T_array_4 zeroinitializer
@disx = dso_local global %T_disprange zeroinitializer
@dp = dso_local global %bool zeroinitializer
@eol = dso_local global %bool zeroinitializer
@errinx = dso_local global %T_range_5 zeroinitializer
@errlist = dso_local global %T_array_6 zeroinitializer
@errtbl = dso_local global %T_array_7 zeroinitializer
@f = dso_local global %bool zeroinitializer
@facbegsys = dso_local global %T_setofsys zeroinitializer
@fextfilep = dso_local global %T_extfilep zeroinitializer
@filcnt = dso_local global i32 zeroinitializer
@frw = dso_local global %T_array_8 zeroinitializer
@fwptr = dso_local global %T_ctp zeroinitializer
@gattr = dso_local global %T_attr zeroinitializer
@i = dso_local global %T_range_9 zeroinitializer
@ic = dso_local global %T_addrrange zeroinitializer
@id = dso_local global %T_idstr zeroinitializer
@input = dso_local global %T_text zeroinitializer
@inputhdf = dso_local global %bool zeroinitializer
@inputptr = dso_local global %T_ctp zeroinitializer
@intlabel = dso_local global i32 zeroinitializer
@intptr = dso_local global %T_stp zeroinitializer
@kk = dso_local global %T_range_10 zeroinitializer
@lbpcnt = dso_local global i32 zeroinitializer
@lc = dso_local global %T_addrrange zeroinitializer
@level = dso_local global %T_levrange zeroinitializer
@lgth = dso_local global i32 zeroinitializer
@linecount = dso_local global i32 zeroinitializer
@list = dso_local global %bool zeroinitializer
@mn = dso_local global %T_array_11 zeroinitializer
@mxint10 = dso_local global i32 zeroinitializer
@na = dso_local global %T_array_12 zeroinitializer
@nilptr = dso_local global %T_stp zeroinitializer
@op = dso_local global i32 zeroinitializer
@ordint = dso_local global %T_array_13 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@outputhdf = dso_local global %bool zeroinitializer
@outputptr = dso_local global %T_ctp zeroinitializer
@parmptr = dso_local global %T_stp zeroinitializer
@pdx = dso_local global %T_array_14 zeroinitializer
@prcode = dso_local global %bool zeroinitializer
@prr = dso_local global %T_text zeroinitializer
@prtables = dso_local global %bool zeroinitializer
@realptr = dso_local global %T_stp zeroinitializer
@rop = dso_local global %T_array_15 zeroinitializer
@rsy = dso_local global %T_array_16 zeroinitializer
@rw = dso_local global %T_array_17 zeroinitializer
@selectsys = dso_local global %T_setofsys zeroinitializer
@simptypebegsys = dso_local global %T_setofsys zeroinitializer
@sna = dso_local global %T_array_18 zeroinitializer
@sop = dso_local global %T_array_19 zeroinitializer
@ssy = dso_local global %T_array_20 zeroinitializer
@statbegsys = dso_local global %T_setofsys zeroinitializer
@stpcnt = dso_local global i32 zeroinitializer
@strcnt = dso_local global i32 zeroinitializer
@sy = dso_local global i32 zeroinitializer
@textptr = dso_local global %T_stp zeroinitializer
@top = dso_local global %T_disprange zeroinitializer
@toterr = dso_local global i32 zeroinitializer
@typebegsys = dso_local global %T_setofsys zeroinitializer
@typedels = dso_local global %T_setofsys zeroinitializer
@ucstptr = dso_local global %T_ctp zeroinitializer
@ufctptr = dso_local global %T_ctp zeroinitializer
@ufldptr = dso_local global %T_ctp zeroinitializer
@uprcptr = dso_local global %T_ctp zeroinitializer
@utypptr = dso_local global %T_ctp zeroinitializer
@uvarptr = dso_local global %T_ctp zeroinitializer
@val = dso_local global %T_valu zeroinitializer

; line 628
;================================================================================
; scope: getstr (level : 2)

; line 635
;================================================================================
; scope: putstrs (level : 2)

; line 644
;================================================================================
; scope: getlab (level : 2)

; line 651
;================================================================================
; scope: putlab (level : 2)

; line 658
;================================================================================
; scope: pshcst (level : 2)

; line 667
;================================================================================
; scope: putcst (level : 2)

; line 677
;================================================================================
; scope: pshstc (level : 2)

; line 686
;================================================================================
; scope: putstc (level : 2)

; line 693
;================================================================================
; scope: ininam (level : 2)

; line 700
;================================================================================
; scope: putnam (level : 2)

; line 715
;================================================================================
; scope: putnams (level : 2)

; line 727
;================================================================================
; scope: putdsp (level : 2)

; line 730
;================================================================================
; scope: putdsp_putsub (level : 3)

; line 765
;================================================================================
; scope: putdsps (level : 2)

; line 779
;================================================================================
; scope: getfil (level : 2)

; line 786
;================================================================================
; scope: putfil (level : 2)

; line 793
;================================================================================
; scope: getcas (level : 2)

; line 800
;================================================================================
; scope: putcas (level : 2)

; line 813
;================================================================================
; scope: lcase (level : 2)

; line 820
;================================================================================
; scope: lcases (level : 2)

; line 827
;================================================================================
; scope: strequri (level : 2)

; line 837
;================================================================================
; scope: writev (level : 2)

; line 848
;================================================================================
; scope: lenpv (level : 2)

; line 862
;================================================================================
; scope: strassvf (level : 2)

; line 879
;================================================================================
; scope: strassvr (level : 2)

; line 896
;================================================================================
; scope: strassvd (level : 2)

; line 913
;================================================================================
; scope: strassvc (level : 2)

; line 928
;================================================================================
; scope: strassfv (level : 2)

; line 938
;================================================================================
; scope: strequvv (level : 2)

; line 951
;================================================================================
; scope: strltnvv (level : 2)

; line 968
;================================================================================
; scope: strequvf (level : 2)

; line 981
;================================================================================
; scope: strltnvf (level : 2)

; line 995
;================================================================================
; scope: strchr (level : 2)

; line 1010
;================================================================================
; scope: strchrass (level : 2)

; line 1012
;================================================================================
; scope: strchrass_getsqt (level : 3)

; line 1033
;================================================================================
; scope: prtdsp (level : 2)

; line 1035
;================================================================================
; scope: prtdsp_prtlnk (level : 3)

; line 1060
;================================================================================
; scope: endofline (level : 2)

; line 1099
;================================================================================
; scope: errmsg (level : 2)

; line 1259
;================================================================================
; scope: error (level : 2)

; line 1282
;================================================================================
; scope: insymbol (level : 2)

; line 1293
;================================================================================
; scope: insymbol_nextch (level : 3)

; line 1308
;================================================================================
; scope: insymbol_options (level : 3)

; line 1540
;================================================================================
; scope: enterid (level : 2)

; line 1564
;================================================================================
; scope: searchsection (level : 2)

; line 1577
;================================================================================
; scope: searchidnenm (level : 2)

; line 1603
;================================================================================
; scope: searchidne (level : 2)

; line 1610
;================================================================================
; scope: searchid (level : 2)

; line 1635
;================================================================================
; scope: getbounds (level : 2)

; line 1654
;================================================================================
; scope: alignquot (level : 2)

; line 1676
;================================================================================
; scope: align (level : 2)

; line 1684
;================================================================================
; scope: printtables (level : 2)

; line 1694
;================================================================================
; scope: printtables_stptoint (level : 3)

; types
%T_printtables_stptoint_record_21 = type <record>

; line 1698
;================================================================================
; scope: printtables_ctptoint (level : 3)

; types
%T_printtables_ctptoint_record_22 = type <record>

; line 1702
;================================================================================
; scope: printtables_marker (level : 3)

; line 1708
;================================================================================
; scope: printtables_marker_markstp (level : 4)

; line 1729
;================================================================================
; scope: printtables_marker_markctp (level : 4)

; line 1745
;================================================================================
; scope: printtables_followstp (level : 3)

; line 1798
;================================================================================
; scope: printtables_followctp (level : 3)

; line 1870
;================================================================================
; scope: genlabel (level : 2)

; line 1875
;================================================================================
; scope: searchlabel (level : 2)

; line 1889
;================================================================================
; scope: newlabel (level : 2)

; line 1904
;================================================================================
; scope: prtlabels (level : 2)

; line 1921
;================================================================================
; scope: block (level : 2)

; line 1925
;================================================================================
; scope: block_skip (level : 3)

; line 1934
;================================================================================
; scope: block_constant (level : 3)

; types
%T_block_constant_range_23 = type <range>

; line 2007
;================================================================================
; scope: block_comptypes (level : 3)

; line 2061
;================================================================================
; scope: block_filecomponent (level : 3)

; line 2064
;================================================================================
; scope: block_filecomponent_filecomponentre (level : 4)

; line 2091
;================================================================================
; scope: block_string (level : 3)

; line 2105
;================================================================================
; scope: block_resolvep (level : 3)

; line 2127
;================================================================================
; scope: block_typ (level : 3)

; line 2132
;================================================================================
; scope: block_typ_simpletype (level : 4)

; line 2218
;================================================================================
; scope: block_typ_fieldlist (level : 4)

; line 2511
;================================================================================
; scope: block_labeldeclaration (level : 3)

; line 2530
;================================================================================
; scope: block_constdeclaration (level : 3)

; line 2553
;================================================================================
; scope: block_typedeclaration (level : 3)

; line 2577
;================================================================================
; scope: block_vardeclaration (level : 3)

; line 2617
;================================================================================
; scope: block_procdeclaration (level : 3)

; types
%T_block_procdeclaration_range_25 = type <range>

; line 2622
;================================================================================
; scope: block_procdeclaration_pushlvl (level : 4)

; line 2639
;================================================================================
; scope: block_procdeclaration_parameterlist (level : 4)

; types
%T_block_procdeclaration_parameterlist_range_26 = type <range>

; line 2910
;================================================================================
; scope: block_body (level : 3)

; types
%T_block_body_array_27 = type <array>
%T_block_body_range_28 = type <range>
%T_block_body_oprange = type <range>

; line 2929
;================================================================================
; scope: block_body_addlvl (level : 4)

; line 2935
;================================================================================
; scope: block_body_sublvl (level : 4)

; line 2948
;================================================================================
; scope: block_body_mes (level : 4)

; line 2953
;================================================================================
; scope: block_body_putic (level : 4)

; line 2956
;================================================================================
; scope: block_body_gen0 (level : 4)

; line 2962
;================================================================================
; scope: block_body_gen1 (level : 4)

; line 2996
;================================================================================
; scope: block_body_gen2 (level : 4)

; line 3032
;================================================================================
; scope: block_body_gentypindicator (level : 4)

; line 3054
;================================================================================
; scope: block_body_gen0t (level : 4)

; line 3065
;================================================================================
; scope: block_body_gen1t (level : 4)

; line 3076
;================================================================================
; scope: block_body_gen2t (level : 4)

; line 3087
;================================================================================
; scope: block_body_load (level : 4)

; line 3123
;================================================================================
; scope: block_body_store (level : 4)

; line 3136
;================================================================================
; scope: block_body_loadaddress (level : 4)

; line 3164
;================================================================================
; scope: block_body_genfjp (level : 4)

; line 3172
;================================================================================
; scope: block_body_genujpxjp (level : 4)

; line 3179
;================================================================================
; scope: block_body_genipj (level : 4)

; line 3186
;================================================================================
; scope: block_body_gencupent (level : 4)

; line 3198
;================================================================================
; scope: block_body_genlpa (level : 4)

; line 3207
;================================================================================
; scope: block_body_checkbnds (level : 4)

; line 3220
;================================================================================
; scope: block_body_putlabel (level : 4)

; line 3224
;================================================================================
; scope: block_body_statement (level : 4)

; line 3229
;================================================================================
; scope: block_body_statement_selector (level : 5)

; line 3231
;================================================================================
; scope: block_body_statement_selector_schblk (level : 6)

; line 3386
;================================================================================
; scope: block_body_statement_call (level : 5)

; types
%T_block_body_statement_call_range_29 = type <range>

; line 3389
;================================================================================
; scope: block_body_statement_call_variable (level : 6)

; line 3398
;================================================================================
; scope: block_body_statement_call_getputresetrewriteprocedure (level : 6)

; line 3420
;================================================================================
; scope: block_body_statement_call_pageprocedure (level : 6)

; line 3437
;================================================================================
; scope: block_body_statement_call_readprocedure (level : 6)

; line 3512
;================================================================================
; scope: block_body_statement_call_writeprocedure (level : 6)

; types
%T_block_body_statement_call_writeprocedure_range_30 = type <range>

; line 3651
;================================================================================
; scope: block_body_statement_call_packprocedure (level : 6)

; line 3688
;================================================================================
; scope: block_body_statement_call_unpackprocedure (level : 6)

; line 3725
;================================================================================
; scope: block_body_statement_call_newdisposeprocedure (level : 6)

; line 3771
;================================================================================
; scope: block_body_statement_call_absfunction (level : 6)

; line 3780
;================================================================================
; scope: block_body_statement_call_sqrfunction (level : 6)

; line 3789
;================================================================================
; scope: block_body_statement_call_truncfunction (level : 6)

; line 3797
;================================================================================
; scope: block_body_statement_call_roundfunction (level : 6)

; line 3805
;================================================================================
; scope: block_body_statement_call_oddfunction (level : 6)

; line 3813
;================================================================================
; scope: block_body_statement_call_ordfunction (level : 6)

; line 3821
;================================================================================
; scope: block_body_statement_call_chrfunction (level : 6)

; line 3829
;================================================================================
; scope: block_body_statement_call_predsuccfunction (level : 6)

; line 3837
;================================================================================
; scope: block_body_statement_call_eofeolnfunction (level : 6)

; line 3861
;================================================================================
; scope: block_body_statement_call_callnonstandard (level : 6)

; line 3865
;================================================================================
; scope: block_body_statement_call_callnonstandard_compparam (level : 7)

; line 4017
;================================================================================
; scope: block_body_statement_expression (level : 5)

; line 4020
;================================================================================
; scope: block_body_statement_expression_simpleexpression (level : 6)

; line 4023
;================================================================================
; scope: block_body_statement_expression_simpleexpression_term (level : 7)

; line 4026
;================================================================================
; scope: block_body_statement_expression_simpleexpression_term_factor (level : 8)

; line 4436
;================================================================================
; scope: block_body_statement_assignment (level : 5)

; line 4479
;================================================================================
; scope: block_body_statement_gotostatement (level : 5)

; line 4518
;================================================================================
; scope: block_body_statement_compoundstatement (level : 5)

; line 4532
;================================================================================
; scope: block_body_statement_ifstatement (level : 5)

; line 4552
;================================================================================
; scope: block_body_statement_casestatement (level : 5)

; line 4651
;================================================================================
; scope: block_body_statement_repeatstatement (level : 5)

; line 4675
;================================================================================
; scope: block_body_statement_whilestatement (level : 5)

; line 4686
;================================================================================
; scope: block_body_statement_forstatement (level : 5)

; line 4778
;================================================================================
; scope: block_body_statement_withstatement (level : 5)

; line 5017
;================================================================================
; scope: programme (level : 2)

; line 5054
;================================================================================
; scope: stdnames (level : 2)

; line 5074
;================================================================================
; scope: enterstdtypes (level : 2)

; line 5103
;================================================================================
; scope: entstdnames (level : 2)

; line 5216
;================================================================================
; scope: enterundecl (level : 2)

; line 5251
;================================================================================
; scope: exitundecl (level : 2)

; line 5261
;================================================================================
; scope: initscalars (level : 2)

; line 5286
;================================================================================
; scope: initsets (level : 2)

; line 5298
;================================================================================
; scope: inittables (level : 2)

; line 5299
;================================================================================
; scope: inittables_reswords (level : 3)

; line 5317
;================================================================================
; scope: inittables_symbols (level : 3)

; line 5340
;================================================================================
; scope: inittables_rators (level : 3)

; line 5351
;================================================================================
; scope: inittables_procmnemonics (level : 3)

; line 5370
;================================================================================
; scope: inittables_instrmnemonics (level : 3)

; line 5395
;================================================================================
; scope: inittables_chartypes (level : 3)

; line 5451
;================================================================================
; scope: inittables_initdx (level : 3)
