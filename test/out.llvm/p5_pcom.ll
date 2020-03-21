; ModuleID = 'p5_pcom.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\p5_pcom.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"


; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_text = type i8*

; line 236
;================================================================================
; scope: program scope (level : 1)

; types
%T_array_2 = type [10 x i8]
%T_strvs = type [24 x i8]
%T_setty = type [8 x i32]
%T_constant = type [56 x i8]
%T_valu = type [17 x i8]
%T_identifier = type [278 x i8]
%T_structure = type [104 x i8]
%T_attr = type [52 x i8]
%T_setofsys = type [2 x i32]
%T_caseinfo = type [16 x i8]
%T_array_5 = type [75 x i32]
%T_array_7 = type [256 x i32]
%T_csstr = type [250 x i8]
%T_labl = type [37 x i8]
%T_record_9 = type [84 x i8]
%T_array_8 = type [301 x %T_record_9]
%T_record_12 = type [8 x i8]
%T_array_11 = type [10 x %T_record_12]
%T_array_14 = type [500 x i1]
%T_idstr = type [250 x i8]
%T_filerec = type [264 x i8]
%T_array_15 = type [10 x i32]
%T_array_20 = type [4 x i8]
%T_array_19 = type [75 x %T_array_20]
%T_restr = type [9 x i8]
%T_array_21 = type [39 x %T_restr]
%T_nmstr = type [250 x i8]
%T_array_22 = type [256 x i32]
%T_array_23 = type [39 x i32]
%T_array_25 = type [35 x i32]
%T_array_26 = type [35 x i32]
%T_array_27 = type [35 x %T_restr]
%T_setofids = type [1 x i32]
%T_array_29 = type [4 x i8]
%T_array_28 = type [39 x %T_array_29]
%T_array_30 = type [256 x i32]
%T_array_31 = type [256 x i32]

; program variables
@blockbegsys = dso_local global %T_setofsys zeroinitializer
@boolptr = dso_local global i8* zeroinitializer
@cdx = dso_local global %T_array_5 zeroinitializer
@ch = dso_local global i8 zeroinitializer
@charptr = dso_local global i8* zeroinitializer
@chartp = dso_local global %T_array_7 zeroinitializer
@chcnt = dso_local global i32 zeroinitializer
@cipcnt = dso_local global i32 zeroinitializer
@constbegsys = dso_local global %T_setofsys zeroinitializer
@cspcnt = dso_local global i32 zeroinitializer
@ctpcnt = dso_local global i32 zeroinitializer
@debug = dso_local global i1 zeroinitializer
@display = dso_local global %T_array_8 zeroinitializer
@disx = dso_local global i32 zeroinitializer
@dp = dso_local global i1 zeroinitializer
@eol = dso_local global i1 zeroinitializer
@errinx = dso_local global i32 zeroinitializer
@errlist = dso_local global %T_array_11 zeroinitializer
@errtbl = dso_local global %T_array_14 zeroinitializer
@f = dso_local global i1 zeroinitializer
@facbegsys = dso_local global %T_setofsys zeroinitializer
@fextfilep = dso_local global i8* zeroinitializer
@filcnt = dso_local global i32 zeroinitializer
@frw = dso_local global %T_array_15 zeroinitializer
@fwptr = dso_local global i8* zeroinitializer
@gattr = dso_local global %T_attr zeroinitializer
@i = dso_local global i32 zeroinitializer
@ic = dso_local global i32 zeroinitializer
@id = dso_local global %T_idstr zeroinitializer
@input = dso_local global %T_text zeroinitializer
@inputhdf = dso_local global i1 zeroinitializer
@inputptr = dso_local global i8* zeroinitializer
@intlabel = dso_local global i32 zeroinitializer
@intptr = dso_local global i8* zeroinitializer
@kk = dso_local global i32 zeroinitializer
@lbpcnt = dso_local global i32 zeroinitializer
@lc = dso_local global i32 zeroinitializer
@level = dso_local global i32 zeroinitializer
@lgth = dso_local global i32 zeroinitializer
@linecount = dso_local global i32 zeroinitializer
@list = dso_local global i1 zeroinitializer
@mn = dso_local global %T_array_19 zeroinitializer
@mxint10 = dso_local global i32 zeroinitializer
@na = dso_local global %T_array_21 zeroinitializer
@nilptr = dso_local global i8* zeroinitializer
@op = dso_local global i32 zeroinitializer
@ordint = dso_local global %T_array_22 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@outputhdf = dso_local global i1 zeroinitializer
@outputptr = dso_local global i8* zeroinitializer
@parmptr = dso_local global i8* zeroinitializer
@pdx = dso_local global %T_array_23 zeroinitializer
@prcode = dso_local global i1 zeroinitializer
@prr = dso_local global %T_text zeroinitializer
@prtables = dso_local global i1 zeroinitializer
@realptr = dso_local global i8* zeroinitializer
@rop = dso_local global %T_array_25 zeroinitializer
@rsy = dso_local global %T_array_26 zeroinitializer
@rw = dso_local global %T_array_27 zeroinitializer
@selectsys = dso_local global %T_setofsys zeroinitializer
@simptypebegsys = dso_local global %T_setofsys zeroinitializer
@sna = dso_local global %T_array_28 zeroinitializer
@sop = dso_local global %T_array_30 zeroinitializer
@ssy = dso_local global %T_array_31 zeroinitializer
@statbegsys = dso_local global %T_setofsys zeroinitializer
@stpcnt = dso_local global i32 zeroinitializer
@strcnt = dso_local global i32 zeroinitializer
@sy = dso_local global i32 zeroinitializer
@textptr = dso_local global i8* zeroinitializer
@top = dso_local global i32 zeroinitializer
@toterr = dso_local global i32 zeroinitializer
@typebegsys = dso_local global %T_setofsys zeroinitializer
@typedels = dso_local global %T_setofsys zeroinitializer
@ucstptr = dso_local global i8* zeroinitializer
@ufctptr = dso_local global i8* zeroinitializer
@ufldptr = dso_local global i8* zeroinitializer
@uprcptr = dso_local global i8* zeroinitializer
@utypptr = dso_local global i8* zeroinitializer
@uvarptr = dso_local global i8* zeroinitializer
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
%T_printtables_stptoint_record_32 = type [8 x i8]

; line 1698
;================================================================================
; scope: printtables_ctptoint (level : 3)

; types
%T_printtables_ctptoint_record_33 = type [8 x i8]

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

; line 2622
;================================================================================
; scope: block_procdeclaration_pushlvl (level : 4)

; line 2639
;================================================================================
; scope: block_procdeclaration_parameterlist (level : 4)

; line 2910
;================================================================================
; scope: block_body (level : 3)

; types
%T_block_body_array_38 = type [4000 x i8*]

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
;================================================================================
; metadata

!llvm.dbg.cu = !{!252}
!llvm.module.flags = !{!253, !254}
!llvm.ident = !{!251}

!0 = !DIFile(filename: "p5_pcom.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!10 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!12 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attr", file: !0, line: 458, size: 448, flags: DIFlagTypePassByValue, elements: !106)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "stp", file: !0, line: 401, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "structure", file: !0, line: 404, size: 832, flags: DIFlagTypePassByValue, elements: !96)
!16 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "ctp", file: !0, line: 402, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "identifier", file: !0, line: 432, size: 2240, flags: DIFlagTypePassByValue, elements: !71)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "strvsp", file: !0, line: 371, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strvs", file: !0, line: 372, size: 192, flags: DIFlagTypePassByValue, elements: !26)
!21 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 373, baseType: !2, size: 80, elements: !23)
!22 = !DISubrange(count: 10)
!23 = !{!22}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !20, file: !0, line: 373, baseType: !21, size: 80, offset: 0)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !20, file: !0, line: 374, baseType: !19, size: 64, offset: 128)
!26 = !{!24,!25}
!27 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "valu", file: !0, line: 390, size: 192, flags: DIFlagTypePassByValue, elements: !47)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "csp", file: !0, line: 381, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constant", file: !0, line: 382, size: 448, flags: DIFlagTypePassByValue, elements: !43)
!31 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!32 = !DICompositeType(tag: DW_TAG_array_type, name: "setty", file: !0, line: 379, baseType: !35, size: 256, elements: !34)
!33 = !DISubrange(count: 256)
!34 = !{!33}
!35 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!36 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !30, file: !0, line: 383, baseType: !29, size: 64, offset: 0)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cclass", scope: !30, file: !0, line: 384, baseType: !31, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "rval", scope: !30, file: !0, line: 385, baseType: !19, size: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "pval", scope: !30, file: !0, line: 386, baseType: !32, size: 256, offset: 96)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "slgth", scope: !30, file: !0, line: 387, baseType: !36, size: 32, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "sval", scope: !30, file: !0, line: 387, baseType: !19, size: 64, offset: 128)
!43 = !{!37,!38,!39,!40,!41,!42}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "intval", scope: !28, file: !0, line: 390, baseType: !1, size: 8, offset: 0)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ival", scope: !28, file: !0, line: 391, baseType: !3, size: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "valp", scope: !28, file: !0, line: 392, baseType: !29, size: 64, offset: 64)
!47 = !{!44,!45,!46}
!48 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!49 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !18, file: !0, line: 433, baseType: !19, size: 64, offset: 0)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "llink", scope: !18, file: !0, line: 433, baseType: !17, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "rlink", scope: !18, file: !0, line: 433, baseType: !17, size: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "idtype", scope: !18, file: !0, line: 434, baseType: !14, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !18, file: !0, line: 434, baseType: !17, size: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "keep", scope: !18, file: !0, line: 434, baseType: !1, size: 8, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "klass", scope: !18, file: !0, line: 435, baseType: !27, size: 32, offset: 352)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !18, file: !0, line: 437, baseType: !28, size: 192, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "vkind", scope: !18, file: !0, line: 438, baseType: !8, size: 32, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "vlev", scope: !18, file: !0, line: 438, baseType: !48, size: 32, offset: 416)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !18, file: !0, line: 438, baseType: !10, size: 32, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "fldaddr", scope: !18, file: !0, line: 439, baseType: !10, size: 32, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "pfaddr", scope: !18, file: !0, line: 440, baseType: !10, size: 32, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "pflist", scope: !18, file: !0, line: 440, baseType: !17, size: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "pfdeckind", scope: !18, file: !0, line: 441, baseType: !16, size: 32, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !18, file: !0, line: 442, baseType: !49, size: 32, offset: 544)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "pflev", scope: !18, file: !0, line: 443, baseType: !48, size: 32, offset: 544)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "pfname", scope: !18, file: !0, line: 443, baseType: !3, size: 32, offset: 576)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "pfkind", scope: !18, file: !0, line: 444, baseType: !8, size: 32, offset: 608)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "forwdecl", scope: !18, file: !0, line: 445, baseType: !1, size: 8, offset: 640)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "externl", scope: !18, file: !0, line: 445, baseType: !1, size: 8, offset: 648)
!71 = !{!50,!51,!52,!53,!54,!55,!56,!57,!58,!59,!60,!61,!62,!63,!64,!65,!66,!67,!68,!69,!70}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !15, file: !0, line: 405, baseType: !14, size: 64, offset: 0)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !15, file: !0, line: 406, baseType: !1, size: 8, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !15, file: !0, line: 407, baseType: !10, size: 32, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "packing", scope: !15, file: !0, line: 408, baseType: !1, size: 8, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "form", scope: !15, file: !0, line: 409, baseType: !12, size: 32, offset: 160)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "scalkind", scope: !15, file: !0, line: 410, baseType: !16, size: 32, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "fconst", scope: !15, file: !0, line: 411, baseType: !17, size: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "rangetype", scope: !15, file: !0, line: 412, baseType: !14, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !15, file: !0, line: 412, baseType: !28, size: 192, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !15, file: !0, line: 412, baseType: !28, size: 192, offset: 448)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "eltype", scope: !15, file: !0, line: 413, baseType: !14, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "elset", scope: !15, file: !0, line: 414, baseType: !14, size: 64, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "matchpack", scope: !15, file: !0, line: 414, baseType: !1, size: 8, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "aeltype", scope: !15, file: !0, line: 415, baseType: !14, size: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "inxtype", scope: !15, file: !0, line: 415, baseType: !14, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "fstfld", scope: !15, file: !0, line: 416, baseType: !17, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "recvar", scope: !15, file: !0, line: 416, baseType: !14, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "recyc", scope: !15, file: !0, line: 416, baseType: !14, size: 64, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "filtype", scope: !15, file: !0, line: 417, baseType: !14, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "tagfieldp", scope: !15, file: !0, line: 418, baseType: !17, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "fstvar", scope: !15, file: !0, line: 418, baseType: !14, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "nxtvar", scope: !15, file: !0, line: 419, baseType: !14, size: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "subvar", scope: !15, file: !0, line: 419, baseType: !14, size: 64, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "varval", scope: !15, file: !0, line: 419, baseType: !28, size: 192, offset: 320)
!96 = !{!72,!73,!74,!75,!76,!77,!78,!79,!80,!81,!82,!83,!84,!85,!86,!87,!88,!89,!90,!91,!92,!93,!94,!95}
!97 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!98 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "typtr", scope: !13, file: !0, line: 458, baseType: !14, size: 64, offset: 0)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !13, file: !0, line: 459, baseType: !97, size: 32, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "cval", scope: !13, file: !0, line: 460, baseType: !28, size: 192, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !13, file: !0, line: 461, baseType: !98, size: 32, offset: 96)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "vlevel", scope: !13, file: !0, line: 462, baseType: !48, size: 32, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "dplmt", scope: !13, file: !0, line: 462, baseType: !10, size: 32, offset: 160)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "idplmt", scope: !13, file: !0, line: 463, baseType: !10, size: 32, offset: 128)
!106 = !{!99,!100,!101,!102,!103,!104,!105}
!107 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!108 = !DICompositeType(tag: DW_TAG_array_type, name: "setofsys", file: !0, line: 366, baseType: !111, size: 64, elements: !110)
!109 = !DISubrange(count: 49)
!110 = !{!109}
!111 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "caseinfo", file: !0, line: 489, size: 128, flags: DIFlagTypePassByValue, elements: !117)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "cip", file: !0, line: 488, baseType: !112, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !0, line: 489, baseType: !113, size: 64, offset: 0)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "csstart", scope: !112, file: !0, line: 490, baseType: !3, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "cslab", scope: !112, file: !0, line: 491, baseType: !3, size: 32, offset: 96)
!117 = !{!114,!115,!116}
!118 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 600, baseType: !119, size: 2400, elements: !121)
!119 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!120 = !DISubrange(count: 75)
!121 = !{!120}
!122 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 590, baseType: !123, size: 8192, elements: !125)
!123 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!124 = !DISubrange(count: 256)
!125 = !{!124}
!126 = !DICompositeType(tag: DW_TAG_array_type, name: "csstr", file: !0, line: 431, baseType: !2, size: 2000, elements: !128)
!127 = !DISubrange(count: 250)
!128 = !{!127}
!129 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 554, baseType: !130, size: 211904, elements: !154)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 555, size: 704, flags: DIFlagTypePassByValue, elements: !152)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "lbp", file: !0, line: 470, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "labl", file: !0, line: 471, size: 320, flags: DIFlagTypePassByValue, elements: !142)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "nextlab", scope: !132, file: !0, line: 472, baseType: !131, size: 64, offset: 0)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "defined", scope: !132, file: !0, line: 473, baseType: !1, size: 8, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "labval", scope: !132, file: !0, line: 474, baseType: !3, size: 32, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "labname", scope: !132, file: !0, line: 475, baseType: !3, size: 32, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "vlevel", scope: !132, file: !0, line: 476, baseType: !48, size: 32, offset: 160)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "slevel", scope: !132, file: !0, line: 477, baseType: !3, size: 32, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ipcref", scope: !132, file: !0, line: 478, baseType: !1, size: 8, offset: 224)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "minlvl", scope: !132, file: !0, line: 479, baseType: !3, size: 32, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "bact", scope: !132, file: !0, line: 480, baseType: !1, size: 8, offset: 288)
!142 = !{!133,!134,!135,!136,!137,!138,!139,!140,!141}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !130, file: !0, line: 556, baseType: !17, size: 64, offset: 0)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flabel", scope: !130, file: !0, line: 556, baseType: !131, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "fconst", scope: !130, file: !0, line: 557, baseType: !29, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "fstruct", scope: !130, file: !0, line: 557, baseType: !14, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "occur", scope: !130, file: !0, line: 558, baseType: !107, size: 32, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "clev", scope: !130, file: !0, line: 559, baseType: !48, size: 32, offset: 288)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "cdspl", scope: !130, file: !0, line: 560, baseType: !10, size: 32, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "vdspl", scope: !130, file: !0, line: 561, baseType: !10, size: 32, offset: 288)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "bname", scope: !130, file: !0, line: 562, baseType: !17, size: 64, offset: 320)
!152 = !{!143,!144,!145,!146,!147,!148,!149,!150,!151}
!153 = !DISubrange(count: 301)
!154 = !{!153}
!155 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!156 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!157 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 572, baseType: !158, size: 640, elements: !164)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 573, size: 64, flags: DIFlagTypePassByValue, elements: !162)
!159 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !158, file: !0, line: 573, baseType: !3, size: 32, offset: 0)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nmr", scope: !158, file: !0, line: 574, baseType: !159, size: 32, offset: 32)
!162 = !{!160,!161}
!163 = !DISubrange(count: 10)
!164 = !{!163}
!165 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 607, baseType: !1, size: 4000, elements: !167)
!166 = !DISubrange(count: 500)
!167 = !{!166}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "extfilep", file: !0, line: 484, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filerec", file: !0, line: 485, size: 2112, flags: DIFlagTypePassByValue, elements: !175)
!170 = !DICompositeType(tag: DW_TAG_array_type, name: "idstr", file: !0, line: 428, baseType: !2, size: 2000, elements: !172)
!171 = !DISubrange(count: 250)
!172 = !{!171}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !169, file: !0, line: 485, baseType: !170, size: 2000, offset: 0)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nextfile", scope: !169, file: !0, line: 485, baseType: !168, size: 64, offset: 2048)
!175 = !{!173,!174}
!176 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 592, baseType: !177, size: 320, elements: !179)
!177 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!178 = !DISubrange(count: 10)
!179 = !{!178}
!180 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!181 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!182 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 598, baseType: !183, size: 2400, elements: !187)
!183 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 598, baseType: !2, size: 32, elements: !185)
!184 = !DISubrange(count: 4)
!185 = !{!184}
!186 = !DISubrange(count: 75)
!187 = !{!186}
!188 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 597, baseType: !189, size: 2808, elements: !193)
!189 = !DICompositeType(tag: DW_TAG_array_type, name: "restr", file: !0, line: 429, baseType: !2, size: 72, elements: !191)
!190 = !DISubrange(count: 9)
!191 = !{!190}
!192 = !DISubrange(count: 39)
!193 = !{!192}
!194 = !DICompositeType(tag: DW_TAG_array_type, name: "nmstr", file: !0, line: 430, baseType: !2, size: 2000, elements: !196)
!195 = !DISubrange(count: 250)
!196 = !{!195}
!197 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 602, baseType: !3, size: 8192, elements: !199)
!198 = !DISubrange(count: 256)
!199 = !{!198}
!200 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 601, baseType: !201, size: 1248, elements: !203)
!201 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!202 = !DISubrange(count: 39)
!203 = !{!202}
!204 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 595, baseType: !11, size: 1120, elements: !206)
!205 = !DISubrange(count: 35)
!206 = !{!205}
!207 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 593, baseType: !9, size: 1120, elements: !209)
!208 = !DISubrange(count: 35)
!209 = !{!208}
!210 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 591, baseType: !189, size: 2520, elements: !212)
!211 = !DISubrange(count: 35)
!212 = !{!211}
!213 = !DICompositeType(tag: DW_TAG_array_type, name: "setofids", file: !0, line: 426, baseType: !216, size: 32, elements: !215)
!214 = !DISubrange(count: 6)
!215 = !{!214}
!216 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!217 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 599, baseType: !218, size: 1248, elements: !222)
!218 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 599, baseType: !2, size: 32, elements: !220)
!219 = !DISubrange(count: 4)
!220 = !{!219}
!221 = !DISubrange(count: 39)
!222 = !{!221}
!223 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 596, baseType: !11, size: 8192, elements: !225)
!224 = !DISubrange(count: 256)
!225 = !{!224}
!226 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 594, baseType: !9, size: 8192, elements: !228)
!227 = !DISubrange(count: 256)
!228 = !{!227}
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 1695, size: 64, flags: DIFlagTypePassByValue, elements: !232)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !229, file: !0, line: 1695, baseType: !14, size: 64, offset: 0)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !229, file: !0, line: 1695, baseType: !3, size: 32, offset: 0)
!232 = !{!230,!231}
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 1699, size: 64, flags: DIFlagTypePassByValue, elements: !236)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !233, file: !0, line: 1699, baseType: !17, size: 64, offset: 0)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !233, file: !0, line: 1699, baseType: !3, size: 32, offset: 0)
!236 = !{!234,!235}
!237 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!238 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!239 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!240 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!241 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 2915, baseType: !29, size: 256000, elements: !243)
!242 = !DISubrange(count: 4000)
!243 = !{!242}
!244 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!245 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!246 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!247 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!248 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!11,!12,!13,!14,!15,!16,!17,!18,!19,!20,!21,!27,!28,!29,!30,!31,!32,!36,!48,!49,!97,!98,!107,!108,!112,!113,!118,!119,!122,!123,!126,!129,!130,!131,!132,!155,!156,!157,!158,!159,!165,!168,!169,!170,!176,!177,!180,!181,!182,!183,!188,!189,!194,!197,!200,!201,!204,!207,!210,!213,!217,!218,!223,!226,!229,!233,!237,!238,!239,!240,!241,!244,!245,!246,!247}
!249 = !{}
!250 = !{}
!251 = !{!"LPC 1.1"}
!252 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !249, retainedTypes: !248, globals: !250, nameTableKind: None)
!253 = !{i32 2, !"CodeView", i32 1}
!254 = !{i32 2, !"Debug Info Version", i32 3}

