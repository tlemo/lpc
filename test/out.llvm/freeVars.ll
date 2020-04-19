; ModuleID = 'freeVars.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\freeVars.pas"
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
@v = dso_local global i32 zeroinitializer

; procedure body
define void @P_()
{
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @_input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @_output

    ; body
    ; line 44
    call void @P_foo()
    ; line 45
    %t3 = load %T_text, %T_text* @_output
    %t4 = load i32, i32* @v
    call void @_WriteInteger(i8* %t3, i32 0, i32 0, i32 %t4)
    call void @_WriteLn(i8* %t3)
    ; nop

    ; cleanup
    %t5 = load %T_text, %T_text* @_output
    call void @_CloseFile(i8* %t5)
    %t6 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t6)

    ; epilogue
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
    ; allocate frame
    %.frame = alloca %Frame_foo, align 8

    ; body
    ; line 38
    call void @P_foo_bar1(%Frame_foo* %.frame, i32 0)
    ; line 39
    call void @P_foo_bar2(%Frame_foo* %.frame, i32 1000)
    ; line 40
    %t1 = load %T_text, %T_text* @_output
    %t3 = getelementptr inbounds %Frame_foo, %Frame_foo* %.frame, i32 0, i32 0
    %t2 = load i32, i32* %t3
    call void @_WriteInteger(i8* %t1, i32 0, i32 0, i32 %t2)
    call void @_WriteChar(i8* %t1, i32 0, i32 0, i8 32)
    %t4 = load i32, i32* @v
    call void @_WriteInteger(i8* %t1, i32 0, i32 0, i32 %t4)
    call void @_WriteLn(i8* %t1)
    ; nop

    ; epilogue
    ret void
}


; line 11
;================================================================================
; scope: foo_bar1 (level : 3)

; activation record
%Frame_foo_bar1 = type
{
    ; parameters
    i32,    ; 0: i

    ; variables
    i32,    ; 1: bar1V

    ; slink
    %Frame_foo*    ; 2
};

; procedure body
define void @P_foo_bar1(%Frame_foo* %.slink, i32 %i)
{
    ; allocate frame
    %.frame = alloca %Frame_foo_bar1, align 8
    %t1 = getelementptr inbounds %Frame_foo_bar1, %Frame_foo_bar1* %.frame, i32 0, i32 2
    store %Frame_foo* %.slink, %Frame_foo** %t1
    %t2 = getelementptr inbounds %Frame_foo_bar1, %Frame_foo_bar1* %.frame, i32 0, i32 0
    store i32 %i, i32* %t2

    ; body
    ; line 14
    %t3 = getelementptr inbounds %Frame_foo_bar1, %Frame_foo_bar1* %.frame, i32 0, i32 1
    %t5 = getelementptr inbounds %Frame_foo_bar1, %Frame_foo_bar1* %.frame, i32 0, i32 0
    %t4 = load i32, i32* %t5
    store i32 %t4, i32* %t3
    ; line 15
    ; line 16
    %t6 = load %T_text, %T_text* @_output
    %t8 = getelementptr inbounds %Frame_foo_bar1, %Frame_foo_bar1* %.frame, i32 0, i32 1
    %t7 = load i32, i32* %t8
    call void @_WriteInteger(i8* %t6, i32 0, i32 0, i32 %t7)
    call void @_WriteChar(i8* %t6, i32 0, i32 0, i8 32)
    %t11 = getelementptr inbounds %Frame_foo_bar1, %Frame_foo_bar1* %.frame, i32 0, i32 2
    %t12 = load %Frame_foo*, %Frame_foo** %t11
    %t10 = getelementptr inbounds %Frame_foo, %Frame_foo* %t12, i32 0, i32 0
    %t9 = load i32, i32* %t10
    call void @_WriteInteger(i8* %t6, i32 0, i32 0, i32 %t9)
    call void @_WriteChar(i8* %t6, i32 0, i32 0, i8 32)
    %t13 = load i32, i32* @v
    call void @_WriteInteger(i8* %t6, i32 0, i32 0, i32 %t13)
    call void @_WriteLn(i8* %t6)
    ; nop

    ; epilogue
    ret void
}


; line 19
;================================================================================
; scope: foo_bar2 (level : 3)

; activation record
%Frame_foo_bar2 = type
{
    ; parameters
    i32,    ; 0: i

    ; variables
    i32,    ; 1: bar2V

    ; slink
    %Frame_foo*    ; 2
};

; procedure body
define void @P_foo_bar2(%Frame_foo* %.slink, i32 %i)
{
    ; allocate frame
    %.frame = alloca %Frame_foo_bar2, align 8
    %t1 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %.frame, i32 0, i32 2
    store %Frame_foo* %.slink, %Frame_foo** %t1
    %t2 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %.frame, i32 0, i32 0
    store i32 %i, i32* %t2

    ; body
    ; line 31
    %t3 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %.frame, i32 0, i32 1
    %t5 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %.frame, i32 0, i32 0
    %t4 = load i32, i32* %t5
    store i32 %t4, i32* %t3
    ; line 32
    %t6 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %.frame, i32 0, i32 2
    %t7 = load %Frame_foo*, %Frame_foo** %t6
    call void @P_foo_bar1(%Frame_foo* %t7, i32 1)
    ; line 33
    call void @P_foo_bar2_moo(%Frame_foo_bar2* %.frame)
    ; line 34
    %t8 = load %T_text, %T_text* @_output
    %t10 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %.frame, i32 0, i32 1
    %t9 = load i32, i32* %t10
    call void @_WriteInteger(i8* %t8, i32 0, i32 0, i32 %t9)
    call void @_WriteChar(i8* %t8, i32 0, i32 0, i8 32)
    %t13 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %.frame, i32 0, i32 2
    %t14 = load %Frame_foo*, %Frame_foo** %t13
    %t12 = getelementptr inbounds %Frame_foo, %Frame_foo* %t14, i32 0, i32 0
    %t11 = load i32, i32* %t12
    call void @_WriteInteger(i8* %t8, i32 0, i32 0, i32 %t11)
    call void @_WriteChar(i8* %t8, i32 0, i32 0, i8 32)
    %t15 = load i32, i32* @v
    call void @_WriteInteger(i8* %t8, i32 0, i32 0, i32 %t15)
    call void @_WriteLn(i8* %t8)
    ; nop

    ; epilogue
    ret void
}


; line 22
;================================================================================
; scope: foo_bar2_moo (level : 4)

; activation record
%Frame_foo_bar2_moo = type
{
    ; variables
    i32,    ; 0: mooV

    ; slink
    %Frame_foo_bar2*    ; 1
};

; procedure body
define void @P_foo_bar2_moo(%Frame_foo_bar2* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_foo_bar2_moo, align 8
    %t1 = getelementptr inbounds %Frame_foo_bar2_moo, %Frame_foo_bar2_moo* %.frame, i32 0, i32 1
    store %Frame_foo_bar2* %.slink, %Frame_foo_bar2** %t1

    ; body
    ; line 25
    %t2 = getelementptr inbounds %Frame_foo_bar2_moo, %Frame_foo_bar2_moo* %.frame, i32 0, i32 0
    store i32 100, i32* %t2
    ; line 26
    %t3 = getelementptr inbounds %Frame_foo_bar2_moo, %Frame_foo_bar2_moo* %.frame, i32 0, i32 1
    %t4 = load %Frame_foo_bar2*, %Frame_foo_bar2** %t3
    %t5 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %t4, i32 0, i32 2
    %t6 = load %Frame_foo*, %Frame_foo** %t5
    call void @P_foo_bar1(%Frame_foo* %t6, i32 2)
    ; line 27
    %t7 = load %T_text, %T_text* @_output
    %t9 = getelementptr inbounds %Frame_foo_bar2_moo, %Frame_foo_bar2_moo* %.frame, i32 0, i32 0
    %t8 = load i32, i32* %t9
    call void @_WriteInteger(i8* %t7, i32 0, i32 0, i32 %t8)
    call void @_WriteChar(i8* %t7, i32 0, i32 0, i8 32)
    %t12 = getelementptr inbounds %Frame_foo_bar2_moo, %Frame_foo_bar2_moo* %.frame, i32 0, i32 1
    %t13 = load %Frame_foo_bar2*, %Frame_foo_bar2** %t12
    %t11 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %t13, i32 0, i32 1
    %t10 = load i32, i32* %t11
    call void @_WriteInteger(i8* %t7, i32 0, i32 0, i32 %t10)
    call void @_WriteChar(i8* %t7, i32 0, i32 0, i8 32)
    %t16 = getelementptr inbounds %Frame_foo_bar2_moo, %Frame_foo_bar2_moo* %.frame, i32 0, i32 1
    %t17 = load %Frame_foo_bar2*, %Frame_foo_bar2** %t16
    %t15 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %t17, i32 0, i32 0
    %t14 = load i32, i32* %t15
    call void @_WriteInteger(i8* %t7, i32 0, i32 0, i32 %t14)
    call void @_WriteChar(i8* %t7, i32 0, i32 0, i8 32)
    %t20 = getelementptr inbounds %Frame_foo_bar2_moo, %Frame_foo_bar2_moo* %.frame, i32 0, i32 1
    %t21 = load %Frame_foo_bar2*, %Frame_foo_bar2** %t20
    %t22 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %t21, i32 0, i32 2
    %t23 = load %Frame_foo*, %Frame_foo** %t22
    %t19 = getelementptr inbounds %Frame_foo, %Frame_foo* %t23, i32 0, i32 0
    %t18 = load i32, i32* %t19
    call void @_WriteInteger(i8* %t7, i32 0, i32 0, i32 %t18)
    call void @_WriteChar(i8* %t7, i32 0, i32 0, i8 32)
    %t24 = load i32, i32* @v
    call void @_WriteInteger(i8* %t7, i32 0, i32 0, i32 %t24)
    call void @_WriteLn(i8* %t7)
    ; nop

    ; epilogue
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

!0 = !DIFile(filename: "freeVars.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
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

