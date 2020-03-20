
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
%T_array_3 = type [1024 x i32]
%T_array_2 = type [2 x %T_array_3]
%T_array_5 = type [1024 x i32]
%T_array_4 = type [3 x %T_array_5]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@i = dso_local global i32 zeroinitializer
@j = dso_local global i32 zeroinitializer
@M = dso_local global %T_array_2 zeroinitializer
@n = dso_local global i32 zeroinitializer
@nn = dso_local global i32 zeroinitializer
@S = dso_local global %T_array_4 zeroinitializer

; line 5
;================================================================================
; scope: hanoi1 (level : 2)

; line 19
;================================================================================
; scope: hanoi2 (level : 2)

; line 38
;================================================================================
; scope: hanoi3 (level : 2)
;================================================================================
; metadata

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{}
!llvm.ident = !{!23}

!0 = !DIFile(filename: "hanoi.pas", checksumkind: CSK_None)
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: -1, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0, encoding: DW_ATE_void)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = TODO
!8 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 3, baseType: !9, size: 65536, elements: !13)
!9 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 3, baseType: !3, size: 32768, elements: !11)
!10 = !DISubrange(count: 1024, lowerBound: 1)
!11 = !{!10}
!12 = !DISubrange(count: 2, lowerBound: 1)
!13 = !{!12}
!14 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 4, baseType: !15, size: 98304, elements: !19)
!15 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 4, baseType: !3, size: 32768, elements: !17)
!16 = !DISubrange(count: 1024, lowerBound: 1)
!17 = !{!16}
!18 = !DISubrange(count: 3, lowerBound: 1)
!19 = !{!18}
!20 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!14,!15}
!21 = !{}
!22 = !{}
!23 = !{!"LPC 1.1 (debug) - built on Mar 20 2020"}
!24 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 20 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !20, globals: !22, nameTableKind: None)

