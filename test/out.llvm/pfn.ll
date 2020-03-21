; ModuleID = 'pfn.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\pfn.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"


; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_text = type i8

; line 4
;================================================================================
; scope: program scope (level : 1)

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@v = dso_local global i32 zeroinitializer

; line 8
;================================================================================
; scope: foo (level : 2)

; line 11
;================================================================================
; scope: foo_testPfn (level : 3)

; line 17
;================================================================================
; scope: foo_bar1 (level : 3)

; types
%T_foo_bar1_subroutine_2 = type i8

; line 29
;================================================================================
; scope: foo_bar2 (level : 3)

; types
%T_foo_bar2_subroutine_3 = type i8

; line 32
;================================================================================
; scope: foo_bar2_moo (level : 4)

; types
%T_foo_bar2_moo_subroutine_4 = type i8

; line 44
;================================================================================
; scope: foo_bar2_testPfn (level : 4)

; line 59
;================================================================================
; scope: foo_procPfn (level : 3)
;================================================================================
; metadata

!llvm.dbg.cu = !{!15}
!llvm.module.flags = !{!16, !17}
!llvm.ident = !{!14}

!0 = !DIFile(filename: "pfn.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIBasicType(name: "void", size: 0)
!8 = !DIBasicType(name: "void", size: 0)
!9 = !DIBasicType(name: "void", size: 0)
!10 = !DIBasicType(name: "void", size: 0)
!11 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10}
!12 = !{}
!13 = !{}
!14 = !{!"LPC 1.1 (debug) - built on Mar 20 2020"}
!15 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1 (debug) - built on Mar 20 2020", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !12, retainedTypes: !11, globals: !13, nameTableKind: None)
!16 = !{i32 2, !"CodeView", i32 1}
!17 = !{i32 2, !"Debug Info Version", i32 3}

