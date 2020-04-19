; ModuleID = 'ranges.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\ranges.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"

; runtime functions
declare dso_local i8* @_OpenFile(i32)
declare dso_local i8* @_OpenTempFile(i8*)
declare dso_local void @_CloseFile(i8*)
declare dso_local void @_WriteBool(i8*, i32, i32, i1)
declare dso_local void @_WriteChar(i8*, i32, i32, i8)
declare dso_local void @_WriteInteger(i8*, i32, i32, i32)
declare dso_local void @_WriteReal(i8*, i32, i32, double)
declare dso_local void @_WriteString(i8*, i32, i32, i8*, i32)
declare dso_local void @_WriteLn(i8*)

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
@t1 = dso_local global i8 zeroinitializer
@t2 = dso_local global i32 zeroinitializer
@t3 = dso_local global i32 zeroinitializer
@t4 = dso_local global i32 zeroinitializer
@t5 = dso_local global i32 zeroinitializer
@t6 = dso_local global i32 zeroinitializer
@tmp = dso_local global %T_text zeroinitializer
@v1 = dso_local global i8 zeroinitializer
@v2 = dso_local global i32 zeroinitializer
@v3 = dso_local global i32 zeroinitializer
@v4 = dso_local global i32 zeroinitializer
@v5 = dso_local global i32 zeroinitializer
@v6 = dso_local global i32 zeroinitializer

; procedure body
define void @P_()
{
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @_input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @_output
    %t3 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0))
    store i8* %t3, i8** @tmp

    ; body
    store i8 120, i8* @v1
    store i32 1, i32* @v2
    store i32 200, i32* @v3
    store i32 123, i32* @v4
    store i32 32768, i32* @v5
    %t4 = sub i32 0, 1
    store i32 %t4, i32* @v6
    %t5 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 12)
    %t6 = load i8, i8* @v1
    call void @_WriteChar(i8* %t5, i32 0, i32 0, i8 %t6)
    call void @_WriteChar(i8* %t5, i32 0, i32 0, i8 32)
    %t7 = load i32, i32* @v2
    call void @_WriteInteger(i8* %t5, i32 0, i32 0, i32 %t7)
    call void @_WriteChar(i8* %t5, i32 0, i32 0, i8 32)
    %t8 = load i32, i32* @v3
    call void @_WriteInteger(i8* %t5, i32 0, i32 0, i32 %t8)
    call void @_WriteChar(i8* %t5, i32 0, i32 0, i8 32)
    %t9 = load i32, i32* @v4
    call void @_WriteInteger(i8* %t5, i32 0, i32 0, i32 %t9)
    call void @_WriteChar(i8* %t5, i32 0, i32 0, i8 32)
    %t10 = load i32, i32* @v5
    call void @_WriteInteger(i8* %t5, i32 0, i32 0, i32 %t10)
    call void @_WriteChar(i8* %t5, i32 0, i32 0, i8 32)
    %t11 = load i32, i32* @v6
    call void @_WriteInteger(i8* %t5, i32 0, i32 0, i32 %t11)
    call void @_WriteLn(i8* %t5)
    %t12 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t12, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t12)
    %t13 = load %T_text, %T_text* @tmp
    %t14 = load i8, i8* @v1
    call void @_WriteChar(i8* %t13, i32 0, i32 0, i8 %t14)
    call void @_WriteChar(i8* %t13, i32 0, i32 0, i8 32)
    %t15 = load i32, i32* @v2
    call void @_WriteInteger(i8* %t13, i32 0, i32 0, i32 %t15)
    call void @_WriteChar(i8* %t13, i32 0, i32 0, i8 32)
    %t16 = load i32, i32* @v3
    call void @_WriteInteger(i8* %t13, i32 0, i32 0, i32 %t16)
    call void @_WriteLn(i8* %t13)
    %t17 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t17, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t17)
    %t18 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t18, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t18)
    %t19 = load %T_text, %T_text* @tmp
    %t20 = load i32, i32* @v4
    call void @_WriteInteger(i8* %t19, i32 0, i32 0, i32 %t20)
    call void @_WriteChar(i8* %t19, i32 0, i32 0, i8 32)
    %t21 = load i32, i32* @v5
    call void @_WriteInteger(i8* %t19, i32 0, i32 0, i32 %t21)
    call void @_WriteChar(i8* %t19, i32 0, i32 0, i8 32)
    %t22 = load i32, i32* @v6
    call void @_WriteInteger(i8* %t19, i32 0, i32 0, i32 %t22)
    call void @_WriteLn(i8* %t19)
    %t23 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t23, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t23)
    %t24 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t24, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 12)
    %t25 = load i8, i8* @t1
    call void @_WriteChar(i8* %t24, i32 0, i32 0, i8 %t25)
    call void @_WriteChar(i8* %t24, i32 0, i32 0, i8 32)
    %t26 = load i32, i32* @t2
    call void @_WriteInteger(i8* %t24, i32 0, i32 0, i32 %t26)
    call void @_WriteChar(i8* %t24, i32 0, i32 0, i8 32)
    %t27 = load i32, i32* @t3
    call void @_WriteInteger(i8* %t24, i32 0, i32 0, i32 %t27)
    call void @_WriteChar(i8* %t24, i32 0, i32 0, i8 32)
    %t28 = load i32, i32* @t4
    call void @_WriteInteger(i8* %t24, i32 0, i32 0, i32 %t28)
    call void @_WriteChar(i8* %t24, i32 0, i32 0, i8 32)
    %t29 = load i32, i32* @t5
    call void @_WriteInteger(i8* %t24, i32 0, i32 0, i32 %t29)
    call void @_WriteChar(i8* %t24, i32 0, i32 0, i8 32)
    %t30 = load i32, i32* @t6
    call void @_WriteInteger(i8* %t24, i32 0, i32 0, i32 %t30)
    call void @_WriteLn(i8* %t24)
    ; nop

    ; cleanup
    %t31 = load %T_text, %T_text* @tmp
    call void @_CloseFile(i8* %t31)
    %t32 = load %T_text, %T_text* @_output
    call void @_CloseFile(i8* %t32)
    %t33 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t33)

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_output\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"final     : \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"initial   : \00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"read part   1 ...\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"read part   2 ...\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"write part  1 ...\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"write part  2 ...\00", align 1


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
!8 = !DIBasicType(name: "range of char", size: 8, encoding: DW_ATE_unsigned_char)
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

