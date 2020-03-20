
; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type __file

; line 1
;================================================================================
; scope: program scope (level : 1)

; types
%T_point = type %T_nod*
%T_nod = type [24 x i8]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@i = dso_local global i32 zeroinitializer
@j = dso_local global i32 zeroinitializer
@k = dso_local global i32 zeroinitializer
@l = dso_local global i32 zeroinitializer
@n = dso_local global i32 zeroinitializer
@n1 = dso_local global i32 zeroinitializer
@niv = dso_local global i32 zeroinitializer
@ns = dso_local global i32 zeroinitializer
@virf = dso_local global %T_point zeroinitializer

; line 12
;================================================================================
; scope: punere (level : 2)

; line 23
;================================================================================
; scope: scoatere (level : 2)
;================================================================================
; metadata

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{}
!llvm.ident = !{!18}

!0 = !DIFile(filename: "hanoi2.pas", checksumkind: CSK_None)
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: -1, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0, encoding: DW_ATE_void)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = TODO
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nod", file: !0, line: 4, size: 192, flags: DIFlagTypePassByValue, elements: !14)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "point", file: !0, line: 3, baseType: !8, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "inf1", scope: !8, file: !0, line: 5, baseType: !3, size: 32, offset: 0)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "inf2", scope: !8, file: !0, line: 5, baseType: !3, size: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "inf3", scope: !8, file: !0, line: 5, baseType: !3, size: 32, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "urm", scope: !8, file: !0, line: 6, baseType: !9, size: 64, offset: 128)
!14 = !{!10,!11,!12,!13}
!15 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9}
!16 = !{}
!17 = !{}
!18 = !{!"LPC 1.1 (debug) - built on Mar 19 2020"}
!19 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 19 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !16, retainedTypes: !15, globals: !17, nameTableKind: None)

