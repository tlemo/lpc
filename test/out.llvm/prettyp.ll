
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type <file>

; line 167
;================================================================================
; scope: program scope (level : 1)

; types
%T_CHARINFO = type <record>
%T_SYMBOL = type <record>
%T_SYMBOLINFO = type %T_SYMBOL*
%T_DBLCHARTABLE = type <array>
%T_DBLCHRSET = type <set>
%T_KEY = type <array>
%T_KEYSYMSET = type <set>
%T_KEYWORDTABLE = type <array>
%T_OPTIONSET = type <set>
%T_OPTIONTABLE = type <array>
%T_SGLCHARTABLE = type <array>
%T_SPECIALCHAR = type <array>
%T_SYMBOLSTACK = type <array>
%T_STACKENTRY = type <record>
%T_STRING = type <array>
%T_TABLEENTRY = type <record>

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@CRPENDING = dso_local global %bool zeroinitializer
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
@RECORDSEEN = dso_local global %bool zeroinitializer
@SGLCHAR = dso_local global %T_SGLCHARTABLE zeroinitializer
@STACK = dso_local global %T_SYMBOLSTACK zeroinitializer
@TOP = dso_local global i32 zeroinitializer

; line 317
;================================================================================
; scope: GETCHAR (level : 2)

; types

; line 369
;================================================================================
; scope: STORENEXTCHAR (level : 2)

; types

; line 392
;================================================================================
; scope: SKIPSPACES (level : 2)

; types

; line 426
;================================================================================
; scope: GETCOMMENT (level : 2)

; types

; line 465
;================================================================================
; scope: IDTYPE (level : 2)

; types

; line 508
;================================================================================
; scope: GETIDENTIFIER (level : 2)

; types

; line 546
;================================================================================
; scope: GETNUMBER (level : 2)

; types

; line 568
;================================================================================
; scope: GETCHARLITERAL (level : 2)

; types

; line 608
;================================================================================
; scope: CHARTYPE (level : 2)

; types

; line 654
;================================================================================
; scope: GETSPECIALCHAR (level : 2)

; types

; line 682
;================================================================================
; scope: GETNEXTSYMBOL (level : 2)

; types

; line 741
;================================================================================
; scope: GETSYMBOL (level : 2)

; types

; line 784
;================================================================================
; scope: INITIALISE (level : 2)

; types

; line 1175
;================================================================================
; scope: STACKEMPTY (level : 2)

; types

; line 1187
;================================================================================
; scope: STACKFULL (level : 2)

; types

; line 1199
;================================================================================
; scope: POPSTACK (level : 2)

; types

; line 1222
;================================================================================
; scope: PUSHSTACK (level : 2)

; types

; line 1235
;================================================================================
; scope: WRITECRS (level : 2)

; types

; line 1256
;================================================================================
; scope: INSERTCR (level : 2)

; types

; line 1276
;================================================================================
; scope: INSERTBLANKLINE (level : 2)

; types

; line 1306
;================================================================================
; scope: LSHIFTON (level : 2)

; types

; line 1335
;================================================================================
; scope: LSHIFT (level : 2)

; types

; line 1352
;================================================================================
; scope: INSERTSPACE (level : 2)

; types

; line 1372
;================================================================================
; scope: MOVELINEPOS (level : 2)

; types

; line 1389
;================================================================================
; scope: PRINTSYMBOL (level : 2)

; types

; line 1410
;================================================================================
; scope: PPSYMBOL (level : 2)

; types

; line 1465
;================================================================================
; scope: GOBBLE (level : 2)

; types

; line 1491
;================================================================================
; scope: RSHIFT (level : 2)

; types

; line 1508
;================================================================================
; scope: RSHIFTTOCLP (level : 2)

; types
