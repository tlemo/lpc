; ModuleID = 'iso7185pat.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\iso7185pat.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"


; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_text = type i8

; line 71
;================================================================================
; scope: program scope (level : 1)

; types
%T_array_2 = type [10 x i32]
%T_arri = type [10 x i32]
%T_recs = type [5 x i8]
%T_arrr = type [10 x %T_recs]
%T_esub = type i8
%T_subr = type i8
%T_string10 = type [10 x i8]
%T_cset = type i8
%T_rec = type [96 x i8]
%T_array_7 = type [2 x i32]
%T_array_6 = type [2 x %T_array_7]
%T_array_5 = type [2 x %T_array_6]
%T_array_4 = type [2 x %T_array_5]
%T_array_3 = type [2 x %T_array_4]
%T_arrim = type [2 x %T_array_3]
%T_array_8 = type [10 x i1]
%T_array_9 = type [10 x i8]
%T_range_11 = type i8
%T_array_10 = type [10 x %T_range_11]
%T_array_12 = type [10 x i32]
%T_array_13 = type [10 x %T_esub]
%T_array_14 = type [10 x %T_text]
%T_range_16 = type i8
%T_array_15 = type [10 x %T_range_16]
%T_array_17 = type [10 x i8*]
%T_array_18 = type [10 x double]
%T_array_19 = type [10 x %T_recs]
%T_array_20 = type [10 x %T_cset]
%T_array_21 = type [2 x i32]
%T_array_22 = type [26 x i32]
%T_array_23 = type [256 x i32]
%T_array_24 = type [26 x i32]
%T_set_25 = type i8
%T_set_26 = type i8
%T_set_27 = type i8
%T_set_28 = type i8
%T_array_30 = type [10 x i32]
%T_array_29 = type [10 x %T_array_30]
%T_array_31 = type [10 x i32]
%T_array_32 = type [5 x i32]
%T_file_33 = type i8
%T_file_34 = type i8
%T_text_35 = type i8
%T_file_36 = type i8
%T_file_37 = type i8
%T_file_38 = type i8
%T_file_39 = type i8
%T_file_40 = type i8
%T_file_41 = type i8
%T_file_43 = type i8
%T_file_44 = type i8
%T_file_45 = type i8
%T_array_46 = type [100 x i8*]
%T_record_58 = type [4 x i8]
%T_record_57 = type [8 x i8]
%T_record_56 = type [12 x i8]
%T_record_55 = type [16 x i8]
%T_record_54 = type [20 x i8]
%T_record_53 = type [24 x i8]
%T_record_52 = type [28 x i8]
%T_record_51 = type [32 x i8]
%T_record_50 = type [36 x i8]
%T_record_49 = type [40 x i8]
%T_prec = type [96 x i8]
%T_array_59 = type [10 x i1]
%T_array_60 = type [10 x i8]
%T_range_62 = type i8
%T_array_61 = type [10 x %T_range_62]
%T_array_63 = type [10 x i32]
%T_array_64 = type [10 x %T_esub]
%T_array_65 = type [10 x %T_text]
%T_array_66 = type [10 x i32]
%T_range_68 = type i8
%T_array_67 = type [10 x %T_range_68]
%T_array_69 = type [10 x i8*]
%T_array_70 = type [10 x double]
%T_array_71 = type [10 x %T_recs]
%T_array_72 = type [10 x %T_cset]
%T_array_73 = type [2 x i32]
%T_array_74 = type [256 x i32]
%T_array_75 = type [26 x i32]
%T_array_76 = type [10 x i32]
%T_array_77 = type [5 x i32]
%T_file_78 = type i8
%T_file_79 = type i8
%T_text_80 = type i8
%T_file_81 = type i8
%T_file_82 = type i8
%T_file_83 = type i8
%T_file_84 = type i8
%T_file_85 = type i8
%T_file_86 = type i8
%T_file_87 = type i8
%T_file_88 = type i8
%T_file_89 = type i8
%T_array_104 = type [10 x i8]
%T_record_103 = type [23 x i8]
%T_record_105 = type [2 x i8]
%T_recv = type [22 x i8]
%T_array_107 = type [10 x i8]
%T_array_109 = type [10 x i8]
%T_array_108 = type [10 x %T_array_109]
%T_set_110 = type i8
%T_set_111 = type i8
%T_set_112 = type i8
%T_set_113 = type i8
%T_array_114 = type [16 x i8]
%T_set_115 = type i8
%T_set_116 = type i8
%T_set_117 = type i8
%T_set_118 = type i8
%T_range_119 = type i8
%T_range_120 = type i8
%T_set_121 = type i8
%T_set_122 = type i8
%T_set_123 = type i8
%T_set_124 = type i8
%T_range_125 = type i8
%T_record_126 = type [60 x i8]
%T_record_127 = type [9 x i8]
%T_record_128 = type [12 x i8]
%T_record_129 = type [9 x i8]
%T_record_130 = type [9 x i8]

; program variables
@_input = dso_local global %T_text zeroinitializer
@a = dso_local global %T_array_2 zeroinitializer
@ai = dso_local global %T_arri zeroinitializer
@ara = dso_local global %T_arrr zeroinitializer
@arec = dso_local global %T_rec zeroinitializer
@as = dso_local global i32 zeroinitializer
@avb = dso_local global %T_array_8 zeroinitializer
@avc = dso_local global %T_array_9 zeroinitializer
@avcs = dso_local global %T_array_10 zeroinitializer
@ave = dso_local global %T_array_12 zeroinitializer
@aves = dso_local global %T_array_13 zeroinitializer
@avf = dso_local global %T_array_14 zeroinitializer
@avi = dso_local global %T_arri zeroinitializer
@avi2 = dso_local global %T_arri zeroinitializer
@avis = dso_local global %T_array_15 zeroinitializer
@avp = dso_local global %T_array_17 zeroinitializer
@avr = dso_local global %T_array_18 zeroinitializer
@avrc = dso_local global %T_array_19 zeroinitializer
@avs = dso_local global %T_array_20 zeroinitializer
@ba = dso_local global i1 zeroinitializer
@bb = dso_local global i1 zeroinitializer
@bc = dso_local global i1 zeroinitializer
@bia = dso_local global %T_array_21 zeroinitializer
@bs = dso_local global i32 zeroinitializer
@ca = dso_local global i8 zeroinitializer
@car = dso_local global %T_array_22 zeroinitializer
@cb = dso_local global i8 zeroinitializer
@cc = dso_local global i8 zeroinitializer
@ci = dso_local global i8 zeroinitializer
@cia = dso_local global %T_array_23 zeroinitializer
@cnt = dso_local global i32 zeroinitializer
@cnt2 = dso_local global i32 zeroinitializer
@cs = dso_local global i32 zeroinitializer
@csia = dso_local global %T_array_24 zeroinitializer
@csta = dso_local global %T_set_25 zeroinitializer
@cstb = dso_local global %T_set_25 zeroinitializer
@cstc = dso_local global %T_set_25 zeroinitializer
@cstd = dso_local global %T_set_25 zeroinitializer
@cste = dso_local global %T_set_26 zeroinitializer
@cstf = dso_local global %T_set_27 zeroinitializer
@cstg = dso_local global %T_set_28 zeroinitializer
@da = dso_local global %T_array_29 zeroinitializer
@ds = dso_local global i32 zeroinitializer
@ea = dso_local global i32 zeroinitializer
@ei = dso_local global i32 zeroinitializer
@eia = dso_local global %T_array_31 zeroinitializer
@es = dso_local global i32 zeroinitializer
@esia = dso_local global %T_array_32 zeroinitializer
@fa = dso_local global %T_file_33 zeroinitializer
@fb = dso_local global %T_file_34 zeroinitializer
@fc = dso_local global %T_text_35 zeroinitializer
@fe = dso_local global %T_file_36 zeroinitializer
@fes = dso_local global %T_file_37 zeroinitializer
@fi = dso_local global %T_file_38 zeroinitializer
@fp = dso_local global %T_file_39 zeroinitializer
@fr = dso_local global %T_file_40 zeroinitializer
@frc = dso_local global %T_file_41 zeroinitializer
@fs = dso_local global %T_file_43 zeroinitializer
@fst = dso_local global %T_file_44 zeroinitializer
@fstc = dso_local global %T_file_45 zeroinitializer
@ft = dso_local global %T_text zeroinitializer
@gs = dso_local global i32 zeroinitializer
@hs = dso_local global i32 zeroinitializer
@i = dso_local global i32 zeroinitializer
@iap = dso_local global %T_array_46 zeroinitializer
@ip = dso_local global i8* zeroinitializer
@ipa = dso_local global i8* zeroinitializer
@ipb = dso_local global i8* zeroinitializer
@ipc = dso_local global i8* zeroinitializer
@ipd = dso_local global i8* zeroinitializer
@ipe = dso_local global i8* zeroinitializer
@mdar = dso_local global %T_arrim zeroinitializer
@mdar2 = dso_local global %T_arrim zeroinitializer
@n = dso_local global i32 zeroinitializer
@nvr = dso_local global %T_record_49 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@parec = dso_local global %T_prec zeroinitializer
@pavb = dso_local global %T_array_59 zeroinitializer
@pavc = dso_local global %T_array_60 zeroinitializer
@pavcs = dso_local global %T_array_61 zeroinitializer
@pave = dso_local global %T_array_63 zeroinitializer
@paves = dso_local global %T_array_64 zeroinitializer
@pavf = dso_local global %T_array_65 zeroinitializer
@pavi = dso_local global %T_array_66 zeroinitializer
@pavis = dso_local global %T_array_67 zeroinitializer
@pavp = dso_local global %T_array_69 zeroinitializer
@pavr = dso_local global %T_array_70 zeroinitializer
@pavrc = dso_local global %T_array_71 zeroinitializer
@pavs = dso_local global %T_array_72 zeroinitializer
@pbia = dso_local global %T_array_73 zeroinitializer
@pcia = dso_local global %T_array_74 zeroinitializer
@pcsia = dso_local global %T_array_75 zeroinitializer
@peia = dso_local global %T_array_76 zeroinitializer
@pesia = dso_local global %T_array_77 zeroinitializer
@pfa = dso_local global %T_file_78 zeroinitializer
@pfb = dso_local global %T_file_79 zeroinitializer
@pfc = dso_local global %T_text_80 zeroinitializer
@pfe = dso_local global %T_file_81 zeroinitializer
@pfes = dso_local global %T_file_82 zeroinitializer
@pfi = dso_local global %T_file_83 zeroinitializer
@pfp = dso_local global %T_file_84 zeroinitializer
@pfr = dso_local global %T_file_85 zeroinitializer
@pfrc = dso_local global %T_file_86 zeroinitializer
@pfs = dso_local global %T_file_87 zeroinitializer
@pfst = dso_local global %T_file_88 zeroinitializer
@pfstc = dso_local global %T_file_89 zeroinitializer
@pi1 = dso_local global i8* zeroinitializer
@pi2 = dso_local global i8* zeroinitializer
@pta = dso_local global i8* zeroinitializer
@ptb = dso_local global i8* zeroinitializer
@ptc = dso_local global i8* zeroinitializer
@pte = dso_local global i8* zeroinitializer
@ptes = dso_local global i8* zeroinitializer
@pti = dso_local global i8* zeroinitializer
@pti1 = dso_local global i8* zeroinitializer
@ptp = dso_local global i8* zeroinitializer
@ptr = dso_local global i8* zeroinitializer
@ptrc = dso_local global i8* zeroinitializer
@pts = dso_local global i8* zeroinitializer
@ptst = dso_local global i8* zeroinitializer
@ptstc = dso_local global i8* zeroinitializer
@q = dso_local global i32 zeroinitializer
@r = dso_local global %T_record_103 zeroinitializer
@ra = dso_local global double zeroinitializer
@rb = dso_local global double zeroinitializer
@rc = dso_local global double zeroinitializer
@rcast = dso_local global %T_record_105 zeroinitializer
@rcastt = dso_local global i32 zeroinitializer
@rd = dso_local global double zeroinitializer
@re = dso_local global double zeroinitializer
@rn = dso_local global i32 zeroinitializer
@rndseq = dso_local global i32 zeroinitializer
@rpa = dso_local global i8* zeroinitializer
@s = dso_local global %T_string10 zeroinitializer
@sa = dso_local global %T_array_107 zeroinitializer
@sar = dso_local global %T_array_108 zeroinitializer
@sb = dso_local global %T_array_107 zeroinitializer
@sba = dso_local global %T_set_110 zeroinitializer
@sbb = dso_local global %T_set_110 zeroinitializer
@sbc = dso_local global %T_set_110 zeroinitializer
@sbd = dso_local global %T_set_110 zeroinitializer
@sbe = dso_local global %T_set_111 zeroinitializer
@sbf = dso_local global %T_set_112 zeroinitializer
@sbg = dso_local global %T_set_113 zeroinitializer
@sc = dso_local global %T_array_107 zeroinitializer
@sena = dso_local global %T_set_115 zeroinitializer
@senb = dso_local global %T_set_115 zeroinitializer
@senc = dso_local global %T_set_115 zeroinitializer
@send = dso_local global %T_set_115 zeroinitializer
@sene = dso_local global %T_set_116 zeroinitializer
@senf = dso_local global %T_set_117 zeroinitializer
@seng = dso_local global %T_set_118 zeroinitializer
@sras = dso_local global %T_range_119 zeroinitializer
@srbs = dso_local global %T_range_119 zeroinitializer
@srcs = dso_local global %T_range_119 zeroinitializer
@srds = dso_local global %T_range_119 zeroinitializer
@sres = dso_local global %T_range_119 zeroinitializer
@srx = dso_local global %T_range_120 zeroinitializer
@sry = dso_local global %T_range_120 zeroinitializer
@srz = dso_local global %T_range_120 zeroinitializer
@sta = dso_local global %T_set_121 zeroinitializer
@stb = dso_local global %T_set_121 zeroinitializer
@stc = dso_local global %T_set_121 zeroinitializer
@std = dso_local global %T_set_121 zeroinitializer
@ste = dso_local global %T_set_122 zeroinitializer
@stf = dso_local global %T_set_123 zeroinitializer
@stg = dso_local global %T_set_124 zeroinitializer
@sva = dso_local global i32 zeroinitializer
@svb = dso_local global i32 zeroinitializer
@svc = dso_local global i32 zeroinitializer
@t = dso_local global i32 zeroinitializer
@vnum = dso_local global %T_range_125 zeroinitializer
@vra = dso_local global %T_record_126 zeroinitializer
@vrec = dso_local global %T_recv zeroinitializer
@vvrb = dso_local global %T_record_127 zeroinitializer
@vvre = dso_local global %T_record_128 zeroinitializer
@vvres = dso_local global %T_record_129 zeroinitializer
@vvrs = dso_local global %T_record_130 zeroinitializer
@x = dso_local global i32 zeroinitializer
@y = dso_local global i32 zeroinitializer
@z = dso_local global i32 zeroinitializer

; line 398
;================================================================================
; scope: junk1 (level : 2)

; line 406
;================================================================================
; scope: junk2 (level : 2)

; line 414
;================================================================================
; scope: junk3 (level : 2)

; line 422
;================================================================================
; scope: junk4 (level : 2)

; line 431
;================================================================================
; scope: junk5 (level : 2)

; line 439
;================================================================================
; scope: junk6 (level : 2)

; line 449
;================================================================================
; scope: junk7 (level : 2)

; line 467
;================================================================================
; scope: junk8 (level : 2)

; line 494
;================================================================================
; scope: junk9 (level : 2)

; types
%T_junk9_subroutine_131 = type i8
%T_junk9_subroutine_132 = type i8

; line 504
;================================================================================
; scope: junk10 (level : 2)

; line 512
;================================================================================
; scope: junk11 (level : 2)

; line 520
;================================================================================
; scope: junk12 (level : 2)

; types
%T_junk12_subroutine_133 = type i8
%T_junk12_subroutine_134 = type i8

; line 529
;================================================================================
; scope: junk13 (level : 2)

; types
%T_junk13_subroutine_135 = type i8

; line 537
;================================================================================
; scope: junk14 (level : 2)

; line 541
;================================================================================
; scope: junk14_junk15 (level : 3)

; line 557
;================================================================================
; scope: junk16 (level : 2)

; line 559
;================================================================================
; scope: junk17 (level : 2)

; types
%T_junk17_subroutine_136 = type i8

; line 561
;================================================================================
; scope: junk17_junk18 (level : 3)

; line 578
;================================================================================
; scope: junk19 (level : 2)

; line 596
;================================================================================
; scope: junk20 (level : 2)

; line 598
;================================================================================
; scope: junk20_inner (level : 3)

; line 613
;================================================================================
; scope: random (level : 2)
;================================================================================
; metadata

!llvm.dbg.cu = !{!381}
!llvm.module.flags = !{!382, !383}
!llvm.ident = !{!380}

!0 = !DIFile(filename: "iso7185pat.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIBasicType(name: "void", size: 0)
!8 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 158, baseType: !3, size: 320, elements: !10)
!9 = !DISubrange(count: 10)
!10 = !{!9}
!11 = !DICompositeType(tag: DW_TAG_array_type, name: "arri", file: !0, line: 96, baseType: !3, size: 320, elements: !13)
!12 = !DISubrange(count: 10)
!13 = !{!12}
!14 = !DICompositeType(tag: DW_TAG_array_type, name: "arrr", file: !0, line: 150, baseType: !15, size: 640, elements: !20)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "recs", file: !0, line: 100, size: 64, flags: DIFlagTypePassByValue, elements: !18)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !15, file: !0, line: 102, baseType: !3, size: 32, offset: 0)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !15, file: !0, line: 103, baseType: !2, size: 8, offset: 32)
!18 = !{!16,!17}
!19 = !DISubrange(count: 10)
!20 = !{!19}
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rec", file: !0, line: 106, size: 768, flags: DIFlagTypePassByValue, elements: !42)
!22 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!23 = !DIBasicType(name: "void", size: 0)
!24 = !DIBasicType(name: "void", size: 0)
!25 = !DICompositeType(tag: DW_TAG_array_type, name: "string10", file: !0, line: 91, baseType: !2, size: 80, elements: !27)
!26 = !DISubrange(count: 10)
!27 = !{!26}
!28 = !DIBasicType(name: "void", size: 0)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "iptr", file: !0, line: 99, baseType: !3, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !21, file: !0, line: 108, baseType: !3, size: 32, offset: 0)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !21, file: !0, line: 109, baseType: !1, size: 8, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !21, file: !0, line: 110, baseType: !2, size: 8, offset: 40)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !21, file: !0, line: 111, baseType: !22, size: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !21, file: !0, line: 112, baseType: !23, size: 8, offset: 96)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !21, file: !0, line: 113, baseType: !24, size: 8, offset: 104)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !21, file: !0, line: 114, baseType: !6, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !21, file: !0, line: 115, baseType: !25, size: 80, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !21, file: !0, line: 116, baseType: !11, size: 320, offset: 288)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !21, file: !0, line: 117, baseType: !15, size: 64, offset: 608)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "stc", scope: !21, file: !0, line: 118, baseType: !28, size: 8, offset: 672)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !21, file: !0, line: 119, baseType: !29, size: 64, offset: 704)
!42 = !{!30,!31,!32,!33,!34,!35,!36,!37,!38,!39,!40,!41}
!43 = !DICompositeType(tag: DW_TAG_array_type, name: "arrim", file: !0, line: 97, baseType: !44, size: 2048, elements: !60)
!44 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 97, baseType: !45, size: 1024, elements: !58)
!45 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 97, baseType: !46, size: 512, elements: !56)
!46 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 97, baseType: !47, size: 256, elements: !54)
!47 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 97, baseType: !48, size: 128, elements: !52)
!48 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 97, baseType: !3, size: 64, elements: !50)
!49 = !DISubrange(count: 2)
!50 = !{!49}
!51 = !DISubrange(count: 2)
!52 = !{!51}
!53 = !DISubrange(count: 2)
!54 = !{!53}
!55 = !DISubrange(count: 2)
!56 = !{!55}
!57 = !DISubrange(count: 2)
!58 = !{!57}
!59 = !DISubrange(count: 2)
!60 = !{!59}
!61 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 207, baseType: !1, size: 80, elements: !63)
!62 = !DISubrange(count: 10)
!63 = !{!62}
!64 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 211, baseType: !2, size: 80, elements: !66)
!65 = !DISubrange(count: 10)
!66 = !{!65}
!67 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 213, baseType: !68, size: 80, elements: !70)
!68 = !DIBasicType(name: "void", size: 0)
!69 = !DISubrange(count: 10)
!70 = !{!69}
!71 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 215, baseType: !22, size: 320, elements: !73)
!72 = !DISubrange(count: 10)
!73 = !{!72}
!74 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 217, baseType: !23, size: 80, elements: !76)
!75 = !DISubrange(count: 10)
!76 = !{!75}
!77 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 223, baseType: !7, size: 80, elements: !79)
!78 = !DISubrange(count: 10)
!79 = !{!78}
!80 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 205, baseType: !81, size: 80, elements: !83)
!81 = !DIBasicType(name: "void", size: 0)
!82 = !DISubrange(count: 10)
!83 = !{!82}
!84 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 225, baseType: !29, size: 640, elements: !86)
!85 = !DISubrange(count: 10)
!86 = !{!85}
!87 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 209, baseType: !6, size: 640, elements: !89)
!88 = !DISubrange(count: 10)
!89 = !{!88}
!90 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 221, baseType: !15, size: 640, elements: !92)
!91 = !DISubrange(count: 10)
!92 = !{!91}
!93 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 219, baseType: !28, size: 80, elements: !95)
!94 = !DISubrange(count: 10)
!95 = !{!94}
!96 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 227, baseType: !3, size: 64, elements: !98)
!97 = !DISubrange(count: 2)
!98 = !{!97}
!99 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 171, baseType: !3, size: 832, elements: !101)
!100 = !DISubrange(count: 26)
!101 = !{!100}
!102 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 229, baseType: !3, size: 8192, elements: !104)
!103 = !DISubrange(count: 256)
!104 = !{!103}
!105 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 231, baseType: !3, size: 832, elements: !107)
!106 = !DISubrange(count: 26)
!107 = !{!106}
!108 = !DIBasicType(name: "void", size: 0)
!109 = !DIBasicType(name: "void", size: 0)
!110 = !DIBasicType(name: "void", size: 0)
!111 = !DIBasicType(name: "void", size: 0)
!112 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 168, baseType: !113, size: 3200, elements: !117)
!113 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 168, baseType: !3, size: 320, elements: !115)
!114 = !DISubrange(count: 10)
!115 = !{!114}
!116 = !DISubrange(count: 10)
!117 = !{!116}
!118 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 233, baseType: !3, size: 320, elements: !120)
!119 = !DISubrange(count: 10)
!120 = !{!119}
!121 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 235, baseType: !3, size: 160, elements: !123)
!122 = !DISubrange(count: 5)
!123 = !{!122}
!124 = !DIBasicType(name: "void", size: 0)
!125 = !DIBasicType(name: "void", size: 0)
!126 = !DIBasicType(name: "void", size: 0)
!127 = !DIBasicType(name: "void", size: 0)
!128 = !DIBasicType(name: "void", size: 0)
!129 = !DIBasicType(name: "void", size: 0)
!130 = !DIBasicType(name: "void", size: 0)
!131 = !DIBasicType(name: "void", size: 0)
!132 = !DIBasicType(name: "void", size: 0)
!133 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!134 = !DIBasicType(name: "void", size: 0)
!135 = !DIBasicType(name: "void", size: 0)
!136 = !DIBasicType(name: "void", size: 0)
!137 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 390, baseType: !138, size: 6400, elements: !140)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 390, baseType: !3, size: 64)
!139 = !DISubrange(count: 100)
!140 = !{!139}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 389, baseType: !3, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 300, size: 320, flags: DIFlagTypePassByValue, elements: !180)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 303, size: 288, flags: DIFlagTypePassByValue, elements: !177)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 306, size: 256, flags: DIFlagTypePassByValue, elements: !174)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 309, size: 224, flags: DIFlagTypePassByValue, elements: !171)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 312, size: 192, flags: DIFlagTypePassByValue, elements: !168)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 315, size: 160, flags: DIFlagTypePassByValue, elements: !165)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 318, size: 128, flags: DIFlagTypePassByValue, elements: !162)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 321, size: 96, flags: DIFlagTypePassByValue, elements: !159)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 324, size: 64, flags: DIFlagTypePassByValue, elements: !156)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 327, size: 32, flags: DIFlagTypePassByValue, elements: !153)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !151, file: !0, line: 329, baseType: !3, size: 32, offset: 0)
!153 = !{!152}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !150, file: !0, line: 326, baseType: !3, size: 32, offset: 0)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !150, file: !0, line: 327, baseType: !151, size: 32, offset: 32)
!156 = !{!154,!155}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !149, file: !0, line: 323, baseType: !3, size: 32, offset: 0)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !149, file: !0, line: 324, baseType: !150, size: 64, offset: 32)
!159 = !{!157,!158}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !148, file: !0, line: 320, baseType: !3, size: 32, offset: 0)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !148, file: !0, line: 321, baseType: !149, size: 96, offset: 32)
!162 = !{!160,!161}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !147, file: !0, line: 317, baseType: !3, size: 32, offset: 0)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !147, file: !0, line: 318, baseType: !148, size: 128, offset: 32)
!165 = !{!163,!164}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !146, file: !0, line: 314, baseType: !3, size: 32, offset: 0)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !146, file: !0, line: 315, baseType: !147, size: 160, offset: 32)
!168 = !{!166,!167}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !145, file: !0, line: 311, baseType: !3, size: 32, offset: 0)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !145, file: !0, line: 312, baseType: !146, size: 192, offset: 32)
!171 = !{!169,!170}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !144, file: !0, line: 308, baseType: !3, size: 32, offset: 0)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !144, file: !0, line: 309, baseType: !145, size: 224, offset: 32)
!174 = !{!172,!173}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !143, file: !0, line: 305, baseType: !3, size: 32, offset: 0)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !143, file: !0, line: 306, baseType: !144, size: 256, offset: 32)
!177 = !{!175,!176}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !142, file: !0, line: 302, baseType: !3, size: 32, offset: 0)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !142, file: !0, line: 303, baseType: !143, size: 288, offset: 32)
!180 = !{!178,!179}
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prec", file: !0, line: 122, size: 768, flags: DIFlagTypePassByValue, elements: !194)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !181, file: !0, line: 124, baseType: !3, size: 32, offset: 0)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !181, file: !0, line: 125, baseType: !1, size: 8, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !181, file: !0, line: 126, baseType: !2, size: 8, offset: 40)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !181, file: !0, line: 127, baseType: !22, size: 32, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !181, file: !0, line: 128, baseType: !23, size: 8, offset: 96)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !181, file: !0, line: 129, baseType: !24, size: 8, offset: 104)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !181, file: !0, line: 130, baseType: !6, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !181, file: !0, line: 131, baseType: !25, size: 80, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !181, file: !0, line: 132, baseType: !11, size: 320, offset: 288)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !181, file: !0, line: 133, baseType: !15, size: 64, offset: 608)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "stc", scope: !181, file: !0, line: 134, baseType: !28, size: 8, offset: 672)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !181, file: !0, line: 135, baseType: !29, size: 64, offset: 704)
!194 = !{!182,!183,!184,!185,!186,!187,!188,!189,!190,!191,!192,!193}
!195 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 208, baseType: !1, size: 80, elements: !197)
!196 = !DISubrange(count: 10)
!197 = !{!196}
!198 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 212, baseType: !2, size: 80, elements: !200)
!199 = !DISubrange(count: 10)
!200 = !{!199}
!201 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 214, baseType: !202, size: 80, elements: !204)
!202 = !DIBasicType(name: "void", size: 0)
!203 = !DISubrange(count: 10)
!204 = !{!203}
!205 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 216, baseType: !22, size: 320, elements: !207)
!206 = !DISubrange(count: 10)
!207 = !{!206}
!208 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 218, baseType: !23, size: 80, elements: !210)
!209 = !DISubrange(count: 10)
!210 = !{!209}
!211 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 224, baseType: !7, size: 80, elements: !213)
!212 = !DISubrange(count: 10)
!213 = !{!212}
!214 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 204, baseType: !3, size: 320, elements: !216)
!215 = !DISubrange(count: 10)
!216 = !{!215}
!217 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 206, baseType: !218, size: 80, elements: !220)
!218 = !DIBasicType(name: "void", size: 0)
!219 = !DISubrange(count: 10)
!220 = !{!219}
!221 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 226, baseType: !29, size: 640, elements: !223)
!222 = !DISubrange(count: 10)
!223 = !{!222}
!224 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 210, baseType: !6, size: 640, elements: !226)
!225 = !DISubrange(count: 10)
!226 = !{!225}
!227 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 222, baseType: !15, size: 640, elements: !229)
!228 = !DISubrange(count: 10)
!229 = !{!228}
!230 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 220, baseType: !28, size: 80, elements: !232)
!231 = !DISubrange(count: 10)
!232 = !{!231}
!233 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 228, baseType: !3, size: 64, elements: !235)
!234 = !DISubrange(count: 2)
!235 = !{!234}
!236 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 230, baseType: !3, size: 8192, elements: !238)
!237 = !DISubrange(count: 256)
!238 = !{!237}
!239 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 232, baseType: !3, size: 832, elements: !241)
!240 = !DISubrange(count: 26)
!241 = !{!240}
!242 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 234, baseType: !3, size: 320, elements: !244)
!243 = !DISubrange(count: 10)
!244 = !{!243}
!245 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 236, baseType: !3, size: 160, elements: !247)
!246 = !DISubrange(count: 5)
!247 = !{!246}
!248 = !DIBasicType(name: "void", size: 0)
!249 = !DIBasicType(name: "void", size: 0)
!250 = !DIBasicType(name: "void", size: 0)
!251 = !DIBasicType(name: "void", size: 0)
!252 = !DIBasicType(name: "void", size: 0)
!253 = !DIBasicType(name: "void", size: 0)
!254 = !DIBasicType(name: "void", size: 0)
!255 = !DIBasicType(name: "void", size: 0)
!256 = !DIBasicType(name: "void", size: 0)
!257 = !DIBasicType(name: "void", size: 0)
!258 = !DIBasicType(name: "void", size: 0)
!259 = !DIBasicType(name: "void", size: 0)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 396, baseType: !3, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 385, baseType: !11, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 378, baseType: !1, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 379, baseType: !2, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 380, baseType: !22, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 381, baseType: !23, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 377, baseType: !3, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 388, baseType: null, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 383, baseType: !6, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 386, baseType: !15, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 382, baseType: !24, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 384, baseType: !25, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 387, baseType: !28, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 159, size: 192, flags: DIFlagTypePassByValue, elements: !282)
!274 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 165, baseType: !2, size: 80, elements: !276)
!275 = !DISubrange(count: 10)
!276 = !{!275}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "rx", scope: !273, file: !0, line: 161, baseType: !3, size: 32, offset: 0)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !273, file: !0, line: 162, baseType: !2, size: 8, offset: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "ry", scope: !273, file: !0, line: 163, baseType: !3, size: 32, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !273, file: !0, line: 164, baseType: !1, size: 8, offset: 96)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !273, file: !0, line: 165, baseType: !274, size: 80, offset: 104)
!282 = !{!277,!278,!279,!280,!281}
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 395, size: 16, flags: DIFlagTypePassByValue, elements: !285)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "rcastt", scope: !283, file: !0, line: 395, baseType: !1, size: 8, offset: 0)
!285 = !{!284}
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "recv", file: !0, line: 138, size: 192, flags: DIFlagTypePassByValue, elements: !292)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !286, file: !0, line: 140, baseType: !3, size: 32, offset: 0)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !286, file: !0, line: 141, baseType: !2, size: 8, offset: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !286, file: !0, line: 142, baseType: !1, size: 8, offset: 40)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !286, file: !0, line: 144, baseType: !25, size: 80, offset: 48)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !286, file: !0, line: 145, baseType: !22, size: 32, offset: 64)
!292 = !{!287,!288,!289,!290,!291}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 350, baseType: !21, size: 64)
!294 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 169, baseType: !2, size: 80, elements: !296)
!295 = !DISubrange(count: 10)
!296 = !{!295}
!297 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 172, baseType: !298, size: 800, elements: !302)
!298 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 172, baseType: !2, size: 80, elements: !300)
!299 = !DISubrange(count: 10)
!300 = !{!299}
!301 = !DISubrange(count: 10)
!302 = !{!301}
!303 = !DIBasicType(name: "void", size: 0)
!304 = !DIBasicType(name: "void", size: 0)
!305 = !DIBasicType(name: "void", size: 0)
!306 = !DIBasicType(name: "void", size: 0)
!307 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 78, baseType: !2, size: 128, elements: !309)
!308 = !DISubrange(count: 16)
!309 = !{!308}
!310 = !DIBasicType(name: "void", size: 0)
!311 = !DIBasicType(name: "void", size: 0)
!312 = !DIBasicType(name: "void", size: 0)
!313 = !DIBasicType(name: "void", size: 0)
!314 = !DIBasicType(name: "void", size: 0)
!315 = !DIBasicType(name: "void", size: 0)
!316 = !DIBasicType(name: "void", size: 0)
!317 = !DIBasicType(name: "void", size: 0)
!318 = !DIBasicType(name: "void", size: 0)
!319 = !DIBasicType(name: "void", size: 0)
!320 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!321 = !DIBasicType(name: "void", size: 0)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 239, size: 512, flags: DIFlagTypePassByValue, elements: !349)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !322, file: !0, line: 241, baseType: !3, size: 32, offset: 0)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "vt", scope: !322, file: !0, line: 242, baseType: !320, size: 32, offset: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "vdi", scope: !322, file: !0, line: 244, baseType: !3, size: 32, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !322, file: !0, line: 244, baseType: !3, size: 32, offset: 96)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "vdb", scope: !322, file: !0, line: 245, baseType: !1, size: 8, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !322, file: !0, line: 245, baseType: !3, size: 32, offset: 96)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "vdc", scope: !322, file: !0, line: 246, baseType: !2, size: 8, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !322, file: !0, line: 246, baseType: !3, size: 32, offset: 96)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "vde", scope: !322, file: !0, line: 247, baseType: !22, size: 32, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !322, file: !0, line: 247, baseType: !3, size: 32, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "vdes", scope: !322, file: !0, line: 248, baseType: !23, size: 8, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !322, file: !0, line: 248, baseType: !3, size: 32, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "vds", scope: !322, file: !0, line: 249, baseType: !24, size: 8, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !322, file: !0, line: 249, baseType: !3, size: 32, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "vdr", scope: !322, file: !0, line: 250, baseType: !6, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !322, file: !0, line: 250, baseType: !3, size: 32, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "vdst", scope: !322, file: !0, line: 251, baseType: !25, size: 80, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !322, file: !0, line: 251, baseType: !3, size: 32, offset: 160)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "vda", scope: !322, file: !0, line: 252, baseType: !11, size: 320, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !322, file: !0, line: 252, baseType: !3, size: 32, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "vdrc", scope: !322, file: !0, line: 253, baseType: !15, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !322, file: !0, line: 253, baseType: !3, size: 32, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "vdstc", scope: !322, file: !0, line: 254, baseType: !28, size: 8, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !322, file: !0, line: 254, baseType: !3, size: 32, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "vdp", scope: !322, file: !0, line: 255, baseType: !29, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !322, file: !0, line: 255, baseType: !3, size: 32, offset: 128)
!349 = !{!323,!324,!325,!326,!327,!328,!329,!330,!331,!332,!333,!334,!335,!336,!337,!338,!339,!340,!341,!342,!343,!344,!345,!346,!347,!348}
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 270, size: 96, flags: DIFlagTypePassByValue, elements: !354)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "vt", scope: !350, file: !0, line: 272, baseType: !1, size: 8, offset: 0)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "vi", scope: !350, file: !0, line: 274, baseType: !3, size: 32, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vb", scope: !350, file: !0, line: 275, baseType: !1, size: 8, offset: 8)
!354 = !{!351,!352,!353}
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 280, size: 96, flags: DIFlagTypePassByValue, elements: !359)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "vt", scope: !355, file: !0, line: 282, baseType: !22, size: 32, offset: 0)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "vi", scope: !355, file: !0, line: 284, baseType: !3, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "vb", scope: !355, file: !0, line: 285, baseType: !1, size: 8, offset: 32)
!359 = !{!356,!357,!358}
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 290, size: 96, flags: DIFlagTypePassByValue, elements: !364)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "vt", scope: !360, file: !0, line: 292, baseType: !23, size: 8, offset: 0)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "vi", scope: !360, file: !0, line: 294, baseType: !3, size: 32, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "vb", scope: !360, file: !0, line: 295, baseType: !1, size: 8, offset: 8)
!364 = !{!361,!362,!363}
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 260, size: 96, flags: DIFlagTypePassByValue, elements: !369)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "vt", scope: !365, file: !0, line: 262, baseType: !24, size: 8, offset: 0)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "vi", scope: !365, file: !0, line: 264, baseType: !3, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "vb", scope: !365, file: !0, line: 265, baseType: !1, size: 8, offset: 8)
!369 = !{!366,!367,!368}
!370 = !DIBasicType(name: "void", size: 0)
!371 = !DIBasicType(name: "void", size: 0)
!372 = !DIBasicType(name: "void", size: 0)
!373 = !DIBasicType(name: "void", size: 0)
!374 = !DIBasicType(name: "void", size: 0)
!375 = !DIBasicType(name: "void", size: 0)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "pt", file: !0, line: 580, baseType: !2, size: 64)
!377 = !{!1,!2,!3,!4,!5,!6,!7,!8,!11,!14,!15,!21,!22,!23,!24,!25,!28,!29,!43,!44,!45,!46,!47,!48,!61,!64,!67,!68,!71,!74,!77,!80,!81,!84,!87,!90,!93,!96,!99,!102,!105,!108,!109,!110,!111,!112,!113,!118,!121,!124,!125,!126,!127,!128,!129,!130,!131,!132,!133,!134,!135,!136,!137,!138,!141,!142,!143,!144,!145,!146,!147,!148,!149,!150,!151,!181,!195,!198,!201,!202,!205,!208,!211,!214,!217,!218,!221,!224,!227,!230,!233,!236,!239,!242,!245,!248,!249,!250,!251,!252,!253,!254,!255,!256,!257,!258,!259,!260,!261,!262,!263,!264,!265,!266,!267,!268,!269,!270,!271,!272,!273,!274,!283,!286,!293,!294,!297,!298,!303,!304,!305,!306,!307,!310,!311,!312,!313,!314,!315,!316,!317,!318,!319,!320,!321,!322,!350,!355,!360,!365,!370,!371,!372,!373,!374,!375,!376}
!378 = !{}
!379 = !{}
!380 = !{!"LPC 1.1 (debug) - built on Mar 20 2020"}
!381 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 20 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !378, retainedTypes: !377, globals: !379, nameTableKind: None)
!382 = !{i32 2, !"CodeView", i32 1}
!383 = !{i32 2, !"Debug Info Version", i32 3}

