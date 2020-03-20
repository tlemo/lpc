
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 4
;================================================================================
; scope: program scope (level : 1)

; types
%T_array_2 = type __array
%T_array_3 = type __array
%T_array_4 = type __array
%T_array_5 = type __array
%T_pointer_6 = type double*
%T_set_8 = type __set
%T_rec = type [48 x i8]
%T_pointer_7 = type %T_rec*

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@a1 = dso_local global %T_array_2 zeroinitializer
@a2 = dso_local global %T_array_3 zeroinitializer
@a3 = dso_local global %T_array_4 zeroinitializer
@a4 = dso_local global %T_array_5 zeroinitializer
@i = dso_local global i32 zeroinitializer
@p = dso_local global %T_pointer_6 zeroinitializer
@pr = dso_local global %T_pointer_7 zeroinitializer
;================================================================================
; metadata

!llvm.dbg.cu = !{!27}
!llvm.module.flags = !{}
!llvm.ident = !{!26}

!0 = !DIFile(filename: "intrinsics2.pas", checksumkind: CSK_None)
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: -1, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0, encoding: DW_ATE_void)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = TODO
!8 = TODO
!9 = TODO
!10 = TODO
!11 = TODO
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 18, baseType: !6, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 19, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rec", file: !0, line: 9, size: 384, flags: DIFlagTypePassByValue, elements: !22)
!15 = TODO
!16 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !14, file: !0, line: 10, baseType: !3, size: 32, offset: 0)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !14, file: !0, line: 10, baseType: !3, size: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !14, file: !0, line: 11, baseType: !3, size: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !14, file: !0, line: 12, baseType: !3, size: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !14, file: !0, line: 12, baseType: !6, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "c3", scope: !14, file: !0, line: 13, baseType: !15, size: 8, offset: 96)
!22 = !{!16,!17,!18,!19,!20,!21}
!23 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!11,!12,!13,!14,!15}
!24 = !{}
!25 = !{}
!26 = !{!"LPC 1.1 (debug) - built on Mar 19 2020"}
!27 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 19 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !24, retainedTypes: !23, globals: !25, nameTableKind: None)

