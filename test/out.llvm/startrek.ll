
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
%T_array_2 = type __array
%T_quadrange = type __range
%T_quadxy = type [2 x i8]
%T_sectrange = type __range
%T_sectxy = type [2 x i8]
%T_array_3 = type __array
%T_array_4 = type __array
%T_devicerec = type [8 x i8]
%T_digits = type __range
%T_array_5 = type __array
%T_klingonrec = type [8 x i8]
%T_array_6 = type __array
%T_array_7 = type __array
%T_quadrec = type [5 x i8]
%T_array_8 = type __array

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
@device = dso_local global %T_array_3 zeroinitializer
@endyear = dso_local global i32 zeroinitializer
@galaxy = dso_local global %T_array_5 zeroinitializer
@input = dso_local global %T_text zeroinitializer
@klingons = dso_local global %T_array_6 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@quadrant = dso_local global %T_array_7 zeroinitializer
@rndseq = dso_local global i32 zeroinitializer
@startklingons = dso_local global i32 zeroinitializer
@startyear = dso_local global i32 zeroinitializer
@symbols = dso_local global %T_array_8 zeroinitializer
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
%T_klingonattack_array_9 = type __array

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

!llvm.dbg.cu = !{!48}
!llvm.module.flags = !{}
!llvm.ident = !{!47}

!0 = !DIFile(filename: "startrek.pas", checksumkind: CSK_None)
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: -1, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0, encoding: DW_ATE_void)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = TODO
!8 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!9 = TODO
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quadxy", file: !0, line: 39, size: 16, flags: DIFlagTypePassByValue, elements: !14)
!11 = TODO
!12 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !10, file: !0, line: 40, baseType: !11, size: 8, offset: 0)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !10, file: !0, line: 40, baseType: !11, size: 8, offset: 8)
!14 = !{!12,!13}
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sectxy", file: !0, line: 36, size: 16, flags: DIFlagTypePassByValue, elements: !19)
!16 = TODO
!17 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !15, file: !0, line: 37, baseType: !16, size: 8, offset: 0)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !15, file: !0, line: 37, baseType: !16, size: 8, offset: 8)
!19 = !{!17,!18}
!20 = TODO
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "devicerec", file: !0, line: 46, size: 64, flags: DIFlagTypePassByValue, elements: !25)
!22 = TODO
!23 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !21, file: !0, line: 47, baseType: !22, size: 8, offset: 0)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "downtime", scope: !21, file: !0, line: 48, baseType: !3, size: 32, offset: 32)
!25 = !{!23,!24}
!26 = TODO
!27 = TODO
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klingonrec", file: !0, line: 42, size: 64, flags: DIFlagTypePassByValue, elements: !31)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !28, file: !0, line: 43, baseType: !15, size: 16, offset: 0)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "energyleft", scope: !28, file: !0, line: 44, baseType: !3, size: 32, offset: 32)
!31 = !{!29,!30}
!32 = TODO
!33 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!34 = TODO
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quadrec", file: !0, line: 26, size: 40, flags: DIFlagTypePassByValue, elements: !41)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ishistory", scope: !35, file: !0, line: 27, baseType: !1, size: 8, offset: 0)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "klingbasenum", scope: !35, file: !0, line: 28, baseType: !26, size: 8, offset: 8)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "klingnum", scope: !35, file: !0, line: 29, baseType: !26, size: 8, offset: 16)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "fedbasenum", scope: !35, file: !0, line: 30, baseType: !26, size: 8, offset: 24)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "starnum", scope: !35, file: !0, line: 31, baseType: !26, size: 8, offset: 32)
!41 = !{!36,!37,!38,!39,!40}
!42 = TODO
!43 = TODO
!44 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!11,!15,!16,!20,!21,!22,!26,!27,!28,!32,!33,!34,!35,!42,!43}
!45 = !{}
!46 = !{}
!47 = !{!"LPC 1.1 (debug) - built on Mar 19 2020"}
!48 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 19 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, retainedTypes: !44, globals: !46, nameTableKind: None)

