; ModuleID = 'freeVars.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\freeVars.pas"
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
@v = dso_local global i32 zeroinitializer

; line 8
;================================================================================
; scope: foo (level : 2)

; activation record
%Frame_foo = type
{
    ; variables
    i32,    ; 0: fooV

    ; dummy
    i8*
};

; line 11
;================================================================================
; scope: foo_bar1 (level : 3)

; activation record
%Frame_foo_bar1 = type
{
    ; parameters
    i32,    ; 0: i

    ; variables
    i32,    ; 1: bar1V

    ; slink
    %Frame_foo*    ; 2
};

; line 19
;================================================================================
; scope: foo_bar2 (level : 3)

; activation record
%Frame_foo_bar2 = type
{
    ; parameters
    i32,    ; 0: i

    ; variables
    i32,    ; 1: bar2V

    ; slink
    %Frame_foo*    ; 2
};

; line 22
;================================================================================
; scope: foo_bar2_moo (level : 4)

; activation record
%Frame_foo_bar2_moo = type
{
    ; variables
    i32,    ; 0: mooV

    ; slink
    %Frame_foo_bar2*    ; 1
};

;================================================================================
; metadata

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!11}

!0 = !DIFile(filename: "freeVars.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !{!1,!2,!3,!4,!5,!6,!7}
!9 = !{}
!10 = !{}
!11 = !{!"LPC 1.1"}
!12 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !8, globals: !10, nameTableKind: None)
!13 = !{i32 2, !"CodeView", i32 1}
!14 = !{i32 2, !"Debug Info Version", i32 3}

