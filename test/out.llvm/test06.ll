; ModuleID = 'test06.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\test06.pas"
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
@i = dso_local global i32 zeroinitializer
@p = dso_local global i8* zeroinitializer

; procedure body
define void @P_()
{
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @_input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @_output

    ; body
    call void @P_init(i8** @p)
    call void @P_setValue(i32* @i, i8** @p)
    %t3 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 4)
    %t4 = load i32, i32* @i
    call void @_WriteInteger(i8* %t3, i32 0, i32 0, i32 %t4)
    call void @_WriteLn(i8* %t3)
    %t5 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 5)
    %t6 = load i8*, i8** @p
    %t7 = bitcast i8* %t6 to i32*
    %t8 = load i32, i32* %t7
    call void @_WriteInteger(i8* %t5, i32 0, i32 0, i32 %t8)
    call void @_WriteLn(i8* %t5)
    call void @P_free(i8** @p)
    ; nop

    ; cleanup
    %t9 = load %T_text, %T_text* @_output
    call void @_CloseFile(i8* %t9)
    %t10 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t10)

    ; epilogue
    ret void
}


; line 11
;================================================================================
; scope: init (level : 2)

; activation record
%Frame_init = type
{
    ; parameters
    i8**,    ; 0: pointer

    ; dummy
    i8*
};

; procedure body
define void @P_init(i8** %pointer)
{
    ; allocate frame
    %.frame = alloca %Frame_init, align 8
    %t1 = getelementptr inbounds %Frame_init, %Frame_init* %.frame, i32 0, i32 0
    store i8** %pointer, i8*** %t1

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 16
;================================================================================
; scope: setValue (level : 2)

; activation record
%Frame_setValue = type
{
    ; parameters
    i8**,    ; 0: pointer
    i32*,    ; 1: value

    ; dummy
    i8*
};

; procedure body
define void @P_setValue(i32* %value, i8** %pointer)
{
    ; allocate frame
    %.frame = alloca %Frame_setValue, align 8
    %t1 = getelementptr inbounds %Frame_setValue, %Frame_setValue* %.frame, i32 0, i32 0
    store i8** %pointer, i8*** %t1
    %t2 = getelementptr inbounds %Frame_setValue, %Frame_setValue* %.frame, i32 0, i32 1
    store i32* %value, i32** %t2

    ; body
    store i32 12345, i32* @i
    %t4 = getelementptr inbounds %Frame_setValue, %Frame_setValue* %.frame, i32 0, i32 0
    %t5 = load i8**, i8*** %t4
    %t3 = load i8*, i8** %t5
    %t6 = bitcast i8* %t3 to i32*
    %t8 = getelementptr inbounds %Frame_setValue, %Frame_setValue* %.frame, i32 0, i32 1
    %t9 = load i32*, i32** %t8
    %t7 = load i32, i32* %t9
    store i32 %t7, i32* %t6
    ; nop

    ; epilogue
    ret void
}


; line 22
;================================================================================
; scope: free (level : 2)

; activation record
%Frame_free = type
{
    ; parameters
    i8**,    ; 0: pointer

    ; dummy
    i8*
};

; procedure body
define void @P_free(i8** %pointer)
{
    ; allocate frame
    %.frame = alloca %Frame_free, align 8
    %t1 = getelementptr inbounds %Frame_free, %Frame_free* %.frame, i32 0, i32 0
    store i8** %pointer, i8*** %t1

    ; body
    ; nop

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_output\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"i = \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"p^ = \00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!12}

!0 = !DIFile(filename: "test06.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "ptr", file: !0, line: 6, baseType: !3, size: 64)
!9 = !{!1,!2,!3,!4,!5,!6,!7,!8}
!10 = !{}
!11 = !{}
!12 = !{!"LPC 1.1"}
!13 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !9, globals: !11, nameTableKind: None)
!14 = !{i32 2, !"CodeView", i32 1}
!15 = !{i32 2, !"Debug Info Version", i32 3}

