; ModuleID = 'ranges.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\ranges.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"

; runtime functions
declare dso_local i8* @_OpenFile(i32)
declare dso_local i8* @_OpenTempFile(i8*)
declare dso_local void @_CloseFile(i8*)

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
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @_input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @_output
    %t3 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0))
    store i8* %t3, i8** @tmp
    %t4 = load %T_text, %T_text* @tmp
    call void @_CloseFile(i8* %t4)
    %t5 = load %T_text, %T_text* @_output
    call void @_CloseFile(i8* %t5)
    %t6 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t6)
    ret void
}


;================================================================================
; string literals

@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_output\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!21}
!llvm.module.flags = !{!22, !23}
!llvm.ident = !{!20}

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
!14 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 20, baseType: !2, size: 24, elements: !16)
!15 = !DISubrange(count: 3)
!16 = !{!15}
!17 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!11,!12,!13,!14}
!18 = !{}
!19 = !{}
!20 = !{!"LPC 1.1"}
!21 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !17, globals: !19, nameTableKind: None)
!22 = !{i32 2, !"CodeView", i32 1}
!23 = !{i32 2, !"Debug Info Version", i32 3}

