; ModuleID = 'pfn.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\pfn.pas"
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

    ; cleanup
    %t3 = load %T_text, %T_text* @_output
    call void @_CloseFile(i8* %t3)
    %t4 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t4)

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

    ; epilogue
    ret void
}


; line 11
;================================================================================
; scope: foo_testPfn (level : 3)

; activation record
%Frame_foo_testPfn = type
{
    ; parameters
    i32,    ; 0: i

    ; variables
    i32,    ; 1: _fnvalue

    ; slink
    %Frame_foo*    ; 2
};

; function body
define i32 @F_foo_testPfn(%Frame_foo* %.slink, i32 %i)
{
    ; allocate frame
    %.frame = alloca %Frame_foo_testPfn, align 8
    %t1 = getelementptr inbounds %Frame_foo_testPfn, %Frame_foo_testPfn* %.frame, i32 0, i32 2
    store %Frame_foo* %.slink, %Frame_foo** %t1
    %t2 = getelementptr inbounds %Frame_foo_testPfn, %Frame_foo_testPfn* %.frame, i32 0, i32 0
    store i32 %i, i32* %t2

    ; epilogue
    %t3 = getelementptr inbounds %Frame_foo_testPfn, %Frame_foo_testPfn* %.frame, i32 0, i32 1
    %t4 = load i32, i32* %t3
    ret i32 %t4
}


; line 17
;================================================================================
; scope: foo_bar1 (level : 3)

; types
%T_foo_bar1_subroutine_2 = type i32 (i8*, i32)*

; activation record
%Frame_foo_bar1 = type
{
    ; parameters
    i32,    ; 0: i
    %T_foo_bar1_subroutine_2,    ; 1: pfn

    ; variables
    i32,    ; 2: bar1V
    i32,    ; 3: tmp

    ; slink
    %Frame_foo*    ; 4
};

; procedure body
define void @P_foo_bar1(%Frame_foo* %.slink, i32 %i, %T_foo_bar1_subroutine_2 %pfn)
{
    ; allocate frame
    %.frame = alloca %Frame_foo_bar1, align 8
    %t1 = getelementptr inbounds %Frame_foo_bar1, %Frame_foo_bar1* %.frame, i32 0, i32 4
    store %Frame_foo* %.slink, %Frame_foo** %t1
    %t2 = getelementptr inbounds %Frame_foo_bar1, %Frame_foo_bar1* %.frame, i32 0, i32 0
    store i32 %i, i32* %t2
    %t3 = getelementptr inbounds %Frame_foo_bar1, %Frame_foo_bar1* %.frame, i32 0, i32 1
    store %T_foo_bar1_subroutine_2 %pfn, %T_foo_bar1_subroutine_2* %t3

    ; epilogue
    ret void
}


; line 29
;================================================================================
; scope: foo_bar2 (level : 3)

; types
%T_foo_bar2_subroutine_3 = type void (i8*, i32)*

; activation record
%Frame_foo_bar2 = type
{
    ; parameters
    %T_foo_bar2_subroutine_3,    ; 0: pfn

    ; variables
    i32,    ; 1: bar2V

    ; slink
    %Frame_foo*    ; 2
};

; procedure body
define void @P_foo_bar2(%Frame_foo* %.slink, %T_foo_bar2_subroutine_3 %pfn)
{
    ; allocate frame
    %.frame = alloca %Frame_foo_bar2, align 8
    %t1 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %.frame, i32 0, i32 2
    store %Frame_foo* %.slink, %Frame_foo** %t1
    %t2 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %.frame, i32 0, i32 0
    store %T_foo_bar2_subroutine_3 %pfn, %T_foo_bar2_subroutine_3* %t2

    ; epilogue
    ret void
}


; line 32
;================================================================================
; scope: foo_bar2_moo (level : 4)

; types
%T_foo_bar2_moo_subroutine_4 = type i32 (i8*, i32)*

; activation record
%Frame_foo_bar2_moo = type
{
    ; parameters
    %T_foo_bar2_moo_subroutine_4,    ; 0: pfn

    ; variables
    i32,    ; 1: mooV
    i32,    ; 2: tmp

    ; slink
    %Frame_foo_bar2*    ; 3
};

; procedure body
define void @P_foo_bar2_moo(%Frame_foo_bar2* %.slink, %T_foo_bar2_moo_subroutine_4 %pfn)
{
    ; allocate frame
    %.frame = alloca %Frame_foo_bar2_moo, align 8
    %t1 = getelementptr inbounds %Frame_foo_bar2_moo, %Frame_foo_bar2_moo* %.frame, i32 0, i32 3
    store %Frame_foo_bar2* %.slink, %Frame_foo_bar2** %t1
    %t2 = getelementptr inbounds %Frame_foo_bar2_moo, %Frame_foo_bar2_moo* %.frame, i32 0, i32 0
    store %T_foo_bar2_moo_subroutine_4 %pfn, %T_foo_bar2_moo_subroutine_4* %t2

    ; epilogue
    ret void
}


; line 44
;================================================================================
; scope: foo_bar2_testPfn (level : 4)

; activation record
%Frame_foo_bar2_testPfn = type
{
    ; parameters
    i32,    ; 0: i

    ; variables
    i32,    ; 1: _fnvalue

    ; slink
    %Frame_foo_bar2*    ; 2
};

; function body
define i32 @F_foo_bar2_testPfn(%Frame_foo_bar2* %.slink, i32 %i)
{
    ; allocate frame
    %.frame = alloca %Frame_foo_bar2_testPfn, align 8
    %t1 = getelementptr inbounds %Frame_foo_bar2_testPfn, %Frame_foo_bar2_testPfn* %.frame, i32 0, i32 2
    store %Frame_foo_bar2* %.slink, %Frame_foo_bar2** %t1
    %t2 = getelementptr inbounds %Frame_foo_bar2_testPfn, %Frame_foo_bar2_testPfn* %.frame, i32 0, i32 0
    store i32 %i, i32* %t2

    ; epilogue
    %t3 = getelementptr inbounds %Frame_foo_bar2_testPfn, %Frame_foo_bar2_testPfn* %.frame, i32 0, i32 1
    %t4 = load i32, i32* %t3
    ret i32 %t4
}


; line 59
;================================================================================
; scope: foo_procPfn (level : 3)

; activation record
%Frame_foo_procPfn = type
{
    ; parameters
    i32,    ; 0: i

    ; slink
    %Frame_foo*    ; 1
};

; procedure body
define void @P_foo_procPfn(%Frame_foo* %.slink, i32 %i)
{
    ; allocate frame
    %.frame = alloca %Frame_foo_procPfn, align 8
    %t1 = getelementptr inbounds %Frame_foo_procPfn, %Frame_foo_procPfn* %.frame, i32 0, i32 1
    store %Frame_foo* %.slink, %Frame_foo** %t1
    %t2 = getelementptr inbounds %Frame_foo_procPfn, %Frame_foo_procPfn* %.frame, i32 0, i32 0
    store i32 %i, i32* %t2

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_output\00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!21}
!llvm.module.flags = !{!22, !23}
!llvm.ident = !{!20}

!0 = !DIFile(filename: "pfn.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 17, baseType: !10, size: 64)
!9 = !{!3, !3}
!10 = !DISubroutineType(types: !9)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 29, baseType: !13, size: 64)
!12 = !{null, !3}
!13 = !DISubroutineType(types: !12)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 32, baseType: !16, size: 64)
!15 = !{!3, !3}
!16 = !DISubroutineType(types: !15)
!17 = !{!1,!2,!3,!4,!5,!6,!7,!8,!10,!11,!13,!14,!16}
!18 = !{}
!19 = !{}
!20 = !{!"LPC 1.1"}
!21 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !17, globals: !19, nameTableKind: None)
!22 = !{i32 2, !"CodeView", i32 1}
!23 = !{i32 2, !"Debug Info Version", i32 3}

