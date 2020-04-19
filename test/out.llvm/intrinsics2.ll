; ModuleID = 'intrinsics2.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\intrinsics2.pas"
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

; types
%T_array_2 = type [100 x i32]
%T_array_3 = type [40 x i32]
%T_array_5 = type [3 x i32]
%T_array_4 = type [100 x %T_array_5]
%T_array_6 = type [100 x i8*]
%T_set_10 = type [1 x i32]
%T_rec = type [48 x i8]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@a1 = dso_local global %T_array_2 zeroinitializer
@a2 = dso_local global %T_array_3 zeroinitializer
@a3 = dso_local global %T_array_4 zeroinitializer
@a4 = dso_local global %T_array_6 zeroinitializer
@i = dso_local global i32 zeroinitializer
@p = dso_local global i8* zeroinitializer
@pr = dso_local global i8* zeroinitializer

; procedure body
define void @P_()
{
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @_input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @_output

    ; body
    ; line 28
    ; line 29
    ; line 30
    ; line 31
    ; line 32
    ; line 33
    ; line 35
    store i32 5, i32* @i
    ; line 36
    ; line 37
    ; nop

    ; cleanup
    %t3 = load %T_text, %T_text* @_output
    call void @_CloseFile(i8* %t3)
    %t4 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t4)

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_output\00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!42}
!llvm.module.flags = !{!43, !44}
!llvm.ident = !{!41}

!0 = !DIFile(filename: "intrinsics2.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 22, baseType: !3, size: 3200, elements: !10)
!9 = !DISubrange(count: 100)
!10 = !{!9}
!11 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 23, baseType: !3, size: 1280, elements: !13)
!12 = !DISubrange(count: 40)
!13 = !{!12}
!14 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 24, baseType: !15, size: 9600, elements: !19)
!15 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 24, baseType: !3, size: 96, elements: !17)
!16 = !DISubrange(count: 3)
!17 = !{!16}
!18 = !DISubrange(count: 100)
!19 = !{!18}
!20 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 25, baseType: !21, size: 6400, elements: !23)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 25, baseType: !3, size: 64)
!22 = !DISubrange(count: 100)
!23 = !{!22}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 18, baseType: !6, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 19, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rec", file: !0, line: 9, size: 384, flags: DIFlagTypePassByValue, elements: !37)
!27 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 13, baseType: !30, size: 32, elements: !29)
!28 = !DISubrange(count: 6)
!29 = !{!28}
!30 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !26, file: !0, line: 10, baseType: !3, size: 32, offset: 0)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !26, file: !0, line: 10, baseType: !3, size: 32, offset: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !26, file: !0, line: 11, baseType: !3, size: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !26, file: !0, line: 12, baseType: !3, size: 32, offset: 96)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !26, file: !0, line: 12, baseType: !6, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "c3", scope: !26, file: !0, line: 13, baseType: !27, size: 32, offset: 96)
!37 = !{!31,!32,!33,!34,!35,!36}
!38 = !{!1,!2,!3,!4,!5,!6,!7,!8,!11,!14,!15,!20,!21,!24,!25,!26,!27}
!39 = !{}
!40 = !{}
!41 = !{!"LPC 1.1"}
!42 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !38, globals: !40, nameTableKind: None)
!43 = !{i32 2, !"CodeView", i32 1}
!44 = !{i32 2, !"Debug Info Version", i32 3}

