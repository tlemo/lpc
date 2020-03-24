; ModuleID = 'pfn.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\pfn.pas"
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

; procedure body
define void @P_()
{
    ret void
}

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

; procedure body
define void @P_foo()
{
    %1 = alloca %Frame_foo, align 8
    ret void
}

; line 11
;================================================================================
; scope: foo_testPfn (level : 3)

; activation record
%Frame_foo_testPfn = type
{
    ; parameters
    i32,    ; 0: i

    ; variables
    i32,    ; 1: _fnvalue

    ; slink
    %Frame_foo*    ; 2
};

; function body
define i32 @F_foo_testPfn()
{
    %1 = alloca %Frame_foo_testPfn, align 8
    %2 = getelementptr inbounds %Frame_foo_testPfn, %Frame_foo_testPfn* %1, i32 0, i32 1
    %3 = load i32, i32* %2
    ret i32 %3
}

; line 17
;================================================================================
; scope: foo_bar1 (level : 3)

; types
%T_foo_bar1_subroutine_2 = type i32 (i8*, i32)*

; activation record
%Frame_foo_bar1 = type
{
    ; parameters
    i32,    ; 0: i
    %T_foo_bar1_subroutine_2,    ; 1: pfn

    ; variables
    i32,    ; 2: bar1V
    i32,    ; 3: tmp

    ; slink
    %Frame_foo*    ; 4
};

; procedure body
define void @P_foo_bar1()
{
    %1 = alloca %Frame_foo_bar1, align 8
    ret void
}

; line 29
;================================================================================
; scope: foo_bar2 (level : 3)

; types
%T_foo_bar2_subroutine_3 = type void (i8*, i32)*

; activation record
%Frame_foo_bar2 = type
{
    ; parameters
    %T_foo_bar2_subroutine_3,    ; 0: pfn

    ; variables
    i32,    ; 1: bar2V

    ; slink
    %Frame_foo*    ; 2
};

; procedure body
define void @P_foo_bar2()
{
    %1 = alloca %Frame_foo_bar2, align 8
    ret void
}

; line 32
;================================================================================
; scope: foo_bar2_moo (level : 4)

; types
%T_foo_bar2_moo_subroutine_4 = type i32 (i8*, i32)*

; activation record
%Frame_foo_bar2_moo = type
{
    ; parameters
    %T_foo_bar2_moo_subroutine_4,    ; 0: pfn

    ; variables
    i32,    ; 1: mooV
    i32,    ; 2: tmp

    ; slink
    %Frame_foo_bar2*    ; 3
};

; procedure body
define void @P_foo_bar2_moo()
{
    %1 = alloca %Frame_foo_bar2_moo, align 8
    ret void
}

; line 44
;================================================================================
; scope: foo_bar2_testPfn (level : 4)

; activation record
%Frame_foo_bar2_testPfn = type
{
    ; parameters
    i32,    ; 0: i

    ; variables
    i32,    ; 1: _fnvalue

    ; slink
    %Frame_foo_bar2*    ; 2
};

; function body
define i32 @F_foo_bar2_testPfn()
{
    %1 = alloca %Frame_foo_bar2_testPfn, align 8
    %2 = getelementptr inbounds %Frame_foo_bar2_testPfn, %Frame_foo_bar2_testPfn* %1, i32 0, i32 1
    %3 = load i32, i32* %2
    ret i32 %3
}

; line 59
;================================================================================
; scope: foo_procPfn (level : 3)

; activation record
%Frame_foo_procPfn = type
{
    ; parameters
    i32,    ; 0: i

    ; slink
    %Frame_foo*    ; 1
};

; procedure body
define void @P_foo_procPfn()
{
    %1 = alloca %Frame_foo_procPfn, align 8
    ret void
}

;================================================================================
; metadata

!llvm.dbg.cu = !{!21}
!llvm.module.flags = !{!22, !23}
!llvm.ident = !{!20}

!0 = !DIFile(filename: "pfn.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 17, baseType: !10, size: 64)
!9 = !{!3, !3}
!10 = !DISubroutineType(types: !9)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 29, baseType: !13, size: 64)
!12 = !{null, !3}
!13 = !DISubroutineType(types: !12)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 32, baseType: !16, size: 64)
!15 = !{!3, !3}
!16 = !DISubroutineType(types: !15)
!17 = !{!1,!2,!3,!4,!5,!6,!7,!8,!10,!11,!13,!14,!16}
!18 = !{}
!19 = !{}
!20 = !{!"LPC 1.1"}
!21 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !17, globals: !19, nameTableKind: None)
!22 = !{i32 2, !"CodeView", i32 1}
!23 = !{i32 2, !"Debug Info Version", i32 3}

