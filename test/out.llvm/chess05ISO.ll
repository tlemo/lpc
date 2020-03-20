; ModuleID = 'chess05ISO.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\chess05ISO.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"


; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type i8

; line 1
;================================================================================
; scope: program scope (level : 1)

; types
%T_SX = type i8
%T_array_2 = type [2 x %T_SX]
%T_array_3 = type [2 x i32]
%T_RS = type [8 x i8]
%T_arraytmofrs = type [3 x %T_RS]
%T_arraytkofrs = type [17 x %T_RS]
%T_arraytfofrs = type [8 x %T_RS]
%T_TW = type i8
%T_arraytkoftw = type [17 x %T_TW]
%T_arraytpofte = type [13 x i32]
%T_arraytqofrs = type [4 x %T_RS]
%T_arraytrofrs = type [8 x %T_RS]
%T_RX = type [64 x %T_RS]
%T_TT = type i8
%T_SQ = type i8
%T_RC = type [64 x i32]
%T_array_5 = type [8 x i32]
%T_array_4 = type [8 x %T_array_5]
%T_RB = type [285 x i8]
%T_TV = type i8
%T_array_6 = type [20 x %T_TV]
%T_array_7 = type [16 x %T_RS]
%T_array_8 = type [8 x i32]
%T_RJ = type [74 x i8]
%T_array_9 = type [18 x %T_TW]
%T_TJ = type i8
%T_TK = type i8
%T_TS = type i8
%T_RM = type [48 x i8]
%T_array_10 = type [17 x %T_RM]
%T_array_11 = type [3 x i32]
%T_array_12 = type [17 x %T_TV]
%T_RF = type [500 x %T_RM]
%T_RN = type [30 x i8]
%T_array_13 = type [17 x i32]
%T_array_14 = type [3 x i32]
%T_RA = type [10 x i8]
%T_RD = type [5 x i8]
%T_RE = type [500 x %T_TV]
%T_RY = type [11 x i8]
%T_SC = type i8
%T_SF = type i8
%T_SR = type i8
%T_array_15 = type [17 x i32]
%T_array_16 = type [47 x %T_RY]
%T_TA = type i8
%T_TD = type i8
%T_TL = type i8
%T_TN = type i8
%T_array_17 = type [13 x %T_RS]
%T_TX = type i8
%T_TY = type i8
%T_array_18 = type [239 x %T_TD]
%T_array_19 = type [4 x %T_RM]
%T_array_20 = type [13 x i1]
%T_array_21 = type [64 x %T_SX]
%T_array_22 = type [2 x i8]
%T_array_23 = type [16 x %T_TD]
%T_array_24 = type [4 x i8]
%T_array_26 = type [3 x i32]
%T_array_25 = type [4 x %T_array_26]
%T_array_27 = type [120 x %T_TT]
%T_array_28 = type [3 x %T_RA]
%T_array_29 = type [3 x i32]
%T_array_30 = type [3 x %T_TV]
%T_array_31 = type [13 x i8]
%T_array_32 = type [13 x i32]
%T_array_33 = type [13 x i32]
%T_array_34 = type [13 x %T_TV]
%T_array_35 = type [4 x %T_RA]
%T_array_36 = type [4 x %T_TS]
%T_array_38 = type [8 x %T_TS]
%T_array_37 = type [8 x %T_array_38]
%T_array_39 = type [64 x i32]
%T_array_40 = type [64 x %T_TL]
%T_array_41 = type [64 x i32]
%T_array_42 = type [64 x %T_TX]
%T_array_43 = type [64 x %T_TY]
%T_array_44 = type [6 x i8]
%T_array_46 = type [3 x i32]
%T_array_45 = type [6 x %T_array_46]

; program variables
@ALATK = dso_local global %T_arraytmofrs zeroinitializer
@ALLOC = dso_local global %T_arraytkofrs zeroinitializer
@ATKFR = dso_local global %T_RX zeroinitializer
@ATKTO = dso_local global %T_RX zeroinitializer
@BOARD = dso_local global %T_RB zeroinitializer
@BSTMV = dso_local global %T_arraytkoftw zeroinitializer
@BSTVL = dso_local global %T_array_6 zeroinitializer
@CORNR = dso_local global %T_RS zeroinitializer
@CSTAT = dso_local global %T_arraytkofrs zeroinitializer
@EDGE = dso_local global %T_array_7 zeroinitializer
@ENPAS = dso_local global %T_arraytkofrs zeroinitializer
@FKPSHD = dso_local global i32 zeroinitializer
@FKSANQ = dso_local global i32 zeroinitializer
@FMAXMT = dso_local global i32 zeroinitializer
@FNODEL = dso_local global i32 zeroinitializer
@FPADCR = dso_local global %T_array_8 zeroinitializer
@FPBLOK = dso_local global i32 zeroinitializer
@FPCONN = dso_local global i32 zeroinitializer
@FPFLNX = dso_local global i32 zeroinitializer
@FRDUBL = dso_local global i32 zeroinitializer
@FRK7TH = dso_local global i32 zeroinitializer
@FTRADE = dso_local global i32 zeroinitializer
@FTRDSL = dso_local global i32 zeroinitializer
@FTRPDK = dso_local global i32 zeroinitializer
@FTRPWN = dso_local global i32 zeroinitializer
@FWKING = dso_local global i32 zeroinitializer
@FWMAJM = dso_local global i32 zeroinitializer
@FWMINM = dso_local global i32 zeroinitializer
@FWPAWN = dso_local global i32 zeroinitializer
@FWROOK = dso_local global i32 zeroinitializer
@GENFR = dso_local global %T_arraytkofrs zeroinitializer
@GENPN = dso_local global %T_arraytkofrs zeroinitializer
@GENTO = dso_local global %T_arraytkofrs zeroinitializer
@GOING = dso_local global i32 zeroinitializer
@ICARD = dso_local global %T_RJ zeroinitializer
@ILINE = dso_local global %T_RJ zeroinitializer
@INDEX = dso_local global %T_array_9 zeroinitializer
@input = dso_local global %T_text zeroinitializer
@JMTJ = dso_local global %T_TJ zeroinitializer
@JMTK = dso_local global %T_TK zeroinitializer
@JNTJ = dso_local global %T_TJ zeroinitializer
@JNTK = dso_local global %T_TK zeroinitializer
@JNTM = dso_local global i32 zeroinitializer
@JNTW = dso_local global %T_TW zeroinitializer
@jumpin = dso_local global i1 zeroinitializer
@KILLR = dso_local global %T_array_10 zeroinitializer
@LINDX = dso_local global %T_arraytkoftw zeroinitializer
@LSTMV = dso_local global %T_RM zeroinitializer
@MAXPS = dso_local global %T_TV zeroinitializer
@MBLTE = dso_local global %T_TV zeroinitializer
@MBORD = dso_local global %T_RC zeroinitializer
@MBPWN = dso_local global %T_array_11 zeroinitializer
@MBTOT = dso_local global %T_TV zeroinitializer
@MBVAL = dso_local global %T_array_12 zeroinitializer
@MOVES = dso_local global %T_RF zeroinitializer
@MOVMS = dso_local global %T_RN zeroinitializer
@MVSEL = dso_local global %T_array_13 zeroinitializer
@NODES = dso_local global i32 zeroinitializer
@NULMV = dso_local global %T_RM zeroinitializer
@OTHER = dso_local global %T_array_14 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@SRCHM = dso_local global %T_array_15 zeroinitializer
@SWEC = dso_local global i1 zeroinitializer
@SWPA = dso_local global i1 zeroinitializer
@SWPS = dso_local global i1 zeroinitializer
@SWRE = dso_local global i1 zeroinitializer
@SWSU = dso_local global i1 zeroinitializer
@SWTR = dso_local global i1 zeroinitializer
@SYNTX = dso_local global %T_array_16 zeroinitializer
@TMLOC = dso_local global %T_arraytmofrs zeroinitializer
@TPLOC = dso_local global %T_array_17 zeroinitializer
@VALUE = dso_local global %T_RE zeroinitializer
@WINDOW = dso_local global i32 zeroinitializer
@XFPE = dso_local global %T_arraytpofte zeroinitializer
@XLLD = dso_local global %T_array_18 zeroinitializer
@XLPE = dso_local global %T_arraytpofte zeroinitializer
@XNFS = dso_local global %T_arraytfofrs zeroinitializer
@XNRS = dso_local global %T_arraytrofrs zeroinitializer
@XRFS = dso_local global %T_arraytfofrs zeroinitializer
@XRQM = dso_local global %T_array_19 zeroinitializer
@XRQSA = dso_local global %T_arraytqofrs zeroinitializer
@XRQSO = dso_local global %T_arraytqofrs zeroinitializer
@XRRS = dso_local global %T_arraytrofrs zeroinitializer
@XRSS = dso_local global %T_RX zeroinitializer
@XSPB = dso_local global %T_array_20 zeroinitializer
@XSQS = dso_local global %T_arraytqofrs zeroinitializer
@XSSX = dso_local global %T_array_21 zeroinitializer
@XTBC = dso_local global %T_array_22 zeroinitializer
@XTED = dso_local global %T_array_23 zeroinitializer
@XTGC = dso_local global %T_array_24 zeroinitializer
@XTGMP = dso_local global %T_array_25 zeroinitializer
@XTLS = dso_local global %T_array_27 zeroinitializer
@XTMA = dso_local global %T_array_28 zeroinitializer
@XTMQ = dso_local global %T_array_29 zeroinitializer
@XTMV = dso_local global %T_array_30 zeroinitializer
@XTPC = dso_local global %T_array_31 zeroinitializer
@XTPM = dso_local global %T_array_32 zeroinitializer
@XTPU = dso_local global %T_array_33 zeroinitializer
@XTPV = dso_local global %T_array_34 zeroinitializer
@XTQA = dso_local global %T_array_35 zeroinitializer
@XTQS = dso_local global %T_array_36 zeroinitializer
@XTRFS = dso_local global %T_array_37 zeroinitializer
@XTSF = dso_local global %T_array_39 zeroinitializer
@XTSL = dso_local global %T_array_40 zeroinitializer
@XTSR = dso_local global %T_array_41 zeroinitializer
@XTSX = dso_local global %T_array_42 zeroinitializer
@XTSY = dso_local global %T_array_43 zeroinitializer
@XTUC = dso_local global %T_array_44 zeroinitializer
@XTUMP = dso_local global %T_array_45 zeroinitializer

; line 290
;================================================================================
; scope: MAX (level : 2)

; line 300
;================================================================================
; scope: MIN (level : 2)

; line 310
;================================================================================
; scope: SIGN (level : 2)

; line 320
;================================================================================
; scope: SORTIT (level : 2)

; line 354
;================================================================================
; scope: ANDRS (level : 2)

; line 368
;================================================================================
; scope: CLRRS (level : 2)

; line 377
;================================================================================
; scope: CPYRS (level : 2)

; line 390
;================================================================================
; scope: IORRS (level : 2)

; line 403
;================================================================================
; scope: NEWRS (level : 2)

; line 415
;================================================================================
; scope: NOTRS (level : 2)

; line 427
;================================================================================
; scope: NXTTS (level : 2)

; line 477
;================================================================================
; scope: CNTRS (level : 2)

; line 502
;================================================================================
; scope: SETRS (level : 2)

; line 511
;================================================================================
; scope: SFTRS (level : 2)

; line 619
;================================================================================
; scope: INRSTB (level : 2)

; line 627
;================================================================================
; scope: NULRS (level : 2)

; line 643
;================================================================================
; scope: NULMVB (level : 2)

; line 653
;================================================================================
; scope: INICON (level : 2)

; line 670
;================================================================================
; scope: INICON_INISYN (level : 3)

; line 698
;================================================================================
; scope: INICON_INIXTP (level : 3)

; line 1057
;================================================================================
; scope: INITAL (level : 2)

; line 1101
;================================================================================
; scope: PAUSER (level : 2)

; line 1112
;================================================================================
; scope: PRIMOV (level : 2)

; line 1168
;================================================================================
; scope: PRINTB (level : 2)

; line 1208
;================================================================================
; scope: PRINAM (level : 2)

; line 1237
;================================================================================
; scope: PRISWI (level : 2)

; line 1248
;================================================================================
; scope: MBEVAL (level : 2)

; line 1267
;================================================================================
; scope: MBCAPT (level : 2)

; line 1281
;================================================================================
; scope: MBTPAC (level : 2)

; line 1294
;================================================================================
; scope: MBPROM (level : 2)

; line 1308
;================================================================================
; scope: MBMORP (level : 2)

; line 1321
;================================================================================
; scope: ADDATK (level : 2)

; line 1359
;================================================================================
; scope: ADDLOC (level : 2)

; line 1372
;================================================================================
; scope: CLSTAT (level : 2)

; line 1384
;================================================================================
; scope: CUTATK (level : 2)

; line 1428
;================================================================================
; scope: DELATK (level : 2)

; line 1462
;================================================================================
; scope: PRPATK (level : 2)

; line 1502
;================================================================================
; scope: GAINIT (level : 2)

; line 1520
;================================================================================
; scope: LOSEIT (level : 2)

; line 1540
;================================================================================
; scope: MOVEIT (level : 2)

; line 1558
;================================================================================
; scope: RTRKIT (level : 2)

; line 1578
;================================================================================
; scope: PAWNIT (level : 2)

; line 1590
;================================================================================
; scope: PROACA (level : 2)

; line 1614
;================================================================================
; scope: PROACS (level : 2)

; line 1629
;================================================================================
; scope: PROMOT (level : 2)

; line 1641
;================================================================================
; scope: CREATE (level : 2)

; line 1718
;================================================================================
; scope: DNDATE (level : 2)

; line 1792
;================================================================================
; scope: UPDATE (level : 2)

; line 1919
;================================================================================
; scope: GENONE (level : 2)

; line 1950
;================================================================================
; scope: PWNPRO (level : 2)

; line 1967
;================================================================================
; scope: GENPWN (level : 2)

; line 2095
;================================================================================
; scope: GENFSL (level : 2)

; line 2124
;================================================================================
; scope: GENTSL (level : 2)

; line 2151
;================================================================================
; scope: GENCAP (level : 2)

; line 2163
;================================================================================
; scope: GENCAS (level : 2)

; line 2191
;================================================================================
; scope: GENALL (level : 2)

; line 2199
;================================================================================
; scope: LSTMOV (level : 2)

; line 2215
;================================================================================
; scope: THEMOV (level : 2)

; line 2249
;================================================================================
; scope: EVALU8 (level : 2)

; line 2254
;================================================================================
; scope: EVALU8_EVKING (level : 3)

; line 2280
;================================================================================
; scope: EVALU8_EVMOBL (level : 3)

; line 2297
;================================================================================
; scope: EVALU8_EVPAWN (level : 3)

; line 2332
;================================================================================
; scope: EVALU8_EVROOK (level : 3)

; line 2382
;================================================================================
; scope: SEARCH (level : 2)

; line 2395
;================================================================================
; scope: SEARCH_NEWBST (level : 3)

; line 2418
;================================================================================
; scope: SEARCH_MINMAX (level : 3)

; line 2440
;================================================================================
; scope: SEARCH_SCOREM (level : 3)

; line 2453
;================================================================================
; scope: SEARCH_SELECT (level : 3)

; line 2467
;================================================================================
; scope: SEARCH_SELECT_SELDON (level : 4)

; line 2482
;================================================================================
; scope: SEARCH_SELECT_SELMOV (level : 4)

; line 2501
;================================================================================
; scope: SEARCH_SELECT_SELNXT (level : 4)

; line 2513
;================================================================================
; scope: SEARCH_SELECT_SELANY (level : 4)

; line 2748
;================================================================================
; scope: READER (level : 2)

; line 2757
;================================================================================
; scope: READER_RDRERR (level : 3)

; line 2782
;================================================================================
; scope: READER_RDRGNT (level : 3)

; line 2812
;================================================================================
; scope: READER_RDRSFT (level : 3)

; line 2825
;================================================================================
; scope: READER_RDRCMD (level : 3)

; types
%T_READER_RDRCMD_subroutine_47 = type i8

; line 2840
;================================================================================
; scope: READER_RDLINE (level : 3)

; line 2867
;================================================================================
; scope: READER_RDRMOV (level : 3)

; line 2898
;================================================================================
; scope: READER_RDRNUM (level : 3)

; line 2938
;================================================================================
; scope: READER_BOACMD (level : 3)

; line 2946
;================================================================================
; scope: READER_BOACMD_BOAADV (level : 4)

; line 2956
;================================================================================
; scope: READER_BOACMD_BOASTO (level : 4)

; line 2996
;================================================================================
; scope: READER_ENDCMD (level : 3)

; line 3003
;================================================================================
; scope: READER_GONCMD (level : 3)

; line 3015
;================================================================================
; scope: READER_INICMD (level : 3)

; line 3022
;================================================================================
; scope: READER_LETCMD (level : 3)

; line 3027
;================================================================================
; scope: READER_LETCMD_LETONE (level : 4)

; line 3076
;================================================================================
; scope: READER_PLECMD (level : 3)

; line 3081
;================================================================================
; scope: READER_PLECMD_PRIONE (level : 4)

; line 3131
;================================================================================
; scope: READER_PRICMD (level : 3)

; line 3141
;================================================================================
; scope: READER_PAMCMD (level : 3)

; line 3155
;================================================================================
; scope: READER_POPCMD (level : 3)

; line 3173
;================================================================================
; scope: READER_PMVCMD (level : 3)

; line 3190
;================================================================================
; scope: READER_SWICMD (level : 3)

; line 3195
;================================================================================
; scope: READER_SWICMD_SWIONE (level : 4)

; line 3241
;================================================================================
; scope: READER_STACMD (level : 3)

; line 3250
;================================================================================
; scope: READER_STACMD_STAEPF (level : 4)

; line 3266
;================================================================================
; scope: READER_STACMD_STACAK (level : 4)

; line 3276
;================================================================================
; scope: READER_STACMD_STACAQ (level : 4)

; line 3286
;================================================================================
; scope: READER_STACMD_STADRK (level : 4)

; line 3293
;================================================================================
; scope: READER_STACMD_STAENP (level : 4)

; line 3314
;================================================================================
; scope: READER_STACMD_STAGOS (level : 4)

; line 3322
;================================================================================
; scope: READER_STACMD_STALIT (level : 4)

; line 3329
;================================================================================
; scope: READER_STACMD_STANUM (level : 4)

; line 3336
;================================================================================
; scope: READER_STACMD_STAOPT (level : 4)

; types
%T_READER_STACMD_STAOPT_subroutine_48 = type i8

; line 3368
;================================================================================
; scope: READER_WHACMD (level : 3)

; line 3410
;================================================================================
; scope: MINENG (level : 2)

; line 3418
;================================================================================
; scope: MINENG_ADDCHR (level : 3)

; line 3428
;================================================================================
; scope: MINENG_ADDSQR (level : 3)

; line 3478
;================================================================================
; scope: MINENG_ADDWRD (level : 3)

; line 3491
;================================================================================
; scope: MINENG_DIFFER (level : 3)

; line 3516
;================================================================================
; scope: MINENG_SETSQD (level : 3)

; line 3544
;================================================================================
; scope: MINENG_MINGEN (level : 3)

; line 3635
;================================================================================
; scope: MYMOVE (level : 2)

; line 3662
;================================================================================
; scope: YRMOVE (level : 2)

; line 3696
;================================================================================
; scope: YRMOVE_YRMHIT (level : 3)

; line 3714
;================================================================================
; scope: YRMOVE_YRMCOM (level : 3)

; line 3738
;================================================================================
; scope: YRMOVE_YRMCAP (level : 3)

; line 3745
;================================================================================
; scope: YRMOVE_YRMCAS (level : 3)

; line 3752
;================================================================================
; scope: YRMOVE_YRMCPC (level : 3)

; line 3765
;================================================================================
; scope: YRMOVE_YRMCQS (level : 3)

; line 3772
;================================================================================
; scope: YRMOVE_YRMLKQ (level : 3)

; line 3783
;================================================================================
; scope: YRMOVE_YRMLRB (level : 3)

; line 3795
;================================================================================
; scope: YRMOVE_YRMLRK (level : 3)

; line 3823
;================================================================================
; scope: YRMOVE_YRMNUL (level : 3)

; line 3829
;================================================================================
; scope: YRMOVE_YRMPCM (level : 3)

; line 3842
;================================================================================
; scope: YRMOVE_YRMPRO (level : 3)

; line 3855
;================================================================================
; scope: YRMOVE_YRMRKQ (level : 3)

; line 3866
;================================================================================
; scope: YRMOVE_YRMRRB (level : 3)

; line 3878
;================================================================================
; scope: YRMOVE_YRMRRK (level : 3)

; line 3906
;================================================================================
; scope: YRMOVE_NCHIN (level : 3)

; types
%T_YRMOVE_NCHIN_subroutine_49 = type i8
;================================================================================
; metadata

!llvm.dbg.cu = !{!258}
!llvm.module.flags = !{!259, !260}
!llvm.ident = !{!257}

!0 = !DIFile(filename: "chess05ISO.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIBasicType(name: "void", size: 0)
!8 = !DICompositeType(tag: DW_TAG_array_type, name: "arraytmofrs", file: !0, line: 146, baseType: !9, size: 192, elements: !21)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RS", file: !0, line: 129, size: 64, flags: DIFlagTypePassByValue, elements: !19)
!10 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 131, baseType: !11, size: 16, elements: !13)
!11 = !DIBasicType(name: "void", size: 0)
!12 = !DISubrange(count: 2)
!13 = !{!12}
!14 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 132, baseType: !3, size: 64, elements: !16)
!15 = !DISubrange(count: 2)
!16 = !{!15}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "RSSS", scope: !9, file: !0, line: 131, baseType: !10, size: 16, offset: 0)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "RSTI", scope: !9, file: !0, line: 132, baseType: !14, size: 64, offset: 0)
!19 = !{!17,!18}
!20 = !DISubrange(count: 3)
!21 = !{!20}
!22 = !DICompositeType(tag: DW_TAG_array_type, name: "arraytkofrs", file: !0, line: 147, baseType: !9, size: 1088, elements: !24)
!23 = !DISubrange(count: 17)
!24 = !{!23}
!25 = !DICompositeType(tag: DW_TAG_array_type, name: "arraytfofrs", file: !0, line: 150, baseType: !9, size: 512, elements: !27)
!26 = !DISubrange(count: 8)
!27 = !{!26}
!28 = !DICompositeType(tag: DW_TAG_array_type, name: "arraytkoftw", file: !0, line: 148, baseType: !29, size: 136, elements: !31)
!29 = !DIBasicType(name: "void", size: 0)
!30 = !DISubrange(count: 17)
!31 = !{!30}
!32 = !DICompositeType(tag: DW_TAG_array_type, name: "arraytpofte", file: !0, line: 149, baseType: !33, size: 416, elements: !35)
!33 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!34 = !DISubrange(count: 13)
!35 = !{!34}
!36 = !DICompositeType(tag: DW_TAG_array_type, name: "arraytqofrs", file: !0, line: 152, baseType: !9, size: 256, elements: !38)
!37 = !DISubrange(count: 4)
!38 = !{!37}
!39 = !DICompositeType(tag: DW_TAG_array_type, name: "arraytrofrs", file: !0, line: 151, baseType: !9, size: 512, elements: !41)
!40 = !DISubrange(count: 8)
!41 = !{!40}
!42 = !DICompositeType(tag: DW_TAG_array_type, name: "RX", file: !0, line: 135, baseType: !9, size: 4096, elements: !44)
!43 = !DISubrange(count: 64)
!44 = !{!43}
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RB", file: !0, line: 82, size: 2304, flags: DIFlagTypePassByValue, elements: !65)
!46 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!47 = !DIBasicType(name: "void", size: 0)
!48 = !DIBasicType(name: "void", size: 0)
!49 = !DICompositeType(tag: DW_TAG_array_type, name: "RC", file: !0, line: 81, baseType: !50, size: 2048, elements: !52)
!50 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!51 = !DISubrange(count: 64)
!52 = !{!51}
!53 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 89, baseType: !54, size: 2048, elements: !58)
!54 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 89, baseType: !50, size: 256, elements: !56)
!55 = !DISubrange(count: 8)
!56 = !{!55}
!57 = !DISubrange(count: 8)
!58 = !{!57}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "RBTM", scope: !45, file: !0, line: 83, baseType: !46, size: 32, offset: 0)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "RBTS", scope: !45, file: !0, line: 84, baseType: !47, size: 8, offset: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "RBTI", scope: !45, file: !0, line: 85, baseType: !3, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "RBSQ", scope: !45, file: !0, line: 86, baseType: !48, size: 8, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "RBIS", scope: !45, file: !0, line: 88, baseType: !49, size: 2048, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "RBIRF", scope: !45, file: !0, line: 89, baseType: !53, size: 2048, offset: 128)
!65 = !{!59,!60,!61,!62,!63,!64}
!66 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 168, baseType: !67, size: 160, elements: !69)
!67 = !DIBasicType(name: "void", size: 0)
!68 = !DISubrange(count: 20)
!69 = !{!68}
!70 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!71 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!72 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 280, baseType: !9, size: 1024, elements: !74)
!73 = !DISubrange(count: 16)
!74 = !{!73}
!75 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!76 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 199, baseType: !3, size: 256, elements: !78)
!77 = !DISubrange(count: 8)
!78 = !{!77}
!79 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!80 = !DICompositeType(tag: DW_TAG_array_type, name: "RJ", file: !0, line: 94, baseType: !2, size: 592, elements: !82)
!81 = !DISubrange(count: 74)
!82 = !{!81}
!83 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 176, baseType: !29, size: 144, elements: !85)
!84 = !DISubrange(count: 18)
!85 = !{!84}
!86 = !DIBasicType(name: "void", size: 0)
!87 = !DIBasicType(name: "void", size: 0)
!88 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 177, baseType: !89, size: 6528, elements: !108)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RM", file: !0, line: 110, size: 384, flags: DIFlagTypePassByValue, elements: !106)
!90 = !DIBasicType(name: "void", size: 0)
!91 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "RMFR", scope: !89, file: !0, line: 111, baseType: !90, size: 8, offset: 0)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "RMTO", scope: !89, file: !0, line: 112, baseType: !90, size: 8, offset: 8)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "RMCP", scope: !89, file: !0, line: 113, baseType: !50, size: 32, offset: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "RMCA", scope: !89, file: !0, line: 114, baseType: !1, size: 8, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "RMAC", scope: !89, file: !0, line: 115, baseType: !1, size: 8, offset: 72)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "RMCH", scope: !89, file: !0, line: 116, baseType: !1, size: 8, offset: 80)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "RMMT", scope: !89, file: !0, line: 117, baseType: !1, size: 8, offset: 88)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "RMIL", scope: !89, file: !0, line: 118, baseType: !1, size: 8, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "RMSU", scope: !89, file: !0, line: 119, baseType: !1, size: 8, offset: 104)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "RMPR", scope: !89, file: !0, line: 120, baseType: !1, size: 8, offset: 112)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "RMOO", scope: !89, file: !0, line: 122, baseType: !1, size: 8, offset: 120)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "RMEP", scope: !89, file: !0, line: 123, baseType: !1, size: 8, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "RMQS", scope: !89, file: !0, line: 124, baseType: !1, size: 8, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "RMPP", scope: !89, file: !0, line: 126, baseType: !91, size: 32, offset: 128)
!106 = !{!92,!93,!94,!95,!96,!97,!98,!99,!100,!101,!102,!103,!104,!105}
!107 = !DISubrange(count: 17)
!108 = !{!107}
!109 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 184, baseType: !3, size: 96, elements: !111)
!110 = !DISubrange(count: 3)
!111 = !{!110}
!112 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 174, baseType: !67, size: 136, elements: !114)
!113 = !DISubrange(count: 17)
!114 = !{!113}
!115 = !DICompositeType(tag: DW_TAG_array_type, name: "RF", file: !0, line: 144, baseType: !89, size: 192000, elements: !117)
!116 = !DISubrange(count: 500)
!117 = !{!116}
!118 = !DICompositeType(tag: DW_TAG_array_type, name: "RN", file: !0, line: 93, baseType: !2, size: 240, elements: !120)
!119 = !DISubrange(count: 30)
!120 = !{!119}
!121 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 175, baseType: !3, size: 544, elements: !123)
!122 = !DISubrange(count: 17)
!123 = !{!122}
!124 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 283, baseType: !46, size: 96, elements: !126)
!125 = !DISubrange(count: 3)
!126 = !{!125}
!127 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!128 = !DICompositeType(tag: DW_TAG_array_type, name: "RA", file: !0, line: 92, baseType: !2, size: 80, elements: !130)
!129 = !DISubrange(count: 10)
!130 = !{!129}
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RD", file: !0, line: 95, size: 40, flags: DIFlagTypePassByValue, elements: !137)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "RDPC", scope: !131, file: !0, line: 97, baseType: !1, size: 8, offset: 0)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "RDSL", scope: !131, file: !0, line: 98, baseType: !1, size: 8, offset: 8)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "RDKQ", scope: !131, file: !0, line: 99, baseType: !1, size: 8, offset: 16)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "RDNB", scope: !131, file: !0, line: 100, baseType: !1, size: 8, offset: 24)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "RDRK", scope: !131, file: !0, line: 101, baseType: !1, size: 8, offset: 32)
!137 = !{!132,!133,!134,!135,!136}
!138 = !DICompositeType(tag: DW_TAG_array_type, name: "RE", file: !0, line: 143, baseType: !67, size: 4000, elements: !140)
!139 = !DISubrange(count: 500)
!140 = !{!139}
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RY", file: !0, line: 137, size: 88, flags: DIFlagTypePassByValue, elements: !145)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "RYLS", scope: !141, file: !0, line: 138, baseType: !131, size: 40, offset: 0)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "RYCH", scope: !141, file: !0, line: 139, baseType: !2, size: 8, offset: 40)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "RYRS", scope: !141, file: !0, line: 140, baseType: !131, size: 40, offset: 48)
!145 = !{!142,!143,!144}
!146 = !DIBasicType(name: "void", size: 0)
!147 = !DIBasicType(name: "void", size: 0)
!148 = !DIBasicType(name: "void", size: 0)
!149 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 179, baseType: !79, size: 544, elements: !151)
!150 = !DISubrange(count: 17)
!151 = !{!150}
!152 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 284, baseType: !141, size: 4136, elements: !154)
!153 = !DISubrange(count: 47)
!154 = !{!153}
!155 = !DIBasicType(name: "void", size: 0)
!156 = !DIBasicType(name: "void", size: 0)
!157 = !DIBasicType(name: "void", size: 0)
!158 = !DIBasicType(name: "void", size: 0)
!159 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 162, baseType: !9, size: 832, elements: !161)
!160 = !DISubrange(count: 13)
!161 = !{!160}
!162 = !DIBasicType(name: "void", size: 0)
!163 = !DIBasicType(name: "void", size: 0)
!164 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 237, baseType: !156, size: 1912, elements: !166)
!165 = !DISubrange(count: 239)
!166 = !{!165}
!167 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 245, baseType: !89, size: 1536, elements: !169)
!168 = !DISubrange(count: 4)
!169 = !{!168}
!170 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 235, baseType: !1, size: 104, elements: !172)
!171 = !DISubrange(count: 13)
!172 = !{!171}
!173 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 247, baseType: !11, size: 512, elements: !175)
!174 = !DISubrange(count: 64)
!175 = !{!174}
!176 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 248, baseType: !2, size: 16, elements: !178)
!177 = !DISubrange(count: 2)
!178 = !{!177}
!179 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 249, baseType: !156, size: 128, elements: !181)
!180 = !DISubrange(count: 16)
!181 = !{!180}
!182 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 251, baseType: !2, size: 32, elements: !184)
!183 = !DISubrange(count: 4)
!184 = !{!183}
!185 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 252, baseType: !186, size: 384, elements: !190)
!186 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 252, baseType: !50, size: 96, elements: !188)
!187 = !DISubrange(count: 3)
!188 = !{!187}
!189 = !DISubrange(count: 4)
!190 = !{!189}
!191 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 254, baseType: !47, size: 960, elements: !193)
!192 = !DISubrange(count: 120)
!193 = !{!192}
!194 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 255, baseType: !128, size: 240, elements: !196)
!195 = !DISubrange(count: 3)
!196 = !{!195}
!197 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 256, baseType: !70, size: 96, elements: !199)
!198 = !DISubrange(count: 3)
!199 = !{!198}
!200 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 257, baseType: !67, size: 24, elements: !202)
!201 = !DISubrange(count: 3)
!202 = !{!201}
!203 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 258, baseType: !2, size: 104, elements: !205)
!204 = !DISubrange(count: 13)
!205 = !{!204}
!206 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 259, baseType: !46, size: 416, elements: !208)
!207 = !DISubrange(count: 13)
!208 = !{!207}
!209 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 260, baseType: !71, size: 416, elements: !211)
!210 = !DISubrange(count: 13)
!211 = !{!210}
!212 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 261, baseType: !67, size: 104, elements: !214)
!213 = !DISubrange(count: 13)
!214 = !{!213}
!215 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 262, baseType: !128, size: 320, elements: !217)
!216 = !DISubrange(count: 4)
!217 = !{!216}
!218 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 263, baseType: !90, size: 32, elements: !220)
!219 = !DISubrange(count: 4)
!220 = !{!219}
!221 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 264, baseType: !222, size: 512, elements: !226)
!222 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 264, baseType: !90, size: 64, elements: !224)
!223 = !DISubrange(count: 8)
!224 = !{!223}
!225 = !DISubrange(count: 8)
!226 = !{!225}
!227 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 265, baseType: !75, size: 2048, elements: !229)
!228 = !DISubrange(count: 64)
!229 = !{!228}
!230 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 266, baseType: !157, size: 512, elements: !232)
!231 = !DISubrange(count: 64)
!232 = !{!231}
!233 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 267, baseType: !127, size: 2048, elements: !235)
!234 = !DISubrange(count: 64)
!235 = !{!234}
!236 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 268, baseType: !162, size: 512, elements: !238)
!237 = !DISubrange(count: 64)
!238 = !{!237}
!239 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 270, baseType: !163, size: 512, elements: !241)
!240 = !DISubrange(count: 64)
!241 = !{!240}
!242 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 272, baseType: !2, size: 48, elements: !244)
!243 = !DISubrange(count: 6)
!244 = !{!243}
!245 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 273, baseType: !246, size: 576, elements: !250)
!246 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 273, baseType: !50, size: 96, elements: !248)
!247 = !DISubrange(count: 3)
!248 = !{!247}
!249 = !DISubrange(count: 6)
!250 = !{!249}
!251 = !DIBasicType(name: "void", size: 0)
!252 = !DIBasicType(name: "void", size: 0)
!253 = !DIBasicType(name: "void", size: 0)
!254 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!11,!14,!22,!25,!28,!29,!32,!33,!36,!39,!42,!45,!46,!47,!48,!49,!50,!53,!54,!66,!67,!70,!71,!72,!75,!76,!79,!80,!83,!86,!87,!88,!89,!90,!91,!109,!112,!115,!118,!121,!124,!127,!128,!131,!138,!141,!146,!147,!148,!149,!152,!155,!156,!157,!158,!159,!162,!163,!164,!167,!170,!173,!176,!179,!182,!185,!186,!191,!194,!197,!200,!203,!206,!209,!212,!215,!218,!221,!222,!227,!230,!233,!236,!239,!242,!245,!246,!251,!252,!253}
!255 = !{}
!256 = !{}
!257 = !{!"LPC 1.1 (debug) - built on Mar 20 2020"}
!258 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 20 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !255, retainedTypes: !254, globals: !256, nameTableKind: None)
!259 = !{i32 2, !"CodeView", i32 1}
!260 = !{i32 2, !"Debug Info Version", i32 3}

