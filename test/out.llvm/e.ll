; ModuleID = 'e.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\e.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"

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
    %T_digitarray,    ; 1: x

    ; variables
    i32,    ; 2: i

    ; dummy
    i8*
};

; procedure body
define void @P_initinteger()
{
    %1 = alloca %Frame_initinteger, align 8
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
    %T_digitarray,    ; 1: x
    i32,    ; 2: xs
    %T_digitarray,    ; 3: y
    i32,    ; 4: ys

    ; variables
    i32,    ; 5: c
    i32,    ; 6: i

    ; dummy
    i8*
};

; procedure body
define void @P_divide()
{
    %1 = alloca %Frame_divide, align 8
    ret void
}


; line 41
;================================================================================
; scope: add (level : 2)

; activation record
%Frame_add = type
{
    ; parameters
    %T_digitarray,    ; 0: s
    %T_digitarray,    ; 1: x
    i32,    ; 2: xs

    ; variables
    i32,    ; 3: c
    i32,    ; 4: i

    ; dummy
    i8*
};

; procedure body
define void @P_add()
{
    %1 = alloca %Frame_add, align 8
    ret void
}


; line 71
;================================================================================
; scope: sub (level : 2)

; activation record
%Frame_sub = type
{
    ; parameters
    %T_digitarray,    ; 0: s
    %T_digitarray,    ; 1: x
    i32,    ; 2: xs

    ; variables
    i32,    ; 3: c
    i32,    ; 4: i

    ; dummy
    i8*
};

; procedure body
define void @P_sub()
{
    %1 = alloca %Frame_sub, align 8
    ret void
}


;================================================================================
; string literals

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

