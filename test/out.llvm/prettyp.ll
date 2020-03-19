
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
%T_STRING = type __array
%T_SYMBOL = type [20 x i8]
%T_SYMBOLINFO = type %T_SYMBOL*
%T_DBLCHARTABLE = type __array
%T_DBLCHRSET = type __set
%T_KEY = type __array
%T_KEYSYMSET = type __set
%T_KEYWORDTABLE = type __array
%T_OPTIONSET = type __set
%T_OPTIONTABLE = type __array
%T_SGLCHARTABLE = type __array
%T_SPECIALCHAR = type __array
%T_SYMBOLSTACK = type __array
%T_STACKENTRY = type [8 x i8]
%T_TABLEENTRY = type [3 x i8]

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
