
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 6
;================================================================================
; scope: program scope (level : 1)

; types
%T_address = type __range
%T_alfa = type __array
%T_beta = type __array
%T_bit20 = type __range
%T_bit4 = type __range
%T_bit6 = type __range
%T_array_2 = type __array
%T_array_3 = type __array
%T_array_4 = type __array
%T_range_5 = type __range
%T_settype = type __set
%T_array_6 = type __array
%T_array_7 = type __array

; program variables
@ad = dso_local global %T_address zeroinitializer
@ad1 = dso_local global %T_address zeroinitializer
@b = dso_local global i1 zeroinitializer
@c = dso_local global i8 zeroinitializer
@code = dso_local global %T_array_2 zeroinitializer
@cop = dso_local global %T_array_3 zeroinitializer
@ep = dso_local global %T_address zeroinitializer
@i = dso_local global i32 zeroinitializer
@i1 = dso_local global i32 zeroinitializer
@i2 = dso_local global i32 zeroinitializer
@i3 = dso_local global i32 zeroinitializer
@input = dso_local global %T_text zeroinitializer
@instr = dso_local global %T_array_4 zeroinitializer
@interpreting = dso_local global i1 zeroinitializer
@j = dso_local global i32 zeroinitializer
@mp = dso_local global %T_address zeroinitializer
@np = dso_local global %T_address zeroinitializer
@op = dso_local global %T_bit6 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@p = dso_local global %T_bit4 zeroinitializer
@pc = dso_local global %T_range_5 zeroinitializer
@prd = dso_local global %T_text zeroinitializer
@prr = dso_local global %T_text zeroinitializer
@q = dso_local global %T_bit20 zeroinitializer
@sp = dso_local global %T_address zeroinitializer
@sptable = dso_local global %T_array_6 zeroinitializer
@store = dso_local global %T_array_7 zeroinitializer

; line 124
;================================================================================
; scope: load (level : 2)

; types
%T_load_labelrec = type [8 x i8]
%T_load_labelrg = type __range
%T_load_array_8 = type __array
%T_load_array_9 = type __array

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
%T_load_update_range_10 = type __range

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

!llvm.dbg.cu = !{!35}
!llvm.module.flags = !{}
!llvm.ident = !{!34}

!0 = !DIFile(filename: "pint.pas", checksumkind: CSK_None)
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: -1, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0, encoding: DW_ATE_void)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = TODO
!8 = TODO
!9 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!10 = TODO
!11 = TODO
!12 = TODO
!13 = TODO
!14 = TODO
!15 = TODO
!16 = TODO
!17 = TODO
!18 = TODO
!19 = TODO
!20 = TODO
!21 = TODO
!22 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "labelrec", file: !0, line: 128, size: 64, flags: DIFlagTypePassByValue, elements: !26)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !23, file: !0, line: 129, baseType: !8, size: 8, offset: 0)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !23, file: !0, line: 130, baseType: !22, size: 32, offset: 32)
!26 = !{!24,!25}
!27 = TODO
!28 = TODO
!29 = TODO
!30 = TODO
!31 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!11,!12,!13,!14,!15,!16,!17,!18,!19,!20,!21,!22,!23,!27,!28,!29,!30}
!32 = !{}
!33 = !{}
!34 = !{!"LPC 1.1 (debug) - built on Mar 19 2020"}
!35 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 19 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !32, retainedTypes: !31, globals: !33, nameTableKind: None)

