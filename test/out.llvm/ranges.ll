; ModuleID = 'ranges.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\ranges.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"


; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_text = type i8*

; line 4
;================================================================================
; scope: program scope (level : 1)

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@t1 = dso_local global i32 zeroinitializer
@t2 = dso_local global i32 zeroinitializer
@t3 = dso_local global i32 zeroinitializer
@t4 = dso_local global i32 zeroinitializer
@t5 = dso_local global i32 zeroinitializer
@t6 = dso_local global i32 zeroinitializer
@tmp = dso_local global %T_text zeroinitializer
@v1 = dso_local global i32 zeroinitializer
@v2 = dso_local global i32 zeroinitializer
@v3 = dso_local global i32 zeroinitializer
@v4 = dso_local global i32 zeroinitializer
@v5 = dso_local global i32 zeroinitializer
@v6 = dso_local global i32 zeroinitializer

; procedure body
define void @P_()
{
    ret void
}

;================================================================================
; metadata

!llvm.dbg.cu = !{!18}
!llvm.module.flags = !{!19, !20}
!llvm.ident = !{!17}

!0 = !DIFile(filename: "ranges.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!10 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!12 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!13 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!14 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!11,!12,!13}
!15 = !{}
!16 = !{}
!17 = !{!"LPC 1.1"}
!18 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !14, globals: !16, nameTableKind: None)
!19 = !{i32 2, !"CodeView", i32 1}
!20 = !{i32 2, !"Debug Info Version", i32 3}

