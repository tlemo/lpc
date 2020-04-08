; ModuleID = 'hanoi2.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\hanoi2.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"

; runtime functions
declare dso_local i8* @_OpenFile(i32)
declare dso_local i8* @_OpenTempFile(i8*)
declare dso_local void @_CloseFile(i8*)

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
%T_nod = type [24 x i8]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@i = dso_local global i32 zeroinitializer
@j = dso_local global i32 zeroinitializer
@k = dso_local global i32 zeroinitializer
@l = dso_local global i32 zeroinitializer
@n = dso_local global i32 zeroinitializer
@n1 = dso_local global i32 zeroinitializer
@niv = dso_local global i32 zeroinitializer
@ns = dso_local global i32 zeroinitializer
@virf = dso_local global i8* zeroinitializer

; procedure body
define void @P_()
{
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @_input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @_output
    %t3 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t3)
    %t4 = load %T_text, %T_text* @_output
    call void @_CloseFile(i8* %t4)
    ret void
}


; line 12
;================================================================================
; scope: punere (level : 2)

; activation record
%Frame_punere = type
{
    ; parameters
    i32,    ; 0: x
    i32,    ; 1: y
    i32,    ; 2: z

    ; variables
    i8*,    ; 3: p

    ; dummy
    i8*
};

; procedure body
define void @P_punere()
{
    %frame = alloca %Frame_punere, align 8
    ret void
}


; line 23
;================================================================================
; scope: scoatere (level : 2)

; activation record
%Frame_scoatere = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_scoatere()
{
    %frame = alloca %Frame_scoatere, align 8
    ret void
}


;================================================================================
; string literals

@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_output\00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!20, !21}
!llvm.ident = !{!18}

!0 = !DIFile(filename: "hanoi2.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nod", file: !0, line: 4, size: 192, flags: DIFlagTypePassByValue, elements: !14)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "point", file: !0, line: 3, baseType: !8, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "inf1", scope: !8, file: !0, line: 5, baseType: !3, size: 32, offset: 0)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "inf2", scope: !8, file: !0, line: 5, baseType: !3, size: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "inf3", scope: !8, file: !0, line: 5, baseType: !3, size: 32, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "urm", scope: !8, file: !0, line: 6, baseType: !9, size: 64, offset: 128)
!14 = !{!10,!11,!12,!13}
!15 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9}
!16 = !{}
!17 = !{}
!18 = !{!"LPC 1.1"}
!19 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !16, retainedTypes: !15, globals: !17, nameTableKind: None)
!20 = !{i32 2, !"CodeView", i32 1}
!21 = !{i32 2, !"Debug Info Version", i32 3}

