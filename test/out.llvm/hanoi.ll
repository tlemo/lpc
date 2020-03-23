; ModuleID = 'hanoi.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\hanoi.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"


; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_text = type i8*

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

; activation record
%Frame_hanoi1 = type
{
    ; variables
    i32,    ; i
    i32,    ; j
    i32,    ; k
    i32,    ; k1
    i32,    ; k2
    i32,    ; k3
    i32,    ; l
    i32,    ; w

    ; dummy
    i8*
};

; line 19
;================================================================================
; scope: hanoi2 (level : 2)

; activation record
%Frame_hanoi2 = type
{
    ; variables
    i32,    ; i
    i32,    ; j
    i32,    ; k
    i32,    ; niv
    i32,    ; ns

    ; dummy
    i8*
};

; line 38
;================================================================================
; scope: hanoi3 (level : 2)

; activation record
%Frame_hanoi3 = type
{
    ; parameters
    i32,    ; i
    i32,    ; j
    i32,    ; n

    ; variables
    i32,    ; k

    ; dummy
    i8*
};

;================================================================================
; metadata

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!23}

!0 = !DIFile(filename: "hanoi.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 3, baseType: !9, size: 65536, elements: !13)
!9 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 3, baseType: !3, size: 32768, elements: !11)
!10 = !DISubrange(count: 1024)
!11 = !{!10}
!12 = !DISubrange(count: 2)
!13 = !{!12}
!14 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 4, baseType: !15, size: 98304, elements: !19)
!15 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 4, baseType: !3, size: 32768, elements: !17)
!16 = !DISubrange(count: 1024)
!17 = !{!16}
!18 = !DISubrange(count: 3)
!19 = !{!18}
!20 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!14,!15}
!21 = !{}
!22 = !{}
!23 = !{!"LPC 1.1"}
!24 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !20, globals: !22, nameTableKind: None)
!25 = !{i32 2, !"CodeView", i32 1}
!26 = !{i32 2, !"Debug Info Version", i32 3}

