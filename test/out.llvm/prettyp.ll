
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 167
;================================================================================
; scope: program scope (level : 1)

; types
%T_CHARINFO = type [5 x i8]
%T_STRING = type [200 x i8]
%T_SYMBOL = type [216 x i8]
%T_SYMBOLINFO = type %T_SYMBOL*
%T_SPECIALCHAR = type [2 x i8]
%T_DBLCHARTABLE = type [2 x %T_SPECIALCHAR]
%T_DBLCHRSET = type __set
%T_KEY = type [10 x i8]
%T_KEYSYMSET = type __set
%T_KEYWORDTABLE = type [22 x %T_KEY]
%T_OPTIONSET = type __set
%T_TABLEENTRY = type [3 x i8]
%T_OPTIONTABLE = type [33 x %T_TABLEENTRY]
%T_SGLCHARTABLE = type [6 x i8]
%T_STACKENTRY = type [8 x i8]
%T_SYMBOLSTACK = type [100 x %T_STACKENTRY]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@CRPENDING = dso_local global i1 zeroinitializer
@CURRCHAR = dso_local global %T_CHARINFO zeroinitializer
@CURRLINEPOS = dso_local global i32 zeroinitializer
@CURRMARGIN = dso_local global i32 zeroinitializer
@CURRSYM = dso_local global %T_SYMBOLINFO zeroinitializer
@DBLCHAR = dso_local global %T_DBLCHARTABLE zeroinitializer
@DBLCHARS = dso_local global %T_DBLCHRSET zeroinitializer
@INPUTFILE = dso_local global %T_text zeroinitializer
@KEYWORD = dso_local global %T_KEYWORDTABLE zeroinitializer
@NEXTCHAR = dso_local global %T_CHARINFO zeroinitializer
@NEXTSYM = dso_local global %T_SYMBOLINFO zeroinitializer
@OUTPUTFILE = dso_local global %T_text zeroinitializer
@PPOPTION = dso_local global %T_OPTIONTABLE zeroinitializer
@RECORDSEEN = dso_local global i1 zeroinitializer
@SGLCHAR = dso_local global %T_SGLCHARTABLE zeroinitializer
@STACK = dso_local global %T_SYMBOLSTACK zeroinitializer
@TOP = dso_local global i32 zeroinitializer

; line 317
;================================================================================
; scope: GETCHAR (level : 2)

; line 369
;================================================================================
; scope: STORENEXTCHAR (level : 2)

; line 392
;================================================================================
; scope: SKIPSPACES (level : 2)

; line 426
;================================================================================
; scope: GETCOMMENT (level : 2)

; line 465
;================================================================================
; scope: IDTYPE (level : 2)

; line 508
;================================================================================
; scope: GETIDENTIFIER (level : 2)

; line 546
;================================================================================
; scope: GETNUMBER (level : 2)

; line 568
;================================================================================
; scope: GETCHARLITERAL (level : 2)

; line 608
;================================================================================
; scope: CHARTYPE (level : 2)

; line 654
;================================================================================
; scope: GETSPECIALCHAR (level : 2)

; line 682
;================================================================================
; scope: GETNEXTSYMBOL (level : 2)

; line 741
;================================================================================
; scope: GETSYMBOL (level : 2)

; line 784
;================================================================================
; scope: INITIALISE (level : 2)

; line 1175
;================================================================================
; scope: STACKEMPTY (level : 2)

; line 1187
;================================================================================
; scope: STACKFULL (level : 2)

; line 1199
;================================================================================
; scope: POPSTACK (level : 2)

; line 1222
;================================================================================
; scope: PUSHSTACK (level : 2)

; line 1235
;================================================================================
; scope: WRITECRS (level : 2)

; line 1256
;================================================================================
; scope: INSERTCR (level : 2)

; line 1276
;================================================================================
; scope: INSERTBLANKLINE (level : 2)

; line 1306
;================================================================================
; scope: LSHIFTON (level : 2)

; line 1335
;================================================================================
; scope: LSHIFT (level : 2)

; line 1352
;================================================================================
; scope: INSERTSPACE (level : 2)

; line 1372
;================================================================================
; scope: MOVELINEPOS (level : 2)

; line 1389
;================================================================================
; scope: PRINTSYMBOL (level : 2)

; line 1410
;================================================================================
; scope: PPSYMBOL (level : 2)

; line 1465
;================================================================================
; scope: GOBBLE (level : 2)

; line 1491
;================================================================================
; scope: RSHIFT (level : 2)

; line 1508
;================================================================================
; scope: RSHIFTTOCLP (level : 2)
;================================================================================
; metadata

!llvm.dbg.cu = !{!63}
!llvm.module.flags = !{}
!llvm.ident = !{!62}

!0 = !DIFile(filename: "prettyp.pas", checksumkind: CSK_None)
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: -1, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0, encoding: DW_ATE_void)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = TODO
!8 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!10 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CHARINFO", file: !0, line: 272, size: 64, flags: DIFlagTypePassByValue, elements: !14)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "NAME", scope: !11, file: !0, line: 273, baseType: !9, size: 32, offset: 0)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "VALUE", scope: !11, file: !0, line: 274, baseType: !2, size: 8, offset: 32)
!14 = !{!12,!13}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "SYMBOLINFO", file: !0, line: 266, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SYMBOL", file: !0, line: 258, size: 1728, flags: DIFlagTypePassByValue, elements: !25)
!17 = !DICompositeType(tag: DW_TAG_array_type, name: "STRING", file: !0, line: 256, baseType: !2, size: 1600, elements: !19)
!18 = !DISubrange(count: 200, lowerBound: 1)
!19 = !{!18}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "NAME", scope: !16, file: !0, line: 259, baseType: !8, size: 32, offset: 0)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "VALUE", scope: !16, file: !0, line: 260, baseType: !17, size: 1600, offset: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "LENGTH", scope: !16, file: !0, line: 261, baseType: !3, size: 32, offset: 1632)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "SPACESBEFORE", scope: !16, file: !0, line: 262, baseType: !3, size: 32, offset: 1664)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "CRSBEFORE", scope: !16, file: !0, line: 263, baseType: !3, size: 32, offset: 1696)
!25 = !{!20,!21,!22,!23,!24}
!26 = !DICompositeType(tag: DW_TAG_array_type, name: "DBLCHARTABLE", file: !0, line: 251, baseType: !27, size: 32, elements: !31)
!27 = !DICompositeType(tag: DW_TAG_array_type, name: "SPECIALCHAR", file: !0, line: 247, baseType: !2, size: 16, elements: !29)
!28 = !DISubrange(count: 2, lowerBound: 1)
!29 = !{!28}
!30 = !DISubrange(count: 2, lowerBound: 22)
!31 = !{!30}
!32 = TODO
!33 = !DICompositeType(tag: DW_TAG_array_type, name: "KEY", file: !0, line: 241, baseType: !2, size: 80, elements: !35)
!34 = !DISubrange(count: 10, lowerBound: 1)
!35 = !{!34}
!36 = TODO
!37 = !DICompositeType(tag: DW_TAG_array_type, name: "KEYWORDTABLE", file: !0, line: 244, baseType: !33, size: 1760, elements: !39)
!38 = !DISubrange(count: 22, lowerBound: 0)
!39 = !{!38}
!40 = TODO
!41 = !DICompositeType(tag: DW_TAG_array_type, name: "OPTIONTABLE", file: !0, line: 238, baseType: !42, size: 792, elements: !48)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TABLEENTRY", file: !0, line: 232, size: 24, flags: DIFlagTypePassByValue, elements: !46)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "OPTIONSSELECTED", scope: !42, file: !0, line: 233, baseType: !40, size: 8, offset: 0)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "DINDENTSYMBOLS", scope: !42, file: !0, line: 234, baseType: !36, size: 8, offset: 8)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "GOBBLETERMINATORS", scope: !42, file: !0, line: 235, baseType: !36, size: 8, offset: 16)
!46 = !{!43,!44,!45}
!47 = !DISubrange(count: 33, lowerBound: 0)
!48 = !{!47}
!49 = !DICompositeType(tag: DW_TAG_array_type, name: "SGLCHARTABLE", file: !0, line: 253, baseType: !2, size: 48, elements: !51)
!50 = !DISubrange(count: 6, lowerBound: 25)
!51 = !{!50}
!52 = !DICompositeType(tag: DW_TAG_array_type, name: "SYMBOLSTACK", file: !0, line: 283, baseType: !53, size: 6400, elements: !58)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "STACKENTRY", file: !0, line: 278, size: 64, flags: DIFlagTypePassByValue, elements: !56)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "INDENTSYMBOL", scope: !53, file: !0, line: 279, baseType: !8, size: 32, offset: 0)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "PREVMARGIN", scope: !53, file: !0, line: 280, baseType: !3, size: 32, offset: 32)
!56 = !{!54,!55}
!57 = !DISubrange(count: 100, lowerBound: 1)
!58 = !{!57}
!59 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!11,!15,!16,!17,!26,!27,!32,!33,!36,!37,!40,!41,!42,!49,!52,!53}
!60 = !{}
!61 = !{}
!62 = !{!"LPC 1.1 (debug) - built on Mar 20 2020"}
!63 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 20 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !60, retainedTypes: !59, globals: !61, nameTableKind: None)

