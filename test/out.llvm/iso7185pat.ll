; ModuleID = 'iso7185pat.pas'
source_filename = "C:\Users\lemo\work\compilers\lpc\test\iso7185pat.pas"
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

; line 71
;================================================================================
; scope: program scope (level : 1)

; types
%T_array_2 = type [10 x i32]
%T_arri = type [10 x i32]
%T_recs = type [5 x i8]
%T_arrr = type [10 x %T_recs]
%T_string10 = type [10 x i8]
%T_cset = type [8 x i32]
%T_rec = type [136 x i8]
%T_array_7 = type [2 x i32]
%T_array_6 = type [2 x %T_array_7]
%T_array_5 = type [2 x %T_array_6]
%T_array_4 = type [2 x %T_array_5]
%T_array_3 = type [2 x %T_array_4]
%T_arrim = type [2 x %T_array_3]
%T_array_8 = type [10 x i1]
%T_array_9 = type [10 x i8]
%T_array_10 = type [10 x i32]
%T_array_12 = type [10 x i32]
%T_array_13 = type [10 x i32]
%T_array_14 = type [10 x %T_text]
%T_array_15 = type [10 x i32]
%T_array_17 = type [10 x i8*]
%T_array_18 = type [10 x double]
%T_array_19 = type [10 x %T_recs]
%T_array_20 = type [10 x %T_cset]
%T_array_21 = type [2 x i32]
%T_array_22 = type [26 x i32]
%T_array_23 = type [256 x i32]
%T_array_24 = type [26 x i32]
%T_set_25 = type [8 x i32]
%T_set_26 = type [4 x i32]
%T_set_27 = type [4 x i32]
%T_set_28 = type [8 x i32]
%T_array_30 = type [10 x i32]
%T_array_29 = type [10 x %T_array_30]
%T_array_31 = type [10 x i32]
%T_array_32 = type [5 x i32]
%T_file_33 = type i8*
%T_file_34 = type i8*
%T_text_35 = type i8*
%T_file_36 = type i8*
%T_file_37 = type i8*
%T_file_38 = type i8*
%T_file_39 = type i8*
%T_file_40 = type i8*
%T_file_41 = type i8*
%T_file_43 = type i8*
%T_file_44 = type i8*
%T_file_45 = type i8*
%T_array_46 = type [100 x i8*]
%T_record_58 = type [4 x i8]
%T_record_57 = type [8 x i8]
%T_record_56 = type [12 x i8]
%T_record_55 = type [16 x i8]
%T_record_54 = type [20 x i8]
%T_record_53 = type [24 x i8]
%T_record_52 = type [28 x i8]
%T_record_51 = type [32 x i8]
%T_record_50 = type [36 x i8]
%T_record_49 = type [40 x i8]
%T_prec = type [136 x i8]
%T_array_59 = type [10 x i1]
%T_array_60 = type [10 x i8]
%T_array_61 = type [10 x i32]
%T_array_63 = type [10 x i32]
%T_array_64 = type [10 x i32]
%T_array_65 = type [10 x %T_text]
%T_array_66 = type [10 x i32]
%T_array_67 = type [10 x i32]
%T_array_69 = type [10 x i8*]
%T_array_70 = type [10 x double]
%T_array_71 = type [10 x %T_recs]
%T_array_72 = type [10 x %T_cset]
%T_array_73 = type [2 x i32]
%T_array_74 = type [256 x i32]
%T_array_75 = type [26 x i32]
%T_array_76 = type [10 x i32]
%T_array_77 = type [5 x i32]
%T_file_78 = type i8*
%T_file_79 = type i8*
%T_text_80 = type i8*
%T_file_81 = type i8*
%T_file_82 = type i8*
%T_file_83 = type i8*
%T_file_84 = type i8*
%T_file_85 = type i8*
%T_file_86 = type i8*
%T_file_87 = type i8*
%T_file_88 = type i8*
%T_file_89 = type i8*
%T_array_104 = type [10 x i8]
%T_record_103 = type [23 x i8]
%T_record_105 = type [2 x i8]
%T_recv = type [22 x i8]
%T_array_107 = type [10 x i8]
%T_array_109 = type [10 x i8]
%T_array_108 = type [10 x %T_array_109]
%T_set_110 = type [1 x i32]
%T_set_111 = type [1 x i32]
%T_set_112 = type [1 x i32]
%T_set_113 = type [1 x i32]
%T_array_114 = type [16 x i8]
%T_set_115 = type [1 x i32]
%T_set_116 = type [1 x i32]
%T_set_117 = type [1 x i32]
%T_set_118 = type [1 x i32]
%T_set_121 = type [4 x i32]
%T_set_122 = type [1 x i32]
%T_set_123 = type [1 x i32]
%T_set_124 = type [1 x i32]
%T_record_126 = type [60 x i8]
%T_record_127 = type [9 x i8]
%T_record_128 = type [12 x i8]
%T_record_129 = type [12 x i8]
%T_record_130 = type [12 x i8]

; program variables
@_input = dso_local global %T_text zeroinitializer
@a = dso_local global %T_array_2 zeroinitializer
@ai = dso_local global %T_arri zeroinitializer
@ara = dso_local global %T_arrr zeroinitializer
@arec = dso_local global %T_rec zeroinitializer
@as = dso_local global i32 zeroinitializer
@avb = dso_local global %T_array_8 zeroinitializer
@avc = dso_local global %T_array_9 zeroinitializer
@avcs = dso_local global %T_array_10 zeroinitializer
@ave = dso_local global %T_array_12 zeroinitializer
@aves = dso_local global %T_array_13 zeroinitializer
@avf = dso_local global %T_array_14 zeroinitializer
@avi = dso_local global %T_arri zeroinitializer
@avi2 = dso_local global %T_arri zeroinitializer
@avis = dso_local global %T_array_15 zeroinitializer
@avp = dso_local global %T_array_17 zeroinitializer
@avr = dso_local global %T_array_18 zeroinitializer
@avrc = dso_local global %T_array_19 zeroinitializer
@avs = dso_local global %T_array_20 zeroinitializer
@ba = dso_local global i1 zeroinitializer
@bb = dso_local global i1 zeroinitializer
@bc = dso_local global i1 zeroinitializer
@bia = dso_local global %T_array_21 zeroinitializer
@bs = dso_local global i32 zeroinitializer
@ca = dso_local global i8 zeroinitializer
@car = dso_local global %T_array_22 zeroinitializer
@cb = dso_local global i8 zeroinitializer
@cc = dso_local global i8 zeroinitializer
@ci = dso_local global i8 zeroinitializer
@cia = dso_local global %T_array_23 zeroinitializer
@cnt = dso_local global i32 zeroinitializer
@cnt2 = dso_local global i32 zeroinitializer
@cs = dso_local global i32 zeroinitializer
@csia = dso_local global %T_array_24 zeroinitializer
@csta = dso_local global %T_set_25 zeroinitializer
@cstb = dso_local global %T_set_25 zeroinitializer
@cstc = dso_local global %T_set_25 zeroinitializer
@cstd = dso_local global %T_set_25 zeroinitializer
@cste = dso_local global %T_set_26 zeroinitializer
@cstf = dso_local global %T_set_27 zeroinitializer
@cstg = dso_local global %T_set_28 zeroinitializer
@da = dso_local global %T_array_29 zeroinitializer
@ds = dso_local global i32 zeroinitializer
@ea = dso_local global i32 zeroinitializer
@ei = dso_local global i32 zeroinitializer
@eia = dso_local global %T_array_31 zeroinitializer
@es = dso_local global i32 zeroinitializer
@esia = dso_local global %T_array_32 zeroinitializer
@fa = dso_local global %T_file_33 zeroinitializer
@fb = dso_local global %T_file_34 zeroinitializer
@fc = dso_local global %T_text_35 zeroinitializer
@fe = dso_local global %T_file_36 zeroinitializer
@fes = dso_local global %T_file_37 zeroinitializer
@fi = dso_local global %T_file_38 zeroinitializer
@fp = dso_local global %T_file_39 zeroinitializer
@fr = dso_local global %T_file_40 zeroinitializer
@frc = dso_local global %T_file_41 zeroinitializer
@fs = dso_local global %T_file_43 zeroinitializer
@fst = dso_local global %T_file_44 zeroinitializer
@fstc = dso_local global %T_file_45 zeroinitializer
@ft = dso_local global %T_text zeroinitializer
@gs = dso_local global i32 zeroinitializer
@hs = dso_local global i32 zeroinitializer
@i = dso_local global i32 zeroinitializer
@iap = dso_local global %T_array_46 zeroinitializer
@ip = dso_local global i8* zeroinitializer
@ipa = dso_local global i8* zeroinitializer
@ipb = dso_local global i8* zeroinitializer
@ipc = dso_local global i8* zeroinitializer
@ipd = dso_local global i8* zeroinitializer
@ipe = dso_local global i8* zeroinitializer
@mdar = dso_local global %T_arrim zeroinitializer
@mdar2 = dso_local global %T_arrim zeroinitializer
@n = dso_local global i32 zeroinitializer
@nvr = dso_local global %T_record_49 zeroinitializer
@output = dso_local global %T_text zeroinitializer
@parec = dso_local global %T_prec zeroinitializer
@pavb = dso_local global %T_array_59 zeroinitializer
@pavc = dso_local global %T_array_60 zeroinitializer
@pavcs = dso_local global %T_array_61 zeroinitializer
@pave = dso_local global %T_array_63 zeroinitializer
@paves = dso_local global %T_array_64 zeroinitializer
@pavf = dso_local global %T_array_65 zeroinitializer
@pavi = dso_local global %T_array_66 zeroinitializer
@pavis = dso_local global %T_array_67 zeroinitializer
@pavp = dso_local global %T_array_69 zeroinitializer
@pavr = dso_local global %T_array_70 zeroinitializer
@pavrc = dso_local global %T_array_71 zeroinitializer
@pavs = dso_local global %T_array_72 zeroinitializer
@pbia = dso_local global %T_array_73 zeroinitializer
@pcia = dso_local global %T_array_74 zeroinitializer
@pcsia = dso_local global %T_array_75 zeroinitializer
@peia = dso_local global %T_array_76 zeroinitializer
@pesia = dso_local global %T_array_77 zeroinitializer
@pfa = dso_local global %T_file_78 zeroinitializer
@pfb = dso_local global %T_file_79 zeroinitializer
@pfc = dso_local global %T_text_80 zeroinitializer
@pfe = dso_local global %T_file_81 zeroinitializer
@pfes = dso_local global %T_file_82 zeroinitializer
@pfi = dso_local global %T_file_83 zeroinitializer
@pfp = dso_local global %T_file_84 zeroinitializer
@pfr = dso_local global %T_file_85 zeroinitializer
@pfrc = dso_local global %T_file_86 zeroinitializer
@pfs = dso_local global %T_file_87 zeroinitializer
@pfst = dso_local global %T_file_88 zeroinitializer
@pfstc = dso_local global %T_file_89 zeroinitializer
@pi1 = dso_local global i8* zeroinitializer
@pi2 = dso_local global i8* zeroinitializer
@pta = dso_local global i8* zeroinitializer
@ptb = dso_local global i8* zeroinitializer
@ptc = dso_local global i8* zeroinitializer
@pte = dso_local global i8* zeroinitializer
@ptes = dso_local global i8* zeroinitializer
@pti = dso_local global i8* zeroinitializer
@pti1 = dso_local global i8* zeroinitializer
@ptp = dso_local global i8* zeroinitializer
@ptr = dso_local global i8* zeroinitializer
@ptrc = dso_local global i8* zeroinitializer
@pts = dso_local global i8* zeroinitializer
@ptst = dso_local global i8* zeroinitializer
@ptstc = dso_local global i8* zeroinitializer
@q = dso_local global i32 zeroinitializer
@r = dso_local global %T_record_103 zeroinitializer
@ra = dso_local global double zeroinitializer
@rb = dso_local global double zeroinitializer
@rc = dso_local global double zeroinitializer
@rcast = dso_local global %T_record_105 zeroinitializer
@rcastt = dso_local global i32 zeroinitializer
@rd = dso_local global double zeroinitializer
@re = dso_local global double zeroinitializer
@rn = dso_local global i32 zeroinitializer
@rndseq = dso_local global i32 zeroinitializer
@rpa = dso_local global i8* zeroinitializer
@s = dso_local global %T_string10 zeroinitializer
@sa = dso_local global %T_array_107 zeroinitializer
@sar = dso_local global %T_array_108 zeroinitializer
@sb = dso_local global %T_array_107 zeroinitializer
@sba = dso_local global %T_set_110 zeroinitializer
@sbb = dso_local global %T_set_110 zeroinitializer
@sbc = dso_local global %T_set_110 zeroinitializer
@sbd = dso_local global %T_set_110 zeroinitializer
@sbe = dso_local global %T_set_111 zeroinitializer
@sbf = dso_local global %T_set_112 zeroinitializer
@sbg = dso_local global %T_set_113 zeroinitializer
@sc = dso_local global %T_array_107 zeroinitializer
@sena = dso_local global %T_set_115 zeroinitializer
@senb = dso_local global %T_set_115 zeroinitializer
@senc = dso_local global %T_set_115 zeroinitializer
@send = dso_local global %T_set_115 zeroinitializer
@sene = dso_local global %T_set_116 zeroinitializer
@senf = dso_local global %T_set_117 zeroinitializer
@seng = dso_local global %T_set_118 zeroinitializer
@sras = dso_local global i32 zeroinitializer
@srbs = dso_local global i32 zeroinitializer
@srcs = dso_local global i32 zeroinitializer
@srds = dso_local global i32 zeroinitializer
@sres = dso_local global i32 zeroinitializer
@srx = dso_local global i32 zeroinitializer
@sry = dso_local global i32 zeroinitializer
@srz = dso_local global i32 zeroinitializer
@sta = dso_local global %T_set_121 zeroinitializer
@stb = dso_local global %T_set_121 zeroinitializer
@stc = dso_local global %T_set_121 zeroinitializer
@std = dso_local global %T_set_121 zeroinitializer
@ste = dso_local global %T_set_122 zeroinitializer
@stf = dso_local global %T_set_123 zeroinitializer
@stg = dso_local global %T_set_124 zeroinitializer
@sva = dso_local global i32 zeroinitializer
@svb = dso_local global i32 zeroinitializer
@svc = dso_local global i32 zeroinitializer
@t = dso_local global i32 zeroinitializer
@vnum = dso_local global i32 zeroinitializer
@vra = dso_local global %T_record_126 zeroinitializer
@vrec = dso_local global %T_recv zeroinitializer
@vvrb = dso_local global %T_record_127 zeroinitializer
@vvre = dso_local global %T_record_128 zeroinitializer
@vvres = dso_local global %T_record_129 zeroinitializer
@vvrs = dso_local global %T_record_130 zeroinitializer
@x = dso_local global i32 zeroinitializer
@y = dso_local global i32 zeroinitializer
@z = dso_local global i32 zeroinitializer

; procedure body
define void @P_()
{
    ; initialize file handles
    %t1 = call i8* @_OpenFile(i32 0)
    store i8* %t1, i8** @_input
    %t2 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
    store i8* %t2, i8** @fa
    %t3 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
    store i8* %t3, i8** @fb
    %t4 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
    store i8* %t4, i8** @fc
    %t5 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
    store i8* %t5, i8** @fe
    %t6 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0))
    store i8* %t6, i8** @fes
    %t7 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0))
    store i8* %t7, i8** @fi
    %t8 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
    store i8* %t8, i8** @fp
    %t9 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
    store i8* %t9, i8** @fr
    %t10 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
    store i8* %t10, i8** @frc
    %t11 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
    store i8* %t11, i8** @fs
    %t12 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
    store i8* %t12, i8** @fst
    %t13 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0))
    store i8* %t13, i8** @fstc
    %t14 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
    store i8* %t14, i8** @ft
    %t15 = call i8* @_OpenFile(i32 1)
    store i8* %t15, i8** @output
    %t16 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0))
    store i8* %t16, i8** @pfa
    %t17 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0))
    store i8* %t17, i8** @pfb
    %t18 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0))
    store i8* %t18, i8** @pfc
    %t19 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0))
    store i8* %t19, i8** @pfe
    %t20 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0))
    store i8* %t20, i8** @pfes
    %t21 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0))
    store i8* %t21, i8** @pfi
    %t22 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0))
    store i8* %t22, i8** @pfp
    %t23 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0))
    store i8* %t23, i8** @pfr
    %t24 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0))
    store i8* %t24, i8** @pfrc
    %t25 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0))
    store i8* %t25, i8** @pfs
    %t26 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0))
    store i8* %t26, i8** @pfst
    %t27 = call i8* @_OpenTempFile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0))
    store i8* %t27, i8** @pfstc

    ; cleanup
    %t28 = load %T_file_89, %T_file_89* @pfstc
    call void @_CloseFile(i8* %t28)
    %t29 = load %T_file_88, %T_file_88* @pfst
    call void @_CloseFile(i8* %t29)
    %t30 = load %T_file_87, %T_file_87* @pfs
    call void @_CloseFile(i8* %t30)
    %t31 = load %T_file_86, %T_file_86* @pfrc
    call void @_CloseFile(i8* %t31)
    %t32 = load %T_file_85, %T_file_85* @pfr
    call void @_CloseFile(i8* %t32)
    %t33 = load %T_file_84, %T_file_84* @pfp
    call void @_CloseFile(i8* %t33)
    %t34 = load %T_file_83, %T_file_83* @pfi
    call void @_CloseFile(i8* %t34)
    %t35 = load %T_file_82, %T_file_82* @pfes
    call void @_CloseFile(i8* %t35)
    %t36 = load %T_file_81, %T_file_81* @pfe
    call void @_CloseFile(i8* %t36)
    %t37 = load %T_text_80, %T_text_80* @pfc
    call void @_CloseFile(i8* %t37)
    %t38 = load %T_file_79, %T_file_79* @pfb
    call void @_CloseFile(i8* %t38)
    %t39 = load %T_file_78, %T_file_78* @pfa
    call void @_CloseFile(i8* %t39)
    %t40 = load %T_text, %T_text* @output
    call void @_CloseFile(i8* %t40)
    %t41 = load %T_text, %T_text* @ft
    call void @_CloseFile(i8* %t41)
    %t42 = load %T_file_45, %T_file_45* @fstc
    call void @_CloseFile(i8* %t42)
    %t43 = load %T_file_44, %T_file_44* @fst
    call void @_CloseFile(i8* %t43)
    %t44 = load %T_file_43, %T_file_43* @fs
    call void @_CloseFile(i8* %t44)
    %t45 = load %T_file_41, %T_file_41* @frc
    call void @_CloseFile(i8* %t45)
    %t46 = load %T_file_40, %T_file_40* @fr
    call void @_CloseFile(i8* %t46)
    %t47 = load %T_file_39, %T_file_39* @fp
    call void @_CloseFile(i8* %t47)
    %t48 = load %T_file_38, %T_file_38* @fi
    call void @_CloseFile(i8* %t48)
    %t49 = load %T_file_37, %T_file_37* @fes
    call void @_CloseFile(i8* %t49)
    %t50 = load %T_file_36, %T_file_36* @fe
    call void @_CloseFile(i8* %t50)
    %t51 = load %T_text_35, %T_text_35* @fc
    call void @_CloseFile(i8* %t51)
    %t52 = load %T_file_34, %T_file_34* @fb
    call void @_CloseFile(i8* %t52)
    %t53 = load %T_file_33, %T_file_33* @fa
    call void @_CloseFile(i8* %t53)
    %t54 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t54)

    ; epilogue
    ret void
}


; line 398
;================================================================================
; scope: junk1 (level : 2)

; activation record
%Frame_junk1 = type
{
    ; parameters
    i32,    ; 0: q
    i32,    ; 1: z

    ; dummy
    i8*
};

; procedure body
define void @P_junk1(i32 %z, i32 %q)
{
    ; allocate frame
    %.frame = alloca %Frame_junk1, align 8
    %t1 = getelementptr inbounds %Frame_junk1, %Frame_junk1* %.frame, i32 0, i32 0
    store i32 %q, i32* %t1
    %t2 = getelementptr inbounds %Frame_junk1, %Frame_junk1* %.frame, i32 0, i32 1
    store i32 %z, i32* %t2

    ; epilogue
    ret void
}


; line 406
;================================================================================
; scope: junk2 (level : 2)

; activation record
%Frame_junk2 = type
{
    ; parameters
    i32*,    ; 0: z

    ; dummy
    i8*
};

; procedure body
define void @P_junk2(i32* %z)
{
    ; allocate frame
    %.frame = alloca %Frame_junk2, align 8
    %t1 = getelementptr inbounds %Frame_junk2, %Frame_junk2* %.frame, i32 0, i32 0
    store i32* %z, i32** %t1

    ; epilogue
    ret void
}


; line 414
;================================================================================
; scope: junk3 (level : 2)

; activation record
%Frame_junk3 = type
{
    ; parameters
    %T_string10*,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_junk3(%T_string10* %p)
{
    ; allocate frame
    %.frame = alloca %Frame_junk3, align 8
    %t1 = getelementptr inbounds %Frame_junk3, %Frame_junk3* %.frame, i32 0, i32 0
    store %T_string10* %p, %T_string10** %t1

    ; epilogue
    ret void
}


; line 422
;================================================================================
; scope: junk4 (level : 2)

; activation record
%Frame_junk4 = type
{
    ; parameters
    %T_string10,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_junk4(%T_string10 %p)
{
    ; allocate frame
    %.frame = alloca %Frame_junk4, align 8
    %t1 = getelementptr inbounds %Frame_junk4, %Frame_junk4* %.frame, i32 0, i32 0
    store %T_string10 %p, %T_string10* %t1

    ; epilogue
    ret void
}


; line 431
;================================================================================
; scope: junk5 (level : 2)

; activation record
%Frame_junk5 = type
{
    ; parameters
    i32,    ; 0: x

    ; variables
    i32,    ; 1: _fnvalue

    ; dummy
    i8*
};

; function body
define i32 @F_junk5(i32 %x)
{
    ; allocate frame
    %.frame = alloca %Frame_junk5, align 8
    %t1 = getelementptr inbounds %Frame_junk5, %Frame_junk5* %.frame, i32 0, i32 0
    store i32 %x, i32* %t1

    ; epilogue
    %t2 = getelementptr inbounds %Frame_junk5, %Frame_junk5* %.frame, i32 0, i32 1
    %t3 = load i32, i32* %t2
    ret i32 %t3
}


; line 439
;================================================================================
; scope: junk6 (level : 2)

; activation record
%Frame_junk6 = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_junk6()
{
    ; allocate frame
    %.frame = alloca %Frame_junk6, align 8

    ; epilogue
    ret void
}


; line 449
;================================================================================
; scope: junk7 (level : 2)

; activation record
%Frame_junk7 = type
{
    ; parameters
    i32,    ; 0: a
    i32,    ; 1: b
    i32,    ; 2: c

    ; variables
    i32,    ; 3: _fnvalue
    i32,    ; 4: x
    i32,    ; 5: y
    i32,    ; 6: z

    ; dummy
    i8*
};

; function body
define i32 @F_junk7(i32 %a, i32 %b, i32 %c)
{
    ; allocate frame
    %.frame = alloca %Frame_junk7, align 8
    %t1 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 0
    store i32 %a, i32* %t1
    %t2 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 1
    store i32 %b, i32* %t2
    %t3 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 2
    store i32 %c, i32* %t3

    ; epilogue
    %t4 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 3
    %t5 = load i32, i32* %t4
    ret i32 %t5
}


; line 467
;================================================================================
; scope: junk8 (level : 2)

; activation record
%Frame_junk8 = type
{
    ; parameters
    i32,    ; 0: a
    %T_arri,    ; 1: ar
    i1,    ; 2: b
    i8,    ; 3: c
    i32,    ; 4: e
    i32,    ; 5: es
    i8*,    ; 6: p
    double,    ; 7: r
    %T_rec,    ; 8: rc
    %T_recv,    ; 9: rv
    i32,    ; 10: s
    %T_string10,    ; 11: st
    %T_cset,    ; 12: stc

    ; variables
    i8,    ; 13: ci
    i32,    ; 14: i

    ; dummy
    i8*
};

; procedure body
define void @P_junk8(i32 %a, i1 %b, i8 %c, i32 %e, i32 %es, i32 %s, double %r, %T_string10 %st, %T_arri %ar, %T_rec %rc, %T_recv %rv, %T_cset %stc, i8* %p)
{
    ; allocate frame
    %.frame = alloca %Frame_junk8, align 8
    %t1 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 0
    store i32 %a, i32* %t1
    %t2 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 1
    store %T_arri %ar, %T_arri* %t2
    %t3 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 2
    store i1 %b, i1* %t3
    %t4 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 3
    store i8 %c, i8* %t4
    %t5 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 4
    store i32 %e, i32* %t5
    %t6 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 5
    store i32 %es, i32* %t6
    %t7 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 6
    store i8* %p, i8** %t7
    %t8 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 7
    store double %r, double* %t8
    %t9 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 8
    store %T_rec %rc, %T_rec* %t9
    %t10 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 9
    store %T_recv %rv, %T_recv* %t10
    %t11 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 10
    store i32 %s, i32* %t11
    %t12 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 11
    store %T_string10 %st, %T_string10* %t12
    %t13 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 12
    store %T_cset %stc, %T_cset* %t13

    ; epilogue
    ret void
}


; line 494
;================================================================================
; scope: junk9 (level : 2)

; types
%T_junk9_subroutine_131 = type void (i8*, i32, i32, i8)*
%T_junk9_subroutine_132 = type i32 (i8*, i32)*

; activation record
%Frame_junk9 = type
{
    ; parameters
    %T_junk9_subroutine_131,    ; 0: junk9
    %T_junk9_subroutine_132,    ; 1: y

    ; dummy
    i8*
};

; procedure body
define void @P_junk9(%T_junk9_subroutine_131 %junk9, %T_junk9_subroutine_132 %y)
{
    ; allocate frame
    %.frame = alloca %Frame_junk9, align 8
    %t1 = getelementptr inbounds %Frame_junk9, %Frame_junk9* %.frame, i32 0, i32 0
    store %T_junk9_subroutine_131 %junk9, %T_junk9_subroutine_131* %t1
    %t2 = getelementptr inbounds %Frame_junk9, %Frame_junk9* %.frame, i32 0, i32 1
    store %T_junk9_subroutine_132 %y, %T_junk9_subroutine_132* %t2

    ; epilogue
    ret void
}


; line 504
;================================================================================
; scope: junk10 (level : 2)

; activation record
%Frame_junk10 = type
{
    ; parameters
    i8,    ; 0: junk10
    i32,    ; 1: x
    i32,    ; 2: y

    ; dummy
    i8*
};

; procedure body
define void @P_junk10(i32 %x, i32 %y, i8 %junk10)
{
    ; allocate frame
    %.frame = alloca %Frame_junk10, align 8
    %t1 = getelementptr inbounds %Frame_junk10, %Frame_junk10* %.frame, i32 0, i32 0
    store i8 %junk10, i8* %t1
    %t2 = getelementptr inbounds %Frame_junk10, %Frame_junk10* %.frame, i32 0, i32 1
    store i32 %x, i32* %t2
    %t3 = getelementptr inbounds %Frame_junk10, %Frame_junk10* %.frame, i32 0, i32 2
    store i32 %y, i32* %t3

    ; epilogue
    ret void
}


; line 512
;================================================================================
; scope: junk11 (level : 2)

; activation record
%Frame_junk11 = type
{
    ; parameters
    i32,    ; 0: x

    ; variables
    i32,    ; 1: _fnvalue

    ; dummy
    i8*
};

; function body
define i32 @F_junk11(i32 %x)
{
    ; allocate frame
    %.frame = alloca %Frame_junk11, align 8
    %t1 = getelementptr inbounds %Frame_junk11, %Frame_junk11* %.frame, i32 0, i32 0
    store i32 %x, i32* %t1

    ; epilogue
    %t2 = getelementptr inbounds %Frame_junk11, %Frame_junk11* %.frame, i32 0, i32 1
    %t3 = load i32, i32* %t2
    ret i32 %t3
}


; line 520
;================================================================================
; scope: junk12 (level : 2)

; types
%T_junk12_subroutine_133 = type i32 (i8*, i32)*
%T_junk12_subroutine_135 = type i32 (i8*, i32)*
%T_junk12_subroutine_134 = type void (i8*, %T_junk12_subroutine_135)*

; activation record
%Frame_junk12 = type
{
    ; parameters
    %T_junk12_subroutine_133,    ; 0: q
    %T_junk12_subroutine_134,    ; 1: xq

    ; dummy
    i8*
};

; procedure body
define void @P_junk12(%T_junk12_subroutine_134 %xq, %T_junk12_subroutine_133 %q)
{
    ; allocate frame
    %.frame = alloca %Frame_junk12, align 8
    %t1 = getelementptr inbounds %Frame_junk12, %Frame_junk12* %.frame, i32 0, i32 0
    store %T_junk12_subroutine_133 %q, %T_junk12_subroutine_133* %t1
    %t2 = getelementptr inbounds %Frame_junk12, %Frame_junk12* %.frame, i32 0, i32 1
    store %T_junk12_subroutine_134 %xq, %T_junk12_subroutine_134* %t2

    ; epilogue
    ret void
}


; line 529
;================================================================================
; scope: junk13 (level : 2)

; types
%T_junk13_subroutine_136 = type i32 (i8*, i32)*

; activation record
%Frame_junk13 = type
{
    ; parameters
    %T_junk13_subroutine_136,    ; 0: xz

    ; dummy
    i8*
};

; procedure body
define void @P_junk13(%T_junk13_subroutine_136 %xz)
{
    ; allocate frame
    %.frame = alloca %Frame_junk13, align 8
    %t1 = getelementptr inbounds %Frame_junk13, %Frame_junk13* %.frame, i32 0, i32 0
    store %T_junk13_subroutine_136 %xz, %T_junk13_subroutine_136* %t1

    ; epilogue
    ret void
}


; line 537
;================================================================================
; scope: junk14 (level : 2)

; activation record
%Frame_junk14 = type
{
    ; variables
    i32,    ; 0: i
    i32,    ; 1: x

    ; dummy
    i8*
};

; procedure body
define void @P_junk14()
{
    ; allocate frame
    %.frame = alloca %Frame_junk14, align 8

    ; epilogue
    ret void
}


; line 541
;================================================================================
; scope: junk14_junk15 (level : 3)

; activation record
%Frame_junk14_junk15 = type
{
    ; slink
    %Frame_junk14*    ; 0
};

; procedure body
define void @P_junk14_junk15(%Frame_junk14* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_junk14_junk15, align 8
    %t1 = getelementptr inbounds %Frame_junk14_junk15, %Frame_junk14_junk15* %.frame, i32 0, i32 0
    store %Frame_junk14* %.slink, %Frame_junk14** %t1

    ; epilogue
    ret void
}


; line 557
;================================================================================
; scope: junk16 (level : 2)

; activation record
%Frame_junk16 = type
{
    ; dummy
    i8*
};

; procedure body
define void @P_junk16()
{
    ; allocate frame
    %.frame = alloca %Frame_junk16, align 8

    ; epilogue
    ret void
}


; line 559
;================================================================================
; scope: junk17 (level : 2)

; types
%T_junk17_subroutine_137 = type void (i8*)*

; activation record
%Frame_junk17 = type
{
    ; parameters
    i32,    ; 0: i
    %T_junk17_subroutine_137,    ; 1: x

    ; dummy
    i8*
};

; procedure body
define void @P_junk17(%T_junk17_subroutine_137 %x, i32 %i)
{
    ; allocate frame
    %.frame = alloca %Frame_junk17, align 8
    %t1 = getelementptr inbounds %Frame_junk17, %Frame_junk17* %.frame, i32 0, i32 0
    store i32 %i, i32* %t1
    %t2 = getelementptr inbounds %Frame_junk17, %Frame_junk17* %.frame, i32 0, i32 1
    store %T_junk17_subroutine_137 %x, %T_junk17_subroutine_137* %t2

    ; epilogue
    ret void
}


; line 561
;================================================================================
; scope: junk17_junk18 (level : 3)

; activation record
%Frame_junk17_junk18 = type
{
    ; slink
    %Frame_junk17*    ; 0
};

; procedure body
define void @P_junk17_junk18(%Frame_junk17* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_junk17_junk18, align 8
    %t1 = getelementptr inbounds %Frame_junk17_junk18, %Frame_junk17_junk18* %.frame, i32 0, i32 0
    store %Frame_junk17* %.slink, %Frame_junk17** %t1

    ; epilogue
    ret void
}


; line 578
;================================================================================
; scope: junk19 (level : 2)

; activation record
%Frame_junk19 = type
{
    ; variables
    i8*,    ; 0: p

    ; dummy
    i8*
};

; procedure body
define void @P_junk19()
{
    ; allocate frame
    %.frame = alloca %Frame_junk19, align 8

    ; epilogue
    ret void
}


; line 596
;================================================================================
; scope: junk20 (level : 2)

; activation record
%Frame_junk20 = type
{
    ; variables
    i32,    ; 0: _fnvalue

    ; dummy
    i8*
};

; function body
define i32 @F_junk20()
{
    ; allocate frame
    %.frame = alloca %Frame_junk20, align 8

    ; epilogue
    %t1 = getelementptr inbounds %Frame_junk20, %Frame_junk20* %.frame, i32 0, i32 0
    %t2 = load i32, i32* %t1
    ret i32 %t2
}


; line 598
;================================================================================
; scope: junk20_inner (level : 3)

; activation record
%Frame_junk20_inner = type
{
    ; variables
    i32,    ; 0: _fnvalue

    ; slink
    %Frame_junk20*    ; 1
};

; function body
define i32 @F_junk20_inner(%Frame_junk20* %.slink)
{
    ; allocate frame
    %.frame = alloca %Frame_junk20_inner, align 8
    %t1 = getelementptr inbounds %Frame_junk20_inner, %Frame_junk20_inner* %.frame, i32 0, i32 1
    store %Frame_junk20* %.slink, %Frame_junk20** %t1

    ; epilogue
    %t2 = getelementptr inbounds %Frame_junk20_inner, %Frame_junk20_inner* %.frame, i32 0, i32 0
    %t3 = load i32, i32* %t2
    ret i32 %t3
}


; line 613
;================================================================================
; scope: random (level : 2)

; activation record
%Frame_random = type
{
    ; parameters
    i32,    ; 0: hi
    i32,    ; 1: low

    ; variables
    i32,    ; 2: _fnvalue
    i32,    ; 3: gamma

    ; dummy
    i8*
};

; function body
define i32 @F_random(i32 %low, i32 %hi)
{
    ; allocate frame
    %.frame = alloca %Frame_random, align 8
    %t1 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 0
    store i32 %hi, i32* %t1
    %t2 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 1
    store i32 %low, i32* %t2

    ; epilogue
    %t3 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 2
    %t4 = load i32, i32* %t3
    ret i32 %t4
}


;================================================================================
; string literals

@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"fa\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"fb\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"fc\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"fe\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"fes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"fi\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"fp\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"fr\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"frc\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"fst\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"fstc\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"ft\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"pfa\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"pfb\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"pfc\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"pfe\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"pfes\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"pfi\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"pfp\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"pfr\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"pfrc\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"pfs\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"pfst\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"pfstc\00", align 1


;================================================================================
; metadata

!llvm.dbg.cu = !{!447}
!llvm.module.flags = !{!448, !449}
!llvm.ident = !{!446}

!0 = !DIFile(filename: "iso7185pat.pas", directory: "C:\Users\lemo\work\compilers\lpc\test")
!1 = !DIBasicType(name: "boolean", size: 8, encoding: DW_ATE_boolean)
!2 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!3 = !DIBasicType(name: "integer", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 0, baseType: !5, size: 64)
!5 = !DIBasicType(name: "void", size: 0)
!6 = !DIBasicType(name: "real", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "text", file: !0, line: 0, baseType: null, size: 64)
!8 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 158, baseType: !3, size: 320, elements: !10)
!9 = !DISubrange(count: 10)
!10 = !{!9}
!11 = !DICompositeType(tag: DW_TAG_array_type, name: "arri", file: !0, line: 96, baseType: !3, size: 320, elements: !13)
!12 = !DISubrange(count: 10)
!13 = !{!12}
!14 = !DICompositeType(tag: DW_TAG_array_type, name: "arrr", file: !0, line: 150, baseType: !15, size: 640, elements: !20)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "recs", file: !0, line: 100, size: 64, flags: DIFlagTypePassByValue, elements: !18)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !15, file: !0, line: 102, baseType: !3, size: 32, offset: 0)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !15, file: !0, line: 103, baseType: !2, size: 8, offset: 32)
!18 = !{!16,!17}
!19 = !DISubrange(count: 10)
!20 = !{!19}
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rec", file: !0, line: 106, size: 1088, flags: DIFlagTypePassByValue, elements: !45)
!22 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!23 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!24 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!25 = !DICompositeType(tag: DW_TAG_array_type, name: "string10", file: !0, line: 91, baseType: !2, size: 80, elements: !27)
!26 = !DISubrange(count: 10)
!27 = !{!26}
!28 = !DICompositeType(tag: DW_TAG_array_type, name: "cset", file: !0, line: 98, baseType: !31, size: 256, elements: !30)
!29 = !DISubrange(count: 256)
!30 = !{!29}
!31 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "iptr", file: !0, line: 99, baseType: !3, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !21, file: !0, line: 108, baseType: !3, size: 32, offset: 0)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !21, file: !0, line: 109, baseType: !1, size: 8, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !21, file: !0, line: 110, baseType: !2, size: 8, offset: 40)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !21, file: !0, line: 111, baseType: !22, size: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !21, file: !0, line: 112, baseType: !23, size: 32, offset: 96)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !21, file: !0, line: 113, baseType: !24, size: 32, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !21, file: !0, line: 114, baseType: !6, size: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !21, file: !0, line: 115, baseType: !25, size: 80, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !21, file: !0, line: 116, baseType: !11, size: 320, offset: 352)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !21, file: !0, line: 117, baseType: !15, size: 64, offset: 672)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "stc", scope: !21, file: !0, line: 118, baseType: !28, size: 256, offset: 736)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !21, file: !0, line: 119, baseType: !32, size: 64, offset: 1024)
!45 = !{!33,!34,!35,!36,!37,!38,!39,!40,!41,!42,!43,!44}
!46 = !DICompositeType(tag: DW_TAG_array_type, name: "arrim", file: !0, line: 97, baseType: !47, size: 2048, elements: !63)
!47 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 97, baseType: !48, size: 1024, elements: !61)
!48 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 97, baseType: !49, size: 512, elements: !59)
!49 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 97, baseType: !50, size: 256, elements: !57)
!50 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 97, baseType: !51, size: 128, elements: !55)
!51 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 97, baseType: !3, size: 64, elements: !53)
!52 = !DISubrange(count: 2)
!53 = !{!52}
!54 = !DISubrange(count: 2)
!55 = !{!54}
!56 = !DISubrange(count: 2)
!57 = !{!56}
!58 = !DISubrange(count: 2)
!59 = !{!58}
!60 = !DISubrange(count: 2)
!61 = !{!60}
!62 = !DISubrange(count: 2)
!63 = !{!62}
!64 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 207, baseType: !1, size: 80, elements: !66)
!65 = !DISubrange(count: 10)
!66 = !{!65}
!67 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 211, baseType: !2, size: 80, elements: !69)
!68 = !DISubrange(count: 10)
!69 = !{!68}
!70 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 213, baseType: !71, size: 320, elements: !73)
!71 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!72 = !DISubrange(count: 10)
!73 = !{!72}
!74 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 215, baseType: !22, size: 320, elements: !76)
!75 = !DISubrange(count: 10)
!76 = !{!75}
!77 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 217, baseType: !23, size: 320, elements: !79)
!78 = !DISubrange(count: 10)
!79 = !{!78}
!80 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 223, baseType: !7, size: 640, elements: !82)
!81 = !DISubrange(count: 10)
!82 = !{!81}
!83 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 205, baseType: !84, size: 320, elements: !86)
!84 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!85 = !DISubrange(count: 10)
!86 = !{!85}
!87 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 225, baseType: !32, size: 640, elements: !89)
!88 = !DISubrange(count: 10)
!89 = !{!88}
!90 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 209, baseType: !6, size: 640, elements: !92)
!91 = !DISubrange(count: 10)
!92 = !{!91}
!93 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 221, baseType: !15, size: 640, elements: !95)
!94 = !DISubrange(count: 10)
!95 = !{!94}
!96 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 219, baseType: !28, size: 2560, elements: !98)
!97 = !DISubrange(count: 10)
!98 = !{!97}
!99 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 227, baseType: !3, size: 64, elements: !101)
!100 = !DISubrange(count: 2)
!101 = !{!100}
!102 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 171, baseType: !3, size: 832, elements: !104)
!103 = !DISubrange(count: 26)
!104 = !{!103}
!105 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 229, baseType: !3, size: 8192, elements: !107)
!106 = !DISubrange(count: 256)
!107 = !{!106}
!108 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 231, baseType: !3, size: 832, elements: !110)
!109 = !DISubrange(count: 26)
!110 = !{!109}
!111 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 183, baseType: !114, size: 256, elements: !113)
!112 = !DISubrange(count: 256)
!113 = !{!112}
!114 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!115 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 184, baseType: !118, size: 128, elements: !117)
!116 = !DISubrange(count: 123)
!117 = !{!116}
!118 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!119 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 185, baseType: !122, size: 128, elements: !121)
!120 = !DISubrange(count: 103)
!121 = !{!120}
!122 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!123 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 186, baseType: !126, size: 256, elements: !125)
!124 = !DISubrange(count: 256)
!125 = !{!124}
!126 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!127 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 168, baseType: !128, size: 3200, elements: !132)
!128 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 168, baseType: !3, size: 320, elements: !130)
!129 = !DISubrange(count: 10)
!130 = !{!129}
!131 = !DISubrange(count: 10)
!132 = !{!131}
!133 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 233, baseType: !3, size: 320, elements: !135)
!134 = !DISubrange(count: 10)
!135 = !{!134}
!136 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 235, baseType: !3, size: 160, elements: !138)
!137 = !DISubrange(count: 5)
!138 = !{!137}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 368, baseType: null, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 354, baseType: null, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 356, baseType: null, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 358, baseType: null, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 360, baseType: null, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 352, baseType: null, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 374, baseType: null, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 364, baseType: null, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 370, baseType: null, size: 64)
!148 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 362, baseType: null, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 366, baseType: null, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 372, baseType: null, size: 64)
!152 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 390, baseType: !153, size: 6400, elements: !155)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 390, baseType: !3, size: 64)
!154 = !DISubrange(count: 100)
!155 = !{!154}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 389, baseType: !3, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 300, size: 320, flags: DIFlagTypePassByValue, elements: !195)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 303, size: 288, flags: DIFlagTypePassByValue, elements: !192)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 306, size: 256, flags: DIFlagTypePassByValue, elements: !189)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 309, size: 224, flags: DIFlagTypePassByValue, elements: !186)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 312, size: 192, flags: DIFlagTypePassByValue, elements: !183)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 315, size: 160, flags: DIFlagTypePassByValue, elements: !180)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 318, size: 128, flags: DIFlagTypePassByValue, elements: !177)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 321, size: 96, flags: DIFlagTypePassByValue, elements: !174)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 324, size: 64, flags: DIFlagTypePassByValue, elements: !171)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 327, size: 32, flags: DIFlagTypePassByValue, elements: !168)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !166, file: !0, line: 329, baseType: !3, size: 32, offset: 0)
!168 = !{!167}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !165, file: !0, line: 326, baseType: !3, size: 32, offset: 0)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !165, file: !0, line: 327, baseType: !166, size: 32, offset: 32)
!171 = !{!169,!170}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !164, file: !0, line: 323, baseType: !3, size: 32, offset: 0)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !164, file: !0, line: 324, baseType: !165, size: 64, offset: 32)
!174 = !{!172,!173}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !163, file: !0, line: 320, baseType: !3, size: 32, offset: 0)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !163, file: !0, line: 321, baseType: !164, size: 96, offset: 32)
!177 = !{!175,!176}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !162, file: !0, line: 317, baseType: !3, size: 32, offset: 0)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !162, file: !0, line: 318, baseType: !163, size: 128, offset: 32)
!180 = !{!178,!179}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !161, file: !0, line: 314, baseType: !3, size: 32, offset: 0)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !161, file: !0, line: 315, baseType: !162, size: 160, offset: 32)
!183 = !{!181,!182}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !160, file: !0, line: 311, baseType: !3, size: 32, offset: 0)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !160, file: !0, line: 312, baseType: !161, size: 192, offset: 32)
!186 = !{!184,!185}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !159, file: !0, line: 308, baseType: !3, size: 32, offset: 0)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !159, file: !0, line: 309, baseType: !160, size: 224, offset: 32)
!189 = !{!187,!188}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !158, file: !0, line: 305, baseType: !3, size: 32, offset: 0)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !158, file: !0, line: 306, baseType: !159, size: 256, offset: 32)
!192 = !{!190,!191}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !157, file: !0, line: 302, baseType: !3, size: 32, offset: 0)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !157, file: !0, line: 303, baseType: !158, size: 288, offset: 32)
!195 = !{!193,!194}
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prec", file: !0, line: 122, size: 1088, flags: DIFlagTypePassByValue, elements: !209)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !196, file: !0, line: 124, baseType: !3, size: 32, offset: 0)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !196, file: !0, line: 125, baseType: !1, size: 8, offset: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !196, file: !0, line: 126, baseType: !2, size: 8, offset: 40)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !196, file: !0, line: 127, baseType: !22, size: 32, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !196, file: !0, line: 128, baseType: !23, size: 32, offset: 96)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !196, file: !0, line: 129, baseType: !24, size: 32, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !196, file: !0, line: 130, baseType: !6, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !196, file: !0, line: 131, baseType: !25, size: 80, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !196, file: !0, line: 132, baseType: !11, size: 320, offset: 352)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !196, file: !0, line: 133, baseType: !15, size: 64, offset: 672)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "stc", scope: !196, file: !0, line: 134, baseType: !28, size: 256, offset: 736)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !196, file: !0, line: 135, baseType: !32, size: 64, offset: 1024)
!209 = !{!197,!198,!199,!200,!201,!202,!203,!204,!205,!206,!207,!208}
!210 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 208, baseType: !1, size: 80, elements: !212)
!211 = !DISubrange(count: 10)
!212 = !{!211}
!213 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 212, baseType: !2, size: 80, elements: !215)
!214 = !DISubrange(count: 10)
!215 = !{!214}
!216 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 214, baseType: !217, size: 320, elements: !219)
!217 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!218 = !DISubrange(count: 10)
!219 = !{!218}
!220 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 216, baseType: !22, size: 320, elements: !222)
!221 = !DISubrange(count: 10)
!222 = !{!221}
!223 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 218, baseType: !23, size: 320, elements: !225)
!224 = !DISubrange(count: 10)
!225 = !{!224}
!226 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 224, baseType: !7, size: 640, elements: !228)
!227 = !DISubrange(count: 10)
!228 = !{!227}
!229 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 204, baseType: !3, size: 320, elements: !231)
!230 = !DISubrange(count: 10)
!231 = !{!230}
!232 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 206, baseType: !233, size: 320, elements: !235)
!233 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!234 = !DISubrange(count: 10)
!235 = !{!234}
!236 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 226, baseType: !32, size: 640, elements: !238)
!237 = !DISubrange(count: 10)
!238 = !{!237}
!239 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 210, baseType: !6, size: 640, elements: !241)
!240 = !DISubrange(count: 10)
!241 = !{!240}
!242 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 222, baseType: !15, size: 640, elements: !244)
!243 = !DISubrange(count: 10)
!244 = !{!243}
!245 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 220, baseType: !28, size: 2560, elements: !247)
!246 = !DISubrange(count: 10)
!247 = !{!246}
!248 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 228, baseType: !3, size: 64, elements: !250)
!249 = !DISubrange(count: 2)
!250 = !{!249}
!251 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 230, baseType: !3, size: 8192, elements: !253)
!252 = !DISubrange(count: 256)
!253 = !{!252}
!254 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 232, baseType: !3, size: 832, elements: !256)
!255 = !DISubrange(count: 26)
!256 = !{!255}
!257 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 234, baseType: !3, size: 320, elements: !259)
!258 = !DISubrange(count: 10)
!259 = !{!258}
!260 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 236, baseType: !3, size: 160, elements: !262)
!261 = !DISubrange(count: 5)
!262 = !{!261}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 369, baseType: null, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 355, baseType: null, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 357, baseType: null, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 359, baseType: null, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 361, baseType: null, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 353, baseType: null, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 375, baseType: null, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 365, baseType: null, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 371, baseType: null, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 363, baseType: null, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 367, baseType: null, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 373, baseType: null, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 396, baseType: !3, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 385, baseType: !11, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 378, baseType: !1, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 379, baseType: !2, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 380, baseType: !22, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 381, baseType: !23, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 377, baseType: !3, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 388, baseType: null, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 383, baseType: !6, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 386, baseType: !15, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 382, baseType: !24, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 384, baseType: !25, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 387, baseType: !28, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 159, size: 192, flags: DIFlagTypePassByValue, elements: !297)
!289 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 165, baseType: !2, size: 80, elements: !291)
!290 = !DISubrange(count: 10)
!291 = !{!290}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "rx", scope: !288, file: !0, line: 161, baseType: !3, size: 32, offset: 0)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !288, file: !0, line: 162, baseType: !2, size: 8, offset: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ry", scope: !288, file: !0, line: 163, baseType: !3, size: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !288, file: !0, line: 164, baseType: !1, size: 8, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !288, file: !0, line: 165, baseType: !289, size: 80, offset: 104)
!297 = !{!292,!293,!294,!295,!296}
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 395, size: 16, flags: DIFlagTypePassByValue, elements: !300)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "rcastt", scope: !298, file: !0, line: 395, baseType: !1, size: 8, offset: 0)
!300 = !{!299}
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "recv", file: !0, line: 138, size: 192, flags: DIFlagTypePassByValue, elements: !307)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !301, file: !0, line: 140, baseType: !3, size: 32, offset: 0)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !301, file: !0, line: 141, baseType: !2, size: 8, offset: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !301, file: !0, line: 142, baseType: !1, size: 8, offset: 40)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !301, file: !0, line: 144, baseType: !25, size: 80, offset: 48)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !301, file: !0, line: 145, baseType: !22, size: 32, offset: 64)
!307 = !{!302,!303,!304,!305,!306}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 350, baseType: !21, size: 64)
!309 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 169, baseType: !2, size: 80, elements: !311)
!310 = !DISubrange(count: 10)
!311 = !{!310}
!312 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 172, baseType: !313, size: 800, elements: !317)
!313 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 172, baseType: !2, size: 80, elements: !315)
!314 = !DISubrange(count: 10)
!315 = !{!314}
!316 = !DISubrange(count: 10)
!317 = !{!316}
!318 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 193, baseType: !321, size: 32, elements: !320)
!319 = !DISubrange(count: 2)
!320 = !{!319}
!321 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!322 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 194, baseType: !325, size: 32, elements: !324)
!323 = !DISubrange(count: 2)
!324 = !{!323}
!325 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!326 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 195, baseType: !329, size: 32, elements: !328)
!327 = !DISubrange(count: 2)
!328 = !{!327}
!329 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!330 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 196, baseType: !333, size: 32, elements: !332)
!331 = !DISubrange(count: 2)
!332 = !{!331}
!333 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!334 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 78, baseType: !2, size: 128, elements: !336)
!335 = !DISubrange(count: 16)
!336 = !{!335}
!337 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 188, baseType: !340, size: 32, elements: !339)
!338 = !DISubrange(count: 10)
!339 = !{!338}
!340 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!341 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 189, baseType: !344, size: 32, elements: !343)
!342 = !DISubrange(count: 5)
!343 = !{!342}
!344 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!345 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 190, baseType: !348, size: 32, elements: !347)
!346 = !DISubrange(count: 10)
!347 = !{!346}
!348 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!349 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 191, baseType: !352, size: 32, elements: !351)
!350 = !DISubrange(count: 7)
!351 = !{!350}
!352 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!353 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!354 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!355 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 179, baseType: !358, size: 128, elements: !357)
!356 = !DISubrange(count: 101)
!357 = !{!356}
!358 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!359 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 180, baseType: !362, size: 32, elements: !361)
!360 = !DISubrange(count: 11)
!361 = !{!360}
!362 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!363 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 181, baseType: !366, size: 32, elements: !365)
!364 = !DISubrange(count: 11)
!365 = !{!364}
!366 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!367 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 182, baseType: !370, size: 32, elements: !369)
!368 = !DISubrange(count: 21)
!369 = !{!368}
!370 = !DIBasicType(size: 1, encoding: DW_ATE_boolean)
!371 = !DIBasicType(name: "enum", size: 32, encoding: DW_ATE_signed)
!372 = !DIBasicType(name: "range", size: 32, encoding: DW_ATE_signed)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 239, size: 512, flags: DIFlagTypePassByValue, elements: !400)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !373, file: !0, line: 241, baseType: !3, size: 32, offset: 0)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "vt", scope: !373, file: !0, line: 242, baseType: !371, size: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "vdi", scope: !373, file: !0, line: 244, baseType: !3, size: 32, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !373, file: !0, line: 244, baseType: !3, size: 32, offset: 96)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "vdb", scope: !373, file: !0, line: 245, baseType: !1, size: 8, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !373, file: !0, line: 245, baseType: !3, size: 32, offset: 96)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "vdc", scope: !373, file: !0, line: 246, baseType: !2, size: 8, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !373, file: !0, line: 246, baseType: !3, size: 32, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "vde", scope: !373, file: !0, line: 247, baseType: !22, size: 32, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !373, file: !0, line: 247, baseType: !3, size: 32, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "vdes", scope: !373, file: !0, line: 248, baseType: !23, size: 32, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !373, file: !0, line: 248, baseType: !3, size: 32, offset: 96)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "vds", scope: !373, file: !0, line: 249, baseType: !24, size: 32, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !373, file: !0, line: 249, baseType: !3, size: 32, offset: 96)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "vdr", scope: !373, file: !0, line: 250, baseType: !6, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !373, file: !0, line: 250, baseType: !3, size: 32, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "vdst", scope: !373, file: !0, line: 251, baseType: !25, size: 80, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !373, file: !0, line: 251, baseType: !3, size: 32, offset: 160)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "vda", scope: !373, file: !0, line: 252, baseType: !11, size: 320, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "j", scope: !373, file: !0, line: 252, baseType: !3, size: 32, offset: 384)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "vdrc", scope: !373, file: !0, line: 253, baseType: !15, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !373, file: !0, line: 253, baseType: !3, size: 32, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "vdstc", scope: !373, file: !0, line: 254, baseType: !28, size: 256, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !373, file: !0, line: 254, baseType: !3, size: 32, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "vdp", scope: !373, file: !0, line: 255, baseType: !32, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !373, file: !0, line: 255, baseType: !3, size: 32, offset: 128)
!400 = !{!374,!375,!376,!377,!378,!379,!380,!381,!382,!383,!384,!385,!386,!387,!388,!389,!390,!391,!392,!393,!394,!395,!396,!397,!398,!399}
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 270, size: 96, flags: DIFlagTypePassByValue, elements: !405)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "vt", scope: !401, file: !0, line: 272, baseType: !1, size: 8, offset: 0)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "vi", scope: !401, file: !0, line: 274, baseType: !3, size: 32, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "vb", scope: !401, file: !0, line: 275, baseType: !1, size: 8, offset: 8)
!405 = !{!402,!403,!404}
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 280, size: 96, flags: DIFlagTypePassByValue, elements: !410)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "vt", scope: !406, file: !0, line: 282, baseType: !22, size: 32, offset: 0)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "vi", scope: !406, file: !0, line: 284, baseType: !3, size: 32, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "vb", scope: !406, file: !0, line: 285, baseType: !1, size: 8, offset: 32)
!410 = !{!407,!408,!409}
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 290, size: 96, flags: DIFlagTypePassByValue, elements: !415)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "vt", scope: !411, file: !0, line: 292, baseType: !23, size: 32, offset: 0)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "vi", scope: !411, file: !0, line: 294, baseType: !3, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "vb", scope: !411, file: !0, line: 295, baseType: !1, size: 8, offset: 32)
!415 = !{!412,!413,!414}
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !0, line: 260, size: 96, flags: DIFlagTypePassByValue, elements: !420)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "vt", scope: !416, file: !0, line: 262, baseType: !24, size: 32, offset: 0)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "vi", scope: !416, file: !0, line: 264, baseType: !3, size: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "vb", scope: !416, file: !0, line: 265, baseType: !1, size: 8, offset: 32)
!420 = !{!417,!418,!419}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 494, baseType: !423, size: 64)
!422 = !{null, !3, !3, !2}
!423 = !DISubroutineType(types: !422)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 495, baseType: !426, size: 64)
!425 = !{!3, !3}
!426 = !DISubroutineType(types: !425)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 521, baseType: !429, size: 64)
!428 = !{!3, !3}
!429 = !DISubroutineType(types: !428)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 520, baseType: !435, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 520, baseType: !433, size: 64)
!432 = !{!3, !3}
!433 = !DISubroutineType(types: !432)
!434 = !{null, !431}
!435 = !DISubroutineType(types: !434)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 529, baseType: !438, size: 64)
!437 = !{!3, !3}
!438 = !DISubroutineType(types: !437)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, file: !0, line: 559, baseType: !441, size: 64)
!440 = !{null}
!441 = !DISubroutineType(types: !440)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "pt", file: !0, line: 580, baseType: !2, size: 64)
!443 = !{!1,!2,!3,!4,!5,!6,!7,!8,!11,!14,!15,!21,!22,!23,!24,!25,!28,!32,!46,!47,!48,!49,!50,!51,!64,!67,!70,!71,!74,!77,!80,!83,!84,!87,!90,!93,!96,!99,!102,!105,!108,!111,!115,!119,!123,!127,!128,!133,!136,!139,!140,!141,!142,!143,!144,!145,!146,!147,!148,!149,!150,!151,!152,!153,!156,!157,!158,!159,!160,!161,!162,!163,!164,!165,!166,!196,!210,!213,!216,!217,!220,!223,!226,!229,!232,!233,!236,!239,!242,!245,!248,!251,!254,!257,!260,!263,!264,!265,!266,!267,!268,!269,!270,!271,!272,!273,!274,!275,!276,!277,!278,!279,!280,!281,!282,!283,!284,!285,!286,!287,!288,!289,!298,!301,!308,!309,!312,!313,!318,!322,!326,!330,!334,!337,!341,!345,!349,!353,!354,!355,!359,!363,!367,!371,!372,!373,!401,!406,!411,!416,!421,!423,!424,!426,!427,!429,!430,!431,!433,!435,!436,!438,!439,!441,!442}
!444 = !{}
!445 = !{}
!446 = !{!"LPC 1.1"}
!447 = distinct !DICompileUnit(language: DW_LANG_Pascal83, file: !0, producer: "LPC 1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !444, retainedTypes: !443, globals: !445, nameTableKind: None)
!448 = !{i32 2, !"CodeView", i32 1}
!449 = !{i32 2, !"Debug Info Version", i32 3}

