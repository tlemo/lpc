
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
%T_BYTE = type __range
%T_A = type [16 x %T_BYTE]
%T_REC = type [32 x i8]
%T_array_2 = type [3 x i8]
%T_array_4 = type [4 x %T_BYTE]
%T_array_3 = type [4 x %T_array_4]
%T_UNION = type [24 x i8]

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
%T_foo_pointer_5 = type %T_BYTE*
%T_foo_subroutine_6 = type __subroutine

; line 54
;================================================================================
; scope: test (level : 2)

; line 56
;================================================================================
; scope: test_bar (level : 3)
;================================================================================
; metadata

!llvm.dbg.cu = !{!37}
!llvm.module.flags = !{}
!llvm.ident = !{!36}

!0 = !DIFile(filename: "prototype.pas", checksumkind: CSK_None)
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: -1, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0, encoding: DW_ATE_void)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = TODO
!8 = !DICompositeType(tag: DW_TAG_array_type, name: "A", file: !0, line: 16, baseType: !9, size: 128, elements: !11)
!9 = TODO
!10 = !DISubrange(count: 16, lowerBound: 0)
!11 = !{!10}
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "REC", file: !0, line: 18, size: 256, flags: DIFlagTypePassByValue, elements: !16)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !12, file: !0, line: 19, baseType: !6, size: 64, offset: 0)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !12, file: !0, line: 19, baseType: !6, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !12, file: !0, line: 20, baseType: !8, size: 128, offset: 128)
!16 = !{!13,!14,!15}
!17 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 11, baseType: !2, size: 24, elements: !19)
!18 = !DISubrange(count: 3, lowerBound: 1)
!19 = !{!18}
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UNION", file: !0, line: 23, size: 192, flags: DIFlagTypePassByValue, elements: !30)
!21 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 27, baseType: !22, size: 128, elements: !26)
!22 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 27, baseType: !9, size: 32, elements: !24)
!23 = !DISubrange(count: 4, lowerBound: 0)
!24 = !{!23}
!25 = !DISubrange(count: 4, lowerBound: 0)
!26 = !{!25}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !20, file: !0, line: 24, baseType: !3, size: 32, offset: 0)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !20, file: !0, line: 26, baseType: !8, size: 128, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !20, file: !0, line: 27, baseType: !21, size: 128, offset: 32)
!30 = !{!27,!28,!29}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 38, baseType: !9, size: 64)
!32 = TODO
!33 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!12,!17,!20,!21,!22,!31,!32}
!34 = !{}
!35 = !{}
!36 = !{!"LPC 1.1 (debug) - built on Mar 20 2020"}
!37 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 20 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !34, retainedTypes: !33, globals: !35, nameTableKind: None)

