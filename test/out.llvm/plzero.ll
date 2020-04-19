; ModuleID = 'plzero.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\plzero.pas"
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

; line 1
;================================================================================
; scope: program scope (level : 1)

; types
%T_alfa = type [10 x i8]
%T_instruction = type [12 x i8]
%T_array_2 = type [201 x %T_instruction]
%T_symset = type [1 x i32]
%T_array_5 = type [81 x i8]
%T_array_7 = type [5 x i8]
%T_array_6 = type [8 x %T_array_7]
%T_array_8 = type [256 x i32]
%T_record_10 = type [40 x i8]
%T_array_9 = type [101 x %T_record_10]
%T_array_11 = type [11 x %T_alfa]
%T_array_12 = type [11 x i32]

; program variables
@a = dso_local global %T_alfa zeroinitializer
@cc = dso_local global i32 zeroinitializer
@ch = dso_local global i8 zeroinitializer
@code = dso_local global %T_array_2 zeroinitializer
@cx = dso_local global i32 zeroinitializer
@declbegsys = dso_local global %T_symset zeroinitializer
@err = dso_local global i32 zeroinitializer
@facbegsys = dso_local global %T_symset zeroinitializer
@id = dso_local global %T_alfa zeroinitializer
@input = dso_local global %T_text zeroinitializer
@kk = dso_local global i32 zeroinitializer
@line = dso_local global %T_array_5 zeroinitializer
@ll = dso_local global i32 zeroinitializer
@mnemonic = dso_local global %T_array_6 zeroinitializer
@num = dso_local global i32 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@ssym = dso_local global %T_array_8 zeroinitializer
@statbegsys = dso_local global %T_symset zeroinitializer
@sym = dso_local global i32 zeroinitializer
@table = dso_local global %T_array_9 zeroinitializer
@word = dso_local global %T_array_11 zeroinitializer
@wsym = dso_local global %T_array_12 zeroinitializer

; procedure body
define void @P_()
{
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @output

    ; body
    ; line 423
    ; line 424
    %t3 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 1
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), %T_alfa* %t3
    ; line 424
    %t4 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 2
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %T_alfa* %t4
    ; line 425
    %t5 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 3
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %T_alfa* %t5
    ; line 425
    %t6 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 4
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %T_alfa* %t6
    ; line 426
    %t7 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 5
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %T_alfa* %t7
    ; line 426
    %t8 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 6
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %T_alfa* %t8
    ; line 427
    %t9 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 7
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), %T_alfa* %t9
    ; line 427
    %t10 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 8
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %T_alfa* %t10
    ; line 428
    %t11 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 9
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), %T_alfa* %t11
    ; line 428
    %t12 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 10
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), %T_alfa* %t12
    ; line 429
    %t13 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 11
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %T_alfa* %t13
    ; line 430
    %t14 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 1
    store i32 20, i32* %t14
    ; line 430
    %t15 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 2
    store i32 26, i32* %t15
    ; line 431
    %t16 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 3
    store i32 27, i32* %t16
    ; line 431
    %t17 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 4
    store i32 25, i32* %t17
    ; line 432
    %t18 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 5
    store i32 21, i32* %t18
    ; line 432
    %t19 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 6
    store i32 22, i32* %t19
    ; line 433
    %t20 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 7
    store i32 7, i32* %t20
    ; line 433
    %t21 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 8
    store i32 29, i32* %t21
    ; line 434
    %t22 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 9
    store i32 23, i32* %t22
    ; line 434
    %t23 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 10
    store i32 28, i32* %t23
    ; line 435
    %t24 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 11
    store i32 24, i32* %t24
    ; line 436
    %t25 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 43
    store i32 3, i32* %t25
    ; line 436
    %t26 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 45
    store i32 4, i32* %t26
    ; line 437
    %t27 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 42
    store i32 5, i32* %t27
    ; line 437
    %t28 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 47
    store i32 6, i32* %t28
    ; line 438
    %t29 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 40
    store i32 14, i32* %t29
    ; line 438
    %t30 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 41
    store i32 15, i32* %t30
    ; line 439
    %t31 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 61
    store i32 8, i32* %t31
    ; line 439
    %t32 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 44
    store i32 16, i32* %t32
    ; line 440
    %t33 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 46
    store i32 18, i32* %t33
    ; line 440
    %t34 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 35
    store i32 9, i32* %t34
    ; line 441
    %t35 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 60
    store i32 10, i32* %t35
    ; line 441
    %t36 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 62
    store i32 12, i32* %t36
    ; line 442
    %t37 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 91
    store i32 11, i32* %t37
    ; line 442
    %t38 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 93
    store i32 13, i32* %t38
    ; line 443
    %t39 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 59
    store i32 17, i32* %t39
    ; line 444
    %t40 = getelementptr inbounds %T_array_6, %T_array_6* @mnemonic, i32 0, i32 0
    store %T_array_7 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), %T_array_7* %t40
    ; line 444
    %t41 = getelementptr inbounds %T_array_6, %T_array_6* @mnemonic, i32 0, i32 1
    store %T_array_7 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %T_array_7* %t41
    ; line 445
    %t42 = getelementptr inbounds %T_array_6, %T_array_6* @mnemonic, i32 0, i32 2
    store %T_array_7 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), %T_array_7* %t42
    ; line 445
    %t43 = getelementptr inbounds %T_array_6, %T_array_6* @mnemonic, i32 0, i32 3
    store %T_array_7 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), %T_array_7* %t43
    ; line 446
    %t44 = getelementptr inbounds %T_array_6, %T_array_6* @mnemonic, i32 0, i32 4
    store %T_array_7 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), %T_array_7* %t44
    ; line 446
    %t45 = getelementptr inbounds %T_array_6, %T_array_6* @mnemonic, i32 0, i32 5
    store %T_array_7 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), %T_array_7* %t45
    ; line 447
    %t46 = getelementptr inbounds %T_array_6, %T_array_6* @mnemonic, i32 0, i32 6
    store %T_array_7 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), %T_array_7* %t46
    ; line 447
    %t47 = getelementptr inbounds %T_array_6, %T_array_6* @mnemonic, i32 0, i32 7
    store %T_array_7 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), %T_array_7* %t47
    ; line 448
    store %T_symset %.dummy_set, %T_symset* @declbegsys
    ; line 449
    store %T_symset %.dummy_set, %T_symset* @statbegsys
    ; line 450
    store %T_symset %.dummy_set, %T_symset* @facbegsys
    ; line 451
    store i32 0, i32* @err
    ; line 452
    store i32 0, i32* @cc
    ; line 452
    store i32 0, i32* @cx
    ; line 452
    store i32 0, i32* @ll
    ; line 452
    store i8 32, i8* @ch
    ; line 452
    store i32 10, i32* @kk
    ; line 452
    call void @P_getsym()
    ; line 453
    call void @P_block(i32 0, i32 0, %T_symset %.dummy_set)
    ; line 454
    %t50 = load i32, i32* @sym
    %t49 = icmp ne i32 %t50, 18
    br i1 %t49, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 454
    call void @P_error(i32 9)
    br label %L_endif_1
L_endif_1:
    ; line 455
    %t52 = load i32, i32* @err
    %t51 = icmp eq i32 %t52, 0
    br i1 %t51, label %L_then_2, label %L_else_2
L_then_2:
    ; line 455
    call void @P_interpret()
    br label %L_endif_2
L_else_2:
    ; line 455
    %t53 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t53, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0), i32 23)
    br label %L_endif_2
L_endif_2:
    ; line 456
    br label %L_99
L_99:
    %t54 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t54)

    ; cleanup
    %t55 = load %T_text, %T_text* @output
    call void @_CloseFile(i8* %t55)
    %t56 = load %T_text, %T_text* @input
    call void @_CloseFile(i8* %t56)

    ; epilogue
    ret void
}


; line 56
;================================================================================
; scope: error (level : 2)

; activation record
%Frame_error = type
{
    ; parameters
    i32,    ; 0: n

    ; dummy
    i8*
};

; procedure body
define void @P_error(i32 %n)
{
    ; allocate frame
    %.frame = alloca %Frame_error, align 8
    %t1 = getelementptr inbounds %Frame_error, %Frame_error* %.frame, i32 0, i32 0
    store i32 %n, i32* %t1

    ; body
    ; line 57
    %t2 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 5)
    %t4 = load i32, i32* @cc
    %t3 = sub i32 %t4, 1
    call void @_WriteChar(i8* %t2, i32 %t3, i32 0, i8 32)
    call void @_WriteChar(i8* %t2, i32 0, i32 0, i8 94)
    %t6 = getelementptr inbounds %Frame_error, %Frame_error* %.frame, i32 0, i32 0
    %t5 = load i32, i32* %t6
    call void @_WriteInteger(i8* %t2, i32 2, i32 0, i32 %t5)
    call void @_WriteLn(i8* %t2)
    ; line 57
    %t8 = load i32, i32* @err
    %t7 = add i32 %t8, 1
    store i32 %t7, i32* @err

    ; epilogue
    ret void
}


; line 60
;================================================================================
; scope: getsym (level : 2)

; activation record
%Frame_getsym = type
{
    ; variables
    i32,    ; 0: i
    i32,    ; 1: j
    i32,    ; 2: k

    ; dummy
    i8*
};

; procedure body
define void @P_getsym()
{
    ; allocate frame
    %.frame = alloca %Frame_getsym, align 8

    ; body
    ; line 78
    ; line 79
    br i1 true, label %L_then_1, label %L_else_1
L_then_1:
    ; line 80
    %t2 = getelementptr inbounds %Frame_getsym, %Frame_getsym* %.frame, i32 0, i32 2
    store i32 0, i32* %t2
    ; line 81
    ; line 86
    %t5 = getelementptr inbounds %Frame_getsym, %Frame_getsym* %.frame, i32 0, i32 2
    %t4 = load i32, i32* %t5
    %t6 = load i32, i32* @kk
    %t3 = icmp sge i32 %t4, %t6
    br i1 %t3, label %L_then_2, label %L_else_2
L_then_2:
    ; line 86
    %t8 = getelementptr inbounds %Frame_getsym, %Frame_getsym* %.frame, i32 0, i32 2
    %t7 = load i32, i32* %t8
    store i32 %t7, i32* @kk
    br label %L_endif_2
L_else_2:
    ; line 87
    br label %L_endif_2
L_endif_2:
    ; line 89
    %t9 = load %T_alfa, %T_alfa* @a
    store %T_alfa %t9, %T_alfa* @id
    ; line 89
    %t10 = getelementptr inbounds %Frame_getsym, %Frame_getsym* %.frame, i32 0, i32 0
    store i32 1, i32* %t10
    ; line 89
    %t11 = getelementptr inbounds %Frame_getsym, %Frame_getsym* %.frame, i32 0, i32 1
    store i32 11, i32* %t11
    ; line 90
    ; line 94
    %t15 = getelementptr inbounds %Frame_getsym, %Frame_getsym* %.frame, i32 0, i32 0
    %t14 = load i32, i32* %t15
    %t13 = sub i32 %t14, 1
    %t17 = getelementptr inbounds %Frame_getsym, %Frame_getsym* %.frame, i32 0, i32 1
    %t16 = load i32, i32* %t17
    %t12 = icmp sgt i32 %t13, %t16
    br i1 %t12, label %L_then_3, label %L_else_3
L_then_3:
    ; line 94
    %t19 = getelementptr inbounds %Frame_getsym, %Frame_getsym* %.frame, i32 0, i32 2
    %t18 = load i32, i32* %t19
    %t20 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 %t18
    %t21 = load i32, i32* %t20
    store i32 %t21, i32* @sym
    br label %L_endif_3
L_else_3:
    ; line 94
    store i32 1, i32* @sym
    br label %L_endif_3
L_endif_3:
    br label %L_endif_1
L_else_1:
    ; line 96
    br i1 true, label %L_then_4, label %L_else_4
L_then_4:
    ; line 97
    %t23 = getelementptr inbounds %Frame_getsym, %Frame_getsym* %.frame, i32 0, i32 2
    store i32 0, i32* %t23
    ; line 97
    store i32 0, i32* @num
    ; line 97
    store i32 2, i32* @sym
    ; line 98
    ; line 101
    %t26 = getelementptr inbounds %Frame_getsym, %Frame_getsym* %.frame, i32 0, i32 2
    %t25 = load i32, i32* %t26
    %t24 = icmp sgt i32 %t25, 14
    br i1 %t24, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 101
    call void @P_error(i32 30)
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_else_4:
    ; line 103
    %t28 = load i8, i8* @ch
    %t27 = icmp eq i32 %t28, 58
    br i1 %t27, label %L_then_6, label %L_else_6
L_then_6:
    ; line 104
    call void @P_getsym_getch(%Frame_getsym* %.frame)
    ; line 105
    %t30 = load i8, i8* @ch
    %t29 = icmp eq i32 %t30, 61
    br i1 %t29, label %L_then_7, label %L_else_7
L_then_7:
    ; line 106
    store i32 19, i32* @sym
    ; line 106
    call void @P_getsym_getch(%Frame_getsym* %.frame)
    br label %L_endif_7
L_else_7:
    ; line 107
    store i32 0, i32* @sym
    br label %L_endif_7
L_endif_7:
    ; nop
    br label %L_endif_6
L_else_6:
    ; line 109
    %t31 = load i8, i8* @ch
    %t32 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 %t31
    %t33 = load i32, i32* %t32
    store i32 %t33, i32* @sym
    ; line 109
    call void @P_getsym_getch(%Frame_getsym* %.frame)
    br label %L_endif_6
L_endif_6:
    br label %L_endif_4
L_endif_4:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 63
;================================================================================
; scope: getsym_getch (level : 3)

; activation record
%Frame_getsym_getch = type
{
    ; slink
    %Frame_getsym*    ; 0
};

; procedure body
define void @P_getsym_getch(%Frame_getsym* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_getsym_getch, align 8
    %t1 = getelementptr inbounds %Frame_getsym_getch, %Frame_getsym_getch* %.frame, i32 0, i32 0
    store %Frame_getsym* %.slink, %Frame_getsym** %t1

    ; body
    ; line 64
    %t3 = load i32, i32* @cc
    %t4 = load i32, i32* @ll
    %t2 = icmp eq i32 %t3, %t4
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 65
    br i1 %.dummy.intrin, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 66
    %t5 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i32 19)
    ; line 66
    br label %L_endif_2
L_endif_2:
    ; line 68
    store i32 0, i32* @ll
    ; line 68
    store i32 0, i32* @cc
    ; line 68
    %t6 = load %T_text, %T_text* @output
    %t7 = load i32, i32* @cx
    call void @_WriteInteger(i8* %t6, i32 5, i32 0, i32 %t7)
    call void @_WriteChar(i8* %t6, i32 0, i32 0, i8 32)
    ; line 69
    ; line 72
    %t8 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t8)
    ; line 72
    ; line 72
    %t10 = load i32, i32* @ll
    %t9 = add i32 %t10, 1
    store i32 %t9, i32* @ll
    ; line 72
    %t11 = load i32, i32* @ll
    %t12 = getelementptr inbounds %T_array_5, %T_array_5* @line, i32 0, i32 %t11
    store i8 32, i8* %t12
    ; nop
    br label %L_endif_1
L_endif_1:
    ; line 74
    %t14 = load i32, i32* @cc
    %t13 = add i32 %t14, 1
    store i32 %t13, i32* @cc
    ; line 74
    %t15 = load i32, i32* @cc
    %t16 = getelementptr inbounds %T_array_5, %T_array_5* @line, i32 0, i32 %t15
    %t17 = load i8, i8* %t16
    store i8 %t17, i8* @ch

    ; epilogue
    ret void
}


; line 113
;================================================================================
; scope: gen (level : 2)

; activation record
%Frame_gen = type
{
    ; parameters
    i32,    ; 0: x
    i32,    ; 1: y
    i32,    ; 2: z

    ; dummy
    i8*
};

; procedure body
define void @P_gen(i32 %x, i32 %y, i32 %z)
{
    ; allocate frame
    %.frame = alloca %Frame_gen, align 8
    %t1 = getelementptr inbounds %Frame_gen, %Frame_gen* %.frame, i32 0, i32 0
    store i32 %x, i32* %t1
    %t2 = getelementptr inbounds %Frame_gen, %Frame_gen* %.frame, i32 0, i32 1
    store i32 %y, i32* %t2
    %t3 = getelementptr inbounds %Frame_gen, %Frame_gen* %.frame, i32 0, i32 2
    store i32 %z, i32* %t3

    ; body
    ; line 114
    %t5 = load i32, i32* @cx
    %t4 = icmp sgt i32 %t5, 200
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 115
    %t6 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t6, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i32 17)
    ; line 115
    br label %L_endif_1
L_endif_1:
    ; line 118
    %t7 = load i32, i32* @cx
    %t8 = getelementptr inbounds %T_array_2, %T_array_2* @code, i32 0, i32 %t7
    %t10 = getelementptr inbounds %T_instruction, %T_instruction* %t8, i32 0, i32 0
    %t9 = bitcast i8* %t10 to i32*
    %t12 = getelementptr inbounds %Frame_gen, %Frame_gen* %.frame, i32 0, i32 0
    %t11 = load i32, i32* %t12
    store i32 %t11, i32* %t9
    ; line 118
    %t13 = load i32, i32* @cx
    %t14 = getelementptr inbounds %T_array_2, %T_array_2* @code, i32 0, i32 %t13
    %t16 = getelementptr inbounds %T_instruction, %T_instruction* %t14, i32 0, i32 4
    %t15 = bitcast i8* %t16 to i32*
    %t18 = getelementptr inbounds %Frame_gen, %Frame_gen* %.frame, i32 0, i32 1
    %t17 = load i32, i32* %t18
    store i32 %t17, i32* %t15
    ; line 118
    %t19 = load i32, i32* @cx
    %t20 = getelementptr inbounds %T_array_2, %T_array_2* @code, i32 0, i32 %t19
    %t22 = getelementptr inbounds %T_instruction, %T_instruction* %t20, i32 0, i32 8
    %t21 = bitcast i8* %t22 to i32*
    %t24 = getelementptr inbounds %Frame_gen, %Frame_gen* %.frame, i32 0, i32 2
    %t23 = load i32, i32* %t24
    store i32 %t23, i32* %t21
    ; line 120
    %t26 = load i32, i32* @cx
    %t25 = add i32 %t26, 1
    store i32 %t25, i32* @cx

    ; epilogue
    ret void
}


; line 123
;================================================================================
; scope: test (level : 2)

; activation record
%Frame_test = type
{
    ; parameters
    i32,    ; 0: n
    %T_symset,    ; 1: s1
    %T_symset,    ; 2: s2

    ; dummy
    i8*
};

; procedure body
define void @P_test(%T_symset %s1, %T_symset %s2, i32 %n)
{
    ; allocate frame
    %.frame = alloca %Frame_test, align 8
    %t1 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 0
    store i32 %n, i32* %t1
    %t2 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 1
    store %T_symset %s1, %T_symset* %t2
    %t3 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 2
    store %T_symset %s2, %T_symset* %t3

    ; body
    ; line 124
    %t5 = icmp eq i1 0, true
    br i1 %t5, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 125
    %t7 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 0
    %t6 = load i32, i32* %t7
    call void @P_error(i32 %t6)
    ; line 125
    %t8 = getelementptr inbounds %Frame_test, %Frame_test* %.frame, i32 0, i32 1
    store %T_symset true, %T_symset* %t8
    ; line 126
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 130
;================================================================================
; scope: block (level : 2)

; activation record
%Frame_block = type
{
    ; parameters
    %T_symset,    ; 0: fsys
    i32,    ; 1: lev
    i32,    ; 2: tx

    ; variables
    i32,    ; 3: cx0
    i32,    ; 4: dx
    i32,    ; 5: tx0

    ; dummy
    i8*
};

; procedure body
define void @P_block(i32 %lev, i32 %tx, %T_symset %fsys)
{
    ; allocate frame
    %.frame = alloca %Frame_block, align 8
    %t1 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t1
    %t2 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 1
    store i32 %lev, i32* %t2
    %t3 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 2
    store i32 %tx, i32* %t3

    ; body
    ; line 309
    %t4 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 4
    store i32 3, i32* %t4
    ; line 309
    %t5 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 5
    %t7 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 2
    %t6 = load i32, i32* %t7
    store i32 %t6, i32* %t5
    ; line 309
    %t9 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 2
    %t8 = load i32, i32* %t9
    %t10 = getelementptr inbounds %T_array_9, %T_array_9* @table, i32 0, i32 %t8
    %t12 = getelementptr inbounds %T_record_10, %T_record_10* %t10, i32 0, i32 20
    %t11 = bitcast i8* %t12 to i32*
    %t13 = load i32, i32* @cx
    store i32 %t13, i32* %t11
    ; line 309
    call void @P_gen(i32 6, i32 0, i32 0)
    ; line 310
    %t16 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 1
    %t15 = load i32, i32* %t16
    %t14 = icmp sgt i32 %t15, 3
    br i1 %t14, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 310
    call void @P_error(i32 32)
    br label %L_endif_1
L_endif_1:
    ; line 311
    ; line 345
    %t18 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 5
    %t17 = load i32, i32* %t18
    %t19 = getelementptr inbounds %T_array_9, %T_array_9* @table, i32 0, i32 %t17
    %t21 = getelementptr inbounds %T_record_10, %T_record_10* %t19, i32 0, i32 20
    %t20 = bitcast i8* %t21 to i32*
    %t22 = load i32, i32* %t20
    %t23 = getelementptr inbounds %T_array_2, %T_array_2* @code, i32 0, i32 %t22
    %t25 = getelementptr inbounds %T_instruction, %T_instruction* %t23, i32 0, i32 8
    %t24 = bitcast i8* %t25 to i32*
    %t26 = load i32, i32* @cx
    store i32 %t26, i32* %t24
    ; line 347
    %t28 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 5
    %t27 = load i32, i32* %t28
    %t29 = getelementptr inbounds %T_array_9, %T_array_9* @table, i32 0, i32 %t27
    %t31 = getelementptr inbounds %T_record_10, %T_record_10* %t29, i32 0, i32 20
    %t30 = bitcast i8* %t31 to i32*
    %t32 = load i32, i32* @cx
    store i32 %t32, i32* %t30
    ; nop
    ; line 349
    %t33 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 3
    store i32 0, i32* %t33
    ; line 349
    %t35 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 4
    %t34 = load i32, i32* %t35
    call void @P_gen(i32 5, i32 0, i32 %t34)
    ; line 350
    call void @P_block_statement(%Frame_block* %.frame, %T_symset %.dummy_set)
    ; line 351
    call void @P_gen(i32 1, i32 0, i32 0)
    ; line 352
    %t38 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 0
    %t37 = load %T_symset, %T_symset* %t38
    call void @P_test(%T_symset %t37, %T_symset %.dummy_set, i32 8)
    ; line 353
    call void @P_block_listcode(%Frame_block* %.frame)
    ; nop

    ; epilogue
    ret void
}


; line 134
;================================================================================
; scope: block_enter (level : 3)

; activation record
%Frame_block_enter = type
{
    ; parameters
    i32,    ; 0: k

    ; slink
    %Frame_block*    ; 1
};

; procedure body
define void @P_block_enter(%Frame_block* %.slink, i32 %k)
{
    ; allocate frame
    %.frame = alloca %Frame_block_enter, align 8
    %t1 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 1
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 0
    store i32 %k, i32* %t2

    ; body
    ; line 136
    %t4 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 1
    %t5 = load %Frame_block*, %Frame_block** %t4
    %t3 = getelementptr inbounds %Frame_block, %Frame_block* %t5, i32 0, i32 2
    %t9 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 1
    %t10 = load %Frame_block*, %Frame_block** %t9
    %t8 = getelementptr inbounds %Frame_block, %Frame_block* %t10, i32 0, i32 2
    %t7 = load i32, i32* %t8
    %t6 = add i32 %t7, 1
    store i32 %t6, i32* %t3
    ; line 138
    %t13 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 1
    %t14 = load %Frame_block*, %Frame_block** %t13
    %t12 = getelementptr inbounds %Frame_block, %Frame_block* %t14, i32 0, i32 2
    %t11 = load i32, i32* %t12
    %t15 = getelementptr inbounds %T_array_9, %T_array_9* @table, i32 0, i32 %t11
    %t17 = getelementptr inbounds %T_record_10, %T_record_10* %t15, i32 0, i32 0
    %t16 = bitcast i8* %t17 to %T_alfa*
    %t18 = load %T_alfa, %T_alfa* @id
    store %T_alfa %t18, %T_alfa* %t16
    ; line 138
    %t21 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 1
    %t22 = load %Frame_block*, %Frame_block** %t21
    %t20 = getelementptr inbounds %Frame_block, %Frame_block* %t22, i32 0, i32 2
    %t19 = load i32, i32* %t20
    %t23 = getelementptr inbounds %T_array_9, %T_array_9* @table, i32 0, i32 %t19
    %t25 = getelementptr inbounds %T_record_10, %T_record_10* %t23, i32 0, i32 12
    %t24 = bitcast i8* %t25 to i32*
    %t27 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 0
    %t26 = load i32, i32* %t27
    store i32 %t26, i32* %t24
    ; line 139

    ; epilogue
    ret void
}


; line 151
;================================================================================
; scope: block_position (level : 3)

; activation record
%Frame_block_position = type
{
    ; parameters
    %T_alfa,    ; 0: id

    ; variables
    i32,    ; 1: _fnvalue
    i32,    ; 2: i

    ; slink
    %Frame_block*    ; 3
};

; function body
define i32 @F_block_position(%Frame_block* %.slink, %T_alfa %id)
{
    ; allocate frame
    %.frame = alloca %Frame_block_position, align 8
    %t1 = getelementptr inbounds %Frame_block_position, %Frame_block_position* %.frame, i32 0, i32 3
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_position, %Frame_block_position* %.frame, i32 0, i32 0
    store %T_alfa %id, %T_alfa* %t2

    ; body
    ; line 154
    %t3 = getelementptr inbounds %T_array_9, %T_array_9* @table, i32 0, i32 0
    %t5 = getelementptr inbounds %T_record_10, %T_record_10* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to %T_alfa*
    %t7 = getelementptr inbounds %Frame_block_position, %Frame_block_position* %.frame, i32 0, i32 0
    %t6 = load %T_alfa, %T_alfa* %t7
    store %T_alfa %t6, %T_alfa* %t4
    ; line 154
    %t8 = getelementptr inbounds %Frame_block_position, %Frame_block_position* %.frame, i32 0, i32 2
    %t11 = getelementptr inbounds %Frame_block_position, %Frame_block_position* %.frame, i32 0, i32 3
    %t12 = load %Frame_block*, %Frame_block** %t11
    %t10 = getelementptr inbounds %Frame_block, %Frame_block* %t12, i32 0, i32 2
    %t9 = load i32, i32* %t10
    store i32 %t9, i32* %t8
    ; line 155
    ; line 156
    %t13 = getelementptr inbounds %Frame_block_position, %Frame_block_position* %.frame, i32 0, i32 1
    %t15 = getelementptr inbounds %Frame_block_position, %Frame_block_position* %.frame, i32 0, i32 2
    %t14 = load i32, i32* %t15
    store i32 %t14, i32* %t13

    ; epilogue
    %t16 = getelementptr inbounds %Frame_block_position, %Frame_block_position* %.frame, i32 0, i32 1
    %t17 = load i32, i32* %t16
    ret i32 %t17
}


; line 159
;================================================================================
; scope: block_constdeclaration (level : 3)

; activation record
%Frame_block_constdeclaration = type
{
    ; slink
    %Frame_block*    ; 0
};

; procedure body
define void @P_block_constdeclaration(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_constdeclaration, align 8
    %t1 = getelementptr inbounds %Frame_block_constdeclaration, %Frame_block_constdeclaration* %.frame, i32 0, i32 0
    store %Frame_block* %.slink, %Frame_block** %t1

    ; body
    ; line 160
    %t3 = load i32, i32* @sym
    %t2 = icmp eq i32 %t3, 1
    br i1 %t2, label %L_then_1, label %L_else_1
L_then_1:
    ; line 161
    call void @P_getsym()
    ; line 162
    br i1 true, label %L_then_2, label %L_else_2
L_then_2:
    ; line 163
    %t6 = load i32, i32* @sym
    %t5 = icmp eq i32 %t6, 19
    br i1 %t5, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 163
    call void @P_error(i32 1)
    br label %L_endif_3
L_endif_3:
    ; line 164
    call void @P_getsym()
    ; line 165
    %t8 = load i32, i32* @sym
    %t7 = icmp eq i32 %t8, 2
    br i1 %t7, label %L_then_4, label %L_else_4
L_then_4:
    ; line 166
    %t9 = getelementptr inbounds %Frame_block_constdeclaration, %Frame_block_constdeclaration* %.frame, i32 0, i32 0
    %t10 = load %Frame_block*, %Frame_block** %t9
    call void @P_block_enter(%Frame_block* %t10, i32 0)
    ; line 166
    call void @P_getsym()
    br label %L_endif_4
L_else_4:
    ; line 168
    call void @P_error(i32 2)
    br label %L_endif_4
L_endif_4:
    br label %L_endif_2
L_else_2:
    ; line 169
    call void @P_error(i32 3)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_else_1:
    ; line 170
    call void @P_error(i32 4)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 173
;================================================================================
; scope: block_vardeclaration (level : 3)

; activation record
%Frame_block_vardeclaration = type
{
    ; slink
    %Frame_block*    ; 0
};

; procedure body
define void @P_block_vardeclaration(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_vardeclaration, align 8
    %t1 = getelementptr inbounds %Frame_block_vardeclaration, %Frame_block_vardeclaration* %.frame, i32 0, i32 0
    store %Frame_block* %.slink, %Frame_block** %t1

    ; body
    ; line 174
    %t3 = load i32, i32* @sym
    %t2 = icmp eq i32 %t3, 1
    br i1 %t2, label %L_then_1, label %L_else_1
L_then_1:
    ; line 175
    %t4 = getelementptr inbounds %Frame_block_vardeclaration, %Frame_block_vardeclaration* %.frame, i32 0, i32 0
    %t5 = load %Frame_block*, %Frame_block** %t4
    call void @P_block_enter(%Frame_block* %t5, i32 1)
    ; line 175
    call void @P_getsym()
    br label %L_endif_1
L_else_1:
    ; line 176
    call void @P_error(i32 4)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 179
;================================================================================
; scope: block_listcode (level : 3)

; activation record
%Frame_block_listcode = type
{
    ; variables
    i32,    ; 0: i

    ; slink
    %Frame_block*    ; 1
};

; procedure body
define void @P_block_listcode(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_listcode, align 8
    %t1 = getelementptr inbounds %Frame_block_listcode, %Frame_block_listcode* %.frame, i32 0, i32 1
    store %Frame_block* %.slink, %Frame_block** %t1

    ; body
    ; line 182

    ; epilogue
    ret void
}


; line 187
;================================================================================
; scope: block_statement (level : 3)

; activation record
%Frame_block_statement = type
{
    ; parameters
    %T_symset,    ; 0: fsys

    ; variables
    i32,    ; 1: cx1
    i32,    ; 2: cx2
    i32,    ; 3: i

    ; slink
    %Frame_block*    ; 4
};

; procedure body
define void @P_block_statement(%Frame_block* %.slink, %T_symset %fsys)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement, align 8
    %t1 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 4
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2

    ; body
    ; line 263
    %t4 = load i32, i32* @sym
    %t3 = icmp eq i32 %t4, 1
    br i1 %t3, label %L_then_1, label %L_else_1
L_then_1:
    ; line 264
    %t5 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 3
    %t6 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 4
    %t7 = load %Frame_block*, %Frame_block** %t6
    %t8 = load %T_alfa, %T_alfa* @id
    %t9 = call i32 @F_block_position(%Frame_block* %t7, %T_alfa %t8)
    store i32 %t9, i32* %t5
    ; line 265
    %t12 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 3
    %t11 = load i32, i32* %t12
    %t10 = icmp eq i32 %t11, 0
    br i1 %t10, label %L_then_2, label %L_else_2
L_then_2:
    ; line 265
    call void @P_error(i32 11)
    br label %L_endif_2
L_else_2:
    ; line 266
    %t15 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 3
    %t14 = load i32, i32* %t15
    %t16 = getelementptr inbounds %T_array_9, %T_array_9* @table, i32 0, i32 %t14
    %t18 = getelementptr inbounds %T_record_10, %T_record_10* %t16, i32 0, i32 12
    %t17 = bitcast i8* %t18 to i32*
    %t19 = load i32, i32* %t17
    %t13 = icmp ne i32 %t19, 1
    br i1 %t13, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 267
    call void @P_error(i32 12)
    ; line 267
    %t20 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 3
    store i32 0, i32* %t20
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    ; line 269
    call void @P_getsym()
    ; line 269
    %t22 = load i32, i32* @sym
    %t21 = icmp eq i32 %t22, 19
    br i1 %t21, label %L_then_4, label %L_else_4
L_then_4:
    ; line 269
    call void @P_getsym()
    br label %L_endif_4
L_else_4:
    ; line 269
    call void @P_error(i32 13)
    br label %L_endif_4
L_endif_4:
    ; line 270
    %t24 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 0
    %t23 = load %T_symset, %T_symset* %t24
    call void @P_block_statement_expression(%Frame_block_statement* %.frame, %T_symset %t23)
    ; line 271
    %t27 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 3
    %t26 = load i32, i32* %t27
    %t25 = icmp ne i32 %t26, 0
    br i1 %t25, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 272
    %t31 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 4
    %t32 = load %Frame_block*, %Frame_block** %t31
    %t30 = getelementptr inbounds %Frame_block, %Frame_block* %t32, i32 0, i32 1
    %t29 = load i32, i32* %t30
    %t34 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 3
    %t33 = load i32, i32* %t34
    %t35 = getelementptr inbounds %T_array_9, %T_array_9* @table, i32 0, i32 %t33
    %t37 = getelementptr inbounds %T_record_10, %T_record_10* %t35, i32 0, i32 16
    %t36 = bitcast i8* %t37 to i32*
    %t38 = load i32, i32* %t36
    %t28 = sub i32 %t29, %t38
    %t40 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 3
    %t39 = load i32, i32* %t40
    %t41 = getelementptr inbounds %T_array_9, %T_array_9* @table, i32 0, i32 %t39
    %t43 = getelementptr inbounds %T_record_10, %T_record_10* %t41, i32 0, i32 20
    %t42 = bitcast i8* %t43 to i32*
    %t44 = load i32, i32* %t42
    call void @P_gen(i32 3, i32 %t28, i32 %t44)
    br label %L_endif_5
L_endif_5:
    br label %L_endif_1
L_else_1:
    ; line 274
    %t46 = load i32, i32* @sym
    %t45 = icmp eq i32 %t46, 26
    br i1 %t45, label %L_then_6, label %L_else_6
L_then_6:
    ; line 275
    call void @P_getsym()
    ; line 276
    %t48 = load i32, i32* @sym
    %t47 = icmp ne i32 %t48, 1
    br i1 %t47, label %L_then_7, label %L_else_7
L_then_7:
    ; line 276
    call void @P_error(i32 14)
    br label %L_endif_7
L_else_7:
    ; line 277
    %t49 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 3
    %t50 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 4
    %t51 = load %Frame_block*, %Frame_block** %t50
    %t52 = load %T_alfa, %T_alfa* @id
    %t53 = call i32 @F_block_position(%Frame_block* %t51, %T_alfa %t52)
    store i32 %t53, i32* %t49
    ; line 278
    %t56 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 3
    %t55 = load i32, i32* %t56
    %t54 = icmp eq i32 %t55, 0
    br i1 %t54, label %L_then_8, label %L_else_8
L_then_8:
    ; line 278
    call void @P_error(i32 11)
    br label %L_endif_8
L_else_8:
    ; line 280
    %t59 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 3
    %t58 = load i32, i32* %t59
    %t60 = getelementptr inbounds %T_array_9, %T_array_9* @table, i32 0, i32 %t58
    %t62 = getelementptr inbounds %T_record_10, %T_record_10* %t60, i32 0, i32 12
    %t61 = bitcast i8* %t62 to i32*
    %t63 = load i32, i32* %t61
    %t57 = icmp eq i32 %t63, 2
    br i1 %t57, label %L_then_9, label %L_else_9
L_then_9:
    ; line 280
    %t67 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 4
    %t68 = load %Frame_block*, %Frame_block** %t67
    %t66 = getelementptr inbounds %Frame_block, %Frame_block* %t68, i32 0, i32 1
    %t65 = load i32, i32* %t66
    %t70 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 3
    %t69 = load i32, i32* %t70
    %t71 = getelementptr inbounds %T_array_9, %T_array_9* @table, i32 0, i32 %t69
    %t73 = getelementptr inbounds %T_record_10, %T_record_10* %t71, i32 0, i32 16
    %t72 = bitcast i8* %t73 to i32*
    %t74 = load i32, i32* %t72
    %t64 = sub i32 %t65, %t74
    %t76 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 3
    %t75 = load i32, i32* %t76
    %t77 = getelementptr inbounds %T_array_9, %T_array_9* @table, i32 0, i32 %t75
    %t79 = getelementptr inbounds %T_record_10, %T_record_10* %t77, i32 0, i32 20
    %t78 = bitcast i8* %t79 to i32*
    %t80 = load i32, i32* %t78
    call void @P_gen(i32 4, i32 %t64, i32 %t80)
    br label %L_endif_9
L_else_9:
    ; line 281
    call void @P_error(i32 15)
    br label %L_endif_9
L_endif_9:
    br label %L_endif_8
L_endif_8:
    ; line 282
    call void @P_getsym()
    br label %L_endif_7
L_endif_7:
    br label %L_endif_6
L_else_6:
    ; line 285
    %t82 = load i32, i32* @sym
    %t81 = icmp eq i32 %t82, 22
    br i1 %t81, label %L_then_10, label %L_else_10
L_then_10:
    ; line 286
    call void @P_getsym()
    ; line 286
    call void @P_block_statement_condition(%Frame_block_statement* %.frame, %T_symset %.dummy_set)
    ; line 287
    %t85 = load i32, i32* @sym
    %t84 = icmp eq i32 %t85, 23
    br i1 %t84, label %L_then_11, label %L_else_11
L_then_11:
    ; line 287
    call void @P_getsym()
    br label %L_endif_11
L_else_11:
    ; line 287
    call void @P_error(i32 16)
    br label %L_endif_11
L_endif_11:
    ; line 288
    %t86 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 1
    %t87 = load i32, i32* @cx
    store i32 %t87, i32* %t86
    ; line 288
    call void @P_gen(i32 7, i32 0, i32 0)
    ; line 289
    %t88 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 4
    %t89 = load %Frame_block*, %Frame_block** %t88
    %t91 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 0
    %t90 = load %T_symset, %T_symset* %t91
    call void @P_block_statement(%Frame_block* %t89, %T_symset %t90)
    ; line 289
    %t93 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 1
    %t92 = load i32, i32* %t93
    %t94 = getelementptr inbounds %T_array_2, %T_array_2* @code, i32 0, i32 %t92
    %t96 = getelementptr inbounds %T_instruction, %T_instruction* %t94, i32 0, i32 8
    %t95 = bitcast i8* %t96 to i32*
    %t97 = load i32, i32* @cx
    store i32 %t97, i32* %t95
    br label %L_endif_10
L_else_10:
    ; line 291
    %t99 = load i32, i32* @sym
    %t98 = icmp eq i32 %t99, 20
    br i1 %t98, label %L_then_12, label %L_else_12
L_then_12:
    ; line 292
    call void @P_getsym()
    ; line 292
    %t100 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 4
    %t101 = load %Frame_block*, %Frame_block** %t100
    call void @P_block_statement(%Frame_block* %t101, %T_symset %.dummy_set)
    ; line 293
    ; line 298
    %t104 = load i32, i32* @sym
    %t103 = icmp eq i32 %t104, 21
    br i1 %t103, label %L_then_13, label %L_else_13
L_then_13:
    ; line 298
    call void @P_getsym()
    br label %L_endif_13
L_else_13:
    ; line 298
    call void @P_error(i32 17)
    br label %L_endif_13
L_endif_13:
    br label %L_endif_12
L_else_12:
    ; line 300
    %t106 = load i32, i32* @sym
    %t105 = icmp eq i32 %t106, 24
    br i1 %t105, label %L_then_14, label %L_endif_14
L_then_14:
    ; line 301
    %t107 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 1
    %t108 = load i32, i32* @cx
    store i32 %t108, i32* %t107
    ; line 301
    call void @P_getsym()
    ; line 301
    call void @P_block_statement_condition(%Frame_block_statement* %.frame, %T_symset %.dummy_set)
    ; line 302
    %t110 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 2
    %t111 = load i32, i32* @cx
    store i32 %t111, i32* %t110
    ; line 302
    call void @P_gen(i32 7, i32 0, i32 0)
    ; line 303
    %t113 = load i32, i32* @sym
    %t112 = icmp eq i32 %t113, 25
    br i1 %t112, label %L_then_15, label %L_else_15
L_then_15:
    ; line 303
    call void @P_getsym()
    br label %L_endif_15
L_else_15:
    ; line 303
    call void @P_error(i32 18)
    br label %L_endif_15
L_endif_15:
    ; line 304
    %t114 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 4
    %t115 = load %Frame_block*, %Frame_block** %t114
    %t117 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 0
    %t116 = load %T_symset, %T_symset* %t117
    call void @P_block_statement(%Frame_block* %t115, %T_symset %t116)
    ; line 304
    %t119 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 1
    %t118 = load i32, i32* %t119
    call void @P_gen(i32 6, i32 0, i32 %t118)
    ; line 304
    %t121 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 2
    %t120 = load i32, i32* %t121
    %t122 = getelementptr inbounds %T_array_2, %T_array_2* @code, i32 0, i32 %t120
    %t124 = getelementptr inbounds %T_instruction, %T_instruction* %t122, i32 0, i32 8
    %t123 = bitcast i8* %t124 to i32*
    %t125 = load i32, i32* @cx
    store i32 %t125, i32* %t123
    br label %L_endif_14
L_endif_14:
    br label %L_endif_12
L_endif_12:
    br label %L_endif_10
L_endif_10:
    br label %L_endif_6
L_endif_6:
    br label %L_endif_1
L_endif_1:
    ; line 306
    %t127 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 0
    %t126 = load %T_symset, %T_symset* %t127
    call void @P_test(%T_symset %t126, %T_symset %.dummy_set, i32 19)

    ; epilogue
    ret void
}


; line 189
;================================================================================
; scope: block_statement_expression (level : 4)

; activation record
%Frame_block_statement_expression = type
{
    ; parameters
    %T_symset,    ; 0: fsys

    ; variables
    i32,    ; 1: addop

    ; slink
    %Frame_block_statement*    ; 2
};

; procedure body
define void @P_block_statement_expression(%Frame_block_statement* %.slink, %T_symset %fsys)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_expression, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 2
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2

    ; body
    ; line 230
    br i1 true, label %L_then_1, label %L_else_1
L_then_1:
    ; line 231
    %t4 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 1
    %t5 = load i32, i32* @sym
    store i32 %t5, i32* %t4
    ; line 231
    call void @P_getsym()
    ; line 231
    call void @P_block_statement_expression_term(%Frame_block_statement_expression* %.frame, %T_symset %.dummy_set)
    ; line 232
    %t9 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 1
    %t8 = load i32, i32* %t9
    %t7 = icmp eq i32 %t8, 4
    br i1 %t7, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 232
    call void @P_gen(i32 1, i32 0, i32 1)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_else_1:
    ; line 233
    call void @P_block_statement_expression_term(%Frame_block_statement_expression* %.frame, %T_symset %.dummy_set)
    br label %L_endif_1
L_endif_1:
    ; line 234

    ; epilogue
    ret void
}


; line 191
;================================================================================
; scope: block_statement_expression_term (level : 5)

; activation record
%Frame_block_statement_expression_term = type
{
    ; parameters
    %T_symset,    ; 0: fsys

    ; variables
    i32,    ; 1: mulop

    ; slink
    %Frame_block_statement_expression*    ; 2
};

; procedure body
define void @P_block_statement_expression_term(%Frame_block_statement_expression* %.slink, %T_symset %fsys)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_expression_term, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_expression_term, %Frame_block_statement_expression_term* %.frame, i32 0, i32 2
    store %Frame_block_statement_expression* %.slink, %Frame_block_statement_expression** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_expression_term, %Frame_block_statement_expression_term* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2

    ; body
    ; line 223
    call void @P_block_statement_expression_term_factor(%Frame_block_statement_expression_term* %.frame, %T_symset %.dummy_set)
    ; line 224

    ; epilogue
    ret void
}


; line 193
;================================================================================
; scope: block_statement_expression_term_factor (level : 6)

; activation record
%Frame_block_statement_expression_term_factor = type
{
    ; parameters
    %T_symset,    ; 0: fsys

    ; variables
    i32,    ; 1: i

    ; slink
    %Frame_block_statement_expression_term*    ; 2
};

; procedure body
define void @P_block_statement_expression_term_factor(%Frame_block_statement_expression_term* %.slink, %T_symset %fsys)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_expression_term_factor, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_expression_term_factor, %Frame_block_statement_expression_term_factor* %.frame, i32 0, i32 2
    store %Frame_block_statement_expression_term* %.slink, %Frame_block_statement_expression_term** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_expression_term_factor, %Frame_block_statement_expression_term_factor* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2

    ; body
    ; line 195
    %t3 = load %T_symset, %T_symset* @facbegsys
    %t5 = getelementptr inbounds %Frame_block_statement_expression_term_factor, %Frame_block_statement_expression_term_factor* %.frame, i32 0, i32 0
    %t4 = load %T_symset, %T_symset* %t5
    call void @P_test(%T_symset %t3, %T_symset %t4, i32 24)
    ; line 196

    ; epilogue
    ret void
}


; line 240
;================================================================================
; scope: block_statement_condition (level : 4)

; activation record
%Frame_block_statement_condition = type
{
    ; parameters
    %T_symset,    ; 0: fsys

    ; variables
    i32,    ; 1: relop

    ; slink
    %Frame_block_statement*    ; 2
};

; procedure body
define void @P_block_statement_condition(%Frame_block_statement* %.slink, %T_symset %fsys)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_condition, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_condition, %Frame_block_statement_condition* %.frame, i32 0, i32 2
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_condition, %Frame_block_statement_condition* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2

    ; body
    ; line 243
    %t4 = load i32, i32* @sym
    %t3 = icmp eq i32 %t4, 7
    br i1 %t3, label %L_then_1, label %L_else_1
L_then_1:
    ; line 244
    call void @P_getsym()
    ; line 244
    %t5 = getelementptr inbounds %Frame_block_statement_condition, %Frame_block_statement_condition* %.frame, i32 0, i32 2
    %t6 = load %Frame_block_statement*, %Frame_block_statement** %t5
    %t8 = getelementptr inbounds %Frame_block_statement_condition, %Frame_block_statement_condition* %.frame, i32 0, i32 0
    %t7 = load %T_symset, %T_symset* %t8
    call void @P_block_statement_expression(%Frame_block_statement* %t6, %T_symset %t7)
    ; line 244
    call void @P_gen(i32 1, i32 0, i32 6)
    br label %L_endif_1
L_else_1:
    ; line 246
    %t9 = getelementptr inbounds %Frame_block_statement_condition, %Frame_block_statement_condition* %.frame, i32 0, i32 2
    %t10 = load %Frame_block_statement*, %Frame_block_statement** %t9
    call void @P_block_statement_expression(%Frame_block_statement* %t10, %T_symset %.dummy_set)
    ; line 247
    %t13 = icmp eq i1 0, true
    br i1 %t13, label %L_then_2, label %L_else_2
L_then_2:
    ; line 248
    call void @P_error(i32 20)
    br label %L_endif_2
L_else_2:
    ; line 249
    %t14 = getelementptr inbounds %Frame_block_statement_condition, %Frame_block_statement_condition* %.frame, i32 0, i32 1
    %t15 = load i32, i32* @sym
    store i32 %t15, i32* %t14
    ; line 249
    call void @P_getsym()
    ; line 249
    %t16 = getelementptr inbounds %Frame_block_statement_condition, %Frame_block_statement_condition* %.frame, i32 0, i32 2
    %t17 = load %Frame_block_statement*, %Frame_block_statement** %t16
    %t19 = getelementptr inbounds %Frame_block_statement_condition, %Frame_block_statement_condition* %.frame, i32 0, i32 0
    %t18 = load %T_symset, %T_symset* %t19
    call void @P_block_statement_expression(%Frame_block_statement* %t17, %T_symset %t18)
    ; line 250
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 356
;================================================================================
; scope: interpret (level : 2)

; types
%T_interpret_array_13 = type [500 x i32]

; activation record
%Frame_interpret = type
{
    ; variables
    i32,    ; 0: b
    %T_instruction,    ; 1: i
    i32,    ; 2: p
    %T_interpret_array_13,    ; 3: s
    i32,    ; 4: t

    ; dummy
    i8*
};

; procedure body
define void @P_interpret()
{
    ; allocate frame
    %.frame = alloca %Frame_interpret, align 8

    ; body
    ; line 370
    %t1 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t1)
    ; line 371
    %t2 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 4
    store i32 0, i32* %t2
    ; line 371
    %t3 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 0
    store i32 1, i32* %t3
    ; line 371
    %t4 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 2
    store i32 0, i32* %t4
    ; line 372
    %t5 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 3
    %t6 = getelementptr inbounds %T_interpret_array_13, %T_interpret_array_13* %t5, i32 0, i32 1
    store i32 0, i32* %t6
    ; line 372
    %t7 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 3
    %t8 = getelementptr inbounds %T_interpret_array_13, %T_interpret_array_13* %t7, i32 0, i32 2
    store i32 0, i32* %t8
    ; line 372
    %t9 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 3
    %t10 = getelementptr inbounds %T_interpret_array_13, %T_interpret_array_13* %t9, i32 0, i32 3
    store i32 0, i32* %t10
    ; line 373
    ; line 419
    %t11 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t11, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i32 9)
    ; nop

    ; epilogue
    ret void
}


; line 361
;================================================================================
; scope: interpret_base (level : 3)

; activation record
%Frame_interpret_base = type
{
    ; parameters
    i32,    ; 0: l

    ; variables
    i32,    ; 1: _fnvalue
    i32,    ; 2: b1

    ; slink
    %Frame_interpret*    ; 3
};

; function body
define i32 @F_interpret_base(%Frame_interpret* %.slink, i32 %l)
{
    ; allocate frame
    %.frame = alloca %Frame_interpret_base, align 8
    %t1 = getelementptr inbounds %Frame_interpret_base, %Frame_interpret_base* %.frame, i32 0, i32 3
    store %Frame_interpret* %.slink, %Frame_interpret** %t1
    %t2 = getelementptr inbounds %Frame_interpret_base, %Frame_interpret_base* %.frame, i32 0, i32 0
    store i32 %l, i32* %t2

    ; body
    ; line 363
    %t3 = getelementptr inbounds %Frame_interpret_base, %Frame_interpret_base* %.frame, i32 0, i32 2
    %t6 = getelementptr inbounds %Frame_interpret_base, %Frame_interpret_base* %.frame, i32 0, i32 3
    %t7 = load %Frame_interpret*, %Frame_interpret** %t6
    %t5 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %t7, i32 0, i32 0
    %t4 = load i32, i32* %t5
    store i32 %t4, i32* %t3
    ; line 364
    ; line 367
    %t8 = getelementptr inbounds %Frame_interpret_base, %Frame_interpret_base* %.frame, i32 0, i32 1
    %t10 = getelementptr inbounds %Frame_interpret_base, %Frame_interpret_base* %.frame, i32 0, i32 2
    %t9 = load i32, i32* %t10
    store i32 %t9, i32* %t8

    ; epilogue
    %t11 = getelementptr inbounds %Frame_interpret_base, %Frame_interpret_base* %.frame, i32 0, i32 1
    %t12 = load i32, i32* %t11
    ret i32 %t12
}


;================================================================================
; string literals

@.str.18 = private unnamed_addr constant [6 x i8] c"  cal\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"  int\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"  jmp\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"  jpc\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"  lit\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"  lod\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"  opr\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"  sto\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c" ****\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c" end pl/0\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c" errors in pl/0 program\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c" program incomplete\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c" program too long\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c" start pl/0\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"begin     \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"call      \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"const     \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"do        \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"end       \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"if        \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"odd       \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"procedure \00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"then      \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"var       \00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"while     \00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!63}
!llvm.module.flags = !{!64, !65}
!llvm.ident = !{!62}

!0 = !DIFile(filename: "plzero.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DICompositeType(tag: DW_TAG_array_type, name: "alfa", file: !0, line: 16, baseType: !2, size: 80, elements: !10)
!9 = !DISubrange(count: 10)
!10 = !{!9}
!11 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!12 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!13 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 43, baseType: !14, size: 19296, elements: !22)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "instruction", file: !0, line: 20, size: 96, flags: DIFlagTypePassByValue, elements: !20)
!15 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!16 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !14, file: !0, line: 21, baseType: !12, size: 32, offset: 0)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !14, file: !0, line: 22, baseType: !15, size: 32, offset: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !14, file: !0, line: 23, baseType: !16, size: 32, offset: 64)
!20 = !{!17,!18,!19}
!21 = !DISubrange(count: 201)
!22 = !{!21}
!23 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!24 = !DICompositeType(tag: DW_TAG_array_type, name: "symset", file: !0, line: 18, baseType: !27, size: 32, elements: !26)
!25 = !DISubrange(count: 30)
!26 = !{!25}
!27 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!28 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 41, baseType: !2, size: 648, elements: !30)
!29 = !DISubrange(count: 81)
!30 = !{!29}
!31 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 47, baseType: !32, size: 320, elements: !36)
!32 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 48, baseType: !2, size: 40, elements: !34)
!33 = !DISubrange(count: 5)
!34 = !{!33}
!35 = !DISubrange(count: 8)
!36 = !{!35}
!37 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 46, baseType: !11, size: 8192, elements: !39)
!38 = !DISubrange(count: 256)
!39 = !{!38}
!40 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 50, baseType: !41, size: 32320, elements: !49)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 51, size: 320, flags: DIFlagTypePassByValue, elements: !47)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !41, file: !0, line: 51, baseType: !8, size: 80, offset: 0)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !41, file: !0, line: 52, baseType: !23, size: 32, offset: 96)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !41, file: !0, line: 53, baseType: !3, size: 32, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !41, file: !0, line: 54, baseType: !3, size: 32, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "adr", scope: !41, file: !0, line: 54, baseType: !3, size: 32, offset: 160)
!47 = !{!42,!43,!44,!45,!46}
!48 = !DISubrange(count: 101)
!49 = !{!48}
!50 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 44, baseType: !8, size: 880, elements: !52)
!51 = !DISubrange(count: 11)
!52 = !{!51}
!53 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 45, baseType: !11, size: 352, elements: !55)
!54 = !DISubrange(count: 11)
!55 = !{!54}
!56 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 360, baseType: !3, size: 16000, elements: !58)
!57 = !DISubrange(count: 500)
!58 = !{!57}
!59 = !{!1,!2,!3,!4,!5,!6,!7,!8,!11,!12,!13,!14,!15,!16,!23,!24,!28,!31,!32,!37,!40,!41,!50,!53,!56}
!60 = !{}
!61 = !{}
!62 = !{!"LPC 1.1"}
!63 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !60, retainedTypes: !59, globals: !61, nameTableKind: None)
!64 = !{i32 2, !"CodeView", i32 1}
!65 = !{i32 2, !"Debug Info Version", i32 3}

