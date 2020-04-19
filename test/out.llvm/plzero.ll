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
    %t3 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 1
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), %T_alfa* %t3
    %t4 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 2
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %T_alfa* %t4
    %t5 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 3
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %T_alfa* %t5
    %t6 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 4
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %T_alfa* %t6
    %t7 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 5
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %T_alfa* %t7
    %t8 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 6
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %T_alfa* %t8
    %t9 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 7
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), %T_alfa* %t9
    %t10 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 8
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %T_alfa* %t10
    %t11 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 9
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), %T_alfa* %t11
    %t12 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 10
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), %T_alfa* %t12
    %t13 = getelementptr inbounds %T_array_11, %T_array_11* @word, i32 0, i32 11
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %T_alfa* %t13
    %t14 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 1
    store i32 20, i32* %t14
    %t15 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 2
    store i32 26, i32* %t15
    %t16 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 3
    store i32 27, i32* %t16
    %t17 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 4
    store i32 25, i32* %t17
    %t18 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 5
    store i32 21, i32* %t18
    %t19 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 6
    store i32 22, i32* %t19
    %t20 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 7
    store i32 7, i32* %t20
    %t21 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 8
    store i32 29, i32* %t21
    %t22 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 9
    store i32 23, i32* %t22
    %t23 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 10
    store i32 28, i32* %t23
    %t24 = getelementptr inbounds %T_array_12, %T_array_12* @wsym, i32 0, i32 11
    store i32 24, i32* %t24
    %t25 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 43
    store i32 3, i32* %t25
    %t26 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 45
    store i32 4, i32* %t26
    %t27 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 42
    store i32 5, i32* %t27
    %t28 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 47
    store i32 6, i32* %t28
    %t29 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 40
    store i32 14, i32* %t29
    %t30 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 41
    store i32 15, i32* %t30
    %t31 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 61
    store i32 8, i32* %t31
    %t32 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 44
    store i32 16, i32* %t32
    %t33 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 46
    store i32 18, i32* %t33
    %t34 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 35
    store i32 9, i32* %t34
    %t35 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 60
    store i32 10, i32* %t35
    %t36 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 62
    store i32 12, i32* %t36
    %t37 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 91
    store i32 11, i32* %t37
    %t38 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 93
    store i32 13, i32* %t38
    %t39 = getelementptr inbounds %T_array_8, %T_array_8* @ssym, i32 0, i32 59
    store i32 17, i32* %t39
    %t40 = getelementptr inbounds %T_array_6, %T_array_6* @mnemonic, i32 0, i32 0
    store %T_array_7 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), %T_array_7* %t40
    %t41 = getelementptr inbounds %T_array_6, %T_array_6* @mnemonic, i32 0, i32 1
    store %T_array_7 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), %T_array_7* %t41
    %t42 = getelementptr inbounds %T_array_6, %T_array_6* @mnemonic, i32 0, i32 2
    store %T_array_7 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), %T_array_7* %t42
    %t43 = getelementptr inbounds %T_array_6, %T_array_6* @mnemonic, i32 0, i32 3
    store %T_array_7 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), %T_array_7* %t43
    %t44 = getelementptr inbounds %T_array_6, %T_array_6* @mnemonic, i32 0, i32 4
    store %T_array_7 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), %T_array_7* %t44
    %t45 = getelementptr inbounds %T_array_6, %T_array_6* @mnemonic, i32 0, i32 5
    store %T_array_7 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), %T_array_7* %t45
    %t46 = getelementptr inbounds %T_array_6, %T_array_6* @mnemonic, i32 0, i32 6
    store %T_array_7 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), %T_array_7* %t46
    %t47 = getelementptr inbounds %T_array_6, %T_array_6* @mnemonic, i32 0, i32 7
    store %T_array_7 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), %T_array_7* %t47
    store %T_symset %.dummy_set, %T_symset* @declbegsys
    store %T_symset %.dummy_set, %T_symset* @statbegsys
    store %T_symset %.dummy_set, %T_symset* @facbegsys
    store i32 0, i32* @err
    store i32 0, i32* @cc
    store i32 0, i32* @cx
    store i32 0, i32* @ll
    store i8 32, i8* @ch
    store i32 10, i32* @kk
    call void @P_getsym()
    call void @P_block(i32 0, i32 0, %T_symset %.dummy_set)
    %t49 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t49)

    ; cleanup
    %t50 = load %T_text, %T_text* @output
    call void @_CloseFile(i8* %t50)
    %t51 = load %T_text, %T_text* @input
    call void @_CloseFile(i8* %t51)

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
    %t2 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 5)
    %t4 = load i32, i32* @cc
    %t3 = sub i32 %t4, 1
    call void @_WriteChar(i8* %t2, i32 %t3, i32 0, i8 32)
    call void @_WriteChar(i8* %t2, i32 0, i32 0, i8 94)
    %t6 = getelementptr inbounds %Frame_error, %Frame_error* %.frame, i32 0, i32 0
    %t5 = load i32, i32* %t6
    call void @_WriteInteger(i8* %t2, i32 2, i32 0, i32 %t5)
    call void @_WriteLn(i8* %t2)
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
    %t3 = load i32, i32* @cc
    %t2 = add i32 %t3, 1
    store i32 %t2, i32* @cc
    %t4 = load i32, i32* @cc
    %t5 = getelementptr inbounds %T_array_5, %T_array_5* @line, i32 0, i32 %t4
    %t6 = load i8, i8* %t5
    store i8 %t6, i8* @ch

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
    %t4 = load i32, i32* @cx
    %t5 = getelementptr inbounds %T_array_2, %T_array_2* @code, i32 0, i32 %t4
    %t7 = getelementptr inbounds %T_instruction, %T_instruction* %t5, i32 0, i32 0
    %t6 = bitcast i8* %t7 to i32*
    %t9 = getelementptr inbounds %Frame_gen, %Frame_gen* %.frame, i32 0, i32 0
    %t8 = load i32, i32* %t9
    store i32 %t8, i32* %t6
    %t10 = load i32, i32* @cx
    %t11 = getelementptr inbounds %T_array_2, %T_array_2* @code, i32 0, i32 %t10
    %t13 = getelementptr inbounds %T_instruction, %T_instruction* %t11, i32 0, i32 4
    %t12 = bitcast i8* %t13 to i32*
    %t15 = getelementptr inbounds %Frame_gen, %Frame_gen* %.frame, i32 0, i32 1
    %t14 = load i32, i32* %t15
    store i32 %t14, i32* %t12
    %t16 = load i32, i32* @cx
    %t17 = getelementptr inbounds %T_array_2, %T_array_2* @code, i32 0, i32 %t16
    %t19 = getelementptr inbounds %T_instruction, %T_instruction* %t17, i32 0, i32 8
    %t18 = bitcast i8* %t19 to i32*
    %t21 = getelementptr inbounds %Frame_gen, %Frame_gen* %.frame, i32 0, i32 2
    %t20 = load i32, i32* %t21
    store i32 %t20, i32* %t18
    %t23 = load i32, i32* @cx
    %t22 = add i32 %t23, 1
    store i32 %t22, i32* @cx

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
    %t4 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 4
    store i32 3, i32* %t4
    %t5 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 5
    %t7 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 2
    %t6 = load i32, i32* %t7
    store i32 %t6, i32* %t5
    %t9 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 2
    %t8 = load i32, i32* %t9
    %t10 = getelementptr inbounds %T_array_9, %T_array_9* @table, i32 0, i32 %t8
    %t12 = getelementptr inbounds %T_record_10, %T_record_10* %t10, i32 0, i32 20
    %t11 = bitcast i8* %t12 to i32*
    %t13 = load i32, i32* @cx
    store i32 %t13, i32* %t11
    call void @P_gen(i32 6, i32 0, i32 0)
    %t15 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 5
    %t14 = load i32, i32* %t15
    %t16 = getelementptr inbounds %T_array_9, %T_array_9* @table, i32 0, i32 %t14
    %t18 = getelementptr inbounds %T_record_10, %T_record_10* %t16, i32 0, i32 20
    %t17 = bitcast i8* %t18 to i32*
    %t19 = load i32, i32* %t17
    %t20 = getelementptr inbounds %T_array_2, %T_array_2* @code, i32 0, i32 %t19
    %t22 = getelementptr inbounds %T_instruction, %T_instruction* %t20, i32 0, i32 8
    %t21 = bitcast i8* %t22 to i32*
    %t23 = load i32, i32* @cx
    store i32 %t23, i32* %t21
    %t25 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 5
    %t24 = load i32, i32* %t25
    %t26 = getelementptr inbounds %T_array_9, %T_array_9* @table, i32 0, i32 %t24
    %t28 = getelementptr inbounds %T_record_10, %T_record_10* %t26, i32 0, i32 20
    %t27 = bitcast i8* %t28 to i32*
    %t29 = load i32, i32* @cx
    store i32 %t29, i32* %t27
    ; nop
    %t30 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 3
    store i32 0, i32* %t30
    %t32 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 4
    %t31 = load i32, i32* %t32
    call void @P_gen(i32 5, i32 0, i32 %t31)
    call void @P_block_statement(%Frame_block* %.frame, %T_symset %.dummy_set)
    call void @P_gen(i32 1, i32 0, i32 0)
    %t35 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 0
    %t34 = load %T_symset, %T_symset* %t35
    call void @P_test(%T_symset %t34, %T_symset %.dummy_set, i32 8)
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
    %t4 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 1
    %t5 = load %Frame_block*, %Frame_block** %t4
    %t3 = getelementptr inbounds %Frame_block, %Frame_block* %t5, i32 0, i32 2
    %t9 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 1
    %t10 = load %Frame_block*, %Frame_block** %t9
    %t8 = getelementptr inbounds %Frame_block, %Frame_block* %t10, i32 0, i32 2
    %t7 = load i32, i32* %t8
    %t6 = add i32 %t7, 1
    store i32 %t6, i32* %t3
    %t13 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 1
    %t14 = load %Frame_block*, %Frame_block** %t13
    %t12 = getelementptr inbounds %Frame_block, %Frame_block* %t14, i32 0, i32 2
    %t11 = load i32, i32* %t12
    %t15 = getelementptr inbounds %T_array_9, %T_array_9* @table, i32 0, i32 %t11
    %t17 = getelementptr inbounds %T_record_10, %T_record_10* %t15, i32 0, i32 0
    %t16 = bitcast i8* %t17 to %T_alfa*
    %t18 = load %T_alfa, %T_alfa* @id
    store %T_alfa %t18, %T_alfa* %t16
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
    %t3 = getelementptr inbounds %T_array_9, %T_array_9* @table, i32 0, i32 0
    %t5 = getelementptr inbounds %T_record_10, %T_record_10* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to %T_alfa*
    %t7 = getelementptr inbounds %Frame_block_position, %Frame_block_position* %.frame, i32 0, i32 0
    %t6 = load %T_alfa, %T_alfa* %t7
    store %T_alfa %t6, %T_alfa* %t4
    %t8 = getelementptr inbounds %Frame_block_position, %Frame_block_position* %.frame, i32 0, i32 2
    %t11 = getelementptr inbounds %Frame_block_position, %Frame_block_position* %.frame, i32 0, i32 3
    %t12 = load %Frame_block*, %Frame_block** %t11
    %t10 = getelementptr inbounds %Frame_block, %Frame_block* %t12, i32 0, i32 2
    %t9 = load i32, i32* %t10
    store i32 %t9, i32* %t8
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
    %t4 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 0
    %t3 = load %T_symset, %T_symset* %t4
    call void @P_test(%T_symset %t3, %T_symset %.dummy_set, i32 19)

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
    call void @P_block_statement_expression_term_factor(%Frame_block_statement_expression_term* %.frame, %T_symset %.dummy_set)

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
    %t3 = load %T_symset, %T_symset* @facbegsys
    %t5 = getelementptr inbounds %Frame_block_statement_expression_term_factor, %Frame_block_statement_expression_term_factor* %.frame, i32 0, i32 0
    %t4 = load %T_symset, %T_symset* %t5
    call void @P_test(%T_symset %t3, %T_symset %t4, i32 24)

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
    %t1 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t1)
    %t2 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 4
    store i32 0, i32* %t2
    %t3 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 0
    store i32 1, i32* %t3
    %t4 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 2
    store i32 0, i32* %t4
    %t5 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 3
    %t6 = getelementptr inbounds %T_interpret_array_13, %T_interpret_array_13* %t5, i32 0, i32 1
    store i32 0, i32* %t6
    %t7 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 3
    %t8 = getelementptr inbounds %T_interpret_array_13, %T_interpret_array_13* %t7, i32 0, i32 2
    store i32 0, i32* %t8
    %t9 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 3
    %t10 = getelementptr inbounds %T_interpret_array_13, %T_interpret_array_13* %t9, i32 0, i32 3
    store i32 0, i32* %t10
    %t11 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t11, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32 9)
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
    %t3 = getelementptr inbounds %Frame_interpret_base, %Frame_interpret_base* %.frame, i32 0, i32 2
    %t6 = getelementptr inbounds %Frame_interpret_base, %Frame_interpret_base* %.frame, i32 0, i32 3
    %t7 = load %Frame_interpret*, %Frame_interpret** %t6
    %t5 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %t7, i32 0, i32 0
    %t4 = load i32, i32* %t5
    store i32 %t4, i32* %t3
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
@.str.22 = private unnamed_addr constant [6 x i8] c" ****\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c" end pl/0\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c" start pl/0\00", align 1
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

