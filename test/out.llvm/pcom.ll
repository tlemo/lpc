; ModuleID = 'pcom.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\pcom.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"


; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_text = type i8

; line 93
;================================================================================
; scope: program scope (level : 1)

; types
%T_addrrange = type i8
%T_alpha = type [8 x i8]
%T_array_2 = type [100 x i8]
%T_setty = type i8
%T_range_3 = type i8
%T_array_4 = type [100 x i8]
%T_constant = type [109 x i8]
%T_valu = type [17 x i8]
%T_levrange = type i8
%T_range_5 = type i8
%T_identifier = type [214 x i8]
%T_structure = type [72 x i8]
%T_attr = type [52 x i8]
%T_setofsys = type i8
%T_range_7 = type i8
%T_array_6 = type [61 x %T_range_7]
%T_array_8 = type [256 x i32]
%T_labl = type [20 x i8]
%T_record_10 = type [42 x i8]
%T_array_9 = type [21 x %T_record_10]
%T_disprange = type i8
%T_range_11 = type i8
%T_range_14 = type i8
%T_record_13 = type [5 x i8]
%T_array_12 = type [10 x %T_record_13]
%T_filerec = type [16 x i8]
%T_range_16 = type i8
%T_array_15 = type [9 x %T_range_16]
%T_testpointer = type [24 x i8]
%T_range_17 = type i8
%T_array_19 = type [4 x i8]
%T_array_18 = type [61 x %T_array_19]
%T_array_20 = type [35 x %T_alpha]
%T_array_21 = type [256 x i32]
%T_range_23 = type i8
%T_array_22 = type [23 x %T_range_23]
%T_array_24 = type [35 x i32]
%T_array_25 = type [35 x i32]
%T_array_26 = type [35 x %T_alpha]
%T_setofids = type i8
%T_array_28 = type [4 x i8]
%T_array_27 = type [23 x %T_array_28]
%T_array_29 = type [256 x i32]
%T_array_30 = type [256 x i32]

; program variables
@_input = dso_local global %T_text zeroinitializer
@blockbegsys = dso_local global %T_setofsys zeroinitializer
@boolptr = dso_local global i8* zeroinitializer
@cdx = dso_local global %T_array_6 zeroinitializer
@ch = dso_local global i8 zeroinitializer
@charptr = dso_local global i8* zeroinitializer
@chartp = dso_local global %T_array_8 zeroinitializer
@chcnt = dso_local global i32 zeroinitializer
@constbegsys = dso_local global %T_setofsys zeroinitializer
@debug = dso_local global i1 zeroinitializer
@digmax = dso_local global i32 zeroinitializer
@display = dso_local global %T_array_9 zeroinitializer
@disx = dso_local global %T_disprange zeroinitializer
@dp = dso_local global i1 zeroinitializer
@eol = dso_local global i1 zeroinitializer
@errinx = dso_local global %T_range_11 zeroinitializer
@errlist = dso_local global %T_array_12 zeroinitializer
@facbegsys = dso_local global %T_setofsys zeroinitializer
@fextfilep = dso_local global i8* zeroinitializer
@frw = dso_local global %T_array_15 zeroinitializer
@fwptr = dso_local global i8* zeroinitializer
@gattr = dso_local global %T_attr zeroinitializer
@globtestp = dso_local global i8* zeroinitializer
@ic = dso_local global %T_addrrange zeroinitializer
@id = dso_local global %T_alpha zeroinitializer
@intlabel = dso_local global i32 zeroinitializer
@intptr = dso_local global i8* zeroinitializer
@kk = dso_local global %T_range_17 zeroinitializer
@lc = dso_local global %T_addrrange zeroinitializer
@level = dso_local global %T_levrange zeroinitializer
@lgth = dso_local global i32 zeroinitializer
@linecount = dso_local global i32 zeroinitializer
@list = dso_local global i1 zeroinitializer
@mn = dso_local global %T_array_18 zeroinitializer
@mxint10 = dso_local global i32 zeroinitializer
@na = dso_local global %T_array_20 zeroinitializer
@nilptr = dso_local global i8* zeroinitializer
@op = dso_local global i32 zeroinitializer
@ordint = dso_local global %T_array_21 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@parmptr = dso_local global i8* zeroinitializer
@pdx = dso_local global %T_array_22 zeroinitializer
@prcode = dso_local global i1 zeroinitializer
@prr = dso_local global %T_text zeroinitializer
@prtables = dso_local global i1 zeroinitializer
@prterr = dso_local global i1 zeroinitializer
@realptr = dso_local global i8* zeroinitializer
@rop = dso_local global %T_array_24 zeroinitializer
@rsy = dso_local global %T_array_25 zeroinitializer
@rw = dso_local global %T_array_26 zeroinitializer
@selectsys = dso_local global %T_setofsys zeroinitializer
@simptypebegsys = dso_local global %T_setofsys zeroinitializer
@sna = dso_local global %T_array_27 zeroinitializer
@sop = dso_local global %T_array_29 zeroinitializer
@source = dso_local global %T_text zeroinitializer
@ssy = dso_local global %T_array_30 zeroinitializer
@statbegsys = dso_local global %T_setofsys zeroinitializer
@sy = dso_local global i32 zeroinitializer
@textptr = dso_local global i8* zeroinitializer
@top = dso_local global %T_disprange zeroinitializer
@typebegsys = dso_local global %T_setofsys zeroinitializer
@typedels = dso_local global %T_setofsys zeroinitializer
@ucstptr = dso_local global i8* zeroinitializer
@ufctptr = dso_local global i8* zeroinitializer
@ufldptr = dso_local global i8* zeroinitializer
@uprcptr = dso_local global i8* zeroinitializer
@utypptr = dso_local global i8* zeroinitializer
@uvarptr = dso_local global i8* zeroinitializer
@val = dso_local global %T_valu zeroinitializer

; line 366
;================================================================================
; scope: mark (level : 2)

; line 367
;================================================================================
; scope: release (level : 2)

; line 369
;================================================================================
; scope: endofline (level : 2)

; line 404
;================================================================================
; scope: error (level : 2)

; line 415
;================================================================================
; scope: insymbol (level : 2)

; types
%T_insymbol_array_31 = type [100 x i8]
%T_insymbol_array_32 = type [100 x i8]

; line 424
;================================================================================
; scope: insymbol_nextch (level : 3)

; line 439
;================================================================================
; scope: insymbol_options (level : 3)

; line 617
;================================================================================
; scope: enterid (level : 2)

; line 641
;================================================================================
; scope: searchsection (level : 2)

; line 659
;================================================================================
; scope: searchid (level : 2)

; line 701
;================================================================================
; scope: getbounds (level : 2)

; line 719
;================================================================================
; scope: alignquot (level : 2)

; line 741
;================================================================================
; scope: align (level : 2)

; line 749
;================================================================================
; scope: printtables (level : 2)

; line 759
;================================================================================
; scope: printtables_stptoint (level : 3)

; types
%T_printtables_stptoint_record_33 = type [8 x i8]

; line 763
;================================================================================
; scope: printtables_ctptoint (level : 3)

; types
%T_printtables_ctptoint_record_34 = type [8 x i8]

; line 767
;================================================================================
; scope: printtables_marker (level : 3)

; line 773
;================================================================================
; scope: printtables_marker_markstp (level : 4)

; line 794
;================================================================================
; scope: printtables_marker_markctp (level : 4)

; line 810
;================================================================================
; scope: printtables_followstp (level : 3)

; line 862
;================================================================================
; scope: printtables_followctp (level : 3)

; line 934
;================================================================================
; scope: genlabel (level : 2)

; line 939
;================================================================================
; scope: block (level : 2)

; line 942
;================================================================================
; scope: block_skip (level : 3)

; line 951
;================================================================================
; scope: block_constant (level : 3)

; types
%T_block_constant_range_35 = type i8

; line 1021
;================================================================================
; scope: block_equalbounds (level : 3)

; line 1033
;================================================================================
; scope: block_comptypes (level : 3)

; line 1105
;================================================================================
; scope: block_string (level : 3)

; line 1112
;================================================================================
; scope: block_typ (level : 3)

; line 1116
;================================================================================
; scope: block_typ_simpletype (level : 4)

; line 1201
;================================================================================
; scope: block_typ_fieldlist (level : 4)

; line 1474
;================================================================================
; scope: block_labeldeclaration (level : 3)

; line 1504
;================================================================================
; scope: block_constdeclaration (level : 3)

; line 1527
;================================================================================
; scope: block_typedeclaration (level : 3)

; line 1570
;================================================================================
; scope: block_vardeclaration (level : 3)

; line 1615
;================================================================================
; scope: block_procdeclaration (level : 3)

; types
%T_block_procdeclaration_range_37 = type i8

; line 1620
;================================================================================
; scope: block_procdeclaration_parameterlist (level : 4)

; line 1895
;================================================================================
; scope: block_body (level : 3)

; types
%T_block_body_array_38 = type [65 x i8*]
%T_block_body_range_39 = type i8
%T_block_body_oprange = type i8

; line 1912
;================================================================================
; scope: block_body_mes (level : 4)

; line 1917
;================================================================================
; scope: block_body_putic (level : 4)

; line 1920
;================================================================================
; scope: block_body_gen0 (level : 4)

; line 1926
;================================================================================
; scope: block_body_gen1 (level : 4)

; line 1955
;================================================================================
; scope: block_body_gen2 (level : 4)

; line 1991
;================================================================================
; scope: block_body_gentypindicator (level : 4)

; line 2012
;================================================================================
; scope: block_body_gen0t (level : 4)

; line 2023
;================================================================================
; scope: block_body_gen1t (level : 4)

; line 2034
;================================================================================
; scope: block_body_gen2t (level : 4)

; line 2045
;================================================================================
; scope: block_body_load (level : 4)

; line 2082
;================================================================================
; scope: block_body_store (level : 4)

; line 2095
;================================================================================
; scope: block_body_loadaddress (level : 4)

; line 2123
;================================================================================
; scope: block_body_genfjp (level : 4)

; line 2131
;================================================================================
; scope: block_body_genujpxjp (level : 4)

; line 2139
;================================================================================
; scope: block_body_gencupent (level : 4)

; line 2149
;================================================================================
; scope: block_body_checkbnds (level : 4)

; line 2163
;================================================================================
; scope: block_body_putlabel (level : 4)

; line 2167
;================================================================================
; scope: block_body_statement (level : 4)

; line 2173
;================================================================================
; scope: block_body_statement_selector (level : 5)

; line 2314
;================================================================================
; scope: block_body_statement_call (level : 5)

; types
%T_block_body_statement_call_range_40 = type i8

; line 2317
;================================================================================
; scope: block_body_statement_call_variable (level : 6)

; line 2326
;================================================================================
; scope: block_body_statement_call_getputresetrewrite (level : 6)

; line 2334
;================================================================================
; scope: block_body_statement_call_read (level : 6)

; line 2391
;================================================================================
; scope: block_body_statement_call_write (level : 6)

; types
%T_block_body_statement_call_write_range_41 = type i8

; line 2485
;================================================================================
; scope: block_body_statement_call_pack (level : 6)

; line 2513
;================================================================================
; scope: block_body_statement_call_unpack (level : 6)

; line 2541
;================================================================================
; scope: block_body_statement_call_new (level : 6)

; line 2586
;================================================================================
; scope: block_body_statement_call_mark (level : 6)

; line 2594
;================================================================================
; scope: block_body_statement_call_release (level : 6)

; line 2604
;================================================================================
; scope: block_body_statement_call_abs (level : 6)

; line 2613
;================================================================================
; scope: block_body_statement_call_sqr (level : 6)

; line 2622
;================================================================================
; scope: block_body_statement_call_trunc (level : 6)

; line 2630
;================================================================================
; scope: block_body_statement_call_odd (level : 6)

; line 2638
;================================================================================
; scope: block_body_statement_call_ord (level : 6)

; line 2646
;================================================================================
; scope: block_body_statement_call_chr (level : 6)

; line 2654
;================================================================================
; scope: block_body_statement_call_predsucc (level : 6)

; line 2662
;================================================================================
; scope: block_body_statement_call_eof (level : 6)

; line 2682
;================================================================================
; scope: block_body_statement_call_callnonstandard (level : 6)

; line 2826
;================================================================================
; scope: block_body_statement_expression (level : 5)

; line 2829
;================================================================================
; scope: block_body_statement_expression_simpleexpression (level : 6)

; line 2832
;================================================================================
; scope: block_body_statement_expression_simpleexpression_term (level : 7)

; line 2835
;================================================================================
; scope: block_body_statement_expression_simpleexpression_term_factor (level : 8)

; line 3191
;================================================================================
; scope: block_body_statement_assignment (level : 5)

; line 3233
;================================================================================
; scope: block_body_statement_gotostatement (level : 5)

; line 3261
;================================================================================
; scope: block_body_statement_compoundstatement (level : 5)

; line 3272
;================================================================================
; scope: block_body_statement_ifstatement (level : 5)

; line 3287
;================================================================================
; scope: block_body_statement_casestatement (level : 5)

; types
%T_block_body_statement_casestatement_caseinfo = type [16 x i8]

; line 3378
;================================================================================
; scope: block_body_statement_repeatstatement (level : 5)

; line 3396
;================================================================================
; scope: block_body_statement_whilestatement (level : 5)

; line 3404
;================================================================================
; scope: block_body_statement_forstatement (level : 5)

; line 3477
;================================================================================
; scope: block_body_statement_withstatement (level : 5)

; line 3677
;================================================================================
; scope: programme (level : 2)

; line 3711
;================================================================================
; scope: stdnames (level : 2)

; line 3728
;================================================================================
; scope: enterstdtypes (level : 2)

; line 3756
;================================================================================
; scope: entstdnames (level : 2)

; line 3851
;================================================================================
; scope: enterundecl (level : 2)

; line 3885
;================================================================================
; scope: initscalars (level : 2)

; line 3898
;================================================================================
; scope: initsets (level : 2)

; line 3910
;================================================================================
; scope: inittables (level : 2)

; line 3911
;================================================================================
; scope: inittables_reswords (level : 3)

; line 3930
;================================================================================
; scope: inittables_symbols (level : 3)

; line 3954
;================================================================================
; scope: inittables_rators (level : 3)

; line 3965
;================================================================================
; scope: inittables_procmnemonics (level : 3)

; line 3975
;================================================================================
; scope: inittables_instrmnemonics (level : 3)

; line 3995
;================================================================================
; scope: inittables_chartypes (level : 3)

; line 4033
;================================================================================
; scope: inittables_initdx (level : 3)
;================================================================================
; metadata

!llvm.dbg.cu = !{!224}
!llvm.module.flags = !{!225, !226}
!llvm.ident = !{!223}

!0 = !DIFile(filename: "pcom.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIBasicType(name: "void", size: 0)
!8 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!10 = !DIBasicType(name: "void", size: 0)
!11 = !DICompositeType(tag: DW_TAG_array_type, name: "alpha", file: !0, line: 202, baseType: !2, size: 64, elements: !13)
!12 = !DISubrange(count: 8)
!13 = !{!12}
!14 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!15 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attr", file: !0, line: 229, size: 448, flags: DIFlagTypePassByValue, elements: !96)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "stp", file: !0, line: 178, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "structure", file: !0, line: 180, size: 576, flags: DIFlagTypePassByValue, elements: !86)
!19 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "ctp", file: !0, line: 178, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "identifier", file: !0, line: 204, size: 1728, flags: DIFlagTypePassByValue, elements: !65)
!22 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "valu", file: !0, line: 167, size: 192, flags: DIFlagTypePassByValue, elements: !44)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "csp", file: !0, line: 159, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constant", file: !0, line: 160, size: 896, flags: DIFlagTypePassByValue, elements: !40)
!26 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!27 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 161, baseType: !2, size: 800, elements: !29)
!28 = !DISubrange(count: 100)
!29 = !{!28}
!30 = !DIBasicType(name: "void", size: 0)
!31 = !DIBasicType(name: "void", size: 0)
!32 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 164, baseType: !2, size: 800, elements: !34)
!33 = !DISubrange(count: 100)
!34 = !{!33}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cclass", scope: !25, file: !0, line: 160, baseType: !26, size: 32, offset: 0)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "rval", scope: !25, file: !0, line: 161, baseType: !27, size: 800, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "pval", scope: !25, file: !0, line: 162, baseType: !30, size: 8, offset: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "slgth", scope: !25, file: !0, line: 163, baseType: !31, size: 8, offset: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "sval", scope: !25, file: !0, line: 164, baseType: !32, size: 800, offset: 40)
!40 = !{!35,!36,!37,!38,!39}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "intval", scope: !23, file: !0, line: 167, baseType: !1, size: 8, offset: 0)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ival", scope: !23, file: !0, line: 168, baseType: !3, size: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "valp", scope: !23, file: !0, line: 169, baseType: !24, size: 64, offset: 64)
!44 = !{!41,!42,!43}
!45 = !DIBasicType(name: "void", size: 0)
!46 = !DIBasicType(name: "void", size: 0)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !21, file: !0, line: 205, baseType: !11, size: 64, offset: 0)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "llink", scope: !21, file: !0, line: 205, baseType: !20, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "rlink", scope: !21, file: !0, line: 205, baseType: !20, size: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "idtype", scope: !21, file: !0, line: 206, baseType: !17, size: 64, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !21, file: !0, line: 206, baseType: !20, size: 64, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "klass", scope: !21, file: !0, line: 207, baseType: !22, size: 32, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !21, file: !0, line: 209, baseType: !23, size: 192, offset: 384)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "vkind", scope: !21, file: !0, line: 210, baseType: !8, size: 32, offset: 352)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "vlev", scope: !21, file: !0, line: 210, baseType: !45, size: 8, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !21, file: !0, line: 210, baseType: !10, size: 8, offset: 392)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "fldaddr", scope: !21, file: !0, line: 211, baseType: !10, size: 8, offset: 352)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "pfdeckind", scope: !21, file: !0, line: 212, baseType: !19, size: 32, offset: 352)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !21, file: !0, line: 213, baseType: !46, size: 8, offset: 384)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "pflev", scope: !21, file: !0, line: 214, baseType: !45, size: 8, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "pfname", scope: !21, file: !0, line: 214, baseType: !3, size: 32, offset: 416)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "pfkind", scope: !21, file: !0, line: 215, baseType: !8, size: 32, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "forwdecl", scope: !21, file: !0, line: 216, baseType: !1, size: 8, offset: 480)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "externl", scope: !21, file: !0, line: 216, baseType: !1, size: 8, offset: 488)
!65 = !{!47,!48,!49,!50,!51,!52,!53,!54,!55,!56,!57,!58,!59,!60,!61,!62,!63,!64}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !18, file: !0, line: 181, baseType: !1, size: 8, offset: 0)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !18, file: !0, line: 182, baseType: !10, size: 8, offset: 8)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "form", scope: !18, file: !0, line: 183, baseType: !15, size: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "scalkind", scope: !18, file: !0, line: 184, baseType: !19, size: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "fconst", scope: !18, file: !0, line: 185, baseType: !20, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "rangetype", scope: !18, file: !0, line: 186, baseType: !17, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !18, file: !0, line: 186, baseType: !23, size: 192, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !18, file: !0, line: 186, baseType: !23, size: 192, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "eltype", scope: !18, file: !0, line: 187, baseType: !17, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "elset", scope: !18, file: !0, line: 188, baseType: !17, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "aeltype", scope: !18, file: !0, line: 189, baseType: !17, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "inxtype", scope: !18, file: !0, line: 189, baseType: !17, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "fstfld", scope: !18, file: !0, line: 190, baseType: !20, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "recvar", scope: !18, file: !0, line: 190, baseType: !17, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "filtype", scope: !18, file: !0, line: 191, baseType: !17, size: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "tagfieldp", scope: !18, file: !0, line: 192, baseType: !20, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "fstvar", scope: !18, file: !0, line: 192, baseType: !17, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "nxtvar", scope: !18, file: !0, line: 193, baseType: !17, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "subvar", scope: !18, file: !0, line: 193, baseType: !17, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "varval", scope: !18, file: !0, line: 193, baseType: !23, size: 192, offset: 192)
!86 = !{!66,!67,!68,!69,!70,!71,!72,!73,!74,!75,!76,!77,!78,!79,!80,!81,!82,!83,!84,!85}
!87 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!88 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "typtr", scope: !16, file: !0, line: 229, baseType: !17, size: 64, offset: 0)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !16, file: !0, line: 230, baseType: !87, size: 32, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "cval", scope: !16, file: !0, line: 231, baseType: !23, size: 192, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !16, file: !0, line: 232, baseType: !88, size: 32, offset: 96)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "vlevel", scope: !16, file: !0, line: 233, baseType: !45, size: 8, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "dplmt", scope: !16, file: !0, line: 233, baseType: !10, size: 8, offset: 136)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "idplmt", scope: !16, file: !0, line: 234, baseType: !10, size: 8, offset: 128)
!96 = !{!89,!90,!91,!92,!93,!94,!95}
!97 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!98 = !DIBasicType(name: "void", size: 0)
!99 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 360, baseType: !100, size: 488, elements: !102)
!100 = !DIBasicType(name: "void", size: 0)
!101 = !DISubrange(count: 61)
!102 = !{!101}
!103 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 350, baseType: !104, size: 8192, elements: !106)
!104 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!105 = !DISubrange(count: 256)
!106 = !{!105}
!107 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 315, baseType: !108, size: 8064, elements: !124)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 316, size: 384, flags: DIFlagTypePassByValue, elements: !122)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "lbp", file: !0, line: 247, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "labl", file: !0, line: 248, size: 192, flags: DIFlagTypePassByValue, elements: !115)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "nextlab", scope: !110, file: !0, line: 248, baseType: !109, size: 64, offset: 0)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "defined", scope: !110, file: !0, line: 248, baseType: !1, size: 8, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "labval", scope: !110, file: !0, line: 249, baseType: !3, size: 32, offset: 96)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "labname", scope: !110, file: !0, line: 249, baseType: !3, size: 32, offset: 128)
!115 = !{!111,!112,!113,!114}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !108, file: !0, line: 317, baseType: !20, size: 64, offset: 0)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flabel", scope: !108, file: !0, line: 317, baseType: !109, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "occur", scope: !108, file: !0, line: 318, baseType: !97, size: 32, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "clev", scope: !108, file: !0, line: 319, baseType: !45, size: 8, offset: 160)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "cdspl", scope: !108, file: !0, line: 320, baseType: !10, size: 8, offset: 168)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "vdspl", scope: !108, file: !0, line: 321, baseType: !10, size: 8, offset: 160)
!122 = !{!116,!117,!118,!119,!120,!121}
!123 = !DISubrange(count: 21)
!124 = !{!123}
!125 = !DIBasicType(name: "void", size: 0)
!126 = !DIBasicType(name: "void", size: 0)
!127 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 332, baseType: !128, size: 640, elements: !134)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 333, size: 64, flags: DIFlagTypePassByValue, elements: !132)
!129 = !DIBasicType(name: "void", size: 0)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !128, file: !0, line: 333, baseType: !3, size: 32, offset: 0)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nmr", scope: !128, file: !0, line: 334, baseType: !129, size: 8, offset: 32)
!132 = !{!130,!131}
!133 = !DISubrange(count: 10)
!134 = !{!133}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "extfilep", file: !0, line: 252, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "filerec", file: !0, line: 253, size: 128, flags: DIFlagTypePassByValue, elements: !139)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !136, file: !0, line: 253, baseType: !11, size: 64, offset: 0)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nextfile", scope: !136, file: !0, line: 253, baseType: !135, size: 64, offset: 64)
!139 = !{!137,!138}
!140 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 352, baseType: !141, size: 72, elements: !143)
!141 = !DIBasicType(name: "void", size: 0)
!142 = !DISubrange(count: 9)
!143 = !{!142}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "testp", file: !0, line: 239, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "testpointer", file: !0, line: 240, size: 192, flags: DIFlagTypePassByValue, elements: !149)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !145, file: !0, line: 241, baseType: !17, size: 64, offset: 0)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !145, file: !0, line: 241, baseType: !17, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "lasttestp", scope: !145, file: !0, line: 242, baseType: !144, size: 64, offset: 128)
!149 = !{!146,!147,!148}
!150 = !DIBasicType(name: "void", size: 0)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "marktype", file: !0, line: 138, baseType: !3, size: 64)
!152 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 358, baseType: !153, size: 1952, elements: !157)
!153 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 358, baseType: !2, size: 32, elements: !155)
!154 = !DISubrange(count: 4)
!155 = !{!154}
!156 = !DISubrange(count: 61)
!157 = !{!156}
!158 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 357, baseType: !11, size: 2240, elements: !160)
!159 = !DISubrange(count: 35)
!160 = !{!159}
!161 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 362, baseType: !3, size: 8192, elements: !163)
!162 = !DISubrange(count: 256)
!163 = !{!162}
!164 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 361, baseType: !165, size: 184, elements: !167)
!165 = !DIBasicType(name: "void", size: 0)
!166 = !DISubrange(count: 23)
!167 = !{!166}
!168 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 355, baseType: !14, size: 1120, elements: !170)
!169 = !DISubrange(count: 35)
!170 = !{!169}
!171 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 353, baseType: !9, size: 1120, elements: !173)
!172 = !DISubrange(count: 35)
!173 = !{!172}
!174 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 351, baseType: !11, size: 2240, elements: !176)
!175 = !DISubrange(count: 35)
!176 = !{!175}
!177 = !DIBasicType(name: "void", size: 0)
!178 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 359, baseType: !179, size: 736, elements: !183)
!179 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 359, baseType: !2, size: 32, elements: !181)
!180 = !DISubrange(count: 4)
!181 = !{!180}
!182 = !DISubrange(count: 23)
!183 = !{!182}
!184 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 356, baseType: !14, size: 8192, elements: !186)
!185 = !DISubrange(count: 256)
!186 = !{!185}
!187 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 354, baseType: !9, size: 8192, elements: !189)
!188 = !DISubrange(count: 256)
!189 = !{!188}
!190 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 420, baseType: !2, size: 800, elements: !192)
!191 = !DISubrange(count: 100)
!192 = !{!191}
!193 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 421, baseType: !2, size: 800, elements: !195)
!194 = !DISubrange(count: 100)
!195 = !{!194}
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 760, size: 64, flags: DIFlagTypePassByValue, elements: !199)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !196, file: !0, line: 760, baseType: !17, size: 64, offset: 0)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !196, file: !0, line: 760, baseType: !3, size: 32, offset: 0)
!199 = !{!197,!198}
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 764, size: 64, flags: DIFlagTypePassByValue, elements: !203)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !200, file: !0, line: 764, baseType: !20, size: 64, offset: 0)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !200, file: !0, line: 764, baseType: !3, size: 32, offset: 0)
!203 = !{!201,!202}
!204 = !DIBasicType(name: "void", size: 0)
!205 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!206 = !DIBasicType(name: "void", size: 0)
!207 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 1900, baseType: !24, size: 4160, elements: !209)
!208 = !DISubrange(count: 65)
!209 = !{!208}
!210 = !DIBasicType(name: "void", size: 0)
!211 = !DIBasicType(name: "void", size: 0)
!212 = !DIBasicType(name: "void", size: 0)
!213 = !DIBasicType(name: "void", size: 0)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "caseinfo", file: !0, line: 3291, size: 128, flags: DIFlagTypePassByValue, elements: !219)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "cip", file: !0, line: 3289, baseType: !214, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !214, file: !0, line: 3291, baseType: !215, size: 64, offset: 0)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "csstart", scope: !214, file: !0, line: 3292, baseType: !3, size: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "cslab", scope: !214, file: !0, line: 3293, baseType: !3, size: 32, offset: 96)
!219 = !{!216,!217,!218}
!220 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!11,!14,!15,!16,!17,!18,!19,!20,!21,!22,!23,!24,!25,!26,!27,!30,!31,!32,!45,!46,!87,!88,!97,!98,!99,!100,!103,!104,!107,!108,!109,!110,!125,!126,!127,!128,!129,!135,!136,!140,!141,!144,!145,!150,!151,!152,!153,!158,!161,!164,!165,!168,!171,!174,!177,!178,!179,!184,!187,!190,!193,!196,!200,!204,!205,!206,!207,!210,!211,!212,!213,!214,!215}
!221 = !{}
!222 = !{}
!223 = !{!"LPC 1.1 (debug) - built on Mar 20 2020"}
!224 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 20 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !220, globals: !222, nameTableKind: None)
!225 = !{i32 2, !"CodeView", i32 1}
!226 = !{i32 2, !"Debug Info Version", i32 3}

