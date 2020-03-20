
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 80
;================================================================================
; scope: program scope (level : 1)

; types
%T_string80 = type __array
%T_bstring80 = type [5 x i8]
%T_array_2 = type __array
%T_array_3 = type __array
%T_array_4 = type __array
%T_string10 = type __array
%T_array_5 = type __array
%T_array_6 = type __array

; program variables
@input = dso_local global %T_text zeroinitializer
@ints = dso_local global %T_array_2 zeroinitializer
@keywd = dso_local global %T_array_3 zeroinitializer
@linec = dso_local global i32 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@prgm = dso_local global %T_array_4 zeroinitializer
@prgmc = dso_local global i32 zeroinitializer
@strs = dso_local global %T_array_5 zeroinitializer
@temp = dso_local global %T_array_6 zeroinitializer
@top = dso_local global i32 zeroinitializer

; line 128
;================================================================================
; scope: prtlin (level : 2)

; line 132
;================================================================================
; scope: prtlin_prtkey (level : 3)

; line 165
;================================================================================
; scope: prterr (level : 2)

; line 205
;================================================================================
; scope: chkchr (level : 2)

; line 219
;================================================================================
; scope: chkend (level : 2)

; line 229
;================================================================================
; scope: getchr (level : 2)

; line 240
;================================================================================
; scope: chknxt (level : 2)

; line 251
;================================================================================
; scope: skpspc (level : 2)

; line 263
;================================================================================
; scope: chksend (level : 2)

; line 274
;================================================================================
; scope: null (level : 2)

; line 289
;================================================================================
; scope: digit (level : 2)

; line 299
;================================================================================
; scope: lcase (level : 2)

; line 311
;================================================================================
; scope: alpha (level : 2)

; line 322
;================================================================================
; scope: lint (level : 2)

; line 353
;================================================================================
; scope: schlab (level : 2)

; line 368
;================================================================================
; scope: inpstr (level : 2)

; line 389
;================================================================================
; scope: getvar (level : 2)

; line 400
;================================================================================
; scope: enter (level : 2)

; line 449
;================================================================================
; scope: keycom (level : 2)

; line 456
;================================================================================
; scope: keycom_matstr (level : 3)

; line 540
;================================================================================
; scope: getint (level : 2)

; line 557
;================================================================================
; scope: getval (level : 2)

; line 575
;================================================================================
; scope: getbval (level : 2)

; line 599
;================================================================================
; scope: putbval (level : 2)

; line 635
;================================================================================
; scope: prtbstr (level : 2)

; line 647
;================================================================================
; scope: inpbstr (level : 2)

; line 669
;================================================================================
; scope: cat (level : 2)

; line 684
;================================================================================
; scope: chkequ (level : 2)

; line 696
;================================================================================
; scope: chkltn (level : 2)

; line 708
;================================================================================
; scope: chkgtn (level : 2)

; line 720
;================================================================================
; scope: settrue (level : 2)

; line 731
;================================================================================
; scope: setfalse (level : 2)

; line 742
;================================================================================
; scope: clear (level : 2)

; line 761
;================================================================================
; scope: clrvar (level : 2)

; line 777
;================================================================================
; scope: exec (level : 2)

; line 785
;================================================================================
; scope: exec_stat (level : 3)

; line 794
;================================================================================
; scope: exec_stat_expr (level : 4)

; line 798
;================================================================================
; scope: exec_stat_expr_sexpr (level : 5)

; line 802
;================================================================================
; scope: exec_stat_expr_sexpr_term (level : 6)

; line 806
;================================================================================
; scope: exec_stat_expr_sexpr_term_factor (level : 7)

; line 1105
;================================================================================
; scope: exec_stat_let (level : 4)
;================================================================================
; metadata

!llvm.dbg.cu = !{!25}
!llvm.module.flags = !{}
!llvm.ident = !{!24}

!0 = !DIFile(filename: "basics.pas", checksumkind: CSK_None)
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: -1, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0, encoding: DW_ATE_void)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = TODO
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bstring80", file: !0, line: 102, size: 64, flags: DIFlagTypePassByValue, elements: !12)
!9 = TODO
!10 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !8, file: !0, line: 103, baseType: !3, size: 32, offset: 0)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !8, file: !0, line: 104, baseType: !9, size: 8, offset: 32)
!12 = !{!10,!11}
!13 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!14 = TODO
!15 = TODO
!16 = TODO
!17 = TODO
!18 = TODO
!19 = TODO
!20 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!21 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!13,!14,!15,!16,!17,!18,!19,!20}
!22 = !{}
!23 = !{}
!24 = !{!"LPC 1.1 (debug) - built on Mar 19 2020"}
!25 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 19 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, retainedTypes: !21, globals: !23, nameTableKind: None)

