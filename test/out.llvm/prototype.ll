; ModuleID = 'prototype.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\prototype.pas"
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

; line 7
;================================================================================
; scope: program scope (level : 1)

; types
%T_A = type [16 x i32]
%T_REC = type [80 x i8]
%T_array_2 = type [3 x i8]
%T_array_4 = type [4 x i32]
%T_array_3 = type [4 x %T_array_4]
%T_UNION = type [72 x i8]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@gr = dso_local global %T_REC zeroinitializer
@gv = dso_local global i32 zeroinitializer
@gv2 = dso_local global i32 zeroinitializer

; procedure body
define void @P_()
{
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @_input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @_output

    ; body
    ; line 72
    store i32 1, i32* @gv2
    ; line 73
    call void @P_test(i32* @gv2)
    ; line 74
    %t3 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 12)
    %t4 = load i32, i32* @gv2
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


; line 34
;================================================================================
; scope: foo (level : 2)

; types
%T_foo_subroutine_6 = type i32 (i8*, i32, %T_REC, %T_UNION)*

; activation record
%Frame_foo = type
{
    ; parameters
    %T_foo_subroutine_6,    ; 0: pfn

    ; variables
    i32,    ; 1: _fnvalue
    i32,    ; 2: i
    i8*,    ; 3: p
    %T_UNION,    ; 4: u

    ; dummy
    i8*
};

; function body
define i32 @F_foo(%T_foo_subroutine_6 %pfn)
{
    ; allocate frame
    %.frame = alloca %Frame_foo, align 8
    %t1 = getelementptr inbounds %Frame_foo, %Frame_foo* %.frame, i32 0, i32 0
    store %T_foo_subroutine_6 %pfn, %T_foo_subroutine_6* %t1

    ; body
    ; line 40
    %t2 = getelementptr inbounds %Frame_foo, %Frame_foo* %.frame, i32 0, i32 4
    %t4 = getelementptr inbounds %T_UNION, %T_UNION* %t2, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i32*
    store i32 100000, i32* %t3
    ; line 42
    ; line 44
    %t5 = getelementptr inbounds %Frame_foo, %Frame_foo* %.frame, i32 0, i32 1
    %t6 = load i32, i32* @gv
    %t7 = load %T_REC, %T_REC* @gr
    %t9 = getelementptr inbounds %Frame_foo, %Frame_foo* %.frame, i32 0, i32 4
    %t8 = load %T_UNION, %T_UNION* %t9
    %t10 = call i32 (i32 %t6, %T_REC %t7, %T_UNION %t8)
    store i32 %t10, i32* %t5
    ; line 46
    ; line 47
    ; nop

    ; epilogue
    %t11 = getelementptr inbounds %Frame_foo, %Frame_foo* %.frame, i32 0, i32 1
    %t12 = load i32, i32* %t11
    ret i32 %t12
}


; line 54
;================================================================================
; scope: test (level : 2)

; activation record
%Frame_test = type
{
    ; parameters
    i32*,    ; 0: y

    ; dummy
    i8*
};

; procedure body
define void @P_test(i32* %y)
{
    ; allocate frame
    %.frame = alloca %Frame_test, align 8
    %t1 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 0
    store i32* %y, i32** %t1

    ; body
    ; line 62
    store i32 1000, i32* @gv
    ; line 63
    %t3 = getelementptr inbounds %T_REC, %T_REC* @gr, i32 0, i32 16
    %t2 = bitcast i8* %t3 to %T_A*
    %t4 = getelementptr inbounds %T_A, %T_A* %t2, i32 0, i32 0
    store i32 100, i32* %t4
    ; line 64
    store i32 10000, i32* @gv2
    ; line 66
    %t5 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 3)
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 3)
    %t6 = call i32 @F_foo( %.dummy)
    call void @_WriteInteger(i8* %t5, i32 0, i32 0, i32 %t6)
    call void @_WriteLn(i8* %t5)
    ; line 68
    %t7 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 0
    %t8 = load i32*, i32** %t7
    %t11 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 0
    %t12 = load i32*, i32** %t11
    %t10 = load i32, i32* %t12
    %t9 = add i32 %t10, 2345
    store i32 %t9, i32* %t8
    ; nop

    ; epilogue
    ret void
}


; line 56
;================================================================================
; scope: test_bar (level : 3)

; activation record
%Frame_test_bar = type
{
    ; parameters
    %T_REC,    ; 0: r
    %T_UNION,    ; 1: u
    i32,    ; 2: x

    ; variables
    i32,    ; 3: _fnvalue

    ; slink
    %Frame_test*    ; 4
};

; function body
define i32 @F_test_bar(%Frame_test* %.slink, i32 %x, %T_REC %r, %T_UNION %u)
{
    ; allocate frame
    %.frame = alloca %Frame_test_bar, align 8
    %t1 = getelementptr inbounds %Frame_test_bar, %Frame_test_bar* %.frame, i32 0, i32 4
    store %Frame_test* %.slink, %Frame_test** %t1
    %t2 = getelementptr inbounds %Frame_test_bar, %Frame_test_bar* %.frame, i32 0, i32 0
    store %T_REC %r, %T_REC* %t2
    %t3 = getelementptr inbounds %Frame_test_bar, %Frame_test_bar* %.frame, i32 0, i32 1
    store %T_UNION %u, %T_UNION* %t3
    %t4 = getelementptr inbounds %Frame_test_bar, %Frame_test_bar* %.frame, i32 0, i32 2
    store i32 %x, i32* %t4

    ; body
    ; line 58
    %t5 = getelementptr inbounds %Frame_test_bar, %Frame_test_bar* %.frame, i32 0, i32 3
    %t11 = getelementptr inbounds %Frame_test_bar, %Frame_test_bar* %.frame, i32 0, i32 2
    %t10 = load i32, i32* %t11
    %t12 = getelementptr inbounds %Frame_test_bar, %Frame_test_bar* %.frame, i32 0, i32 0
    %t14 = getelementptr inbounds %T_REC, %T_REC* %t12, i32 0, i32 16
    %t13 = bitcast i8* %t14 to %T_A*
    %t15 = getelementptr inbounds %T_A, %T_A* %t13, i32 0, i32 0
    %t16 = load i32, i32* %t15
    %t9 = add i32 %t10, %t16
    %t17 = getelementptr inbounds %Frame_test_bar, %Frame_test_bar* %.frame, i32 0, i32 1
    %t19 = getelementptr inbounds %T_UNION, %T_UNION* %t17, i32 0, i32 4
    %t18 = bitcast i8* %t19 to %T_array_3*
    %t20 = getelementptr inbounds %T_array_3, %T_array_3* %t18, i32 0, i32 1
    %t21 = getelementptr inbounds %T_array_4, %T_array_4* %t20, i32 0, i32 3
    %t22 = load i32, i32* %t21
    %t8 = add i32 %t9, %t22
    %t23 = getelementptr inbounds %Frame_test_bar, %Frame_test_bar* %.frame, i32 0, i32 1
    %t25 = getelementptr inbounds %T_UNION, %T_UNION* %t23, i32 0, i32 0
    %t24 = bitcast i8* %t25 to i32*
    %t26 = load i32, i32* %t24
    %t7 = add i32 %t8, %t26
    %t29 = getelementptr inbounds %Frame_test_bar, %Frame_test_bar* %.frame, i32 0, i32 4
    %t30 = load %Frame_test*, %Frame_test** %t29
    %t28 = getelementptr inbounds %Frame_test, %Frame_test* %t30, i32 0, i32 0
    %t31 = load i32*, i32** %t28
    %t27 = load i32, i32* %t31
    %t6 = add i32 %t7, %t27
    store i32 %t6, i32* %t5
    ; nop

    ; epilogue
    %t32 = getelementptr inbounds %Frame_test_bar, %Frame_test_bar* %.frame, i32 0, i32 3
    %t33 = load i32, i32* %t32
    ret i32 %t33
}


;================================================================================
; string literals

@.str.5 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_output\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"done, gv2 = \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"foo\00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!39}
!llvm.module.flags = !{!40, !41}
!llvm.ident = !{!38}

!0 = !DIFile(filename: "prototype.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DICompositeType(tag: DW_TAG_array_type, name: "A", file: !0, line: 16, baseType: !9, size: 512, elements: !11)
!9 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!10 = !DISubrange(count: 16)
!11 = !{!10}
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "REC", file: !0, line: 18, size: 640, flags: DIFlagTypePassByValue, elements: !16)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !12, file: !0, line: 19, baseType: !6, size: 64, offset: 0)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !12, file: !0, line: 19, baseType: !6, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !12, file: !0, line: 20, baseType: !8, size: 512, offset: 128)
!16 = !{!13,!14,!15}
!17 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 11, baseType: !2, size: 24, elements: !19)
!18 = !DISubrange(count: 3)
!19 = !{!18}
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UNION", file: !0, line: 23, size: 576, flags: DIFlagTypePassByValue, elements: !30)
!21 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 27, baseType: !22, size: 512, elements: !26)
!22 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 27, baseType: !9, size: 128, elements: !24)
!23 = !DISubrange(count: 4)
!24 = !{!23}
!25 = !DISubrange(count: 4)
!26 = !{!25}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !20, file: !0, line: 24, baseType: !3, size: 32, offset: 0)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !20, file: !0, line: 26, baseType: !8, size: 512, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !20, file: !0, line: 27, baseType: !21, size: 512, offset: 32)
!30 = !{!27,!28,!29}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 38, baseType: !9, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 34, baseType: !34, size: 64)
!33 = !{!3, !3, !12, !20}
!34 = !DISubroutineType(types: !33)
!35 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!12,!17,!20,!21,!22,!31,!32,!34}
!36 = !{}
!37 = !{}
!38 = !{!"LPC 1.1"}
!39 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !36, retainedTypes: !35, globals: !37, nameTableKind: None)
!40 = !{i32 2, !"CodeView", i32 1}
!41 = !{i32 2, !"Debug Info Version", i32 3}

