; ModuleID = 'allvar.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\allvar.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"


; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_text = type i8*

; line 2
;================================================================================
; scope: program scope (level : 1)

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@A = dso_local global i32 zeroinitializer
@AnimalCookies = dso_local global i8 zeroinitializer
@B = dso_local global i32 zeroinitializer
@C = dso_local global i32 zeroinitializer
@D = dso_local global i32 zeroinitializer
@DogTail = dso_local global double zeroinitializer
@Puppy = dso_local global i1 zeroinitializer
;================================================================================
; metadata

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!12}

!0 = !DIFile(filename: "allvar.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!9 = !{!1,!2,!3,!4,!5,!6,!7,!8}
!10 = !{}
!11 = !{}
!12 = !{!"LPC 1.1"}
!13 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !9, globals: !11, nameTableKind: None)
!14 = !{i32 2, !"CodeView", i32 1}
!15 = !{i32 2, !"Debug Info Version", i32 3}

