; ModuleID = 'nonlocalGoto2.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\nonlocalGoto2.pas"
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

; procedure body
define void @P_()
{
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @_input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @_output

    ; body
    %t3 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t3)
    call void @P_foo()
    %t4 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t4, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t4)
    br label %L_1
L_1:
    %t5 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t5)
    call void @P_bar()
    %t6 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t6, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t6)
    br label %L_2
L_2:
    %t7 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t7, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t7)
    %t8 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t8, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t8)
    ; nop

    ; cleanup
    %t9 = load %T_text, %T_text* @_output
    call void @_CloseFile(i8* %t9)
    %t10 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t10)

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_foo, align 8

    ; body
    %t1 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t1, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t1)
    %t2 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2)
    ; nop

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_bar, align 8

    ; body
    %t1 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t1, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t1)
    %t2 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2)
    br label %L_1
L_1:
    call void @P_bar_moo(%Frame_bar* %.frame)
    %t3 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3)
    ; nop

    ; epilogue
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
define void @P_bar_moo(%Frame_bar* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_bar_moo, align 8
    %t1 = getelementptr inbounds %Frame_bar_moo, %Frame_bar_moo* %.frame, i32 0, i32 0
    store %Frame_bar* %.slink, %Frame_bar** %t1

    ; body
    %t2 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t2)
    %t3 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3)
    ; nop

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.5 = private unnamed_addr constant [5 x i8] c"P_L1\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"P_L2\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"UNEXPECTED\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_output\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"moo\00", align 1


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

