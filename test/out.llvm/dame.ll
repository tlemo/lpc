; ModuleID = 'dame.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\dame.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"


; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_pointer_1 = type i8*
%T_text = type i8

; line 1
;================================================================================
; scope: program scope (level : 1)

; types
%T_range_2 = type i8
%T_vec = type [8 x %T_range_2]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@i = dso_local global i32 zeroinitializer
@k = dso_local global i32 zeroinitializer
@x = dso_local global %T_vec zeroinitializer

; line 8
;================================================================================
; scope: f (level : 2)
;================================================================================
; metadata

!llvm.dbg.cu = !{!16}
!llvm.module.flags = !{!17, !18}
!llvm.ident = !{!15}

!0 = !DIFile(filename: "dame.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIBasicType(name: "void", size: 0)
!8 = !DICompositeType(tag: DW_TAG_array_type, name: "vec", file: !0, line: 4, baseType: !9, size: 64, elements: !11)
!9 = !DIBasicType(name: "void", size: 0)
!10 = !DISubrange(count: 8)
!11 = !{!10}
!12 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9}
!13 = !{}
!14 = !{}
!15 = !{!"LPC 1.1 (debug) - built on Mar 20 2020"}
!16 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 20 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !13, retainedTypes: !12, globals: !14, nameTableKind: None)
!17 = !{i32 2, !"CodeView", i32 1}
!18 = !{i32 2, !"Debug Info Version", i32 3}

