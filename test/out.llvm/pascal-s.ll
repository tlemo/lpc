; ModuleID = 'pascal-s.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\pascal-s.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"


; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_text = type i8

; line 167
;================================================================================
; scope: program scope (level : 1)

; types
%T_alfa = type [10 x i8]
%T_index = type i8
%T_record_3 = type [13 x i8]
%T_array_2 = type [100 x %T_record_3]
%T_symset = type [2 x i32]
%T_record_5 = type [4 x i8]
%T_array_4 = type [100 x %T_record_5]
%T_range_7 = type i8
%T_range_8 = type i8
%T_range_9 = type i8
%T_order = type [3 x i8]
%T_array_6 = type [10001 x %T_order]
%T_array_10 = type [101 x i32]
%T_set_11 = type [2 x i32]
%T_item = type [5 x i8]
%T_array_12 = type [27 x %T_alfa]
%T_array_13 = type [27 x i32]
%T_array_14 = type [250 x i8]
%T_array_15 = type [100 x double]
%T_array_16 = type [256 x i32]
%T_array_17 = type [10001 x i8]
%T_typset = type [1 x i32]
%T_range_20 = type i8
%T_record_19 = type [28 x i8]
%T_array_18 = type [1001 x %T_record_19]

; program variables
@a = dso_local global i32 zeroinitializer
@atab = dso_local global %T_array_2 zeroinitializer
@b = dso_local global i32 zeroinitializer
@blockbegsys = dso_local global %T_symset zeroinitializer
@btab = dso_local global %T_array_4 zeroinitializer
@c1 = dso_local global i32 zeroinitializer
@c2 = dso_local global i32 zeroinitializer
@cc = dso_local global i32 zeroinitializer
@ch = dso_local global i8 zeroinitializer
@code = dso_local global %T_array_6 zeroinitializer
@constbegsys = dso_local global %T_symset zeroinitializer
@display = dso_local global %T_array_10 zeroinitializer
@errpos = dso_local global i32 zeroinitializer
@errs = dso_local global %T_set_11 zeroinitializer
@facbegsys = dso_local global %T_symset zeroinitializer
@id = dso_local global %T_alfa zeroinitializer
@iflag = dso_local global i1 zeroinitializer
@input = dso_local global %T_text zeroinitializer
@inum = dso_local global i32 zeroinitializer
@key = dso_local global %T_array_12 zeroinitializer
@ksy = dso_local global %T_array_13 zeroinitializer
@lc = dso_local global i32 zeroinitializer
@line = dso_local global %T_array_14 zeroinitializer
@ll = dso_local global i32 zeroinitializer
@oflag = dso_local global i1 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@progname = dso_local global %T_alfa zeroinitializer
@rconst = dso_local global %T_array_15 zeroinitializer
@rnum = dso_local global double zeroinitializer
@sleng = dso_local global i32 zeroinitializer
@sps = dso_local global %T_array_16 zeroinitializer
@srcfil = dso_local global %T_text zeroinitializer
@stab = dso_local global %T_array_17 zeroinitializer
@stantyps = dso_local global %T_typset zeroinitializer
@statbegsys = dso_local global %T_symset zeroinitializer
@sx = dso_local global i32 zeroinitializer
@sy = dso_local global i32 zeroinitializer
@t = dso_local global i32 zeroinitializer
@tab = dso_local global %T_array_18 zeroinitializer
@typebegsys = dso_local global %T_symset zeroinitializer

; line 268
;================================================================================
; scope: errormsg (level : 2)

; types
%T_errormsg_array_21 = type [59 x %T_alfa]

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
%T_fatal_array_22 = type [7 x %T_alfa]

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
%T_block_statement_casestatement_record_24 = type [2 x i8]
%T_block_statement_casestatement_array_23 = type [100 x %T_block_statement_casestatement_record_24]
%T_block_statement_casestatement_array_25 = type [100 x i32]

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
%T_interpret_array_27 = type [100 x i32]
%T_interpret_array_28 = type [4 x i32]
%T_interpret_record_30 = type [8 x i8]
%T_interpret_array_29 = type [10000 x %T_interpret_record_30]
;================================================================================
; metadata

!llvm.dbg.cu = !{!139}
!llvm.module.flags = !{!140, !141}
!llvm.ident = !{!138}

!0 = !DIFile(filename: "pascal-s.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIBasicType(name: "void", size: 0)
!8 = !DICompositeType(tag: DW_TAG_array_type, name: "alfa", file: !0, line: 209, baseType: !2, size: 80, elements: !10)
!9 = !DISubrange(count: 10)
!10 = !{!9}
!11 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!12 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!13 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 253, baseType: !14, size: 12800, elements: !25)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 254, size: 128, flags: DIFlagTypePassByValue, elements: !23)
!15 = !DIBasicType(name: "void", size: 0)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "inxtyp", scope: !14, file: !0, line: 255, baseType: !12, size: 32, offset: 0)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "eltyp", scope: !14, file: !0, line: 255, baseType: !12, size: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "elref", scope: !14, file: !0, line: 256, baseType: !15, size: 8, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !14, file: !0, line: 256, baseType: !15, size: 8, offset: 72)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !14, file: !0, line: 256, baseType: !15, size: 8, offset: 80)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "elsize", scope: !14, file: !0, line: 256, baseType: !15, size: 8, offset: 88)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !14, file: !0, line: 256, baseType: !15, size: 8, offset: 96)
!23 = !{!16,!17,!18,!19,!20,!21,!22}
!24 = !DISubrange(count: 100)
!25 = !{!24}
!26 = !DICompositeType(tag: DW_TAG_array_type, name: "symset", file: !0, line: 212, baseType: !29, size: 64, elements: !28)
!27 = !DISubrange(count: 51)
!28 = !{!27}
!29 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!30 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 258, baseType: !31, size: 3200, elements: !38)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 259, size: 32, flags: DIFlagTypePassByValue, elements: !36)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !31, file: !0, line: 260, baseType: !15, size: 8, offset: 0)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "lastpar", scope: !31, file: !0, line: 260, baseType: !15, size: 8, offset: 8)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "psize", scope: !31, file: !0, line: 260, baseType: !15, size: 8, offset: 16)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "vsize", scope: !31, file: !0, line: 260, baseType: !15, size: 8, offset: 24)
!36 = !{!32,!33,!34,!35}
!37 = !DISubrange(count: 100)
!38 = !{!37}
!39 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 264, baseType: !40, size: 240024, elements: !49)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "order", file: !0, line: 217, size: 24, flags: DIFlagTypePassByValue, elements: !47)
!41 = !DIBasicType(name: "void", size: 0)
!42 = !DIBasicType(name: "void", size: 0)
!43 = !DIBasicType(name: "void", size: 0)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !40, file: !0, line: 218, baseType: !41, size: 8, offset: 0)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !40, file: !0, line: 219, baseType: !42, size: 8, offset: 8)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !40, file: !0, line: 220, baseType: !43, size: 8, offset: 16)
!47 = !{!44,!45,!46}
!48 = !DISubrange(count: 10001)
!49 = !{!48}
!50 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 244, baseType: !3, size: 3232, elements: !52)
!51 = !DISubrange(count: 101)
!52 = !{!51}
!53 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 233, baseType: !56, size: 64, elements: !55)
!54 = !DISubrange(count: 59)
!55 = !{!54}
!56 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!57 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "item", file: !0, line: 214, size: 64, flags: DIFlagTypePassByValue, elements: !61)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "typ", scope: !58, file: !0, line: 215, baseType: !12, size: 32, offset: 0)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !58, file: !0, line: 215, baseType: !15, size: 8, offset: 32)
!61 = !{!59,!60}
!62 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 238, baseType: !8, size: 2160, elements: !64)
!63 = !DISubrange(count: 27)
!64 = !{!63}
!65 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 239, baseType: !11, size: 864, elements: !67)
!66 = !DISubrange(count: 27)
!67 = !{!66}
!68 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 229, baseType: !2, size: 2000, elements: !70)
!69 = !DISubrange(count: 250)
!70 = !{!69}
!71 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 263, baseType: !6, size: 6400, elements: !73)
!72 = !DISubrange(count: 100)
!73 = !{!72}
!74 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 240, baseType: !11, size: 8192, elements: !76)
!75 = !DISubrange(count: 256)
!76 = !{!75}
!77 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 262, baseType: !2, size: 80008, elements: !79)
!78 = !DISubrange(count: 10001)
!79 = !{!78}
!80 = !DICompositeType(tag: DW_TAG_array_type, name: "typset", file: !0, line: 213, baseType: !83, size: 32, elements: !82)
!81 = !DISubrange(count: 7)
!82 = !{!81}
!83 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!84 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 246, baseType: !85, size: 224224, elements: !97)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 247, size: 224, flags: DIFlagTypePassByValue, elements: !95)
!86 = !DIBasicType(name: "void", size: 0)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !85, file: !0, line: 248, baseType: !8, size: 80, offset: 0)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !85, file: !0, line: 248, baseType: !15, size: 8, offset: 80)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !85, file: !0, line: 249, baseType: !57, size: 32, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "typ", scope: !85, file: !0, line: 249, baseType: !12, size: 32, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !85, file: !0, line: 250, baseType: !15, size: 8, offset: 160)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "normal", scope: !85, file: !0, line: 250, baseType: !1, size: 8, offset: 168)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "lev", scope: !85, file: !0, line: 251, baseType: !86, size: 8, offset: 176)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "adr", scope: !85, file: !0, line: 251, baseType: !3, size: 32, offset: 192)
!95 = !{!87,!88,!89,!90,!91,!92,!93,!94}
!96 = !DISubrange(count: 1001)
!97 = !{!96}
!98 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 270, baseType: !8, size: 4720, elements: !100)
!99 = !DISubrange(count: 59)
!100 = !{!99}
!101 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 339, baseType: !8, size: 560, elements: !103)
!102 = !DISubrange(count: 7)
!103 = !{!102}
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conrec", file: !0, line: 576, size: 192, flags: DIFlagTypePassByValue, elements: !108)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !104, file: !0, line: 576, baseType: !12, size: 32, offset: 0)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !104, file: !0, line: 577, baseType: !3, size: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !104, file: !0, line: 578, baseType: !6, size: 64, offset: 64)
!108 = !{!105,!106,!107}
!109 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 1283, baseType: !110, size: 1600, elements: !115)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 1284, size: 16, flags: DIFlagTypePassByValue, elements: !113)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !110, file: !0, line: 1284, baseType: !15, size: 8, offset: 0)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !110, file: !0, line: 1284, baseType: !15, size: 8, offset: 8)
!113 = !{!111,!112}
!114 = !DISubrange(count: 100)
!115 = !{!114}
!116 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 1285, baseType: !3, size: 3200, elements: !118)
!117 = !DISubrange(count: 100)
!118 = !{!117}
!119 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!120 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 1527, baseType: !3, size: 3200, elements: !122)
!121 = !DISubrange(count: 100)
!122 = !{!121}
!123 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 1525, baseType: !3, size: 128, elements: !125)
!124 = !DISubrange(count: 4)
!125 = !{!124}
!126 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 1528, baseType: !127, size: 640000, elements: !134)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 1529, size: 64, flags: DIFlagTypePassByValue, elements: !132)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !127, file: !0, line: 1530, baseType: !3, size: 32, offset: 0)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !127, file: !0, line: 1531, baseType: !6, size: 64, offset: 0)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !127, file: !0, line: 1532, baseType: !1, size: 8, offset: 0)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !127, file: !0, line: 1533, baseType: !2, size: 8, offset: 0)
!132 = !{!128,!129,!130,!131}
!133 = !DISubrange(count: 10000)
!134 = !{!133}
!135 = !{!1,!2,!3,!4,!5,!6,!7,!8,!11,!12,!13,!14,!15,!26,!30,!31,!39,!40,!41,!42,!43,!50,!53,!57,!58,!62,!65,!68,!71,!74,!77,!80,!84,!85,!86,!98,!101,!104,!109,!110,!116,!119,!120,!123,!126,!127}
!136 = !{}
!137 = !{}
!138 = !{!"LPC 1.1 (debug) - built on Mar 20 2020"}
!139 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 20 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !136, retainedTypes: !135, globals: !137, nameTableKind: None)
!140 = !{i32 2, !"CodeView", i32 1}
!141 = !{i32 2, !"Debug Info Version", i32 3}

