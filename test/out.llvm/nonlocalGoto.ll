; ModuleID = 'nonlocalGoto.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\nonlocalGoto.pas"
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
@p1 = dso_local global i32 zeroinitializer
@p2 = dso_local global i32 zeroinitializer

; procedure body
define void @P_()
{
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @_input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @_output

    ; body
    ; line 40
    store i32 0, i32* @p1
    ; line 41
    store i32 0, i32* @p2
    ; line 44
    br label %L_1
L_1:
    %t3 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t3)
    ; line 45
    %t4 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t4, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 5)
    %t5 = load i32, i32* @p1
    call void @_WriteInteger(i8* %t4, i32 0, i32 0, i32 %t5)
    call void @_WriteLn(i8* %t4)
    ; line 46
    %t6 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t6, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 5)
    %t7 = load i32, i32* @p2
    call void @_WriteInteger(i8* %t6, i32 0, i32 0, i32 %t7)
    call void @_WriteLn(i8* %t6)
    ; line 48
    %t9 = load i32, i32* @p1
    %t8 = add i32 %t9, 1
    store i32 %t8, i32* @p1
    ; line 50
    %t10 = load i32, i32* @p1
    %t11 = call i32 @F_foo(i32 %t10)
    store i32 %t11, i32* @p2
    ; line 51
    %t12 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t12, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t12)
    ; line 52
    ; line 55
    br label %L_2
L_2:
    %t13 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t13, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t13)
    ; line 56
    %t14 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t14, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 5)
    %t15 = load i32, i32* @p1
    call void @_WriteInteger(i8* %t14, i32 0, i32 0, i32 %t15)
    call void @_WriteLn(i8* %t14)
    ; line 57
    %t16 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t16, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 5)
    %t17 = load i32, i32* @p2
    call void @_WriteInteger(i8* %t16, i32 0, i32 0, i32 %t17)
    call void @_WriteLn(i8* %t16)
    ; nop

    ; cleanup
    %t18 = load %T_text, %T_text* @_output
    call void @_CloseFile(i8* %t18)
    %t19 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t19)

    ; epilogue
    ret void
}


; line 12
;================================================================================
; scope: foo (level : 2)

; activation record
%Frame_foo = type
{
    ; parameters
    i32,    ; 0: x

    ; variables
    i32,    ; 1: _fnvalue

    ; dummy
    i8*
};

; function body
define i32 @F_foo(i32 %x)
{
    ; allocate frame
    %.frame = alloca %Frame_foo, align 8
    %t1 = getelementptr inbounds %Frame_foo, %Frame_foo* %.frame, i32 0, i32 0
    store i32 %x, i32* %t1

    ; body
    ; line 14
    ; line 19
    %t2 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2)
    ; line 20
    %t3 = getelementptr inbounds %Frame_foo, %Frame_foo* %.frame, i32 0, i32 1
    %t4 = sub i32 0, 1
    store i32 %t4, i32* %t3
    ; nop

    ; epilogue
    %t5 = getelementptr inbounds %Frame_foo, %Frame_foo* %.frame, i32 0, i32 1
    %t6 = load i32, i32* %t5
    ret i32 %t6
}


; line 23
;================================================================================
; scope: bar (level : 2)

; activation record
%Frame_bar = type
{
    ; parameters
    i32,    ; 0: x

    ; dummy
    i8*
};

; procedure body
define void @P_bar(i32 %x)
{
    ; allocate frame
    %.frame = alloca %Frame_bar, align 8
    %t1 = getelementptr inbounds %Frame_bar, %Frame_bar* %.frame, i32 0, i32 0
    store i32 %x, i32* %t1

    ; body
    ; line 33
    call void @P_bar_moo(%Frame_bar* %.frame)
    ; line 34
    %t2 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2)
    ; line 36
    br label %L_1
L_1:
    %t3 = call i32 @F_foo(i32 3)
    store i32 %t3, i32* @p2
    ; nop

    ; epilogue
    ret void
}


; line 27
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
    ; line 29
    ; nop

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.3 = private unnamed_addr constant [5 x i8] c"P_L1\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"P_L2\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"UNEXPECTED\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_output\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"p1 = \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"p2 = \00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!11}

!0 = !DIFile(filename: "nonlocalGoto.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
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

