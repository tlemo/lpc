; ModuleID = 'test05.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\test05.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"


; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_text = type i8*

; line 4
;================================================================================
; scope: program scope (level : 1)

; types
%T_array_3 = type [256 x i32]
%T_t1 = type [3 x %T_array_3]
%T_array_7 = type [5 x i8]
%T_array_6 = type [256 x %T_array_7]
%T_array_5 = type [3 x %T_array_6]
%T_array_4 = type [10 x %T_array_5]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@x = dso_local global %T_array_4 zeroinitializer
@y = dso_local global %T_t1 zeroinitializer

; line 14
;================================================================================
; scope: outter (level : 2)

; line 15
;================================================================================
; scope: outter_inner (level : 3)

; line 16
;================================================================================
; scope: outter_inner_setOutter (level : 4)
;================================================================================
; metadata

!llvm.dbg.cu = !{!32}
!llvm.module.flags = !{!33, !34}
!llvm.ident = !{!31}

!0 = !DIFile(filename: "test05.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!9 = !DICompositeType(tag: DW_TAG_array_type, name: "t1", file: !0, line: 7, baseType: !10, size: 24576, elements: !14)
!10 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 7, baseType: !3, size: 8192, elements: !12)
!11 = !DISubrange(count: 256)
!12 = !{!11}
!13 = !DISubrange(count: 3)
!14 = !{!13}
!15 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!16 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 11, baseType: !17, size: 307200, elements: !27)
!17 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 11, baseType: !18, size: 30720, elements: !25)
!18 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 11, baseType: !19, size: 10240, elements: !23)
!19 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 11, baseType: !2, size: 40, elements: !21)
!20 = !DISubrange(count: 5)
!21 = !{!20}
!22 = !DISubrange(count: 256)
!23 = !{!22}
!24 = !DISubrange(count: 3)
!25 = !{!24}
!26 = !DISubrange(count: 10)
!27 = !{!26}
!28 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!15,!16,!17,!18,!19}
!29 = !{}
!30 = !{}
!31 = !{!"LPC 1.1"}
!32 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !29, retainedTypes: !28, globals: !30, nameTableKind: None)
!33 = !{i32 2, !"CodeView", i32 1}
!34 = !{i32 2, !"Debug Info Version", i32 3}

