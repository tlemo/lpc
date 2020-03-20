
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 7
;================================================================================
; scope: program scope (level : 1)

; types
%T_A = type __array
%T_BYTE = type __range
%T_REC = type [17 x i8]
%T_array_2 = type __array
%T_array_3 = type __array
%T_UNION = type [9 x i8]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@gr = dso_local global %T_REC zeroinitializer
@gv = dso_local global i32 zeroinitializer
@gv2 = dso_local global i32 zeroinitializer

; line 34
;================================================================================
; scope: foo (level : 2)

; types
%T_foo_pointer_4 = type %T_BYTE*
%T_foo_subroutine_5 = type __subroutine

; line 54
;================================================================================
; scope: test (level : 2)

; line 56
;================================================================================
; scope: test_bar (level : 3)
;================================================================================
; metadata

!llvm.dbg.cu = !{!28}
!llvm.module.flags = !{}
!llvm.ident = !{!27}

!0 = !DIFile(filename: "prototype.pas", checksumkind: CSK_None)
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: -1, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0, encoding: DW_ATE_void)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = TODO
!8 = TODO
!9 = TODO
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "REC", file: !0, line: 18, size: 192, flags: DIFlagTypePassByValue, elements: !14)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !10, file: !0, line: 19, baseType: !6, size: 64, offset: 0)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !10, file: !0, line: 19, baseType: !6, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !10, file: !0, line: 20, baseType: !8, size: 8, offset: 128)
!14 = !{!11,!12,!13}
!15 = TODO
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UNION", file: !0, line: 23, size: 96, flags: DIFlagTypePassByValue, elements: !21)
!17 = TODO
!18 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !16, file: !0, line: 24, baseType: !3, size: 32, offset: 0)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !16, file: !0, line: 26, baseType: !8, size: 8, offset: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !16, file: !0, line: 27, baseType: !17, size: 8, offset: 32)
!21 = !{!18,!19,!20}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 38, baseType: !9, size: 64)
!23 = TODO
!24 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!15,!16,!17,!22,!23}
!25 = !{}
!26 = !{}
!27 = !{!"LPC 1.1 (debug) - built on Mar 19 2020"}
!28 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 19 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !24, globals: !26, nameTableKind: None)

