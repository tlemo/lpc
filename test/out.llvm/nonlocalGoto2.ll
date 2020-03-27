; ModuleID = 'nonlocalGoto2.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\nonlocalGoto2.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"

; program arguments (command line mapping)
%struct._Filename = type { i8*, i8* }
@_FilenameMapEntries = internal global [3 x %struct._Filename]
    [
    %struct._Filename { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* null },
    %struct._Filename { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* null },
    %struct._Filename { i8* null, i8* null }
    ], align 16
@_FilenameMap = dso_local global %struct._Filename* getelementptr inbounds ([3 x %struct._Filename], [3 x %struct._Filename]* @_FilenameMapEntries, i32 0, i32 0), align 8
@_FilenameMapSize = dso_local constant i32 2, align 4

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
    ; dummy
    i8*
};

; procedure body
define void @P_foo()
{
    %1 = alloca %Frame_foo, align 8
    ret void
}


; line 15
;================================================================================
; scope: bar (level : 2)

; activation record
%Frame_bar = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_bar()
{
    %1 = alloca %Frame_bar, align 8
    ret void
}


; line 17
;================================================================================
; scope: bar_moo (level : 3)

; activation record
%Frame_bar_moo = type
{
    ; slink
    %Frame_bar*    ; 0
};

; procedure body
define void @P_bar_moo()
{
    %1 = alloca %Frame_bar_moo, align 8
    ret void
}


;================================================================================
; string literals

@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_output\00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!11}

!0 = !DIFile(filename: "nonlocalGoto2.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
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

