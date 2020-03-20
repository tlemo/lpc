
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
%T_array_2 = type [100 x i32]
%T_array_3 = type [40 x i32]
%T_array_5 = type [3 x i32]
%T_array_4 = type [100 x %T_array_5]
%T_pointer_7 = type i32*
%T_array_6 = type [100 x %T_pointer_7]
%T_pointer_8 = type double*
%T_set_10 = type __set
%T_rec = type [48 x i8]
%T_pointer_9 = type %T_rec*

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@a1 = dso_local global %T_array_2 zeroinitializer
@a2 = dso_local global %T_array_3 zeroinitializer
@a3 = dso_local global %T_array_4 zeroinitializer
@a4 = dso_local global %T_array_6 zeroinitializer
@i = dso_local global i32 zeroinitializer
@p = dso_local global %T_pointer_8 zeroinitializer
@pr = dso_local global %T_pointer_9 zeroinitializer
;================================================================================
; metadata

!llvm.dbg.cu = !{!39}
!llvm.module.flags = !{}
!llvm.ident = !{!38}

!0 = !DIFile(filename: "intrinsics2.pas", checksumkind: CSK_None)
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: -1, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0, encoding: DW_ATE_void)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = TODO
!8 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 22, baseType: !3, size: 3200, elements: !10)
!9 = !DISubrange(count: 100, lowerBound: 0)
!10 = !{!9}
!11 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 23, baseType: !3, size: 1280, elements: !13)
!12 = !DISubrange(count: 40, lowerBound: 10)
!13 = !{!12}
!14 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 24, baseType: !15, size: 9600, elements: !19)
!15 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 24, baseType: !3, size: 96, elements: !17)
!16 = !DISubrange(count: 3, lowerBound: 1)
!17 = !{!16}
!18 = !DISubrange(count: 100, lowerBound: 0)
!19 = !{!18}
!20 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 25, baseType: !21, size: 6400, elements: !23)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 25, baseType: !3, size: 64)
!22 = !DISubrange(count: 100, lowerBound: 0)
!23 = !{!22}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 18, baseType: !6, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 19, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rec", file: !0, line: 9, size: 384, flags: DIFlagTypePassByValue, elements: !34)
!27 = TODO
!28 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !26, file: !0, line: 10, baseType: !3, size: 32, offset: 0)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !26, file: !0, line: 10, baseType: !3, size: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !26, file: !0, line: 11, baseType: !3, size: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !26, file: !0, line: 12, baseType: !3, size: 32, offset: 96)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !26, file: !0, line: 12, baseType: !6, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "c3", scope: !26, file: !0, line: 13, baseType: !27, size: 8, offset: 96)
!34 = !{!28,!29,!30,!31,!32,!33}
!35 = !{!1,!2,!3,!4,!5,!6,!7,!8,!11,!14,!15,!20,!21,!24,!25,!26,!27}
!36 = !{}
!37 = !{}
!38 = !{!"LPC 1.1 (debug) - built on Mar 20 2020"}
!39 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 20 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !35, globals: !37, nameTableKind: None)

