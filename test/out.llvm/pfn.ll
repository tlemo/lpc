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

    ; body
    ; line 73
    %t3 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t3)
    ; line 74
    call void @P_foo()
    ; line 75
    %t4 = load %T_text, %T_text* @_output
    %t5 = load i32, i32* @v
    call void @_WriteInteger(i8* %t4, i32 0, i32 0, i32 %t5)
    call void @_WriteLn(i8* %t4)
    ; nop

    ; cleanup
    %t6 = load %T_text, %T_text* @_output
    call void @_CloseFile(i8* %t6)
    %t7 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t7)

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

    ; body
    ; line 65
    %t1 = getelementptr inbounds %Frame_foo, %Frame_foo* %.frame, i32 0, i32 0
    store i32 123, i32* %t1
    ; line 66
    %t2 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t2)
    ; line 67
    call void @P_foo_bar1(%Frame_foo* %.frame, i32 0,  %.dummy)
    ; line 68
    call void @P_foo_bar2(%Frame_foo* %.frame,  %.dummy)
    ; line 69
    %t3 = load %T_text, %T_text* @_output
    %t5 = getelementptr inbounds %Frame_foo, %Frame_foo* %.frame, i32 0, i32 0
    %t4 = load i32, i32* %t5
    call void @_WriteInteger(i8* %t3, i32 0, i32 0, i32 %t4)
    call void @_WriteChar(i8* %t3, i32 0, i32 0, i8 32)
    %t6 = load i32, i32* @v
    call void @_WriteInteger(i8* %t3, i32 0, i32 0, i32 %t6)
    call void @_WriteLn(i8* %t3)
    ; nop

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

    ; body
    ; line 13
    %t3 = getelementptr inbounds %Frame_foo_testPfn, %Frame_foo_testPfn* %.frame, i32 0, i32 1
    %t7 = getelementptr inbounds %Frame_foo_testPfn, %Frame_foo_testPfn* %.frame, i32 0, i32 0
    %t6 = load i32, i32* %t7
    %t5 = mul i32 %t6, 1000
    %t10 = getelementptr inbounds %Frame_foo_testPfn, %Frame_foo_testPfn* %.frame, i32 0, i32 2
    %t11 = load %Frame_foo*, %Frame_foo** %t10
    %t9 = getelementptr inbounds %Frame_foo, %Frame_foo* %t11, i32 0, i32 0
    %t8 = load i32, i32* %t9
    %t4 = add i32 %t5, %t8
    store i32 %t4, i32* %t3
    ; line 14
    %t12 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t12, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 12)
    %t14 = getelementptr inbounds %Frame_foo_testPfn, %Frame_foo_testPfn* %.frame, i32 0, i32 0
    %t13 = load i32, i32* %t14
    call void @_WriteInteger(i8* %t12, i32 0, i32 0, i32 %t13)
    call void @_WriteChar(i8* %t12, i32 0, i32 0, i8 41)
    call void @_WriteLn(i8* %t12)
    ; nop

    ; epilogue
    %t15 = getelementptr inbounds %Frame_foo_testPfn, %Frame_foo_testPfn* %.frame, i32 0, i32 1
    %t16 = load i32, i32* %t15
    ret i32 %t16
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

    ; body
    ; line 21
    %t4 = getelementptr inbounds %Frame_foo_bar1, %Frame_foo_bar1* %.frame, i32 0, i32 2
    %t6 = getelementptr inbounds %Frame_foo_bar1, %Frame_foo_bar1* %.frame, i32 0, i32 0
    %t5 = load i32, i32* %t6
    store i32 %t5, i32* %t4
    ; line 22
    %t7 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t7, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t7)
    ; line 23
    %t8 = getelementptr inbounds %Frame_foo_bar1, %Frame_foo_bar1* %.frame, i32 0, i32 3
    %t10 = getelementptr inbounds %Frame_foo_bar1, %Frame_foo_bar1* %.frame, i32 0, i32 0
    %t9 = load i32, i32* %t10
    %t11 = call i32 (i32 %t9)
    store i32 %t11, i32* %t8
    ; line 24
    %t12 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t12, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 6)
    %t14 = getelementptr inbounds %Frame_foo_bar1, %Frame_foo_bar1* %.frame, i32 0, i32 3
    %t13 = load i32, i32* %t14
    call void @_WriteInteger(i8* %t12, i32 0, i32 0, i32 %t13)
    call void @_WriteLn(i8* %t12)
    ; line 25
    %t17 = getelementptr inbounds %Frame_foo_bar1, %Frame_foo_bar1* %.frame, i32 0, i32 0
    %t16 = load i32, i32* %t17
    %t15 = icmp slt i32 %t16, 3
    br i1 %t15, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 25
    %t18 = getelementptr inbounds %Frame_foo_bar1, %Frame_foo_bar1* %.frame, i32 0, i32 4
    %t19 = load %Frame_foo*, %Frame_foo** %t18
    %t22 = getelementptr inbounds %Frame_foo_bar1, %Frame_foo_bar1* %.frame, i32 0, i32 0
    %t21 = load i32, i32* %t22
    %t20 = add i32 %t21, 1
    %t24 = getelementptr inbounds %Frame_foo_bar1, %Frame_foo_bar1* %.frame, i32 0, i32 1
    %t23 = load %T_foo_bar1_subroutine_2, %T_foo_bar1_subroutine_2* %t24
    call void @P_foo_bar1(%Frame_foo* %t19, i32 %t20, %T_foo_bar1_subroutine_2 %t23)
    br label %L_endif_1
L_endif_1:
    ; line 26
    %t25 = load %T_text, %T_text* @_output
    %t27 = getelementptr inbounds %Frame_foo_bar1, %Frame_foo_bar1* %.frame, i32 0, i32 2
    %t26 = load i32, i32* %t27
    call void @_WriteInteger(i8* %t25, i32 0, i32 0, i32 %t26)
    call void @_WriteChar(i8* %t25, i32 0, i32 0, i8 32)
    %t30 = getelementptr inbounds %Frame_foo_bar1, %Frame_foo_bar1* %.frame, i32 0, i32 4
    %t31 = load %Frame_foo*, %Frame_foo** %t30
    %t29 = getelementptr inbounds %Frame_foo, %Frame_foo* %t31, i32 0, i32 0
    %t28 = load i32, i32* %t29
    call void @_WriteInteger(i8* %t25, i32 0, i32 0, i32 %t28)
    call void @_WriteChar(i8* %t25, i32 0, i32 0, i8 32)
    %t32 = load i32, i32* @v
    call void @_WriteInteger(i8* %t25, i32 0, i32 0, i32 %t32)
    call void @_WriteLn(i8* %t25)
    ; nop

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

    ; body
    ; line 51
    %t3 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %.frame, i32 0, i32 1
    store i32 1000, i32* %t3
    ; line 52
    %t4 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t4, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t4)
    ; line 53
    %t7 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %.frame, i32 0, i32 2
    %t8 = load %Frame_foo*, %Frame_foo** %t7
    %t6 = getelementptr inbounds %Frame_foo, %Frame_foo* %t8, i32 0, i32 0
    %t5 = load i32, i32* %t6
    call void (i32 %t5)
    ; line 54
    %t9 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %.frame, i32 0, i32 2
    %t10 = load %Frame_foo*, %Frame_foo** %t9
    call void @P_foo_bar1(%Frame_foo* %t10, i32 1,  %.dummy)
    ; line 55
    call void @P_foo_bar2_moo(%Frame_foo_bar2* %.frame,  %.dummy)
    ; line 56
    %t11 = load %T_text, %T_text* @_output
    %t13 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %.frame, i32 0, i32 1
    %t12 = load i32, i32* %t13
    call void @_WriteInteger(i8* %t11, i32 0, i32 0, i32 %t12)
    call void @_WriteChar(i8* %t11, i32 0, i32 0, i8 32)
    %t16 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %.frame, i32 0, i32 2
    %t17 = load %Frame_foo*, %Frame_foo** %t16
    %t15 = getelementptr inbounds %Frame_foo, %Frame_foo* %t17, i32 0, i32 0
    %t14 = load i32, i32* %t15
    call void @_WriteInteger(i8* %t11, i32 0, i32 0, i32 %t14)
    call void @_WriteChar(i8* %t11, i32 0, i32 0, i8 32)
    %t18 = load i32, i32* @v
    call void @_WriteInteger(i8* %t11, i32 0, i32 0, i32 %t18)
    call void @_WriteLn(i8* %t11)
    ; nop

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

    ; body
    ; line 36
    %t3 = getelementptr inbounds %Frame_foo_bar2_moo, %Frame_foo_bar2_moo* %.frame, i32 0, i32 1
    %t4 = call i32 (i32 100)
    store i32 %t4, i32* %t3
    ; line 37
    %t5 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t5)
    ; line 38
    %t6 = getelementptr inbounds %Frame_foo_bar2_moo, %Frame_foo_bar2_moo* %.frame, i32 0, i32 2
    %t9 = getelementptr inbounds %Frame_foo_bar2_moo, %Frame_foo_bar2_moo* %.frame, i32 0, i32 3
    %t10 = load %Frame_foo_bar2*, %Frame_foo_bar2** %t9
    %t11 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %t10, i32 0, i32 2
    %t12 = load %Frame_foo*, %Frame_foo** %t11
    %t8 = getelementptr inbounds %Frame_foo, %Frame_foo* %t12, i32 0, i32 0
    %t7 = load i32, i32* %t8
    %t13 = call i32 (i32 %t7)
    store i32 %t13, i32* %t6
    ; line 39
    %t14 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t14, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 6)
    %t16 = getelementptr inbounds %Frame_foo_bar2_moo, %Frame_foo_bar2_moo* %.frame, i32 0, i32 2
    %t15 = load i32, i32* %t16
    call void @_WriteInteger(i8* %t14, i32 0, i32 0, i32 %t15)
    call void @_WriteLn(i8* %t14)
    ; line 40
    %t17 = getelementptr inbounds %Frame_foo_bar2_moo, %Frame_foo_bar2_moo* %.frame, i32 0, i32 3
    %t18 = load %Frame_foo_bar2*, %Frame_foo_bar2** %t17
    %t19 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %t18, i32 0, i32 2
    %t20 = load %Frame_foo*, %Frame_foo** %t19
    %t22 = getelementptr inbounds %Frame_foo_bar2_moo, %Frame_foo_bar2_moo* %.frame, i32 0, i32 0
    %t21 = load %T_foo_bar2_moo_subroutine_4, %T_foo_bar2_moo_subroutine_4* %t22
    call void @P_foo_bar1(%Frame_foo* %t20, i32 2, %T_foo_bar2_moo_subroutine_4 %t21)
    ; line 41
    %t23 = load %T_text, %T_text* @_output
    %t25 = getelementptr inbounds %Frame_foo_bar2_moo, %Frame_foo_bar2_moo* %.frame, i32 0, i32 1
    %t24 = load i32, i32* %t25
    call void @_WriteInteger(i8* %t23, i32 0, i32 0, i32 %t24)
    call void @_WriteChar(i8* %t23, i32 0, i32 0, i8 32)
    %t28 = getelementptr inbounds %Frame_foo_bar2_moo, %Frame_foo_bar2_moo* %.frame, i32 0, i32 3
    %t29 = load %Frame_foo_bar2*, %Frame_foo_bar2** %t28
    %t27 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %t29, i32 0, i32 1
    %t26 = load i32, i32* %t27
    call void @_WriteInteger(i8* %t23, i32 0, i32 0, i32 %t26)
    call void @_WriteChar(i8* %t23, i32 0, i32 0, i8 32)
    %t32 = getelementptr inbounds %Frame_foo_bar2_moo, %Frame_foo_bar2_moo* %.frame, i32 0, i32 3
    %t33 = load %Frame_foo_bar2*, %Frame_foo_bar2** %t32
    %t34 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %t33, i32 0, i32 2
    %t35 = load %Frame_foo*, %Frame_foo** %t34
    %t31 = getelementptr inbounds %Frame_foo, %Frame_foo* %t35, i32 0, i32 0
    %t30 = load i32, i32* %t31
    call void @_WriteInteger(i8* %t23, i32 0, i32 0, i32 %t30)
    call void @_WriteChar(i8* %t23, i32 0, i32 0, i8 32)
    %t36 = load i32, i32* @v
    call void @_WriteInteger(i8* %t23, i32 0, i32 0, i32 %t36)
    call void @_WriteLn(i8* %t23)
    ; nop

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

    ; body
    ; line 46
    %t3 = getelementptr inbounds %Frame_foo_bar2_testPfn, %Frame_foo_bar2_testPfn* %.frame, i32 0, i32 1
    %t7 = getelementptr inbounds %Frame_foo_bar2_testPfn, %Frame_foo_bar2_testPfn* %.frame, i32 0, i32 0
    %t6 = load i32, i32* %t7
    %t5 = mul i32 %t6, 100
    %t10 = getelementptr inbounds %Frame_foo_bar2_testPfn, %Frame_foo_bar2_testPfn* %.frame, i32 0, i32 2
    %t11 = load %Frame_foo_bar2*, %Frame_foo_bar2** %t10
    %t12 = getelementptr inbounds %Frame_foo_bar2, %Frame_foo_bar2* %t11, i32 0, i32 2
    %t13 = load %Frame_foo*, %Frame_foo** %t12
    %t9 = getelementptr inbounds %Frame_foo, %Frame_foo* %t13, i32 0, i32 0
    %t8 = load i32, i32* %t9
    %t4 = add i32 %t5, %t8
    store i32 %t4, i32* %t3
    ; line 47
    %t14 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t14, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 17)
    %t16 = getelementptr inbounds %Frame_foo_bar2_testPfn, %Frame_foo_bar2_testPfn* %.frame, i32 0, i32 0
    %t15 = load i32, i32* %t16
    call void @_WriteInteger(i8* %t14, i32 0, i32 0, i32 %t15)
    call void @_WriteChar(i8* %t14, i32 0, i32 0, i8 41)
    call void @_WriteLn(i8* %t14)
    ; nop

    ; epilogue
    %t17 = getelementptr inbounds %Frame_foo_bar2_testPfn, %Frame_foo_bar2_testPfn* %.frame, i32 0, i32 1
    %t18 = load i32, i32* %t17
    ret i32 %t18
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

    ; body
    ; line 61
    %t3 = load %T_text, %T_text* @_output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 12)
    %t5 = getelementptr inbounds %Frame_foo_procPfn, %Frame_foo_procPfn* %.frame, i32 0, i32 0
    %t4 = load i32, i32* %t5
    call void @_WriteInteger(i8* %t3, i32 0, i32 0, i32 %t4)
    call void @_WriteChar(i8* %t3, i32 0, i32 0, i8 41)
    call void @_WriteLn(i8* %t3)
    ; nop

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_output\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"foo.bar1\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"foo.bar2\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"foo.bar2.moo\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"foo.bar2.testPfn(\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"foo.procPfn(\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"foo.testPfn(\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"pfn = \00", align 1


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

