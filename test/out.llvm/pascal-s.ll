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
    %t75 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 1
    %t77 = getelementptr inbounds %T_record_5, %T_record_5* %t75, i32 0, i32 0
    %t76 = bitcast i8* %t77 to i32*
    %t78 = load i32, i32* @t
    store i32 %t78, i32* %t76
    ; line 1938
    %t79 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 1
    %t81 = getelementptr inbounds %T_record_5, %T_record_5* %t79, i32 0, i32 4
    %t80 = bitcast i8* %t81 to i32*
    store i32 1, i32* %t80
    ; line 1938
    %t82 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 1
    %t84 = getelementptr inbounds %T_record_5, %T_record_5* %t82, i32 0, i32 8
    %t83 = bitcast i8* %t84 to i32*
    store i32 0, i32* %t83
    ; line 1938
    %t85 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 1
    %t87 = getelementptr inbounds %T_record_5, %T_record_5* %t85, i32 0, i32 12
    %t86 = bitcast i8* %t87 to i32*
    store i32 0, i32* %t86
    ; line 1941
    call void @P_block(%T_symset true, i1 0, i32 1)
    ; line 1942
    ; line 1943
    call void @P_emit(i32 31)
    ; line 1944
    ; line 1945
    ; line 1947
    br label %L_99
L_99:
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
    ; line 273
    %t1 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t2 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t1, i32 0, i32 0
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), %T_alfa* %t2
    ; line 273
    %t3 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t4 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t3, i32 0, i32 1
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), %T_alfa* %t4
    ; line 274
    %t5 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t6 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t5, i32 0, i32 2
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), %T_alfa* %t6
    ; line 274
    %t7 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t8 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t7, i32 0, i32 3
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), %T_alfa* %t8
    ; line 275
    %t9 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t10 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t9, i32 0, i32 4
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), %T_alfa* %t10
    ; line 275
    %t11 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t12 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t11, i32 0, i32 5
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), %T_alfa* %t12
    ; line 276
    %t13 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t14 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t13, i32 0, i32 6
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), %T_alfa* %t14
    ; line 276
    %t15 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t16 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t15, i32 0, i32 7
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), %T_alfa* %t16
    ; line 277
    %t17 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t18 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t17, i32 0, i32 8
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), %T_alfa* %t18
    ; line 277
    %t19 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t20 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t19, i32 0, i32 9
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), %T_alfa* %t20
    ; line 278
    %t21 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t22 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t21, i32 0, i32 10
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), %T_alfa* %t22
    ; line 278
    %t23 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t24 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t23, i32 0, i32 11
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), %T_alfa* %t24
    ; line 279
    %t25 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t26 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t25, i32 0, i32 12
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0), %T_alfa* %t26
    ; line 279
    %t27 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t28 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t27, i32 0, i32 13
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), %T_alfa* %t28
    ; line 280
    %t29 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t30 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t29, i32 0, i32 14
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), %T_alfa* %t30
    ; line 280
    %t31 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t32 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t31, i32 0, i32 15
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), %T_alfa* %t32
    ; line 281
    %t33 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t34 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t33, i32 0, i32 16
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0), %T_alfa* %t34
    ; line 281
    %t35 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t36 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t35, i32 0, i32 17
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), %T_alfa* %t36
    ; line 282
    %t37 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t38 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t37, i32 0, i32 18
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), %T_alfa* %t38
    ; line 282
    %t39 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t40 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t39, i32 0, i32 19
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %T_alfa* %t40
    ; line 283
    %t41 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t42 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t41, i32 0, i32 20
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0), %T_alfa* %t42
    ; line 283
    %t43 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t44 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t43, i32 0, i32 21
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), %T_alfa* %t44
    ; line 284
    %t45 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t46 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t45, i32 0, i32 22
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), %T_alfa* %t46
    ; line 284
    %t47 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t48 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t47, i32 0, i32 23
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), %T_alfa* %t48
    ; line 285
    %t49 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t50 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t49, i32 0, i32 24
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), %T_alfa* %t50
    ; line 285
    %t51 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t52 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t51, i32 0, i32 25
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), %T_alfa* %t52
    ; line 286
    %t53 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t54 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t53, i32 0, i32 26
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i32 0, i32 0), %T_alfa* %t54
    ; line 286
    %t55 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t56 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t55, i32 0, i32 27
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0), %T_alfa* %t56
    ; line 287
    %t57 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t58 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t57, i32 0, i32 28
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0), %T_alfa* %t58
    ; line 287
    %t59 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t60 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t59, i32 0, i32 29
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0), %T_alfa* %t60
    ; line 288
    %t61 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t62 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t61, i32 0, i32 30
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0), %T_alfa* %t62
    ; line 288
    %t63 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t64 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t63, i32 0, i32 31
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0), %T_alfa* %t64
    ; line 289
    %t65 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t66 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t65, i32 0, i32 32
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), %T_alfa* %t66
    ; line 289
    %t67 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t68 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t67, i32 0, i32 33
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0), %T_alfa* %t68
    ; line 290
    %t69 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t70 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t69, i32 0, i32 34
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), %T_alfa* %t70
    ; line 290
    %t71 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t72 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t71, i32 0, i32 35
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.90, i32 0, i32 0), %T_alfa* %t72
    ; line 291
    %t73 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t74 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t73, i32 0, i32 36
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i32 0, i32 0), %T_alfa* %t74
    ; line 291
    %t75 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t76 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t75, i32 0, i32 37
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i32 0, i32 0), %T_alfa* %t76
    ; line 292
    %t77 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t78 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t77, i32 0, i32 38
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i32 0, i32 0), %T_alfa* %t78
    ; line 292
    %t79 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t80 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t79, i32 0, i32 39
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.94, i32 0, i32 0), %T_alfa* %t80
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
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i32 0, i32 0), %T_alfa* %t86
    ; line 294
    %t87 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t88 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t87, i32 0, i32 43
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), %T_alfa* %t88
    ; line 295
    %t89 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t90 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t89, i32 0, i32 44
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.96, i32 0, i32 0), %T_alfa* %t90
    ; line 295
    %t91 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t92 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t91, i32 0, i32 45
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0), %T_alfa* %t92
    ; line 296
    %t93 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t94 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t93, i32 0, i32 46
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i32 0, i32 0), %T_alfa* %t94
    ; line 296
    %t95 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t96 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t95, i32 0, i32 47
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), %T_alfa* %t96
    ; line 297
    %t97 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t98 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t97, i32 0, i32 48
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), %T_alfa* %t98
    ; line 297
    %t99 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t100 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t99, i32 0, i32 49
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), %T_alfa* %t100
    ; line 298
    %t101 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t102 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t101, i32 0, i32 50
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), %T_alfa* %t102
    ; line 298
    %t103 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 1
    %t104 = getelementptr inbounds %T_errormsg_array_21, %T_errormsg_array_21* %t103, i32 0, i32 51
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), %T_alfa* %t104
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
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i32 0, i32 0), %T_alfa* %t112
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
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i32 0, i32 0), %T_alfa* %t118
    ; line 303
    %t119 = getelementptr inbounds %Frame_errormsg, %Frame_errormsg* %.frame, i32 0, i32 0
    store i32 0, i32* %t119
    ; line 303
    %t120 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t120)
    ; line 303
    %t121 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t121, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.104, i32 0, i32 0), i32 10)
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
    ; line 327
    %t2 = load i32, i32* @cc
    %t1 = add i32 %t2, 1
    store i32 %t1, i32* @cc
    ; line 327
    %t3 = load i32, i32* @cc
    %t4 = getelementptr inbounds %T_array_14, %T_array_14* @line, i32 0, i32 %t3
    %t5 = load i8, i8* %t4
    store i8 %t5, i8* @ch
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
    ; line 332

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
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), %T_alfa* %t4
    ; line 341
    %t5 = getelementptr inbounds %Frame_fatal, %Frame_fatal* %.frame, i32 0, i32 1
    %t6 = getelementptr inbounds %T_fatal_array_22, %T_fatal_array_22* %t5, i32 0, i32 2
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), %T_alfa* %t6
    ; line 342
    %t7 = getelementptr inbounds %Frame_fatal, %Frame_fatal* %.frame, i32 0, i32 1
    %t8 = getelementptr inbounds %T_fatal_array_22, %T_fatal_array_22* %t7, i32 0, i32 3
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0), %T_alfa* %t8
    ; line 342
    %t9 = getelementptr inbounds %Frame_fatal, %Frame_fatal* %.frame, i32 0, i32 1
    %t10 = getelementptr inbounds %T_fatal_array_22, %T_fatal_array_22* %t9, i32 0, i32 4
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0), %T_alfa* %t10
    ; line 343
    %t11 = getelementptr inbounds %Frame_fatal, %Frame_fatal* %.frame, i32 0, i32 1
    %t12 = getelementptr inbounds %T_fatal_array_22, %T_fatal_array_22* %t11, i32 0, i32 5
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.108, i32 0, i32 0), %T_alfa* %t12
    ; line 343
    %t13 = getelementptr inbounds %Frame_fatal, %Frame_fatal* %.frame, i32 0, i32 1
    %t14 = getelementptr inbounds %T_fatal_array_22, %T_fatal_array_22* %t13, i32 0, i32 6
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.109, i32 0, i32 0), %T_alfa* %t14
    ; line 344
    %t15 = getelementptr inbounds %Frame_fatal, %Frame_fatal* %.frame, i32 0, i32 1
    %t16 = getelementptr inbounds %T_fatal_array_22, %T_fatal_array_22* %t15, i32 0, i32 7
    store %T_alfa getelementptr inbounds ([11 x i8], [11 x i8]* @.str.110, i32 0, i32 0), %T_alfa* %t16
    ; line 345
    %t17 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t17, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.111, i32 0, i32 0), i32 20)
    %t18 = getelementptr inbounds %Frame_fatal, %Frame_fatal* %.frame, i32 0, i32 1
    %t20 = getelementptr inbounds %Frame_fatal, %Frame_fatal* %.frame, i32 0, i32 0
    %t19 = load i32, i32* %t20
    %t21 = getelementptr inbounds %T_fatal_array_22, %T_fatal_array_22* %t18, i32 0, i32 %t19
    call void @_WriteString(i8* %t17, i32 0, i32 0, i8* getelementptr inbounds (%T_alfa, %T_alfa* %t21, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t17, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0), i32 13)
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
    ; line 358
    ; line 361
    %t5 = getelementptr inbounds %Frame_insymbol_readscale, %Frame_insymbol_readscale* %.frame, i32 0, i32 2
    %t6 = load %Frame_insymbol*, %Frame_insymbol** %t5
    %t4 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %t6, i32 0, i32 0
    %t10 = getelementptr inbounds %Frame_insymbol_readscale, %Frame_insymbol_readscale* %.frame, i32 0, i32 0
    %t9 = load i32, i32* %t10
    %t12 = getelementptr inbounds %Frame_insymbol_readscale, %Frame_insymbol_readscale* %.frame, i32 0, i32 1
    %t11 = load i32, i32* %t12
    %t8 = mul i32 %t9, %t11
    %t15 = getelementptr inbounds %Frame_insymbol_readscale, %Frame_insymbol_readscale* %.frame, i32 0, i32 2
    %t16 = load %Frame_insymbol*, %Frame_insymbol** %t15
    %t14 = getelementptr inbounds %Frame_insymbol, %Frame_insymbol* %t16, i32 0, i32 0
    %t13 = load i32, i32* %t14
    %t7 = add i32 %t8, %t13
    store i32 %t7, i32* %t4

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
    ; line 489
    ; line 492

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
    ; line 516
    %t2 = load i32, i32* @lc
    %t3 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t2
    %t5 = getelementptr inbounds %T_order, %T_order* %t3, i32 0, i32 0
    %t4 = bitcast i8* %t5 to i32*
    %t7 = getelementptr inbounds %Frame_emit, %Frame_emit* %.frame, i32 0, i32 0
    %t6 = load i32, i32* %t7
    store i32 %t6, i32* %t4
    ; line 516
    %t9 = load i32, i32* @lc
    %t8 = add i32 %t9, 1
    store i32 %t8, i32* @lc

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
    ; line 522
    %t3 = load i32, i32* @lc
    %t4 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t3
    %t6 = getelementptr inbounds %T_order, %T_order* %t4, i32 0, i32 0
    %t5 = bitcast i8* %t6 to i32*
    %t8 = getelementptr inbounds %Frame_emit1, %Frame_emit1* %.frame, i32 0, i32 1
    %t7 = load i32, i32* %t8
    store i32 %t7, i32* %t5
    ; line 522
    %t9 = load i32, i32* @lc
    %t10 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t9
    %t12 = getelementptr inbounds %T_order, %T_order* %t10, i32 0, i32 8
    %t11 = bitcast i8* %t12 to i32*
    %t14 = getelementptr inbounds %Frame_emit1, %Frame_emit1* %.frame, i32 0, i32 0
    %t13 = load i32, i32* %t14
    store i32 %t13, i32* %t11
    ; line 523
    %t16 = load i32, i32* @lc
    %t15 = add i32 %t16, 1
    store i32 %t15, i32* @lc

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
    ; line 529
    %t4 = load i32, i32* @lc
    %t5 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t4
    %t7 = getelementptr inbounds %T_order, %T_order* %t5, i32 0, i32 0
    %t6 = bitcast i8* %t7 to i32*
    %t9 = getelementptr inbounds %Frame_emit2, %Frame_emit2* %.frame, i32 0, i32 2
    %t8 = load i32, i32* %t9
    store i32 %t8, i32* %t6
    ; line 529
    %t10 = load i32, i32* @lc
    %t11 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t10
    %t13 = getelementptr inbounds %T_order, %T_order* %t11, i32 0, i32 4
    %t12 = bitcast i8* %t13 to i32*
    %t15 = getelementptr inbounds %Frame_emit2, %Frame_emit2* %.frame, i32 0, i32 0
    %t14 = load i32, i32* %t15
    store i32 %t14, i32* %t12
    ; line 529
    %t16 = load i32, i32* @lc
    %t17 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t16
    %t19 = getelementptr inbounds %T_order, %T_order* %t17, i32 0, i32 8
    %t18 = bitcast i8* %t19 to i32*
    %t21 = getelementptr inbounds %Frame_emit2, %Frame_emit2* %.frame, i32 0, i32 1
    %t20 = load i32, i32* %t21
    store i32 %t20, i32* %t18
    ; line 530
    %t23 = load i32, i32* @lc
    %t22 = add i32 %t23, 1
    store i32 %t22, i32* @lc

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
    call void @_WriteString(i8* %t1, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.113, i32 0, i32 0), i32 50)
    call void @_WriteLn(i8* %t1)
    ; line 538
    %t2 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2)
    ; line 539
    ; line 544
    %t3 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3, i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.114, i32 0, i32 0), i32 29)
    call void @_WriteLn(i8* %t3)
    ; line 545
    %t4 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t4)
    ; line 546
    ; line 550
    %t5 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t5, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.115, i32 0, i32 0), i32 44)
    call void @_WriteLn(i8* %t5)
    ; line 551
    %t6 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t6)
    ; line 552
    ; line 557
    %t7 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t7, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i32 0), i32 5)
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
    ; line 1479
    %t8 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 0
    %t7 = load %T_symset, %T_symset* %t8
    call void @P_block_test(%Frame_block* %.frame, %T_symset %.dummy_set, %T_symset %t7, i32 7)
    ; line 1480
    call void @P_enterblock()
    ; line 1480
    %t10 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 2
    %t9 = load i32, i32* %t10
    %t11 = getelementptr inbounds %T_array_10, %T_array_10* @display, i32 0, i32 %t9
    %t12 = load i32, i32* @b
    store i32 %t12, i32* %t11
    ; line 1480
    %t13 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 4
    %t14 = load i32, i32* @b
    store i32 %t14, i32* %t13
    ; line 1481
    %t16 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 5
    %t15 = load i32, i32* %t16
    %t17 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t15
    %t19 = getelementptr inbounds %T_record_19, %T_record_19* %t17, i32 0, i32 20
    %t18 = bitcast i8* %t19 to i32*
    store i32 0, i32* %t18
    ; line 1481
    %t21 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 5
    %t20 = load i32, i32* %t21
    %t22 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t20
    %t24 = getelementptr inbounds %T_record_19, %T_record_19* %t22, i32 0, i32 24
    %t23 = bitcast i8* %t24 to i32*
    %t26 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 4
    %t25 = load i32, i32* %t26
    store i32 %t25, i32* %t23
    ; line 1482
    ; line 1483
    %t28 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 4
    %t27 = load i32, i32* %t28
    %t29 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 %t27
    %t31 = getelementptr inbounds %T_record_5, %T_record_5* %t29, i32 0, i32 4
    %t30 = bitcast i8* %t31 to i32*
    %t32 = load i32, i32* @t
    store i32 %t32, i32* %t30
    ; line 1483
    %t34 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 4
    %t33 = load i32, i32* %t34
    %t35 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 %t33
    %t37 = getelementptr inbounds %T_record_5, %T_record_5* %t35, i32 0, i32 8
    %t36 = bitcast i8* %t37 to i32*
    %t39 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 3
    %t38 = load i32, i32* %t39
    store i32 %t38, i32* %t36
    ; line 1484
    ; line 1496
    ; line 1497
    ; line 1505
    %t41 = getelementptr inbounds %Frame_block, %Frame_block* %.frame, i32 0, i32 5
    %t40 = load i32, i32* %t41
    %t42 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t40
    %t44 = getelementptr inbounds %T_record_19, %T_record_19* %t42, i32 0, i32 36
    %t43 = bitcast i8* %t44 to i32*
    %t45 = load i32, i32* @lc
    store i32 %t45, i32* %t43
    ; line 1506
    call void @P_insymbol()
    ; line 1506
    call void @P_block_statement(%Frame_block* %.frame, %T_symset %.dummy_set)
    ; line 1507
    ; line 1511
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
    ; line 603
    %t2 = getelementptr inbounds %Frame_block_testsemicolon, %Frame_block_testsemicolon* %.frame, i32 0, i32 0
    %t3 = load %Frame_block*, %Frame_block** %t2
    %t7 = getelementptr inbounds %Frame_block_testsemicolon, %Frame_block_testsemicolon* %.frame, i32 0, i32 0
    %t8 = load %Frame_block*, %Frame_block** %t7
    %t6 = getelementptr inbounds %Frame_block, %Frame_block* %t8, i32 0, i32 0
    %t5 = load %T_symset, %T_symset* %t6
    call void @P_block_test(%Frame_block* %t3, %T_symset %.dummy_set, %T_symset %t5, i32 6)

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
    ; line 631
    %t13 = getelementptr inbounds %Frame_block_loc, %Frame_block_loc* %.frame, i32 0, i32 1
    %t15 = getelementptr inbounds %Frame_block_loc, %Frame_block_loc* %.frame, i32 0, i32 3
    %t14 = load i32, i32* %t15
    store i32 %t14, i32* %t13

    ; epilogue
    %t16 = getelementptr inbounds %Frame_block_loc, %Frame_block_loc* %.frame, i32 0, i32 1
    %t17 = load i32, i32* %t16
    ret i32 %t17
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
    ; line 692
    ; line 693
    %t10 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 7
    %t11 = load %Frame_block_typ*, %Frame_block_typ** %t10
    %t12 = getelementptr inbounds %Frame_block_typ, %Frame_block_typ* %t11, i32 0, i32 11
    %t13 = load %Frame_block*, %Frame_block** %t12
    %t15 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 5
    call void @P_block_constant(%Frame_block* %t13, %T_symset %.dummy_set, %T_block_conrec* %t15)
    ; line 694
    ; line 697
    %t16 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 6
    %t18 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t16, i32 0, i32 0
    %t17 = bitcast i8* %t18 to i32*
    %t19 = load i32, i32* %t17
    %t20 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 6
    %t22 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t20, i32 0, i32 4
    %t21 = bitcast i8* %t22 to i32*
    %t23 = load i32, i32* %t21
    %t24 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 5
    %t26 = getelementptr inbounds %T_block_conrec, %T_block_conrec* %t24, i32 0, i32 4
    %t25 = bitcast i8* %t26 to i32*
    %t27 = load i32, i32* %t25
    call void @P_enterarray(i32 %t19, i32 %t23, i32 %t27)
    ; line 697
    %t28 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 0
    %t29 = load i32*, i32** %t28
    %t30 = load i32, i32* @a
    store i32 %t30, i32* %t29
    ; line 698
    ; line 710
    %t31 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 1
    %t32 = load i32*, i32** %t31
    %t37 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 0
    %t38 = load i32*, i32** %t37
    %t36 = load i32, i32* %t38
    %t39 = getelementptr inbounds %T_array_2, %T_array_2* @atab, i32 0, i32 %t36
    %t41 = getelementptr inbounds %T_record_3, %T_record_3* %t39, i32 0, i32 16
    %t40 = bitcast i8* %t41 to i32*
    %t42 = load i32, i32* %t40
    %t44 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 0
    %t45 = load i32*, i32** %t44
    %t43 = load i32, i32* %t45
    %t46 = getelementptr inbounds %T_array_2, %T_array_2* @atab, i32 0, i32 %t43
    %t48 = getelementptr inbounds %T_record_3, %T_record_3* %t46, i32 0, i32 12
    %t47 = bitcast i8* %t48 to i32*
    %t49 = load i32, i32* %t47
    %t35 = sub i32 %t42, %t49
    %t34 = add i32 %t35, 1
    %t51 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 3
    %t50 = load i32, i32* %t51
    %t33 = mul i32 %t34, %t50
    store i32 %t33, i32* %t32
    ; line 710
    %t53 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 0
    %t54 = load i32*, i32** %t53
    %t52 = load i32, i32* %t54
    %t55 = getelementptr inbounds %T_array_2, %T_array_2* @atab, i32 0, i32 %t52
    %t57 = getelementptr inbounds %T_record_3, %T_record_3* %t55, i32 0, i32 24
    %t56 = bitcast i8* %t57 to i32*
    %t59 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 1
    %t60 = load i32*, i32** %t59
    %t58 = load i32, i32* %t60
    store i32 %t58, i32* %t56
    ; line 711
    %t62 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 0
    %t63 = load i32*, i32** %t62
    %t61 = load i32, i32* %t63
    %t64 = getelementptr inbounds %T_array_2, %T_array_2* @atab, i32 0, i32 %t61
    %t66 = getelementptr inbounds %T_record_3, %T_record_3* %t64, i32 0, i32 4
    %t65 = bitcast i8* %t66 to i32*
    %t68 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 4
    %t67 = load i32, i32* %t68
    store i32 %t67, i32* %t65
    ; line 711
    %t70 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 0
    %t71 = load i32*, i32** %t70
    %t69 = load i32, i32* %t71
    %t72 = getelementptr inbounds %T_array_2, %T_array_2* @atab, i32 0, i32 %t69
    %t74 = getelementptr inbounds %T_record_3, %T_record_3* %t72, i32 0, i32 8
    %t73 = bitcast i8* %t74 to i32*
    %t76 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 2
    %t75 = load i32, i32* %t76
    store i32 %t75, i32* %t73
    ; line 711
    %t78 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 0
    %t79 = load i32*, i32** %t78
    %t77 = load i32, i32* %t79
    %t80 = getelementptr inbounds %T_array_2, %T_array_2* @atab, i32 0, i32 %t77
    %t82 = getelementptr inbounds %T_record_3, %T_record_3* %t80, i32 0, i32 20
    %t81 = bitcast i8* %t82 to i32*
    %t84 = getelementptr inbounds %Frame_block_typ_arraytyp, %Frame_block_typ_arraytyp* %.frame, i32 0, i32 3
    %t83 = load i32, i32* %t84
    store i32 %t83, i32* %t81
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
    ; line 893
    ; line 894
    %t5 = load i32, i32* @t
    %t6 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t5
    %t8 = getelementptr inbounds %T_record_19, %T_record_19* %t6, i32 0, i32 28
    %t7 = bitcast i8* %t8 to i1*
    store i1 1, i1* %t7
    ; line 895
    call void @P_insymbol()
    ; line 895
    %t11 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 0
    %t10 = load i1, i1* %t11
    %t15 = getelementptr inbounds %Frame_block_procdeclaration, %Frame_block_procdeclaration* %.frame, i32 0, i32 1
    %t16 = load %Frame_block*, %Frame_block** %t15
    %t14 = getelementptr inbounds %Frame_block, %Frame_block* %t16, i32 0, i32 2
    %t13 = load i32, i32* %t14
    %t12 = add i32 %t13, 1
    call void @P_block(%T_symset %.dummy_set, i1 %t10, i32 %t12)
    ; line 896
    ; line 897
    %t17 = add i32 32, 
    call void @P_emit(i32 %t17)

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
    ; line 1474
    %t3 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 2
    %t4 = load %Frame_block*, %Frame_block** %t3
    %t6 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %.frame, i32 0, i32 0
    %t5 = load %T_symset, %T_symset* %t6
    call void @P_block_test(%Frame_block* %t4, %T_symset %t5, %T_symset %.dummy_set, i32 14)

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
    ; line 987
    ; line 988
    %t22 = getelementptr inbounds %Frame_block_statement_call, %Frame_block_statement_call* %.frame, i32 0, i32 1
    %t21 = load i32, i32* %t22
    %t23 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t21
    %t25 = getelementptr inbounds %T_record_19, %T_record_19* %t23, i32 0, i32 24
    %t24 = bitcast i8* %t25 to i32*
    %t26 = load i32, i32* %t24
    %t27 = getelementptr inbounds %T_array_4, %T_array_4* @btab, i32 0, i32 %t26
    %t29 = getelementptr inbounds %T_record_5, %T_record_5* %t27, i32 0, i32 8
    %t28 = bitcast i8* %t29 to i32*
    %t30 = load i32, i32* %t28
    %t20 = sub i32 %t30, 1
    call void @P_emit1(i32 19, i32 %t20)
    ; line 989

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

    ; epilogue
    %t4 = getelementptr inbounds %Frame_block_statement_resulttype, %Frame_block_statement_resulttype* %.frame, i32 0, i32 2
    %t5 = load i32, i32* %t4
    ret i32 %t5
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
    ; line 1024
    ; line 1047
    %t4 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor_standfct, %Frame_block_statement_expression_simpleexpression_term_factor_standfct* %.frame, i32 0, i32 2
    %t5 = load %Frame_block_statement_expression_simpleexpression_term_factor*, %Frame_block_statement_expression_simpleexpression_term_factor** %t4
    %t3 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor, %Frame_block_statement_expression_simpleexpression_term_factor* %t5, i32 0, i32 1
    %t6 = load %T_item*, %T_item** %t3
    %t8 = getelementptr inbounds %T_item, %T_item* %t6, i32 0, i32 0
    %t7 = bitcast i8* %t8 to i32*
    %t11 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor_standfct, %Frame_block_statement_expression_simpleexpression_term_factor_standfct* %.frame, i32 0, i32 2
    %t12 = load %Frame_block_statement_expression_simpleexpression_term_factor*, %Frame_block_statement_expression_simpleexpression_term_factor** %t11
    %t10 = getelementptr inbounds %Frame_block_statement_expression_simpleexpression_term_factor, %Frame_block_statement_expression_simpleexpression_term_factor* %t12, i32 0, i32 3
    %t9 = load i32, i32* %t10
    %t13 = getelementptr inbounds %T_array_18, %T_array_18* @tab, i32 0, i32 %t9
    %t15 = getelementptr inbounds %T_record_19, %T_record_19* %t13, i32 0, i32 20
    %t14 = bitcast i8* %t15 to i32*
    %t16 = load i32, i32* %t14
    store i32 %t16, i32* %t7
    ; line 1048

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
    ; line 1234
    %t27 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 2
    %t26 = load i32, i32* %t27
    %t29 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 1
    %t28 = load i32, i32* %t29
    %t31 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 0
    %t30 = load i32, i32* %t31
    call void @P_emit2(i32 %t26, i32 %t28, i32 %t30)
    ; line 1235
    ; line 1237
    ; line 1240
    %t32 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 5
    %t33 = load %Frame_block_statement*, %Frame_block_statement** %t32
    %t36 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 5
    %t37 = load %Frame_block_statement*, %Frame_block_statement** %t36
    %t35 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t37, i32 0, i32 0
    %t34 = load %T_symset, %T_symset* %t35
    %t38 = getelementptr inbounds %Frame_block_statement_assignment, %Frame_block_statement_assignment* %.frame, i32 0, i32 4
    call void @P_block_statement_expression(%Frame_block_statement* %t33, %T_symset %t34, %T_item* %t38)
    ; line 1241

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
    ; line 1268
    %t6 = getelementptr inbounds %Frame_block_statement_ifstatement, %Frame_block_statement_ifstatement* %.frame, i32 0, i32 0
    %t7 = load i32, i32* @lc
    store i32 %t7, i32* %t6
    ; line 1268
    call void @P_emit(i32 11)
    ; line 1269
    ; line 1272
    %t8 = getelementptr inbounds %Frame_block_statement_ifstatement, %Frame_block_statement_ifstatement* %.frame, i32 0, i32 3
    %t9 = load %Frame_block_statement*, %Frame_block_statement** %t8
    %t10 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t9, i32 0, i32 2
    %t11 = load %Frame_block*, %Frame_block** %t10
    call void @P_block_statement(%Frame_block* %t11, %T_symset %.dummy_set)
    ; line 1273

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
    ; line 1314
    %t8 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %.frame, i32 0, i32 5
    %t9 = load i32, i32* @lc
    store i32 %t9, i32* %t8
    ; line 1314
    call void @P_emit(i32 12)
    ; line 1315
    ; line 1316
    call void @P_block_statement_casestatement_onecase(%Frame_block_statement_casestatement* %.frame)
    ; line 1317
    ; line 1320
    %t11 = getelementptr inbounds %Frame_block_statement_casestatement, %Frame_block_statement_casestatement* %.frame, i32 0, i32 5
    %t10 = load i32, i32* %t11
    %t12 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t10
    %t14 = getelementptr inbounds %T_order, %T_order* %t12, i32 0, i32 8
    %t13 = bitcast i8* %t14 to i32*
    %t15 = load i32, i32* @lc
    store i32 %t15, i32* %t13
    ; line 1321
    ; line 1324
    call void @P_emit1(i32 10, i32 0)
    ; line 1325
    ; line 1326

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
    ; line 1350
    %t8 = getelementptr inbounds %Frame_block_statement_whilestatement, %Frame_block_statement_whilestatement* %.frame, i32 0, i32 1
    %t9 = load i32, i32* @lc
    store i32 %t9, i32* %t8
    ; line 1350
    call void @P_emit(i32 11)
    ; line 1351
    ; line 1352
    %t10 = getelementptr inbounds %Frame_block_statement_whilestatement, %Frame_block_statement_whilestatement* %.frame, i32 0, i32 3
    %t11 = load %Frame_block_statement*, %Frame_block_statement** %t10
    %t12 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t11, i32 0, i32 2
    %t13 = load %Frame_block*, %Frame_block** %t12
    %t16 = getelementptr inbounds %Frame_block_statement_whilestatement, %Frame_block_statement_whilestatement* %.frame, i32 0, i32 3
    %t17 = load %Frame_block_statement*, %Frame_block_statement** %t16
    %t15 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t17, i32 0, i32 0
    %t14 = load %T_symset, %T_symset* %t15
    call void @P_block_statement(%Frame_block* %t13, %T_symset %t14)
    ; line 1352
    %t19 = getelementptr inbounds %Frame_block_statement_whilestatement, %Frame_block_statement_whilestatement* %.frame, i32 0, i32 0
    %t18 = load i32, i32* %t19
    call void @P_emit1(i32 10, i32 %t18)
    ; line 1352
    %t21 = getelementptr inbounds %Frame_block_statement_whilestatement, %Frame_block_statement_whilestatement* %.frame, i32 0, i32 1
    %t20 = load i32, i32* %t21
    %t22 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t20
    %t24 = getelementptr inbounds %T_order, %T_order* %t22, i32 0, i32 8
    %t23 = bitcast i8* %t24 to i32*
    %t25 = load i32, i32* @lc
    store i32 %t25, i32* %t23

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
    ; line 1371
    ; line 1375
    %t2 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 1
    store i32 14, i32* %t2
    ; line 1376
    ; line 1381
    %t3 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 3
    %t4 = load i32, i32* @lc
    store i32 %t4, i32* %t3
    ; line 1381
    %t6 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 1
    %t5 = load i32, i32* %t6
    call void @P_emit(i32 %t5)
    ; line 1382
    ; line 1383
    %t7 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 4
    %t8 = load i32, i32* @lc
    store i32 %t8, i32* %t7
    ; line 1383
    %t9 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 6
    %t10 = load %Frame_block_statement*, %Frame_block_statement** %t9
    %t11 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t10, i32 0, i32 2
    %t12 = load %Frame_block*, %Frame_block** %t11
    %t15 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 6
    %t16 = load %Frame_block_statement*, %Frame_block_statement** %t15
    %t14 = getelementptr inbounds %Frame_block_statement, %Frame_block_statement* %t16, i32 0, i32 0
    %t13 = load %T_symset, %T_symset* %t14
    call void @P_block_statement(%Frame_block* %t12, %T_symset %t13)
    ; line 1384
    %t19 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 1
    %t18 = load i32, i32* %t19
    %t17 = add i32 %t18, 1
    %t21 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 4
    %t20 = load i32, i32* %t21
    call void @P_emit1(i32 %t17, i32 %t20)
    ; line 1384
    %t23 = getelementptr inbounds %Frame_block_statement_forstatement, %Frame_block_statement_forstatement* %.frame, i32 0, i32 3
    %t22 = load i32, i32* %t23
    %t24 = getelementptr inbounds %T_array_6, %T_array_6* @code, i32 0, i32 %t22
    %t26 = getelementptr inbounds %T_order, %T_order* %t24, i32 0, i32 8
    %t25 = bitcast i8* %t26 to i32*
    %t27 = load i32, i32* @lc
    store i32 %t27, i32* %t25

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
    ; line 1832
    %t53 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t53)
    ; line 1832
    %t54 = load %T_text, %T_text* @output
    %t56 = getelementptr inbounds %Frame_interpret, %Frame_interpret* %.frame, i32 0, i32 11
    %t55 = load i32, i32* %t56
    call void @_WriteInteger(i8* %t54, i32 0, i32 0, i32 %t55)
    call void @_WriteString(i8* %t54, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.117, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t54)

    ; epilogue
    ret void
}


;================================================================================
; string literals

@.str.32 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.111 = private unnamed_addr constant [21 x i8] c" compiler table for \00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c" is too small\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c" key words\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c" steps\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"(         \00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c")         \00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c".         \00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"..        \00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c":         \00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c":=        \00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c";         \00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"=         \00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Pascal-S compiler/interpreter\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"[         \00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"]         \00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"abs       \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"and       \00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"arctan    \00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"arith type\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"array     \00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"arrays    \00", align 1
@.str.115 = private unnamed_addr constant [45 x i8] c"arrays    xtyp etyp eref  low high elsz size\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"begin     \00", align 1
@.str.114 = private unnamed_addr constant [30 x i8] c"blocks    last lpar psze vsze\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"boole type\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"boolean   \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"case      \00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"char      \00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"character \00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"chr       \00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"code      \00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"code:\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"const     \00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"const id  \00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"constant  \00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"convar typ\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"cos       \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"div       \00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"do        \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"downto    \00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"else      \00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"end       \00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"eof       \00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"eoln      \00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"exp       \00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"factor    \00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"false     \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"for       \00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"func. type\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"function  \00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"id, array \00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"ident, var\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.113 = private unnamed_addr constant [51 x i8] c"identifiers     link  obj  typ  ref  nrm  lev  adr\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"if        \00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"index type\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"indexbound\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"integer   \00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"levels    \00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"ln        \00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"mod       \00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"multi def \00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"no array  \00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"no record \00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"no.of pars\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"not       \00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"odd       \00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"of        \00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"or        \00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"ord       \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"param type\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"pred      \00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"procedure \00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"procedures\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"prog.param\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"program   \00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"read      \00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"readln    \00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"real      \00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"real type \00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"reals     \00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"record    \00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"repeat    \00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"round     \00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"sin       \00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"sqr       \00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"sqrt      \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"srcfil\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"store ovfl\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"string    \00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"strings   \00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"succ      \00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"syntax    \00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"then      \00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"to        \00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"to downto \00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"too big   \00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"true      \00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"trunc     \00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"typ (case)\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"type      \00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"type id   \00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"types     \00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"types (:=)\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"undef id  \00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"undef type\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"until     \00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"var       \00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"var, const\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"var, proc \00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"variab id \00", align 1
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

