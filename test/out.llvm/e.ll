; ModuleID = 'e.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\e.pas"
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
    %struct._Filename { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* null },
    %struct._Filename { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* null },
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
%T_digitarray = type [1008 x i32]

; program variables
@i = dso_local global i32 zeroinitializer
@input = dso_local global %T_text zeroinitializer
@output = dso_local global %T_text zeroinitializer
@s = dso_local global i8* zeroinitializer
@t = dso_local global i8* zeroinitializer
@ts = dso_local global i32 zeroinitializer
@x = dso_local global i8* zeroinitializer
@xs = dso_local global i32 zeroinitializer

; procedure body
define void @P_()
{
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @output

    ; body
    ; line 102
    ; line 102
    ; line 103
    %t3 = load i8*, i8** @s
    %t4 = bitcast i8* %t3 to %T_digitarray*
    call void @P_initinteger(%T_digitarray* %t4, i32 0)
    ; line 104
    %t5 = load i8*, i8** @x
    %t6 = bitcast i8* %t5 to %T_digitarray*
    call void @P_initinteger(%T_digitarray* %t6, i32 1)
    ; line 105
    store i32 0, i32* @xs
    ; line 106
    %t7 = load i8*, i8** @s
    %t8 = bitcast i8* %t7 to %T_digitarray*
    %t9 = load i8*, i8** @x
    %t10 = bitcast i8* %t9 to %T_digitarray*
    %t11 = load i32, i32* @xs
    call void @P_add(%T_digitarray* %t8, %T_digitarray* %t10, i32 %t11)
    ; line 107
    store i32 0, i32* @i
    ; line 108
    ; line 114
    %t12 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t12)
    ; line 115
    %t13 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t13, i32 45, i32 0, i8 32)
    call void @_WriteString(i8* %t13, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 4)
    %t14 = load i8*, i8** @s
    %t15 = bitcast i8* %t14 to %T_digitarray*
    %t16 = getelementptr inbounds %T_digitarray, %T_digitarray* %t15, i32 0, i32 0
    %t17 = load i32, i32* %t16
    call void @_WriteInteger(i8* %t13, i32 1, i32 0, i32 %t17)
    call void @_WriteChar(i8* %t13, i32 0, i32 0, i8 46)
    call void @_WriteLn(i8* %t13)
    ; line 116
    store i32 0, i32* @i
    ; line 117
    ; line 123
    %t18 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t18)
    ; line 124
    %t19 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t19, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 14)
    ; line 125
    ; line 128
    %t20 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t20)
    ; nop

    ; cleanup
    %t21 = load %T_text, %T_text* @output
    call void @_CloseFile(i8* %t21)
    %t22 = load %T_text, %T_text* @input
    call void @_CloseFile(i8* %t22)

    ; epilogue
    ret void
}


; line 17
;================================================================================
; scope: initinteger (level : 2)

; activation record
%Frame_initinteger = type
{
    ; parameters
    i32,    ; 0: n
    %T_digitarray*,    ; 1: x

    ; variables
    i32,    ; 2: i

    ; dummy
    i8*
};

; procedure body
define void @P_initinteger(%T_digitarray* %x, i32 %n)
{
    ; allocate frame
    %.frame = alloca %Frame_initinteger, align 8
    %t1 = getelementptr inbounds %Frame_initinteger, %Frame_initinteger* %.frame, i32 0, i32 0
    store i32 %n, i32* %t1
    %t2 = getelementptr inbounds %Frame_initinteger, %Frame_initinteger* %.frame, i32 0, i32 1
    store %T_digitarray* %x, %T_digitarray** %t2

    ; body
    ; line 21
    %t3 = getelementptr inbounds %Frame_initinteger, %Frame_initinteger* %.frame, i32 0, i32 1
    %t4 = load %T_digitarray*, %T_digitarray** %t3
    %t5 = getelementptr inbounds %T_digitarray, %T_digitarray* %t4, i32 0, i32 0
    %t7 = getelementptr inbounds %Frame_initinteger, %Frame_initinteger* %.frame, i32 0, i32 0
    %t6 = load i32, i32* %t7
    store i32 %t6, i32* %t5
    ; line 22
    ; nop

    ; epilogue
    ret void
}


; line 25
;================================================================================
; scope: divide (level : 2)

; activation record
%Frame_divide = type
{
    ; parameters
    i32,    ; 0: n
    %T_digitarray*,    ; 1: x
    i32,    ; 2: xs
    %T_digitarray*,    ; 3: y
    i32*,    ; 4: ys

    ; variables
    i32,    ; 5: c
    i32,    ; 6: i

    ; dummy
    i8*
};

; procedure body
define void @P_divide(%T_digitarray* %x, i32 %xs, i32 %n, %T_digitarray* %y, i32* %ys)
{
    ; allocate frame
    %.frame = alloca %Frame_divide, align 8
    %t1 = getelementptr inbounds %Frame_divide, %Frame_divide* %.frame, i32 0, i32 0
    store i32 %n, i32* %t1
    %t2 = getelementptr inbounds %Frame_divide, %Frame_divide* %.frame, i32 0, i32 1
    store %T_digitarray* %x, %T_digitarray** %t2
    %t3 = getelementptr inbounds %Frame_divide, %Frame_divide* %.frame, i32 0, i32 2
    store i32 %xs, i32* %t3
    %t4 = getelementptr inbounds %Frame_divide, %Frame_divide* %.frame, i32 0, i32 3
    store %T_digitarray* %y, %T_digitarray** %t4
    %t5 = getelementptr inbounds %Frame_divide, %Frame_divide* %.frame, i32 0, i32 4
    store i32* %ys, i32** %t5

    ; body
    ; line 31
    %t6 = getelementptr inbounds %Frame_divide, %Frame_divide* %.frame, i32 0, i32 5
    store i32 0, i32* %t6
    ; line 32
    ; line 37
    %t7 = getelementptr inbounds %Frame_divide, %Frame_divide* %.frame, i32 0, i32 4
    %t8 = load i32*, i32** %t7
    %t10 = getelementptr inbounds %Frame_divide, %Frame_divide* %.frame, i32 0, i32 2
    %t9 = load i32, i32* %t10
    store i32 %t9, i32* %t8
    ; line 38
    ; nop

    ; epilogue
    ret void
}


; line 41
;================================================================================
; scope: add (level : 2)

; activation record
%Frame_add = type
{
    ; parameters
    %T_digitarray*,    ; 0: s
    %T_digitarray*,    ; 1: x
    i32,    ; 2: xs

    ; variables
    i32,    ; 3: c
    i32,    ; 4: i

    ; dummy
    i8*
};

; procedure body
define void @P_add(%T_digitarray* %s, %T_digitarray* %x, i32 %xs)
{
    ; allocate frame
    %.frame = alloca %Frame_add, align 8
    %t1 = getelementptr inbounds %Frame_add, %Frame_add* %.frame, i32 0, i32 0
    store %T_digitarray* %s, %T_digitarray** %t1
    %t2 = getelementptr inbounds %Frame_add, %Frame_add* %.frame, i32 0, i32 1
    store %T_digitarray* %x, %T_digitarray** %t2
    %t3 = getelementptr inbounds %Frame_add, %Frame_add* %.frame, i32 0, i32 2
    store i32 %xs, i32* %t3

    ; body
    ; line 46
    %t4 = getelementptr inbounds %Frame_add, %Frame_add* %.frame, i32 0, i32 3
    store i32 0, i32* %t4
    ; line 47
    ; line 57
    %t5 = getelementptr inbounds %Frame_add, %Frame_add* %.frame, i32 0, i32 4
    %t7 = getelementptr inbounds %Frame_add, %Frame_add* %.frame, i32 0, i32 2
    %t6 = load i32, i32* %t7
    store i32 %t6, i32* %t5
    ; line 58
    ; nop

    ; epilogue
    ret void
}


; line 71
;================================================================================
; scope: sub (level : 2)

; activation record
%Frame_sub = type
{
    ; parameters
    %T_digitarray*,    ; 0: s
    %T_digitarray*,    ; 1: x
    i32,    ; 2: xs

    ; variables
    i32,    ; 3: c
    i32,    ; 4: i

    ; dummy
    i8*
};

; procedure body
define void @P_sub(%T_digitarray* %s, %T_digitarray* %x, i32 %xs)
{
    ; allocate frame
    %.frame = alloca %Frame_sub, align 8
    %t1 = getelementptr inbounds %Frame_sub, %Frame_sub* %.frame, i32 0, i32 0
    store %T_digitarray* %s, %T_digitarray** %t1
    %t2 = getelementptr inbounds %Frame_sub, %Frame_sub* %.frame, i32 0, i32 1
    store %T_digitarray* %x, %T_digitarray** %t2
    %t3 = getelementptr inbounds %Frame_sub, %Frame_sub* %.frame, i32 0, i32 2
    store i32 %xs, i32* %t3

    ; body
    ; line 76
    %t4 = getelementptr inbounds %Frame_sub, %Frame_sub* %.frame, i32 0, i32 3
    store i32 0, i32* %t4
    ; line 77
    ; line 87
    %t5 = getelementptr inbounds %Frame_sub, %Frame_sub* %.frame, i32 0, i32 4
    %t7 = getelementptr inbounds %Frame_sub, %Frame_sub* %.frame, i32 0, i32 2
    %t6 = load i32, i32* %t7
    store i32 %t6, i32* %t5
    ; line 88
    ; nop

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.4 = private unnamed_addr constant [15 x i8] c"Final digits: \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"e = \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!18, !19}
!llvm.ident = !{!16}

!0 = !DIFile(filename: "e.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!9 = !DICompositeType(tag: DW_TAG_array_type, name: "digitarray", file: !0, line: 10, baseType: !8, size: 32256, elements: !11)
!10 = !DISubrange(count: 1008)
!11 = !{!10}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 13, baseType: !9, size: 64)
!13 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!12}
!14 = !{}
!15 = !{}
!16 = !{!"LPC 1.1"}
!17 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !14, retainedTypes: !13, globals: !15, nameTableKind: None)
!18 = !{i32 2, !"CodeView", i32 1}
!19 = !{i32 2, !"Debug Info Version", i32 3}

