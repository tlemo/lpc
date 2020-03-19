
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
