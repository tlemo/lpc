; ModuleID = 'arrays2.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\arrays2.pas"
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

; line 2
;================================================================================
; scope: program scope (level : 1)

; types
%T_array_3 = type [8 x i32]
%T_array_2 = type [8 x %T_array_3]
%T_array_5 = type [8 x i32]
%T_array_4 = type [8 x %T_array_5]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@Checkerboard = dso_local global %T_array_2 zeroinitializer
@Count = dso_local global i32 zeroinitializer
@Index = dso_local global i32 zeroinitializer
@Value = dso_local global %T_array_4 zeroinitializer

; procedure body
define void @P_()
{
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @_input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @_output

    ; body
    ; line 9
    ; line 16
    %t3 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t3)
    ; line 17
    %t4 = load %T_text, %T_text* @_output
    call void @_WriteLn(i8* %t4)
    ; line 18
    ; line 24
    %t5 = getelementptr inbounds %T_array_4, %T_array_4* @Value, i32 0, i32 3
    %t6 = getelementptr inbounds %T_array_5, %T_array_5* %t5, i32 0, i32 5
    %t7 = sub i32 0, 1
    store i32 %t7, i32* %t6
    ; line 25
    %t8 = getelementptr inbounds %T_array_4, %T_array_4* @Value, i32 0, i32 3
    %t9 = getelementptr inbounds %T_array_5, %T_array_5* %t8, i32 0, i32 6
    store i32 3, i32* %t9
    ; line 26
    %t10 = getelementptr inbounds %T_array_4, %T_array_4* @Value, i32 0, i32 3
    %t11 = getelementptr inbounds %T_array_5, %T_array_5* %t10, i32 0, i32 6
    %t12 = load i32, i32* %t11
    %t13 = getelementptr inbounds %T_array_4, %T_array_4* @Value, i32 0, i32 %t12
    %t14 = getelementptr inbounds %T_array_5, %T_array_5* %t13, i32 0, i32 7
    store i32 2, i32* %t14
    ; line 28
    ; line 30
    %t15 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t15, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t15)
    ; line 31
    %t16 = load %T_text, %T_text* @_output
    call void @_WriteLn(i8* %t16)
    ; line 32
    ; nop

    ; cleanup
    %t17 = load %T_text, %T_text* @_output
    call void @_CloseFile(i8* %t17)
    %t18 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t18)

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.3 = private unnamed_addr constant [24 x i8] c" Output of checkerboard\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Output of value\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_output\00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!23}

!0 = !DIFile(filename: "arrays2.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 5, baseType: !9, size: 2048, elements: !13)
!9 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 5, baseType: !3, size: 256, elements: !11)
!10 = !DISubrange(count: 8)
!11 = !{!10}
!12 = !DISubrange(count: 8)
!13 = !{!12}
!14 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 6, baseType: !15, size: 2048, elements: !19)
!15 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 6, baseType: !3, size: 256, elements: !17)
!16 = !DISubrange(count: 8)
!17 = !{!16}
!18 = !DISubrange(count: 8)
!19 = !{!18}
!20 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!14,!15}
!21 = !{}
!22 = !{}
!23 = !{!"LPC 1.1"}
!24 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !20, globals: !22, nameTableKind: None)
!25 = !{i32 2, !"CodeView", i32 1}
!26 = !{i32 2, !"Debug Info Version", i32 3}

