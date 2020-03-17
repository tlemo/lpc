
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type <file>

; line 262
;================================================================================
; scope: program scope (level : 1)

; types
%T_address = type <range>
%T_alfa = type <array>
%T_alfainx = type <range>
%T_beta = type <array>
%T_array_2 = type <array>
%T_byte = type <range>
%T_bytfil = type <file>
%T_array_4 = type <array>
%T_fileno = type <range>
%T_array_5 = type <array>
%T_array_6 = type <array>
%T_array_7 = type <array>
%T_array_8 = type <array>
%T_array_9 = type <array>
%T_instyp = type <range>
%T_lvltyp = type <range>
%T_settype = type <set>
%T_array_10 = type <array>
%T_array_11 = type <array>

; program variables
@a1 = dso_local global %T_address zeroinitializer
@a2 = dso_local global %T_address zeroinitializer
@a3 = dso_local global %T_address zeroinitializer
@ad = dso_local global %T_address zeroinitializer
@ad1 = dso_local global %T_address zeroinitializer
@b = dso_local global %bool zeroinitializer
@b1 = dso_local global %bool zeroinitializer
@b2 = dso_local global %bool zeroinitializer
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
@interpreting = dso_local global %bool zeroinitializer
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
%T_getint_range_12 = type <range>
%T_getint_record_13 = type <record>

; line 517
;================================================================================
; scope: putint (level : 2)

; types
%T_putint_range_14 = type <range>
%T_putint_record_15 = type <record>

; line 534
;================================================================================
; scope: getrel (level : 2)

; types
%T_getrel_range_16 = type <range>
%T_getrel_record_17 = type <record>

; line 551
;================================================================================
; scope: putrel (level : 2)

; types
%T_putrel_range_18 = type <range>
%T_putrel_record_19 = type <record>

; line 568
;================================================================================
; scope: getbol (level : 2)

; types

; line 579
;================================================================================
; scope: putbol (level : 2)

; types

; line 587
;================================================================================
; scope: getset (level : 2)

; types
%T_getset_range_20 = type <range>
%T_getset_record_21 = type <record>

; line 604
;================================================================================
; scope: putset (level : 2)

; types
%T_putset_range_22 = type <range>
%T_putset_record_23 = type <record>

; line 621
;================================================================================
; scope: getchr (level : 2)

; types

; line 629
;================================================================================
; scope: putchr (level : 2)

; types

; line 637
;================================================================================
; scope: getadr (level : 2)

; types
%T_getadr_range_24 = type <range>
%T_getadr_record_25 = type <record>

; line 654
;================================================================================
; scope: putadr (level : 2)

; types
%T_putadr_range_26 = type <range>
%T_putadr_record_27 = type <record>

; line 673
;================================================================================
; scope: swpstk (level : 2)

; types
%T_swpstk_range_28 = type <range>
%T_swpstk_array_29 = type <array>

; line 700
;================================================================================
; scope: popint (level : 2)

; types

; line 701
;================================================================================
; scope: pshint (level : 2)

; types

; line 702
;================================================================================
; scope: poprel (level : 2)

; types

; line 703
;================================================================================
; scope: pshrel (level : 2)

; types

; line 704
;================================================================================
; scope: popset (level : 2)

; types

; line 705
;================================================================================
; scope: pshset (level : 2)

; types

; line 706
;================================================================================
; scope: popadr (level : 2)

; types

; line 707
;================================================================================
; scope: pshadr (level : 2)

; types

; line 711
;================================================================================
; scope: wrthex (level : 2)

; types

; line 726
;================================================================================
; scope: lstins (level : 2)

; types

; line 762
;================================================================================
; scope: dmpins (level : 2)

; types

; line 787
;================================================================================
; scope: alignu (level : 2)

; types

; line 796
;================================================================================
; scope: alignd (level : 2)

; types

; line 807
;================================================================================
; scope: load (level : 2)

; types
%T_load_labelrec = type <record>
%T_load_labelrg = type <range>
%T_load_array_30 = type <array>
%T_load_array_31 = type <array>

; line 819
;================================================================================
; scope: load_init (level : 3)

; types

; line 1047
;================================================================================
; scope: load_errorl (level : 3)

; types

; line 1053
;================================================================================
; scope: load_dmplabs (level : 3)

; types

; line 1073
;================================================================================
; scope: load_update (level : 3)

; types

; line 1100
;================================================================================
; scope: load_getnxt (level : 3)

; types

; line 1106
;================================================================================
; scope: load_skpspc (level : 3)

; types

; line 1111
;================================================================================
; scope: load_getlin (level : 3)

; types

; line 1119
;================================================================================
; scope: load_generate (level : 3)

; types

; line 1160
;================================================================================
; scope: load_assemble (level : 3)

; types
%T_load_assemble_array_32 = type <array>

; line 1166
;================================================================================
; scope: load_assemble_lookup (level : 4)

; types

; line 1175
;================================================================================
; scope: load_assemble_labelsearch (level : 4)

; types

; line 1181
;================================================================================
; scope: load_assemble_getname (level : 4)

; types

; line 1196
;================================================================================
; scope: load_assemble_storeop (level : 4)

; types

; line 1202
;================================================================================
; scope: load_assemble_storep (level : 4)

; types

; line 1208
;================================================================================
; scope: load_assemble_storeq (level : 4)

; types

; line 1214
;================================================================================
; scope: load_assemble_storeq1 (level : 4)

; types

; line 1436
;================================================================================
; scope: pmd (level : 2)

; types

; line 1439
;================================================================================
; scope: pmd_pt (level : 3)

; types

; line 1482
;================================================================================
; scope: errori (level : 2)

; types

; line 1489
;================================================================================
; scope: base (level : 2)

; types

; line 1496
;================================================================================
; scope: compare (level : 2)

; types

; line 1507
;================================================================================
; scope: valfil (level : 2)

; types

; line 1528
;================================================================================
; scope: valfilwm (level : 2)

; types

; line 1534
;================================================================================
; scope: valfilrm (level : 2)

; types

; line 1540
;================================================================================
; scope: getop (level : 2)

; types

; line 1548
;================================================================================
; scope: getp (level : 2)

; types

; line 1556
;================================================================================
; scope: getq (level : 2)

; types

; line 1564
;================================================================================
; scope: getq1 (level : 2)

; types

; line 1585
;================================================================================
; scope: repspc (level : 2)

; types

; line 1602
;================================================================================
; scope: fndfre (level : 2)

; types

; line 1626
;================================================================================
; scope: cscspc (level : 2)

; types

; line 1655
;================================================================================
; scope: newspc (level : 2)

; types

; line 1673
;================================================================================
; scope: dspspc (level : 2)

; types

; line 1690
;================================================================================
; scope: isfree (level : 2)

; types

; line 1697
;================================================================================
; scope: callsp (level : 2)

; types

; line 1706
;================================================================================
; scope: callsp_readi (level : 3)

; types

; line 1711
;================================================================================
; scope: callsp_readr (level : 3)

; types

; line 1716
;================================================================================
; scope: callsp_readc (level : 3)

; types

; line 1721
;================================================================================
; scope: callsp_writestr (level : 3)

; types

; line 1729
;================================================================================
; scope: callsp_getfile (level : 3)

; types

; line 1734
;================================================================================
; scope: callsp_putfile (level : 3)

; types
