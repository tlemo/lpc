
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type <file>

; line 71
;================================================================================
; scope: program scope (level : 1)

; types
%T_array_2 = type <array>
%T_arri = type <array>
%T_arrr = type <array>
%T_rec = type <record>
%T_arrim = type <array>
%T_array_3 = type <array>
%T_array_4 = type <array>
%T_array_5 = type <array>
%T_array_6 = type <array>
%T_array_7 = type <array>
%T_array_8 = type <array>
%T_array_9 = type <array>
%T_array_10 = type <array>
%T_array_11 = type <array>
%T_array_12 = type <array>
%T_array_13 = type <array>
%T_array_14 = type <array>
%T_array_15 = type <array>
%T_array_16 = type <array>
%T_cset = type <set>
%T_array_17 = type <array>
%T_set_18 = type <set>
%T_set_19 = type <set>
%T_set_20 = type <set>
%T_set_21 = type <set>
%T_array_22 = type <array>
%T_array_23 = type <array>
%T_array_24 = type <array>
%T_esub = type <range>
%T_file_25 = type <file>
%T_file_26 = type <file>
%T_text_27 = type <file>
%T_file_28 = type <file>
%T_file_29 = type <file>
%T_file_30 = type <file>
%T_file_31 = type <file>
%T_file_32 = type <file>
%T_file_33 = type <file>
%T_file_35 = type <file>
%T_file_36 = type <file>
%T_file_37 = type <file>
%T_array_38 = type <array>
%T_iptr = type i32*
%T_pointer_39 = type i32*
%T_record_40 = type <record>
%T_prec = type <record>
%T_array_41 = type <array>
%T_array_42 = type <array>
%T_array_43 = type <array>
%T_array_44 = type <array>
%T_array_45 = type <array>
%T_array_46 = type <array>
%T_array_47 = type <array>
%T_array_48 = type <array>
%T_array_49 = type <array>
%T_array_50 = type <array>
%T_array_51 = type <array>
%T_array_52 = type <array>
%T_array_53 = type <array>
%T_array_54 = type <array>
%T_array_55 = type <array>
%T_array_56 = type <array>
%T_array_57 = type <array>
%T_file_58 = type <file>
%T_file_59 = type <file>
%T_text_60 = type <file>
%T_file_61 = type <file>
%T_file_62 = type <file>
%T_file_63 = type <file>
%T_file_64 = type <file>
%T_file_65 = type <file>
%T_file_66 = type <file>
%T_file_67 = type <file>
%T_file_68 = type <file>
%T_file_69 = type <file>
%T_pointer_70 = type i32*
%T_pointer_71 = type %T_arri*
%T_pointer_72 = type %bool*
%T_pointer_73 = type i8*
%T_pointer_74 = type i32*
%T_pointer_75 = type %T_esub*
%T_pointer_76 = type i32*
%T_pointer_77 = type %T_iptr*
%T_pointer_78 = type double*
%T_recs = type <record>
%T_pointer_79 = type %T_recs*
%T_subr = type <range>
%T_pointer_80 = type %T_subr*
%T_string10 = type <array>
%T_pointer_81 = type %T_string10*
%T_pointer_82 = type %T_cset*
%T_record_83 = type <record>
%T_record_84 = type <record>
%T_recv = type <record>
%T_pointer_85 = type %T_rec*
%T_array_86 = type <array>
%T_array_87 = type <array>
%T_set_88 = type <set>
%T_set_89 = type <set>
%T_set_90 = type <set>
%T_set_91 = type <set>
%T_array_92 = type <array>
%T_set_93 = type <set>
%T_set_94 = type <set>
%T_set_95 = type <set>
%T_set_96 = type <set>
%T_range_97 = type <range>
%T_range_98 = type <range>
%T_set_99 = type <set>
%T_set_100 = type <set>
%T_set_101 = type <set>
%T_set_102 = type <set>
%T_range_103 = type <range>
%T_record_104 = type <record>
%T_record_105 = type <record>
%T_record_106 = type <record>
%T_record_107 = type <record>
%T_record_108 = type <record>

; program variables
@_input = dso_local global %T_text zeroinitializer
@a = dso_local global %T_array_2 zeroinitializer
@ai = dso_local global %T_arri zeroinitializer
@ara = dso_local global %T_arrr zeroinitializer
@arec = dso_local global %T_rec zeroinitializer
@as = dso_local global i32 zeroinitializer
@avb = dso_local global %T_array_3 zeroinitializer
@avc = dso_local global %T_array_4 zeroinitializer
@avcs = dso_local global %T_array_5 zeroinitializer
@ave = dso_local global %T_array_6 zeroinitializer
@aves = dso_local global %T_array_7 zeroinitializer
@avf = dso_local global %T_array_8 zeroinitializer
@avi = dso_local global %T_arri zeroinitializer
@avi2 = dso_local global %T_arri zeroinitializer
@avis = dso_local global %T_array_9 zeroinitializer
@avp = dso_local global %T_array_10 zeroinitializer
@avr = dso_local global %T_array_11 zeroinitializer
@avrc = dso_local global %T_array_12 zeroinitializer
@avs = dso_local global %T_array_13 zeroinitializer
@ba = dso_local global %bool zeroinitializer
@bb = dso_local global %bool zeroinitializer
@bc = dso_local global %bool zeroinitializer
@bia = dso_local global %T_array_14 zeroinitializer
@bs = dso_local global i32 zeroinitializer
@ca = dso_local global i8 zeroinitializer
@car = dso_local global %T_array_15 zeroinitializer
@cb = dso_local global i8 zeroinitializer
@cc = dso_local global i8 zeroinitializer
@ci = dso_local global i8 zeroinitializer
@cia = dso_local global %T_array_16 zeroinitializer
@cnt = dso_local global i32 zeroinitializer
@cnt2 = dso_local global i32 zeroinitializer
@cs = dso_local global i32 zeroinitializer
@csia = dso_local global %T_array_17 zeroinitializer
@csta = dso_local global %T_set_18 zeroinitializer
@cstb = dso_local global %T_set_18 zeroinitializer
@cstc = dso_local global %T_set_18 zeroinitializer
@cstd = dso_local global %T_set_18 zeroinitializer
@cste = dso_local global %T_set_19 zeroinitializer
@cstf = dso_local global %T_set_20 zeroinitializer
@cstg = dso_local global %T_set_21 zeroinitializer
@da = dso_local global %T_array_22 zeroinitializer
@ds = dso_local global i32 zeroinitializer
@ea = dso_local global i32 zeroinitializer
@ei = dso_local global i32 zeroinitializer
@eia = dso_local global %T_array_23 zeroinitializer
@es = dso_local global i32 zeroinitializer
@esia = dso_local global %T_array_24 zeroinitializer
@fa = dso_local global %T_file_25 zeroinitializer
@fb = dso_local global %T_file_26 zeroinitializer
@fc = dso_local global %T_text_27 zeroinitializer
@fe = dso_local global %T_file_28 zeroinitializer
@fes = dso_local global %T_file_29 zeroinitializer
@fi = dso_local global %T_file_30 zeroinitializer
@fp = dso_local global %T_file_31 zeroinitializer
@fr = dso_local global %T_file_32 zeroinitializer
@frc = dso_local global %T_file_33 zeroinitializer
@fs = dso_local global %T_file_35 zeroinitializer
@fst = dso_local global %T_file_36 zeroinitializer
@fstc = dso_local global %T_file_37 zeroinitializer
@ft = dso_local global %T_text zeroinitializer
@gs = dso_local global i32 zeroinitializer
@hs = dso_local global i32 zeroinitializer
@i = dso_local global i32 zeroinitializer
@iap = dso_local global %T_array_38 zeroinitializer
@ip = dso_local global %T_iptr zeroinitializer
@ipa = dso_local global %T_pointer_39 zeroinitializer
@ipb = dso_local global %T_pointer_39 zeroinitializer
@ipc = dso_local global %T_pointer_39 zeroinitializer
@ipd = dso_local global %T_pointer_39 zeroinitializer
@ipe = dso_local global %T_pointer_39 zeroinitializer
@mdar = dso_local global %T_arrim zeroinitializer
@mdar2 = dso_local global %T_arrim zeroinitializer
@n = dso_local global i32 zeroinitializer
@nvr = dso_local global %T_record_40 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@parec = dso_local global %T_prec zeroinitializer
@pavb = dso_local global %T_array_41 zeroinitializer
@pavc = dso_local global %T_array_42 zeroinitializer
@pavcs = dso_local global %T_array_43 zeroinitializer
@pave = dso_local global %T_array_44 zeroinitializer
@paves = dso_local global %T_array_45 zeroinitializer
@pavf = dso_local global %T_array_46 zeroinitializer
@pavi = dso_local global %T_array_47 zeroinitializer
@pavis = dso_local global %T_array_48 zeroinitializer
@pavp = dso_local global %T_array_49 zeroinitializer
@pavr = dso_local global %T_array_50 zeroinitializer
@pavrc = dso_local global %T_array_51 zeroinitializer
@pavs = dso_local global %T_array_52 zeroinitializer
@pbia = dso_local global %T_array_53 zeroinitializer
@pcia = dso_local global %T_array_54 zeroinitializer
@pcsia = dso_local global %T_array_55 zeroinitializer
@peia = dso_local global %T_array_56 zeroinitializer
@pesia = dso_local global %T_array_57 zeroinitializer
@pfa = dso_local global %T_file_58 zeroinitializer
@pfb = dso_local global %T_file_59 zeroinitializer
@pfc = dso_local global %T_text_60 zeroinitializer
@pfe = dso_local global %T_file_61 zeroinitializer
@pfes = dso_local global %T_file_62 zeroinitializer
@pfi = dso_local global %T_file_63 zeroinitializer
@pfp = dso_local global %T_file_64 zeroinitializer
@pfr = dso_local global %T_file_65 zeroinitializer
@pfrc = dso_local global %T_file_66 zeroinitializer
@pfs = dso_local global %T_file_67 zeroinitializer
@pfst = dso_local global %T_file_68 zeroinitializer
@pfstc = dso_local global %T_file_69 zeroinitializer
@pi1 = dso_local global %T_pointer_70 zeroinitializer
@pi2 = dso_local global %T_pointer_70 zeroinitializer
@pta = dso_local global %T_pointer_71 zeroinitializer
@ptb = dso_local global %T_pointer_72 zeroinitializer
@ptc = dso_local global %T_pointer_73 zeroinitializer
@pte = dso_local global %T_pointer_74 zeroinitializer
@ptes = dso_local global %T_pointer_75 zeroinitializer
@pti = dso_local global %T_pointer_76 zeroinitializer
@pti1 = dso_local global %T_pointer_76 zeroinitializer
@ptp = dso_local global %T_pointer_77 zeroinitializer
@ptr = dso_local global %T_pointer_78 zeroinitializer
@ptrc = dso_local global %T_pointer_79 zeroinitializer
@pts = dso_local global %T_pointer_80 zeroinitializer
@ptst = dso_local global %T_pointer_81 zeroinitializer
@ptstc = dso_local global %T_pointer_82 zeroinitializer
@q = dso_local global i32 zeroinitializer
@r = dso_local global %T_record_83 zeroinitializer
@ra = dso_local global double zeroinitializer
@rb = dso_local global double zeroinitializer
@rc = dso_local global double zeroinitializer
@rcast = dso_local global %T_record_84 zeroinitializer
@rcastt = dso_local global i32 zeroinitializer
@rd = dso_local global double zeroinitializer
@re = dso_local global double zeroinitializer
@rn = dso_local global i32 zeroinitializer
@rndseq = dso_local global i32 zeroinitializer
@rpa = dso_local global %T_pointer_85 zeroinitializer
@s = dso_local global %T_string10 zeroinitializer
@sa = dso_local global %T_array_86 zeroinitializer
@sar = dso_local global %T_array_87 zeroinitializer
@sb = dso_local global %T_array_86 zeroinitializer
@sba = dso_local global %T_set_88 zeroinitializer
@sbb = dso_local global %T_set_88 zeroinitializer
@sbc = dso_local global %T_set_88 zeroinitializer
@sbd = dso_local global %T_set_88 zeroinitializer
@sbe = dso_local global %T_set_89 zeroinitializer
@sbf = dso_local global %T_set_90 zeroinitializer
@sbg = dso_local global %T_set_91 zeroinitializer
@sc = dso_local global %T_array_86 zeroinitializer
@sena = dso_local global %T_set_93 zeroinitializer
@senb = dso_local global %T_set_93 zeroinitializer
@senc = dso_local global %T_set_93 zeroinitializer
@send = dso_local global %T_set_93 zeroinitializer
@sene = dso_local global %T_set_94 zeroinitializer
@senf = dso_local global %T_set_95 zeroinitializer
@seng = dso_local global %T_set_96 zeroinitializer
@sras = dso_local global %T_range_97 zeroinitializer
@srbs = dso_local global %T_range_97 zeroinitializer
@srcs = dso_local global %T_range_97 zeroinitializer
@srds = dso_local global %T_range_97 zeroinitializer
@sres = dso_local global %T_range_97 zeroinitializer
@srx = dso_local global %T_range_98 zeroinitializer
@sry = dso_local global %T_range_98 zeroinitializer
@srz = dso_local global %T_range_98 zeroinitializer
@sta = dso_local global %T_set_99 zeroinitializer
@stb = dso_local global %T_set_99 zeroinitializer
@stc = dso_local global %T_set_99 zeroinitializer
@std = dso_local global %T_set_99 zeroinitializer
@ste = dso_local global %T_set_100 zeroinitializer
@stf = dso_local global %T_set_101 zeroinitializer
@stg = dso_local global %T_set_102 zeroinitializer
@sva = dso_local global i32 zeroinitializer
@svb = dso_local global i32 zeroinitializer
@svc = dso_local global i32 zeroinitializer
@t = dso_local global i32 zeroinitializer
@vnum = dso_local global %T_range_103 zeroinitializer
@vra = dso_local global %T_record_104 zeroinitializer
@vrec = dso_local global %T_recv zeroinitializer
@vvrb = dso_local global %T_record_105 zeroinitializer
@vvre = dso_local global %T_record_106 zeroinitializer
@vvres = dso_local global %T_record_107 zeroinitializer
@vvrs = dso_local global %T_record_108 zeroinitializer
@x = dso_local global i32 zeroinitializer
@y = dso_local global i32 zeroinitializer
@z = dso_local global i32 zeroinitializer

; line 398
;================================================================================
; scope: junk1 (level : 2)

; types

; line 406
;================================================================================
; scope: junk2 (level : 2)

; types

; line 414
;================================================================================
; scope: junk3 (level : 2)

; types

; line 422
;================================================================================
; scope: junk4 (level : 2)

; types

; line 431
;================================================================================
; scope: junk5 (level : 2)

; types

; line 439
;================================================================================
; scope: junk6 (level : 2)

; types

; line 449
;================================================================================
; scope: junk7 (level : 2)

; types

; line 467
;================================================================================
; scope: junk8 (level : 2)

; types

; line 494
;================================================================================
; scope: junk9 (level : 2)

; types
%T_junk9_subroutine_109 = type <subroutine>
%T_junk9_subroutine_110 = type <subroutine>

; line 504
;================================================================================
; scope: junk10 (level : 2)

; types

; line 512
;================================================================================
; scope: junk11 (level : 2)

; types

; line 520
;================================================================================
; scope: junk12 (level : 2)

; types
%T_junk12_subroutine_111 = type <subroutine>
%T_junk12_subroutine_112 = type <subroutine>

; line 529
;================================================================================
; scope: junk13 (level : 2)

; types
%T_junk13_subroutine_113 = type <subroutine>

; line 537
;================================================================================
; scope: junk14 (level : 2)

; types

; line 541
;================================================================================
; scope: junk14_junk15 (level : 3)

; types

; line 557
;================================================================================
; scope: junk16 (level : 2)

; types

; line 559
;================================================================================
; scope: junk17 (level : 2)

; types
%T_junk17_subroutine_114 = type <subroutine>

; line 561
;================================================================================
; scope: junk17_junk18 (level : 3)

; types

; line 578
;================================================================================
; scope: junk19 (level : 2)

; types
%T_junk19_pt = type i8*

; line 596
;================================================================================
; scope: junk20 (level : 2)

; types

; line 598
;================================================================================
; scope: junk20_inner (level : 3)

; types

; line 613
;================================================================================
; scope: random (level : 2)

; types
