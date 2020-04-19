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
    ; line 1838
    %t4 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t4)
    ; line 1839
    %t5 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0), i32 29)
    call void @_WriteLn(i8* %t5)
    ; line 1843
    ; line 1845
    %t6 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 1
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %T_alfa* %t6
    ; line 1845
    %t7 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 2
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %T_alfa* %t7
    ; line 1846
    %t8 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 3
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %T_alfa* %t8
    ; line 1846
    %t9 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 4
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %T_alfa* %t9
    ; line 1847
    %t10 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 5
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), %T_alfa* %t10
    ; line 1847
    %t11 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 6
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), %T_alfa* %t11
    ; line 1848
    %t12 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 7
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), %T_alfa* %t12
    ; line 1848
    %t13 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 8
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), %T_alfa* %t13
    ; line 1849
    %t14 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 9
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %T_alfa* %t14
    ; line 1849
    %t15 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 10
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), %T_alfa* %t15
    ; line 1850
    %t16 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 11
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), %T_alfa* %t16
    ; line 1850
    %t17 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 12
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), %T_alfa* %t17
    ; line 1851
    %t18 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 13
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), %T_alfa* %t18
    ; line 1851
    %t19 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 14
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), %T_alfa* %t19
    ; line 1852
    %t20 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 15
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), %T_alfa* %t20
    ; line 1852
    %t21 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 16
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), %T_alfa* %t21
    ; line 1853
    %t22 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 17
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), %T_alfa* %t22
    ; line 1853
    %t23 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 18
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), %T_alfa* %t23
    ; line 1854
    %t24 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 19
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), %T_alfa* %t24
    ; line 1854
    %t25 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 20
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), %T_alfa* %t25
    ; line 1855
    %t26 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 21
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), %T_alfa* %t26
    ; line 1855
    %t27 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 22
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), %T_alfa* %t27
    ; line 1856
    %t28 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 23
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), %T_alfa* %t28
    ; line 1856
    %t29 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 24
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %T_alfa* %t29
    ; line 1857
    %t30 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 25
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), %T_alfa* %t30
    ; line 1857
    %t31 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 26
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), %T_alfa* %t31
    ; line 1858
    %t32 = getelementptr inbounds %T_array_12, %T_array_12* @key, i32 0, i32 27
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), %T_alfa* %t32
    ; line 1859
    %t33 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 1
    store i32 11, i32* %t33
    ; line 1859
    %t34 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 2
    store i32 33, i32* %t34
    ; line 1860
    %t35 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 3
    store i32 37, i32* %t35
    ; line 1860
    %t36 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 4
    store i32 39, i32* %t36
    ; line 1861
    %t37 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 5
    store i32 28, i32* %t37
    ; line 1861
    %t38 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 6
    store i32 8, i32* %t38
    ; line 1862
    %t39 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 7
    store i32 47, i32* %t39
    ; line 1862
    %t40 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 8
    store i32 49, i32* %t40
    ; line 1863
    %t41 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 9
    store i32 44, i32* %t41
    ; line 1863
    %t42 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 10
    store i32 43, i32* %t42
    ; line 1864
    %t43 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 11
    store i32 42, i32* %t43
    ; line 1864
    %t44 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 12
    store i32 31, i32* %t44
    ; line 1865
    %t45 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 13
    store i32 38, i32* %t45
    ; line 1865
    %t46 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 14
    store i32 10, i32* %t46
    ; line 1866
    %t47 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 15
    store i32 4, i32* %t47
    ; line 1866
    %t48 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 16
    store i32 46, i32* %t48
    ; line 1867
    %t49 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 17
    store i32 12, i32* %t49
    ; line 1867
    %t50 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 18
    store i32 32, i32* %t50
    ; line 1868
    %t51 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 19
    store i32 35, i32* %t51
    ; line 1868
    %t52 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 20
    store i32 34, i32* %t52
    ; line 1869
    %t53 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 21
    store i32 40, i32* %t53
    ; line 1869
    %t54 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 22
    store i32 50, i32* %t54
    ; line 1870
    %t55 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 23
    store i32 48, i32* %t55
    ; line 1870
    %t56 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 24
    store i32 29, i32* %t56
    ; line 1871
    %t57 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 25
    store i32 45, i32* %t57
    ; line 1871
    %t58 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 26
    store i32 30, i32* %t58
    ; line 1872
    %t59 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 27
    store i32 41, i32* %t59
    ; line 1873
    %t60 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 43
    store i32 5, i32* %t60
    ; line 1873
    %t61 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 45
    store i32 6, i32* %t61
    ; line 1874
    %t62 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 42
    store i32 7, i32* %t62
    ; line 1874
    %t63 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 47
    store i32 9, i32* %t63
    ; line 1875
    %t64 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 40
    store i32 19, i32* %t64
    ; line 1875
    %t65 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 41
    store i32 20, i32* %t65
    ; line 1876
    %t66 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 61
    store i32 13, i32* %t66
    ; line 1876
    %t67 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 44
    store i32 23, i32* %t67
    ; line 1877
    %t68 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 91
    store i32 21, i32* %t68
    ; line 1877
    %t69 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 93
    store i32 22, i32* %t69
    ; line 1878
    %t70 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 35
    store i32 14, i32* %t70
    ; line 1878
    %t71 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 38
    store i32 11, i32* %t71
    ; line 1879
    %t72 = getelementptr inbounds %T_array_16, %T_array_16* @sps, i32 0, i32 59
    store i32 24, i32* %t72
    ; line 1880
    store %T_symset %.dummy_set, %T_symset* @constbegsys
    ; line 1881
    store %T_symset %.dummy_set, %T_symset* @typebegsys
    ; line 1882
    store %T_symset %.dummy_set, %T_symset* @blockbegsys
    ; line 1884
    store %T_symset %.dummy_set, %T_symset* @facbegsys
    ; line 1885
    store %T_symset %.dummy_set, %T_symset* @statbegsys
    ; line 1886
    store %T_typset %.dummy_set, %T_typset* @stantyps
    ; line 1887
    store i32 0, i32* @lc
    ; line 1887
    store i32 0, i32* @ll
    ; line 1887
    store i32 0, i32* @cc
    ; line 1887
    store i8 32, i8* @ch
    ; line 1888
    store i32 0, i32* @errpos
    ; line 1888
    store %T_set_11 %.dummy_set, %T_set_11* @errs
    ; line 1888
    call void @P_insymbol()
    ; line 1889
    %t73 = sub i32 0, 1
    store i32 %t73, i32* @t
    ; line 1889
    store i32 0, i32* @a
    ; line 1889
    store i32 1, i32* @b
    ; line 1889
    store i32 0, i32* @sx
    ; line 1889
    store i32 0, i32* @c2
    ; line 1890
    %t74 = getelementptr inbounds %T_array_10, %T_array_10* @display, i32 0, i32 0
    store i32 1, i32* %t74
    ; line 1891
    store i1 0, i1* @iflag
    ; line 1891
    store i1 0, i1* @oflag
    ; line 1892
    %t76 = load i32, i32* @sy
    %t75 = icmp ne i32 %t76, 35
    br i1 %t75, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1892
    call void @P_error(i32 3)
    br label %L_endif_1
L_else_1:
    ; line 1893
    call void @P_insymbol()
    ; line 1894
    %t78 = load i32, i32* @sy
    %t77 = icmp ne i32 %t78, 36
    br i1 %t77, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1894
    call void @P_error(i32 2)
    br label %L_endif_2
L_else_2:
    ; line 1895
    %t79 = load %T_alfa, %T_alfa* @id
    store %T_alfa %t79, %T_alfa* @progname
    ; line 1895
    call void @P_insymbol()
    ; line 1896
    %t81 = load i32, i32* @sy
    %t80 = icmp ne i32 %t81, 19
    br i1 %t80, label %L_then_3, label %L_else_3
L_then_3:
    ; line 1896
    call void @P_error(i32 9)
    br label %L_endif_3
L_else_3:
    ; line 1897
    br label %L_endif_3
L_endif_3:
    ; line 1904
    %t83 = load i32, i32* @sy
    %t82 = icmp eq i32 %t83, 20
    br i1 %t82, label %L_then_4, label %L_else_4
L_then_4:
    ; line 1904
    call void @P_insymbol()
    br label %L_endif_4
L_else_4:
    ; line 1904
    call void @P_error(i32 4)
    br label %L_endif_4
L_endif_4:
    ; line 1905
    %t84 = load i1, i1* @oflag
    %t85 = icmp eq i1 0, %t84
    br i1 %t85, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 1905
    call void @P_error(i32 20)
    br label %L_endif_5
L_endif_5:
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 1908
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 1, i32 0, i32 0)
    ; line 1909
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i32 0, i32 3, i32 0)
    ; line 1910
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i32 0, i32 3, i32 1)
    ; line 1911
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i32 2, i32 2, i32 1)
    ; line 1912
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 2, i32 4, i32 1)
    ; line 1913
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i32 2, i32 3, i32 1)
    ; line 1914
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i32 2, i32 1, i32 1)
    ; line 1915
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 4, i32 2, i32 0)
    ; line 1916
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i32 4, i32 2, i32 2)
    ; line 1917
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i32 4, i32 3, i32 4)
    ; line 1918
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i32 4, i32 4, i32 5)
    ; line 1919
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i32 4, i32 1, i32 6)
    ; line 1920
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i32 4, i32 4, i32 7)
    ; line 1921
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 4, i32 4, i32 8)
    ; line 1922
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 4, i32 1, i32 9)
    ; line 1923
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i32 4, i32 1, i32 10)
    ; line 1924
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i32 4, i32 2, i32 11)
    ; line 1925
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i32 4, i32 2, i32 12)
    ; line 1926
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 4, i32 2, i32 13)
    ; line 1927
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i32 4, i32 2, i32 14)
    ; line 1928
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i32 4, i32 2, i32 15)
    ; line 1929
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i32 4, i32 2, i32 16)
    ; line 1930
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i32 4, i32 3, i32 17)
    ; line 1931
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i32 4, i32 3, i32 18)
    ; line 1932
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i32 3, i32 0, i32 1)
    ; line 1933
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i32 3, i32 0, i32 2)
    ; line 1934
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0), i32 3, i32 0, i32 3)
    ; line 1935
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i32 3, i32 0, i32 4)
    ; line 1936
    call void @P_enter(%T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 3, i32 0, i32 0)
    ; line 1938
    %t86 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 1
    %t88 = getelementptr inbounds %T_record_5, %T_record_5* %t86, i32 0, i32 0
    %t87 = bitcast i8* %t88 to i32*
    %t89 = load i32, i32* @t
    store i32 %t89, i32* %t87
    ; line 1938
    %t90 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 1
    %t92 = getelementptr inbounds %T_record_5, %T_record_5* %t90, i32 0, i32 4
    %t91 = bitcast i8* %t92 to i32*
    store i32 1, i32* %t91
    ; line 1938
    %t93 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 1
    %t95 = getelementptr inbounds %T_record_5, %T_record_5* %t93, i32 0, i32 8
    %t94 = bitcast i8* %t95 to i32*
    store i32 0, i32* %t94
    ; line 1938
    %t96 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 1
    %t98 = getelementptr inbounds %T_record_5, %T_record_5* %t96, i32 0, i32 12
    %t97 = bitcast i8* %t98 to i32*
    store i32 0, i32* %t97
    ; line 1941
    call void @P_block(%T_symset true, i1 0, i32 1)
    ; line 1942
    %t101 = load i32, i32* @sy
    %t100 = icmp ne i32 %t101, 25
    br i1 %t100, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 1942
    call void @P_error(i32 22)
    br label %L_endif_6
L_endif_6:
    ; line 1943
    call void @P_emit(i32 31)
    ; line 1944
    %t103 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 2
    %t105 = getelementptr inbounds %T_record_5, %T_record_5* %t103, i32 0, i32 12
    %t104 = bitcast i8* %t105 to i32*
    %t106 = load i32, i32* %t104
    %t102 = icmp sgt i32 %t106, 10000
    br i1 %t102, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 1944
    call void @P_error(i32 49)
    br label %L_endif_7
L_endif_7:
    ; line 1945
    %t107 = call i1 @_StrcmpEQ(i8* getelementptr inbounds (%T_alfa, %T_alfa* @progname, i32 0, i32 0), i32 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i32 10)
    br i1 %t107, label %L_then_8, label %L_endif_8
L_then_8:
    ; line 1945
    call void @P_printtables()
    br label %L_endif_8
L_endif_8:
    ; line 1947
    br i1 true, label %L_then_9, label %L_else_9
L_then_9:
    ; line 1949
    %t109 = load i1, i1* @iflag
    br i1 %t109, label %L_then_10, label %L_endif_10
L_then_10:
    ; line 1951
    br i1 %.dummy.intrin, label %L_then_11, label %L_else_11
L_then_11:
    ; line 1951
    %t110 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t110, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i32 0, i32 0), i32 19)
    call void @_WriteLn(i8* %t110)
    br label %L_endif_11
L_else_11:
    ; line 1952
    %t111 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t111, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t111)
    ; line 1953
    ; nop
    br label %L_endif_11
L_endif_11:
    br label %L_endif_10
L_endif_10:
    ; line 1962
    %t112 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t112, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t112)
    ; line 1963
    call void @P_interpret()
    br label %L_endif_9
L_else_9:
    ; line 1965
    call void @P_errormsg()
    br label %L_endif_9
L_endif_9:
    br label %L_99
L_99:
    ; nop

    ; cleanup
    %t113 = load %T_text, %T_text* @srcfil
    call void @_CloseFile(i8* %t113)
    %t114 = load %T_text, %T_text* @output
    call void @_CloseFile(i8* %t114)
    %t115 = load %T_text, %T_text* @input
    call void @_CloseFile(i8* %t115)

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
    ; line 273
    %t1 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t2 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t1, i32 0, i32 0
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), %T_alfa* %t2
    ; line 273
    %t3 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t4 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t3, i32 0, i32 1
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), %T_alfa* %t4
    ; line 274
    %t5 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t6 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t5, i32 0, i32 2
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), %T_alfa* %t6
    ; line 274
    %t7 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t8 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t7, i32 0, i32 3
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), %T_alfa* %t8
    ; line 275
    %t9 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t10 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t9, i32 0, i32 4
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), %T_alfa* %t10
    ; line 275
    %t11 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t12 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t11, i32 0, i32 5
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), %T_alfa* %t12
    ; line 276
    %t13 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t14 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t13, i32 0, i32 6
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), %T_alfa* %t14
    ; line 276
    %t15 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t16 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t15, i32 0, i32 7
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0), %T_alfa* %t16
    ; line 277
    %t17 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t18 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t17, i32 0, i32 8
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), %T_alfa* %t18
    ; line 277
    %t19 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t20 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t19, i32 0, i32 9
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), %T_alfa* %t20
    ; line 278
    %t21 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t22 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t21, i32 0, i32 10
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), %T_alfa* %t22
    ; line 278
    %t23 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t24 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t23, i32 0, i32 11
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), %T_alfa* %t24
    ; line 279
    %t25 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t26 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t25, i32 0, i32 12
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0), %T_alfa* %t26
    ; line 279
    %t27 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t28 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t27, i32 0, i32 13
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), %T_alfa* %t28
    ; line 280
    %t29 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t30 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t29, i32 0, i32 14
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0), %T_alfa* %t30
    ; line 280
    %t31 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t32 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t31, i32 0, i32 15
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), %T_alfa* %t32
    ; line 281
    %t33 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t34 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t33, i32 0, i32 16
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), %T_alfa* %t34
    ; line 281
    %t35 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t36 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t35, i32 0, i32 17
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), %T_alfa* %t36
    ; line 282
    %t37 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t38 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t37, i32 0, i32 18
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), %T_alfa* %t38
    ; line 282
    %t39 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t40 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t39, i32 0, i32 19
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %T_alfa* %t40
    ; line 283
    %t41 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t42 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t41, i32 0, i32 20
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), %T_alfa* %t42
    ; line 283
    %t43 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t44 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t43, i32 0, i32 21
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), %T_alfa* %t44
    ; line 284
    %t45 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t46 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t45, i32 0, i32 22
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i32 0, i32 0), %T_alfa* %t46
    ; line 284
    %t47 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t48 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t47, i32 0, i32 23
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0), %T_alfa* %t48
    ; line 285
    %t49 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t50 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t49, i32 0, i32 24
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0), %T_alfa* %t50
    ; line 285
    %t51 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t52 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t51, i32 0, i32 25
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0), %T_alfa* %t52
    ; line 286
    %t53 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t54 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t53, i32 0, i32 26
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0), %T_alfa* %t54
    ; line 286
    %t55 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t56 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t55, i32 0, i32 27
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0), %T_alfa* %t56
    ; line 287
    %t57 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t58 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t57, i32 0, i32 28
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), %T_alfa* %t58
    ; line 287
    %t59 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t60 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t59, i32 0, i32 29
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0), %T_alfa* %t60
    ; line 288
    %t61 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t62 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t61, i32 0, i32 30
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.90, i32 0, i32 0), %T_alfa* %t62
    ; line 288
    %t63 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t64 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t63, i32 0, i32 31
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i32 0, i32 0), %T_alfa* %t64
    ; line 289
    %t65 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t66 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t65, i32 0, i32 32
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i32 0, i32 0), %T_alfa* %t66
    ; line 289
    %t67 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t68 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t67, i32 0, i32 33
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i32 0, i32 0), %T_alfa* %t68
    ; line 290
    %t69 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t70 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t69, i32 0, i32 34
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), %T_alfa* %t70
    ; line 290
    %t71 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t72 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t71, i32 0, i32 35
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i32 0, i32 0), %T_alfa* %t72
    ; line 291
    %t73 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t74 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t73, i32 0, i32 36
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i32 0, i32 0), %T_alfa* %t74
    ; line 291
    %t75 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t76 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t75, i32 0, i32 37
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.96, i32 0, i32 0), %T_alfa* %t76
    ; line 292
    %t77 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t78 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t77, i32 0, i32 38
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0), %T_alfa* %t78
    ; line 292
    %t79 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t80 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t79, i32 0, i32 39
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i32 0, i32 0), %T_alfa* %t80
    ; line 293
    %t81 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t82 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t81, i32 0, i32 40
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %T_alfa* %t82
    ; line 293
    %t83 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t84 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t83, i32 0, i32 41
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %T_alfa* %t84
    ; line 294
    %t85 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t86 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t85, i32 0, i32 42
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), %T_alfa* %t86
    ; line 294
    %t87 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t88 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t87, i32 0, i32 43
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), %T_alfa* %t88
    ; line 295
    %t89 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t90 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t89, i32 0, i32 44
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), %T_alfa* %t90
    ; line 295
    %t91 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t92 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t91, i32 0, i32 45
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), %T_alfa* %t92
    ; line 296
    %t93 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t94 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t93, i32 0, i32 46
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i32 0, i32 0), %T_alfa* %t94
    ; line 296
    %t95 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t96 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t95, i32 0, i32 47
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0), %T_alfa* %t96
    ; line 297
    %t97 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t98 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t97, i32 0, i32 48
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %T_alfa* %t98
    ; line 297
    %t99 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t100 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t99, i32 0, i32 49
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i32 0, i32 0), %T_alfa* %t100
    ; line 298
    %t101 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t102 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t101, i32 0, i32 50
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.104, i32 0, i32 0), %T_alfa* %t102
    ; line 298
    %t103 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t104 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t103, i32 0, i32 51
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), %T_alfa* %t104
    ; line 299
    %t105 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t106 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t105, i32 0, i32 52
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), %T_alfa* %t106
    ; line 299
    %t107 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t108 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t107, i32 0, i32 53
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), %T_alfa* %t108
    ; line 300
    %t109 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t110 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t109, i32 0, i32 54
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), %T_alfa* %t110
    ; line 300
    %t111 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t112 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t111, i32 0, i32 55
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0), %T_alfa* %t112
    ; line 301
    %t113 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t114 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t113, i32 0, i32 56
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %T_alfa* %t114
    ; line 301
    %t115 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t116 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t115, i32 0, i32 57
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), %T_alfa* %t116
    ; line 302
    %t117 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t118 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t117, i32 0, i32 58
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0), %T_alfa* %t118
    ; line 303
    %t119 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 0
    store i32 0, i32* %t119
    ; line 303
    %t120 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t120)
    ; line 303
    %t121 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t121, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.108, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t121)
    ; line 304

    ; epilogue
    ret void
}


; line 310
;================================================================================
; scope: nextch (level : 2)

; activation record
%Frame_nextch = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_nextch()
{
    ; allocate frame
    %.frame = alloca %Frame_nextch, align 8

    ; body
    ; line 311
    %t2 = load i32, i32* @cc
    %t3 = load i32, i32* @ll
    %t1 = icmp eq i32 %t2, %t3
    br i1 %t1, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 312
    br i1 %.dummy.intrin, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 313
    %t4 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t4)
    ; line 314
    %t5 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.109, i32 0, i32 0), i32 19)
    call void @_WriteLn(i8* %t5)
    ; line 315
    call void @P_errormsg()
    ; line 315
    br label %L_endif_2
L_endif_2:
    ; line 317
    %t7 = load i32, i32* @errpos
    %t6 = icmp ne i32 %t7, 0
    br i1 %t6, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 318
    %t8 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t8)
    ; line 318
    store i32 0, i32* @errpos
    br label %L_endif_3
L_endif_3:
    ; line 320
    %t9 = load %T_text, %T_text* @output
    %t10 = load i32, i32* @lc
    call void @_WriteInteger(i8* %t9, i32 5, i32 0, i32 %t10)
    call void @_WriteString(i8* %t9, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 2)
    ; line 321
    store i32 0, i32* @ll
    ; line 321
    store i32 0, i32* @cc
    ; line 322
    ; line 325
    %t11 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t11)
    ; line 325
    %t13 = load i32, i32* @ll
    %t12 = add i32 %t13, 1
    store i32 %t12, i32* @ll
    ; line 325
    %t14 = load i32, i32* @ll
    %t15 = getelementptr inbounds %T_array_14, %T_array_14* @line, i32 0, i32 %t14
    store i8 32, i8* %t15
    ; line 325
    ; nop
    br label %L_endif_1
L_endif_1:
    ; line 327
    %t17 = load i32, i32* @cc
    %t16 = add i32 %t17, 1
    store i32 %t16, i32* @cc
    ; line 327
    %t18 = load i32, i32* @cc
    %t19 = getelementptr inbounds %T_array_14, %T_array_14* @line, i32 0, i32 %t18
    %t20 = load i8, i8* %t19
    store i8 %t20, i8* @ch
    ; nop

    ; epilogue
    ret void
}


; line 330
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
    ; line 331
    %t3 = load i32, i32* @errpos
    %t2 = icmp eq i32 %t3, 0
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 331
    %t4 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t4, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.111, i32 0, i32 0), i32 5)
    br label %L_endif_1
L_endif_1:
    ; line 332
    %t6 = load i32, i32* @cc
    %t7 = load i32, i32* @errpos
    %t5 = icmp sgt i32 %t6, %t7
    br i1 %t5, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 333
    %t8 = load %T_text, %T_text* @output
    %t10 = load i32, i32* @cc
    %t11 = load i32, i32* @errpos
    %t9 = sub i32 %t10, %t11
    call void @_WriteChar(i8* %t8, i32 %t9, i32 0, i8 32)
    call void @_WriteChar(i8* %t8, i32 0, i32 0, i8 94)
    %t13 = getelementptr inbounds %Frame_error, %Frame_error* %.frame, i32 0, i32 0
    %t12 = load i32, i32* %t13
    call void @_WriteInteger(i8* %t8, i32 2, i32 0, i32 %t12)
    ; line 334
    %t15 = load i32, i32* @cc
    %t14 = add i32 %t15, 3
    store i32 %t14, i32* @errpos
    ; line 334
    store %T_set_11 %.dummy_set, %T_set_11* @errs
    br label %L_endif_2
L_endif_2:

    ; epilogue
    ret void
}


; line 338
;================================================================================
; scope: fatal (level : 2)

; types
%T_fatal_array_22 = type [7 x %T_alfa]

; activation record
%Frame_fatal = type
{
    ; parameters
    i32,    ; 0: n

    ; variables
    %T_fatal_array_22,    ; 1: msg

    ; dummy
    i8*
};

; procedure body
define void @P_fatal(i32 %n)
{
    ; allocate frame
    %.frame = alloca %Frame_fatal, align 8
    %t1 = getelementptr inbounds %Frame_fatal, %Frame_fatal* %.frame, i32 0, i32 0
    store i32 %n, i32* %t1

    ; body
    ; line 340
    %t2 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2)
    ; line 340
    call void @P_errormsg()
    ; line 341
    %t3 = getelementptr inbounds %Frame_fatal, %Frame_fatal* %.frame, i32 0, i32 1
    %t4 = getelementptr inbounds %T_fatal_array_22, %T_fatal_array_22* %t3, i32 0, i32 1
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), %T_alfa* %t4
    ; line 341
    %t5 = getelementptr inbounds %Frame_fatal, %Frame_fatal* %.frame, i32 0, i32 1
    %t6 = getelementptr inbounds %T_fatal_array_22, %T_fatal_array_22* %t5, i32 0, i32 2
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.112, i32 0, i32 0), %T_alfa* %t6
    ; line 342
    %t7 = getelementptr inbounds %Frame_fatal, %Frame_fatal* %.frame, i32 0, i32 1
    %t8 = getelementptr inbounds %T_fatal_array_22, %T_fatal_array_22* %t7, i32 0, i32 3
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.113, i32 0, i32 0), %T_alfa* %t8
    ; line 342
    %t9 = getelementptr inbounds %Frame_fatal, %Frame_fatal* %.frame, i32 0, i32 1
    %t10 = getelementptr inbounds %T_fatal_array_22, %T_fatal_array_22* %t9, i32 0, i32 4
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.114, i32 0, i32 0), %T_alfa* %t10
    ; line 343
    %t11 = getelementptr inbounds %Frame_fatal, %Frame_fatal* %.frame, i32 0, i32 1
    %t12 = getelementptr inbounds %T_fatal_array_22, %T_fatal_array_22* %t11, i32 0, i32 5
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.115, i32 0, i32 0), %T_alfa* %t12
    ; line 343
    %t13 = getelementptr inbounds %Frame_fatal, %Frame_fatal* %.frame, i32 0, i32 1
    %t14 = getelementptr inbounds %T_fatal_array_22, %T_fatal_array_22* %t13, i32 0, i32 6
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.116, i32 0, i32 0), %T_alfa* %t14
    ; line 344
    %t15 = getelementptr inbounds %Frame_fatal, %Frame_fatal* %.frame, i32 0, i32 1
    %t16 = getelementptr inbounds %T_fatal_array_22, %T_fatal_array_22* %t15, i32 0, i32 7
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.117, i32 0, i32 0), %T_alfa* %t16
    ; line 345
    %t17 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t17, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.118, i32 0, i32 0), i32 20)
    %t18 = getelementptr inbounds %Frame_fatal, %Frame_fatal* %.frame, i32 0, i32 1
    %t20 = getelementptr inbounds %Frame_fatal, %Frame_fatal* %.frame, i32 0, i32 0
    %t19 = load i32, i32* %t20
    %t21 = getelementptr inbounds %T_fatal_array_22, %T_fatal_array_22* %t18, i32 0, i32 %t19
    call void @_WriteString(i8* %t17, i32 0, i32 0, i8* getelementptr inbounds (%T_alfa, %T_alfa* %t21, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t17, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.119, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t17)
    ; line 346

    ; epilogue
    ret void
}


; line 349
;================================================================================
; scope: insymbol (level : 2)

; activation record
%Frame_insymbol = type
{
    ; variables
    i32,    ; 0: e
    i32,    ; 1: i
    i32,    ; 2: j
    i32,    ; 3: k

    ; dummy
    i8*
};

; procedure body
define void @P_insymbol()
{
    ; allocate frame
    %.frame = alloca %Frame_insymbol, align 8

    ; body
    ; line 380
    br label %L_1
L_1:
    ; line 381
    br i1 true, label %L_then_1, label %L_else_1
L_then_1:
    ; line 382
    %t2 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %.frame, i32 0, i32 3
    store i32 0, i32* %t2
    ; line 382
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), %T_alfa* @id
    ; line 383
    ; line 388
    %t3 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %.frame, i32 0, i32 1
    store i32 1, i32* %t3
    ; line 388
    %t4 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %.frame, i32 0, i32 2
    store i32 27, i32* %t4
    ; line 389
    ; line 393
    %t8 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %.frame, i32 0, i32 1
    %t7 = load i32, i32* %t8
    %t6 = sub i32 %t7, 1
    %t10 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %.frame, i32 0, i32 2
    %t9 = load i32, i32* %t10
    %t5 = icmp sgt i32 %t6, %t9
    br i1 %t5, label %L_then_2, label %L_else_2
L_then_2:
    ; line 393
    %t12 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %.frame, i32 0, i32 3
    %t11 = load i32, i32* %t12
    %t13 = getelementptr inbounds %T_array_13, %T_array_13* @ksy, i32 0, i32 %t11
    %t14 = load i32, i32* %t13
    store i32 %t14, i32* @sy
    br label %L_endif_2
L_else_2:
    ; line 393
    store i32 36, i32* @sy
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_else_1:
    ; line 395
    br i1 true, label %L_then_3, label %L_else_3
L_then_3:
    ; line 396
    %t16 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %.frame, i32 0, i32 3
    store i32 0, i32* %t16
    ; line 396
    store i32 0, i32* @inum
    ; line 396
    store i32 0, i32* @sy
    ; line 397
    ; line 400
    br label %L_OR_expr_4
L_OR_expr_4:
    %t20 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %.frame, i32 0, i32 3
    %t19 = load i32, i32* %t20
    %t18 = icmp sgt i32 %t19, 15
    br i1 %t18, label %L_OR_shortcut_4, label %L_OR_eval_4
L_OR_eval_4:
    %t22 = load i32, i32* @inum
    %t21 = icmp sgt i32 %t22, 2147483647
    br label %L_OR_shortcut_4
L_OR_shortcut_4:
    %t17 = phi [%t21, %L_OR_eval_4], [true, %L_OR_expr_4]
    br i1 %t17, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 401
    call void @P_error(i32 21)
    ; line 401
    store i32 0, i32* @inum
    ; line 401
    %t23 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %.frame, i32 0, i32 3
    store i32 0, i32* %t23
    br label %L_endif_5
L_endif_5:
    ; line 403
    %t25 = load i8, i8* @ch
    %t24 = icmp eq i32 %t25, 46
    br i1 %t24, label %L_then_6, label %L_else_6
L_then_6:
    ; line 404
    call void @P_nextch()
    ; line 405
    %t27 = load i8, i8* @ch
    %t26 = icmp eq i32 %t27, 46
    br i1 %t26, label %L_then_7, label %L_else_7
L_then_7:
    ; line 405
    store i8 58, i8* @ch
    br label %L_endif_7
L_else_7:
    ; line 406
    store i32 1, i32* @sy
    ; line 406
    %t28 = load i32, i32* @inum
    %t29 = sitofp i32 %t28 to double
    store double %t29, double* @rnum
    ; line 406
    %t30 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %.frame, i32 0, i32 0
    store i32 0, i32* %t30
    ; line 407
    ; line 411
    %t32 = load i8, i8* @ch
    %t31 = icmp eq i32 %t32, 101
    br i1 %t31, label %L_then_8, label %L_endif_8
L_then_8:
    ; line 411
    call void @P_insymbol_readscale(%Frame_insymbol* %.frame)
    br label %L_endif_8
L_endif_8:
    ; line 412
    %t35 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %.frame, i32 0, i32 0
    %t34 = load i32, i32* %t35
    %t33 = icmp ne i32 %t34, 0
    br i1 %t33, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 412
    call void @P_insymbol_adjustscale(%Frame_insymbol* %.frame)
    br label %L_endif_9
L_endif_9:
    br label %L_endif_7
L_endif_7:
    br label %L_endif_6
L_else_6:
    ; line 415
    %t37 = load i8, i8* @ch
    %t36 = icmp eq i32 %t37, 101
    br i1 %t36, label %L_then_10, label %L_endif_10
L_then_10:
    ; line 416
    store i32 1, i32* @sy
    ; line 416
    %t38 = load i32, i32* @inum
    %t39 = sitofp i32 %t38 to double
    store double %t39, double* @rnum
    ; line 416
    %t40 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %.frame, i32 0, i32 0
    store i32 0, i32* %t40
    ; line 417
    call void @P_insymbol_readscale(%Frame_insymbol* %.frame)
    ; line 417
    %t43 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %.frame, i32 0, i32 0
    %t42 = load i32, i32* %t43
    %t41 = icmp ne i32 %t42, 0
    br i1 %t41, label %L_then_11, label %L_endif_11
L_then_11:
    ; line 417
    call void @P_insymbol_adjustscale(%Frame_insymbol* %.frame)
    br label %L_endif_11
L_endif_11:
    br label %L_endif_10
L_endif_10:
    br label %L_endif_6
L_endif_6:
    ; nop
    br label %L_endif_3
L_else_3:
    ; line 420
    br label %L_endif_3
L_endif_3:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 353
;================================================================================
; scope: insymbol_readscale (level : 3)

; activation record
%Frame_insymbol_readscale = type
{
    ; variables
    i32,    ; 0: s
    i32,    ; 1: sign

    ; slink
    %Frame_insymbol*    ; 2
};

; procedure body
define void @P_insymbol_readscale(%Frame_insymbol* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_insymbol_readscale, align 8
    %t1 = getelementptr inbounds %Frame_insymbol_readscale, %Frame_insymbol_readscale* %.frame, i32 0, i32 2
    store %Frame_insymbol* %.slink, %Frame_insymbol** %t1

    ; body
    ; line 355
    call void @P_nextch()
    ; line 355
    %t2 = getelementptr inbounds %Frame_insymbol_readscale, %Frame_insymbol_readscale* %.frame, i32 0, i32 1
    store i32 1, i32* %t2
    ; line 355
    %t3 = getelementptr inbounds %Frame_insymbol_readscale, %Frame_insymbol_readscale* %.frame, i32 0, i32 0
    store i32 0, i32* %t3
    ; line 356
    %t5 = load i8, i8* @ch
    %t4 = icmp eq i32 %t5, 43
    br i1 %t4, label %L_then_1, label %L_else_1
L_then_1:
    ; line 356
    call void @P_nextch()
    br label %L_endif_1
L_else_1:
    ; line 357
    %t7 = load i8, i8* @ch
    %t6 = icmp eq i32 %t7, 45
    br i1 %t6, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 357
    call void @P_nextch()
    ; line 357
    %t8 = getelementptr inbounds %Frame_insymbol_readscale, %Frame_insymbol_readscale* %.frame, i32 0, i32 1
    %t9 = sub i32 0, 1
    store i32 %t9, i32* %t8
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 358
    ; line 361
    %t11 = getelementptr inbounds %Frame_insymbol_readscale, %Frame_insymbol_readscale* %.frame, i32 0, i32 2
    %t12 = load %Frame_insymbol*, %Frame_insymbol** %t11
    %t10 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %t12, i32 0, i32 0
    %t16 = getelementptr inbounds %Frame_insymbol_readscale, %Frame_insymbol_readscale* %.frame, i32 0, i32 0
    %t15 = load i32, i32* %t16
    %t18 = getelementptr inbounds %Frame_insymbol_readscale, %Frame_insymbol_readscale* %.frame, i32 0, i32 1
    %t17 = load i32, i32* %t18
    %t14 = mul i32 %t15, %t17
    %t21 = getelementptr inbounds %Frame_insymbol_readscale, %Frame_insymbol_readscale* %.frame, i32 0, i32 2
    %t22 = load %Frame_insymbol*, %Frame_insymbol** %t21
    %t20 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %t22, i32 0, i32 0
    %t19 = load i32, i32* %t20
    %t13 = add i32 %t14, %t19
    store i32 %t13, i32* %t10

    ; epilogue
    ret void
}


; line 364
;================================================================================
; scope: insymbol_adjustscale (level : 3)

; activation record
%Frame_insymbol_adjustscale = type
{
    ; variables
    double,    ; 0: d
    i32,    ; 1: s
    double,    ; 2: t

    ; slink
    %Frame_insymbol*    ; 3
};

; procedure body
define void @P_insymbol_adjustscale(%Frame_insymbol* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_insymbol_adjustscale, align 8
    %t1 = getelementptr inbounds %Frame_insymbol_adjustscale, %Frame_insymbol_adjustscale* %.frame, i32 0, i32 3
    store %Frame_insymbol* %.slink, %Frame_insymbol** %t1

    ; body
    ; line 366
    %t6 = getelementptr inbounds %Frame_insymbol_adjustscale, %Frame_insymbol_adjustscale* %.frame, i32 0, i32 3
    %t7 = load %Frame_insymbol*, %Frame_insymbol** %t6
    %t5 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %t7, i32 0, i32 3
    %t4 = load i32, i32* %t5
    %t10 = getelementptr inbounds %Frame_insymbol_adjustscale, %Frame_insymbol_adjustscale* %.frame, i32 0, i32 3
    %t11 = load %Frame_insymbol*, %Frame_insymbol** %t10
    %t9 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %t11, i32 0, i32 0
    %t8 = load i32, i32* %t9
    %t3 = add i32 %t4, %t8
    %t2 = icmp sgt i32 %t3, 308
    br i1 %t2, label %L_then_1, label %L_else_1
L_then_1:
    ; line 366
    call void @P_error(i32 21)
    br label %L_endif_1
L_else_1:
    ; line 367
    %t16 = getelementptr inbounds %Frame_insymbol_adjustscale, %Frame_insymbol_adjustscale* %.frame, i32 0, i32 3
    %t17 = load %Frame_insymbol*, %Frame_insymbol** %t16
    %t15 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %t17, i32 0, i32 3
    %t14 = load i32, i32* %t15
    %t20 = getelementptr inbounds %Frame_insymbol_adjustscale, %Frame_insymbol_adjustscale* %.frame, i32 0, i32 3
    %t21 = load %Frame_insymbol*, %Frame_insymbol** %t20
    %t19 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %t21, i32 0, i32 0
    %t18 = load i32, i32* %t19
    %t13 = add i32 %t14, %t18
    %t12 = icmp slt i32 %t13, -308
    br i1 %t12, label %L_then_2, label %L_else_2
L_then_2:
    ; line 367
    %t22 = sitofp i32 0 to double
    store double %t22, double* @rnum
    br label %L_endif_2
L_else_2:
    ; line 368
    %t23 = getelementptr inbounds %Frame_insymbol_adjustscale, %Frame_insymbol_adjustscale* %.frame, i32 0, i32 1
    store i32 %.dummy.intrin, i32* %t23
    ; line 368
    %t24 = getelementptr inbounds %Frame_insymbol_adjustscale, %Frame_insymbol_adjustscale* %.frame, i32 0, i32 2
    store double 1.00000, double* %t24
    ; line 368
    %t25 = getelementptr inbounds %Frame_insymbol_adjustscale, %Frame_insymbol_adjustscale* %.frame, i32 0, i32 0
    store double 10.0000, double* %t25
    ; line 369
    ; line 375
    %t29 = getelementptr inbounds %Frame_insymbol_adjustscale, %Frame_insymbol_adjustscale* %.frame, i32 0, i32 3
    %t30 = load %Frame_insymbol*, %Frame_insymbol** %t29
    %t28 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %t30, i32 0, i32 0
    %t27 = load i32, i32* %t28
    %t26 = icmp sge i32 %t27, 0
    br i1 %t26, label %L_then_3, label %L_else_3
L_then_3:
    ; line 375
    %t32 = load double, double* @rnum
    %t34 = getelementptr inbounds %Frame_insymbol_adjustscale, %Frame_insymbol_adjustscale* %.frame, i32 0, i32 2
    %t33 = load double, double* %t34
    %t31 = fmul double %t32, %t33
    store double %t31, double* @rnum
    br label %L_endif_3
L_else_3:
    ; line 375
    %t36 = load double, double* @rnum
    %t38 = getelementptr inbounds %Frame_insymbol_adjustscale, %Frame_insymbol_adjustscale* %.frame, i32 0, i32 2
    %t37 = load double, double* %t38
    %t35 = fdiv double %t36, %t37
    store double %t35, double* @rnum
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 477
;================================================================================
; scope: enter (level : 2)

; activation record
%Frame_enter = type
{
    ; parameters
    %T_alfa,    ; 0: x0
    i32,    ; 1: x1
    i32,    ; 2: x2
    i32,    ; 3: x3

    ; dummy
    i8*
};

; procedure body
define void @P_enter(%T_alfa %x0, i32 %x1, i32 %x2, i32 %x3)
{
    ; allocate frame
    %.frame = alloca %Frame_enter, align 8
    %t1 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 0
    store %T_alfa %x0, %T_alfa* %t1
    %t2 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 1
    store i32 %x1, i32* %t2
    %t3 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 2
    store i32 %x2, i32* %t3
    %t4 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 3
    store i32 %x3, i32* %t4

    ; body
    ; line 479
    %t6 = load i32, i32* @t
    %t5 = add i32 %t6, 1
    store i32 %t5, i32* @t
    ; line 481
    %t7 = load i32, i32* @t
    %t8 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t7
    %t10 = getelementptr inbounds %T_record_19, %T_record_19* %t8, i32 0, i32 0
    %t9 = bitcast i8* %t10 to %T_alfa*
    %t12 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 0
    %t11 = load %T_alfa, %T_alfa* %t12
    store %T_alfa %t11, %T_alfa* %t9
    ; line 481
    %t13 = load i32, i32* @t
    %t14 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t13
    %t16 = getelementptr inbounds %T_record_19, %T_record_19* %t14, i32 0, i32 12
    %t15 = bitcast i8* %t16 to i32*
    %t18 = load i32, i32* @t
    %t17 = sub i32 %t18, 1
    store i32 %t17, i32* %t15
    ; line 481
    %t19 = load i32, i32* @t
    %t20 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t19
    %t22 = getelementptr inbounds %T_record_19, %T_record_19* %t20, i32 0, i32 16
    %t21 = bitcast i8* %t22 to i32*
    %t24 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 1
    %t23 = load i32, i32* %t24
    store i32 %t23, i32* %t21
    ; line 482
    %t25 = load i32, i32* @t
    %t26 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t25
    %t28 = getelementptr inbounds %T_record_19, %T_record_19* %t26, i32 0, i32 20
    %t27 = bitcast i8* %t28 to i32*
    %t30 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 2
    %t29 = load i32, i32* %t30
    store i32 %t29, i32* %t27
    ; line 482
    %t31 = load i32, i32* @t
    %t32 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t31
    %t34 = getelementptr inbounds %T_record_19, %T_record_19* %t32, i32 0, i32 24
    %t33 = bitcast i8* %t34 to i32*
    store i32 0, i32* %t33
    ; line 482
    %t35 = load i32, i32* @t
    %t36 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t35
    %t38 = getelementptr inbounds %T_record_19, %T_record_19* %t36, i32 0, i32 28
    %t37 = bitcast i8* %t38 to i1*
    store i1 1, i1* %t37
    ; line 483
    %t39 = load i32, i32* @t
    %t40 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t39
    %t42 = getelementptr inbounds %T_record_19, %T_record_19* %t40, i32 0, i32 32
    %t41 = bitcast i8* %t42 to i32*
    store i32 0, i32* %t41
    ; line 483
    %t43 = load i32, i32* @t
    %t44 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t43
    %t46 = getelementptr inbounds %T_record_19, %T_record_19* %t44, i32 0, i32 36
    %t45 = bitcast i8* %t46 to i32*
    %t48 = getelementptr inbounds %Frame_enter, %Frame_enter* %.frame, i32 0, i32 3
    %t47 = load i32, i32* %t48
    store i32 %t47, i32* %t45

    ; epilogue
    ret void
}


; line 487
;================================================================================
; scope: enterarray (level : 2)

; activation record
%Frame_enterarray = type
{
    ; parameters
    i32,    ; 0: h
    i32,    ; 1: l
    i32,    ; 2: tp

    ; dummy
    i8*
};

; procedure body
define void @P_enterarray(i32 %tp, i32 %l, i32 %h)
{
    ; allocate frame
    %.frame = alloca %Frame_enterarray, align 8
    %t1 = getelementptr inbounds %Frame_enterarray, %Frame_enterarray* %.frame, i32 0, i32 0
    store i32 %h, i32* %t1
    %t2 = getelementptr inbounds %Frame_enterarray, %Frame_enterarray* %.frame, i32 0, i32 1
    store i32 %l, i32* %t2
    %t3 = getelementptr inbounds %Frame_enterarray, %Frame_enterarray* %.frame, i32 0, i32 2
    store i32 %tp, i32* %t3

    ; body
    ; line 488
    %t6 = getelementptr inbounds %Frame_enterarray, %Frame_enterarray* %.frame, i32 0, i32 1
    %t5 = load i32, i32* %t6
    %t8 = getelementptr inbounds %Frame_enterarray, %Frame_enterarray* %.frame, i32 0, i32 0
    %t7 = load i32, i32* %t8
    %t4 = icmp sgt i32 %t5, %t7
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 488
    call void @P_error(i32 27)
    br label %L_endif_1
L_endif_1:
    ; line 489
    br label %L_OR_expr_2
L_OR_expr_2:
    %t10 = icmp sgt i32 %.dummy.intrin, 131071
    br i1 %t10, label %L_OR_shortcut_2, label %L_OR_eval_2
L_OR_eval_2:
    %t11 = icmp sgt i32 %.dummy.intrin, 131071
    br label %L_OR_shortcut_2
L_OR_shortcut_2:
    %t9 = phi [%t11, %L_OR_eval_2], [true, %L_OR_expr_2]
    br i1 %t9, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 490
    call void @P_error(i32 27)
    ; line 490
    %t12 = getelementptr inbounds %Frame_enterarray, %Frame_enterarray* %.frame, i32 0, i32 1
    store i32 0, i32* %t12
    ; line 490
    %t13 = getelementptr inbounds %Frame_enterarray, %Frame_enterarray* %.frame, i32 0, i32 0
    store i32 0, i32* %t13
    ; nop
    br label %L_endif_3
L_endif_3:
    ; line 492
    %t15 = load i32, i32* @a
    %t14 = icmp eq i32 %t15, 100
    br i1 %t14, label %L_then_4, label %L_else_4
L_then_4:
    ; line 492
    call void @P_fatal(i32 4)
    br label %L_endif_4
L_else_4:
    ; line 493
    %t17 = load i32, i32* @a
    %t16 = add i32 %t17, 1
    store i32 %t16, i32* @a
    ; line 495
    %t18 = load i32, i32* @a
    %t19 = getelementptr inbounds %T_array_2, %T_array_2* @atab, i32 0, i32 %t18
    %t21 = getelementptr inbounds %T_record_3, %T_record_3* %t19, i32 0, i32 0
    %t20 = bitcast i8* %t21 to i32*
    %t23 = getelementptr inbounds %Frame_enterarray, %Frame_enterarray* %.frame, i32 0, i32 2
    %t22 = load i32, i32* %t23
    store i32 %t22, i32* %t20
    ; line 495
    %t24 = load i32, i32* @a
    %t25 = getelementptr inbounds %T_array_2, %T_array_2* @atab, i32 0, i32 %t24
    %t27 = getelementptr inbounds %T_record_3, %T_record_3* %t25, i32 0, i32 12
    %t26 = bitcast i8* %t27 to i32*
    %t29 = getelementptr inbounds %Frame_enterarray, %Frame_enterarray* %.frame, i32 0, i32 1
    %t28 = load i32, i32* %t29
    store i32 %t28, i32* %t26
    ; line 495
    %t30 = load i32, i32* @a
    %t31 = getelementptr inbounds %T_array_2, %T_array_2* @atab, i32 0, i32 %t30
    %t33 = getelementptr inbounds %T_record_3, %T_record_3* %t31, i32 0, i32 16
    %t32 = bitcast i8* %t33 to i32*
    %t35 = getelementptr inbounds %Frame_enterarray, %Frame_enterarray* %.frame, i32 0, i32 0
    %t34 = load i32, i32* %t35
    store i32 %t34, i32* %t32
    br label %L_endif_4
L_endif_4:

    ; epilogue
    ret void
}


; line 500
;================================================================================
; scope: enterblock (level : 2)

; activation record
%Frame_enterblock = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_enterblock()
{
    ; allocate frame
    %.frame = alloca %Frame_enterblock, align 8

    ; body
    ; line 501
    %t2 = load i32, i32* @b
    %t1 = icmp eq i32 %t2, 100
    br i1 %t1, label %L_then_1, label %L_else_1
L_then_1:
    ; line 501
    call void @P_fatal(i32 2)
    br label %L_endif_1
L_else_1:
    ; line 502
    %t4 = load i32, i32* @b
    %t3 = add i32 %t4, 1
    store i32 %t3, i32* @b
    ; line 502
    %t5 = load i32, i32* @b
    %t6 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 %t5
    %t8 = getelementptr inbounds %T_record_5, %T_record_5* %t6, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i32*
    store i32 0, i32* %t7
    ; line 502
    %t9 = load i32, i32* @b
    %t10 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 %t9
    %t12 = getelementptr inbounds %T_record_5, %T_record_5* %t10, i32 0, i32 4
    %t11 = bitcast i8* %t12 to i32*
    store i32 0, i32* %t11
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 506
;================================================================================
; scope: enterreal (level : 2)

; activation record
%Frame_enterreal = type
{
    ; parameters
    double,    ; 0: x

    ; dummy
    i8*
};

; procedure body
define void @P_enterreal(double %x)
{
    ; allocate frame
    %.frame = alloca %Frame_enterreal, align 8
    %t1 = getelementptr inbounds %Frame_enterreal, %Frame_enterreal* %.frame, i32 0, i32 0
    store double %x, double* %t1

    ; body
    ; line 507
    %t3 = load i32, i32* @c2
    %t4 = sub i32 100, 1
    %t2 = icmp eq i32 %t3, %t4
    br i1 %t2, label %L_then_1, label %L_else_1
L_then_1:
    ; line 507
    call void @P_fatal(i32 3)
    br label %L_endif_1
L_else_1:
    ; line 508
    %t6 = load i32, i32* @c2
    %t5 = add i32 %t6, 1
    %t7 = getelementptr inbounds %T_array_15, %T_array_15* @rconst, i32 0, i32 %t5
    %t9 = getelementptr inbounds %Frame_enterreal, %Frame_enterreal* %.frame, i32 0, i32 0
    %t8 = load double, double* %t9
    store double %t8, double* %t7
    ; line 508
    store i32 1, i32* @c1
    ; line 509
    ; line 510
    %t11 = load i32, i32* @c1
    %t12 = load i32, i32* @c2
    %t10 = icmp sgt i32 %t11, %t12
    br i1 %t10, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 510
    %t13 = load i32, i32* @c1
    store i32 %t13, i32* @c2
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 514
;================================================================================
; scope: emit (level : 2)

; activation record
%Frame_emit = type
{
    ; parameters
    i32,    ; 0: fct

    ; dummy
    i8*
};

; procedure body
define void @P_emit(i32 %fct)
{
    ; allocate frame
    %.frame = alloca %Frame_emit, align 8
    %t1 = getelementptr inbounds %Frame_emit, %Frame_emit* %.frame, i32 0, i32 0
    store i32 %fct, i32* %t1

    ; body
    ; line 515
    %t3 = load i32, i32* @lc
    %t2 = icmp eq i32 %t3, 10000
    br i1 %t2, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 515
    call void @P_fatal(i32 6)
    br label %L_endif_1
L_endif_1:
    ; line 516
    %t4 = load i32, i32* @lc
    %t5 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t4
    %t7 = getelementptr inbounds %T_order, %T_order* %t5, i32 0, i32 0
    %t6 = bitcast i8* %t7 to i32*
    %t9 = getelementptr inbounds %Frame_emit, %Frame_emit* %.frame, i32 0, i32 0
    %t8 = load i32, i32* %t9
    store i32 %t8, i32* %t6
    ; line 516
    %t11 = load i32, i32* @lc
    %t10 = add i32 %t11, 1
    store i32 %t10, i32* @lc

    ; epilogue
    ret void
}


; line 519
;================================================================================
; scope: emit1 (level : 2)

; activation record
%Frame_emit1 = type
{
    ; parameters
    i32,    ; 0: b
    i32,    ; 1: fct

    ; dummy
    i8*
};

; procedure body
define void @P_emit1(i32 %fct, i32 %b)
{
    ; allocate frame
    %.frame = alloca %Frame_emit1, align 8
    %t1 = getelementptr inbounds %Frame_emit1, %Frame_emit1* %.frame, i32 0, i32 0
    store i32 %b, i32* %t1
    %t2 = getelementptr inbounds %Frame_emit1, %Frame_emit1* %.frame, i32 0, i32 1
    store i32 %fct, i32* %t2

    ; body
    ; line 520
    %t4 = load i32, i32* @lc
    %t3 = icmp eq i32 %t4, 10000
    br i1 %t3, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 520
    call void @P_fatal(i32 6)
    br label %L_endif_1
L_endif_1:
    ; line 522
    %t5 = load i32, i32* @lc
    %t6 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t5
    %t8 = getelementptr inbounds %T_order, %T_order* %t6, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i32*
    %t10 = getelementptr inbounds %Frame_emit1, %Frame_emit1* %.frame, i32 0, i32 1
    %t9 = load i32, i32* %t10
    store i32 %t9, i32* %t7
    ; line 522
    %t11 = load i32, i32* @lc
    %t12 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t11
    %t14 = getelementptr inbounds %T_order, %T_order* %t12, i32 0, i32 8
    %t13 = bitcast i8* %t14 to i32*
    %t16 = getelementptr inbounds %Frame_emit1, %Frame_emit1* %.frame, i32 0, i32 0
    %t15 = load i32, i32* %t16
    store i32 %t15, i32* %t13
    ; line 523
    %t18 = load i32, i32* @lc
    %t17 = add i32 %t18, 1
    store i32 %t17, i32* @lc

    ; epilogue
    ret void
}


; line 526
;================================================================================
; scope: emit2 (level : 2)

; activation record
%Frame_emit2 = type
{
    ; parameters
    i32,    ; 0: a
    i32,    ; 1: b
    i32,    ; 2: fct

    ; dummy
    i8*
};

; procedure body
define void @P_emit2(i32 %fct, i32 %a, i32 %b)
{
    ; allocate frame
    %.frame = alloca %Frame_emit2, align 8
    %t1 = getelementptr inbounds %Frame_emit2, %Frame_emit2* %.frame, i32 0, i32 0
    store i32 %a, i32* %t1
    %t2 = getelementptr inbounds %Frame_emit2, %Frame_emit2* %.frame, i32 0, i32 1
    store i32 %b, i32* %t2
    %t3 = getelementptr inbounds %Frame_emit2, %Frame_emit2* %.frame, i32 0, i32 2
    store i32 %fct, i32* %t3

    ; body
    ; line 527
    %t5 = load i32, i32* @lc
    %t4 = icmp eq i32 %t5, 10000
    br i1 %t4, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 527
    call void @P_fatal(i32 6)
    br label %L_endif_1
L_endif_1:
    ; line 529
    %t6 = load i32, i32* @lc
    %t7 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t6
    %t9 = getelementptr inbounds %T_order, %T_order* %t7, i32 0, i32 0
    %t8 = bitcast i8* %t9 to i32*
    %t11 = getelementptr inbounds %Frame_emit2, %Frame_emit2* %.frame, i32 0, i32 2
    %t10 = load i32, i32* %t11
    store i32 %t10, i32* %t8
    ; line 529
    %t12 = load i32, i32* @lc
    %t13 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t12
    %t15 = getelementptr inbounds %T_order, %T_order* %t13, i32 0, i32 4
    %t14 = bitcast i8* %t15 to i32*
    %t17 = getelementptr inbounds %Frame_emit2, %Frame_emit2* %.frame, i32 0, i32 0
    %t16 = load i32, i32* %t17
    store i32 %t16, i32* %t14
    ; line 529
    %t18 = load i32, i32* @lc
    %t19 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t18
    %t21 = getelementptr inbounds %T_order, %T_order* %t19, i32 0, i32 8
    %t20 = bitcast i8* %t21 to i32*
    %t23 = getelementptr inbounds %Frame_emit2, %Frame_emit2* %.frame, i32 0, i32 1
    %t22 = load i32, i32* %t23
    store i32 %t22, i32* %t20
    ; line 530
    %t25 = load i32, i32* @lc
    %t24 = add i32 %t25, 1
    store i32 %t24, i32* @lc

    ; epilogue
    ret void
}


; line 533
;================================================================================
; scope: printtables (level : 2)

; activation record
%Frame_printtables = type
{
    ; variables
    i32,    ; 0: i
    %T_order,    ; 1: o

    ; dummy
    i8*
};

; procedure body
define void @P_printtables()
{
    ; allocate frame
    %.frame = alloca %Frame_printtables, align 8

    ; body
    ; line 537
    %t1 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.120, i32 0, i32 0), i32 50)
    call void @_WriteLn(i8* %t1)
    ; line 538
    %t2 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2)
    ; line 539
    ; line 544
    %t3 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.121, i32 0, i32 0), i32 29)
    call void @_WriteLn(i8* %t3)
    ; line 545
    %t4 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t4)
    ; line 546
    ; line 550
    %t5 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.122, i32 0, i32 0), i32 44)
    call void @_WriteLn(i8* %t5)
    ; line 551
    %t6 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t6)
    ; line 552
    ; line 557
    %t7 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t7, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.123, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t7)
    ; line 558
    %t8 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t8)
    ; line 559
    ; line 571
    %t9 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t9)

    ; epilogue
    ret void
}


; line 574
;================================================================================
; scope: block (level : 2)

; types
%T_block_conrec = type [20 x i8]

; activation record
%Frame_block = type
{
    ; parameters
    %T_symset,    ; 0: fsys
    i1,    ; 1: isfun
    i32,    ; 2: level

    ; variables
    i32,    ; 3: dx
    i32,    ; 4: prb
    i32,    ; 5: prt
    i32,    ; 6: x

    ; dummy
    i8*
};

; procedure body
define void @P_block(%T_symset %fsys, i1 %isfun, i32 %level)
{
    ; allocate frame
    %.frame = alloca %Frame_block, align 8
    %t1 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t1
    %t2 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 1
    store i1 %isfun, i1* %t2
    %t3 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 2
    store i32 %level, i32* %t3

    ; body
    ; line 1477
    %t4 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 3
    store i32 5, i32* %t4
    ; line 1477
    %t5 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 5
    %t6 = load i32, i32* @t
    store i32 %t6, i32* %t5
    ; line 1478
    %t9 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 2
    %t8 = load i32, i32* %t9
    %t7 = icmp sgt i32 %t8, 100
    br i1 %t7, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1478
    call void @P_fatal(i32 5)
    br label %L_endif_1
L_endif_1:
    ; line 1479
    %t11 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 0
    %t10 = load %T_symset, %T_symset* %t11
    call void @P_block_test(%Frame_block* %.frame, %T_symset %.dummy_set, %T_symset %t10, i32 7)
    ; line 1480
    call void @P_enterblock()
    ; line 1480
    %t13 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 2
    %t12 = load i32, i32* %t13
    %t14 = getelementptr inbounds %T_array_10, %T_array_10* @display, i32 0, i32 %t12
    %t15 = load i32, i32* @b
    store i32 %t15, i32* %t14
    ; line 1480
    %t16 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 4
    %t17 = load i32, i32* @b
    store i32 %t17, i32* %t16
    ; line 1481
    %t19 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 5
    %t18 = load i32, i32* %t19
    %t20 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t18
    %t22 = getelementptr inbounds %T_record_19, %T_record_19* %t20, i32 0, i32 20
    %t21 = bitcast i8* %t22 to i32*
    store i32 0, i32* %t21
    ; line 1481
    %t24 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 5
    %t23 = load i32, i32* %t24
    %t25 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t23
    %t27 = getelementptr inbounds %T_record_19, %T_record_19* %t25, i32 0, i32 24
    %t26 = bitcast i8* %t27 to i32*
    %t29 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 4
    %t28 = load i32, i32* %t29
    store i32 %t28, i32* %t26
    ; line 1482
    %t31 = load i32, i32* @sy
    %t30 = icmp eq i32 %t31, 19
    br i1 %t30, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1482
    call void @P_block_parameterlist(%Frame_block* %.frame)
    br label %L_endif_2
L_endif_2:
    ; line 1483
    %t33 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 4
    %t32 = load i32, i32* %t33
    %t34 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 %t32
    %t36 = getelementptr inbounds %T_record_5, %T_record_5* %t34, i32 0, i32 4
    %t35 = bitcast i8* %t36 to i32*
    %t37 = load i32, i32* @t
    store i32 %t37, i32* %t35
    ; line 1483
    %t39 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 4
    %t38 = load i32, i32* %t39
    %t40 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 %t38
    %t42 = getelementptr inbounds %T_record_5, %T_record_5* %t40, i32 0, i32 8
    %t41 = bitcast i8* %t42 to i32*
    %t44 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 3
    %t43 = load i32, i32* %t44
    store i32 %t43, i32* %t41
    ; line 1484
    %t46 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 1
    %t45 = load i1, i1* %t46
    br i1 %t45, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 1485
    %t48 = load i32, i32* @sy
    %t47 = icmp eq i32 %t48, 26
    br i1 %t47, label %L_then_4, label %L_else_4
L_then_4:
    ; line 1486
    call void @P_insymbol()
    ; line 1487
    %t50 = load i32, i32* @sy
    %t49 = icmp eq i32 %t50, 36
    br i1 %t49, label %L_then_5, label %L_else_5
L_then_5:
    ; line 1488
    %t51 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 6
    %t52 = load %T_alfa, %T_alfa* @id
    %t53 = call i32 @F_block_loc(%Frame_block* %.frame, %T_alfa %t52)
    store i32 %t53, i32* %t51
    ; line 1488
    call void @P_insymbol()
    ; line 1489
    %t56 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 6
    %t55 = load i32, i32* %t56
    %t54 = icmp ne i32 %t55, 0
    br i1 %t54, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 1490
    %t59 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 6
    %t58 = load i32, i32* %t59
    %t60 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t58
    %t62 = getelementptr inbounds %T_record_19, %T_record_19* %t60, i32 0, i32 16
    %t61 = bitcast i8* %t62 to i32*
    %t63 = load i32, i32* %t61
    %t57 = icmp ne i32 %t63, 2
    br i1 %t57, label %L_then_7, label %L_else_7
L_then_7:
    ; line 1490
    call void @P_error(i32 29)
    br label %L_endif_7
L_else_7:
    ; line 1491
    br i1 true, label %L_then_8, label %L_else_8
L_then_8:
    ; line 1492
    %t66 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 5
    %t65 = load i32, i32* %t66
    %t67 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t65
    %t69 = getelementptr inbounds %T_record_19, %T_record_19* %t67, i32 0, i32 20
    %t68 = bitcast i8* %t69 to i32*
    %t71 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 6
    %t70 = load i32, i32* %t71
    %t72 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t70
    %t74 = getelementptr inbounds %T_record_19, %T_record_19* %t72, i32 0, i32 20
    %t73 = bitcast i8* %t74 to i32*
    %t75 = load i32, i32* %t73
    store i32 %t75, i32* %t68
    br label %L_endif_8
L_else_8:
    ; line 1493
    call void @P_error(i32 15)
    br label %L_endif_8
L_endif_8:
    br label %L_endif_7
L_endif_7:
    br label %L_endif_6
L_endif_6:
    br label %L_endif_5
L_else_5:
    ; line 1494
    call void @P_block_skip(%Frame_block* %.frame, %T_symset %.dummy_set, i32 2)
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_else_4:
    ; line 1495
    call void @P_error(i32 5)
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_endif_3:
    ; line 1496
    %t78 = load i32, i32* @sy
    %t77 = icmp eq i32 %t78, 24
    br i1 %t77, label %L_then_9, label %L_else_9
L_then_9:
    ; line 1496
    call void @P_insymbol()
    br label %L_endif_9
L_else_9:
    ; line 1496
    call void @P_error(i32 14)
    br label %L_endif_9
L_endif_9:
    ; line 1497
    ; line 1505
    %t80 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 5
    %t79 = load i32, i32* %t80
    %t81 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t79
    %t83 = getelementptr inbounds %T_record_19, %T_record_19* %t81, i32 0, i32 36
    %t82 = bitcast i8* %t83 to i32*
    %t84 = load i32, i32* @lc
    store i32 %t84, i32* %t82
    ; line 1506
    call void @P_insymbol()
    ; line 1506
    call void @P_block_statement(%Frame_block* %.frame, %T_symset %.dummy_set)
    ; line 1507
    ; line 1511
    %t87 = load i32, i32* @sy
    %t86 = icmp eq i32 %t87, 43
    br i1 %t86, label %L_then_10, label %L_else_10
L_then_10:
    ; line 1511
    call void @P_insymbol()
    br label %L_endif_10
L_else_10:
    ; line 1511
    call void @P_error(i32 57)
    br label %L_endif_10
L_endif_10:
    ; line 1512
    call void @P_block_test(%Frame_block* %.frame, %T_symset %.dummy_set, %T_symset %.dummy_set, i32 6)

    ; epilogue
    ret void
}


; line 587
;================================================================================
; scope: block_skip (level : 3)

; activation record
%Frame_block_skip = type
{
    ; parameters
    %T_symset,    ; 0: fsys
    i32,    ; 1: n

    ; slink
    %Frame_block*    ; 2
};

; procedure body
define void @P_block_skip(%Frame_block* %.slink, %T_symset %fsys, i32 %n)
{
    ; allocate frame
    %.frame = alloca %Frame_block_skip, align 8
    %t1 = getelementptr inbounds %Frame_block_skip, %Frame_block_skip* %.frame, i32 0, i32 2
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_skip, %Frame_block_skip* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2
    %t3 = getelementptr inbounds %Frame_block_skip, %Frame_block_skip* %.frame, i32 0, i32 1
    store i32 %n, i32* %t3

    ; body
    ; line 588
    %t5 = getelementptr inbounds %Frame_block_skip, %Frame_block_skip* %.frame, i32 0, i32 1
    %t4 = load i32, i32* %t5
    call void @P_error(i32 %t4)
    ; line 589

    ; epilogue
    ret void
}


; line 592
;================================================================================
; scope: block_test (level : 3)

; activation record
%Frame_block_test = type
{
    ; parameters
    i32,    ; 0: n
    %T_symset,    ; 1: s1
    %T_symset,    ; 2: s2

    ; slink
    %Frame_block*    ; 3
};

; procedure body
define void @P_block_test(%Frame_block* %.slink, %T_symset %s1, %T_symset %s2, i32 %n)
{
    ; allocate frame
    %.frame = alloca %Frame_block_test, align 8
    %t1 = getelementptr inbounds %Frame_block_test, %Frame_block_test* %.frame, i32 0, i32 3
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_test, %Frame_block_test* %.frame, i32 0, i32 0
    store i32 %n, i32* %t2
    %t3 = getelementptr inbounds %Frame_block_test, %Frame_block_test* %.frame, i32 0, i32 1
    store %T_symset %s1, %T_symset* %t3
    %t4 = getelementptr inbounds %Frame_block_test, %Frame_block_test* %.frame, i32 0, i32 2
    store %T_symset %s2, %T_symset* %t4

    ; body
    ; line 593
    %t6 = icmp eq i1 0, true
    br i1 %t6, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 594
    %t7 = getelementptr inbounds %Frame_block_test, %Frame_block_test* %.frame, i32 0, i32 3
    %t8 = load %Frame_block*, %Frame_block** %t7
    %t11 = getelementptr inbounds %Frame_block_test, %Frame_block_test* %.frame, i32 0, i32 0
    %t10 = load i32, i32* %t11
    call void @P_block_skip(%Frame_block* %t8, %T_symset true, i32 %t10)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 597
;================================================================================
; scope: block_testsemicolon (level : 3)

; activation record
%Frame_block_testsemicolon = type
{
    ; slink
    %Frame_block*    ; 0
};

; procedure body
define void @P_block_testsemicolon(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_testsemicolon, align 8
    %t1 = getelementptr inbounds %Frame_block_testsemicolon, %Frame_block_testsemicolon* %.frame, i32 0, i32 0
    store %Frame_block* %.slink, %Frame_block** %t1

    ; body
    ; line 599
    %t3 = load i32, i32* @sy
    %t2 = icmp eq i32 %t3, 24
    br i1 %t2, label %L_then_1, label %L_else_1
L_then_1:
    ; line 599
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 600
    call void @P_error(i32 14)
    ; line 601
    br i1 true, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 601
    call void @P_insymbol()
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 603
    %t5 = getelementptr inbounds %Frame_block_testsemicolon, %Frame_block_testsemicolon* %.frame, i32 0, i32 0
    %t6 = load %Frame_block*, %Frame_block** %t5
    %t10 = getelementptr inbounds %Frame_block_testsemicolon, %Frame_block_testsemicolon* %.frame, i32 0, i32 0
    %t11 = load %Frame_block*, %Frame_block** %t10
    %t9 = getelementptr inbounds %Frame_block, %Frame_block* %t11, i32 0, i32 0
    %t8 = load %T_symset, %T_symset* %t9
    call void @P_block_test(%Frame_block* %t6, %T_symset %.dummy_set, %T_symset %t8, i32 6)

    ; epilogue
    ret void
}


; line 606
;================================================================================
; scope: block_enter (level : 3)

; activation record
%Frame_block_enter = type
{
    ; parameters
    %T_alfa,    ; 0: id
    i32,    ; 1: k

    ; variables
    i32,    ; 2: j
    i32,    ; 3: l

    ; slink
    %Frame_block*    ; 4
};

; procedure body
define void @P_block_enter(%Frame_block* %.slink, %T_alfa %id, i32 %k)
{
    ; allocate frame
    %.frame = alloca %Frame_block_enter, align 8
    %t1 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 4
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 0
    store %T_alfa %id, %T_alfa* %t2
    %t3 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 1
    store i32 %k, i32* %t3

    ; body
    ; line 608
    %t5 = load i32, i32* @t
    %t4 = icmp eq i32 %t5, 1000
    br i1 %t4, label %L_then_1, label %L_else_1
L_then_1:
    ; line 608
    call void @P_fatal(i32 1)
    br label %L_endif_1
L_else_1:
    ; line 609
    %t6 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 0
    %t8 = getelementptr inbounds %T_record_19, %T_record_19* %t6, i32 0, i32 0
    %t7 = bitcast i8* %t8 to %T_alfa*
    %t10 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 0
    %t9 = load %T_alfa, %T_alfa* %t10
    store %T_alfa %t9, %T_alfa* %t7
    ; line 610
    %t11 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 2
    %t14 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 4
    %t15 = load %Frame_block*, %Frame_block** %t14
    %t13 = getelementptr inbounds %Frame_block, %Frame_block* %t15, i32 0, i32 2
    %t12 = load i32, i32* %t13
    %t16 = getelementptr inbounds %T_array_10, %T_array_10* @display, i32 0, i32 %t12
    %t17 = load i32, i32* %t16
    %t18 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 %t17
    %t20 = getelementptr inbounds %T_record_5, %T_record_5* %t18, i32 0, i32 0
    %t19 = bitcast i8* %t20 to i32*
    %t21 = load i32, i32* %t19
    store i32 %t21, i32* %t11
    ; line 610
    %t22 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 3
    %t24 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 2
    %t23 = load i32, i32* %t24
    store i32 %t23, i32* %t22
    ; line 611
    ; line 612
    %t27 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 2
    %t26 = load i32, i32* %t27
    %t25 = icmp ne i32 %t26, 0
    br i1 %t25, label %L_then_2, label %L_else_2
L_then_2:
    ; line 612
    call void @P_error(i32 1)
    br label %L_endif_2
L_else_2:
    ; line 613
    %t29 = load i32, i32* @t
    %t28 = add i32 %t29, 1
    store i32 %t28, i32* @t
    ; line 615
    %t30 = load i32, i32* @t
    %t31 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t30
    %t33 = getelementptr inbounds %T_record_19, %T_record_19* %t31, i32 0, i32 0
    %t32 = bitcast i8* %t33 to %T_alfa*
    %t35 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 0
    %t34 = load %T_alfa, %T_alfa* %t35
    store %T_alfa %t34, %T_alfa* %t32
    ; line 615
    %t36 = load i32, i32* @t
    %t37 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t36
    %t39 = getelementptr inbounds %T_record_19, %T_record_19* %t37, i32 0, i32 12
    %t38 = bitcast i8* %t39 to i32*
    %t41 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 3
    %t40 = load i32, i32* %t41
    store i32 %t40, i32* %t38
    ; line 616
    %t42 = load i32, i32* @t
    %t43 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t42
    %t45 = getelementptr inbounds %T_record_19, %T_record_19* %t43, i32 0, i32 16
    %t44 = bitcast i8* %t45 to i32*
    %t47 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 1
    %t46 = load i32, i32* %t47
    store i32 %t46, i32* %t44
    ; line 616
    %t48 = load i32, i32* @t
    %t49 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t48
    %t51 = getelementptr inbounds %T_record_19, %T_record_19* %t49, i32 0, i32 20
    %t50 = bitcast i8* %t51 to i32*
    store i32 0, i32* %t50
    ; line 616
    %t52 = load i32, i32* @t
    %t53 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t52
    %t55 = getelementptr inbounds %T_record_19, %T_record_19* %t53, i32 0, i32 24
    %t54 = bitcast i8* %t55 to i32*
    store i32 0, i32* %t54
    ; line 616
    %t56 = load i32, i32* @t
    %t57 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t56
    %t59 = getelementptr inbounds %T_record_19, %T_record_19* %t57, i32 0, i32 32
    %t58 = bitcast i8* %t59 to i32*
    %t62 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 4
    %t63 = load %Frame_block*, %Frame_block** %t62
    %t61 = getelementptr inbounds %Frame_block, %Frame_block* %t63, i32 0, i32 2
    %t60 = load i32, i32* %t61
    store i32 %t60, i32* %t58
    ; line 617
    %t64 = load i32, i32* @t
    %t65 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t64
    %t67 = getelementptr inbounds %T_record_19, %T_record_19* %t65, i32 0, i32 36
    %t66 = bitcast i8* %t67 to i32*
    store i32 0, i32* %t66
    ; line 619
    %t70 = getelementptr inbounds %Frame_block_enter, %Frame_block_enter* %.frame, i32 0, i32 4
    %t71 = load %Frame_block*, %Frame_block** %t70
    %t69 = getelementptr inbounds %Frame_block, %Frame_block* %t71, i32 0, i32 2
    %t68 = load i32, i32* %t69
    %t72 = getelementptr inbounds %T_array_10, %T_array_10* @display, i32 0, i32 %t68
    %t73 = load i32, i32* %t72
    %t74 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 %t73
    %t76 = getelementptr inbounds %T_record_5, %T_record_5* %t74, i32 0, i32 0
    %t75 = bitcast i8* %t76 to i32*
    %t77 = load i32, i32* @t
    store i32 %t77, i32* %t75
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 624
;================================================================================
; scope: block_loc (level : 3)

; activation record
%Frame_block_loc = type
{
    ; parameters
    %T_alfa,    ; 0: id

    ; variables
    i32,    ; 1: _fnvalue
    i32,    ; 2: i
    i32,    ; 3: j

    ; slink
    %Frame_block*    ; 4
};

; function body
define i32 @F_block_loc(%Frame_block* %.slink, %T_alfa %id)
{
    ; allocate frame
    %.frame = alloca %Frame_block_loc, align 8
    %t1 = getelementptr inbounds %Frame_block_loc, %Frame_block_loc* %.frame, i32 0, i32 4
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_loc, %Frame_block_loc* %.frame, i32 0, i32 0
    store %T_alfa %id, %T_alfa* %t2

    ; body
    ; line 626
    %t3 = getelementptr inbounds %Frame_block_loc, %Frame_block_loc* %.frame, i32 0, i32 2
    %t6 = getelementptr inbounds %Frame_block_loc, %Frame_block_loc* %.frame, i32 0, i32 4
    %t7 = load %Frame_block*, %Frame_block** %t6
    %t5 = getelementptr inbounds %Frame_block, %Frame_block* %t7, i32 0, i32 2
    %t4 = load i32, i32* %t5
    store i32 %t4, i32* %t3
    ; line 626
    %t8 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 0
    %t10 = getelementptr inbounds %T_record_19, %T_record_19* %t8, i32 0, i32 0
    %t9 = bitcast i8* %t10 to %T_alfa*
    %t12 = getelementptr inbounds %Frame_block_loc, %Frame_block_loc* %.frame, i32 0, i32 0
    %t11 = load %T_alfa, %T_alfa* %t12
    store %T_alfa %t11, %T_alfa* %t9
    ; line 627
    ; line 631
    %t15 = getelementptr inbounds %Frame_block_loc, %Frame_block_loc* %.frame, i32 0, i32 3
    %t14 = load i32, i32* %t15
    %t13 = icmp eq i32 %t14, 0
    br i1 %t13, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 631
    call void @P_error(i32 0)
    br label %L_endif_1
L_endif_1:
    ; line 631
    %t16 = getelementptr inbounds %Frame_block_loc, %Frame_block_loc* %.frame, i32 0, i32 1
    %t18 = getelementptr inbounds %Frame_block_loc, %Frame_block_loc* %.frame, i32 0, i32 3
    %t17 = load i32, i32* %t18
    store i32 %t17, i32* %t16

    ; epilogue
    %t19 = getelementptr inbounds %Frame_block_loc, %Frame_block_loc* %.frame, i32 0, i32 1
    %t20 = load i32, i32* %t19
    ret i32 %t20
}


; line 634
;================================================================================
; scope: block_entervariable (level : 3)

; activation record
%Frame_block_entervariable = type
{
    ; slink
    %Frame_block*    ; 0
};

; procedure body
define void @P_block_entervariable(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_entervariable, align 8
    %t1 = getelementptr inbounds %Frame_block_entervariable, %Frame_block_entervariable* %.frame, i32 0, i32 0
    store %Frame_block* %.slink, %Frame_block** %t1

    ; body
    ; line 635
    %t3 = load i32, i32* @sy
    %t2 = icmp eq i32 %t3, 36
    br i1 %t2, label %L_then_1, label %L_else_1
L_then_1:
    ; line 636
    %t4 = getelementptr inbounds %Frame_block_entervariable, %Frame_block_entervariable* %.frame, i32 0, i32 0
    %t5 = load %Frame_block*, %Frame_block** %t4
    %t6 = load %T_alfa, %T_alfa* @id
    call void @P_block_enter(%Frame_block* %t5, %T_alfa %t6, i32 1)
    ; line 636
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 638
    call void @P_error(i32 2)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 641
;================================================================================
; scope: block_constant (level : 3)

; activation record
%Frame_block_constant = type
{
    ; parameters
    %T_block_conrec*,    ; 0: c
    %T_symset,    ; 1: fsys

    ; variables
    i32,    ; 2: sign
    i32,    ; 3: x

    ; slink
    %Frame_block*    ; 4
};

; procedure body
define void @P_block_constant(%Frame_block* %.slink, %T_symset %fsys, %T_block_conrec* %c)
{
    ; allocate frame
    %.frame = alloca %Frame_block_constant, align 8
    %t1 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 4
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 0
    store %T_block_conrec* %c, %T_block_conrec** %t2
    %t3 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 1
    store %T_symset %fsys, %T_symset* %t3

    ; body
    ; line 643
    %t4 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 0
    %t5 = load %T_block_conrec*, %T_block_conrec** %t4
    %t7 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t5, i32 0, i32 0
    %t6 = bitcast i8* %t7 to i32*
    store i32 0, i32* %t6
    ; line 643
    %t8 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 0
    %t9 = load %T_block_conrec*, %T_block_conrec** %t8
    %t11 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t9, i32 0, i32 4
    %t10 = bitcast i8* %t11 to i32*
    store i32 0, i32* %t10
    ; line 644
    %t12 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 4
    %t13 = load %Frame_block*, %Frame_block** %t12
    %t14 = load %T_symset, %T_symset* @constbegsys
    %t16 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 1
    %t15 = load %T_symset, %T_symset* %t16
    call void @P_block_test(%Frame_block* %t13, %T_symset %t14, %T_symset %t15, i32 50)
    ; line 645
    br i1 true, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 647
    %t19 = load i32, i32* @sy
    %t18 = icmp eq i32 %t19, 2
    br i1 %t18, label %L_then_2, label %L_else_2
L_then_2:
    ; line 648
    %t20 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 0
    %t21 = load %T_block_conrec*, %T_block_conrec** %t20
    %t23 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t21, i32 0, i32 0
    %t22 = bitcast i8* %t23 to i32*
    store i32 4, i32* %t22
    ; line 648
    %t24 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 0
    %t25 = load %T_block_conrec*, %T_block_conrec** %t24
    %t27 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t25, i32 0, i32 4
    %t26 = bitcast i8* %t27 to i32*
    %t28 = load i32, i32* @inum
    store i32 %t28, i32* %t26
    ; line 648
    call void @P_insymbol()
    br label %L_endif_2
L_else_2:
    ; line 651
    %t29 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    store i32 1, i32* %t29
    ; line 652
    br i1 true, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 653
    %t32 = load i32, i32* @sy
    %t31 = icmp eq i32 %t32, 6
    br i1 %t31, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 653
    %t33 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t34 = sub i32 0, 1
    store i32 %t34, i32* %t33
    br label %L_endif_4
L_endif_4:
    ; line 654
    call void @P_insymbol()
    br label %L_endif_3
L_endif_3:
    ; line 656
    %t36 = load i32, i32* @sy
    %t35 = icmp eq i32 %t36, 36
    br i1 %t35, label %L_then_5, label %L_else_5
L_then_5:
    ; line 657
    %t37 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 3
    %t38 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 4
    %t39 = load %Frame_block*, %Frame_block** %t38
    %t40 = load %T_alfa, %T_alfa* @id
    %t41 = call i32 @F_block_loc(%Frame_block* %t39, %T_alfa %t40)
    store i32 %t41, i32* %t37
    ; line 658
    %t44 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 3
    %t43 = load i32, i32* %t44
    %t42 = icmp ne i32 %t43, 0
    br i1 %t42, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 659
    %t47 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 3
    %t46 = load i32, i32* %t47
    %t48 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t46
    %t50 = getelementptr inbounds %T_record_19, %T_record_19* %t48, i32 0, i32 16
    %t49 = bitcast i8* %t50 to i32*
    %t51 = load i32, i32* %t49
    %t45 = icmp ne i32 %t51, 0
    br i1 %t45, label %L_then_7, label %L_else_7
L_then_7:
    ; line 659
    call void @P_error(i32 25)
    br label %L_endif_7
L_else_7:
    ; line 660
    %t52 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 0
    %t53 = load %T_block_conrec*, %T_block_conrec** %t52
    %t55 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t53, i32 0, i32 0
    %t54 = bitcast i8* %t55 to i32*
    %t57 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 3
    %t56 = load i32, i32* %t57
    %t58 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t56
    %t60 = getelementptr inbounds %T_record_19, %T_record_19* %t58, i32 0, i32 20
    %t59 = bitcast i8* %t60 to i32*
    %t61 = load i32, i32* %t59
    store i32 %t61, i32* %t54
    ; line 661
    %t63 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 0
    %t64 = load %T_block_conrec*, %T_block_conrec** %t63
    %t66 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t64, i32 0, i32 0
    %t65 = bitcast i8* %t66 to i32*
    %t67 = load i32, i32* %t65
    %t62 = icmp eq i32 %t67, 2
    br i1 %t62, label %L_then_8, label %L_else_8
L_then_8:
    ; line 662
    %t68 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 0
    %t69 = load %T_block_conrec*, %T_block_conrec** %t68
    %t71 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t69, i32 0, i32 8
    %t70 = bitcast i8* %t71 to double*
    %t74 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t73 = load i32, i32* %t74
    %t76 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 3
    %t75 = load i32, i32* %t76
    %t77 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t75
    %t79 = getelementptr inbounds %T_record_19, %T_record_19* %t77, i32 0, i32 36
    %t78 = bitcast i8* %t79 to i32*
    %t80 = load i32, i32* %t78
    %t81 = getelementptr inbounds %T_array_15, %T_array_15* @rconst, i32 0, i32 %t80
    %t82 = load double, double* %t81
    %t83 = sitofp i32 %t73 to double
    %t72 = fmul double %t83, %t82
    store double %t72, double* %t70
    br label %L_endif_8
L_else_8:
    ; line 663
    %t84 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 0
    %t85 = load %T_block_conrec*, %T_block_conrec** %t84
    %t87 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t85, i32 0, i32 4
    %t86 = bitcast i8* %t87 to i32*
    %t90 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t89 = load i32, i32* %t90
    %t92 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 3
    %t91 = load i32, i32* %t92
    %t93 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t91
    %t95 = getelementptr inbounds %T_record_19, %T_record_19* %t93, i32 0, i32 36
    %t94 = bitcast i8* %t95 to i32*
    %t96 = load i32, i32* %t94
    %t88 = mul i32 %t89, %t96
    store i32 %t88, i32* %t86
    br label %L_endif_8
L_endif_8:
    br label %L_endif_7
L_endif_7:
    br label %L_endif_6
L_endif_6:
    ; line 665
    call void @P_insymbol()
    br label %L_endif_5
L_else_5:
    ; line 668
    %t98 = load i32, i32* @sy
    %t97 = icmp eq i32 %t98, 0
    br i1 %t97, label %L_then_9, label %L_else_9
L_then_9:
    ; line 669
    %t99 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 0
    %t100 = load %T_block_conrec*, %T_block_conrec** %t99
    %t102 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t100, i32 0, i32 0
    %t101 = bitcast i8* %t102 to i32*
    store i32 1, i32* %t101
    ; line 669
    %t103 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 0
    %t104 = load %T_block_conrec*, %T_block_conrec** %t103
    %t106 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t104, i32 0, i32 4
    %t105 = bitcast i8* %t106 to i32*
    %t109 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t108 = load i32, i32* %t109
    %t110 = load i32, i32* @inum
    %t107 = mul i32 %t108, %t110
    store i32 %t107, i32* %t105
    ; line 669
    call void @P_insymbol()
    br label %L_endif_9
L_else_9:
    ; line 671
    %t112 = load i32, i32* @sy
    %t111 = icmp eq i32 %t112, 1
    br i1 %t111, label %L_then_10, label %L_else_10
L_then_10:
    ; line 672
    %t113 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 0
    %t114 = load %T_block_conrec*, %T_block_conrec** %t113
    %t116 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t114, i32 0, i32 0
    %t115 = bitcast i8* %t116 to i32*
    store i32 2, i32* %t115
    ; line 672
    %t117 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 0
    %t118 = load %T_block_conrec*, %T_block_conrec** %t117
    %t120 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t118, i32 0, i32 8
    %t119 = bitcast i8* %t120 to double*
    %t123 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 2
    %t122 = load i32, i32* %t123
    %t124 = load double, double* @rnum
    %t125 = sitofp i32 %t122 to double
    %t121 = fmul double %t125, %t124
    store double %t121, double* %t119
    ; line 672
    call void @P_insymbol()
    br label %L_endif_10
L_else_10:
    ; line 673
    %t126 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 4
    %t127 = load %Frame_block*, %Frame_block** %t126
    %t129 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 1
    %t128 = load %T_symset, %T_symset* %t129
    call void @P_block_skip(%Frame_block* %t127, %T_symset %t128, i32 50)
    br label %L_endif_10
L_endif_10:
    br label %L_endif_9
L_endif_9:
    br label %L_endif_5
L_endif_5:
    br label %L_endif_2
L_endif_2:
    ; line 675
    %t130 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 4
    %t131 = load %Frame_block*, %Frame_block** %t130
    %t133 = getelementptr inbounds %Frame_block_constant, %Frame_block_constant* %.frame, i32 0, i32 1
    %t132 = load %T_symset, %T_symset* %t133
    call void @P_block_test(%Frame_block* %t131, %T_symset %t132, %T_symset %.dummy_set, i32 6)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 679
;================================================================================
; scope: block_typ (level : 3)

; activation record
%Frame_block_typ = type
{
    ; parameters
    %T_symset,    ; 0: fsys
    i32*,    ; 1: rf
    i32*,    ; 2: sz
    i32*,    ; 3: tp

    ; variables
    i32,    ; 4: elrf
    i32,    ; 5: elsz
    i32,    ; 6: eltp
    i32,    ; 7: offset
    i32,    ; 8: t0
    i32,    ; 9: t1
    i32,    ; 10: x

    ; slink
    %Frame_block*    ; 11
};

; procedure body
define void @P_block_typ(%Frame_block* %.slink, %T_symset %fsys, i32* %tp, i32* %rf, i32* %sz)
{
    ; allocate frame
    %.frame = alloca %Frame_block_typ, align 8
    %t1 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 11
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2
    %t3 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    store i32* %rf, i32** %t3
    %t4 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 2
    store i32* %sz, i32** %t4
    %t5 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 3
    store i32* %tp, i32** %t5

    ; body
    ; line 715
    %t6 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 3
    %t7 = load i32*, i32** %t6
    store i32 0, i32* %t7
    ; line 715
    %t8 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    %t9 = load i32*, i32** %t8
    store i32 0, i32* %t9
    ; line 715
    %t10 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 2
    %t11 = load i32*, i32** %t10
    store i32 0, i32* %t11
    ; line 716
    %t12 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 11
    %t13 = load %Frame_block*, %Frame_block** %t12
    %t14 = load %T_symset, %T_symset* @typebegsys
    %t16 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 0
    %t15 = load %T_symset, %T_symset* %t16
    call void @P_block_test(%Frame_block* %t13, %T_symset %t14, %T_symset %t15, i32 10)
    ; line 717
    br i1 true, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 719
    %t19 = load i32, i32* @sy
    %t18 = icmp eq i32 %t19, 36
    br i1 %t18, label %L_then_2, label %L_else_2
L_then_2:
    ; line 720
    %t20 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    %t21 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 11
    %t22 = load %Frame_block*, %Frame_block** %t21
    %t23 = load %T_alfa, %T_alfa* @id
    %t24 = call i32 @F_block_loc(%Frame_block* %t22, %T_alfa %t23)
    store i32 %t24, i32* %t20
    ; line 721
    %t27 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    %t26 = load i32, i32* %t27
    %t25 = icmp ne i32 %t26, 0
    br i1 %t25, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 723
    %t30 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    %t29 = load i32, i32* %t30
    %t31 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t29
    %t33 = getelementptr inbounds %T_record_19, %T_record_19* %t31, i32 0, i32 16
    %t32 = bitcast i8* %t33 to i32*
    %t34 = load i32, i32* %t32
    %t28 = icmp ne i32 %t34, 2
    br i1 %t28, label %L_then_4, label %L_else_4
L_then_4:
    ; line 723
    call void @P_error(i32 29)
    br label %L_endif_4
L_else_4:
    ; line 724
    %t35 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 3
    %t36 = load i32*, i32** %t35
    %t38 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    %t37 = load i32, i32* %t38
    %t39 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t37
    %t41 = getelementptr inbounds %T_record_19, %T_record_19* %t39, i32 0, i32 20
    %t40 = bitcast i8* %t41 to i32*
    %t42 = load i32, i32* %t40
    store i32 %t42, i32* %t36
    ; line 724
    %t43 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    %t44 = load i32*, i32** %t43
    %t46 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    %t45 = load i32, i32* %t46
    %t47 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t45
    %t49 = getelementptr inbounds %T_record_19, %T_record_19* %t47, i32 0, i32 24
    %t48 = bitcast i8* %t49 to i32*
    %t50 = load i32, i32* %t48
    store i32 %t50, i32* %t44
    ; line 724
    %t51 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 2
    %t52 = load i32*, i32** %t51
    %t54 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 10
    %t53 = load i32, i32* %t54
    %t55 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t53
    %t57 = getelementptr inbounds %T_record_19, %T_record_19* %t55, i32 0, i32 36
    %t56 = bitcast i8* %t57 to i32*
    %t58 = load i32, i32* %t56
    store i32 %t58, i32* %t52
    ; line 725
    %t61 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 3
    %t62 = load i32*, i32** %t61
    %t60 = load i32, i32* %t62
    %t59 = icmp eq i32 %t60, 0
    br i1 %t59, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 725
    call void @P_error(i32 30)
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_endif_3:
    ; line 727
    call void @P_insymbol()
    br label %L_endif_2
L_else_2:
    ; line 729
    %t64 = load i32, i32* @sy
    %t63 = icmp eq i32 %t64, 33
    br i1 %t63, label %L_then_6, label %L_else_6
L_then_6:
    ; line 730
    call void @P_insymbol()
    ; line 731
    %t66 = load i32, i32* @sy
    %t65 = icmp eq i32 %t66, 21
    br i1 %t65, label %L_then_7, label %L_else_7
L_then_7:
    ; line 731
    call void @P_insymbol()
    br label %L_endif_7
L_else_7:
    ; line 732
    call void @P_error(i32 11)
    ; line 733
    %t68 = load i32, i32* @sy
    %t67 = icmp eq i32 %t68, 19
    br i1 %t67, label %L_then_8, label %L_endif_8
L_then_8:
    ; line 733
    call void @P_insymbol()
    br label %L_endif_8
L_endif_8:
    br label %L_endif_7
L_endif_7:
    ; line 735
    %t69 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 3
    %t70 = load i32*, i32** %t69
    store i32 5, i32* %t70
    ; line 735
    %t71 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    %t72 = load i32*, i32** %t71
    %t73 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 2
    %t74 = load i32*, i32** %t73
    call void @P_block_typ_arraytyp(%Frame_block_typ* %.frame, i32* %t72, i32* %t74)
    br label %L_endif_6
L_else_6:
    ; line 737
    call void @P_insymbol()
    ; line 738
    call void @P_enterblock()
    ; line 738
    %t75 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 3
    %t76 = load i32*, i32** %t75
    store i32 6, i32* %t76
    ; line 738
    %t77 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    %t78 = load i32*, i32** %t77
    %t79 = load i32, i32* @b
    store i32 %t79, i32* %t78
    ; line 739
    %t83 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 11
    %t84 = load %Frame_block*, %Frame_block** %t83
    %t82 = getelementptr inbounds %Frame_block, %Frame_block* %t84, i32 0, i32 2
    %t81 = load i32, i32* %t82
    %t80 = icmp eq i32 %t81, 100
    br i1 %t80, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 739
    call void @P_fatal(i32 5)
    br label %L_endif_9
L_endif_9:
    ; line 740
    %t86 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 11
    %t87 = load %Frame_block*, %Frame_block** %t86
    %t85 = getelementptr inbounds %Frame_block, %Frame_block* %t87, i32 0, i32 2
    %t91 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 11
    %t92 = load %Frame_block*, %Frame_block** %t91
    %t90 = getelementptr inbounds %Frame_block, %Frame_block* %t92, i32 0, i32 2
    %t89 = load i32, i32* %t90
    %t88 = add i32 %t89, 1
    store i32 %t88, i32* %t85
    ; line 740
    %t95 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 11
    %t96 = load %Frame_block*, %Frame_block** %t95
    %t94 = getelementptr inbounds %Frame_block, %Frame_block* %t96, i32 0, i32 2
    %t93 = load i32, i32* %t94
    %t97 = getelementptr inbounds %T_array_10, %T_array_10* @display, i32 0, i32 %t93
    %t98 = load i32, i32* @b
    store i32 %t98, i32* %t97
    ; line 740
    %t99 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 7
    store i32 0, i32* %t99
    ; line 741
    ; line 768
    %t101 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    %t102 = load i32*, i32** %t101
    %t100 = load i32, i32* %t102
    %t103 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 %t100
    %t105 = getelementptr inbounds %T_record_5, %T_record_5* %t103, i32 0, i32 12
    %t104 = bitcast i8* %t105 to i32*
    %t107 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 7
    %t106 = load i32, i32* %t107
    store i32 %t106, i32* %t104
    ; line 768
    %t108 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 2
    %t109 = load i32*, i32** %t108
    %t111 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 7
    %t110 = load i32, i32* %t111
    store i32 %t110, i32* %t109
    ; line 769
    %t113 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 1
    %t114 = load i32*, i32** %t113
    %t112 = load i32, i32* %t114
    %t115 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 %t112
    %t117 = getelementptr inbounds %T_record_5, %T_record_5* %t115, i32 0, i32 8
    %t116 = bitcast i8* %t117 to i32*
    store i32 0, i32* %t116
    ; line 769
    call void @P_insymbol()
    ; line 769
    %t119 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 11
    %t120 = load %Frame_block*, %Frame_block** %t119
    %t118 = getelementptr inbounds %Frame_block, %Frame_block* %t120, i32 0, i32 2
    %t124 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 11
    %t125 = load %Frame_block*, %Frame_block** %t124
    %t123 = getelementptr inbounds %Frame_block, %Frame_block* %t125, i32 0, i32 2
    %t122 = load i32, i32* %t123
    %t121 = sub i32 %t122, 1
    store i32 %t121, i32* %t118
    br label %L_endif_6
L_endif_6:
    br label %L_endif_2
L_endif_2:
    ; line 771
    %t126 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 11
    %t127 = load %Frame_block*, %Frame_block** %t126
    %t129 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %.frame, i32 0, i32 0
    %t128 = load %T_symset, %T_symset* %t129
    call void @P_block_test(%Frame_block* %t127, %T_symset %t128, %T_symset %.dummy_set, i32 6)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 684
;================================================================================
; scope: block_typ_arraytyp (level : 4)

; activation record
%Frame_block_typ_arraytyp = type
{
    ; parameters
    i32*,    ; 0: aref
    i32*,    ; 1: arsz

    ; variables
    i32,    ; 2: elrf
    i32,    ; 3: elsz
    i32,    ; 4: eltp
    %T_block_conrec,    ; 5: high
    %T_block_conrec,    ; 6: low

    ; slink
    %Frame_block_typ*    ; 7
};

; procedure body
define void @P_block_typ_arraytyp(%Frame_block_typ* %.slink, i32* %aref, i32* %arsz)
{
    ; allocate frame
    %.frame = alloca %Frame_block_typ_arraytyp, align 8
    %t1 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 7
    store %Frame_block_typ* %.slink, %Frame_block_typ** %t1
    %t2 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 0
    store i32* %aref, i32** %t2
    %t3 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 1
    store i32* %arsz, i32** %t3

    ; body
    ; line 688
    %t4 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 7
    %t5 = load %Frame_block_typ*, %Frame_block_typ** %t4
    %t6 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t5, i32 0, i32 11
    %t7 = load %Frame_block*, %Frame_block** %t6
    %t9 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 6
    call void @P_block_constant(%Frame_block* %t7, %T_symset %.dummy_set, %T_block_conrec* %t9)
    ; line 689
    %t11 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 6
    %t13 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t11, i32 0, i32 0
    %t12 = bitcast i8* %t13 to i32*
    %t14 = load i32, i32* %t12
    %t10 = icmp eq i32 %t14, 2
    br i1 %t10, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 690
    call void @P_error(i32 27)
    ; line 690
    %t15 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 6
    %t17 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t15, i32 0, i32 0
    %t16 = bitcast i8* %t17 to i32*
    store i32 1, i32* %t16
    ; line 690
    %t18 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 6
    %t20 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t18, i32 0, i32 4
    %t19 = bitcast i8* %t20 to i32*
    store i32 0, i32* %t19
    br label %L_endif_1
L_endif_1:
    ; line 692
    %t22 = load i32, i32* @sy
    %t21 = icmp eq i32 %t22, 26
    br i1 %t21, label %L_then_2, label %L_else_2
L_then_2:
    ; line 692
    call void @P_insymbol()
    br label %L_endif_2
L_else_2:
    ; line 692
    call void @P_error(i32 13)
    br label %L_endif_2
L_endif_2:
    ; line 693
    %t23 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 7
    %t24 = load %Frame_block_typ*, %Frame_block_typ** %t23
    %t25 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t24, i32 0, i32 11
    %t26 = load %Frame_block*, %Frame_block** %t25
    %t28 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 5
    call void @P_block_constant(%Frame_block* %t26, %T_symset %.dummy_set, %T_block_conrec* %t28)
    ; line 694
    %t30 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 5
    %t32 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t30, i32 0, i32 0
    %t31 = bitcast i8* %t32 to i32*
    %t33 = load i32, i32* %t31
    %t34 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 6
    %t36 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t34, i32 0, i32 0
    %t35 = bitcast i8* %t36 to i32*
    %t37 = load i32, i32* %t35
    %t29 = icmp ne i32 %t33, %t37
    br i1 %t29, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 695
    call void @P_error(i32 27)
    ; line 695
    %t38 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 5
    %t40 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t38, i32 0, i32 4
    %t39 = bitcast i8* %t40 to i32*
    %t41 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 6
    %t43 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t41, i32 0, i32 4
    %t42 = bitcast i8* %t43 to i32*
    %t44 = load i32, i32* %t42
    store i32 %t44, i32* %t39
    br label %L_endif_3
L_endif_3:
    ; line 697
    %t45 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 6
    %t47 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t45, i32 0, i32 0
    %t46 = bitcast i8* %t47 to i32*
    %t48 = load i32, i32* %t46
    %t49 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 6
    %t51 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t49, i32 0, i32 4
    %t50 = bitcast i8* %t51 to i32*
    %t52 = load i32, i32* %t50
    %t53 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 5
    %t55 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t53, i32 0, i32 4
    %t54 = bitcast i8* %t55 to i32*
    %t56 = load i32, i32* %t54
    call void @P_enterarray(i32 %t48, i32 %t52, i32 %t56)
    ; line 697
    %t57 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 0
    %t58 = load i32*, i32** %t57
    %t59 = load i32, i32* @a
    store i32 %t59, i32* %t58
    ; line 698
    %t61 = load i32, i32* @sy
    %t60 = icmp eq i32 %t61, 23
    br i1 %t60, label %L_then_4, label %L_else_4
L_then_4:
    ; line 699
    call void @P_insymbol()
    ; line 699
    %t62 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 4
    store i32 5, i32* %t62
    ; line 699
    %t63 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 7
    %t64 = load %Frame_block_typ*, %Frame_block_typ** %t63
    %t65 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 2
    %t66 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 3
    call void @P_block_typ_arraytyp(%Frame_block_typ* %t64, i32* %t65, i32* %t66)
    br label %L_endif_4
L_else_4:
    ; line 702
    %t68 = load i32, i32* @sy
    %t67 = icmp eq i32 %t68, 22
    br i1 %t67, label %L_then_5, label %L_else_5
L_then_5:
    ; line 702
    call void @P_insymbol()
    br label %L_endif_5
L_else_5:
    ; line 703
    call void @P_error(i32 12)
    ; line 704
    %t70 = load i32, i32* @sy
    %t69 = icmp eq i32 %t70, 20
    br i1 %t69, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 704
    call void @P_insymbol()
    br label %L_endif_6
L_endif_6:
    br label %L_endif_5
L_endif_5:
    ; line 706
    %t72 = load i32, i32* @sy
    %t71 = icmp eq i32 %t72, 46
    br i1 %t71, label %L_then_7, label %L_else_7
L_then_7:
    ; line 706
    call void @P_insymbol()
    br label %L_endif_7
L_else_7:
    ; line 706
    call void @P_error(i32 8)
    br label %L_endif_7
L_endif_7:
    ; line 707
    %t73 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 7
    %t74 = load %Frame_block_typ*, %Frame_block_typ** %t73
    %t75 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t74, i32 0, i32 11
    %t76 = load %Frame_block*, %Frame_block** %t75
    %t79 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 7
    %t80 = load %Frame_block_typ*, %Frame_block_typ** %t79
    %t78 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t80, i32 0, i32 0
    %t77 = load %T_symset, %T_symset* %t78
    %t81 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 4
    %t82 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 2
    %t83 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 3
    call void @P_block_typ(%Frame_block* %t76, %T_symset %t77, i32* %t81, i32* %t82, i32* %t83)
    br label %L_endif_4
L_endif_4:
    ; line 710
    %t84 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 1
    %t85 = load i32*, i32** %t84
    %t90 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 0
    %t91 = load i32*, i32** %t90
    %t89 = load i32, i32* %t91
    %t92 = getelementptr inbounds %T_array_2, %T_array_2* @atab, i32 0, i32 %t89
    %t94 = getelementptr inbounds %T_record_3, %T_record_3* %t92, i32 0, i32 16
    %t93 = bitcast i8* %t94 to i32*
    %t95 = load i32, i32* %t93
    %t97 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 0
    %t98 = load i32*, i32** %t97
    %t96 = load i32, i32* %t98
    %t99 = getelementptr inbounds %T_array_2, %T_array_2* @atab, i32 0, i32 %t96
    %t101 = getelementptr inbounds %T_record_3, %T_record_3* %t99, i32 0, i32 12
    %t100 = bitcast i8* %t101 to i32*
    %t102 = load i32, i32* %t100
    %t88 = sub i32 %t95, %t102
    %t87 = add i32 %t88, 1
    %t104 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 3
    %t103 = load i32, i32* %t104
    %t86 = mul i32 %t87, %t103
    store i32 %t86, i32* %t85
    ; line 710
    %t106 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 0
    %t107 = load i32*, i32** %t106
    %t105 = load i32, i32* %t107
    %t108 = getelementptr inbounds %T_array_2, %T_array_2* @atab, i32 0, i32 %t105
    %t110 = getelementptr inbounds %T_record_3, %T_record_3* %t108, i32 0, i32 24
    %t109 = bitcast i8* %t110 to i32*
    %t112 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 1
    %t113 = load i32*, i32** %t112
    %t111 = load i32, i32* %t113
    store i32 %t111, i32* %t109
    ; line 711
    %t115 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 0
    %t116 = load i32*, i32** %t115
    %t114 = load i32, i32* %t116
    %t117 = getelementptr inbounds %T_array_2, %T_array_2* @atab, i32 0, i32 %t114
    %t119 = getelementptr inbounds %T_record_3, %T_record_3* %t117, i32 0, i32 4
    %t118 = bitcast i8* %t119 to i32*
    %t121 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 4
    %t120 = load i32, i32* %t121
    store i32 %t120, i32* %t118
    ; line 711
    %t123 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 0
    %t124 = load i32*, i32** %t123
    %t122 = load i32, i32* %t124
    %t125 = getelementptr inbounds %T_array_2, %T_array_2* @atab, i32 0, i32 %t122
    %t127 = getelementptr inbounds %T_record_3, %T_record_3* %t125, i32 0, i32 8
    %t126 = bitcast i8* %t127 to i32*
    %t129 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 2
    %t128 = load i32, i32* %t129
    store i32 %t128, i32* %t126
    ; line 711
    %t131 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 0
    %t132 = load i32*, i32** %t131
    %t130 = load i32, i32* %t132
    %t133 = getelementptr inbounds %T_array_2, %T_array_2* @atab, i32 0, i32 %t130
    %t135 = getelementptr inbounds %T_record_3, %T_record_3* %t133, i32 0, i32 20
    %t134 = bitcast i8* %t135 to i32*
    %t137 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 3
    %t136 = load i32, i32* %t137
    store i32 %t136, i32* %t134
    ; nop

    ; epilogue
    ret void
}


; line 775
;================================================================================
; scope: block_parameterlist (level : 3)

; activation record
%Frame_block_parameterlist = type
{
    ; variables
    i32,    ; 0: rf
    i32,    ; 1: sz
    i32,    ; 2: t0
    i32,    ; 3: tp
    i1,    ; 4: valpar
    i32,    ; 5: x

    ; slink
    %Frame_block*    ; 6
};

; procedure body
define void @P_block_parameterlist(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_parameterlist, align 8
    %t1 = getelementptr inbounds %Frame_block_parameterlist, %Frame_block_parameterlist* %.frame, i32 0, i32 6
    store %Frame_block* %.slink, %Frame_block** %t1

    ; body
    ; line 779
    call void @P_insymbol()
    ; line 779
    %t2 = getelementptr inbounds %Frame_block_parameterlist, %Frame_block_parameterlist* %.frame, i32 0, i32 3
    store i32 0, i32* %t2
    ; line 779
    %t3 = getelementptr inbounds %Frame_block_parameterlist, %Frame_block_parameterlist* %.frame, i32 0, i32 0
    store i32 0, i32* %t3
    ; line 779
    %t4 = getelementptr inbounds %Frame_block_parameterlist, %Frame_block_parameterlist* %.frame, i32 0, i32 1
    store i32 0, i32* %t4
    ; line 780
    %t5 = getelementptr inbounds %Frame_block_parameterlist, %Frame_block_parameterlist* %.frame, i32 0, i32 6
    %t6 = load %Frame_block*, %Frame_block** %t5
    call void @P_block_test(%Frame_block* %t6, %T_symset %.dummy_set, %T_symset %.dummy_set, i32 7)
    ; line 781
    ; line 819
    %t9 = load i32, i32* @sy
    %t8 = icmp eq i32 %t9, 20
    br i1 %t8, label %L_then_1, label %L_else_1
L_then_1:
    ; line 820
    call void @P_insymbol()
    ; line 821
    %t10 = getelementptr inbounds %Frame_block_parameterlist, %Frame_block_parameterlist* %.frame, i32 0, i32 6
    %t11 = load %Frame_block*, %Frame_block** %t10
    %t14 = getelementptr inbounds %Frame_block_parameterlist, %Frame_block_parameterlist* %.frame, i32 0, i32 6
    %t15 = load %Frame_block*, %Frame_block** %t14
    %t13 = getelementptr inbounds %Frame_block, %Frame_block* %t15, i32 0, i32 0
    %t12 = load %T_symset, %T_symset* %t13
    call void @P_block_test(%Frame_block* %t11, %T_symset %.dummy_set, %T_symset %t12, i32 6)
    br label %L_endif_1
L_else_1:
    ; line 823
    call void @P_error(i32 4)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 826
;================================================================================
; scope: block_constantdeclaration (level : 3)

; activation record
%Frame_block_constantdeclaration = type
{
    ; variables
    %T_block_conrec,    ; 0: c

    ; slink
    %Frame_block*    ; 1
};

; procedure body
define void @P_block_constantdeclaration(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_constantdeclaration, align 8
    %t1 = getelementptr inbounds %Frame_block_constantdeclaration, %Frame_block_constantdeclaration* %.frame, i32 0, i32 1
    store %Frame_block* %.slink, %Frame_block** %t1

    ; body
    ; line 828
    call void @P_insymbol()
    ; line 829
    %t2 = getelementptr inbounds %Frame_block_constantdeclaration, %Frame_block_constantdeclaration* %.frame, i32 0, i32 1
    %t3 = load %Frame_block*, %Frame_block** %t2
    %t4 = load %T_symset, %T_symset* @blockbegsys
    call void @P_block_test(%Frame_block* %t3, %T_symset %.dummy_set, %T_symset %t4, i32 2)
    ; line 830

    ; epilogue
    ret void
}


; line 845
;================================================================================
; scope: block_typedeclaration (level : 3)

; activation record
%Frame_block_typedeclaration = type
{
    ; variables
    i32,    ; 0: rf
    i32,    ; 1: sz
    i32,    ; 2: t1
    i32,    ; 3: tp

    ; slink
    %Frame_block*    ; 4
};

; procedure body
define void @P_block_typedeclaration(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_typedeclaration, align 8
    %t1 = getelementptr inbounds %Frame_block_typedeclaration, %Frame_block_typedeclaration* %.frame, i32 0, i32 4
    store %Frame_block* %.slink, %Frame_block** %t1

    ; body
    ; line 847
    call void @P_insymbol()
    ; line 848
    %t2 = getelementptr inbounds %Frame_block_typedeclaration, %Frame_block_typedeclaration* %.frame, i32 0, i32 4
    %t3 = load %Frame_block*, %Frame_block** %t2
    %t4 = load %T_symset, %T_symset* @blockbegsys
    call void @P_block_test(%Frame_block* %t3, %T_symset %.dummy_set, %T_symset %t4, i32 2)
    ; line 849

    ; epilogue
    ret void
}


; line 863
;================================================================================
; scope: block_variabledeclaration (level : 3)

; activation record
%Frame_block_variabledeclaration = type
{
    ; variables
    i32,    ; 0: rf
    i32,    ; 1: sz
    i32,    ; 2: t0
    i32,    ; 3: t1
    i32,    ; 4: tp

    ; slink
    %Frame_block*    ; 5
};

; procedure body
define void @P_block_variabledeclaration(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_variabledeclaration, align 8
    %t1 = getelementptr inbounds %Frame_block_variabledeclaration, %Frame_block_variabledeclaration* %.frame, i32 0, i32 5
    store %Frame_block* %.slink, %Frame_block** %t1

    ; body
    ; line 866
    call void @P_insymbol()
    ; line 867

    ; epilogue
    ret void
}


; line 887
;================================================================================
; scope: block_procdeclaration (level : 3)

; activation record
%Frame_block_procdeclaration = type
{
    ; variables
    i1,    ; 0: isfun

    ; slink
    %Frame_block*    ; 1
};

; procedure body
define void @P_block_procdeclaration(%Frame_block* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_procdeclaration, align 8
    %t1 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    store %Frame_block* %.slink, %Frame_block** %t1

    ; body
    ; line 889
    %t2 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 0
    %t4 = load i32, i32* @sy
    %t3 = icmp eq i32 %t4, 31
    store i1 %t3, i1* %t2
    ; line 889
    call void @P_insymbol()
    ; line 890
    %t6 = load i32, i32* @sy
    %t5 = icmp ne i32 %t6, 36
    br i1 %t5, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 891
    call void @P_error(i32 2)
    ; line 891
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), %T_alfa* @id
    ; nop
    br label %L_endif_1
L_endif_1:
    ; line 893
    %t8 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 0
    %t7 = load i1, i1* %t8
    br i1 %t7, label %L_then_2, label %L_else_2
L_then_2:
    ; line 893
    %t9 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    %t10 = load %Frame_block*, %Frame_block** %t9
    %t11 = load %T_alfa, %T_alfa* @id
    call void @P_block_enter(%Frame_block* %t10, %T_alfa %t11, i32 4)
    br label %L_endif_2
L_else_2:
    ; line 893
    %t12 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    %t13 = load %Frame_block*, %Frame_block** %t12
    %t14 = load %T_alfa, %T_alfa* @id
    call void @P_block_enter(%Frame_block* %t13, %T_alfa %t14, i32 3)
    br label %L_endif_2
L_endif_2:
    ; line 894
    %t15 = load i32, i32* @t
    %t16 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t15
    %t18 = getelementptr inbounds %T_record_19, %T_record_19* %t16, i32 0, i32 28
    %t17 = bitcast i8* %t18 to i1*
    store i1 1, i1* %t17
    ; line 895
    call void @P_insymbol()
    ; line 895
    %t21 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 0
    %t20 = load i1, i1* %t21
    %t25 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    %t26 = load %Frame_block*, %Frame_block** %t25
    %t24 = getelementptr inbounds %Frame_block, %Frame_block* %t26, i32 0, i32 2
    %t23 = load i32, i32* %t24
    %t22 = add i32 %t23, 1
    call void @P_block(%T_symset %.dummy_set, i1 %t20, i32 %t22)
    ; line 896
    %t28 = load i32, i32* @sy
    %t27 = icmp eq i32 %t28, 24
    br i1 %t27, label %L_then_3, label %L_else_3
L_then_3:
    ; line 896
    call void @P_insymbol()
    br label %L_endif_3
L_else_3:
    ; line 896
    call void @P_error(i32 14)
    br label %L_endif_3
L_endif_3:
    ; line 897
    %t29 = add i32 32, %.dummy.intrin
    call void @P_emit(i32 %t29)

    ; epilogue
    ret void
}


; line 900
;================================================================================
; scope: block_statement (level : 3)

; activation record
%Frame_block_statement = type
{
    ; parameters
    %T_symset,    ; 0: fsys

    ; variables
    i32,    ; 1: i

    ; slink
    %Frame_block*    ; 2
};

; procedure body
define void @P_block_statement(%Frame_block* %.slink, %T_symset %fsys)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement, align 8
    %t1 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 2
    store %Frame_block* %.slink, %Frame_block** %t1
    %t2 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2

    ; body
    ; line 1450
    br i1 true, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1451
    br label %L_endif_1
L_endif_1:
    ; line 1474
    %t4 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 2
    %t5 = load %Frame_block*, %Frame_block** %t4
    %t7 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 0
    %t6 = load %T_symset, %T_symset* %t7
    call void @P_block_test(%Frame_block* %t5, %T_symset %t6, %T_symset %.dummy_set, i32 14)

    ; epilogue
    ret void
}


; line 904
;================================================================================
; scope: block_statement_selector (level : 4)

; activation record
%Frame_block_statement_selector = type
{
    ; parameters
    %T_symset,    ; 0: fsys
    %T_item*,    ; 1: v

    ; variables
    i32,    ; 2: a
    i32,    ; 3: j
    %T_item,    ; 4: x

    ; slink
    %Frame_block_statement*    ; 5
};

; procedure body
define void @P_block_statement_selector(%Frame_block_statement* %.slink, %T_symset %fsys, %T_item* %v)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_selector, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_selector, %Frame_block_statement_selector* %.frame, i32 0, i32 5
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_selector, %Frame_block_statement_selector* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2
    %t3 = getelementptr inbounds %Frame_block_statement_selector, %Frame_block_statement_selector* %.frame, i32 0, i32 1
    store %T_item* %v, %T_item** %t3

    ; body
    ; line 907
    ; line 939
    %t4 = getelementptr inbounds %Frame_block_statement_selector, %Frame_block_statement_selector* %.frame, i32 0, i32 5
    %t5 = load %Frame_block_statement*, %Frame_block_statement** %t4
    %t6 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t5, i32 0, i32 2
    %t7 = load %Frame_block*, %Frame_block** %t6
    %t9 = getelementptr inbounds %Frame_block_statement_selector, %Frame_block_statement_selector* %.frame, i32 0, i32 0
    %t8 = load %T_symset, %T_symset* %t9
    call void @P_block_test(%Frame_block* %t7, %T_symset %t8, %T_symset %.dummy_set, i32 6)

    ; epilogue
    ret void
}


; line 942
;================================================================================
; scope: block_statement_call (level : 4)

; activation record
%Frame_block_statement_call = type
{
    ; parameters
    %T_symset,    ; 0: fsys
    i32,    ; 1: i

    ; variables
    i32,    ; 2: cp
    i32,    ; 3: k
    i32,    ; 4: lastp
    %T_item,    ; 5: x

    ; slink
    %Frame_block_statement*    ; 6
};

; procedure body
define void @P_block_statement_call(%Frame_block_statement* %.slink, %T_symset %fsys, i32 %i)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_call, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_call, %Frame_block_statement_call* %.frame, i32 0, i32 6
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_call, %Frame_block_statement_call* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2
    %t3 = getelementptr inbounds %Frame_block_statement_call, %Frame_block_statement_call* %.frame, i32 0, i32 1
    store i32 %i, i32* %t3

    ; body
    ; line 945
    %t5 = getelementptr inbounds %Frame_block_statement_call, %Frame_block_statement_call* %.frame, i32 0, i32 1
    %t4 = load i32, i32* %t5
    call void @P_emit1(i32 18, i32 %t4)
    ; line 946
    %t6 = getelementptr inbounds %Frame_block_statement_call, %Frame_block_statement_call* %.frame, i32 0, i32 4
    %t8 = getelementptr inbounds %Frame_block_statement_call, %Frame_block_statement_call* %.frame, i32 0, i32 1
    %t7 = load i32, i32* %t8
    %t9 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t7
    %t11 = getelementptr inbounds %T_record_19, %T_record_19* %t9, i32 0, i32 24
    %t10 = bitcast i8* %t11 to i32*
    %t12 = load i32, i32* %t10
    %t13 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 %t12
    %t15 = getelementptr inbounds %T_record_5, %T_record_5* %t13, i32 0, i32 4
    %t14 = bitcast i8* %t15 to i32*
    %t16 = load i32, i32* %t14
    store i32 %t16, i32* %t6
    ; line 946
    %t17 = getelementptr inbounds %Frame_block_statement_call, %Frame_block_statement_call* %.frame, i32 0, i32 2
    %t19 = getelementptr inbounds %Frame_block_statement_call, %Frame_block_statement_call* %.frame, i32 0, i32 1
    %t18 = load i32, i32* %t19
    store i32 %t18, i32* %t17
    ; line 947
    %t21 = load i32, i32* @sy
    %t20 = icmp eq i32 %t21, 19
    br i1 %t20, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 949
    ; line 985
    %t23 = load i32, i32* @sy
    %t22 = icmp eq i32 %t23, 20
    br i1 %t22, label %L_then_2, label %L_else_2
L_then_2:
    ; line 985
    call void @P_insymbol()
    br label %L_endif_2
L_else_2:
    ; line 985
    call void @P_error(i32 4)
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:
    ; line 987
    %t26 = getelementptr inbounds %Frame_block_statement_call, %Frame_block_statement_call* %.frame, i32 0, i32 2
    %t25 = load i32, i32* %t26
    %t28 = getelementptr inbounds %Frame_block_statement_call, %Frame_block_statement_call* %.frame, i32 0, i32 4
    %t27 = load i32, i32* %t28
    %t24 = icmp slt i32 %t25, %t27
    br i1 %t24, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 987
    call void @P_error(i32 39)
    br label %L_endif_3
L_endif_3:
    ; line 988
    %t31 = getelementptr inbounds %Frame_block_statement_call, %Frame_block_statement_call* %.frame, i32 0, i32 1
    %t30 = load i32, i32* %t31
    %t32 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t30
    %t34 = getelementptr inbounds %T_record_19, %T_record_19* %t32, i32 0, i32 24
    %t33 = bitcast i8* %t34 to i32*
    %t35 = load i32, i32* %t33
    %t36 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 %t35
    %t38 = getelementptr inbounds %T_record_5, %T_record_5* %t36, i32 0, i32 8
    %t37 = bitcast i8* %t38 to i32*
    %t39 = load i32, i32* %t37
    %t29 = sub i32 %t39, 1
    call void @P_emit1(i32 19, i32 %t29)
    ; line 989
    %t42 = getelementptr inbounds %Frame_block_statement_call, %Frame_block_statement_call* %.frame, i32 0, i32 1
    %t41 = load i32, i32* %t42
    %t43 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t41
    %t45 = getelementptr inbounds %T_record_19, %T_record_19* %t43, i32 0, i32 32
    %t44 = bitcast i8* %t45 to i32*
    %t46 = load i32, i32* %t44
    %t49 = getelementptr inbounds %Frame_block_statement_call, %Frame_block_statement_call* %.frame, i32 0, i32 6
    %t50 = load %Frame_block_statement*, %Frame_block_statement** %t49
    %t51 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t50, i32 0, i32 2
    %t52 = load %Frame_block*, %Frame_block** %t51
    %t48 = getelementptr inbounds %Frame_block, %Frame_block* %t52, i32 0, i32 2
    %t47 = load i32, i32* %t48
    %t40 = icmp slt i32 %t46, %t47
    br i1 %t40, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 989
    %t54 = getelementptr inbounds %Frame_block_statement_call, %Frame_block_statement_call* %.frame, i32 0, i32 1
    %t53 = load i32, i32* %t54
    %t55 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t53
    %t57 = getelementptr inbounds %T_record_19, %T_record_19* %t55, i32 0, i32 32
    %t56 = bitcast i8* %t57 to i32*
    %t58 = load i32, i32* %t56
    %t61 = getelementptr inbounds %Frame_block_statement_call, %Frame_block_statement_call* %.frame, i32 0, i32 6
    %t62 = load %Frame_block_statement*, %Frame_block_statement** %t61
    %t63 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t62, i32 0, i32 2
    %t64 = load %Frame_block*, %Frame_block** %t63
    %t60 = getelementptr inbounds %Frame_block, %Frame_block* %t64, i32 0, i32 2
    %t59 = load i32, i32* %t60
    call void @P_emit2(i32 3, i32 %t58, i32 %t59)
    br label %L_endif_4
L_endif_4:

    ; epilogue
    ret void
}


; line 992
;================================================================================
; scope: block_statement_resulttype (level : 4)

; activation record
%Frame_block_statement_resulttype = type
{
    ; parameters
    i32,    ; 0: a
    i32,    ; 1: b

    ; variables
    i32,    ; 2: _fnvalue

    ; slink
    %Frame_block_statement*    ; 3
};

; function body
define i32 @F_block_statement_resulttype(%Frame_block_statement* %.slink, i32 %a, i32 %b)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_resulttype, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 3
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 0
    store i32 %a, i32* %t2
    %t3 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 1
    store i32 %b, i32* %t3

    ; body
    ; line 994
    br label %L_OR_expr_1
L_OR_expr_1:
    %t7 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 0
    %t6 = load i32, i32* %t7
    %t5 = icmp sgt i32 %t6, 2
    br i1 %t5, label %L_OR_shortcut_1, label %L_OR_eval_1
L_OR_eval_1:
    %t10 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 1
    %t9 = load i32, i32* %t10
    %t8 = icmp sgt i32 %t9, 2
    br label %L_OR_shortcut_1
L_OR_shortcut_1:
    %t4 = phi [%t8, %L_OR_eval_1], [true, %L_OR_expr_1]
    br i1 %t4, label %L_then_2, label %L_else_2
L_then_2:
    ; line 995
    call void @P_error(i32 33)
    ; line 995
    %t11 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 2
    store i32 0, i32* %t11
    br label %L_endif_2
L_else_2:
    ; line 997
    br label %L_OR_expr_3
L_OR_expr_3:
    %t15 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 0
    %t14 = load i32, i32* %t15
    %t13 = icmp eq i32 %t14, 0
    br i1 %t13, label %L_OR_shortcut_3, label %L_OR_eval_3
L_OR_eval_3:
    %t18 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 1
    %t17 = load i32, i32* %t18
    %t16 = icmp eq i32 %t17, 0
    br label %L_OR_shortcut_3
L_OR_shortcut_3:
    %t12 = phi [%t16, %L_OR_eval_3], [true, %L_OR_expr_3]
    br i1 %t12, label %L_then_4, label %L_else_4
L_then_4:
    ; line 997
    %t19 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 2
    store i32 0, i32* %t19
    br label %L_endif_4
L_else_4:
    ; line 998
    %t22 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 0
    %t21 = load i32, i32* %t22
    %t20 = icmp eq i32 %t21, 1
    br i1 %t20, label %L_then_5, label %L_else_5
L_then_5:
    ; line 999
    %t25 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 1
    %t24 = load i32, i32* %t25
    %t23 = icmp eq i32 %t24, 1
    br i1 %t23, label %L_then_6, label %L_else_6
L_then_6:
    ; line 999
    %t26 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 2
    store i32 1, i32* %t26
    br label %L_endif_6
L_else_6:
    ; line 1000
    %t27 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 2
    store i32 2, i32* %t27
    ; line 1000
    call void @P_emit1(i32 26, i32 1)
    br label %L_endif_6
L_endif_6:
    br label %L_endif_5
L_else_5:
    ; line 1003
    %t28 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 2
    store i32 2, i32* %t28
    ; line 1004
    %t31 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 1
    %t30 = load i32, i32* %t31
    %t29 = icmp eq i32 %t30, 1
    br i1 %t29, label %L_then_7, label %L_endif_7
L_then_7:
    ; line 1004
    call void @P_emit1(i32 26, i32 0)
    br label %L_endif_7
L_endif_7:
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_endif_4:
    br label %L_endif_2
L_endif_2:

    ; epilogue
    %t32 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 2
    %t33 = load i32, i32* %t32
    ret i32 %t33
}


; line 1008
;================================================================================
; scope: block_statement_expression (level : 4)

; activation record
%Frame_block_statement_expression = type
{
    ; parameters
    %T_symset,    ; 0: fsys
    %T_item*,    ; 1: x

    ; variables
    i32,    ; 2: op
    %T_item,    ; 3: y

    ; slink
    %Frame_block_statement*    ; 4
};

; procedure body
define void @P_block_statement_expression(%Frame_block_statement* %.slink, %T_symset %fsys, %T_item* %x)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_expression, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 4
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2
    %t3 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 1
    store %T_item* %x, %T_item** %t3

    ; body
    ; line 1194
    %t5 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 1
    %t6 = load %T_item*, %T_item** %t5
    call void @P_block_statement_expression_simpleexpression(%Frame_block_statement_expression* %.frame, %T_symset %.dummy_set, %T_item* %t6)
    ; line 1195
    br i1 true, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1196
    %t8 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 2
    %t9 = load i32, i32* @sy
    store i32 %t9, i32* %t8
    ; line 1196
    call void @P_insymbol()
    ; line 1197
    %t11 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 0
    %t10 = load %T_symset, %T_symset* %t11
    %t12 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 3
    call void @P_block_statement_expression_simpleexpression(%Frame_block_statement_expression* %.frame, %T_symset %t10, %T_item* %t12)
    ; line 1198
    br label %L_AND_expr_2
L_AND_expr_2:
    br i1 true, label %L_AND_eval_2, label %L_AND_shortcut_2
L_AND_eval_2:
    %t16 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 1
    %t17 = load %T_item*, %T_item** %t16
    %t19 = getelementptr inbounds %T_item, %T_item* %t17, i32 0, i32 0
    %t18 = bitcast i8* %t19 to i32*
    %t20 = load i32, i32* %t18
    %t21 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 3
    %t23 = getelementptr inbounds %T_item, %T_item* %t21, i32 0, i32 0
    %t22 = bitcast i8* %t23 to i32*
    %t24 = load i32, i32* %t22
    %t15 = icmp eq i32 %t20, %t24
    br label %L_AND_shortcut_2
L_AND_shortcut_2:
    %t13 = phi [%t15, %L_AND_eval_2], [false, %L_AND_expr_2]
    br i1 %t13, label %L_then_3, label %L_else_3
L_then_3:
    ; line 1200
    br label %L_endif_3
L_else_3:
    ; line 1208
    %t26 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 1
    %t27 = load %T_item*, %T_item** %t26
    %t29 = getelementptr inbounds %T_item, %T_item* %t27, i32 0, i32 0
    %t28 = bitcast i8* %t29 to i32*
    %t30 = load i32, i32* %t28
    %t25 = icmp eq i32 %t30, 1
    br i1 %t25, label %L_then_4, label %L_else_4
L_then_4:
    ; line 1209
    %t31 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 1
    %t32 = load %T_item*, %T_item** %t31
    %t34 = getelementptr inbounds %T_item, %T_item* %t32, i32 0, i32 0
    %t33 = bitcast i8* %t34 to i32*
    store i32 2, i32* %t33
    ; line 1209
    call void @P_emit1(i32 26, i32 1)
    br label %L_endif_4
L_else_4:
    ; line 1211
    %t36 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 3
    %t38 = getelementptr inbounds %T_item, %T_item* %t36, i32 0, i32 0
    %t37 = bitcast i8* %t38 to i32*
    %t39 = load i32, i32* %t37
    %t35 = icmp eq i32 %t39, 1
    br i1 %t35, label %L_then_5, label %L_endif_5
L_then_5:
    ; line 1212
    %t40 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 3
    %t42 = getelementptr inbounds %T_item, %T_item* %t40, i32 0, i32 0
    %t41 = bitcast i8* %t42 to i32*
    store i32 2, i32* %t41
    ; line 1212
    call void @P_emit1(i32 26, i32 0)
    br label %L_endif_5
L_endif_5:
    br label %L_endif_4
L_endif_4:
    ; line 1214
    br label %L_AND_expr_6
L_AND_expr_6:
    %t45 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 1
    %t46 = load %T_item*, %T_item** %t45
    %t48 = getelementptr inbounds %T_item, %T_item* %t46, i32 0, i32 0
    %t47 = bitcast i8* %t48 to i32*
    %t49 = load i32, i32* %t47
    %t44 = icmp eq i32 %t49, 2
    br i1 %t44, label %L_AND_eval_6, label %L_AND_shortcut_6
L_AND_eval_6:
    %t51 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 3
    %t53 = getelementptr inbounds %T_item, %T_item* %t51, i32 0, i32 0
    %t52 = bitcast i8* %t53 to i32*
    %t54 = load i32, i32* %t52
    %t50 = icmp eq i32 %t54, 2
    br label %L_AND_shortcut_6
L_AND_shortcut_6:
    %t43 = phi [%t50, %L_AND_eval_6], [false, %L_AND_expr_6]
    br i1 %t43, label %L_then_7, label %L_else_7
L_then_7:
    ; line 1215
    br label %L_endif_7
L_else_7:
    ; line 1223
    call void @P_error(i32 35)
    br label %L_endif_7
L_endif_7:
    br label %L_endif_3
L_endif_3:
    ; line 1225
    %t55 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %.frame, i32 0, i32 1
    %t56 = load %T_item*, %T_item** %t55
    %t58 = getelementptr inbounds %T_item, %T_item* %t56, i32 0, i32 0
    %t57 = bitcast i8* %t58 to i32*
    store i32 3, i32* %t57
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1011
;================================================================================
; scope: block_statement_expression_simpleexpression (level : 5)

; activation record
%Frame_block_statement_expression_simpleexpression = type
{
    ; parameters
    %T_symset,    ; 0: fsys
    %T_item*,    ; 1: x

    ; variables
    i32,    ; 2: op
    %T_item,    ; 3: y

    ; slink
    %Frame_block_statement_expression*    ; 4
};

; procedure body
define void @P_block_statement_expression_simpleexpression(%Frame_block_statement_expression* %.slink, %T_symset %fsys, %T_item* %x)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_expression_simpleexpression, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression, %Frame_block_statement_expression_simpleexpression* %.frame, i32 0, i32 4
    store %Frame_block_statement_expression* %.slink, %Frame_block_statement_expression** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression, %Frame_block_statement_expression_simpleexpression* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2
    %t3 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression, %Frame_block_statement_expression_simpleexpression* %.frame, i32 0, i32 1
    store %T_item* %x, %T_item** %t3

    ; body
    ; line 1161
    br i1 true, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1162
    %t5 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression, %Frame_block_statement_expression_simpleexpression* %.frame, i32 0, i32 2
    %t6 = load i32, i32* @sy
    store i32 %t6, i32* %t5
    ; line 1162
    call void @P_insymbol()
    ; line 1163
    %t8 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression, %Frame_block_statement_expression_simpleexpression* %.frame, i32 0, i32 1
    %t9 = load %T_item*, %T_item** %t8
    call void @P_block_statement_expression_simpleexpression_term(%Frame_block_statement_expression_simpleexpression* %.frame, %T_symset %.dummy_set, %T_item* %t9)
    ; line 1164
    %t11 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression, %Frame_block_statement_expression_simpleexpression* %.frame, i32 0, i32 1
    %t12 = load %T_item*, %T_item** %t11
    %t14 = getelementptr inbounds %T_item, %T_item* %t12, i32 0, i32 0
    %t13 = bitcast i8* %t14 to i32*
    %t15 = load i32, i32* %t13
    %t10 = icmp sgt i32 %t15, 2
    br i1 %t10, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1164
    call void @P_error(i32 33)
    br label %L_endif_2
L_else_2:
    ; line 1167
    %t18 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression, %Frame_block_statement_expression_simpleexpression* %.frame, i32 0, i32 2
    %t17 = load i32, i32* %t18
    %t16 = icmp eq i32 %t17, 6
    br i1 %t16, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 1167
    call void @P_emit1(i32 36, i32 %.dummy.intrin)
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_else_1:
    ; line 1169
    %t20 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression, %Frame_block_statement_expression_simpleexpression* %.frame, i32 0, i32 1
    %t21 = load %T_item*, %T_item** %t20
    call void @P_block_statement_expression_simpleexpression_term(%Frame_block_statement_expression_simpleexpression* %.frame, %T_symset %.dummy_set, %T_item* %t21)
    br label %L_endif_1
L_endif_1:
    ; line 1170

    ; epilogue
    ret void
}


; line 1014
;================================================================================
; scope: block_statement_expression_simpleexpression_term (level : 6)

; activation record
%Frame_block_statement_expression_simpleexpression_term = type
{
    ; parameters
    %T_symset,    ; 0: fsys
    %T_item*,    ; 1: x

    ; variables
    i32,    ; 2: op
    %T_item,    ; 3: y

    ; slink
    %Frame_block_statement_expression_simpleexpression*    ; 4
};

; procedure body
define void @P_block_statement_expression_simpleexpression_term(%Frame_block_statement_expression_simpleexpression* %.slink, %T_symset %fsys, %T_item* %x)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_expression_simpleexpression_term, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term, %Frame_block_statement_expression_simpleexpression_term* %.frame, i32 0, i32 4
    store %Frame_block_statement_expression_simpleexpression* %.slink, %Frame_block_statement_expression_simpleexpression** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term, %Frame_block_statement_expression_simpleexpression_term* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2
    %t3 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term, %Frame_block_statement_expression_simpleexpression_term* %.frame, i32 0, i32 1
    store %T_item* %x, %T_item** %t3

    ; body
    ; line 1113
    %t5 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term, %Frame_block_statement_expression_simpleexpression_term* %.frame, i32 0, i32 1
    %t6 = load %T_item*, %T_item** %t5
    call void @P_block_statement_expression_simpleexpression_term_factor(%Frame_block_statement_expression_simpleexpression_term* %.frame, %T_symset %.dummy_set, %T_item* %t6)
    ; line 1114

    ; epilogue
    ret void
}


; line 1017
;================================================================================
; scope: block_statement_expression_simpleexpression_term_factor (level : 7)

; activation record
%Frame_block_statement_expression_simpleexpression_term_factor = type
{
    ; parameters
    %T_symset,    ; 0: fsys
    %T_item*,    ; 1: x

    ; variables
    i32,    ; 2: f
    i32,    ; 3: i

    ; slink
    %Frame_block_statement_expression_simpleexpression_term*    ; 4
};

; procedure body
define void @P_block_statement_expression_simpleexpression_term_factor(%Frame_block_statement_expression_simpleexpression_term* %.slink, %T_symset %fsys, %T_item* %x)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_expression_simpleexpression_term_factor, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor, %Frame_block_statement_expression_simpleexpression_term_factor* %.frame, i32 0, i32 4
    store %Frame_block_statement_expression_simpleexpression_term* %.slink, %Frame_block_statement_expression_simpleexpression_term** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor, %Frame_block_statement_expression_simpleexpression_term_factor* %.frame, i32 0, i32 0
    store %T_symset %fsys, %T_symset* %t2
    %t3 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor, %Frame_block_statement_expression_simpleexpression_term_factor* %.frame, i32 0, i32 1
    store %T_item* %x, %T_item** %t3

    ; body
    ; line 1051
    %t4 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor, %Frame_block_statement_expression_simpleexpression_term_factor* %.frame, i32 0, i32 1
    %t5 = load %T_item*, %T_item** %t4
    %t7 = getelementptr inbounds %T_item, %T_item* %t5, i32 0, i32 0
    %t6 = bitcast i8* %t7 to i32*
    store i32 0, i32* %t6
    ; line 1051
    %t8 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor, %Frame_block_statement_expression_simpleexpression_term_factor* %.frame, i32 0, i32 1
    %t9 = load %T_item*, %T_item** %t8
    %t11 = getelementptr inbounds %T_item, %T_item* %t9, i32 0, i32 4
    %t10 = bitcast i8* %t11 to i32*
    store i32 0, i32* %t10
    ; line 1052
    %t12 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor, %Frame_block_statement_expression_simpleexpression_term_factor* %.frame, i32 0, i32 4
    %t13 = load %Frame_block_statement_expression_simpleexpression_term*, %Frame_block_statement_expression_simpleexpression_term** %t12
    %t14 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term, %Frame_block_statement_expression_simpleexpression_term* %t13, i32 0, i32 4
    %t15 = load %Frame_block_statement_expression_simpleexpression*, %Frame_block_statement_expression_simpleexpression** %t14
    %t16 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression, %Frame_block_statement_expression_simpleexpression* %t15, i32 0, i32 4
    %t17 = load %Frame_block_statement_expression*, %Frame_block_statement_expression** %t16
    %t18 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %t17, i32 0, i32 4
    %t19 = load %Frame_block_statement*, %Frame_block_statement** %t18
    %t20 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t19, i32 0, i32 2
    %t21 = load %Frame_block*, %Frame_block** %t20
    %t22 = load %T_symset, %T_symset* @facbegsys
    %t24 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor, %Frame_block_statement_expression_simpleexpression_term_factor* %.frame, i32 0, i32 0
    %t23 = load %T_symset, %T_symset* %t24
    call void @P_block_test(%Frame_block* %t21, %T_symset %t22, %T_symset %t23, i32 58)
    ; line 1053

    ; epilogue
    ret void
}


; line 1020
;================================================================================
; scope: block_statement_expression_simpleexpression_term_factor_standfct (level : 8)

; activation record
%Frame_block_statement_expression_simpleexpression_term_factor_standfct = type
{
    ; parameters
    i32,    ; 0: n

    ; variables
    %T_typset,    ; 1: ts

    ; slink
    %Frame_block_statement_expression_simpleexpression_term_factor*    ; 2
};

; procedure body
define void @P_block_statement_expression_simpleexpression_term_factor_standfct(%Frame_block_statement_expression_simpleexpression_term_factor* %.slink, i32 %n)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_expression_simpleexpression_term_factor_standfct, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor_standfct, %Frame_block_statement_expression_simpleexpression_term_factor_standfct* %.frame, i32 0, i32 2
    store %Frame_block_statement_expression_simpleexpression_term_factor* %.slink, %Frame_block_statement_expression_simpleexpression_term_factor** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor_standfct, %Frame_block_statement_expression_simpleexpression_term_factor_standfct* %.frame, i32 0, i32 0
    store i32 %n, i32* %t2

    ; body
    ; line 1023
    %t4 = load i32, i32* @sy
    %t3 = icmp eq i32 %t4, 19
    br i1 %t3, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1023
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 1023
    call void @P_error(i32 9)
    br label %L_endif_1
L_endif_1:
    ; line 1024
    %t7 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor_standfct, %Frame_block_statement_expression_simpleexpression_term_factor_standfct* %.frame, i32 0, i32 0
    %t6 = load i32, i32* %t7
    %t5 = icmp slt i32 %t6, 17
    br i1 %t5, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1025
    %t8 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor_standfct, %Frame_block_statement_expression_simpleexpression_term_factor_standfct* %.frame, i32 0, i32 2
    %t9 = load %Frame_block_statement_expression_simpleexpression_term_factor*, %Frame_block_statement_expression_simpleexpression_term_factor** %t8
    %t10 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor, %Frame_block_statement_expression_simpleexpression_term_factor* %t9, i32 0, i32 4
    %t11 = load %Frame_block_statement_expression_simpleexpression_term*, %Frame_block_statement_expression_simpleexpression_term** %t10
    %t12 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term, %Frame_block_statement_expression_simpleexpression_term* %t11, i32 0, i32 4
    %t13 = load %Frame_block_statement_expression_simpleexpression*, %Frame_block_statement_expression_simpleexpression** %t12
    %t14 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression, %Frame_block_statement_expression_simpleexpression* %t13, i32 0, i32 4
    %t15 = load %Frame_block_statement_expression*, %Frame_block_statement_expression** %t14
    %t16 = getelementptr inbounds %Frame_block_statement_expression, %Frame_block_statement_expression* %t15, i32 0, i32 4
    %t17 = load %Frame_block_statement*, %Frame_block_statement** %t16
    %t20 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor_standfct, %Frame_block_statement_expression_simpleexpression_term_factor_standfct* %.frame, i32 0, i32 2
    %t21 = load %Frame_block_statement_expression_simpleexpression_term_factor*, %Frame_block_statement_expression_simpleexpression_term_factor** %t20
    %t19 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor, %Frame_block_statement_expression_simpleexpression_term_factor* %t21, i32 0, i32 1
    %t22 = load %T_item*, %T_item** %t19
    call void @P_block_statement_expression(%Frame_block_statement* %t17, %T_symset %.dummy_set, %T_item* %t22)
    ; line 1026
    ; line 1039
    br i1 true, label %L_then_3, label %L_else_3
L_then_3:
    ; line 1039
    %t25 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor_standfct, %Frame_block_statement_expression_simpleexpression_term_factor_standfct* %.frame, i32 0, i32 0
    %t24 = load i32, i32* %t25
    call void @P_emit1(i32 8, i32 %t24)
    br label %L_endif_3
L_else_3:
    ; line 1040
    %t28 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor_standfct, %Frame_block_statement_expression_simpleexpression_term_factor_standfct* %.frame, i32 0, i32 2
    %t29 = load %Frame_block_statement_expression_simpleexpression_term_factor*, %Frame_block_statement_expression_simpleexpression_term_factor** %t28
    %t27 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor, %Frame_block_statement_expression_simpleexpression_term_factor* %t29, i32 0, i32 1
    %t30 = load %T_item*, %T_item** %t27
    %t32 = getelementptr inbounds %T_item, %T_item* %t30, i32 0, i32 0
    %t31 = bitcast i8* %t32 to i32*
    %t33 = load i32, i32* %t31
    %t26 = icmp ne i32 %t33, 0
    br i1 %t26, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 1040
    call void @P_error(i32 48)
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_else_2:
    ; line 1043
    %t35 = load i32, i32* @sy
    %t34 = icmp ne i32 %t35, 36
    br i1 %t34, label %L_then_5, label %L_else_5
L_then_5:
    ; line 1043
    call void @P_error(i32 2)
    br label %L_endif_5
L_else_5:
    ; line 1044
    %t36 = call i1 @_StrcmpNE(i8* getelementptr inbounds (%T_alfa, %T_alfa* @id, i32 0, i32 0), i32 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0), i32 10)
    br i1 %t36, label %L_then_6, label %L_else_6
L_then_6:
    ; line 1044
    call void @P_error(i32 0)
    br label %L_endif_6
L_else_6:
    ; line 1044
    call void @P_insymbol()
    br label %L_endif_6
L_endif_6:
    br label %L_endif_5
L_endif_5:
    ; line 1045
    %t38 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor_standfct, %Frame_block_statement_expression_simpleexpression_term_factor_standfct* %.frame, i32 0, i32 0
    %t37 = load i32, i32* %t38
    call void @P_emit1(i32 8, i32 %t37)
    ; nop
    br label %L_endif_2
L_endif_2:
    ; line 1047
    %t40 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor_standfct, %Frame_block_statement_expression_simpleexpression_term_factor_standfct* %.frame, i32 0, i32 2
    %t41 = load %Frame_block_statement_expression_simpleexpression_term_factor*, %Frame_block_statement_expression_simpleexpression_term_factor** %t40
    %t39 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor, %Frame_block_statement_expression_simpleexpression_term_factor* %t41, i32 0, i32 1
    %t42 = load %T_item*, %T_item** %t39
    %t44 = getelementptr inbounds %T_item, %T_item* %t42, i32 0, i32 0
    %t43 = bitcast i8* %t44 to i32*
    %t47 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor_standfct, %Frame_block_statement_expression_simpleexpression_term_factor_standfct* %.frame, i32 0, i32 2
    %t48 = load %Frame_block_statement_expression_simpleexpression_term_factor*, %Frame_block_statement_expression_simpleexpression_term_factor** %t47
    %t46 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor, %Frame_block_statement_expression_simpleexpression_term_factor* %t48, i32 0, i32 3
    %t45 = load i32, i32* %t46
    %t49 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t45
    %t51 = getelementptr inbounds %T_record_19, %T_record_19* %t49, i32 0, i32 20
    %t50 = bitcast i8* %t51 to i32*
    %t52 = load i32, i32* %t50
    store i32 %t52, i32* %t43
    ; line 1048
    %t54 = load i32, i32* @sy
    %t53 = icmp eq i32 %t54, 20
    br i1 %t53, label %L_then_7, label %L_else_7
L_then_7:
    ; line 1048
    call void @P_insymbol()
    br label %L_endif_7
L_else_7:
    ; line 1048
    call void @P_error(i32 4)
    br label %L_endif_7
L_endif_7:

    ; epilogue
    ret void
}


; line 1229
;================================================================================
; scope: block_statement_assignment (level : 4)

; activation record
%Frame_block_statement_assignment = type
{
    ; parameters
    i32,    ; 0: ad
    i32,    ; 1: lv

    ; variables
    i32,    ; 2: f
    %T_item,    ; 3: x
    %T_item,    ; 4: y

    ; slink
    %Frame_block_statement*    ; 5
};

; procedure body
define void @P_block_statement_assignment(%Frame_block_statement* %.slink, i32 %lv, i32 %ad)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_assignment, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 5
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 0
    store i32 %ad, i32* %t2
    %t3 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 1
    store i32 %lv, i32* %t3

    ; body
    ; line 1232
    %t4 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 3
    %t6 = getelementptr inbounds %T_item, %T_item* %t4, i32 0, i32 0
    %t5 = bitcast i8* %t6 to i32*
    %t9 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 5
    %t10 = load %Frame_block_statement*, %Frame_block_statement** %t9
    %t8 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t10, i32 0, i32 1
    %t7 = load i32, i32* %t8
    %t11 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t7
    %t13 = getelementptr inbounds %T_record_19, %T_record_19* %t11, i32 0, i32 20
    %t12 = bitcast i8* %t13 to i32*
    %t14 = load i32, i32* %t12
    store i32 %t14, i32* %t5
    ; line 1232
    %t15 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 3
    %t17 = getelementptr inbounds %T_item, %T_item* %t15, i32 0, i32 4
    %t16 = bitcast i8* %t17 to i32*
    %t20 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 5
    %t21 = load %Frame_block_statement*, %Frame_block_statement** %t20
    %t19 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t21, i32 0, i32 1
    %t18 = load i32, i32* %t19
    %t22 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t18
    %t24 = getelementptr inbounds %T_record_19, %T_record_19* %t22, i32 0, i32 24
    %t23 = bitcast i8* %t24 to i32*
    %t25 = load i32, i32* %t23
    store i32 %t25, i32* %t16
    ; line 1233
    %t28 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 5
    %t29 = load %Frame_block_statement*, %Frame_block_statement** %t28
    %t27 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t29, i32 0, i32 1
    %t26 = load i32, i32* %t27
    %t30 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t26
    %t32 = getelementptr inbounds %T_record_19, %T_record_19* %t30, i32 0, i32 28
    %t31 = bitcast i8* %t32 to i1*
    %t33 = load i1, i1* %t31
    br i1 %t33, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1233
    %t34 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 2
    store i32 0, i32* %t34
    br label %L_endif_1
L_else_1:
    ; line 1233
    %t35 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 2
    store i32 1, i32* %t35
    br label %L_endif_1
L_endif_1:
    ; line 1234
    %t37 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 2
    %t36 = load i32, i32* %t37
    %t39 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 1
    %t38 = load i32, i32* %t39
    %t41 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 0
    %t40 = load i32, i32* %t41
    call void @P_emit2(i32 %t36, i32 %t38, i32 %t40)
    ; line 1235
    br i1 true, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1236
    %t43 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 5
    %t44 = load %Frame_block_statement*, %Frame_block_statement** %t43
    %t46 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 3
    call void @P_block_statement_selector(%Frame_block_statement* %t44, %T_symset %.dummy_set, %T_item* %t46)
    br label %L_endif_2
L_endif_2:
    ; line 1237
    %t48 = load i32, i32* @sy
    %t47 = icmp eq i32 %t48, 27
    br i1 %t47, label %L_then_3, label %L_else_3
L_then_3:
    ; line 1237
    call void @P_insymbol()
    br label %L_endif_3
L_else_3:
    ; line 1238
    call void @P_error(i32 51)
    ; line 1238
    %t50 = load i32, i32* @sy
    %t49 = icmp eq i32 %t50, 13
    br i1 %t49, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 1238
    call void @P_insymbol()
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_endif_3:
    ; line 1240
    %t51 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 5
    %t52 = load %Frame_block_statement*, %Frame_block_statement** %t51
    %t55 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 5
    %t56 = load %Frame_block_statement*, %Frame_block_statement** %t55
    %t54 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t56, i32 0, i32 0
    %t53 = load %T_symset, %T_symset* %t54
    %t57 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 4
    call void @P_block_statement_expression(%Frame_block_statement* %t52, %T_symset %t53, %T_item* %t57)
    ; line 1241
    %t59 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 3
    %t61 = getelementptr inbounds %T_item, %T_item* %t59, i32 0, i32 0
    %t60 = bitcast i8* %t61 to i32*
    %t62 = load i32, i32* %t60
    %t63 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 4
    %t65 = getelementptr inbounds %T_item, %T_item* %t63, i32 0, i32 0
    %t64 = bitcast i8* %t65 to i32*
    %t66 = load i32, i32* %t64
    %t58 = icmp eq i32 %t62, %t66
    br i1 %t58, label %L_then_5, label %L_else_5
L_then_5:
    ; line 1242
    br i1 true, label %L_then_6, label %L_else_6
L_then_6:
    ; line 1242
    call void @P_emit(i32 38)
    br label %L_endif_6
L_else_6:
    ; line 1243
    %t69 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 3
    %t71 = getelementptr inbounds %T_item, %T_item* %t69, i32 0, i32 4
    %t70 = bitcast i8* %t71 to i32*
    %t72 = load i32, i32* %t70
    %t73 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 4
    %t75 = getelementptr inbounds %T_item, %T_item* %t73, i32 0, i32 4
    %t74 = bitcast i8* %t75 to i32*
    %t76 = load i32, i32* %t74
    %t68 = icmp ne i32 %t72, %t76
    br i1 %t68, label %L_then_7, label %L_else_7
L_then_7:
    ; line 1243
    call void @P_error(i32 46)
    br label %L_endif_7
L_else_7:
    ; line 1244
    %t78 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 3
    %t80 = getelementptr inbounds %T_item, %T_item* %t78, i32 0, i32 0
    %t79 = bitcast i8* %t80 to i32*
    %t81 = load i32, i32* %t79
    %t77 = icmp eq i32 %t81, 5
    br i1 %t77, label %L_then_8, label %L_else_8
L_then_8:
    ; line 1244
    %t82 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 3
    %t84 = getelementptr inbounds %T_item, %T_item* %t82, i32 0, i32 4
    %t83 = bitcast i8* %t84 to i32*
    %t85 = load i32, i32* %t83
    %t86 = getelementptr inbounds %T_array_2, %T_array_2* @atab, i32 0, i32 %t85
    %t88 = getelementptr inbounds %T_record_3, %T_record_3* %t86, i32 0, i32 24
    %t87 = bitcast i8* %t88 to i32*
    %t89 = load i32, i32* %t87
    call void @P_emit1(i32 23, i32 %t89)
    br label %L_endif_8
L_else_8:
    ; line 1245
    %t90 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 3
    %t92 = getelementptr inbounds %T_item, %T_item* %t90, i32 0, i32 4
    %t91 = bitcast i8* %t92 to i32*
    %t93 = load i32, i32* %t91
    %t94 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 %t93
    %t96 = getelementptr inbounds %T_record_5, %T_record_5* %t94, i32 0, i32 12
    %t95 = bitcast i8* %t96 to i32*
    %t97 = load i32, i32* %t95
    call void @P_emit1(i32 23, i32 %t97)
    br label %L_endif_8
L_endif_8:
    br label %L_endif_7
L_endif_7:
    br label %L_endif_6
L_endif_6:
    br label %L_endif_5
L_else_5:
    ; line 1247
    br label %L_AND_expr_9
L_AND_expr_9:
    %t100 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 3
    %t102 = getelementptr inbounds %T_item, %T_item* %t100, i32 0, i32 0
    %t101 = bitcast i8* %t102 to i32*
    %t103 = load i32, i32* %t101
    %t99 = icmp eq i32 %t103, 2
    br i1 %t99, label %L_AND_eval_9, label %L_AND_shortcut_9
L_AND_eval_9:
    %t105 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 4
    %t107 = getelementptr inbounds %T_item, %T_item* %t105, i32 0, i32 0
    %t106 = bitcast i8* %t107 to i32*
    %t108 = load i32, i32* %t106
    %t104 = icmp eq i32 %t108, 1
    br label %L_AND_shortcut_9
L_AND_shortcut_9:
    %t98 = phi [%t104, %L_AND_eval_9], [false, %L_AND_expr_9]
    br i1 %t98, label %L_then_10, label %L_else_10
L_then_10:
    ; line 1248
    call void @P_emit1(i32 26, i32 0)
    ; line 1248
    call void @P_emit(i32 38)
    br label %L_endif_10
L_else_10:
    ; line 1250
    br label %L_AND_expr_11
L_AND_expr_11:
    %t111 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 3
    %t113 = getelementptr inbounds %T_item, %T_item* %t111, i32 0, i32 0
    %t112 = bitcast i8* %t113 to i32*
    %t114 = load i32, i32* %t112
    %t110 = icmp ne i32 %t114, 0
    br i1 %t110, label %L_AND_eval_11, label %L_AND_shortcut_11
L_AND_eval_11:
    %t116 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 4
    %t118 = getelementptr inbounds %T_item, %T_item* %t116, i32 0, i32 0
    %t117 = bitcast i8* %t118 to i32*
    %t119 = load i32, i32* %t117
    %t115 = icmp ne i32 %t119, 0
    br label %L_AND_shortcut_11
L_AND_shortcut_11:
    %t109 = phi [%t115, %L_AND_eval_11], [false, %L_AND_expr_11]
    br i1 %t109, label %L_then_12, label %L_endif_12
L_then_12:
    ; line 1250
    call void @P_error(i32 46)
    br label %L_endif_12
L_endif_12:
    br label %L_endif_10
L_endif_10:
    br label %L_endif_5
L_endif_5:

    ; epilogue
    ret void
}


; line 1253
;================================================================================
; scope: block_statement_compoundstatement (level : 4)

; activation record
%Frame_block_statement_compoundstatement = type
{
    ; slink
    %Frame_block_statement*    ; 0
};

; procedure body
define void @P_block_statement_compoundstatement(%Frame_block_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_compoundstatement, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_compoundstatement, %Frame_block_statement_compoundstatement* %.frame, i32 0, i32 0
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1

    ; body
    ; line 1254
    call void @P_insymbol()
    ; line 1255
    %t2 = getelementptr inbounds %Frame_block_statement_compoundstatement, %Frame_block_statement_compoundstatement* %.frame, i32 0, i32 0
    %t3 = load %Frame_block_statement*, %Frame_block_statement** %t2
    %t4 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t3, i32 0, i32 2
    %t5 = load %Frame_block*, %Frame_block** %t4
    call void @P_block_statement(%Frame_block* %t5, %T_symset %.dummy_set)
    ; line 1256
    ; line 1260
    %t8 = load i32, i32* @sy
    %t7 = icmp eq i32 %t8, 43
    br i1 %t7, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1260
    call void @P_insymbol()
    br label %L_endif_1
L_else_1:
    ; line 1260
    call void @P_error(i32 57)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1263
;================================================================================
; scope: block_statement_ifstatement (level : 4)

; activation record
%Frame_block_statement_ifstatement = type
{
    ; variables
    i32,    ; 0: lc1
    i32,    ; 1: lc2
    %T_item,    ; 2: x

    ; slink
    %Frame_block_statement*    ; 3
};

; procedure body
define void @P_block_statement_ifstatement(%Frame_block_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_ifstatement, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_ifstatement, %Frame_block_statement_ifstatement* %.frame, i32 0, i32 3
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1

    ; body
    ; line 1265
    call void @P_insymbol()
    ; line 1266
    %t2 = getelementptr inbounds %Frame_block_statement_ifstatement, %Frame_block_statement_ifstatement* %.frame, i32 0, i32 3
    %t3 = load %Frame_block_statement*, %Frame_block_statement** %t2
    %t5 = getelementptr inbounds %Frame_block_statement_ifstatement, %Frame_block_statement_ifstatement* %.frame, i32 0, i32 2
    call void @P_block_statement_expression(%Frame_block_statement* %t3, %T_symset %.dummy_set, %T_item* %t5)
    ; line 1267
    %t7 = icmp eq i1 0, true
    br i1 %t7, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1267
    call void @P_error(i32 17)
    br label %L_endif_1
L_endif_1:
    ; line 1268
    %t8 = getelementptr inbounds %Frame_block_statement_ifstatement, %Frame_block_statement_ifstatement* %.frame, i32 0, i32 0
    %t9 = load i32, i32* @lc
    store i32 %t9, i32* %t8
    ; line 1268
    call void @P_emit(i32 11)
    ; line 1269
    %t11 = load i32, i32* @sy
    %t10 = icmp eq i32 %t11, 50
    br i1 %t10, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1269
    call void @P_insymbol()
    br label %L_endif_2
L_else_2:
    ; line 1270
    call void @P_error(i32 52)
    ; line 1270
    %t13 = load i32, i32* @sy
    %t12 = icmp eq i32 %t13, 47
    br i1 %t12, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 1270
    call void @P_insymbol()
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    ; line 1272
    %t14 = getelementptr inbounds %Frame_block_statement_ifstatement, %Frame_block_statement_ifstatement* %.frame, i32 0, i32 3
    %t15 = load %Frame_block_statement*, %Frame_block_statement** %t14
    %t16 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t15, i32 0, i32 2
    %t17 = load %Frame_block*, %Frame_block** %t16
    call void @P_block_statement(%Frame_block* %t17, %T_symset %.dummy_set)
    ; line 1273
    %t20 = load i32, i32* @sy
    %t19 = icmp eq i32 %t20, 44
    br i1 %t19, label %L_then_4, label %L_else_4
L_then_4:
    ; line 1274
    call void @P_insymbol()
    ; line 1274
    %t21 = getelementptr inbounds %Frame_block_statement_ifstatement, %Frame_block_statement_ifstatement* %.frame, i32 0, i32 1
    %t22 = load i32, i32* @lc
    store i32 %t22, i32* %t21
    ; line 1274
    call void @P_emit(i32 10)
    ; line 1275
    %t24 = getelementptr inbounds %Frame_block_statement_ifstatement, %Frame_block_statement_ifstatement* %.frame, i32 0, i32 0
    %t23 = load i32, i32* %t24
    %t25 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t23
    %t27 = getelementptr inbounds %T_order, %T_order* %t25, i32 0, i32 8
    %t26 = bitcast i8* %t27 to i32*
    %t28 = load i32, i32* @lc
    store i32 %t28, i32* %t26
    ; line 1275
    %t29 = getelementptr inbounds %Frame_block_statement_ifstatement, %Frame_block_statement_ifstatement* %.frame, i32 0, i32 3
    %t30 = load %Frame_block_statement*, %Frame_block_statement** %t29
    %t31 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t30, i32 0, i32 2
    %t32 = load %Frame_block*, %Frame_block** %t31
    %t35 = getelementptr inbounds %Frame_block_statement_ifstatement, %Frame_block_statement_ifstatement* %.frame, i32 0, i32 3
    %t36 = load %Frame_block_statement*, %Frame_block_statement** %t35
    %t34 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t36, i32 0, i32 0
    %t33 = load %T_symset, %T_symset* %t34
    call void @P_block_statement(%Frame_block* %t32, %T_symset %t33)
    ; line 1275
    %t38 = getelementptr inbounds %Frame_block_statement_ifstatement, %Frame_block_statement_ifstatement* %.frame, i32 0, i32 1
    %t37 = load i32, i32* %t38
    %t39 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t37
    %t41 = getelementptr inbounds %T_order, %T_order* %t39, i32 0, i32 8
    %t40 = bitcast i8* %t41 to i32*
    %t42 = load i32, i32* @lc
    store i32 %t42, i32* %t40
    br label %L_endif_4
L_else_4:
    ; line 1277
    %t44 = getelementptr inbounds %Frame_block_statement_ifstatement, %Frame_block_statement_ifstatement* %.frame, i32 0, i32 0
    %t43 = load i32, i32* %t44
    %t45 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t43
    %t47 = getelementptr inbounds %T_order, %T_order* %t45, i32 0, i32 8
    %t46 = bitcast i8* %t47 to i32*
    %t48 = load i32, i32* @lc
    store i32 %t48, i32* %t46
    br label %L_endif_4
L_endif_4:

    ; epilogue
    ret void
}


; line 1280
;================================================================================
; scope: block_statement_casestatement (level : 4)

; types
%T_block_statement_casestatement_record_24 = type [8 x i8]
%T_block_statement_casestatement_array_23 = type [100 x %T_block_statement_casestatement_record_24]
%T_block_statement_casestatement_array_25 = type [100 x i32]

; activation record
%Frame_block_statement_casestatement = type
{
    ; variables
    %T_block_statement_casestatement_array_23,    ; 0: casetab
    %T_block_statement_casestatement_array_25,    ; 1: exittab
    i32,    ; 2: i
    i32,    ; 3: j
    i32,    ; 4: k
    i32,    ; 5: lc1
    %T_item,    ; 6: x

    ; slink
    %Frame_block_statement*    ; 7
};

; procedure body
define void @P_block_statement_casestatement(%Frame_block_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_casestatement, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %.frame, i32 0, i32 7
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1

    ; body
    ; line 1311
    call void @P_insymbol()
    ; line 1311
    %t2 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %.frame, i32 0, i32 2
    store i32 0, i32* %t2
    ; line 1311
    %t3 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %.frame, i32 0, i32 3
    store i32 0, i32* %t3
    ; line 1312
    %t4 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %.frame, i32 0, i32 7
    %t5 = load %Frame_block_statement*, %Frame_block_statement** %t4
    %t7 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %.frame, i32 0, i32 6
    call void @P_block_statement_expression(%Frame_block_statement* %t5, %T_symset %.dummy_set, %T_item* %t7)
    ; line 1313
    %t9 = icmp eq i1 0, true
    br i1 %t9, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1313
    call void @P_error(i32 23)
    br label %L_endif_1
L_endif_1:
    ; line 1314
    %t10 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %.frame, i32 0, i32 5
    %t11 = load i32, i32* @lc
    store i32 %t11, i32* %t10
    ; line 1314
    call void @P_emit(i32 12)
    ; line 1315
    %t13 = load i32, i32* @sy
    %t12 = icmp eq i32 %t13, 46
    br i1 %t12, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1315
    call void @P_insymbol()
    br label %L_endif_2
L_else_2:
    ; line 1315
    call void @P_error(i32 8)
    br label %L_endif_2
L_endif_2:
    ; line 1316
    call void @P_block_statement_casestatement_onecase(%Frame_block_statement_casestatement* %.frame)
    ; line 1317
    ; line 1320
    %t15 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %.frame, i32 0, i32 5
    %t14 = load i32, i32* %t15
    %t16 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t14
    %t18 = getelementptr inbounds %T_order, %T_order* %t16, i32 0, i32 8
    %t17 = bitcast i8* %t18 to i32*
    %t19 = load i32, i32* @lc
    store i32 %t19, i32* %t17
    ; line 1321
    ; line 1324
    call void @P_emit1(i32 10, i32 0)
    ; line 1325
    ; line 1326
    %t21 = load i32, i32* @sy
    %t20 = icmp eq i32 %t21, 43
    br i1 %t20, label %L_then_3, label %L_else_3
L_then_3:
    ; line 1326
    call void @P_insymbol()
    br label %L_endif_3
L_else_3:
    ; line 1326
    call void @P_error(i32 57)
    br label %L_endif_3
L_endif_3:

    ; epilogue
    ret void
}


; line 1287
;================================================================================
; scope: block_statement_casestatement_caselabel (level : 5)

; activation record
%Frame_block_statement_casestatement_caselabel = type
{
    ; variables
    i32,    ; 0: k
    %T_block_conrec,    ; 1: lab

    ; slink
    %Frame_block_statement_casestatement*    ; 2
};

; procedure body
define void @P_block_statement_casestatement_caselabel(%Frame_block_statement_casestatement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_casestatement_caselabel, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_casestatement_caselabel, %Frame_block_statement_casestatement_caselabel* %.frame, i32 0, i32 2
    store %Frame_block_statement_casestatement* %.slink, %Frame_block_statement_casestatement** %t1

    ; body
    ; line 1289
    %t2 = getelementptr inbounds %Frame_block_statement_casestatement_caselabel, %Frame_block_statement_casestatement_caselabel* %.frame, i32 0, i32 2
    %t3 = load %Frame_block_statement_casestatement*, %Frame_block_statement_casestatement** %t2
    %t4 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %t3, i32 0, i32 7
    %t5 = load %Frame_block_statement*, %Frame_block_statement** %t4
    %t6 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t5, i32 0, i32 2
    %t7 = load %Frame_block*, %Frame_block** %t6
    %t9 = getelementptr inbounds %Frame_block_statement_casestatement_caselabel, %Frame_block_statement_casestatement_caselabel* %.frame, i32 0, i32 1
    call void @P_block_constant(%Frame_block* %t7, %T_symset %.dummy_set, %T_block_conrec* %t9)
    ; line 1290
    %t11 = getelementptr inbounds %Frame_block_statement_casestatement_caselabel, %Frame_block_statement_casestatement_caselabel* %.frame, i32 0, i32 1
    %t13 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t11, i32 0, i32 0
    %t12 = bitcast i8* %t13 to i32*
    %t14 = load i32, i32* %t12
    %t16 = getelementptr inbounds %Frame_block_statement_casestatement_caselabel, %Frame_block_statement_casestatement_caselabel* %.frame, i32 0, i32 2
    %t17 = load %Frame_block_statement_casestatement*, %Frame_block_statement_casestatement** %t16
    %t15 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %t17, i32 0, i32 6
    %t19 = getelementptr inbounds %T_item, %T_item* %t15, i32 0, i32 0
    %t18 = bitcast i8* %t19 to i32*
    %t20 = load i32, i32* %t18
    %t10 = icmp ne i32 %t14, %t20
    br i1 %t10, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1290
    call void @P_error(i32 47)
    br label %L_endif_1
L_else_1:
    ; line 1291
    %t24 = getelementptr inbounds %Frame_block_statement_casestatement_caselabel, %Frame_block_statement_casestatement_caselabel* %.frame, i32 0, i32 2
    %t25 = load %Frame_block_statement_casestatement*, %Frame_block_statement_casestatement** %t24
    %t23 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %t25, i32 0, i32 2
    %t22 = load i32, i32* %t23
    %t21 = icmp eq i32 %t22, 100
    br i1 %t21, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1291
    call void @P_fatal(i32 6)
    br label %L_endif_2
L_else_2:
    ; line 1292
    %t27 = getelementptr inbounds %Frame_block_statement_casestatement_caselabel, %Frame_block_statement_casestatement_caselabel* %.frame, i32 0, i32 2
    %t28 = load %Frame_block_statement_casestatement*, %Frame_block_statement_casestatement** %t27
    %t26 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %t28, i32 0, i32 2
    %t32 = getelementptr inbounds %Frame_block_statement_casestatement_caselabel, %Frame_block_statement_casestatement_caselabel* %.frame, i32 0, i32 2
    %t33 = load %Frame_block_statement_casestatement*, %Frame_block_statement_casestatement** %t32
    %t31 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %t33, i32 0, i32 2
    %t30 = load i32, i32* %t31
    %t29 = add i32 %t30, 1
    store i32 %t29, i32* %t26
    ; line 1292
    %t34 = getelementptr inbounds %Frame_block_statement_casestatement_caselabel, %Frame_block_statement_casestatement_caselabel* %.frame, i32 0, i32 0
    store i32 0, i32* %t34
    ; line 1293
    %t36 = getelementptr inbounds %Frame_block_statement_casestatement_caselabel, %Frame_block_statement_casestatement_caselabel* %.frame, i32 0, i32 2
    %t37 = load %Frame_block_statement_casestatement*, %Frame_block_statement_casestatement** %t36
    %t35 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %t37, i32 0, i32 0
    %t40 = getelementptr inbounds %Frame_block_statement_casestatement_caselabel, %Frame_block_statement_casestatement_caselabel* %.frame, i32 0, i32 2
    %t41 = load %Frame_block_statement_casestatement*, %Frame_block_statement_casestatement** %t40
    %t39 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %t41, i32 0, i32 2
    %t38 = load i32, i32* %t39
    %t42 = getelementptr inbounds %T_block_statement_casestatement_array_23, %T_block_statement_casestatement_array_23* %t35, i32 0, i32 %t38
    %t44 = getelementptr inbounds %T_block_statement_casestatement_record_24, %T_block_statement_casestatement_record_24* %t42, i32 0, i32 0
    %t43 = bitcast i8* %t44 to i32*
    %t45 = getelementptr inbounds %Frame_block_statement_casestatement_caselabel, %Frame_block_statement_casestatement_caselabel* %.frame, i32 0, i32 1
    %t47 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t45, i32 0, i32 4
    %t46 = bitcast i8* %t47 to i32*
    %t48 = load i32, i32* %t46
    store i32 %t48, i32* %t43
    ; line 1293
    %t50 = getelementptr inbounds %Frame_block_statement_casestatement_caselabel, %Frame_block_statement_casestatement_caselabel* %.frame, i32 0, i32 2
    %t51 = load %Frame_block_statement_casestatement*, %Frame_block_statement_casestatement** %t50
    %t49 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %t51, i32 0, i32 0
    %t54 = getelementptr inbounds %Frame_block_statement_casestatement_caselabel, %Frame_block_statement_casestatement_caselabel* %.frame, i32 0, i32 2
    %t55 = load %Frame_block_statement_casestatement*, %Frame_block_statement_casestatement** %t54
    %t53 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %t55, i32 0, i32 2
    %t52 = load i32, i32* %t53
    %t56 = getelementptr inbounds %T_block_statement_casestatement_array_23, %T_block_statement_casestatement_array_23* %t49, i32 0, i32 %t52
    %t58 = getelementptr inbounds %T_block_statement_casestatement_record_24, %T_block_statement_casestatement_record_24* %t56, i32 0, i32 4
    %t57 = bitcast i8* %t58 to i32*
    %t59 = load i32, i32* @lc
    store i32 %t59, i32* %t57
    ; line 1294
    ; line 1295
    %t62 = getelementptr inbounds %Frame_block_statement_casestatement_caselabel, %Frame_block_statement_casestatement_caselabel* %.frame, i32 0, i32 0
    %t61 = load i32, i32* %t62
    %t65 = getelementptr inbounds %Frame_block_statement_casestatement_caselabel, %Frame_block_statement_casestatement_caselabel* %.frame, i32 0, i32 2
    %t66 = load %Frame_block_statement_casestatement*, %Frame_block_statement_casestatement** %t65
    %t64 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %t66, i32 0, i32 2
    %t63 = load i32, i32* %t64
    %t60 = icmp slt i32 %t61, %t63
    br i1 %t60, label %L_then_3, label %L_endif_3
L_then_3:
    ; line 1295
    call void @P_error(i32 1)
    br label %L_endif_3
L_endif_3:
    ; nop
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1299
;================================================================================
; scope: block_statement_casestatement_onecase (level : 5)

; activation record
%Frame_block_statement_casestatement_onecase = type
{
    ; slink
    %Frame_block_statement_casestatement*    ; 0
};

; procedure body
define void @P_block_statement_casestatement_onecase(%Frame_block_statement_casestatement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_casestatement_onecase, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_casestatement_onecase, %Frame_block_statement_casestatement_onecase* %.frame, i32 0, i32 0
    store %Frame_block_statement_casestatement* %.slink, %Frame_block_statement_casestatement** %t1

    ; body
    ; line 1300
    br i1 true, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1301
    %t3 = getelementptr inbounds %Frame_block_statement_casestatement_onecase, %Frame_block_statement_casestatement_onecase* %.frame, i32 0, i32 0
    %t4 = load %Frame_block_statement_casestatement*, %Frame_block_statement_casestatement** %t3
    call void @P_block_statement_casestatement_caselabel(%Frame_block_statement_casestatement* %t4)
    ; line 1302
    ; line 1305
    %t6 = load i32, i32* @sy
    %t5 = icmp eq i32 %t6, 26
    br i1 %t5, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1305
    call void @P_insymbol()
    br label %L_endif_2
L_else_2:
    ; line 1305
    call void @P_error(i32 5)
    br label %L_endif_2
L_endif_2:
    ; line 1306
    %t7 = getelementptr inbounds %Frame_block_statement_casestatement_onecase, %Frame_block_statement_casestatement_onecase* %.frame, i32 0, i32 0
    %t8 = load %Frame_block_statement_casestatement*, %Frame_block_statement_casestatement** %t7
    %t9 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %t8, i32 0, i32 7
    %t10 = load %Frame_block_statement*, %Frame_block_statement** %t9
    %t11 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t10, i32 0, i32 2
    %t12 = load %Frame_block*, %Frame_block** %t11
    call void @P_block_statement(%Frame_block* %t12, %T_symset %.dummy_set)
    ; line 1307
    %t15 = getelementptr inbounds %Frame_block_statement_casestatement_onecase, %Frame_block_statement_casestatement_onecase* %.frame, i32 0, i32 0
    %t16 = load %Frame_block_statement_casestatement*, %Frame_block_statement_casestatement** %t15
    %t14 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %t16, i32 0, i32 3
    %t20 = getelementptr inbounds %Frame_block_statement_casestatement_onecase, %Frame_block_statement_casestatement_onecase* %.frame, i32 0, i32 0
    %t21 = load %Frame_block_statement_casestatement*, %Frame_block_statement_casestatement** %t20
    %t19 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %t21, i32 0, i32 3
    %t18 = load i32, i32* %t19
    %t17 = add i32 %t18, 1
    store i32 %t17, i32* %t14
    ; line 1307
    %t23 = getelementptr inbounds %Frame_block_statement_casestatement_onecase, %Frame_block_statement_casestatement_onecase* %.frame, i32 0, i32 0
    %t24 = load %Frame_block_statement_casestatement*, %Frame_block_statement_casestatement** %t23
    %t22 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %t24, i32 0, i32 1
    %t27 = getelementptr inbounds %Frame_block_statement_casestatement_onecase, %Frame_block_statement_casestatement_onecase* %.frame, i32 0, i32 0
    %t28 = load %Frame_block_statement_casestatement*, %Frame_block_statement_casestatement** %t27
    %t26 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %t28, i32 0, i32 3
    %t25 = load i32, i32* %t26
    %t29 = getelementptr inbounds %T_block_statement_casestatement_array_25, %T_block_statement_casestatement_array_25* %t22, i32 0, i32 %t25
    %t30 = load i32, i32* @lc
    store i32 %t30, i32* %t29
    ; line 1307
    call void @P_emit(i32 10)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1329
;================================================================================
; scope: block_statement_repeatstatement (level : 4)

; activation record
%Frame_block_statement_repeatstatement = type
{
    ; variables
    i32,    ; 0: lc1
    %T_item,    ; 1: x

    ; slink
    %Frame_block_statement*    ; 2
};

; procedure body
define void @P_block_statement_repeatstatement(%Frame_block_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_repeatstatement, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_repeatstatement, %Frame_block_statement_repeatstatement* %.frame, i32 0, i32 2
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1

    ; body
    ; line 1331
    %t2 = getelementptr inbounds %Frame_block_statement_repeatstatement, %Frame_block_statement_repeatstatement* %.frame, i32 0, i32 0
    %t3 = load i32, i32* @lc
    store i32 %t3, i32* %t2
    ; line 1332
    call void @P_insymbol()
    ; line 1332
    %t4 = getelementptr inbounds %Frame_block_statement_repeatstatement, %Frame_block_statement_repeatstatement* %.frame, i32 0, i32 2
    %t5 = load %Frame_block_statement*, %Frame_block_statement** %t4
    %t6 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t5, i32 0, i32 2
    %t7 = load %Frame_block*, %Frame_block** %t6
    call void @P_block_statement(%Frame_block* %t7, %T_symset %.dummy_set)
    ; line 1333
    ; line 1337
    %t10 = load i32, i32* @sy
    %t9 = icmp eq i32 %t10, 45
    br i1 %t9, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1338
    call void @P_insymbol()
    ; line 1338
    %t11 = getelementptr inbounds %Frame_block_statement_repeatstatement, %Frame_block_statement_repeatstatement* %.frame, i32 0, i32 2
    %t12 = load %Frame_block_statement*, %Frame_block_statement** %t11
    %t15 = getelementptr inbounds %Frame_block_statement_repeatstatement, %Frame_block_statement_repeatstatement* %.frame, i32 0, i32 2
    %t16 = load %Frame_block_statement*, %Frame_block_statement** %t15
    %t14 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t16, i32 0, i32 0
    %t13 = load %T_symset, %T_symset* %t14
    %t17 = getelementptr inbounds %Frame_block_statement_repeatstatement, %Frame_block_statement_repeatstatement* %.frame, i32 0, i32 1
    call void @P_block_statement_expression(%Frame_block_statement* %t12, %T_symset %t13, %T_item* %t17)
    ; line 1339
    %t19 = icmp eq i1 0, true
    br i1 %t19, label %L_then_2, label %L_endif_2
L_then_2:
    ; line 1339
    call void @P_error(i32 17)
    br label %L_endif_2
L_endif_2:
    ; line 1340
    %t21 = getelementptr inbounds %Frame_block_statement_repeatstatement, %Frame_block_statement_repeatstatement* %.frame, i32 0, i32 0
    %t20 = load i32, i32* %t21
    call void @P_emit1(i32 11, i32 %t20)
    br label %L_endif_1
L_else_1:
    ; line 1342
    call void @P_error(i32 53)
    br label %L_endif_1
L_endif_1:

    ; epilogue
    ret void
}


; line 1345
;================================================================================
; scope: block_statement_whilestatement (level : 4)

; activation record
%Frame_block_statement_whilestatement = type
{
    ; variables
    i32,    ; 0: lc1
    i32,    ; 1: lc2
    %T_item,    ; 2: x

    ; slink
    %Frame_block_statement*    ; 3
};

; procedure body
define void @P_block_statement_whilestatement(%Frame_block_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_whilestatement, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_whilestatement, %Frame_block_statement_whilestatement* %.frame, i32 0, i32 3
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1

    ; body
    ; line 1347
    call void @P_insymbol()
    ; line 1347
    %t2 = getelementptr inbounds %Frame_block_statement_whilestatement, %Frame_block_statement_whilestatement* %.frame, i32 0, i32 0
    %t3 = load i32, i32* @lc
    store i32 %t3, i32* %t2
    ; line 1348
    %t4 = getelementptr inbounds %Frame_block_statement_whilestatement, %Frame_block_statement_whilestatement* %.frame, i32 0, i32 3
    %t5 = load %Frame_block_statement*, %Frame_block_statement** %t4
    %t7 = getelementptr inbounds %Frame_block_statement_whilestatement, %Frame_block_statement_whilestatement* %.frame, i32 0, i32 2
    call void @P_block_statement_expression(%Frame_block_statement* %t5, %T_symset %.dummy_set, %T_item* %t7)
    ; line 1349
    %t9 = icmp eq i1 0, true
    br i1 %t9, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1349
    call void @P_error(i32 17)
    br label %L_endif_1
L_endif_1:
    ; line 1350
    %t10 = getelementptr inbounds %Frame_block_statement_whilestatement, %Frame_block_statement_whilestatement* %.frame, i32 0, i32 1
    %t11 = load i32, i32* @lc
    store i32 %t11, i32* %t10
    ; line 1350
    call void @P_emit(i32 11)
    ; line 1351
    %t13 = load i32, i32* @sy
    %t12 = icmp eq i32 %t13, 47
    br i1 %t12, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1351
    call void @P_insymbol()
    br label %L_endif_2
L_else_2:
    ; line 1351
    call void @P_error(i32 54)
    br label %L_endif_2
L_endif_2:
    ; line 1352
    %t14 = getelementptr inbounds %Frame_block_statement_whilestatement, %Frame_block_statement_whilestatement* %.frame, i32 0, i32 3
    %t15 = load %Frame_block_statement*, %Frame_block_statement** %t14
    %t16 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t15, i32 0, i32 2
    %t17 = load %Frame_block*, %Frame_block** %t16
    %t20 = getelementptr inbounds %Frame_block_statement_whilestatement, %Frame_block_statement_whilestatement* %.frame, i32 0, i32 3
    %t21 = load %Frame_block_statement*, %Frame_block_statement** %t20
    %t19 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t21, i32 0, i32 0
    %t18 = load %T_symset, %T_symset* %t19
    call void @P_block_statement(%Frame_block* %t17, %T_symset %t18)
    ; line 1352
    %t23 = getelementptr inbounds %Frame_block_statement_whilestatement, %Frame_block_statement_whilestatement* %.frame, i32 0, i32 0
    %t22 = load i32, i32* %t23
    call void @P_emit1(i32 10, i32 %t22)
    ; line 1352
    %t25 = getelementptr inbounds %Frame_block_statement_whilestatement, %Frame_block_statement_whilestatement* %.frame, i32 0, i32 1
    %t24 = load i32, i32* %t25
    %t26 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t24
    %t28 = getelementptr inbounds %T_order, %T_order* %t26, i32 0, i32 8
    %t27 = bitcast i8* %t28 to i32*
    %t29 = load i32, i32* @lc
    store i32 %t29, i32* %t27

    ; epilogue
    ret void
}


; line 1355
;================================================================================
; scope: block_statement_forstatement (level : 4)

; activation record
%Frame_block_statement_forstatement = type
{
    ; variables
    i32,    ; 0: cvt
    i32,    ; 1: f
    i32,    ; 2: i
    i32,    ; 3: lc1
    i32,    ; 4: lc2
    %T_item,    ; 5: x

    ; slink
    %Frame_block_statement*    ; 6
};

; procedure body
define void @P_block_statement_forstatement(%Frame_block_statement* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_forstatement, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 6
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1

    ; body
    ; line 1358
    call void @P_insymbol()
    ; line 1359
    %t3 = load i32, i32* @sy
    %t2 = icmp eq i32 %t3, 36
    br i1 %t2, label %L_then_1, label %L_else_1
L_then_1:
    ; line 1360
    %t4 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 2
    %t5 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 6
    %t6 = load %Frame_block_statement*, %Frame_block_statement** %t5
    %t7 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t6, i32 0, i32 2
    %t8 = load %Frame_block*, %Frame_block** %t7
    %t9 = load %T_alfa, %T_alfa* @id
    %t10 = call i32 @F_block_loc(%Frame_block* %t8, %T_alfa %t9)
    store i32 %t10, i32* %t4
    ; line 1360
    call void @P_insymbol()
    ; line 1361
    %t13 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 2
    %t12 = load i32, i32* %t13
    %t11 = icmp eq i32 %t12, 0
    br i1 %t11, label %L_then_2, label %L_else_2
L_then_2:
    ; line 1361
    %t14 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 0
    store i32 1, i32* %t14
    br label %L_endif_2
L_else_2:
    ; line 1362
    %t17 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 2
    %t16 = load i32, i32* %t17
    %t18 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t16
    %t20 = getelementptr inbounds %T_record_19, %T_record_19* %t18, i32 0, i32 16
    %t19 = bitcast i8* %t20 to i32*
    %t21 = load i32, i32* %t19
    %t15 = icmp eq i32 %t21, 1
    br i1 %t15, label %L_then_3, label %L_else_3
L_then_3:
    ; line 1363
    %t22 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 0
    %t24 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 2
    %t23 = load i32, i32* %t24
    %t25 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t23
    %t27 = getelementptr inbounds %T_record_19, %T_record_19* %t25, i32 0, i32 20
    %t26 = bitcast i8* %t27 to i32*
    %t28 = load i32, i32* %t26
    store i32 %t28, i32* %t22
    ; line 1364
    %t30 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 2
    %t29 = load i32, i32* %t30
    %t31 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t29
    %t33 = getelementptr inbounds %T_record_19, %T_record_19* %t31, i32 0, i32 32
    %t32 = bitcast i8* %t33 to i32*
    %t34 = load i32, i32* %t32
    %t36 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 2
    %t35 = load i32, i32* %t36
    %t37 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t35
    %t39 = getelementptr inbounds %T_record_19, %T_record_19* %t37, i32 0, i32 36
    %t38 = bitcast i8* %t39 to i32*
    %t40 = load i32, i32* %t38
    call void @P_emit2(i32 0, i32 %t34, i32 %t40)
    ; line 1365
    %t42 = icmp eq i1 0, true
    br i1 %t42, label %L_then_4, label %L_endif_4
L_then_4:
    ; line 1366
    call void @P_error(i32 18)
    br label %L_endif_4
L_endif_4:
    br label %L_endif_3
L_else_3:
    ; line 1368
    call void @P_error(i32 37)
    ; line 1368
    %t43 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 0
    store i32 1, i32* %t43
    br label %L_endif_3
L_endif_3:
    br label %L_endif_2
L_endif_2:
    br label %L_endif_1
L_else_1:
    ; line 1370
    %t44 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 6
    %t45 = load %Frame_block_statement*, %Frame_block_statement** %t44
    %t46 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t45, i32 0, i32 2
    %t47 = load %Frame_block*, %Frame_block** %t46
    call void @P_block_skip(%Frame_block* %t47, %T_symset %.dummy_set, i32 2)
    br label %L_endif_1
L_endif_1:
    ; line 1371
    %t50 = load i32, i32* @sy
    %t49 = icmp eq i32 %t50, 27
    br i1 %t49, label %L_then_5, label %L_else_5
L_then_5:
    ; line 1372
    call void @P_insymbol()
    ; line 1372
    %t51 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 6
    %t52 = load %Frame_block_statement*, %Frame_block_statement** %t51
    %t54 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 5
    call void @P_block_statement_expression(%Frame_block_statement* %t52, %T_symset %.dummy_set, %T_item* %t54)
    ; line 1373
    %t56 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 5
    %t58 = getelementptr inbounds %T_item, %T_item* %t56, i32 0, i32 0
    %t57 = bitcast i8* %t58 to i32*
    %t59 = load i32, i32* %t57
    %t61 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 0
    %t60 = load i32, i32* %t61
    %t55 = icmp ne i32 %t59, %t60
    br i1 %t55, label %L_then_6, label %L_endif_6
L_then_6:
    ; line 1373
    call void @P_error(i32 19)
    br label %L_endif_6
L_endif_6:
    ; nop
    br label %L_endif_5
L_else_5:
    ; line 1374
    %t62 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 6
    %t63 = load %Frame_block_statement*, %Frame_block_statement** %t62
    %t64 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t63, i32 0, i32 2
    %t65 = load %Frame_block*, %Frame_block** %t64
    call void @P_block_skip(%Frame_block* %t65, %T_symset %.dummy_set, i32 51)
    br label %L_endif_5
L_endif_5:
    ; line 1375
    %t67 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 1
    store i32 14, i32* %t67
    ; line 1376
    br i1 true, label %L_then_7, label %L_else_7
L_then_7:
    ; line 1377
    %t70 = load i32, i32* @sy
    %t69 = icmp eq i32 %t70, 49
    br i1 %t69, label %L_then_8, label %L_endif_8
L_then_8:
    ; line 1377
    %t71 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 1
    store i32 16, i32* %t71
    br label %L_endif_8
L_endif_8:
    ; line 1378
    call void @P_insymbol()
    ; line 1378
    %t72 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 6
    %t73 = load %Frame_block_statement*, %Frame_block_statement** %t72
    %t75 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 5
    call void @P_block_statement_expression(%Frame_block_statement* %t73, %T_symset %.dummy_set, %T_item* %t75)
    ; line 1379
    %t77 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 5
    %t79 = getelementptr inbounds %T_item, %T_item* %t77, i32 0, i32 0
    %t78 = bitcast i8* %t79 to i32*
    %t80 = load i32, i32* %t78
    %t82 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 0
    %t81 = load i32, i32* %t82
    %t76 = icmp ne i32 %t80, %t81
    br i1 %t76, label %L_then_9, label %L_endif_9
L_then_9:
    ; line 1379
    call void @P_error(i32 19)
    br label %L_endif_9
L_endif_9:
    br label %L_endif_7
L_else_7:
    ; line 1380
    %t83 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 6
    %t84 = load %Frame_block_statement*, %Frame_block_statement** %t83
    %t85 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t84, i32 0, i32 2
    %t86 = load %Frame_block*, %Frame_block** %t85
    call void @P_block_skip(%Frame_block* %t86, %T_symset %.dummy_set, i32 55)
    br label %L_endif_7
L_endif_7:
    ; line 1381
    %t88 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 3
    %t89 = load i32, i32* @lc
    store i32 %t89, i32* %t88
    ; line 1381
    %t91 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 1
    %t90 = load i32, i32* %t91
    call void @P_emit(i32 %t90)
    ; line 1382
    %t93 = load i32, i32* @sy
    %t92 = icmp eq i32 %t93, 47
    br i1 %t92, label %L_then_10, label %L_else_10
L_then_10:
    ; line 1382
    call void @P_insymbol()
    br label %L_endif_10
L_else_10:
    ; line 1382
    call void @P_error(i32 54)
    br label %L_endif_10
L_endif_10:
    ; line 1383
    %t94 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 4
    %t95 = load i32, i32* @lc
    store i32 %t95, i32* %t94
    ; line 1383
    %t96 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 6
    %t97 = load %Frame_block_statement*, %Frame_block_statement** %t96
    %t98 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t97, i32 0, i32 2
    %t99 = load %Frame_block*, %Frame_block** %t98
    %t102 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 6
    %t103 = load %Frame_block_statement*, %Frame_block_statement** %t102
    %t101 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t103, i32 0, i32 0
    %t100 = load %T_symset, %T_symset* %t101
    call void @P_block_statement(%Frame_block* %t99, %T_symset %t100)
    ; line 1384
    %t106 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 1
    %t105 = load i32, i32* %t106
    %t104 = add i32 %t105, 1
    %t108 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 4
    %t107 = load i32, i32* %t108
    call void @P_emit1(i32 %t104, i32 %t107)
    ; line 1384
    %t110 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 3
    %t109 = load i32, i32* %t110
    %t111 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t109
    %t113 = getelementptr inbounds %T_order, %T_order* %t111, i32 0, i32 8
    %t112 = bitcast i8* %t113 to i32*
    %t114 = load i32, i32* @lc
    store i32 %t114, i32* %t112

    ; epilogue
    ret void
}


; line 1387
;================================================================================
; scope: block_statement_standproc (level : 4)

; activation record
%Frame_block_statement_standproc = type
{
    ; parameters
    i32,    ; 0: n

    ; variables
    i32,    ; 1: f
    i32,    ; 2: i
    %T_item,    ; 3: x
    %T_item,    ; 4: y

    ; slink
    %Frame_block_statement*    ; 5
};

; procedure body
define void @P_block_statement_standproc(%Frame_block_statement* %.slink, i32 %n)
{
    ; allocate frame
    %.frame = alloca %Frame_block_statement_standproc, align 8
    %t1 = getelementptr inbounds %Frame_block_statement_standproc, %Frame_block_statement_standproc* %.frame, i32 0, i32 5
    store %Frame_block_statement* %.slink, %Frame_block_statement** %t1
    %t2 = getelementptr inbounds %Frame_block_statement_standproc, %Frame_block_statement_standproc* %.frame, i32 0, i32 0
    store i32 %n, i32* %t2

    ; body
    ; line 1391

    ; epilogue
    ret void
}


; line 1515
;================================================================================
; scope: interpret (level : 2)

; types
%T_interpret_array_27 = type [100 x i32]
%T_interpret_array_28 = type [4 x i32]
%T_interpret_record_30 = type [8 x i8]
%T_interpret_array_29 = type [10000 x %T_interpret_record_30]

; activation record
%Frame_interpret = type
{
    ; variables
    i32,    ; 0: b
    i32,    ; 1: blkcnt
    i32,    ; 2: chrcnt
    %T_interpret_array_27,    ; 3: display
    %T_interpret_array_28,    ; 4: fld
    i32,    ; 5: h1
    i32,    ; 6: h2
    i32,    ; 7: h3
    i32,    ; 8: h4
    %T_order,    ; 9: ir
    i32,    ; 10: lncnt
    i32,    ; 11: ocnt
    i32,    ; 12: pc
    i32,    ; 13: ps
    %T_interpret_array_29,    ; 14: s
    i32,    ; 15: t

    ; dummy
    i8*
};

; procedure body
define void @P_interpret()
{
    ; allocate frame
    %.frame = alloca %Frame_interpret, align 8

    ; body
    ; line 1538
    %t1 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 14
    %t2 = getelementptr inbounds %T_interpret_array_29, %T_interpret_array_29* %t1, i32 0, i32 1
    %t4 = getelementptr inbounds %T_interpret_record_30, %T_interpret_record_30* %t2, i32 0, i32 0
    %t3 = bitcast i8* %t4 to i32*
    store i32 0, i32* %t3
    ; line 1538
    %t5 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 14
    %t6 = getelementptr inbounds %T_interpret_array_29, %T_interpret_array_29* %t5, i32 0, i32 2
    %t8 = getelementptr inbounds %T_interpret_record_30, %T_interpret_record_30* %t6, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i32*
    store i32 0, i32* %t7
    ; line 1538
    %t9 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 14
    %t10 = getelementptr inbounds %T_interpret_array_29, %T_interpret_array_29* %t9, i32 0, i32 3
    %t12 = getelementptr inbounds %T_interpret_record_30, %T_interpret_record_30* %t10, i32 0, i32 0
    %t11 = bitcast i8* %t12 to i32*
    %t13 = sub i32 0, 1
    store i32 %t13, i32* %t11
    ; line 1538
    %t14 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 14
    %t15 = getelementptr inbounds %T_interpret_array_29, %T_interpret_array_29* %t14, i32 0, i32 4
    %t17 = getelementptr inbounds %T_interpret_record_30, %T_interpret_record_30* %t15, i32 0, i32 0
    %t16 = bitcast i8* %t17 to i32*
    %t18 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 1
    %t20 = getelementptr inbounds %T_record_5, %T_record_5* %t18, i32 0, i32 0
    %t19 = bitcast i8* %t20 to i32*
    %t21 = load i32, i32* %t19
    store i32 %t21, i32* %t16
    ; line 1539
    %t22 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 0
    store i32 0, i32* %t22
    ; line 1539
    %t23 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 3
    %t24 = getelementptr inbounds %T_interpret_array_27, %T_interpret_array_27* %t23, i32 0, i32 1
    store i32 0, i32* %t24
    ; line 1540
    %t25 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 15
    %t27 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 2
    %t29 = getelementptr inbounds %T_record_5, %T_record_5* %t27, i32 0, i32 12
    %t28 = bitcast i8* %t29 to i32*
    %t30 = load i32, i32* %t28
    %t26 = sub i32 %t30, 1
    store i32 %t26, i32* %t25
    ; line 1540
    %t31 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 12
    %t32 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 14
    %t33 = getelementptr inbounds %T_interpret_array_29, %T_interpret_array_29* %t32, i32 0, i32 4
    %t35 = getelementptr inbounds %T_interpret_record_30, %T_interpret_record_30* %t33, i32 0, i32 0
    %t34 = bitcast i8* %t35 to i32*
    %t36 = load i32, i32* %t34
    %t37 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t36
    %t39 = getelementptr inbounds %T_record_19, %T_record_19* %t37, i32 0, i32 36
    %t38 = bitcast i8* %t39 to i32*
    %t40 = load i32, i32* %t38
    store i32 %t40, i32* %t31
    ; line 1541
    %t41 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 13
    store i32 0, i32* %t41
    ; line 1542
    %t42 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 10
    store i32 0, i32* %t42
    ; line 1542
    %t43 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 11
    store i32 0, i32* %t43
    ; line 1542
    %t44 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 2
    store i32 0, i32* %t44
    ; line 1543
    %t45 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 4
    %t46 = getelementptr inbounds %T_interpret_array_28, %T_interpret_array_28* %t45, i32 0, i32 1
    store i32 10, i32* %t46
    ; line 1543
    %t47 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 4
    %t48 = getelementptr inbounds %T_interpret_array_28, %T_interpret_array_28* %t47, i32 0, i32 2
    store i32 22, i32* %t48
    ; line 1543
    %t49 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 4
    %t50 = getelementptr inbounds %T_interpret_array_28, %T_interpret_array_28* %t49, i32 0, i32 3
    store i32 10, i32* %t50
    ; line 1543
    %t51 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 4
    %t52 = getelementptr inbounds %T_interpret_array_28, %T_interpret_array_28* %t51, i32 0, i32 4
    store i32 1, i32* %t52
    ; line 1544
    ; line 1794
    %t55 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 13
    %t54 = load i32, i32* %t55
    %t53 = icmp ne i32 %t54, 1
    br i1 %t53, label %L_then_1, label %L_endif_1
L_then_1:
    ; line 1795
    %t56 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t56)
    ; line 1797
    %t57 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t57, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i32 0, i32 0), i32 7)
    %t59 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 12
    %t58 = load i32, i32* %t59
    call void @_WriteInteger(i8* %t57, i32 5, i32 0, i32 %t58)
    call void @_WriteString(i8* %t57, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.126, i32 0, i32 0), i32 12)
    ; line 1798
    %t60 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t60)
    ; line 1799
    ; line 1808
    %t61 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 5
    %t63 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 0
    %t62 = load i32, i32* %t63
    store i32 %t62, i32* %t61
    ; line 1808
    %t64 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 1
    store i32 10, i32* %t64
    ; line 1809
    ; nop
    br label %L_endif_1
L_endif_1:
    ; line 1832
    %t65 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t65)
    ; line 1832
    %t66 = load %T_text, %T_text* @output
    %t68 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 11
    %t67 = load i32, i32* %t68
    call void @_WriteInteger(i8* %t66, i32 0, i32 0, i32 %t67)
    call void @_WriteString(i8* %t66, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t66)

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.110 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c" (eof) \00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c" (eor) \00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c" ****\00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c" because of \00", align 1
@.str.118 = private unnamed_addr constant [21 x i8] c" compiler table for \00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c" input data missing\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c" is too small\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c" key words\00", align 1
@.str.109 = private unnamed_addr constant [20 x i8] c" program incomplete\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c" steps\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"(         \00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c")         \00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c".         \00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"..        \00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c":         \00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c":=        \00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c";         \00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"=         \00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Pascal-S compiler/interpreter\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"[         \00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"]         \00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"abs       \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"and       \00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"arctan    \00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"arith type\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"array     \00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"arrays    \00", align 1
@.str.122 = private unnamed_addr constant [45 x i8] c"arrays    xtyp etyp eref  low high elsz size\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"begin     \00", align 1
@.str.121 = private unnamed_addr constant [30 x i8] c"blocks    last lpar psze vsze\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"boole type\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"boolean   \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"case      \00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"char      \00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"character \00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"chr       \00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"code      \00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"code:\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"const     \00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"const id  \00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"constant  \00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"convar typ\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"cos       \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"div       \00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"do        \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"downto    \00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"else      \00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"end       \00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"eof       \00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"eoln      \00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"exp       \00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"factor    \00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"false     \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"for       \00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"func. type\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"function  \00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"halt at\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"id, array \00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"ident, var\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.120 = private unnamed_addr constant [51 x i8] c"identifiers     link  obj  typ  ref  nrm  lev  adr\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"if        \00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"index type\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"indexbound\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"input     \00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"integer   \00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"levels    \00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"ln        \00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"mod       \00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"multi def \00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"no array  \00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"no record \00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"no.of pars\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"not       \00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"odd       \00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"of        \00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"or        \00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"ord       \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"param type\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"pred      \00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"procedure \00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"procedures\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"prog.param\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"program   \00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"read      \00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"readln    \00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"real      \00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"real type \00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"reals     \00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"record    \00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"repeat    \00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"round     \00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"sin       \00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"sqr       \00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"sqrt      \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"srcfil\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"store ovfl\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"string    \00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"strings   \00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"succ      \00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"syntax    \00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"test0     \00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"then      \00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"to        \00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"to downto \00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"too big   \00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"true      \00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"trunc     \00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"typ (case)\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"type      \00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"type id   \00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"types     \00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"types (:=)\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"undef id  \00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"undef type\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"until     \00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"var       \00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"var, const\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"var, proc \00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"variab id \00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"while     \00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"write     \00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"writeln   \00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!139}
!llvm.module.flags = !{!140, !141}
!llvm.ident = !{!138}

!0 = !DIFile(filename: "pascal-s.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DICompositeType(tag: DW_TAG_array_type, name: "alfa", file: !0, line: 209, baseType: !2, size: 80, elements: !10)
!9 = !DISubrange(count: 10)
!10 = !{!9}
!11 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!12 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!13 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 253, baseType: !14, size: 22400, elements: !25)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 254, size: 224, flags: DIFlagTypePassByValue, elements: !23)
!15 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "inxtyp", scope: !14, file: !0, line: 255, baseType: !12, size: 32, offset: 0)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "eltyp", scope: !14, file: !0, line: 255, baseType: !12, size: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "elref", scope: !14, file: !0, line: 256, baseType: !15, size: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !14, file: !0, line: 256, baseType: !15, size: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !14, file: !0, line: 256, baseType: !15, size: 32, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "elsize", scope: !14, file: !0, line: 256, baseType: !15, size: 32, offset: 160)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !14, file: !0, line: 256, baseType: !15, size: 32, offset: 192)
!23 = !{!16,!17,!18,!19,!20,!21,!22}
!24 = !DISubrange(count: 100)
!25 = !{!24}
!26 = !DICompositeType(tag: DW_TAG_array_type, name: "symset", file: !0, line: 212, baseType: !29, size: 64, elements: !28)
!27 = !DISubrange(count: 51)
!28 = !{!27}
!29 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!30 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 258, baseType: !31, size: 12800, elements: !38)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 259, size: 128, flags: DIFlagTypePassByValue, elements: !36)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !31, file: !0, line: 260, baseType: !15, size: 32, offset: 0)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "lastpar", scope: !31, file: !0, line: 260, baseType: !15, size: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "psize", scope: !31, file: !0, line: 260, baseType: !15, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "vsize", scope: !31, file: !0, line: 260, baseType: !15, size: 32, offset: 96)
!36 = !{!32,!33,!34,!35}
!37 = !DISubrange(count: 100)
!38 = !{!37}
!39 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 264, baseType: !40, size: 960096, elements: !49)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "order", file: !0, line: 217, size: 96, flags: DIFlagTypePassByValue, elements: !47)
!41 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!42 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!43 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !40, file: !0, line: 218, baseType: !41, size: 32, offset: 0)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !40, file: !0, line: 219, baseType: !42, size: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !40, file: !0, line: 220, baseType: !43, size: 32, offset: 64)
!47 = !{!44,!45,!46}
!48 = !DISubrange(count: 10001)
!49 = !{!48}
!50 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 244, baseType: !3, size: 3232, elements: !52)
!51 = !DISubrange(count: 101)
!52 = !{!51}
!53 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 233, baseType: !56, size: 64, elements: !55)
!54 = !DISubrange(count: 59)
!55 = !{!54}
!56 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!57 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "item", file: !0, line: 214, size: 64, flags: DIFlagTypePassByValue, elements: !61)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "typ", scope: !58, file: !0, line: 215, baseType: !12, size: 32, offset: 0)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !58, file: !0, line: 215, baseType: !15, size: 32, offset: 32)
!61 = !{!59,!60}
!62 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 238, baseType: !8, size: 2160, elements: !64)
!63 = !DISubrange(count: 27)
!64 = !{!63}
!65 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 239, baseType: !11, size: 864, elements: !67)
!66 = !DISubrange(count: 27)
!67 = !{!66}
!68 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 229, baseType: !2, size: 2000, elements: !70)
!69 = !DISubrange(count: 250)
!70 = !{!69}
!71 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 263, baseType: !6, size: 6400, elements: !73)
!72 = !DISubrange(count: 100)
!73 = !{!72}
!74 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 240, baseType: !11, size: 8192, elements: !76)
!75 = !DISubrange(count: 256)
!76 = !{!75}
!77 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 262, baseType: !2, size: 80008, elements: !79)
!78 = !DISubrange(count: 10001)
!79 = !{!78}
!80 = !DICompositeType(tag: DW_TAG_array_type, name: "typset", file: !0, line: 213, baseType: !83, size: 32, elements: !82)
!81 = !DISubrange(count: 7)
!82 = !{!81}
!83 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!84 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 246, baseType: !85, size: 320320, elements: !97)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 247, size: 320, flags: DIFlagTypePassByValue, elements: !95)
!86 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !85, file: !0, line: 248, baseType: !8, size: 80, offset: 0)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !85, file: !0, line: 248, baseType: !15, size: 32, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !85, file: !0, line: 249, baseType: !57, size: 32, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "typ", scope: !85, file: !0, line: 249, baseType: !12, size: 32, offset: 160)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !85, file: !0, line: 250, baseType: !15, size: 32, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "normal", scope: !85, file: !0, line: 250, baseType: !1, size: 8, offset: 224)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "lev", scope: !85, file: !0, line: 251, baseType: !86, size: 32, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "adr", scope: !85, file: !0, line: 251, baseType: !3, size: 32, offset: 288)
!95 = !{!87,!88,!89,!90,!91,!92,!93,!94}
!96 = !DISubrange(count: 1001)
!97 = !{!96}
!98 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 270, baseType: !8, size: 4720, elements: !100)
!99 = !DISubrange(count: 59)
!100 = !{!99}
!101 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 339, baseType: !8, size: 560, elements: !103)
!102 = !DISubrange(count: 7)
!103 = !{!102}
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conrec", file: !0, line: 576, size: 192, flags: DIFlagTypePassByValue, elements: !108)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !104, file: !0, line: 576, baseType: !12, size: 32, offset: 0)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !104, file: !0, line: 577, baseType: !3, size: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !104, file: !0, line: 578, baseType: !6, size: 64, offset: 64)
!108 = !{!105,!106,!107}
!109 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 1283, baseType: !110, size: 6400, elements: !115)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 1284, size: 64, flags: DIFlagTypePassByValue, elements: !113)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !110, file: !0, line: 1284, baseType: !15, size: 32, offset: 0)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !110, file: !0, line: 1284, baseType: !15, size: 32, offset: 32)
!113 = !{!111,!112}
!114 = !DISubrange(count: 100)
!115 = !{!114}
!116 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 1285, baseType: !3, size: 3200, elements: !118)
!117 = !DISubrange(count: 100)
!118 = !{!117}
!119 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!120 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 1527, baseType: !3, size: 3200, elements: !122)
!121 = !DISubrange(count: 100)
!122 = !{!121}
!123 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 1525, baseType: !3, size: 128, elements: !125)
!124 = !DISubrange(count: 4)
!125 = !{!124}
!126 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 1528, baseType: !127, size: 640000, elements: !134)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 1529, size: 64, flags: DIFlagTypePassByValue, elements: !132)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !127, file: !0, line: 1530, baseType: !3, size: 32, offset: 0)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !127, file: !0, line: 1531, baseType: !6, size: 64, offset: 0)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !127, file: !0, line: 1532, baseType: !1, size: 8, offset: 0)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !127, file: !0, line: 1533, baseType: !2, size: 8, offset: 0)
!132 = !{!128,!129,!130,!131}
!133 = !DISubrange(count: 10000)
!134 = !{!133}
!135 = !{!1,!2,!3,!4,!5,!6,!7,!8,!11,!12,!13,!14,!15,!26,!30,!31,!39,!40,!41,!42,!43,!50,!53,!57,!58,!62,!65,!68,!71,!74,!77,!80,!84,!85,!86,!98,!101,!104,!109,!110,!116,!119,!120,!123,!126,!127}
!136 = !{}
!137 = !{}
!138 = !{!"LPC 1.1"}
!139 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !136, retainedTypes: !135, globals: !137, nameTableKind: None)
!140 = !{i32 2, !"CodeView", i32 1}
!141 = !{i32 2, !"Debug Info Version", i32 3}

