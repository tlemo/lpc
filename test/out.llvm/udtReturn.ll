; ModuleID = 'udtReturn.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\udtReturn.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"


; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_text = type i8*

; line 2
;================================================================================
; scope: program scope (level : 1)

; types
%T_A = type [4 x i32]
%T_R = type [8 x i8]
%T_S = type [1 x i32]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@i = dso_local global i32 zeroinitializer
@vA = dso_local global %T_A zeroinitializer
@vR = dso_local global %T_R zeroinitializer
@vS = dso_local global %T_S zeroinitializer

; procedure body
define void @P_()
{
    ret void
}

; line 19
;================================================================================
; scope: fooA (level : 2)

; activation record
%Frame_fooA = type
{
    ; variables
    %T_A,    ; 0: _fnvalue
    %T_A,    ; 1: tmp

    ; dummy
    i8*
};

; function body
define %T_A @F_fooA()
{
    %1 = alloca %Frame_fooA, align 8
    %2 = getelementptr inbounds %Frame_fooA, %Frame_fooA* %1, i32 0, i32 0
    %3 = load %T_A, %T_A* %2
    ret %T_A %3
}

; line 29
;================================================================================
; scope: fooS (level : 2)

; activation record
%Frame_fooS = type
{
    ; variables
    %T_S,    ; 0: _fnvalue

    ; dummy
    i8*
};

; function body
define %T_S @F_fooS()
{
    %1 = alloca %Frame_fooS, align 8
    %2 = getelementptr inbounds %Frame_fooS, %Frame_fooS* %1, i32 0, i32 0
    %3 = load %T_S, %T_S* %2
    ret %T_S %3
}

; line 34
;================================================================================
; scope: fooR (level : 2)

; activation record
%Frame_fooR = type
{
    ; variables
    %T_R,    ; 0: _fnvalue
    %T_R,    ; 1: tmp

    ; dummy
    i8*
};

; function body
define %T_R @F_fooR()
{
    %1 = alloca %Frame_fooR, align 8
    %2 = getelementptr inbounds %Frame_fooR, %Frame_fooR* %1, i32 0, i32 0
    %3 = load %T_R, %T_R* %2
    ret %T_R %3
}

;================================================================================
; metadata

!llvm.dbg.cu = !{!23}
!llvm.module.flags = !{!24, !25}
!llvm.ident = !{!22}

!0 = !DIFile(filename: "udtReturn.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DICompositeType(tag: DW_TAG_array_type, name: "A", file: !0, line: 5, baseType: !3, size: 128, elements: !10)
!9 = !DISubrange(count: 4)
!10 = !{!9}
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "R", file: !0, line: 9, size: 64, flags: DIFlagTypePassByValue, elements: !14)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !11, file: !0, line: 10, baseType: !3, size: 32, offset: 0)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !11, file: !0, line: 10, baseType: !3, size: 32, offset: 32)
!14 = !{!12,!13}
!15 = !DICompositeType(tag: DW_TAG_array_type, name: "S", file: !0, line: 7, baseType: !18, size: 32, elements: !17)
!16 = !DISubrange(count: 11)
!17 = !{!16}
!18 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!19 = !{!1,!2,!3,!4,!5,!6,!7,!8,!11,!15}
!20 = !{}
!21 = !{}
!22 = !{!"LPC 1.1"}
!23 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !20, retainedTypes: !19, globals: !21, nameTableKind: None)
!24 = !{i32 2, !"CodeView", i32 1}
!25 = !{i32 2, !"Debug Info Version", i32 3}

