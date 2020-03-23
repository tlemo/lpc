; ModuleID = 'prettyp.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\prettyp.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"


; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_text = type i8*

; line 167
;================================================================================
; scope: program scope (level : 1)

; types
%T_CHARINFO = type [5 x i8]
%T_STRING = type [200 x i8]
%T_SYMBOL = type [216 x i8]
%T_SPECIALCHAR = type [2 x i8]
%T_DBLCHARTABLE = type [2 x %T_SPECIALCHAR]
%T_DBLCHRSET = type [1 x i32]
%T_KEY = type [10 x i8]
%T_KEYSYMSET = type [2 x i32]
%T_KEYWORDTABLE = type [22 x %T_KEY]
%T_OPTIONSET = type [1 x i32]
%T_TABLEENTRY = type [20 x i8]
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
@CURRSYM = dso_local global i8* zeroinitializer
@DBLCHAR = dso_local global %T_DBLCHARTABLE zeroinitializer
@DBLCHARS = dso_local global %T_DBLCHRSET zeroinitializer
@INPUTFILE = dso_local global %T_text zeroinitializer
@KEYWORD = dso_local global %T_KEYWORDTABLE zeroinitializer
@NEXTCHAR = dso_local global %T_CHARINFO zeroinitializer
@NEXTSYM = dso_local global i8* zeroinitializer
@OUTPUTFILE = dso_local global %T_text zeroinitializer
@PPOPTION = dso_local global %T_OPTIONTABLE zeroinitializer
@RECORDSEEN = dso_local global i1 zeroinitializer
@SGLCHAR = dso_local global %T_SGLCHARTABLE zeroinitializer
@STACK = dso_local global %T_SYMBOLSTACK zeroinitializer
@TOP = dso_local global i32 zeroinitializer

; line 317
;================================================================================
; scope: GETCHAR (level : 2)

; activation record
%Frame_GETCHAR = type
{
    ; parameters
    %T_CHARINFO,    ; CURRCHAR
    %T_text,    ; INPUTFILE
    %T_CHARINFO,    ; NEXTCHAR

    ; dummy
    i8*
};

; line 369
;================================================================================
; scope: STORENEXTCHAR (level : 2)

; activation record
%Frame_STORENEXTCHAR = type
{
    ; parameters
    %T_CHARINFO,    ; CURRCHAR
    %T_text,    ; INPUTFILE
    i32,    ; LENGTH
    %T_CHARINFO,    ; NEXTCHAR
    %T_STRING,    ; VALUE

    ; dummy
    i8*
};

; line 392
;================================================================================
; scope: SKIPSPACES (level : 2)

; activation record
%Frame_SKIPSPACES = type
{
    ; parameters
    i32,    ; CRSBEFORE
    %T_CHARINFO,    ; CURRCHAR
    %T_text,    ; INPUTFILE
    %T_CHARINFO,    ; NEXTCHAR
    i32,    ; SPACESBEFORE

    ; dummy
    i8*
};

; line 426
;================================================================================
; scope: GETCOMMENT (level : 2)

; activation record
%Frame_GETCOMMENT = type
{
    ; parameters
    %T_CHARINFO,    ; CURRCHAR
    %T_text,    ; INPUTFILE
    i32,    ; LENGTH
    i32,    ; NAME
    %T_CHARINFO,    ; NEXTCHAR
    %T_STRING,    ; VALUE

    ; dummy
    i8*
};

; line 465
;================================================================================
; scope: IDTYPE (level : 2)

; activation record
%Frame_IDTYPE = type
{
    ; parameters
    i32,    ; LENGTH
    %T_STRING,    ; VALUE

    ; variables
    i32,    ; _fnvalue
    i1,    ; HIT
    i32,    ; I
    %T_KEY,    ; KEYVALUE
    i32,    ; THISKEY

    ; dummy
    i8*
};

; line 508
;================================================================================
; scope: GETIDENTIFIER (level : 2)

; activation record
%Frame_GETIDENTIFIER = type
{
    ; parameters
    %T_CHARINFO,    ; CURRCHAR
    %T_text,    ; INPUTFILE
    i32,    ; LENGTH
    i32,    ; NAME
    %T_CHARINFO,    ; NEXTCHAR
    %T_STRING,    ; VALUE

    ; dummy
    i8*
};

; line 546
;================================================================================
; scope: GETNUMBER (level : 2)

; activation record
%Frame_GETNUMBER = type
{
    ; parameters
    %T_CHARINFO,    ; CURRCHAR
    %T_text,    ; INPUTFILE
    i32,    ; LENGTH
    i32,    ; NAME
    %T_CHARINFO,    ; NEXTCHAR
    %T_STRING,    ; VALUE

    ; dummy
    i8*
};

; line 568
;================================================================================
; scope: GETCHARLITERAL (level : 2)

; activation record
%Frame_GETCHARLITERAL = type
{
    ; parameters
    %T_CHARINFO,    ; CURRCHAR
    %T_text,    ; INPUTFILE
    i32,    ; LENGTH
    i32,    ; NAME
    %T_CHARINFO,    ; NEXTCHAR
    %T_STRING,    ; VALUE

    ; dummy
    i8*
};

; line 608
;================================================================================
; scope: CHARTYPE (level : 2)

; activation record
%Frame_CHARTYPE = type
{
    ; parameters
    %T_CHARINFO,    ; CURRCHAR
    %T_CHARINFO,    ; NEXTCHAR

    ; variables
    i32,    ; _fnvalue
    i1,    ; HIT
    %T_SPECIALCHAR,    ; NEXTTWOCHARS
    i32,    ; THISCHAR

    ; dummy
    i8*
};

; line 654
;================================================================================
; scope: GETSPECIALCHAR (level : 2)

; activation record
%Frame_GETSPECIALCHAR = type
{
    ; parameters
    %T_CHARINFO,    ; CURRCHAR
    %T_text,    ; INPUTFILE
    i32,    ; LENGTH
    i32,    ; NAME
    %T_CHARINFO,    ; NEXTCHAR
    %T_STRING,    ; VALUE

    ; dummy
    i8*
};

; line 682
;================================================================================
; scope: GETNEXTSYMBOL (level : 2)

; activation record
%Frame_GETNEXTSYMBOL = type
{
    ; parameters
    %T_CHARINFO,    ; CURRCHAR
    %T_text,    ; INPUTFILE
    i32,    ; LENGTH
    i32,    ; NAME
    %T_CHARINFO,    ; NEXTCHAR
    %T_STRING,    ; VALUE

    ; dummy
    i8*
};

; line 741
;================================================================================
; scope: GETSYMBOL (level : 2)

; activation record
%Frame_GETSYMBOL = type
{
    ; parameters
    i8*,    ; CURRSYM
    %T_text,    ; INPUTFILE
    i8*,    ; NEXTSYM

    ; variables
    i8*,    ; DUMMY

    ; dummy
    i8*
};

; line 784
;================================================================================
; scope: INITIALISE (level : 2)

; activation record
%Frame_INITIALISE = type
{
    ; parameters
    %T_CHARINFO,    ; CURRCHAR
    i32,    ; CURRLINEPOS
    i32,    ; CURRMARGIN
    i8*,    ; CURRSYM
    %T_DBLCHARTABLE,    ; DBLCHAR
    %T_DBLCHRSET,    ; DBLCHARS
    %T_text,    ; INPUTFILE
    %T_KEYWORDTABLE,    ; KEYWORD
    %T_CHARINFO,    ; NEXTCHAR
    i8*,    ; NEXTSYM
    %T_text,    ; OUTPUTFILE
    %T_OPTIONTABLE,    ; PPOPTION
    i1,    ; RECORDSEEN
    %T_SGLCHARTABLE,    ; SGLCHAR
    i32,    ; TOPOFSTACK

    ; dummy
    i8*
};

; line 1175
;================================================================================
; scope: STACKEMPTY (level : 2)

; activation record
%Frame_STACKEMPTY = type
{
    ; variables
    i1,    ; _fnvalue

    ; dummy
    i8*
};

; line 1187
;================================================================================
; scope: STACKFULL (level : 2)

; activation record
%Frame_STACKFULL = type
{
    ; variables
    i1,    ; _fnvalue

    ; dummy
    i8*
};

; line 1199
;================================================================================
; scope: POPSTACK (level : 2)

; activation record
%Frame_POPSTACK = type
{
    ; parameters
    i32,    ; INDENTSYMBOL
    i32,    ; PREVMARGIN

    ; dummy
    i8*
};

; line 1222
;================================================================================
; scope: PUSHSTACK (level : 2)

; activation record
%Frame_PUSHSTACK = type
{
    ; parameters
    i32,    ; INDENTSYMBOL
    i32,    ; PREVMARGIN

    ; dummy
    i8*
};

; line 1235
;================================================================================
; scope: WRITECRS (level : 2)

; activation record
%Frame_WRITECRS = type
{
    ; parameters
    i32,    ; CURRLINEPOS
    i32,    ; NUMBEROFCRS
    %T_text,    ; OUTPUTFILE

    ; variables
    i32,    ; I

    ; dummy
    i8*
};

; line 1256
;================================================================================
; scope: INSERTCR (level : 2)

; activation record
%Frame_INSERTCR = type
{
    ; parameters
    i8*,    ; CURRSYM
    %T_text,    ; OUTPUTFILE

    ; dummy
    i8*
};

; line 1276
;================================================================================
; scope: INSERTBLANKLINE (level : 2)

; activation record
%Frame_INSERTBLANKLINE = type
{
    ; parameters
    i8*,    ; CURRSYM
    %T_text,    ; OUTPUTFILE

    ; dummy
    i8*
};

; line 1306
;================================================================================
; scope: LSHIFTON (level : 2)

; activation record
%Frame_LSHIFTON = type
{
    ; parameters
    %T_KEYSYMSET,    ; DINDENTSYMBOLS

    ; variables
    i32,    ; INDENTSYMBOL
    i32,    ; PREVMARGIN

    ; dummy
    i8*
};

; line 1335
;================================================================================
; scope: LSHIFT (level : 2)

; activation record
%Frame_LSHIFT = type
{
    ; variables
    i32,    ; INDENTSYMBOL
    i32,    ; PREVMARGIN

    ; dummy
    i8*
};

; line 1352
;================================================================================
; scope: INSERTSPACE (level : 2)

; activation record
%Frame_INSERTSPACE = type
{
    ; parameters
    %T_text,    ; OUTPUTFILE
    i8*,    ; SYMBOL

    ; dummy
    i8*
};

; line 1372
;================================================================================
; scope: MOVELINEPOS (level : 2)

; activation record
%Frame_MOVELINEPOS = type
{
    ; parameters
    i32,    ; CURRLINEPOS
    i32,    ; NEWLINEPOS
    %T_text,    ; OUTPUTFILE

    ; variables
    i32,    ; I

    ; dummy
    i8*
};

; line 1389
;================================================================================
; scope: PRINTSYMBOL (level : 2)

; activation record
%Frame_PRINTSYMBOL = type
{
    ; parameters
    i32,    ; CURRLINEPOS
    i8*,    ; CURRSYM
    %T_text,    ; OUTPUTFILE

    ; variables
    i32,    ; I

    ; dummy
    i8*
};

; line 1410
;================================================================================
; scope: PPSYMBOL (level : 2)

; activation record
%Frame_PPSYMBOL = type
{
    ; parameters
    i8*,    ; CURRSYM
    %T_text,    ; OUTPUTFILE

    ; variables
    i32,    ; NEWLINEPOS

    ; dummy
    i8*
};

; line 1465
;================================================================================
; scope: GOBBLE (level : 2)

; activation record
%Frame_GOBBLE = type
{
    ; parameters
    i8*,    ; CURRSYM
    %T_text,    ; INPUTFILE
    i8*,    ; NEXTSYM
    %T_text,    ; OUTPUTFILE
    %T_KEYSYMSET,    ; TERMINATORS

    ; dummy
    i8*
};

; line 1491
;================================================================================
; scope: RSHIFT (level : 2)

; activation record
%Frame_RSHIFT = type
{
    ; parameters
    i32,    ; CURRSYM

    ; dummy
    i8*
};

; line 1508
;================================================================================
; scope: RSHIFTTOCLP (level : 2)

; activation record
%Frame_RSHIFTTOCLP = type
{
    ; parameters
    i32,    ; CURRSYM

    ; dummy
    i8*
};

;================================================================================
; metadata

!llvm.dbg.cu = !{!72}
!llvm.module.flags = !{!73, !74}
!llvm.ident = !{!71}

!0 = !DIFile(filename: "prettyp.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
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
!18 = !DISubrange(count: 200)
!19 = !{!18}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "NAME", scope: !16, file: !0, line: 259, baseType: !8, size: 32, offset: 0)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "VALUE", scope: !16, file: !0, line: 260, baseType: !17, size: 1600, offset: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "LENGTH", scope: !16, file: !0, line: 261, baseType: !3, size: 32, offset: 1632)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "SPACESBEFORE", scope: !16, file: !0, line: 262, baseType: !3, size: 32, offset: 1664)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "CRSBEFORE", scope: !16, file: !0, line: 263, baseType: !3, size: 32, offset: 1696)
!25 = !{!20,!21,!22,!23,!24}
!26 = !DICompositeType(tag: DW_TAG_array_type, name: "DBLCHARTABLE", file: !0, line: 251, baseType: !27, size: 32, elements: !31)
!27 = !DICompositeType(tag: DW_TAG_array_type, name: "SPECIALCHAR", file: !0, line: 247, baseType: !2, size: 16, elements: !29)
!28 = !DISubrange(count: 2)
!29 = !{!28}
!30 = !DISubrange(count: 2)
!31 = !{!30}
!32 = !DICompositeType(tag: DW_TAG_array_type, name: "DBLCHRSET", file: !0, line: 249, baseType: !35, size: 32, elements: !34)
!33 = !DISubrange(count: 24)
!34 = !{!33}
!35 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!36 = !DICompositeType(tag: DW_TAG_array_type, name: "KEY", file: !0, line: 241, baseType: !2, size: 80, elements: !38)
!37 = !DISubrange(count: 10)
!38 = !{!37}
!39 = !DICompositeType(tag: DW_TAG_array_type, name: "KEYSYMSET", file: !0, line: 230, baseType: !42, size: 64, elements: !41)
!40 = !DISubrange(count: 33)
!41 = !{!40}
!42 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!43 = !DICompositeType(tag: DW_TAG_array_type, name: "KEYWORDTABLE", file: !0, line: 244, baseType: !36, size: 1760, elements: !45)
!44 = !DISubrange(count: 22)
!45 = !{!44}
!46 = !DICompositeType(tag: DW_TAG_array_type, name: "OPTIONSET", file: !0, line: 228, baseType: !49, size: 32, elements: !48)
!47 = !DISubrange(count: 11)
!48 = !{!47}
!49 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!50 = !DICompositeType(tag: DW_TAG_array_type, name: "OPTIONTABLE", file: !0, line: 238, baseType: !51, size: 5280, elements: !57)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TABLEENTRY", file: !0, line: 232, size: 160, flags: DIFlagTypePassByValue, elements: !55)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "OPTIONSSELECTED", scope: !51, file: !0, line: 233, baseType: !46, size: 32, offset: 0)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "DINDENTSYMBOLS", scope: !51, file: !0, line: 234, baseType: !39, size: 64, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "GOBBLETERMINATORS", scope: !51, file: !0, line: 235, baseType: !39, size: 64, offset: 96)
!55 = !{!52,!53,!54}
!56 = !DISubrange(count: 33)
!57 = !{!56}
!58 = !DICompositeType(tag: DW_TAG_array_type, name: "SGLCHARTABLE", file: !0, line: 253, baseType: !2, size: 48, elements: !60)
!59 = !DISubrange(count: 6)
!60 = !{!59}
!61 = !DICompositeType(tag: DW_TAG_array_type, name: "SYMBOLSTACK", file: !0, line: 283, baseType: !62, size: 6400, elements: !67)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "STACKENTRY", file: !0, line: 278, size: 64, flags: DIFlagTypePassByValue, elements: !65)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "INDENTSYMBOL", scope: !62, file: !0, line: 279, baseType: !8, size: 32, offset: 0)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "PREVMARGIN", scope: !62, file: !0, line: 280, baseType: !3, size: 32, offset: 32)
!65 = !{!63,!64}
!66 = !DISubrange(count: 100)
!67 = !{!66}
!68 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!11,!15,!16,!17,!26,!27,!32,!36,!39,!43,!46,!50,!51,!58,!61,!62}
!69 = !{}
!70 = !{}
!71 = !{!"LPC 1.1"}
!72 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !68, globals: !70, nameTableKind: None)
!73 = !{i32 2, !"CodeView", i32 1}
!74 = !{i32 2, !"Debug Info Version", i32 3}

