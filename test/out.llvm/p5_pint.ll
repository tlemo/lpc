
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
%T_alfa = type __array
%T_alfainx = type __range
%T_beta = type __array
%T_array_2 = type __array
%T_byte = type __range
%T_bytfil = type __file
%T_array_4 = type __array
%T_fileno = type __range
%T_array_5 = type __array
%T_array_6 = type __array
%T_array_7 = type __array
%T_array_8 = type __array
%T_array_9 = type __array
%T_instyp = type __range
%T_lvltyp = type __range
%T_settype = type __set
%T_array_10 = type __array
%T_array_11 = type __array

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
@instr = dso_local global %T_array_9 zeroinitializer
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
@sptable = dso_local global %T_array_10 zeroinitializer
@srclin = dso_local global i32 zeroinitializer
@store = dso_local global %T_array_11 zeroinitializer

; line 499
;================================================================================
; scope: getint (level : 2)

; types
%T_getint_range_12 = type __range
%T_getint_array_14 = type __array
%T_getint_record_13 = type [4 x i8]

; line 517
;================================================================================
; scope: putint (level : 2)

; types
%T_putint_range_15 = type __range
%T_putint_array_17 = type __array
%T_putint_record_16 = type [4 x i8]

; line 534
;================================================================================
; scope: getrel (level : 2)

; types
%T_getrel_range_18 = type __range
%T_getrel_array_20 = type __array
%T_getrel_record_19 = type [8 x i8]

; line 551
;================================================================================
; scope: putrel (level : 2)

; types
%T_putrel_range_21 = type __range
%T_putrel_array_23 = type __array
%T_putrel_record_22 = type [8 x i8]

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
%T_getset_range_24 = type __range
%T_getset_array_26 = type __array
%T_getset_record_25 = type [1 x i8]

; line 604
;================================================================================
; scope: putset (level : 2)

; types
%T_putset_range_27 = type __range
%T_putset_array_29 = type __array
%T_putset_record_28 = type [1 x i8]

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
%T_getadr_range_30 = type __range
%T_getadr_array_32 = type __array
%T_getadr_record_31 = type [1 x i8]

; line 654
;================================================================================
; scope: putadr (level : 2)

; types
%T_putadr_range_33 = type __range
%T_putadr_array_35 = type __array
%T_putadr_record_34 = type [1 x i8]

; line 673
;================================================================================
; scope: swpstk (level : 2)

; types
%T_swpstk_range_36 = type __range
%T_swpstk_array_37 = type __array

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
%T_load_array_38 = type __array
%T_load_array_39 = type __array

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
%T_load_assemble_array_40 = type __array

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

!llvm.dbg.cu = !{!92}
!llvm.module.flags = !{}
!llvm.ident = !{!91}

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
!10 = TODO
!11 = TODO
!12 = TODO
!13 = TODO
!14 = TODO
!15 = TODO
!16 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!17 = TODO
!18 = TODO
!19 = TODO
!20 = TODO
!21 = TODO
!22 = TODO
!23 = TODO
!24 = TODO
!25 = TODO
!26 = TODO
!27 = TODO
!28 = TODO
!29 = TODO
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 501, size: 32, flags: DIFlagTypePassByValue, elements: !34)
!31 = TODO
!32 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !30, file: !0, line: 503, baseType: !3, size: 32, offset: 0)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !30, file: !0, line: 504, baseType: !31, size: 8, offset: 0)
!34 = !{!32,!33}
!35 = TODO
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 519, size: 32, flags: DIFlagTypePassByValue, elements: !40)
!37 = TODO
!38 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !36, file: !0, line: 521, baseType: !3, size: 32, offset: 0)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !36, file: !0, line: 522, baseType: !37, size: 8, offset: 0)
!40 = !{!38,!39}
!41 = TODO
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 536, size: 64, flags: DIFlagTypePassByValue, elements: !46)
!43 = TODO
!44 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !42, file: !0, line: 538, baseType: !6, size: 64, offset: 0)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !42, file: !0, line: 539, baseType: !43, size: 8, offset: 0)
!46 = !{!44,!45}
!47 = TODO
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 553, size: 64, flags: DIFlagTypePassByValue, elements: !52)
!49 = TODO
!50 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !48, file: !0, line: 555, baseType: !6, size: 64, offset: 0)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !48, file: !0, line: 556, baseType: !49, size: 8, offset: 0)
!52 = !{!50,!51}
!53 = TODO
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 589, size: 8, flags: DIFlagTypePassByValue, elements: !58)
!55 = TODO
!56 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !54, file: !0, line: 591, baseType: !26, size: 8, offset: 0)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !54, file: !0, line: 592, baseType: !55, size: 8, offset: 0)
!58 = !{!56,!57}
!59 = TODO
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 606, size: 8, flags: DIFlagTypePassByValue, elements: !64)
!61 = TODO
!62 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !60, file: !0, line: 608, baseType: !26, size: 8, offset: 0)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !60, file: !0, line: 609, baseType: !61, size: 8, offset: 0)
!64 = !{!62,!63}
!65 = TODO
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 639, size: 8, flags: DIFlagTypePassByValue, elements: !70)
!67 = TODO
!68 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !66, file: !0, line: 641, baseType: !8, size: 8, offset: 0)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !66, file: !0, line: 642, baseType: !67, size: 8, offset: 0)
!70 = !{!68,!69}
!71 = TODO
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 656, size: 8, flags: DIFlagTypePassByValue, elements: !76)
!73 = TODO
!74 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !72, file: !0, line: 658, baseType: !8, size: 8, offset: 0)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !72, file: !0, line: 659, baseType: !73, size: 8, offset: 0)
!76 = !{!74,!75}
!77 = TODO
!78 = TODO
!79 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "labelrec", file: !0, line: 810, size: 64, flags: DIFlagTypePassByValue, elements: !83)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !80, file: !0, line: 811, baseType: !8, size: 8, offset: 0)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !80, file: !0, line: 812, baseType: !79, size: 32, offset: 32)
!83 = !{!81,!82}
!84 = TODO
!85 = TODO
!86 = TODO
!87 = TODO
!88 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!11,!12,!13,!14,!15,!16,!17,!18,!19,!20,!21,!22,!23,!24,!25,!26,!27,!28,!29,!30,!31,!35,!36,!37,!41,!42,!43,!47,!48,!49,!53,!54,!55,!59,!60,!61,!65,!66,!67,!71,!72,!73,!77,!78,!79,!80,!84,!85,!86,!87}
!89 = !{}
!90 = !{}
!91 = !{!"LPC 1.1 (debug) - built on Mar 19 2020"}
!92 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 19 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89, retainedTypes: !88, globals: !90, nameTableKind: None)

