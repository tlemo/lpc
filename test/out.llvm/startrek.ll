
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
%T_array_3 = type [10 x i8]
%T_array_2 = type [5 x %T_array_3]
%T_quadrange = type __range
%T_quadxy = type [2 x i8]
%T_sectrange = type __range
%T_sectxy = type [2 x i8]
%T_array_5 = type [20 x i8]
%T_devicerec = type [24 x i8]
%T_array_4 = type [8 x %T_devicerec]
%T_digits = type __range
%T_quadrec = type [5 x i8]
%T_array_7 = type [8 x %T_quadrec]
%T_array_6 = type [8 x %T_array_7]
%T_klingonrec = type [8 x i8]
%T_array_8 = type [12 x %T_klingonrec]
%T_array_10 = type [8 x i32]
%T_array_9 = type [8 x %T_array_10]
%T_array_11 = type [7 x i8]

; program variables
@badpoints = dso_local global i32 zeroinitializer
@bell = dso_local global i8 zeroinitializer
@condition = dso_local global i32 zeroinitializer
@condnames = dso_local global %T_array_2 zeroinitializer
@curenergy = dso_local global i32 zeroinitializer
@curquad = dso_local global %T_quadxy zeroinitializer
@cursect = dso_local global %T_sectxy zeroinitializer
@curtorps = dso_local global i32 zeroinitializer
@curyear = dso_local global i32 zeroinitializer
@device = dso_local global %T_array_4 zeroinitializer
@endyear = dso_local global i32 zeroinitializer
@galaxy = dso_local global %T_array_6 zeroinitializer
@input = dso_local global %T_text zeroinitializer
@klingons = dso_local global %T_array_8 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@quadrant = dso_local global %T_array_9 zeroinitializer
@rndseq = dso_local global i32 zeroinitializer
@startklingons = dso_local global i32 zeroinitializer
@startyear = dso_local global i32 zeroinitializer
@symbols = dso_local global %T_array_11 zeroinitializer
@totalkbases = dso_local global i32 zeroinitializer
@totalklingons = dso_local global i32 zeroinitializer

; line 65
;================================================================================
; scope: expp (level : 2)

; line 84
;================================================================================
; scope: random (level : 2)

; line 95
;================================================================================
; scope: distance (level : 2)

; line 100
;================================================================================
; scope: radians (level : 2)

; line 105
;================================================================================
; scope: interval (level : 2)

; line 116
;================================================================================
; scope: reinitialize (level : 2)

; line 125
;================================================================================
; scope: initialize (level : 2)

; line 191
;================================================================================
; scope: setcondition (level : 2)

; line 211
;================================================================================
; scope: klingonattack (level : 2)

; types
%T_klingonattack_array_12 = type [8 x i8]

; line 241
;================================================================================
; scope: printdigit (level : 2)

; line 250
;================================================================================
; scope: setupquad (level : 2)

; line 253
;================================================================================
; scope: setupquad_setupstuff (level : 3)

; line 301
;================================================================================
; scope: printquadrant (level : 2)

; line 330
;================================================================================
; scope: printgalaxy (level : 2)

; line 335
;================================================================================
; scope: printgalaxy_printseparator (level : 3)

; line 380
;================================================================================
; scope: printdamage (level : 2)

; line 388
;================================================================================
; scope: moveenterprise (level : 2)

; line 392
;================================================================================
; scope: moveenterprise_handledamage (level : 3)

; line 425
;================================================================================
; scope: moveenterprise_moveintra (level : 3)

; line 496
;================================================================================
; scope: firephasers (level : 2)

; line 533
;================================================================================
; scope: firetorpedoes (level : 2)

; line 538
;================================================================================
; scope: firetorpedoes_hitnova (level : 3)

; line 564
;================================================================================
; scope: firetorpedoes_hitklingbase (level : 3)

; line 656
;================================================================================
; scope: selfdestruct (level : 2)

; line 668
;================================================================================
; scope: command (level : 2)

; line 712
;================================================================================
; scope: instructions (level : 2)

; line 715
;================================================================================
; scope: instructions_spacewait (level : 3)

; line 723
;================================================================================
; scope: instructions_page1 (level : 3)

; line 750
;================================================================================
; scope: instructions_page2 (level : 3)

; line 778
;================================================================================
; scope: instructions_page3 (level : 3)

; line 805
;================================================================================
; scope: instructions_page4 (level : 3)

; line 832
;================================================================================
; scope: instructions_page5 (level : 3)

; line 859
;================================================================================
; scope: instructions_page6 (level : 3)

; line 913
;================================================================================
; scope: finishgame (level : 2)
;================================================================================
; metadata

!llvm.dbg.cu = !{!73}
!llvm.module.flags = !{}
!llvm.ident = !{!72}

!0 = !DIFile(filename: "startrek.pas", checksumkind: CSK_None)
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: -1, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0, encoding: DW_ATE_void)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = TODO
!8 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!9 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 62, baseType: !10, size: 400, elements: !14)
!10 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 62, baseType: !2, size: 80, elements: !12)
!11 = !DISubrange(count: 10, lowerBound: 1)
!12 = !{!11}
!13 = !DISubrange(count: 5, lowerBound: 0)
!14 = !{!13}
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quadxy", file: !0, line: 39, size: 16, flags: DIFlagTypePassByValue, elements: !19)
!16 = TODO
!17 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !15, file: !0, line: 40, baseType: !16, size: 8, offset: 0)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !15, file: !0, line: 40, baseType: !16, size: 8, offset: 8)
!19 = !{!17,!18}
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sectxy", file: !0, line: 36, size: 16, flags: DIFlagTypePassByValue, elements: !24)
!21 = TODO
!22 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !20, file: !0, line: 37, baseType: !21, size: 8, offset: 0)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !20, file: !0, line: 37, baseType: !21, size: 8, offset: 8)
!24 = !{!22,!23}
!25 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 57, baseType: !26, size: 1536, elements: !34)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "devicerec", file: !0, line: 46, size: 192, flags: DIFlagTypePassByValue, elements: !32)
!27 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 47, baseType: !2, size: 160, elements: !29)
!28 = !DISubrange(count: 20, lowerBound: 1)
!29 = !{!28}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !26, file: !0, line: 47, baseType: !27, size: 160, offset: 0)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "downtime", scope: !26, file: !0, line: 48, baseType: !3, size: 32, offset: 160)
!32 = !{!30,!31}
!33 = !DISubrange(count: 8, lowerBound: 48)
!34 = !{!33}
!35 = TODO
!36 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 59, baseType: !37, size: 2560, elements: !48)
!37 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 59, baseType: !38, size: 320, elements: !46)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quadrec", file: !0, line: 26, size: 40, flags: DIFlagTypePassByValue, elements: !44)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ishistory", scope: !38, file: !0, line: 27, baseType: !1, size: 8, offset: 0)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "klingbasenum", scope: !38, file: !0, line: 28, baseType: !35, size: 8, offset: 8)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "klingnum", scope: !38, file: !0, line: 29, baseType: !35, size: 8, offset: 16)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "fedbasenum", scope: !38, file: !0, line: 30, baseType: !35, size: 8, offset: 24)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "starnum", scope: !38, file: !0, line: 31, baseType: !35, size: 8, offset: 32)
!44 = !{!39,!40,!41,!42,!43}
!45 = !DISubrange(count: 8, lowerBound: 0)
!46 = !{!45}
!47 = !DISubrange(count: 8, lowerBound: 0)
!48 = !{!47}
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klingonrec", file: !0, line: 42, size: 64, flags: DIFlagTypePassByValue, elements: !52)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !49, file: !0, line: 43, baseType: !20, size: 16, offset: 0)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "energyleft", scope: !49, file: !0, line: 44, baseType: !3, size: 32, offset: 32)
!52 = !{!50,!51}
!53 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 60, baseType: !49, size: 768, elements: !55)
!54 = !DISubrange(count: 12, lowerBound: 0)
!55 = !{!54}
!56 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!57 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 58, baseType: !58, size: 2048, elements: !62)
!58 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 58, baseType: !56, size: 256, elements: !60)
!59 = !DISubrange(count: 8, lowerBound: 0)
!60 = !{!59}
!61 = !DISubrange(count: 8, lowerBound: 0)
!62 = !{!61}
!63 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 61, baseType: !2, size: 56, elements: !65)
!64 = !DISubrange(count: 7, lowerBound: 0)
!65 = !{!64}
!66 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 213, baseType: !2, size: 64, elements: !68)
!67 = !DISubrange(count: 8, lowerBound: 1)
!68 = !{!67}
!69 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!15,!16,!20,!21,!25,!26,!27,!35,!36,!37,!38,!49,!53,!56,!57,!58,!63,!66}
!70 = !{}
!71 = !{}
!72 = !{!"LPC 1.1 (debug) - built on Mar 20 2020"}
!73 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 20 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !69, globals: !71, nameTableKind: None)

