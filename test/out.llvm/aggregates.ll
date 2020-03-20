
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
%T_A = type __array
%T_R = type [12 x i8]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@v1 = dso_local global %T_A zeroinitializer
@v2 = dso_local global %T_A zeroinitializer
@v3 = dso_local global %T_R zeroinitializer
@v4 = dso_local global %T_R zeroinitializer
;================================================================================
; metadata

!llvm.dbg.cu = !{!18}
!llvm.module.flags = !{}
!llvm.ident = !{!17}

!0 = !DIFile(filename: "aggregates.pas", checksumkind: CSK_None)
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: -1, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0, encoding: DW_ATE_void)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = TODO
!8 = TODO
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "R", file: !0, line: 9, size: 96, flags: DIFlagTypePassByValue, elements: !13)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !9, file: !0, line: 10, baseType: !8, size: 8, offset: 0)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !9, file: !0, line: 11, baseType: !3, size: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !9, file: !0, line: 11, baseType: !3, size: 32, offset: 64)
!13 = !{!10,!11,!12}
!14 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9}
!15 = !{}
!16 = !{}
!17 = !{!"LPC 1.1 (debug) - built on Mar 19 2020"}
!18 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 19 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !14, globals: !16, nameTableKind: None)

