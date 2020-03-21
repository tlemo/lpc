; ModuleID = 'p5_pint.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\p5_pint.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"


; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_text = type i8*

; line 262
;================================================================================
; scope: program scope (level : 1)

; types
%T_alfa = type [10 x i8]
%T_beta = type [25 x i8]
%T_bytfil = type i8*
%T_array_2 = type [100 x %T_bytfil]
%T_array_4 = type [100 x i1]
%T_array_5 = type [100 x i32]
%T_array_6 = type [100 x %T_text]
%T_array_7 = type [256 x i1]
%T_array_8 = type [256 x i32]
%T_array_10 = type [256 x %T_alfa]
%T_settype = type [8 x i32]
%T_array_11 = type [37 x %T_alfa]
%T_array_12 = type [200001 x i32]

; program variables
@a1 = dso_local global i32 zeroinitializer
@a2 = dso_local global i32 zeroinitializer
@a3 = dso_local global i32 zeroinitializer
@ad = dso_local global i32 zeroinitializer
@ad1 = dso_local global i32 zeroinitializer
@b = dso_local global i1 zeroinitializer
@b1 = dso_local global i1 zeroinitializer
@b2 = dso_local global i1 zeroinitializer
@bfiltable = dso_local global %T_array_2 zeroinitializer
@c = dso_local global i8 zeroinitializer
@c1 = dso_local global i8 zeroinitializer
@c2 = dso_local global i8 zeroinitializer
@cp = dso_local global i32 zeroinitializer
@ep = dso_local global i32 zeroinitializer
@filbuff = dso_local global %T_array_4 zeroinitializer
@filstate = dso_local global %T_array_5 zeroinitializer
@filtable = dso_local global %T_array_6 zeroinitializer
@fn = dso_local global i32 zeroinitializer
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
@mp = dso_local global i32 zeroinitializer
@np = dso_local global i32 zeroinitializer
@op = dso_local global i32 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@p = dso_local global i32 zeroinitializer
@pa = dso_local global i32 zeroinitializer
@pc = dso_local global i32 zeroinitializer
@pcs = dso_local global i32 zeroinitializer
@pctop = dso_local global i32 zeroinitializer
@prd = dso_local global %T_text zeroinitializer
@prr = dso_local global %T_text zeroinitializer
@q = dso_local global i32 zeroinitializer
@q1 = dso_local global i32 zeroinitializer
@r1 = dso_local global double zeroinitializer
@r2 = dso_local global double zeroinitializer
@s1 = dso_local global %T_settype zeroinitializer
@s2 = dso_local global %T_settype zeroinitializer
@sp = dso_local global i32 zeroinitializer
@sptable = dso_local global %T_array_11 zeroinitializer
@srclin = dso_local global i32 zeroinitializer
@store = dso_local global %T_array_12 zeroinitializer

; line 499
;================================================================================
; scope: getint (level : 2)

; types
%T_getint_array_15 = type [4 x i32]
%T_getint_record_14 = type [16 x i8]

; line 517
;================================================================================
; scope: putint (level : 2)

; types
%T_putint_array_18 = type [4 x i32]
%T_putint_record_17 = type [16 x i8]

; line 534
;================================================================================
; scope: getrel (level : 2)

; types
%T_getrel_array_21 = type [8 x i32]
%T_getrel_record_20 = type [32 x i8]

; line 551
;================================================================================
; scope: putrel (level : 2)

; types
%T_putrel_array_24 = type [8 x i32]
%T_putrel_record_23 = type [32 x i8]

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
%T_getset_array_27 = type [32 x i32]
%T_getset_record_26 = type [128 x i8]

; line 604
;================================================================================
; scope: putset (level : 2)

; types
%T_putset_array_30 = type [32 x i32]
%T_putset_record_29 = type [128 x i8]

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
%T_getadr_array_33 = type [4 x i32]
%T_getadr_record_32 = type [16 x i8]

; line 654
;================================================================================
; scope: putadr (level : 2)

; types
%T_putadr_array_36 = type [4 x i32]
%T_putadr_record_35 = type [16 x i8]

; line 673
;================================================================================
; scope: swpstk (level : 2)

; types
%T_swpstk_array_38 = type [32 x i32]

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

!llvm.dbg.cu = !{!142}
!llvm.module.flags = !{!143, !144}
!llvm.ident = !{!141}

!0 = !DIFile(filename: "p5_pint.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!10 = !DICompositeType(tag: DW_TAG_array_type, name: "alfa", file: !0, line: 433, baseType: !2, size: 80, elements: !12)
!11 = !DISubrange(count: 10)
!12 = !{!11}
!13 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!14 = !DICompositeType(tag: DW_TAG_array_type, name: "beta", file: !0, line: 430, baseType: !2, size: 200, elements: !16)
!15 = !DISubrange(count: 25)
!16 = !{!15}
!17 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 463, baseType: !18, size: 6400, elements: !21)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "bytfil", file: !0, line: 435, baseType: null, size: 64)
!19 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!20 = !DISubrange(count: 100)
!21 = !{!20}
!22 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!23 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 467, baseType: !1, size: 800, elements: !25)
!24 = !DISubrange(count: 100)
!25 = !{!24}
!26 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!27 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 465, baseType: !22, size: 3200, elements: !29)
!28 = !DISubrange(count: 100)
!29 = !{!28}
!30 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 461, baseType: !7, size: 6400, elements: !32)
!31 = !DISubrange(count: 100)
!32 = !{!31}
!33 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 457, baseType: !1, size: 2048, elements: !35)
!34 = !DISubrange(count: 256)
!35 = !{!34}
!36 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 458, baseType: !37, size: 8192, elements: !39)
!37 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!38 = !DISubrange(count: 256)
!39 = !{!38}
!40 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 455, baseType: !10, size: 20480, elements: !42)
!41 = !DISubrange(count: 256)
!42 = !{!41}
!43 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!44 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!45 = !DICompositeType(tag: DW_TAG_array_type, name: "settype", file: !0, line: 431, baseType: !48, size: 256, elements: !47)
!46 = !DISubrange(count: 256)
!47 = !{!46}
!48 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!49 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 456, baseType: !10, size: 2960, elements: !51)
!50 = !DISubrange(count: 37)
!51 = !{!50}
!52 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 442, baseType: !19, size: 6400032, elements: !54)
!53 = !DISubrange(count: 200001)
!54 = !{!53}
!55 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 501, size: 128, flags: DIFlagTypePassByValue, elements: !62)
!57 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 504, baseType: !19, size: 128, elements: !59)
!58 = !DISubrange(count: 4)
!59 = !{!58}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !56, file: !0, line: 503, baseType: !3, size: 32, offset: 0)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !56, file: !0, line: 504, baseType: !57, size: 128, offset: 0)
!62 = !{!60,!61}
!63 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 519, size: 128, flags: DIFlagTypePassByValue, elements: !70)
!65 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 522, baseType: !19, size: 128, elements: !67)
!66 = !DISubrange(count: 4)
!67 = !{!66}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !64, file: !0, line: 521, baseType: !3, size: 32, offset: 0)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !64, file: !0, line: 522, baseType: !65, size: 128, offset: 0)
!70 = !{!68,!69}
!71 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 536, size: 256, flags: DIFlagTypePassByValue, elements: !78)
!73 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 539, baseType: !19, size: 256, elements: !75)
!74 = !DISubrange(count: 8)
!75 = !{!74}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !72, file: !0, line: 538, baseType: !6, size: 64, offset: 0)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !72, file: !0, line: 539, baseType: !73, size: 256, offset: 0)
!78 = !{!76,!77}
!79 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 553, size: 256, flags: DIFlagTypePassByValue, elements: !86)
!81 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 556, baseType: !19, size: 256, elements: !83)
!82 = !DISubrange(count: 8)
!83 = !{!82}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !80, file: !0, line: 555, baseType: !6, size: 64, offset: 0)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !80, file: !0, line: 556, baseType: !81, size: 256, offset: 0)
!86 = !{!84,!85}
!87 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 589, size: 1024, flags: DIFlagTypePassByValue, elements: !94)
!89 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 592, baseType: !19, size: 1024, elements: !91)
!90 = !DISubrange(count: 32)
!91 = !{!90}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !88, file: !0, line: 591, baseType: !45, size: 256, offset: 0)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !88, file: !0, line: 592, baseType: !89, size: 1024, offset: 0)
!94 = !{!92,!93}
!95 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 606, size: 1024, flags: DIFlagTypePassByValue, elements: !102)
!97 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 609, baseType: !19, size: 1024, elements: !99)
!98 = !DISubrange(count: 32)
!99 = !{!98}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !96, file: !0, line: 608, baseType: !45, size: 256, offset: 0)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !96, file: !0, line: 609, baseType: !97, size: 1024, offset: 0)
!102 = !{!100,!101}
!103 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 639, size: 128, flags: DIFlagTypePassByValue, elements: !110)
!105 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 642, baseType: !19, size: 128, elements: !107)
!106 = !DISubrange(count: 4)
!107 = !{!106}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !104, file: !0, line: 641, baseType: !8, size: 32, offset: 0)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !104, file: !0, line: 642, baseType: !105, size: 128, offset: 0)
!110 = !{!108,!109}
!111 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 656, size: 128, flags: DIFlagTypePassByValue, elements: !118)
!113 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 659, baseType: !19, size: 128, elements: !115)
!114 = !DISubrange(count: 4)
!115 = !{!114}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !112, file: !0, line: 658, baseType: !8, size: 32, offset: 0)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !112, file: !0, line: 659, baseType: !113, size: 128, offset: 0)
!118 = !{!116,!117}
!119 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!120 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 675, baseType: !19, size: 1024, elements: !122)
!121 = !DISubrange(count: 32)
!122 = !{!121}
!123 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "labelrec", file: !0, line: 810, size: 64, flags: DIFlagTypePassByValue, elements: !127)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !124, file: !0, line: 811, baseType: !8, size: 32, offset: 0)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !124, file: !0, line: 812, baseType: !123, size: 32, offset: 32)
!127 = !{!125,!126}
!128 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!129 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 815, baseType: !124, size: 320064, elements: !131)
!130 = !DISubrange(count: 5001)
!131 = !{!130}
!132 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 814, baseType: !2, size: 80, elements: !134)
!133 = !DISubrange(count: 10)
!134 = !{!133}
!135 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 1163, baseType: !2, size: 8000, elements: !137)
!136 = !DISubrange(count: 1000)
!137 = !{!136}
!138 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!13,!14,!17,!18,!19,!22,!23,!26,!27,!30,!33,!36,!37,!40,!43,!44,!45,!49,!52,!55,!56,!57,!63,!64,!65,!71,!72,!73,!79,!80,!81,!87,!88,!89,!95,!96,!97,!103,!104,!105,!111,!112,!113,!119,!120,!123,!124,!128,!129,!132,!135}
!139 = !{}
!140 = !{}
!141 = !{!"LPC 1.1"}
!142 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !139, retainedTypes: !138, globals: !140, nameTableKind: None)
!143 = !{i32 2, !"CodeView", i32 1}
!144 = !{i32 2, !"Debug Info Version", i32 3}

