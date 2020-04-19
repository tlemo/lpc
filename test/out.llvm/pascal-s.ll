; ModuleID = 'pascal-s.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\pascal-s.pas"
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
@_FilenameMapEntries = internal global [4 x %struct._Filename]
    [
    %struct._Filename { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* null },
    %struct._Filename { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* null },
    %struct._Filename { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* null },
    %struct._Filename { i8* null, i8* null }
    ], align 16
@_FilenameMap = dso_local global %struct._Filename* getelementptr inbounds ([4 x %struct._Filename], [4 x %struct._Filename]* @_FilenameMapEntries, i32 0, i32 0), align 8
@_FilenameMapSize = dso_local constant i32 3, align 4

; line 0
;================================================================================
; scope: global scope (level : 0)

; types
%T_text = type i8*

; line 167
;================================================================================
; scope: program scope (level : 1)

; types
%T_alfa = type [10 x i8]
%T_record_3 = type [28 x i8]
%T_array_2 = type [100 x %T_record_3]
%T_symset = type [2 x i32]
%T_record_5 = type [16 x i8]
%T_array_4 = type [100 x %T_record_5]
%T_order = type [12 x i8]
%T_array_6 = type [10001 x %T_order]
%T_array_10 = type [101 x i32]
%T_set_11 = type [2 x i32]
%T_item = type [8 x i8]
%T_array_12 = type [27 x %T_alfa]
%T_array_13 = type [27 x i32]
%T_array_14 = type [250 x i8]
%T_array_15 = type [100 x double]
%T_array_16 = type [256 x i32]
%T_array_17 = type [10001 x i8]
%T_typset = type [1 x i32]
%T_record_19 = type [40 x i8]
%T_array_18 = type [1001 x %T_record_19]

; program variables
@a = dso_local global i32 zeroinitializer
@atab = dso_local global %T_array_2 zeroinitializer
@b = dso_local global i32 zeroinitializer
@blockbegsys = dso_local global %T_symset zeroinitializer
@btab = dso_local global %T_array_4 zeroinitializer
@c1 = dso_local global i32 zeroinitializer
@c2 = dso_local global i32 zeroinitializer
@cc = dso_local global i32 zeroinitializer
@ch = dso_local global i8 zeroinitializer
@code = dso_local global %T_array_6 zeroinitializer
@constbegsys = dso_local global %T_symset zeroinitializer
@display = dso_local global %T_array_10 zeroinitializer
@errpos = dso_local global i32 zeroinitializer
@errs = dso_local global %T_set_11 zeroinitializer
@facbegsys = dso_local global %T_symset zeroinitializer
@id = dso_local global %T_alfa zeroinitializer
@iflag = dso_local global i1 zeroinitializer
@input = dso_local global %T_text zeroinitializer
@inum = dso_local global i32 zeroinitializer
@key = dso_local global %T_array_12 zeroinitializer
@ksy = dso_local global %T_array_13 zeroinitializer
@lc = dso_local global i32 zeroinitializer
@line = dso_local global %T_array_14 zeroinitializer
@ll = dso_local global i32 zeroinitializer
@oflag = dso_local global i1 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@progname = dso_local global %T_alfa zeroinitializer
@rconst = dso_local global %T_array_15 zeroinitializer
@rnum = dso_local global double zeroinitializer
@sleng = dso_local global i32 zeroinitializer
@sps = dso_local global %T_array_16 zeroinitializer
@srcfil = dso_local global %T_text zeroinitializer
@stab = dso_local global %T_array_17 zeroinitializer
@stantyps = dso_local global %T_typset zeroinitializer
@statbegsys = dso_local global %T_symset zeroinitializer
@sx = dso_local global i32 zeroinitializer
@sy = dso_local global i32 zeroinitializer
@t = dso_local global i32 zeroinitializer
@tab = dso_local global %T_array_18 zeroinitializer
@typebegsys = dso_local global %T_symset zeroinitializer

; procedure body
define void @P_()
{
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @input
    %t2 = call i8* @_OpenFile(i32 1)
    store i8* %t2, i8** @output
    %t3 = call i8* @_OpenFile(i32 2)
    store i8* %t3, i8** @srcfil

    ; body
    %t4 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t4)
    %t5 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0), i32 29)
    call void @_WriteLn(i8* %t5)
    %t6 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 1
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %T_alfa* %t6
    %t7 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 2
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %T_alfa* %t7
    %t8 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 3
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %T_alfa* %t8
    %t9 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 4
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %T_alfa* %t9
    %t10 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 5
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), %T_alfa* %t10
    %t11 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 6
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %T_alfa* %t11
    %t12 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 7
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), %T_alfa* %t12
    %t13 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 8
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), %T_alfa* %t13
    %t14 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 9
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %T_alfa* %t14
    %t15 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 10
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), %T_alfa* %t15
    %t16 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 11
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), %T_alfa* %t16
    %t17 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 12
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), %T_alfa* %t17
    %t18 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 13
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), %T_alfa* %t18
    %t19 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 14
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), %T_alfa* %t19
    %t20 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 15
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), %T_alfa* %t20
    %t21 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 16
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), %T_alfa* %t21
    %t22 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 17
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), %T_alfa* %t22
    %t23 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 18
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), %T_alfa* %t23
    %t24 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 19
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), %T_alfa* %t24
    %t25 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 20
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), %T_alfa* %t25
    %t26 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 21
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), %T_alfa* %t26
    %t27 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 22
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), %T_alfa* %t27
    %t28 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 23
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), %T_alfa* %t28
    %t29 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 24
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %T_alfa* %t29
    %t30 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 25
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), %T_alfa* %t30
    %t31 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 26
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), %T_alfa* %t31
    %t32 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 27
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), %T_alfa* %t32
    %t33 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 1
    store i32 11, i32* %t33
    %t34 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 2
    store i32 33, i32* %t34
    %t35 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 3
    store i32 37, i32* %t35
    %t36 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 4
    store i32 39, i32* %t36
    %t37 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 5
    store i32 28, i32* %t37
    %t38 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 6
    store i32 8, i32* %t38
    %t39 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 7
    store i32 47, i32* %t39
    %t40 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 8
    store i32 49, i32* %t40
    %t41 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 9
    store i32 44, i32* %t41
    %t42 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 10
    store i32 43, i32* %t42
    %t43 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 11
    store i32 42, i32* %t43
    %t44 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 12
    store i32 31, i32* %t44
    %t45 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 13
    store i32 38, i32* %t45
    %t46 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 14
    store i32 10, i32* %t46
    %t47 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 15
    store i32 4, i32* %t47
    %t48 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 16
    store i32 46, i32* %t48
    %t49 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 17
    store i32 12, i32* %t49
    %t50 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 18
    store i32 32, i32* %t50
    %t51 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 19
    store i32 35, i32* %t51
    %t52 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 20
    store i32 34, i32* %t52
    %t53 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 21
    store i32 40, i32* %t53
    %t54 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 22
    store i32 50, i32* %t54
    %t55 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 23
    store i32 48, i32* %t55
    %t56 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 24
    store i32 29, i32* %t56
    %t57 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 25
    store i32 45, i32* %t57
    %t58 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 26
    store i32 30, i32* %t58
    %t59 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 27
    store i32 41, i32* %t59
    %t60 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 43
    store i32 5, i32* %t60
    %t61 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 45
    store i32 6, i32* %t61
    %t62 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 42
    store i32 7, i32* %t62
    %t63 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 47
    store i32 9, i32* %t63
    %t64 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 40
    store i32 19, i32* %t64
    %t65 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 41
    store i32 20, i32* %t65
    %t66 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 61
    store i32 13, i32* %t66
    %t67 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 44
    store i32 23, i32* %t67
    %t68 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 91
    store i32 21, i32* %t68
    %t69 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 93
    store i32 22, i32* %t69
    %t70 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 35
    store i32 14, i32* %t70
    %t71 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 38
    store i32 11, i32* %t71
    %t72 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 59
    store i32 24, i32* %t72
    store %T_symset %.dummy_set, %T_symset* @constbegsys
    store %T_symset %.dummy_set, %T_symset* @typebegsys
    store %T_symset %.dummy_set, %T_symset* @blockbegsys
    store %T_symset %.dummy_set, %T_symset* @facbegsys
    store %T_symset %.dummy_set, %T_symset* @statbegsys
    store %T_typset %.dummy_set, %T_typset* @stantyps
    store i32 0, i32* @lc
    store i32 0, i32* @ll
    store i32 0, i32* @cc
    store i8 32, i8* @ch
    store i32 0, i32* @errpos
    store %T_set_11 %.dummy_set, %T_set_11* @errs
    call void @P_insymbol()
    %t73 = sub i32 0, 1
    store i32 %t73, i32* @t
    store i32 0, i32* @a
    store i32 1, i32* @b
    store i32 0, i32* @sx
    store i32 0, i32* @c2
    %t74 = getelementptr inbounds %T_array_10, %T_array_10* @display, i32 0, i32 0
    store i32 1, i32* %t74
    store i1 0, i1* @iflag
    store i1 0, i1* @oflag
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 1, i32 0, i32 0)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i32 0, i32 3, i32 0)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i32 0, i32 3, i32 1)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i32 2, i32 2, i32 1)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 2, i32 4, i32 1)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i32 2, i32 3, i32 1)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i32 2, i32 1, i32 1)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 4, i32 2, i32 0)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i32 4, i32 2, i32 2)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i32 4, i32 3, i32 4)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i32 4, i32 4, i32 5)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i32 4, i32 1, i32 6)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32 4, i32 4, i32 7)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 4, i32 4, i32 8)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 4, i32 1, i32 9)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i32 4, i32 1, i32 10)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i32 4, i32 2, i32 11)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i32 4, i32 2, i32 12)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 4, i32 2, i32 13)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i32 4, i32 2, i32 14)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i32 4, i32 2, i32 15)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i32 4, i32 2, i32 16)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i32 4, i32 3, i32 17)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i32 4, i32 3, i32 18)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i32 3, i32 0, i32 1)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i32 3, i32 0, i32 2)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0), i32 3, i32 0, i32 3)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i32 3, i32 0, i32 4)
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 3, i32 0, i32 0)
    %t75 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 1
    %t77 = getelementptr inbounds %T_record_5, %T_record_5* %t75, i32 0, i32 0
    %t76 = bitcast i8* %t77 to i32*
    %t78 = load i32, i32* @t
    store i32 %t78, i32* %t76
    %t79 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 1
    %t81 = getelementptr inbounds %T_record_5, %T_record_5* %t79, i32 0, i32 4
    %t80 = bitcast i8* %t81 to i32*
    store i32 1, i32* %t80
    %t82 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 1
    %t84 = getelementptr inbounds %T_record_5, %T_record_5* %t82, i32 0, i32 8
    %t83 = bitcast i8* %t84 to i32*
    store i32 0, i32* %t83
    %t85 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 1
    %t87 = getelementptr inbounds %T_record_5, %T_record_5* %t85, i32 0, i32 12
    %t86 = bitcast i8* %t87 to i32*
    store i32 0, i32* %t86
    call void @P_block(%T_symset true, i1 0, i32 1)
    call void @P_emit(i32 31)
    ; nop

    ; cleanup
    %t89 = load %T_text, %T_text* @srcfil
    call void @_CloseFile(i8* %t89)
    %t90 = load %T_text, %T_text* @output
    call void @_CloseFile(i8* %t90)
    %t91 = load %T_text, %T_text* @input
    call void @_CloseFile(i8* %t91)

    ; epilogue
    ret void
}


; line 268
;================================================================================
; scope: errormsg (level : 2)

; types
%T_errormsg_array_21 = type [59 x %T_alfa]

; activation record
%Frame_errormsg = type
{
    ; variables
    i32,    ; 0: k
    %T_errormsg_array_21,    ; 1: msg

    ; dummy
    i8*
};

; procedure body
define void @P_errormsg()
{
    ; allocate frame
    %.frame = alloca %Frame_errormsg, align 8

    ; body
    %t1 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t2 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t1, i32 0, i32 0
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), %T_alfa* %t2
    %t3 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t4 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t3, i32 0, i32 1
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), %T_alfa* %t4
    %t5 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t6 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t5, i32 0, i32 2
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), %T_alfa* %t6
    %t7 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t8 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t7, i32 0, i32 3
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), %T_alfa* %t8
    %t9 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t10 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t9, i32 0, i32 4
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), %T_alfa* %t10
    %t11 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t12 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t11, i32 0, i32 5
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), %T_alfa* %t12
    %t13 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t14 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t13, i32 0, i32 6
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), %T_alfa* %t14
    %t15 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t16 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t15, i32 0, i32 7
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), %T_alfa* %t16
    %t17 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t18 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t17, i32 0, i32 8
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), %T_alfa* %t18
    %t19 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t20 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t19, i32 0, i32 9
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), %T_alfa* %t20
    %t21 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t22 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t21, i32 0, i32 10
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), %T_alfa* %t22
    %t23 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t24 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t23, i32 0, i32 11
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), %T_alfa* %t24
    %t25 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t26 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t25, i32 0, i32 12
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0), %T_alfa* %t26
    %t27 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t28 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t27, i32 0, i32 13
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), %T_alfa* %t28
    %t29 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t30 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t29, i32 0, i32 14
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), %T_alfa* %t30
    %t31 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t32 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t31, i32 0, i32 15
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), %T_alfa* %t32
    %t33 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t34 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t33, i32 0, i32 16
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0), %T_alfa* %t34
    %t35 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t36 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t35, i32 0, i32 17
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), %T_alfa* %t36
    %t37 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t38 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t37, i32 0, i32 18
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), %T_alfa* %t38
    %t39 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t40 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t39, i32 0, i32 19
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %T_alfa* %t40
    %t41 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t42 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t41, i32 0, i32 20
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0), %T_alfa* %t42
    %t43 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t44 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t43, i32 0, i32 21
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), %T_alfa* %t44
    %t45 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t46 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t45, i32 0, i32 22
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), %T_alfa* %t46
    %t47 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t48 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t47, i32 0, i32 23
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), %T_alfa* %t48
    %t49 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t50 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t49, i32 0, i32 24
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), %T_alfa* %t50
    %t51 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t52 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t51, i32 0, i32 25
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), %T_alfa* %t52
    %t53 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t54 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t53, i32 0, i32 26
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i32 0, i32 0), %T_alfa* %t54
    %t55 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t56 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t55, i32 0, i32 27
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0), %T_alfa* %t56
    %t57 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t58 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t57, i32 0, i32 28
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0), %T_alfa* %t58
    %t59 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t60 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t59, i32 0, i32 29
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0), %T_alfa* %t60
    %t61 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t62 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t61, i32 0, i32 30
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0), %T_alfa* %t62
    %t63 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t64 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t63, i32 0, i32 31
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0), %T_alfa* %t64
    %t65 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t66 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t65, i32 0, i32 32
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), %T_alfa* %t66
    %t67 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t68 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t67, i32 0, i32 33
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0), %T_alfa* %t68
    %t69 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t70 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t69, i32 0, i32 34
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), %T_alfa* %t70
    %t71 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t72 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t71, i32 0, i32 35
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.90, i32 0, i32 0), %T_alfa* %t72
    %t73 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t74 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t73, i32 0, i32 36
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i32 0, i32 0), %T_alfa* %t74
    %t75 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t76 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t75, i32 0, i32 37
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i32 0, i32 0), %T_alfa* %t76
    %t77 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t78 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t77, i32 0, i32 38
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i32 0, i32 0), %T_alfa* %t78
    %t79 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t80 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t79, i32 0, i32 39
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i32 0, i32 0), %T_alfa* %t80
    %t81 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t82 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t81, i32 0, i32 40
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %T_alfa* %t82
    %t83 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t84 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t83, i32 0, i32 41
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %T_alfa* %t84
    %t85 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t86 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t85, i32 0, i32 42
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i32 0, i32 0), %T_alfa* %t86
    %t87 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t88 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t87, i32 0, i32 43
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), %T_alfa* %t88
    %t89 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t90 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t89, i32 0, i32 44
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.96, i32 0, i32 0), %T_alfa* %t90
    %t91 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t92 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t91, i32 0, i32 45
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0), %T_alfa* %t92
    %t93 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t94 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t93, i32 0, i32 46
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i32 0, i32 0), %T_alfa* %t94
    %t95 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t96 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t95, i32 0, i32 47
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), %T_alfa* %t96
    %t97 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t98 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t97, i32 0, i32 48
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %T_alfa* %t98
    %t99 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t100 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t99, i32 0, i32 49
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), %T_alfa* %t100
    %t101 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t102 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t101, i32 0, i32 50
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), %T_alfa* %t102
    %t103 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t104 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t103, i32 0, i32 51
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), %T_alfa* %t104
    %t105 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t106 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t105, i32 0, i32 52
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), %T_alfa* %t106
    %t107 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t108 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t107, i32 0, i32 53
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), %T_alfa* %t108
    %t109 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t110 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t109, i32 0, i32 54
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), %T_alfa* %t110
    %t111 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t112 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t111, i32 0, i32 55
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i32 0, i32 0), %T_alfa* %t112
    %t113 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t114 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t113, i32 0, i32 56
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %T_alfa* %t114
    %t115 = getelementptr