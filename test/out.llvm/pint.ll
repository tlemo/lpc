; ModuleID = 'pint.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\pint.pas"
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
@_FilenameMapEntries = internal global [5 x %struct._Filename]
    [
    %struct._Filename { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* null },
    %struct._Filename { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* null },
    %struct._Filename { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* null },
    %struct._Filename { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* null },
    %struct._Filename { i8* null, i8* null }
    ], align 16
@_FilenameMap = dso_local global %struct._Filename* getelementptr inbounds ([5 x %struct._Filename], [5 x %struct._Filename]* @_FilenameMapEntries, i32 0, i32 0), align 8
@_FilenameMapSize = dso_local constant i32 4, align 4

; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_text = type i8*

; line 6
;================================================================================
; scope: program scope (level : 1)

; types
%T_alfa = type [10 x i8]
%T_beta = type [25 x i8]
%T_record_3 = type [24 x i8]
%T_array_2 = type [8651 x %T_record_3]
%T_array_4 = type [128 x i32]
%T_array_5 = type [128 x %T_alfa]
%T_settype = type [2 x i32]
%T_array_7 = type [21 x %T_alfa]
%T_record_9 = type [8 x i8]
%T_array_8 = type [18001 x %T_record_9]

; program variables
@ad = dso_local global i32 zeroinitializer
@ad1 = dso_local global i32 zeroinitializer
@b = dso_local global i1 zeroinitializer
@c = dso_local global i8 zeroinitializer
@code = dso_local global %T_array_2 zeroinitializer
@cop = dso_local global %T_array_4 zeroinitializer
@ep = dso_local global i32 zeroinitializer
@i = dso_local global i32 zeroinitializer
@i1 = dso_local global i32 zeroinitializer
@i2 = dso_local global i32 zeroinitializer
@i3 = dso_local global i32 zeroinitializer
@input = dso_local global %T_text zeroinitializer
@instr = dso_local global %T_array_5 zeroinitializer
@interpreting = dso_local global i1 zeroinitializer
@j = dso_local global i32 zeroinitializer
@mp = dso_local global i32 zeroinitializer
@np = dso_local global i32 zeroinitializer
@op = dso_local global i32 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@p = dso_local global i32 zeroinitializer
@pc = dso_local global i32 zeroinitializer
@prd = dso_local global %T_text zeroinitializer
@prr = dso_local global %T_text zeroinitializer
@q = dso_local global i32 zeroinitializer
@sp = dso_local global i32 zeroinitializer
@sptable = dso_local global %T_array_7 zeroinitializer
@store = dso_local global %T_array_8 zeroinitializer

; procedure body
define void @P_()
{
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @output
    %t3 = call i8* @_OpenFile(i32 2)
    store i8* %t3, i8** @prd
    %t4 = call i8* @_OpenFile(i32 3)
    store i8* %t4, i8** @prr

    ; body
    call void @P_load()
    store i32 0, i32* @pc
    %t5 = sub i32 0, 1
    store i32 %t5, i32* @sp
    store i32 0, i32* @mp
    %t6 = add i32 13650, 1
    store i32 %t6, i32* @np
    store i32 5, i32* @ep
    %t7 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 5
    %t9 = getelementptr inbounds %T_record_9, %T_record_9* %t7, i32 0, i32 0
    %t8 = bitcast i8* %t9 to i8*
    %t10 = load %T_text, %T_text* @input
    %t11 = load i8, i8* %t10
    store i8 %t11, i8* %t8
    store i1 1, i1* @interpreting
    ; nop

    ; cleanup
    %t12 = load %T_text, %T_text* @prr
    call void @_CloseFile(i8* %t12)
    %t13 = load %T_text, %T_text* @prd
    call void @_CloseFile(i8* %t13)
    %t14 = load %T_text, %T_text* @output
    call void @_CloseFile(i8* %t14)
    %t15 = load %T_text, %T_text* @input
    call void @_CloseFile(i8* %t15)

    ; epilogue
    ret void
}


; line 124
;================================================================================
; scope: load (level : 2)

; types
%T_load_labelrec = type [8 x i8]
%T_load_array_10 = type [1851 x %T_load_labelrec]
%T_load_array_11 = type [10 x i8]

; activation record
%Frame_load = type
{
    ; variables
    i32,    ; 0: bcp
    i8,    ; 1: ch
    i32,    ; 2: icp
    %T_load_array_10,    ; 3: labeltab
    i32,    ; 4: labelvalue
    i32,    ; 5: mcp
    i32,    ; 6: rcp
    i32,    ; 7: scp
    %T_load_array_11,    ; 8: word

    ; dummy
    i8*
};

; procedure body
define void @P_load()
{
    ; allocate frame
    %.frame = alloca %Frame_load, align 8

    ; body
    call void @P_load_init(%Frame_load* %.frame)
    call void @P_load_generate(%Frame_load* %.frame)
    store i32 0, i32* @pc
    call void @P_load_generate(%Frame_load* %.frame)
    ; nop

    ; epilogue
    ret void
}


; line 138
;================================================================================
; scope: load_init (level : 3)

; activation record
%Frame_load_init = type
{
    ; variables
    i32,    ; 0: i

    ; slink
    %Frame_load*    ; 1
};

; procedure body
define void @P_load_init(%Frame_load* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_load_init, align 8
    %t1 = getelementptr inbounds %Frame_load_init, %Frame_load_init* %.frame, i32 0, i32 1
    store %Frame_load* %.slink, %Frame_load** %t1

    ; body
    %t2 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 0
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %T_alfa* %t2
    %t3 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 1
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %T_alfa* %t3
    %t4 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 2
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %T_alfa* %t4
    %t5 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 3
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %T_alfa* %t5
    %t6 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 4
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), %T_alfa* %t6
    %t7 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 5
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %T_alfa* %t7
    %t8 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 6
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), %T_alfa* %t8
    %t9 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 7
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), %T_alfa* %t9
    %t10 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 8
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %T_alfa* %t10
    %t11 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 9
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), %T_alfa* %t11
    %t12 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 10
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), %T_alfa* %t12
    %t13 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 11
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), %T_alfa* %t13
    %t14 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 12
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), %T_alfa* %t14
    %t15 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 13
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), %T_alfa* %t15
    %t16 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 14
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), %T_alfa* %t16
    %t17 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 15
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), %T_alfa* %t17
    %t18 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 16
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), %T_alfa* %t18
    %t19 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 17
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), %T_alfa* %t19
    %t20 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 18
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), %T_alfa* %t20
    %t21 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 19
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), %T_alfa* %t21
    %t22 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 20
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), %T_alfa* %t22
    %t23 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 21
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), %T_alfa* %t23
    %t24 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 22
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), %T_alfa* %t24
    %t25 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 23
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %T_alfa* %t25
    %t26 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 24
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), %T_alfa* %t26
    %t27 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 25
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), %T_alfa* %t27
    %t28 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 26
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), %T_alfa* %t28
    %t29 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 27
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), %T_alfa* %t29
    %t30 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 28
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), %T_alfa* %t30
    %t31 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 29
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), %T_alfa* %t31
    %t32 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 30
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), %T_alfa* %t32
    %t33 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 31
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), %T_alfa* %t33
    %t34 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 32
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), %T_alfa* %t34
    %t35 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 33
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), %T_alfa* %t35
    %t36 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 34
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), %T_alfa* %t36
    %t37 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 35
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), %T_alfa* %t37
    %t38 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 36
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %T_alfa* %t38
    %t39 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 37
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), %T_alfa* %t39
    %t40 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 38
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), %T_alfa* %t40
    %t41 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 39
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), %T_alfa* %t41
    %t42 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 40
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), %T_alfa* %t42
    %t43 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 41
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), %T_alfa* %t43
    %t44 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 42
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), %T_alfa* %t44
    %t45 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 43
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), %T_alfa* %t45
    %t46 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 44
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), %T_alfa* %t46
    %t47 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 45
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), %T_alfa* %t47
    %t48 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 46
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), %T_alfa* %t48
    %t49 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 47
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), %T_alfa* %t49
    %t50 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 48
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), %T_alfa* %t50
    %t51 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 49
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), %T_alfa* %t51
    %t52 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 50
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), %T_alfa* %t52
    %t53 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 51
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), %T_alfa* %t53
    %t54 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 52
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), %T_alfa* %t54
    %t55 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 53
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0), %T_alfa* %t55
    %t56 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 54
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), %T_alfa* %t56
    %t57 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 55
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), %T_alfa* %t57
    %t58 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 56
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), %T_alfa* %t58
    %t59 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 57
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), %T_alfa* %t59
    %t60 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 58
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), %T_alfa* %t60
    %t61 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 59
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), %T_alfa* %t61
    %t62 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 60
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), %T_alfa* %t62
    %t63 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 61
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), %T_alfa* %t63
    %t64 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 0
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), %T_alfa* %t64
    %t65 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 1
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), %T_alfa* %t65
    %t66 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 2
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), %T_alfa* %t66
    %t67 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 3
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0), %T_alfa* %t67
    %t68 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 4
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), %T_alfa* %t68
    %t69 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 5
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), %T_alfa* %t69
    %t70 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 6
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), %T_alfa* %t70
    %t71 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 7
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0), %T_alfa* %t71
    %t72 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 8
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), %T_alfa* %t72
    %t73 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 9
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0), %T_alfa* %t73
    %t74 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 10
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), %T_alfa* %t74
    %t75 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 11
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), %T_alfa* %t75
    %t76 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 12
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), %T_alfa* %t76
    %t77 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 13
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), %T_alfa* %t77
    %t78 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 14
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), %T_alfa* %t78
    %t79 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 15
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i32 0, i32 0), %T_alfa* %t79
    %t80 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 16
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0), %T_alfa* %t80
    %t81 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 17
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0), %T_alfa* %t81
    %t82 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 18
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0), %T_alfa* %t82
    %t83 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 19
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0), %T_alfa* %t83
    %t84 = getelementptr inbounds %T_array_7, %T_array_7* @sptable, i32 0, i32 20
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0), %T_alfa* %t84
    %t85 = getelementptr inbounds %T_array_4, %T_array_4* @cop, i32 0, i32 0
    store i32 105, i32* %t85
    %t86 = getelementptr inbounds %T_array_4, %T_array_4* @cop, i32 0, i32 1
    store i32 65, i32* %t86
    %t87 = getelementptr inbounds %T_array_4, %T_array_4* @cop, i32 0, i32 2
    store i32 70, i32* %t87
    %t88 = getelementptr inbounds %T_array_4, %T_array_4* @cop, i32 0, i32 3
    store i32 75, i32* %t88
    %t89 = getelementptr inbounds %T_array_4, %T_array_4* @cop, i32 0, i32 6
    store i32 80, i32* %t89
    %t90 = getelementptr inbounds %T_array_4, %T_array_4* @cop, i32 0, i32 9
    store i32 85, i32* %t90
    %t91 = getelementptr inbounds %T_array_4, %T_array_4* @cop, i32 0, i32 10
    store i32 90, i32* %t91
    %t92 = getelementptr inbounds %T_array_4, %T_array_4* @cop, i32 0, i32 26
    store i32 95, i32* %t92
    %t93 = getelementptr inbounds %T_array_4, %T_array_4* @cop, i32 0, i32 57
    store i32 100, i32* %t93
    store i32 3, i32* @pc
    %t95 = getelementptr inbounds %Frame_load_init, %Frame_load_init* %.frame, i32 0, i32 1
    %t96 = load %Frame_load*, %Frame_load** %t95
    %t94 = getelementptr inbounds %Frame_load, %Frame_load* %t96, i32 0, i32 2
    %t97 = add i32 13650, 1
    store i32 %t97, i32* %t94
    %t99 = getelementptr inbounds %Frame_load_init, %Frame_load_init* %.frame, i32 0, i32 1
    %t100 = load %Frame_load*, %Frame_load** %t99
    %t98 = getelementptr inbounds %Frame_load, %Frame_load* %t100, i32 0, i32 6
    %t101 = add i32 13655, 1
    store i32 %t101, i32* %t98
    %t103 = getelementptr inbounds %Frame_load_init, %Frame_load_init* %.frame, i32 0, i32 1
    %t104 = load %Frame_load*, %Frame_load** %t103
    %t102 = getelementptr inbounds %Frame_load, %Frame_load* %t104, i32 0, i32 7
    %t105 = add i32 13660, 1
    store i32 %t105, i32* %t102
    %t107 = getelementptr inbounds %Frame_load_init, %Frame_load_init* %.frame, i32 0, i32 1
    %t108 = load %Frame_load*, %Frame_load** %t107
    %t106 = getelementptr inbounds %Frame_load, %Frame_load* %t108, i32 0, i32 0
    %t109 = add i32 13730, 2
    store i32 %t109, i32* %t106
    %t111 = getelementptr inbounds %Frame_load_init, %Frame_load_init* %.frame, i32 0, i32 1
    %t112 = load %Frame_load*, %Frame_load** %t111
    %t110 = getelementptr inbounds %Frame_load, %Frame_load* %t112, i32 0, i32 5
    %t113 = add i32 13820, 1
    store i32 %t113, i32* %t110
    ; nop

    ; epilogue
    ret void
}


; line 202
;================================================================================
; scope: load_errorl (level : 3)

; activation record
%Frame_load_errorl = type
{
    ; parameters
    %T_beta,    ; 0: string

    ; slink
    %Frame_load*    ; 1
};

; procedure body
define void @P_load_errorl(%Frame_load* %.slink, %T_beta %string)
{
    ; allocate frame
    %.frame = alloca %Frame_load_errorl, align 8
    %t1 = getelementptr inbounds %Frame_load_errorl, %Frame_load_errorl* %.frame, i32 0, i32 1
    store %Frame_load* %.slink, %Frame_load** %t1
    %t2 = getelementptr inbounds %Frame_load_errorl, %Frame_load_errorl* %.frame, i32 0, i32 0
    store %T_beta %string, %T_beta* %t2

    ; body
    %t3 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3)
    %t4 = load %T_text, %T_text* @output
    %t5 = getelementptr inbounds %Frame_load_errorl, %Frame_load_errorl* %.frame, i32 0, i32 0
    call void @_WriteString(i8* %t4, i32 0, i32 0, i8* getelementptr inbounds (%T_beta, %T_beta* %t5, i32 0, i32 0), i32 25)

    ; epilogue
    ret void
}


; line 208
;================================================================================
; scope: load_update (level : 3)

; activation record
%Frame_load_update = type
{
    ; parameters
    i32,    ; 0: x

    ; variables
    i32,    ; 1: curr
    i1,    ; 2: endlist
    i32,    ; 3: succ

    ; slink
    %Frame_load*    ; 4
};

; procedure body
define void @P_load_update(%Frame_load* %.slink, i32 %x)
{
    ; allocate frame
    %.frame = alloca %Frame_load_update, align 8
    %t1 = getelementptr inbounds %Frame_load_update, %Frame_load_update* %.frame, i32 0, i32 4
    store %Frame_load* %.slink, %Frame_load** %t1
    %t2 = getelementptr inbounds %Frame_load_update, %Frame_load_update* %.frame, i32 0, i32 0
    store i32 %x, i32* %t2

    ; body

    ; epilogue
    ret void
}


; line 237
;================================================================================
; scope: load_generate (level : 3)

; activation record
%Frame_load_generate = type
{
    ; variables
    i1,    ; 0: again
    i32,    ; 1: x

    ; slink
    %Frame_load*    ; 2
};

; procedure body
define void @P_load_generate(%Frame_load* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_load_generate, align 8
    %t1 = getelementptr inbounds %Frame_load_generate, %Frame_load_generate* %.frame, i32 0, i32 2
    store %Frame_load* %.slink, %Frame_load** %t1

    ; body
    %t2 = getelementptr inbounds %Frame_load_generate, %Frame_load_generate* %.frame, i32 0, i32 0
    store i1 1, i1* %t2

    ; epilogue
    ret void
}


; line 259
;================================================================================
; scope: load_assemble (level : 3)

; activation record
%Frame_load_assemble = type
{
    ; variables
    i32,    ; 0: i
    i32,    ; 1: lb
    %T_alfa,    ; 2: name
    double,    ; 3: r
    %T_settype,    ; 4: s
    i32,    ; 5: s1
    i32,    ; 6: ub

    ; slink
    %Frame_load*    ; 7
};

; procedure body
define void @P_load_assemble(%Frame_load* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_load_assemble, align 8
    %t1 = getelementptr inbounds %Frame_load_assemble, %Frame_load_assemble* %.frame, i32 0, i32 7
    store %Frame_load* %.slink, %Frame_load** %t1

    ; body
    store i32 0, i32* @p
    store i32 0, i32* @q
    store i32 0, i32* @op
    call void @P_load_assemble_getname(%Frame_load_assemble* %.frame)
    %t2 = getelementptr inbounds %T_array_5, %T_array_5* @instr, i32 0, i32 62
    %t4 = getelementptr inbounds %Frame_load_assemble, %Frame_load_assemble* %.frame, i32 0, i32 2
    %t3 = load %T_alfa, %T_alfa* %t4
    store %T_alfa %t3, %T_alfa* %t2
    %t6 = load i32, i32* @pc
    %t5 = add i32 %t6, 1
    store i32 %t5, i32* @pc
    ; nop

    ; epilogue
    ret void
}


; line 264
;================================================================================
; scope: load_assemble_lookup (level : 4)

; activation record
%Frame_load_assemble_lookup = type
{
    ; parameters
    i32,    ; 0: x

    ; slink
    %Frame_load_assemble*    ; 1
};

; procedure body
define void @P_load_assemble_lookup(%Frame_load_assemble* %.slink, i32 %x)
{
    ; allocate frame
    %.frame = alloca %Frame_load_assemble_lookup, align 8
    %t1 = getelementptr inbounds %Frame_load_assemble_lookup, %Frame_load_assemble_lookup* %.frame, i32 0, i32 1
    store %Frame_load_assemble* %.slink, %Frame_load_assemble** %t1
    %t2 = getelementptr inbounds %Frame_load_assemble_lookup, %Frame_load_assemble_lookup* %.frame, i32 0, i32 0
    store i32 %x, i32* %t2

    ; body

    ; epilogue
    ret void
}


; line 273
;================================================================================
; scope: load_assemble_labelsearch (level : 4)

; activation record
%Frame_load_assemble_labelsearch = type
{
    ; variables
    i32,    ; 0: x

    ; slink
    %Frame_load_assemble*    ; 1
};

; procedure body
define void @P_load_assemble_labelsearch(%Frame_load_assemble* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_load_assemble_labelsearch, align 8
    %t1 = getelementptr inbounds %Frame_load_assemble_labelsearch, %Frame_load_assemble_labelsearch* %.frame, i32 0, i32 1
    store %Frame_load_assemble* %.slink, %Frame_load_assemble** %t1

    ; body
    %t2 = getelementptr inbounds %Frame_load_assemble_labelsearch, %Frame_load_assemble_labelsearch* %.frame, i32 0, i32 1
    %t3 = load %Frame_load_assemble*, %Frame_load_assemble** %t2
    %t5 = getelementptr inbounds %Frame_load_assemble_labelsearch, %Frame_load_assemble_labelsearch* %.frame, i32 0, i32 0
    %t4 = load i32, i32* %t5
    call void @P_load_assemble_lookup(%Frame_load_assemble* %t3, i32 %t4)

    ; epilogue
    ret void
}


; line 279
;================================================================================
; scope: load_assemble_getname (level : 4)

; activation record
%Frame_load_assemble_getname = type
{
    ; slink
    %Frame_load_assemble*    ; 0
};

; procedure body
define void @P_load_assemble_getname(%Frame_load_assemble* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_load_assemble_getname, align 8
    %t1 = getelementptr inbounds %Frame_load_assemble_getname, %Frame_load_assemble_getname* %.frame, i32 0, i32 0
    store %Frame_load_assemble* %.slink, %Frame_load_assemble** %t1

    ; body
    %t3 = getelementptr inbounds %Frame_load_assemble_getname, %Frame_load_assemble_getname* %.frame, i32 0, i32 0
    %t4 = load %Frame_load_assemble*, %Frame_load_assemble** %t3
    %t5 = getelementptr inbounds %Frame_load_assemble, %Frame_load_assemble* %t4, i32 0, i32 7
    %t6 = load %Frame_load*, %Frame_load** %t5
    %t2 = getelementptr inbounds %Frame_load, %Frame_load* %t6, i32 0, i32 8
    %t7 = getelementptr inbounds %T_load_array_11, %T_load_array_11* %t2, i32 0, i32 1
    %t10 = getelementptr inbounds %Frame_load_assemble_getname, %Frame_load_assemble_getname* %.frame, i32 0, i32 0
    %t11 = load %Frame_load_assemble*, %Frame_load_assemble** %t10
    %t12 = getelementptr inbounds %Frame_load_assemble, %Frame_load_assemble* %t11, i32 0, i32 7
    %t13 = load %Frame_load*, %Frame_load** %t12
    %t9 = getelementptr inbounds %Frame_load, %Frame_load* %t13, i32 0, i32 1
    %t8 = load i8, i8* %t9
    store i8 %t8, i8* %t7

    ; epilogue
    ret void
}


; line 286
;================================================================================
; scope: load_assemble_typesymbol (level : 4)

; activation record
%Frame_load_assemble_typesymbol = type
{
    ; variables
    i32,    ; 0: i

    ; slink
    %Frame_load_assemble*    ; 1
};

; procedure body
define void @P_load_assemble_typesymbol(%Frame_load_assemble* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_load_assemble_typesymbol, align 8
    %t1 = getelementptr inbounds %Frame_load_assemble_typesymbol, %Frame_load_assemble_typesymbol* %.frame, i32 0, i32 1
    store %Frame_load_assemble* %.slink, %Frame_load_assemble** %t1

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 476
;================================================================================
; scope: pmd (level : 2)

; activation record
%Frame_pmd = type
{
    ; variables
    i32,    ; 0: i
    i32,    ; 1: s

    ; dummy
    i8*
};

; procedure body
define void @P_pmd()
{
    ; allocate frame
    %.frame = alloca %Frame_pmd, align 8

    ; body
    %t1 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i32 5)
    %t3 = load i32, i32* @pc
    %t2 = sub i32 %t3, 1
    call void @_WriteInteger(i8* %t1, i32 5, i32 0, i32 %t2)
    call void @_WriteString(i8* %t1, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i32 5)
    %t4 = load i32, i32* @op
    call void @_WriteInteger(i8* %t1, i32 3, i32 0, i32 %t4)
    call void @_WriteString(i8* %t1, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i32 6)
    %t5 = load i32, i32* @sp
    call void @_WriteInteger(i8* %t1, i32 5, i32 0, i32 %t5)
    call void @_WriteString(i8* %t1, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0), i32 6)
    %t6 = load i32, i32* @mp
    call void @_WriteInteger(i8* %t1, i32 5, i32 0, i32 %t6)
    call void @_WriteString(i8* %t1, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i32 6)
    %t7 = load i32, i32* @np
    call void @_WriteInteger(i8* %t1, i32 5, i32 0, i32 %t7)
    %t8 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t8)
    %t9 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t9, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.93, i32 0, i32 0), i32 38)
    call void @_WriteLn(i8* %t9)
    %t10 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %.frame, i32 0, i32 1
    %t11 = load i32, i32* @sp
    store i32 %t11, i32* %t10
    %t12 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %.frame, i32 0, i32 0
    store i32 0, i32* %t12
    %t13 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %.frame, i32 0, i32 1
    store i32 13650, i32* %t13
    ; nop

    ; epilogue
    ret void
}


; line 479
;================================================================================
; scope: pmd_pt (level : 3)

; activation record
%Frame_pmd_pt = type
{
    ; slink
    %Frame_pmd*    ; 0
};

; procedure body
define void @P_pmd_pt(%Frame_pmd* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_pmd_pt, align 8
    %t1 = getelementptr inbounds %Frame_pmd_pt, %Frame_pmd_pt* %.frame, i32 0, i32 0
    store %Frame_pmd* %.slink, %Frame_pmd** %t1

    ; body
    %t2 = load %T_text, %T_text* @output
    %t5 = getelementptr inbounds %Frame_pmd_pt, %Frame_pmd_pt* %.frame, i32 0, i32 0
    %t6 = load %Frame_pmd*, %Frame_pmd** %t5
    %t4 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %t6, i32 0, i32 1
    %t3 = load i32, i32* %t4
    call void @_WriteInteger(i8* %t2, i32 6, i32 0, i32 %t3)
    %t8 = getelementptr inbounds %Frame_pmd_pt, %Frame_pmd_pt* %.frame, i32 0, i32 0
    %t9 = load %Frame_pmd*, %Frame_pmd** %t8
    %t7 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %t9, i32 0, i32 1
    %t13 = getelementptr inbounds %Frame_pmd_pt, %Frame_pmd_pt* %.frame, i32 0, i32 0
    %t14 = load %Frame_pmd*, %Frame_pmd** %t13
    %t12 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %t14, i32 0, i32 1
    %t11 = load i32, i32* %t12
    %t10 = sub i32 %t11, 1
    store i32 %t10, i32* %t7
    %t16 = getelementptr inbounds %Frame_pmd_pt, %Frame_pmd_pt* %.frame, i32 0, i32 0
    %t17 = load %Frame_pmd*, %Frame_pmd** %t16
    %t15 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %t17, i32 0, i32 0
    %t21 = getelementptr inbounds %Frame_pmd_pt, %Frame_pmd_pt* %.frame, i32 0, i32 0
    %t22 = load %Frame_pmd*, %Frame_pmd** %t21
    %t20 = getelementptr inbounds %Frame_pmd, %Frame_pmd* %t22, i32 0, i32 0
    %t19 = load i32, i32* %t20
    %t18 = add i32 %t19, 1
    store i32 %t18, i32* %t15
    ; nop

    ; epilogue
    ret void
}


; line 500
;================================================================================
; scope: errori (level : 2)

; activation record
%Frame_errori = type
{
    ; parameters
    %T_beta,    ; 0: string

    ; dummy
    i8*
};

; procedure body
define void @P_errori(%T_beta %string)
{
    ; allocate frame
    %.frame = alloca %Frame_errori, align 8
    %t1 = getelementptr inbounds %Frame_errori, %Frame_errori* %.frame, i32 0, i32 0
    store %T_beta %string, %T_beta* %t1

    ; body
    %t2 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2)
    %t3 = load %T_text, %T_text* @output
    %t4 = getelementptr inbounds %Frame_errori, %Frame_errori* %.frame, i32 0, i32 0
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds (%T_beta, %T_beta* %t4, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t3)
    call void @P_pmd()

    ; epilogue
    ret void
}


; line 505
;================================================================================
; scope: base (level : 2)

; activation record
%Frame_base = type
{
    ; parameters
    i32,    ; 0: ld

    ; variables
    i32,    ; 1: _fnvalue
    i32,    ; 2: ad

    ; dummy
    i8*
};

; function body
define i32 @F_base(i32 %ld)
{
    ; allocate frame
    %.frame = alloca %Frame_base, align 8
    %t1 = getelementptr inbounds %Frame_base, %Frame_base* %.frame, i32 0, i32 0
    store i32 %ld, i32* %t1

    ; body
    %t2 = getelementptr inbounds %Frame_base, %Frame_base* %.frame, i32 0, i32 2
    %t3 = load i32, i32* @mp
    store i32 %t3, i32* %t2
    %t4 = getelementptr inbounds %Frame_base, %Frame_base* %.frame, i32 0, i32 1
    %t6 = getelementptr inbounds %Frame_base, %Frame_base* %.frame, i32 0, i32 2
    %t5 = load i32, i32* %t6
    store i32 %t5, i32* %t4

    ; epilogue
    %t7 = getelementptr inbounds %Frame_base, %Frame_base* %.frame, i32 0, i32 1
    %t8 = load i32, i32* %t7
    ret i32 %t8
}


; line 514
;================================================================================
; scope: compare (level : 2)

; activation record
%Frame_compare = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_compare()
{
    ; allocate frame
    %.frame = alloca %Frame_compare, align 8

    ; body
    %t1 = load i32, i32* @sp
    %t2 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t1
    %t4 = getelementptr inbounds %T_record_9, %T_record_9* %t2, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i32*
    %t5 = load i32, i32* %t3
    store i32 %t5, i32* @i1
    %t7 = load i32, i32* @sp
    %t6 = add i32 %t7, 1
    %t8 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t6
    %t10 = getelementptr inbounds %T_record_9, %T_record_9* %t8, i32 0, i32 0
    %t9 = bitcast i8* %t10 to i32*
    %t11 = load i32, i32* %t9
    store i32 %t11, i32* @i2
    store i32 0, i32* @i
    store i1 1, i1* @b

    ; epilogue
    ret void
}


; line 526
;================================================================================
; scope: callsp (level : 2)

; activation record
%Frame_callsp = type
{
    ; variables
    i1,    ; 0: line

    ; dummy
    i8*
};

; procedure body
define void @P_callsp()
{
    ; allocate frame
    %.frame = alloca %Frame_callsp, align 8

    ; body
    ; nop

    ; epilogue
    ret void
}


; line 530
;================================================================================
; scope: callsp_readi (level : 3)

; activation record
%Frame_callsp_readi = type
{
    ; parameters
    %T_text*,    ; 0: f

    ; variables
    i32,    ; 1: ad

    ; slink
    %Frame_callsp*    ; 2
};

; procedure body
define void @P_callsp_readi(%Frame_callsp* %.slink, %T_text* %f)
{
    ; allocate frame
    %.frame = alloca %Frame_callsp_readi, align 8
    %t1 = getelementptr inbounds %Frame_callsp_readi, %Frame_callsp_readi* %.frame, i32 0, i32 2
    store %Frame_callsp* %.slink, %Frame_callsp** %t1
    %t2 = getelementptr inbounds %Frame_callsp_readi, %Frame_callsp_readi* %.frame, i32 0, i32 0
    store %T_text* %f, %T_text** %t2

    ; body
    %t3 = getelementptr inbounds %Frame_callsp_readi, %Frame_callsp_readi* %.frame, i32 0, i32 1
    %t5 = load i32, i32* @sp
    %t4 = sub i32 %t5, 1
    %t6 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t4
    %t8 = getelementptr inbounds %T_record_9, %T_record_9* %t6, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i32*
    %t9 = load i32, i32* %t7
    store i32 %t9, i32* %t3
    %t10 = load i32, i32* @sp
    %t11 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t10
    %t13 = getelementptr inbounds %T_record_9, %T_record_9* %t11, i32 0, i32 0
    %t12 = bitcast i8* %t13 to i32*
    %t14 = load i32, i32* %t12
    %t15 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t14
    %t17 = getelementptr inbounds %T_record_9, %T_record_9* %t15, i32 0, i32 0
    %t16 = bitcast i8* %t17 to i8*
    %t19 = getelementptr inbounds %Frame_callsp_readi, %Frame_callsp_readi* %.frame, i32 0, i32 0
    %t20 = load %T_text*, %T_text** %t19
    %t18 = load %T_text, %T_text* %t20
    %t21 = load i8, i8* %t18
    store i8 %t21, i8* %t16
    %t23 = load i32, i32* @sp
    %t22 = sub i32 %t23, 2
    store i32 %t22, i32* @sp

    ; epilogue
    ret void
}


; line 538
;================================================================================
; scope: callsp_readr (level : 3)

; activation record
%Frame_callsp_readr = type
{
    ; parameters
    %T_text*,    ; 0: f

    ; variables
    i32,    ; 1: ad

    ; slink
    %Frame_callsp*    ; 2
};

; procedure body
define void @P_callsp_readr(%Frame_callsp* %.slink, %T_text* %f)
{
    ; allocate frame
    %.frame = alloca %Frame_callsp_readr, align 8
    %t1 = getelementptr inbounds %Frame_callsp_readr, %Frame_callsp_readr* %.frame, i32 0, i32 2
    store %Frame_callsp* %.slink, %Frame_callsp** %t1
    %t2 = getelementptr inbounds %Frame_callsp_readr, %Frame_callsp_readr* %.frame, i32 0, i32 0
    store %T_text* %f, %T_text** %t2

    ; body
    %t3 = getelementptr inbounds %Frame_callsp_readr, %Frame_callsp_readr* %.frame, i32 0, i32 1
    %t5 = load i32, i32* @sp
    %t4 = sub i32 %t5, 1
    %t6 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t4
    %t8 = getelementptr inbounds %T_record_9, %T_record_9* %t6, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i32*
    %t9 = load i32, i32* %t7
    store i32 %t9, i32* %t3
    %t10 = load i32, i32* @sp
    %t11 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t10
    %t13 = getelementptr inbounds %T_record_9, %T_record_9* %t11, i32 0, i32 0
    %t12 = bitcast i8* %t13 to i32*
    %t14 = load i32, i32* %t12
    %t15 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t14
    %t17 = getelementptr inbounds %T_record_9, %T_record_9* %t15, i32 0, i32 0
    %t16 = bitcast i8* %t17 to i8*
    %t19 = getelementptr inbounds %Frame_callsp_readr, %Frame_callsp_readr* %.frame, i32 0, i32 0
    %t20 = load %T_text*, %T_text** %t19
    %t18 = load %T_text, %T_text* %t20
    %t21 = load i8, i8* %t18
    store i8 %t21, i8* %t16
    %t23 = load i32, i32* @sp
    %t22 = sub i32 %t23, 2
    store i32 %t22, i32* @sp

    ; epilogue
    ret void
}


; line 546
;================================================================================
; scope: callsp_readc (level : 3)

; activation record
%Frame_callsp_readc = type
{
    ; parameters
    %T_text*,    ; 0: f

    ; variables
    i32,    ; 1: ad
    i8,    ; 2: c

    ; slink
    %Frame_callsp*    ; 3
};

; procedure body
define void @P_callsp_readc(%Frame_callsp* %.slink, %T_text* %f)
{
    ; allocate frame
    %.frame = alloca %Frame_callsp_readc, align 8
    %t1 = getelementptr inbounds %Frame_callsp_readc, %Frame_callsp_readc* %.frame, i32 0, i32 3
    store %Frame_callsp* %.slink, %Frame_callsp** %t1
    %t2 = getelementptr inbounds %Frame_callsp_readc, %Frame_callsp_readc* %.frame, i32 0, i32 0
    store %T_text* %f, %T_text** %t2

    ; body
    %t3 = getelementptr inbounds %Frame_callsp_readc, %Frame_callsp_readc* %.frame, i32 0, i32 1
    %t5 = load i32, i32* @sp
    %t4 = sub i32 %t5, 1
    %t6 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t4
    %t8 = getelementptr inbounds %T_record_9, %T_record_9* %t6, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i32*
    %t9 = load i32, i32* %t7
    store i32 %t9, i32* %t3
    %t11 = getelementptr inbounds %Frame_callsp_readc, %Frame_callsp_readc* %.frame, i32 0, i32 1
    %t10 = load i32, i32* %t11
    %t12 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t10
    %t14 = getelementptr inbounds %T_record_9, %T_record_9* %t12, i32 0, i32 0
    %t13 = bitcast i8* %t14 to i8*
    %t16 = getelementptr inbounds %Frame_callsp_readc, %Frame_callsp_readc* %.frame, i32 0, i32 2
    %t15 = load i8, i8* %t16
    store i8 %t15, i8* %t13
    %t17 = load i32, i32* @sp
    %t18 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t17
    %t20 = getelementptr inbounds %T_record_9, %T_record_9* %t18, i32 0, i32 0
    %t19 = bitcast i8* %t20 to i32*
    %t21 = load i32, i32* %t19
    %t22 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t21
    %t24 = getelementptr inbounds %T_record_9, %T_record_9* %t22, i32 0, i32 0
    %t23 = bitcast i8* %t24 to i8*
    %t26 = getelementptr inbounds %Frame_callsp_readc, %Frame_callsp_readc* %.frame, i32 0, i32 0
    %t27 = load %T_text*, %T_text** %t26
    %t25 = load %T_text, %T_text* %t27
    %t28 = load i8, i8* %t25
    store i8 %t28, i8* %t23
    %t29 = load i32, i32* @sp
    %t30 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t29
    %t32 = getelementptr inbounds %T_record_9, %T_record_9* %t30, i32 0, i32 0
    %t31 = bitcast i8* %t32 to i32*
    %t33 = load i32, i32* %t31
    %t34 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t33
    %t36 = getelementptr inbounds %T_record_9, %T_record_9* %t34, i32 0, i32 0
    %t35 = bitcast i8* %t36 to i32*
    store i32 , i32* %t35
    %t38 = load i32, i32* @sp
    %t37 = sub i32 %t38, 2
    store i32 %t37, i32* @sp

    ; epilogue
    ret void
}


; line 556
;================================================================================
; scope: callsp_writestr (level : 3)

; activation record
%Frame_callsp_writestr = type
{
    ; parameters
    %T_text*,    ; 0: f

    ; variables
    i32,    ; 1: ad
    i32,    ; 2: i
    i32,    ; 3: j
    i32,    ; 4: k

    ; slink
    %Frame_callsp*    ; 5
};

; procedure body
define void @P_callsp_writestr(%Frame_callsp* %.slink, %T_text* %f)
{
    ; allocate frame
    %.frame = alloca %Frame_callsp_writestr, align 8
    %t1 = getelementptr inbounds %Frame_callsp_writestr, %Frame_callsp_writestr* %.frame, i32 0, i32 5
    store %Frame_callsp* %.slink, %Frame_callsp** %t1
    %t2 = getelementptr inbounds %Frame_callsp_writestr, %Frame_callsp_writestr* %.frame, i32 0, i32 0
    store %T_text* %f, %T_text** %t2

    ; body
    %t3 = getelementptr inbounds %Frame_callsp_writestr, %Frame_callsp_writestr* %.frame, i32 0, i32 1
    %t5 = load i32, i32* @sp
    %t4 = sub i32 %t5, 3
    %t6 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t4
    %t8 = getelementptr inbounds %T_record_9, %T_record_9* %t6, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i32*
    %t9 = load i32, i32* %t7
    store i32 %t9, i32* %t3
    %t10 = getelementptr inbounds %Frame_callsp_writestr, %Frame_callsp_writestr* %.frame, i32 0, i32 4
    %t12 = load i32, i32* @sp
    %t11 = sub i32 %t12, 2
    %t13 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t11
    %t15 = getelementptr inbounds %T_record_9, %T_record_9* %t13, i32 0, i32 0
    %t14 = bitcast i8* %t15 to i32*
    %t16 = load i32, i32* %t14
    store i32 %t16, i32* %t10
    %t17 = getelementptr inbounds %Frame_callsp_writestr, %Frame_callsp_writestr* %.frame, i32 0, i32 3
    %t19 = load i32, i32* @sp
    %t18 = sub i32 %t19, 1
    %t20 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t18
    %t22 = getelementptr inbounds %T_record_9, %T_record_9* %t20, i32 0, i32 0
    %t21 = bitcast i8* %t22 to i32*
    %t23 = load i32, i32* %t21
    store i32 %t23, i32* %t17
    %t25 = load i32, i32* @sp
    %t24 = sub i32 %t25, 4
    store i32 %t24, i32* @sp

    ; epilogue
    ret void
}


; line 568
;================================================================================
; scope: callsp_getfile (level : 3)

; activation record
%Frame_callsp_getfile = type
{
    ; parameters
    %T_text*,    ; 0: f

    ; variables
    i32,    ; 1: ad

    ; slink
    %Frame_callsp*    ; 2
};

; procedure body
define void @P_callsp_getfile(%Frame_callsp* %.slink, %T_text* %f)
{
    ; allocate frame
    %.frame = alloca %Frame_callsp_getfile, align 8
    %t1 = getelementptr inbounds %Frame_callsp_getfile, %Frame_callsp_getfile* %.frame, i32 0, i32 2
    store %Frame_callsp* %.slink, %Frame_callsp** %t1
    %t2 = getelementptr inbounds %Frame_callsp_getfile, %Frame_callsp_getfile* %.frame, i32 0, i32 0
    store %T_text* %f, %T_text** %t2

    ; body
    %t3 = getelementptr inbounds %Frame_callsp_getfile, %Frame_callsp_getfile* %.frame, i32 0, i32 1
    %t4 = load i32, i32* @sp
    %t5 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t4
    %t7 = getelementptr inbounds %T_record_9, %T_record_9* %t5, i32 0, i32 0
    %t6 = bitcast i8* %t7 to i32*
    %t8 = load i32, i32* %t6
    store i32 %t8, i32* %t3
    %t10 = getelementptr inbounds %Frame_callsp_getfile, %Frame_callsp_getfile* %.frame, i32 0, i32 1
    %t9 = load i32, i32* %t10
    %t11 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t9
    %t13 = getelementptr inbounds %T_record_9, %T_record_9* %t11, i32 0, i32 0
    %t12 = bitcast i8* %t13 to i8*
    %t15 = getelementptr inbounds %Frame_callsp_getfile, %Frame_callsp_getfile* %.frame, i32 0, i32 0
    %t16 = load %T_text*, %T_text** %t15
    %t14 = load %T_text, %T_text* %t16
    %t17 = load i8, i8* %t14
    store i8 %t17, i8* %t12
    %t19 = load i32, i32* @sp
    %t18 = sub i32 %t19, 1
    store i32 %t18, i32* @sp

    ; epilogue
    ret void
}


; line 575
;================================================================================
; scope: callsp_putfile (level : 3)

; activation record
%Frame_callsp_putfile = type
{
    ; parameters
    %T_text*,    ; 0: f

    ; variables
    i32,    ; 1: ad

    ; slink
    %Frame_callsp*    ; 2
};

; procedure body
define void @P_callsp_putfile(%Frame_callsp* %.slink, %T_text* %f)
{
    ; allocate frame
    %.frame = alloca %Frame_callsp_putfile, align 8
    %t1 = getelementptr inbounds %Frame_callsp_putfile, %Frame_callsp_putfile* %.frame, i32 0, i32 2
    store %Frame_callsp* %.slink, %Frame_callsp** %t1
    %t2 = getelementptr inbounds %Frame_callsp_putfile, %Frame_callsp_putfile* %.frame, i32 0, i32 0
    store %T_text* %f, %T_text** %t2

    ; body
    %t3 = getelementptr inbounds %Frame_callsp_putfile, %Frame_callsp_putfile* %.frame, i32 0, i32 1
    %t4 = load i32, i32* @sp
    %t5 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t4
    %t7 = getelementptr inbounds %T_record_9, %T_record_9* %t5, i32 0, i32 0
    %t6 = bitcast i8* %t7 to i32*
    %t8 = load i32, i32* %t6
    store i32 %t8, i32* %t3
    %t10 = getelementptr inbounds %Frame_callsp_putfile, %Frame_callsp_putfile* %.frame, i32 0, i32 0
    %t11 = load %T_text*, %T_text** %t10
    %t9 = load %T_text, %T_text* %t11
    %t13 = getelementptr inbounds %Frame_callsp_putfile, %Frame_callsp_putfile* %.frame, i32 0, i32 1
    %t12 = load i32, i32* %t13
    %t14 = getelementptr inbounds %T_array_8, %T_array_8* @store, i32 0, i32 %t12
    %t16 = getelementptr inbounds %T_record_9, %T_record_9* %t14, i32 0, i32 0
    %t15 = bitcast i8* %t16 to i8*
    %t17 = load i8, i8* %t15
    store i8 %t17, i8* %t9
    %t19 = load i32, i32* @sp
    %t18 = sub i32 %t19, 1
    store i32 %t18, i32* @sp
    ; nop

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.91 = private unnamed_addr constant [7 x i8] c"  mp =\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"  np =\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"  sp =\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c" op =\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c" pc =\00", align 1
@.str.93 = private unnamed_addr constant [39 x i8] c"--------------------------------------\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"...       \00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"abi       \00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"abr       \00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"adi       \00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"adr       \00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"and       \00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"atn       \00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"chk       \00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"chr       \00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"cos       \00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"csp       \00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"cup       \00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"dec       \00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"dif       \00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"dvi       \00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"dvr       \00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"eln       \00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"ent       \00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"eof       \00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"equ       \00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"exp       \00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"fjp       \00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"flo       \00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"flt       \00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"geq       \00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"get       \00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"grt       \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"inc       \00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"ind       \00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"inn       \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"int       \00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"ior       \00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"ixa       \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"lao       \00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"lca       \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"lda       \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"ldc       \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"ldo       \00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"leq       \00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"les       \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"lod       \00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"log       \00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"mod       \00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"mov       \00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"mpi       \00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"mpr       \00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"mst       \00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"neq       \00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"new       \00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"ngi       \00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"ngr       \00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"not       \00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"odd       \00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"ord       \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"prd\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"prr\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"put       \00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"rdc       \00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"rdi       \00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"rdr       \00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"ret       \00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"rln       \00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"rst       \00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"sav       \00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"sbi       \00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"sbr       \00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"sgs       \00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"sin       \00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"sqi       \00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"sqr       \00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"sqt       \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"sro       \00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"sto       \00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"stp       \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"str       \00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"trc       \00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"ujc       \00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"ujp       \00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"uni       \00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"wln       \00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"wrc       \00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"wri       \00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"wrr       \00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"wrs       \00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"xjp       \00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!73}
!llvm.module.flags = !{!74, !75}
!llvm.ident = !{!72}

!0 = !DIFile(filename: "pint.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!10 = !DICompositeType(tag: DW_TAG_array_type, name: "alfa", file: !0, line: 76, baseType: !2, size: 80, elements: !12)
!11 = !DISubrange(count: 10)
!12 = !{!11}
!13 = !DICompositeType(tag: DW_TAG_array_type, name: "beta", file: !0, line: 74, baseType: !2, size: 200, elements: !15)
!14 = !DISubrange(count: 25)
!15 = !{!14}
!16 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!17 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!18 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!19 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 78, baseType: !20, size: 1660992, elements: !29)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 79, size: 192, flags: DIFlagTypePassByValue, elements: !27)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "op1", scope: !20, file: !0, line: 79, baseType: !18, size: 32, offset: 0)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !20, file: !0, line: 80, baseType: !17, size: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "q1", scope: !20, file: !0, line: 81, baseType: !16, size: 32, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "op2", scope: !20, file: !0, line: 82, baseType: !18, size: 32, offset: 96)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "p2", scope: !20, file: !0, line: 83, baseType: !17, size: 32, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "q2", scope: !20, file: !0, line: 84, baseType: !16, size: 32, offset: 160)
!27 = !{!21,!22,!23,!24,!25,!26}
!28 = !DISubrange(count: 8651)
!29 = !{!28}
!30 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 112, baseType: !3, size: 4096, elements: !32)
!31 = !DISubrange(count: 128)
!32 = !{!31}
!33 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 111, baseType: !10, size: 10240, elements: !35)
!34 = !DISubrange(count: 128)
!35 = !{!34}
!36 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!37 = !DICompositeType(tag: DW_TAG_array_type, name: "settype", file: !0, line: 75, baseType: !40, size: 64, elements: !39)
!38 = !DISubrange(count: 59)
!39 = !{!38}
!40 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!41 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 113, baseType: !10, size: 1680, elements: !43)
!42 = !DISubrange(count: 21)
!43 = !{!42}
!44 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 89, baseType: !45, size: 1152064, elements: !55)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 90, size: 64, flags: DIFlagTypePassByValue, elements: !53)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "vi", scope: !45, file: !0, line: 93, baseType: !3, size: 32, offset: 0)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "vr", scope: !45, file: !0, line: 94, baseType: !6, size: 64, offset: 0)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "vb", scope: !45, file: !0, line: 95, baseType: !1, size: 8, offset: 0)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "vs", scope: !45, file: !0, line: 96, baseType: !37, size: 64, offset: 0)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "vc", scope: !45, file: !0, line: 97, baseType: !2, size: 8, offset: 0)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !45, file: !0, line: 98, baseType: !8, size: 32, offset: 0)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "vm", scope: !45, file: !0, line: 100, baseType: !3, size: 32, offset: 0)
!53 = !{!46,!47,!48,!49,!50,!51,!52}
!54 = !DISubrange(count: 18001)
!55 = !{!54}
!56 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "labelrec", file: !0, line: 128, size: 64, flags: DIFlagTypePassByValue, elements: !60)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !57, file: !0, line: 129, baseType: !8, size: 32, offset: 0)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !57, file: !0, line: 130, baseType: !56, size: 32, offset: 32)
!60 = !{!58,!59}
!61 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!62 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 135, baseType: !57, size: 118464, elements: !64)
!63 = !DISubrange(count: 1851)
!64 = !{!63}
!65 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 134, baseType: !2, size: 80, elements: !67)
!66 = !DISubrange(count: 10)
!67 = !{!66}
!68 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!69 = !{!1,!2,!3,!4,!5,!6,!7,!8,!9,!10,!13,!16,!17,!18,!19,!20,!30,!33,!36,!37,!41,!44,!45,!56,!57,!61,!62,!65,!68}
!70 = !{}
!71 = !{}
!72 = !{!"LPC 1.1"}
!73 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !69, globals: !71, nameTableKind: None)
!74 = !{i32 2, !"CodeView", i32 1}
!75 = !{i32 2, !"Debug Info Version", i32 3}

