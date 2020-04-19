; ModuleID = 'varParameters.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\varParameters.pas"
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
%T_A = type [10 x i32]
%T_R = type [24 x i8]
%T_S = type [1 x i32]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@i = dso_local global i32 zeroinitializer
@vA = dso_local global %T_A zeroinitializer
@vR = dso_local global %T_R zeroinitializer
@VS = dso_local global %T_S zeroinitializer

; procedure body
define void @P_()
{
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @_input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @_output

    ; body
    ; line 69
    ; line 71
    store %T_S %.dummy_set, %T_S* @VS
    ; line 73
    %t4 = getelementptr inbounds %T_R, %T_R* @vR, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i32*
    store i32 11, i32* %t3
    ; line 74
    %t6 = getelementptr inbounds %T_R, %T_R* @vR, i32 0, i32 4
    %t5 = bitcast i8* %t6 to i32*
    store i32 22, i32* %t5
    ; line 75
    %t8 = getelementptr inbounds %T_R, %T_R* @vR, i32 0, i32 8
    %t7 = bitcast i8* %t8 to double*
    store double 1.10000, double* %t7
    ; line 76
    %t10 = getelementptr inbounds %T_R, %T_R* @vR, i32 0, i32 16
    %t9 = bitcast i8* %t10 to double*
    store double 2.20000, double* %t9
    ; line 78
    store i32 1000, i32* @i
    ; line 80
    call void @P_test(%T_A* @vA, %T_S* @VS, %T_R* @vR, i32* @i)
    ; line 82
    %t11 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t11, i32 0, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i32 30)
    call void @_WriteLn(i8* %t11)
    ; line 84
    %t12 = load %T_A, %T_A* @vA
    call void @P_printA(%T_A %t12)
    ; line 85
    %t13 = load %T_S, %T_S* @VS
    call void @P_printS(%T_S %t13)
    ; line 86
    %t14 = load %T_R, %T_R* @vR
    call void @P_printR(%T_R %t14)
    ; line 87
    %t15 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t15, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 4)
    %t16 = load i32, i32* @i
    call void @_WriteInteger(i8* %t15, i32 0, i32 0, i32 %t16)
    call void @_WriteLn(i8* %t15)
    ; nop

    ; cleanup
    %t17 = load %T_text, %T_text* @_output
    call void @_CloseFile(i8* %t17)
    %t18 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t18)

    ; epilogue
    ret void
}


; line 20
;================================================================================
; scope: printA (level : 2)

; activation record
%Frame_printA = type
{
    ; parameters
    %T_A,    ; 0: arg

    ; variables
    i32,    ; 1: i

    ; dummy
    i8*
};

; procedure body
define void @P_printA(%T_A %arg)
{
    ; allocate frame
    %.frame = alloca %Frame_printA, align 8
    %t1 = getelementptr inbounds %Frame_printA, %Frame_printA* %.frame, i32 0, i32 0
    store %T_A %arg, %T_A* %t1

    ; body
    ; line 23
    ; line 25
    %t2 = load %T_text, %T_text* @_output
    call void @_WriteLn(i8* %t2)
    ; nop

    ; epilogue
    ret void
}


; line 28
;================================================================================
; scope: printS (level : 2)

; activation record
%Frame_printS = type
{
    ; parameters
    %T_S,    ; 0: arg

    ; variables
    i32,    ; 1: i

    ; dummy
    i8*
};

; procedure body
define void @P_printS(%T_S %arg)
{
    ; allocate frame
    %.frame = alloca %Frame_printS, align 8
    %t1 = getelementptr inbounds %Frame_printS, %Frame_printS* %.frame, i32 0, i32 0
    store %T_S %arg, %T_S* %t1

    ; body
    ; line 31
    %t2 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 6)
    ; line 32
    ; line 35
    %t3 = load %T_text, %T_text* @_output
    call void @_WriteChar(i8* %t3, i32 0, i32 0, i8 93)
    call void @_WriteLn(i8* %t3)
    ; line 36
    %t4 = load %T_text, %T_text* @_output
    call void @_WriteLn(i8* %t4)
    ; nop

    ; epilogue
    ret void
}


; line 39
;================================================================================
; scope: printR (level : 2)

; activation record
%Frame_printR = type
{
    ; parameters
    %T_R,    ; 0: arg

    ; dummy
    i8*
};

; procedure body
define void @P_printR(%T_R %arg)
{
    ; allocate frame
    %.frame = alloca %Frame_printR, align 8
    %t1 = getelementptr inbounds %Frame_printR, %Frame_printR* %.frame, i32 0, i32 0
    store %T_R %arg, %T_R* %t1

    ; body
    ; line 41
    %t2 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 6)
    %t3 = getelementptr inbounds %Frame_printR, %Frame_printR* %.frame, i32 0, i32 0
    %t5 = getelementptr inbounds %T_R, %T_R* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i32*
    %t6 = load i32, i32* %t4
    call void @_WriteInteger(i8* %t2, i32 0, i32 0, i32 %t6)
    call void @_WriteLn(i8* %t2)
    ; line 42
    %t7 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t7, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 6)
    %t8 = getelementptr inbounds %Frame_printR, %Frame_printR* %.frame, i32 0, i32 0
    %t10 = getelementptr inbounds %T_R, %T_R* %t8, i32 0, i32 4
    %t9 = bitcast i8* %t10 to i32*
    %t11 = load i32, i32* %t9
    call void @_WriteInteger(i8* %t7, i32 0, i32 0, i32 %t11)
    call void @_WriteLn(i8* %t7)
    ; line 43
    %t12 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t12, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 6)
    %t13 = getelementptr inbounds %Frame_printR, %Frame_printR* %.frame, i32 0, i32 0
    %t15 = getelementptr inbounds %T_R, %T_R* %t13, i32 0, i32 8
    %t14 = bitcast i8* %t15 to double*
    %t16 = load double, double* %t14
    call void @_WriteReal(i8* %t12, i32 0, i32 0, double %t16)
    call void @_WriteLn(i8* %t12)
    ; line 44
    %t17 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t17, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 6)
    %t18 = getelementptr inbounds %Frame_printR, %Frame_printR* %.frame, i32 0, i32 0
    %t20 = getelementptr inbounds %T_R, %T_R* %t18, i32 0, i32 16
    %t19 = bitcast i8* %t20 to double*
    %t21 = load double, double* %t19
    call void @_WriteReal(i8* %t17, i32 0, i32 0, double %t21)
    call void @_WriteLn(i8* %t17)
    ; line 45
    %t22 = load %T_text, %T_text* @_output
    call void @_WriteLn(i8* %t22)
    ; nop

    ; epilogue
    ret void
}


; line 48
;================================================================================
; scope: test (level : 2)

; activation record
%Frame_test = type
{
    ; parameters
    %T_A*,    ; 0: a
    i32*,    ; 1: i
    %T_R*,    ; 2: r
    %T_S*,    ; 3: s

    ; dummy
    i8*
};

; procedure body
define void @P_test(%T_A* %a, %T_S* %s, %T_R* %r, i32* %i)
{
    ; allocate frame
    %.frame = alloca %Frame_test, align 8
    %t1 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 0
    store %T_A* %a, %T_A** %t1
    %t2 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 1
    store i32* %i, i32** %t2
    %t3 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 2
    store %T_R* %r, %T_R** %t3
    %t4 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 3
    store %T_S* %s, %T_S** %t4

    ; body
    ; line 50
    %t6 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 0
    %t7 = load %T_A*, %T_A** %t6
    %t5 = load %T_A, %T_A* %t7
    call void @P_printA(%T_A %t5)
    ; line 51
    %t9 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 3
    %t10 = load %T_S*, %T_S** %t9
    %t8 = load %T_S, %T_S* %t10
    call void @P_printS(%T_S %t8)
    ; line 52
    %t12 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 2
    %t13 = load %T_R*, %T_R** %t12
    %t11 = load %T_R, %T_R* %t13
    call void @P_printR(%T_R %t11)
    ; line 53
    %t14 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t14, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 4)
    %t16 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 1
    %t17 = load i32*, i32** %t16
    %t15 = load i32, i32* %t17
    call void @_WriteInteger(i8* %t14, i32 0, i32 0, i32 %t15)
    call void @_WriteLn(i8* %t14)
    ; line 55
    %t18 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 0
    %t19 = load %T_A*, %T_A** %t18
    %t20 = getelementptr inbounds %T_A, %T_A* %t19, i32 0, i32 0
    store i32 123, i32* %t20
    ; line 56
    %t21 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 0
    %t22 = load %T_A*, %T_A** %t21
    %t23 = getelementptr inbounds %T_A, %T_A* %t22, i32 0, i32 9
    store i32 321, i32* %t23
    ; line 58
    %t24 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 3
    %t25 = load %T_S*, %T_S** %t24
    store %T_S %.dummy_set, %T_S* %t25
    ; line 60
    %t26 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 2
    %t27 = load %T_R*, %T_R** %t26
    %t29 = getelementptr inbounds %T_R, %T_R* %t27, i32 0, i32 0
    %t28 = bitcast i8* %t29 to i32*
    store i32 0, i32* %t28
    ; line 61
    %t30 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 2
    %t31 = load %T_R*, %T_R** %t30
    %t33 = getelementptr inbounds %T_R, %T_R* %t31, i32 0, i32 4
    %t32 = bitcast i8* %t33 to i32*
    %t34 = sub i32 0, 1
    store i32 %t34, i32* %t32
    ; line 62
    %t35 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 2
    %t36 = load %T_R*, %T_R** %t35
    %t38 = getelementptr inbounds %T_R, %T_R* %t36, i32 0, i32 8
    %t37 = bitcast i8* %t38 to double*
    %t39 = sitofp i32 0 to double
    store double %t39, double* %t37
    ; line 63
    %t40 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 2
    %t41 = load %T_R*, %T_R** %t40
    %t43 = getelementptr inbounds %T_R, %T_R* %t41, i32 0, i32 16
    %t42 = bitcast i8* %t43 to double*
    %t44 = fneg double 3.14000
    store double %t44, double* %t42
    ; line 65
    %t45 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 1
    %t46 = load i32*, i32** %t45
    store i32 1024, i32* %t46
    ; nop

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.3 = private unnamed_addr constant [31 x i8] c"------------------------------\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_output\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"i = \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"r.a = \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"r.b = \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"r.c = \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"r.d = \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"s = [ \00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!25}
!llvm.module.flags = !{!26, !27}
!llvm.ident = !{!24}

!0 = !DIFile(filename: "varParameters.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DICompositeType(tag: DW_TAG_array_type, name: "A", file: !0, line: 5, baseType: !3, size: 320, elements: !10)
!9 = !DISubrange(count: 10)
!10 = !{!9}
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "R", file: !0, line: 9, size: 192, flags: DIFlagTypePassByValue, elements: !16)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !11, file: !0, line: 10, baseType: !3, size: 32, offset: 0)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !11, file: !0, line: 10, baseType: !3, size: 32, offset: 32)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !11, file: !0, line: 11, baseType: !6, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !11, file: !0, line: 11, baseType: !6, size: 64, offset: 128)
!16 = !{!12,!13,!14,!15}
!17 = !DICompositeType(tag: DW_TAG_array_type, name: "S", file: !0, line: 7, baseType: !20, size: 32, elements: !19)
!18 = !DISubrange(count: 11)
!19 = !{!18}
!20 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!21 = !{!1,!2,!3,!4,!5,!6,!7,!8,!11,!17}
!22 = !{}
!23 = !{}
!24 = !{!"LPC 1.1"}
!25 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, retainedTypes: !21, globals: !23, nameTableKind: None)
!26 = !{i32 2, !"CodeView", i32 1}
!27 = !{i32 2, !"Debug Info Version", i32 3}

