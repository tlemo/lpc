
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 3
;================================================================================
; scope: program scope (level : 1)

; types
%T_A = type i32*
%T_C = type %T_B*
%T_B = type %T_C*
%T_pointer_3 = type %T_R1*
%T_R2 = type [8 x i8]
%T_pointer_2 = type %T_R2*
%T_R1 = type [8 x i8]
%T_pointer_4 = type %T_R3*
%T_R3 = type [16 x i8]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer

; line 27
;================================================================================
; scope: foo (level : 2)
;================================================================================
; metadata

!llvm.dbg.cu = !{!28}
!llvm.module.flags = !{}
!llvm.ident = !{!27}

!0 = !DIFile(filename: "test04.pas", checksumkind: CSK_None)
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: -1, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0, encoding: DW_ATE_void)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = TODO
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "A", file: !0, line: 6, baseType: !3, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "B", file: !0, line: 9, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "C", file: !0, line: 10, baseType: !9, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "R1", file: !0, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !18)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 14, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "R2", file: !0, line: 17, size: 64, flags: DIFlagTypePassByValue, elements: !16)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 18, baseType: !11, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !13, file: !0, line: 18, baseType: !14, size: 64, offset: 0)
!16 = !{!15}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !11, file: !0, line: 14, baseType: !12, size: 64, offset: 0)
!18 = !{!17}
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "R3", file: !0, line: 22, size: 128, flags: DIFlagTypePassByValue, elements: !23)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 24, baseType: !19, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !19, file: !0, line: 23, baseType: !3, size: 32, offset: 0)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !19, file: !0, line: 24, baseType: !20, size: 64, offset: 64)
!23 = !{!21,!22}
!24 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!11,!12,!13,!14,!19,!20}
!25 = !{}
!26 = !{}
!27 = !{!"LPC 1.1 (debug) - built on Mar 19 2020"}
!28 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 19 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !24, globals: !26, nameTableKind: None)

