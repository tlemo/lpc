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
declare dso_local void @_WriteString(i8*, i32, i32, i8*)
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

    ; cleanup
    %t3 = load %T_text, %T_text* @_output
    call void @_CloseFile(i8* %t3)
    %t4 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t4)

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

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_output\00", align 1


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

