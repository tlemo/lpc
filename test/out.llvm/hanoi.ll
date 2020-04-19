; ModuleID = 'hanoi.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\hanoi.pas"
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

; line 1
;================================================================================
; scope: program scope (level : 1)

; types
%T_array_3 = type [1024 x i32]
%T_array_2 = type [2 x %T_array_3]
%T_array_5 = type [1024 x i32]
%T_array_4 = type [3 x %T_array_5]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@i = dso_local global i32 zeroinitializer
@j = dso_local global i32 zeroinitializer
@M = dso_local global %T_array_2 zeroinitializer
@n = dso_local global i32 zeroinitializer
@nn = dso_local global i32 zeroinitializer
@S = dso_local global %T_array_4 zeroinitializer

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
    %t4 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t4, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 2)
    %t5 = load %T_text, %T_text* @_output
    %t6 = load i32, i32* @n
    call void @_WriteInteger(i8* %t5, i32 0, i32 0, i32 %t6)
    call void @_WriteLn(i8* %t5)
    %t7 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t7, i32 0, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i32 0, i32 0), i32 63)
    call void @_WriteLn(i8* %t7)
    %t8 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t8, i32 0, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i32 26)
    call void @_WriteLn(i8* %t8)
    store i32 1, i32* @nn
    %t10 = load i32, i32* @nn
    %t9 = sub i32 %t10, 1
    store i32 %t9, i32* @nn
    ; nop

    ; cleanup
    %t11 = load %T_text, %T_text* @_output
    call void @_CloseFile(i8* %t11)
    %t12 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t12)

    ; epilogue
    ret void
}


; line 5
;================================================================================
; scope: hanoi1 (level : 2)

; activation record
%Frame_hanoi1 = type
{
    ; variables
    i32,    ; 0: i
    i32,    ; 1: j
    i32,    ; 2: k
    i32,    ; 3: k1
    i32,    ; 4: k2
    i32,    ; 5: k3
    i32,    ; 6: l
    i32,    ; 7: w

    ; dummy
    i8*
};

; procedure body
define void @P_hanoi1()
{
    ; allocate frame
    %.frame = alloca %Frame_hanoi1, align 8

    ; body
    %t1 = getelementptr inbounds %Frame_hanoi1, %Frame_hanoi1* %.frame, i32 0, i32 3
    %t3 = load i32, i32* @nn
    %t2 = add i32 %t3, 1
    store i32 %t2, i32* %t1
    %t4 = getelementptr inbounds %Frame_hanoi1, %Frame_hanoi1* %.frame, i32 0, i32 4
    %t7 = getelementptr inbounds %Frame_hanoi1, %Frame_hanoi1* %.frame, i32 0, i32 3
    %t6 = load i32, i32* %t7
    %t5 = sdiv i32 %t6, 2
    store i32 %t5, i32* %t4
    %t8 = getelementptr inbounds %Frame_hanoi1, %Frame_hanoi1* %.frame, i32 0, i32 5
    %t11 = getelementptr inbounds %Frame_hanoi1, %Frame_hanoi1* %.frame, i32 0, i32 4
    %t10 = load i32, i32* %t11
    %t9 = sdiv i32 %t10, 2
    store i32 %t9, i32* %t8
    %t12 = getelementptr inbounds %T_array_2, %T_array_2* @M, i32 0, i32 1
    %t14 = getelementptr inbounds %Frame_hanoi1, %Frame_hanoi1* %.frame, i32 0, i32 4
    %t13 = load i32, i32* %t14
    %t15 = getelementptr inbounds %T_array_3, %T_array_3* %t12, i32 0, i32 %t13
    store i32 1, i32* %t15
    %t16 = getelementptr inbounds %T_array_2, %T_array_2* @M, i32 0, i32 2
    %t18 = getelementptr inbounds %Frame_hanoi1, %Frame_hanoi1* %.frame, i32 0, i32 4
    %t17 = load i32, i32* %t18
    %t19 = getelementptr inbounds %T_array_3, %T_array_3* %t16, i32 0, i32 %t17
    store i32 2, i32* %t19
    ; nop

    ; epilogue
    ret void
}


; line 19
;================================================================================
; scope: hanoi2 (level : 2)

; activation record
%Frame_hanoi2 = type
{
    ; variables
    i32,    ; 0: i
    i32,    ; 1: j
    i32,    ; 2: k
    i32,    ; 3: niv
    i32,    ; 4: ns

    ; dummy
    i8*
};

; procedure body
define void @P_hanoi2()
{
    ; allocate frame
    %.frame = alloca %Frame_hanoi2, align 8

    ; body
    %t1 = getelementptr inbounds %Frame_hanoi2, %Frame_hanoi2* %.frame, i32 0, i32 0
    store i32 1, i32* %t1
    %t2 = getelementptr inbounds %Frame_hanoi2, %Frame_hanoi2* %.frame, i32 0, i32 1
    store i32 2, i32* %t2
    %t3 = getelementptr inbounds %Frame_hanoi2, %Frame_hanoi2* %.frame, i32 0, i32 4
    store i32 0, i32* %t3
    %t4 = getelementptr inbounds %Frame_hanoi2, %Frame_hanoi2* %.frame, i32 0, i32 3
    store i32 1, i32* %t4
    br label %L_1
L_1:
    ; nop

    ; epilogue
    ret void
}


; line 38
;================================================================================
; scope: hanoi3 (level : 2)

; activation record
%Frame_hanoi3 = type
{
    ; parameters
    i32,    ; 0: i
    i32,    ; 1: j
    i32,    ; 2: n

    ; variables
    i32,    ; 3: k

    ; dummy
    i8*
};

; procedure body
define void @P_hanoi3(i32 %n, i32 %i, i32 %j)
{
    ; allocate frame
    %.frame = alloca %Frame_hanoi3, align 8
    %t1 = getelementptr inbounds %Frame_hanoi3, %Frame_hanoi3* %.frame, i32 0, i32 0
    store i32 %i, i32* %t1
    %t2 = getelementptr inbounds %Frame_hanoi3, %Frame_hanoi3* %.frame, i32 0, i32 1
    store i32 %j, i32* %t2
    %t3 = getelementptr inbounds %Frame_hanoi3, %Frame_hanoi3* %.frame, i32 0, i32 2
    store i32 %n, i32* %t3

    ; body
    ; nop

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.5 = private unnamed_addr constant [64 x i8] c"1.HANOI1(umplerea matricii) 2.HANOI2(construire arbore complet)\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"3.HANOI3(recursiv)  4.EXIT\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"HANOI\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_output\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"n=\00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!23}

!0 = !DIFile(filename: "hanoi.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 3, baseType: !9, size: 65536, elements: !13)
!9 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 3, baseType: !3, size: 32768, elements: !11)
!10 = !DISubrange(count: 1024)
!11 = !{!10}
!12 = !DISubrange(count: 2)
!13 = !{!12}
!14 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 4, baseType: !15, size: 98304, elements: !19)
!15 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 4, baseType: !3, size: 32768, elements: !17)
!16 = !DISubrange(count: 1024)
!17 = !{!16}
!18 = !DISubrange(count: 3)
!19 = !{!18}
!20 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!14,!15}
!21 = !{}
!22 = !{}
!23 = !{!"LPC 1.1"}
!24 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !20, globals: !22, nameTableKind: None)
!25 = !{i32 2, !"CodeView", i32 1}
!26 = !{i32 2, !"Debug Info Version", i32 3}

