; ModuleID = 'test02.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\test02.pas"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"

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
%T_array_2 = type [16 x i8]

; program variables
@_input = dso_local global %T_text zeroinitializer
@_output = dso_local global %T_text zeroinitializer
@myName = dso_local global %T_array_2 zeroinitializer

; procedure body
define void @P_()
{
    ret void
}


;================================================================================
; string literals

@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_output\00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!15}
!llvm.module.flags = !{!16, !17}
!llvm.ident = !{!14}

!0 = !DIFile(filename: "test02.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 4, baseType: !2, size: 128, elements: !10)
!9 = !DISubrange(count: 16)
!10 = !{!9}
!11 = !{!1,!2,!3,!4,!5,!6,!7,!8}
!12 = !{}
!13 = !{}
!14 = !{!"LPC 1.1"}
!15 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !12, retainedTypes: !11, globals: !13, nameTableKind: None)
!16 = !{i32 2, !"CodeView", i32 1}
!17 = !{i32 2, !"Debug Info Version", i32 3}

