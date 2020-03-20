; ModuleID = 'pint.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\pint.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"


; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type i8

; line 6
;================================================================================
; scope: program scope (level : 1)

; types
%T_address = type i8
%T_alfa = type [10 x i8]
%T_beta = type [25 x i8]
%T_bit20 = type i8
%T_bit4 = type i8
%T_bit6 = type i8
%T_record_3 = type [6 x i8]
%T_array_2 = type [8651 x %T_record_3]
%T_array_4 = type [128 x i32]
%T_array_5 = type [128 x %T_alfa]
%T_range_6 = type i8
%T_settype = type i8
%T_array_7 = type [21 x %T_alfa]
%T_record_9 = type [8 x i8]
%T_array_8 = type [18001 x %T_record_9]

; program variables
@ad = dso_local global %T_address zeroinitializer
@ad1 = dso_local global %T_address zeroinitializer
@b = dso_local global i1 zeroinitializer
@c = dso_local global i8 zeroinitializer
@code = dso_local global %T_array_2 zeroinitializer
@cop = dso_local global %T_array_4 zeroinitializer
@ep = dso_local global %T_address zeroinitializer
@i = dso_local global i32 zeroinitializer
@i1 = dso_local global i32 zeroinitializer
@i2 = dso_local global i32 zeroinitializer
@i3 = dso_local global i32 zeroinitializer
@input = dso_local global %T_text zeroinitializer
@instr = dso_local global %T_array_5 zeroinitializer
@interpreting = dso_local global i1 zeroinitializer
@j = dso_local global i32 zeroinitializer
@mp = dso_local global %T_address zeroinitializer
@np = dso_local global %T_address zeroinitializer
@op = dso_local global %T_bit6 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@p = dso_local global %T_bit4 zeroinitializer
@pc = dso_local global %T_range_6 zeroinitializer
@prd = dso_local global %T_text zeroinitializer
@prr = dso_local global %T_text zeroinitializer
@q = dso_local global %T_bit20 zeroinitializer
@sp = dso_local global %T_address zeroinitializer
@sptable = dso_local global %T_array_7 zeroinitializer
@store = dso_local global %T_array_8 zeroinitializer

; line 124
;================================================================================
; scope: load (level : 2)

; types
%T_load_labelrec = type [8 x i8]
%T_load_labelrg = type i8
%T_load_array_10 = type [1851 x %T_load_labelrec]
%T_load_array_11 = type [10 x i8]

; line 138
;================================================================================
; scope: load_init (level : 3)

; line 202
;================================================================================
; scope: load_errorl (level : 3)

; line 208
;================================================================================
; scope: load_update (level : 3)

; types
%T_load_update_range_12 = type i8

; line 237
;================================================================================
; scope: load_generate (level : 3)

; line 259
;================================================================================
; scope: load_assemble (level : 3)

; line 264
;================================================================================
; scope: load_assemble_lookup (level : 4)

; line 273
;================================================================================
; scope: load_assemble_labelsearch (level : 4)

; line 279
;================================================================================
; scope: load_assemble_getname (level : 4)

; line 286
;================================================================================
; scope: load_assemble_typesymbol (level : 4)

; line 476
;================================================================================
; scope: pmd (level : 2)

; line 479
;================================================================================
; scope: pmd_pt (level : 3)

; line 500
;================================================================================
; scope: errori (level : 2)

; line 505
;================================================================================
; scope: base (level : 2)

; line 514
;================================================================================
; scope: compare (level : 2)

; line 526
;================================================================================
; scope: callsp (level : 2)

; line 530
;================================================================================
; scope: callsp_readi (level : 3)

; line 538
;================================================================================
; scope: callsp_readr (level : 3)

; line 546
;================================================================================
; scope: callsp_readc (level : 3)

; line 556
;================================================================================
; scope: callsp_writestr (level : 3)

; line 568
;================================================================================
; scope: callsp_getfile (level : 3)

; line 575
;================================================================================
; scope: callsp_putfile (level : 3)
;================================================================================
; metadata

!llvm.dbg.cu = !{!70}
!llvm.module.flags = !{!71, !72}
!llvm.ident = !{!69}

!0 = !DIFile(filename: "pint.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIBasicType(name: "void", size: 0)
!8 = !DIBasicType(name: "void", size: 0)
!9 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!10 = !DICompositeType(tag: DW_TAG_array_type, name: "alfa", file: !0, line: 76, baseType: !2, size: 80, elements: !12)
!11 = !DISubrange(count: 10)
!12 = !{!11}
!13 = !DICompositeType(tag: DW_TAG_array_type, name: "beta", file: !0, line: 74, baseType: !2, size: 200, elements: !15)
!14 = !DISubrange(count: 25)
!15 = !{!14}
!16 = !DIBasicType(name: "void", size: 0)
!17 = !DIBasicType(name: "void", size: 0)
!18 = !DIBasicType(name: "void", size: 0)
!19 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 78, baseType: !20, size: 415248, elements: !29)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 79, size: 48, flags: DIFlagTypePassByValue, elements: !27)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "op1", scope: !20, file: !0, line: 79, baseType: !18, size: 8, offset: 0)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !20, file: !0, line: 80, baseType: !17, size: 8, offset: 8)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "q1", scope: !20, file: !0, line: 81, baseType: !16, size: 8, offset: 16)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "op2", scope: !20, file: !0, line: 82, baseType: !18, size: 8, offset: 24)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "p2", scope: !20, file: !0, line: 83, baseType: !17, size: 8, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "q2", scope: !20, file: !0, line: 84, baseType: !16, size: 8, offset: 40)
!27 = !{!21,!22,!23,!24,!25,!26}
!28 = !DISubrange(count: 8651)
!29 = !{!28}
!30 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 112, baseType: !3, size: 4096, elements: !32)
!31 = !DISubrange(count: 128)
!32 = !{!31}
!33 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 111, baseType: !10, size: 10240, elements: !35)
!34 = !DISubrange(count: 128)
!35 = !{!34}
!36 = !DIBasicType(name: "void", size: 0)
!37 = !DIBasicType(name: "void", size: 0)
!38 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 113, baseType: !10, size: 1680, elements: !40)
!39 = !DISubrange(count: 21)
!40 = !{!39}
!41 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 89, baseType: !42, size: 1152064, elements: !52)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 90, size: 64, flags: DIFlagTypePassByValue, elements: !50)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "vi", scope: !42, file: !0, line: 93, baseType: !3, size: 32, offset: 0)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "vr", scope: !42, file: !0, line: 94, baseType: !6, size: 64, offset: 0)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "vb", scope: !42, file: !0, line: 95, baseType: !1, size: 8, offset: 0)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "vs", scope: !42, file: !0, line: 96, baseType: !37, size: 8, offset: 0)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "vc", scope: !42, file: !0, line: 97, baseType: !2, size: 8, offset: 0)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !42, file: !0, line: 98, baseType: !8, size: 8, offset: 0)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "vm", scope: !42, file: !0, line: 100, baseType: !3, size: 32, offset: 0)
!50 = !{!43,!44,!45,!46,!47,!48,!49}
!51 = !DISubrange(count: 18001)
!52 = !{!51}
!53 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "labelrec", file: !0, line: 128, size: 64, flags: DIFlagTypePassByValue, elements: !57)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !0, line: 129, baseType: !8, size: 8, offset: 0)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !54, file: !0, line: 130, baseType: !53, size: 32, offset: 32)
!57 = !{!55,!56}
!58 = !DIBasicType(name: "void", size: 0)
!59 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 135, baseType: !54, size: 118464, elements: !61)
!60 = !DISubrange(count: 1851)
!61 = !{!60}
!62 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 134, baseType: !2, size: 80, elements: !64)
!63 = !DISubrange(count: 10)
!64 = !{!63}
!65 = !DIBasicType(name: "void", size: 0)
!66 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!13,!16,!17,!18,!19,!20,!30,!33,!36,!37,!38,!41,!42,!53,!54,!58,!59,!62,!65}
!67 = !{}
!68 = !{}
!69 = !{!"LPC 1.1 (debug) - built on Mar 20 2020"}
!70 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 20 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, retainedTypes: !66, globals: !68, nameTableKind: None)
!71 = !{i32 2, !"CodeView", i32 1}
!72 = !{i32 2, !"Debug Info Version", i32 3}

