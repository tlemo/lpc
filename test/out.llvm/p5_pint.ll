
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 262
;================================================================================
; scope: program scope (level : 1)

; types
%T_address = type __range
%T_alfa = type [10 x i8]
%T_alfainx = type __range
%T_beta = type [25 x i8]
%T_bytfil = type __file
%T_array_2 = type [100 x %T_bytfil]
%T_byte = type __range
%T_array_4 = type [100 x i1]
%T_fileno = type __range
%T_array_5 = type [100 x i32]
%T_array_6 = type [100 x %T_text]
%T_array_7 = type [256 x i1]
%T_range_9 = type __range
%T_array_8 = type [256 x %T_range_9]
%T_array_10 = type [256 x %T_alfa]
%T_instyp = type __range
%T_lvltyp = type __range
%T_settype = type __set
%T_array_11 = type [37 x %T_alfa]
%T_array_12 = type [200001 x %T_byte]

; program variables
@a1 = dso_local global %T_address zeroinitializer
@a2 = dso_local global %T_address zeroinitializer
@a3 = dso_local global %T_address zeroinitializer
@ad = dso_local global %T_address zeroinitializer
@ad1 = dso_local global %T_address zeroinitializer
@b = dso_local global i1 zeroinitializer
@b1 = dso_local global i1 zeroinitializer
@b2 = dso_local global i1 zeroinitializer
@bfiltable = dso_local global %T_array_2 zeroinitializer
@c = dso_local global i8 zeroinitializer
@c1 = dso_local global i8 zeroinitializer
@c2 = dso_local global i8 zeroinitializer
@cp = dso_local global %T_address zeroinitializer
@ep = dso_local global %T_address zeroinitializer
@filbuff = dso_local global %T_array_4 zeroinitializer
@filstate = dso_local global %T_array_5 zeroinitializer
@filtable = dso_local global %T_array_6 zeroinitializer
@fn = dso_local global %T_fileno zeroinitializer
@i = dso_local global i32 zeroinitializer
@i1 = dso_local global i32 zeroinitializer
@i2 = dso_local global i32 zeroinitializer
@i3 = dso_local global i32 zeroinitializer
@i4 = dso_local global i32 zeroinitializer
@input = dso_local global %T_text zeroinitializer
@insp = dso_local global %T_array_7 zeroinitializer
@insq = dso_local global %T_array_8 zeroinitializer
@instr = dso_local global %T_array_10 zeroinitializer
@interpreting = dso_local global i1 zeroinitializer
@j = dso_local global i32 zeroinitializer
@mp = dso_local global %T_address zeroinitializer
@np = dso_local global %T_address zeroinitializer
@op = dso_local global %T_instyp zeroinitializer
@output = dso_local global %T_text zeroinitializer
@p = dso_local global %T_lvltyp zeroinitializer
@pa = dso_local global i32 zeroinitializer
@pc = dso_local global %T_address zeroinitializer
@pcs = dso_local global %T_address zeroinitializer
@pctop = dso_local global %T_address zeroinitializer
@prd = dso_local global %T_text zeroinitializer
@prr = dso_local global %T_text zeroinitializer
@q = dso_local global %T_address zeroinitializer
@q1 = dso_local global %T_address zeroinitializer
@r1 = dso_local global double zeroinitializer
@r2 = dso_local global double zeroinitializer
@s1 = dso_local global %T_settype zeroinitializer
@s2 = dso_local global %T_settype zeroinitializer
@sp = dso_local global %T_address zeroinitializer
@sptable = dso_local global %T_array_11 zeroinitializer
@srclin = dso_local global i32 zeroinitializer
@store = dso_local global %T_array_12 zeroinitializer

; line 499
;================================================================================
; scope: getint (level : 2)

; types
%T_getint_range_13 = type __range
%T_getint_array_15 = type [4 x %T_byte]
%T_getint_record_14 = type [4 x i8]

; line 517
;================================================================================
; scope: putint (level : 2)

; types
%T_putint_range_16 = type __range
%T_putint_array_18 = type [4 x %T_byte]
%T_putint_record_17 = type [4 x i8]

; line 534
;================================================================================
; scope: getrel (level : 2)

; types
%T_getrel_range_19 = type __range
%T_getrel_array_21 = type [8 x %T_byte]
%T_getrel_record_20 = type [8 x i8]

; line 551
;================================================================================
; scope: putrel (level : 2)

; types
%T_putrel_range_22 = type __range
%T_putrel_array_24 = type [8 x %T_byte]
%T_putrel_record_23 = type [8 x i8]

; line 568
;================================================================================
; scope: getbol (level : 2)

; line 579
;================================================================================
; scope: putbol (level : 2)

; line 587
;================================================================================
; scope: getset (level : 2)

; types
%T_getset_range_25 = type __range
%T_getset_array_27 = type [32 x %T_byte]
%T_getset_record_26 = type [32 x i8]

; line 604
;================================================================================
; scope: putset (level : 2)

; types
%T_putset_range_28 = type __range
%T_putset_array_30 = type [32 x %T_byte]
%T_putset_record_29 = type [32 x i8]

; line 621
;================================================================================
; scope: getchr (level : 2)

; line 629
;================================================================================
; scope: putchr (level : 2)

; line 637
;================================================================================
; scope: getadr (level : 2)

; types
%T_getadr_range_31 = type __range
%T_getadr_array_33 = type [4 x %T_byte]
%T_getadr_record_32 = type [4 x i8]

; line 654
;================================================================================
; scope: putadr (level : 2)

; types
%T_putadr_range_34 = type __range
%T_putadr_array_36 = type [4 x %T_byte]
%T_putadr_record_35 = type [4 x i8]

; line 673
;================================================================================
; scope: swpstk (level : 2)

; types
%T_swpstk_range_37 = type __range
%T_swpstk_array_38 = type [32 x %T_byte]

; line 700
;================================================================================
; scope: popint (level : 2)

; line 701
;================================================================================
; scope: pshint (level : 2)

; line 702
;================================================================================
; scope: poprel (level : 2)

; line 703
;================================================================================
; scope: pshrel (level : 2)

; line 704
;================================================================================
; scope: popset (level : 2)

; line 705
;================================================================================
; scope: pshset (level : 2)

; line 706
;================================================================================
; scope: popadr (level : 2)

; line 707
;================================================================================
; scope: pshadr (level : 2)

; line 711
;================================================================================
; scope: wrthex (level : 2)

; line 726
;================================================================================
; scope: lstins (level : 2)

; line 762
;================================================================================
; scope: dmpins (level : 2)

; line 787
;================================================================================
; scope: alignu (level : 2)

; line 796
;================================================================================
; scope: alignd (level : 2)

; line 807
;================================================================================
; scope: load (level : 2)

; types
%T_load_labelrec = type [8 x i8]
%T_load_labelrg = type __range
%T_load_array_39 = type [5001 x %T_load_labelrec]
%T_load_array_40 = type [10 x i8]

; line 819
;================================================================================
; scope: load_init (level : 3)

; line 1047
;================================================================================
; scope: load_errorl (level : 3)

; line 1053
;================================================================================
; scope: load_dmplabs (level : 3)

; line 1073
;================================================================================
; scope: load_update (level : 3)

; line 1100
;================================================================================
; scope: load_getnxt (level : 3)

; line 1106
;================================================================================
; scope: load_skpspc (level : 3)

; line 1111
;================================================================================
; scope: load_getlin (level : 3)

; line 1119
;================================================================================
; scope: load_generate (level : 3)

; line 1160
;================================================================================
; scope: load_assemble (level : 3)

; types
%T_load_assemble_array_41 = type [1000 x i8]

; line 1166
;================================================================================
; scope: load_assemble_lookup (level : 4)

; line 1175
;================================================================================
; scope: load_assemble_labelsearch (level : 4)

; line 1181
;================================================================================
; scope: load_assemble_getname (level : 4)

; line 1196
;================================================================================
; scope: load_assemble_storeop (level : 4)

; line 1202
;================================================================================
; scope: load_assemble_storep (level : 4)

; line 1208
;================================================================================
; scope: load_assemble_storeq (level : 4)

; line 1214
;================================================================================
; scope: load_assemble_storeq1 (level : 4)

; line 1436
;================================================================================
; scope: pmd (level : 2)

; line 1439
;================================================================================
; scope: pmd_pt (level : 3)

; line 1482
;================================================================================
; scope: errori (level : 2)

; line 1489
;================================================================================
; scope: base (level : 2)

; line 1496
;================================================================================
; scope: compare (level : 2)

; line 1507
;================================================================================
; scope: valfil (level : 2)

; line 1528
;================================================================================
; scope: valfilwm (level : 2)

; line 1534
;================================================================================
; scope: valfilrm (level : 2)

; line 1540
;================================================================================
; scope: getop (level : 2)

; line 1548
;================================================================================
; scope: getp (level : 2)

; line 1556
;================================================================================
; scope: getq (level : 2)

; line 1564
;================================================================================
; scope: getq1 (level : 2)

; line 1585
;================================================================================
; scope: repspc (level : 2)

; line 1602
;================================================================================
; scope: fndfre (level : 2)

; line 1626
;================================================================================
; scope: cscspc (level : 2)

; line 1655
;================================================================================
; scope: newspc (level : 2)

; line 1673
;================================================================================
; scope: dspspc (level : 2)

; line 1690
;================================================================================
; scope: isfree (level : 2)

; line 1697
;================================================================================
; scope: callsp (level : 2)

; line 1706
;================================================================================
; scope: callsp_readi (level : 3)

; line 1711
;================================================================================
; scope: callsp_readr (level : 3)

; line 1716
;================================================================================
; scope: callsp_readc (level : 3)

; line 1721
;================================================================================
; scope: callsp_writestr (level : 3)

; line 1729
;================================================================================
; scope: callsp_getfile (level : 3)

; line 1734
;================================================================================
; scope: callsp_putfile (level : 3)
;================================================================================
; metadata

!llvm.dbg.cu = !{!139}
!llvm.module.flags = !{}
!llvm.ident = !{!138}

!0 = !DIFile(filename: "p5_pint.pas", checksumkind: CSK_None)
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: -1, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0, encoding: DW_ATE_void)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = TODO
!8 = TODO
!9 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!10 = !DICompositeType(tag: DW_TAG_array_type, name: "alfa", file: !0, line: 433, baseType: !2, size: 80, elements: !12)
!11 = !DISubrange(count: 10, lowerBound: 1)
!12 = !{!11}
!13 = TODO
!14 = !DICompositeType(tag: DW_TAG_array_type, name: "beta", file: !0, line: 430, baseType: !2, size: 200, elements: !16)
!15 = !DISubrange(count: 25, lowerBound: 1)
!16 = !{!15}
!17 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 463, baseType: !18, size: 800, elements: !20)
!18 = TODO
!19 = !DISubrange(count: 100, lowerBound: 1)
!20 = !{!19}
!21 = TODO
!22 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!23 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 467, baseType: !1, size: 800, elements: !25)
!24 = !DISubrange(count: 100, lowerBound: 1)
!25 = !{!24}
!26 = TODO
!27 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 465, baseType: !22, size: 3200, elements: !29)
!28 = !DISubrange(count: 100, lowerBound: 1)
!29 = !{!28}
!30 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 461, baseType: !7, size: 800, elements: !32)
!31 = !DISubrange(count: 100, lowerBound: 1)
!32 = !{!31}
!33 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 457, baseType: !1, size: 2048, elements: !35)
!34 = !DISubrange(count: 256, lowerBound: 0)
!35 = !{!34}
!36 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 458, baseType: !37, size: 2048, elements: !39)
!37 = TODO
!38 = !DISubrange(count: 256, lowerBound: 0)
!39 = !{!38}
!40 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 455, baseType: !10, size: 20480, elements: !42)
!41 = !DISubrange(count: 256, lowerBound: 0)
!42 = !{!41}
!43 = TODO
!44 = TODO
!45 = TODO
!46 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 456, baseType: !10, size: 2960, elements: !48)
!47 = !DISubrange(count: 37, lowerBound: 0)
!48 = !{!47}
!49 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 442, baseType: !21, size: 1600008, elements: !51)
!50 = !DISubrange(count: 200001, lowerBound: 0)
!51 = !{!50}
!52 = TODO
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 501, size: 32, flags: DIFlagTypePassByValue, elements: !59)
!54 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 504, baseType: !21, size: 32, elements: !56)
!55 = !DISubrange(count: 4, lowerBound: 1)
!56 = !{!55}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !53, file: !0, line: 503, baseType: !3, size: 32, offset: 0)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !53, file: !0, line: 504, baseType: !54, size: 32, offset: 0)
!59 = !{!57,!58}
!60 = TODO
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 519, size: 32, flags: DIFlagTypePassByValue, elements: !67)
!62 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 522, baseType: !21, size: 32, elements: !64)
!63 = !DISubrange(count: 4, lowerBound: 1)
!64 = !{!63}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !61, file: !0, line: 521, baseType: !3, size: 32, offset: 0)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !61, file: !0, line: 522, baseType: !62, size: 32, offset: 0)
!67 = !{!65,!66}
!68 = TODO
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 536, size: 64, flags: DIFlagTypePassByValue, elements: !75)
!70 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 539, baseType: !21, size: 64, elements: !72)
!71 = !DISubrange(count: 8, lowerBound: 1)
!72 = !{!71}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !69, file: !0, line: 538, baseType: !6, size: 64, offset: 0)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !69, file: !0, line: 539, baseType: !70, size: 64, offset: 0)
!75 = !{!73,!74}
!76 = TODO
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 553, size: 64, flags: DIFlagTypePassByValue, elements: !83)
!78 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 556, baseType: !21, size: 64, elements: !80)
!79 = !DISubrange(count: 8, lowerBound: 1)
!80 = !{!79}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !77, file: !0, line: 555, baseType: !6, size: 64, offset: 0)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !77, file: !0, line: 556, baseType: !78, size: 64, offset: 0)
!83 = !{!81,!82}
!84 = TODO
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 589, size: 256, flags: DIFlagTypePassByValue, elements: !91)
!86 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 592, baseType: !21, size: 256, elements: !88)
!87 = !DISubrange(count: 32, lowerBound: 1)
!88 = !{!87}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !85, file: !0, line: 591, baseType: !45, size: 8, offset: 0)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !85, file: !0, line: 592, baseType: !86, size: 256, offset: 0)
!91 = !{!89,!90}
!92 = TODO
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 606, size: 256, flags: DIFlagTypePassByValue, elements: !99)
!94 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 609, baseType: !21, size: 256, elements: !96)
!95 = !DISubrange(count: 32, lowerBound: 1)
!96 = !{!95}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !93, file: !0, line: 608, baseType: !45, size: 8, offset: 0)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !93, file: !0, line: 609, baseType: !94, size: 256, offset: 0)
!99 = !{!97,!98}
!100 = TODO
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 639, size: 32, flags: DIFlagTypePassByValue, elements: !107)
!102 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 642, baseType: !21, size: 32, elements: !104)
!103 = !DISubrange(count: 4, lowerBound: 1)
!104 = !{!103}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !101, file: !0, line: 641, baseType: !8, size: 8, offset: 0)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !101, file: !0, line: 642, baseType: !102, size: 32, offset: 0)
!107 = !{!105,!106}
!108 = TODO
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 656, size: 32, flags: DIFlagTypePassByValue, elements: !115)
!110 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 659, baseType: !21, size: 32, elements: !112)
!111 = !DISubrange(count: 4, lowerBound: 1)
!112 = !{!111}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !109, file: !0, line: 658, baseType: !8, size: 8, offset: 0)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !109, file: !0, line: 659, baseType: !110, size: 32, offset: 0)
!115 = !{!113,!114}
!116 = TODO
!117 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 675, baseType: !21, size: 256, elements: !119)
!118 = !DISubrange(count: 32, lowerBound: 1)
!119 = !{!118}
!120 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "labelrec", file: !0, line: 810, size: 64, flags: DIFlagTypePassByValue, elements: !124)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !121, file: !0, line: 811, baseType: !8, size: 8, offset: 0)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !121, file: !0, line: 812, baseType: !120, size: 32, offset: 32)
!124 = !{!122,!123}
!125 = TODO
!126 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 815, baseType: !121, size: 320064, elements: !128)
!127 = !DISubrange(count: 5001, lowerBound: 0)
!128 = !{!127}
!129 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 814, baseType: !2, size: 80, elements: !131)
!130 = !DISubrange(count: 10, lowerBound: 1)
!131 = !{!130}
!132 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 1163, baseType: !2, size: 8000, elements: !134)
!133 = !DISubrange(count: 1000, lowerBound: 1)
!134 = !{!133}
!135 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!13,!14,!17,!18,!21,!22,!23,!26,!27,!30,!33,!36,!37,!40,!43,!44,!45,!46,!49,!52,!53,!54,!60,!61,!62,!68,!69,!70,!76,!77,!78,!84,!85,!86,!92,!93,!94,!100,!101,!102,!108,!109,!110,!116,!117,!120,!121,!125,!126,!129,!132}
!136 = !{}
!137 = !{}
!138 = !{!"LPC 1.1 (debug) - built on Mar 20 2020"}
!139 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 20 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !136, retainedTypes: !135, globals: !137, nameTableKind: None)

