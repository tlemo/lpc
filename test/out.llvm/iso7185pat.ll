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
%T_array_10 = type [10 x i8]
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
%T_array_61 = type [10 x i8]
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

    ; body
    %t28 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t28, i32 0, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.28, i32 0, i32 0), i32 64)
    %t29 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t29, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t29)
    %t30 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t30)
    %t31 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t31, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i32 0, i32 0), i32 47)
    call void @_WriteLn(i8* %t31)
    %t32 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t32)
    %t33 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t33, i32 0, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.31, i32 0, i32 0), i32 61)
    %t34 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t34, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t34)
    %t35 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t35)
    %t36 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t36, i32 0, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.28, i32 0, i32 0), i32 64)
    %t37 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t37, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t37)
    %t38 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t38)
    %t39 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t39, i32 0, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.33, i32 0, i32 0), i32 56)
    call void @_WriteLn(i8* %t39)
    %t40 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t40)
    %t41 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t41, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 8)
    call void @_WriteInteger(i8* %t41, i32 1, i32 0, i32 2147483647)
    call void @_WriteLn(i8* %t41)
    store i32 2147483647, i32* @i
    store i32 0, i32* @x
    %t42 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t42, i32 0, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.35, i32 0, i32 0), i32 54)
    %t43 = load i32, i32* @x
    call void @_WriteInteger(i8* %t42, i32 1, i32 0, i32 %t43)
    call void @_WriteLn(i8* %t42)
    %t44 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t44, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t44)
    %t45 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t45, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t45)
    %t46 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t46, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t46)
    %t47 = load %T_text, %T_text* @output
    call void @_WriteInteger(i8* %t47, i32 0, i32 0, i32 1)
    call void @_WriteLn(i8* %t47)
    %t48 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t48, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t48)
    %t49 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t49, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t49)
    %t50 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t50, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t50)
    %t51 = load %T_text, %T_text* @output
    call void @_WriteReal(i8* %t51, i32 0, i32 0, double 1.20000)
    call void @_WriteLn(i8* %t51)
    %t52 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t52, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t52)
    %t53 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t53, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t53)
    %t54 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t54, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t54)
    %t55 = load %T_text, %T_text* @output
    call void @_WriteBool(i8* %t55, i32 0, i32 0, i1 0)
    call void @_WriteLn(i8* %t55)
    %t56 = load %T_text, %T_text* @output
    call void @_WriteBool(i8* %t56, i32 0, i32 0, i1 1)
    call void @_WriteLn(i8* %t56)
    %t57 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t57, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t57)
    %t58 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t58, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t58)
    %t59 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t59, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t59)
    %t60 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t60, i32 0, i32 0, i8 97)
    call void @_WriteLn(i8* %t60)
    %t61 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t61)
    %t62 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t62, i32 0, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.42, i32 0, i32 0), i32 64)
    call void @_WriteLn(i8* %t62)
    %t63 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t63)
    %t64 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t64, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i32 10)
    %t65 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t65, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t65)
    %t66 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t66, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 10)
    %t67 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t67, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t67)
    %t68 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t68, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i32 10)
    store i32 1, i32* @i
    %t69 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t69, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t69)
    %t70 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t70, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i32 10)
    store i32 1, i32* @i
    %t71 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t71, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t71)
    %t72 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t72, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i32 10)
    store i32 1, i32* @i
    br label %L_1
L_1:
    %t73 = load %T_text, %T_text* @output
    %t74 = load i32, i32* @i
    call void @_WriteInteger(i8* %t73, i32 1, i32 0, i32 %t74)
    call void @_WriteChar(i8* %t73, i32 0, i32 0, i8 32)
    %t76 = load i32, i32* @i
    %t75 = add i32 %t76, 1
    store i32 %t75, i32* @i
    %t77 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t77, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t77)
    %t78 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t78, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 10)
    %t79 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t79, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t79)
    %t80 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t80, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i32 10)
    %t81 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t81, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t81)
    %t82 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t82, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i32 10)
    %t83 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t83, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 4)
    %t84 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t84, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t84)
    %t85 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t85, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i32 10)
    %t86 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t86, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 4)
    %t87 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t87, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t87)
    %t88 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t88, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i32 11)
    %t89 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t89)
    %t90 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t90, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i32 0, i32 0), i32 15)
    %t91 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t91, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.60, i32 0, i32 0), i32 24)
    %t92 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t92, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.61, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t92)
    %t93 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t93, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0), i32 17)
    call void @P_junk6()
    %t94 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t94, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i32 9)
    br label %L_2
L_2:
    %t95 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t95, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), i32 19)
    call void @_WriteLn(i8* %t95)
    %t96 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t96, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i32 0, i32 0), i32 17)
    %t97 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t97, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i32 9)
    br label %L_3
L_3:
    %t98 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t98, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), i32 19)
    call void @_WriteLn(i8* %t98)
    %t99 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t99, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i32 0, i32 0), i32 17)
    store i32 10, i32* @i
    %t100 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t100, i32 0, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.67, i32 0, i32 0), i32 35)
    call void @_WriteLn(i8* %t100)
    %t101 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t101, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0), i32 17)
    store i32 10, i32* @i
    %t102 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t102, i32 0, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.69, i32 0, i32 0), i32 35)
    call void @_WriteLn(i8* %t102)
    %t103 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t103, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i32 0, i32 0), i32 17)
    %t104 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t104, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t104)
    %t105 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t105, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i32 0, i32 0), i32 17)
    %t106 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t106, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.73, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t106)
    %t107 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t107, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.74, i32 0, i32 0), i32 17)
    store i32 10000, i32* @i
    %t108 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t108, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t108)
    %t109 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t109)
    %t110 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t110, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.76, i32 0, i32 0), i32 48)
    call void @_WriteLn(i8* %t110)
    %t111 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t111)
    store i32 43, i32* @x
    store i32 78, i32* @y
    %t112 = load i32, i32* @y
    store i32 %t112, i32* @z
    %t113 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t113, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i32 0, i32 0), i32 12)
    %t115 = load i32, i32* @x
    %t116 = load i32, i32* @y
    %t114 = add i32 %t115, %t116
    call void @_WriteInteger(i8* %t113, i32 1, i32 0, i32 %t114)
    call void @_WriteString(i8* %t113, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t113)
    %t117 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t117, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i32 0, i32 0), i32 12)
    %t119 = load i32, i32* @y
    %t120 = load i32, i32* @x
    %t118 = sub i32 %t119, %t120
    call void @_WriteInteger(i8* %t117, i32 1, i32 0, i32 %t118)
    call void @_WriteString(i8* %t117, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t117)
    %t121 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t121, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i32 0, i32 0), i32 12)
    %t123 = load i32, i32* @x
    %t124 = load i32, i32* @y
    %t122 = mul i32 %t123, %t124
    call void @_WriteInteger(i8* %t121, i32 1, i32 0, i32 %t122)
    call void @_WriteString(i8* %t121, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t121)
    %t125 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t125, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0), i32 12)
    %t127 = load i32, i32* @y
    %t128 = load i32, i32* @x
    %t126 = sdiv i32 %t127, %t128
    call void @_WriteInteger(i8* %t125, i32 1, i32 0, i32 %t126)
    call void @_WriteString(i8* %t125, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t125)
    %t129 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t129, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.85, i32 0, i32 0), i32 12)
    %t131 = load i32, i32* @y
    %t132 = load i32, i32* @x
    %t130 = srem i32 %t131, %t132
    call void @_WriteInteger(i8* %t129, i32 1, i32 0, i32 %t130)
    call void @_WriteString(i8* %t129, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t129)
    %t133 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t133, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t133, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t133, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t133)
    %t134 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t134, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.88, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t134, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t134, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t134)
    %t135 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t135, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t135, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t135, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t135)
    %t136 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t136, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0), i32 12)
    call void @_WriteChar(i8* %t136, i32 0, i32 0, i8 )
    call void @_WriteString(i8* %t136, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t136)
    %t137 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t137, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.94, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t137, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t137, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t137)
    %t138 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t138, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.96, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t138, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t138, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t138)
    %t139 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t139, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t139, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t139, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t139)
    %t140 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t140, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.100, i32 0, i32 0), i32 12)
    %t142 = load i32, i32* @z
    %t143 = load i32, i32* @y
    %t141 = icmp eq i32 %t142, %t143
    call void @_WriteBool(i8* %t140, i32 5, i32 0, i1 %t141)
    call void @_WriteString(i8* %t140, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t140)
    %t144 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t144, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.101, i32 0, i32 0), i32 12)
    %t146 = load i32, i32* @x
    %t147 = load i32, i32* @y
    %t145 = icmp eq i32 %t146, %t147
    call void @_WriteBool(i8* %t144, i32 5, i32 0, i1 %t145)
    call void @_WriteString(i8* %t144, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t144)
    %t148 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t148, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), i32 12)
    %t150 = load i32, i32* @x
    %t151 = load i32, i32* @y
    %t149 = icmp slt i32 %t150, %t151
    call void @_WriteBool(i8* %t148, i32 5, i32 0, i1 %t149)
    call void @_WriteString(i8* %t148, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t148)
    %t152 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t152, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.103, i32 0, i32 0), i32 12)
    %t154 = load i32, i32* @y
    %t155 = load i32, i32* @x
    %t153 = icmp slt i32 %t154, %t155
    call void @_WriteBool(i8* %t152, i32 5, i32 0, i1 %t153)
    call void @_WriteString(i8* %t152, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t152)
    %t156 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t156, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.104, i32 0, i32 0), i32 12)
    %t158 = load i32, i32* @y
    %t159 = load i32, i32* @x
    %t157 = icmp sgt i32 %t158, %t159
    call void @_WriteBool(i8* %t156, i32 5, i32 0, i1 %t157)
    call void @_WriteString(i8* %t156, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t156)
    %t160 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t160, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.105, i32 0, i32 0), i32 12)
    %t162 = load i32, i32* @x
    %t163 = load i32, i32* @y
    %t161 = icmp sgt i32 %t162, %t163
    call void @_WriteBool(i8* %t160, i32 5, i32 0, i1 %t161)
    call void @_WriteString(i8* %t160, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t160)
    %t164 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t164, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i32 0, i32 0), i32 12)
    %t166 = load i32, i32* @x
    %t167 = load i32, i32* @y
    %t165 = icmp ne i32 %t166, %t167
    call void @_WriteBool(i8* %t164, i32 5, i32 0, i1 %t165)
    call void @_WriteString(i8* %t164, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t164)
    %t168 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t168, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.107, i32 0, i32 0), i32 12)
    %t170 = load i32, i32* @y
    %t171 = load i32, i32* @z
    %t169 = icmp ne i32 %t170, %t171
    call void @_WriteBool(i8* %t168, i32 5, i32 0, i1 %t169)
    call void @_WriteString(i8* %t168, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t168)
    %t172 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t172, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.108, i32 0, i32 0), i32 12)
    %t174 = load i32, i32* @x
    %t175 = load i32, i32* @y
    %t173 = icmp sle i32 %t174, %t175
    call void @_WriteBool(i8* %t172, i32 5, i32 0, i1 %t173)
    call void @_WriteString(i8* %t172, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t172)
    %t176 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t176, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.109, i32 0, i32 0), i32 12)
    %t178 = load i32, i32* @z
    %t179 = load i32, i32* @y
    %t177 = icmp sle i32 %t178, %t179
    call void @_WriteBool(i8* %t176, i32 5, i32 0, i1 %t177)
    call void @_WriteString(i8* %t176, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t176)
    %t180 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t180, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.110, i32 0, i32 0), i32 12)
    %t182 = load i32, i32* @y
    %t183 = load i32, i32* @x
    %t181 = icmp sle i32 %t182, %t183
    call void @_WriteBool(i8* %t180, i32 5, i32 0, i1 %t181)
    call void @_WriteString(i8* %t180, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t180)
    %t184 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t184, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.111, i32 0, i32 0), i32 12)
    %t186 = load i32, i32* @y
    %t187 = load i32, i32* @x
    %t185 = icmp sge i32 %t186, %t187
    call void @_WriteBool(i8* %t184, i32 5, i32 0, i1 %t185)
    call void @_WriteString(i8* %t184, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t184)
    %t188 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t188, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.112, i32 0, i32 0), i32 12)
    %t190 = load i32, i32* @y
    %t191 = load i32, i32* @z
    %t189 = icmp sge i32 %t190, %t191
    call void @_WriteBool(i8* %t188, i32 5, i32 0, i1 %t189)
    call void @_WriteString(i8* %t188, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t188)
    %t192 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t192, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.113, i32 0, i32 0), i32 12)
    %t194 = load i32, i32* @x
    %t195 = load i32, i32* @y
    %t193 = icmp sge i32 %t194, %t195
    call void @_WriteBool(i8* %t192, i32 5, i32 0, i1 %t193)
    call void @_WriteString(i8* %t192, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t192)
    %t196 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t196, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.114, i32 0, i32 0), i32 12)
    store i32 546, i32* @i
    %t197 = load %T_text, %T_text* @output
    %t198 = load i32, i32* @i
    call void @_WriteInteger(i8* %t197, i32 1, i32 0, i32 %t198)
    call void @_WriteString(i8* %t197, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.115, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t197)
    %t199 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t199, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.116, i32 0, i32 0), i32 12)
    %t200 = add i32 56, 34
    call void @_WriteInteger(i8* %t199, i32 1, i32 0, i32 %t200)
    call void @_WriteString(i8* %t199, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.117, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t199)
    %t201 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t201, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.118, i32 0, i32 0), i32 12)
    %t202 = sub i32 56, 34
    call void @_WriteInteger(i8* %t201, i32 1, i32 0, i32 %t202)
    call void @_WriteString(i8* %t201, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t201)
    %t203 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t203, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.120, i32 0, i32 0), i32 12)
    %t204 = mul i32 56, 34
    call void @_WriteInteger(i8* %t203, i32 1, i32 0, i32 %t204)
    call void @_WriteString(i8* %t203, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.121, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t203)
    %t205 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t205, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.122, i32 0, i32 0), i32 12)
    %t206 = sdiv i32 56, 34
    call void @_WriteInteger(i8* %t205, i32 1, i32 0, i32 %t206)
    call void @_WriteString(i8* %t205, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t205)
    %t207 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t207, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.123, i32 0, i32 0), i32 12)
    %t208 = srem i32 56, 34
    call void @_WriteInteger(i8* %t207, i32 1, i32 0, i32 %t208)
    call void @_WriteString(i8* %t207, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t207)
    %t209 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t209, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.124, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t209, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t209, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t209)
    %t210 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t210, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.126, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t210, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t210, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t210)
    %t211 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t211, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.128, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t211, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t211, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.129, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t211)
    %t212 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t212, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.130, i32 0, i32 0), i32 12)
    call void @_WriteChar(i8* %t212, i32 0, i32 0, i8 )
    call void @_WriteString(i8* %t212, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t212)
    %t213 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t213, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t213, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t213, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.133, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t213)
    %t214 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t214, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.134, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t214, i32 1, i32 0, i32 768)
    call void @_WriteString(i8* %t214, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.135, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t214)
    %t215 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t215, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t215, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t215, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t215)
    %t216 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t216, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.137, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t216, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t216, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t216)
    %t217 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t217, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.138, i32 0, i32 0), i32 12)
    %t218 = icmp eq i32 56, 56
    call void @_WriteBool(i8* %t217, i32 5, i32 0, i1 %t218)
    call void @_WriteString(i8* %t217, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t217)
    %t219 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t219, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.139, i32 0, i32 0), i32 12)
    %t220 = icmp eq i32 56, 57
    call void @_WriteBool(i8* %t219, i32 5, i32 0, i1 %t220)
    call void @_WriteString(i8* %t219, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t219)
    %t221 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t221, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.140, i32 0, i32 0), i32 12)
    %t222 = icmp slt i32 56, 57
    call void @_WriteBool(i8* %t221, i32 5, i32 0, i1 %t222)
    call void @_WriteString(i8* %t221, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t221)
    %t223 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t223, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141, i32 0, i32 0), i32 12)
    %t224 = icmp slt i32 57, 56
    call void @_WriteBool(i8* %t223, i32 5, i32 0, i1 %t224)
    call void @_WriteString(i8* %t223, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t223)
    %t225 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t225, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.142, i32 0, i32 0), i32 12)
    %t226 = icmp sgt i32 57, 56
    call void @_WriteBool(i8* %t225, i32 5, i32 0, i1 %t226)
    call void @_WriteString(i8* %t225, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t225)
    %t227 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t227, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.143, i32 0, i32 0), i32 12)
    %t228 = icmp sgt i32 56, 57
    call void @_WriteBool(i8* %t227, i32 5, i32 0, i1 %t228)
    call void @_WriteString(i8* %t227, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t227)
    %t229 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t229, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.144, i32 0, i32 0), i32 12)
    %t230 = icmp ne i32 56, 57
    call void @_WriteBool(i8* %t229, i32 5, i32 0, i1 %t230)
    call void @_WriteString(i8* %t229, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t229)
    %t231 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t231, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.145, i32 0, i32 0), i32 12)
    %t232 = icmp ne i32 56, 56
    call void @_WriteBool(i8* %t231, i32 5, i32 0, i1 %t232)
    call void @_WriteString(i8* %t231, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t231)
    %t233 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t233, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.146, i32 0, i32 0), i32 12)
    %t234 = icmp sle i32 55, 500
    call void @_WriteBool(i8* %t233, i32 5, i32 0, i1 %t234)
    call void @_WriteString(i8* %t233, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t233)
    %t235 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t235, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.147, i32 0, i32 0), i32 12)
    %t236 = icmp sle i32 67, 67
    call void @_WriteBool(i8* %t235, i32 5, i32 0, i1 %t236)
    call void @_WriteString(i8* %t235, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t235)
    %t237 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t237, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.148, i32 0, i32 0), i32 12)
    %t238 = icmp sle i32 56, 33
    call void @_WriteBool(i8* %t237, i32 5, i32 0, i1 %t238)
    call void @_WriteString(i8* %t237, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t237)
    %t239 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t239, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.149, i32 0, i32 0), i32 12)
    %t240 = icmp sge i32 645, 4
    call void @_WriteBool(i8* %t239, i32 5, i32 0, i1 %t240)
    call void @_WriteString(i8* %t239, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t239)
    %t241 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t241, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.150, i32 0, i32 0), i32 12)
    %t242 = icmp sge i32 23, 23
    call void @_WriteBool(i8* %t241, i32 5, i32 0, i1 %t242)
    call void @_WriteString(i8* %t241, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t241)
    %t243 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t243, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.151, i32 0, i32 0), i32 12)
    %t244 = icmp sge i32 45, 123
    call void @_WriteBool(i8* %t243, i32 5, i32 0, i1 %t244)
    call void @_WriteString(i8* %t243, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t243)
    %t245 = sub i32 0, 14
    store i32 %t245, i32* @as
    %t246 = sub i32 0, 32
    store i32 %t246, i32* @bs
    %t247 = sub i32 0, 14
    store i32 %t247, i32* @cs
    store i32 20, i32* @ds
    %t248 = sub i32 0, 15
    store i32 %t248, i32* @es
    store i32 2147483647, i32* @gs
    store i32 -2147483647, i32* @hs
    %t249 = sub i32 0, 2147483647
    store i32 %t249, i32* @vnum
    %t250 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t250, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.152, i32 0, i32 0), i32 12)
    %t252 = load i32, i32* @as
    %t253 = load i32, i32* @ds
    %t251 = add i32 %t252, %t253
    call void @_WriteInteger(i8* %t250, i32 1, i32 0, i32 %t251)
    call void @_WriteString(i8* %t250, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t250)
    %t254 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t254, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.153, i32 0, i32 0), i32 12)
    %t256 = load i32, i32* @ds
    %t257 = load i32, i32* @as
    %t255 = add i32 %t256, %t257
    call void @_WriteInteger(i8* %t254, i32 1, i32 0, i32 %t255)
    call void @_WriteString(i8* %t254, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t254)
    %t258 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t258, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.154, i32 0, i32 0), i32 12)
    %t260 = load i32, i32* @bs
    %t261 = load i32, i32* @ds
    %t259 = add i32 %t260, %t261
    call void @_WriteInteger(i8* %t258, i32 1, i32 0, i32 %t259)
    call void @_WriteString(i8* %t258, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.155, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t258)
    %t262 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t262, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.156, i32 0, i32 0), i32 12)
    %t264 = load i32, i32* @as
    %t265 = load i32, i32* @bs
    %t263 = add i32 %t264, %t265
    call void @_WriteInteger(i8* %t262, i32 1, i32 0, i32 %t263)
    call void @_WriteString(i8* %t262, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.157, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t262)
    %t266 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t266, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.158, i32 0, i32 0), i32 12)
    %t268 = load i32, i32* @ds
    %t269 = load i32, i32* @as
    %t267 = sub i32 %t268, %t269
    call void @_WriteInteger(i8* %t266, i32 1, i32 0, i32 %t267)
    call void @_WriteString(i8* %t266, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t266)
    %t270 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t270, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.160, i32 0, i32 0), i32 12)
    %t272 = load i32, i32* @bs
    %t273 = load i32, i32* @ds
    %t271 = sub i32 %t272, %t273
    call void @_WriteInteger(i8* %t270, i32 1, i32 0, i32 %t271)
    call void @_WriteString(i8* %t270, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.161, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t270)
    %t274 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t274, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.162, i32 0, i32 0), i32 12)
    %t276 = load i32, i32* @bs
    %t277 = load i32, i32* @as
    %t275 = sub i32 %t276, %t277
    call void @_WriteInteger(i8* %t274, i32 1, i32 0, i32 %t275)
    call void @_WriteString(i8* %t274, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.163, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t274)
    %t278 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t278, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.164, i32 0, i32 0), i32 12)
    %t280 = load i32, i32* @ds
    %t281 = load i32, i32* @as
    %t279 = mul i32 %t280, %t281
    call void @_WriteInteger(i8* %t278, i32 1, i32 0, i32 %t279)
    call void @_WriteString(i8* %t278, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.165, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t278)
    %t282 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t282, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.166, i32 0, i32 0), i32 12)
    %t284 = load i32, i32* @as
    %t285 = load i32, i32* @ds
    %t283 = mul i32 %t284, %t285
    call void @_WriteInteger(i8* %t282, i32 1, i32 0, i32 %t283)
    call void @_WriteString(i8* %t282, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.165, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t282)
    %t286 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t286, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.167, i32 0, i32 0), i32 12)
    %t288 = load i32, i32* @as
    %t289 = load i32, i32* @bs
    %t287 = mul i32 %t288, %t289
    call void @_WriteInteger(i8* %t286, i32 1, i32 0, i32 %t287)
    call void @_WriteString(i8* %t286, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.168, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t286)
    %t290 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t290, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.169, i32 0, i32 0), i32 12)
    %t292 = load i32, i32* @ds
    %t293 = load i32, i32* @as
    %t291 = sdiv i32 %t292, %t293
    call void @_WriteInteger(i8* %t290, i32 1, i32 0, i32 %t291)
    call void @_WriteString(i8* %t290, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.170, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t290)
    %t294 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t294, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.171, i32 0, i32 0), i32 12)
    %t296 = load i32, i32* @bs
    %t297 = load i32, i32* @ds
    %t295 = sdiv i32 %t296, %t297
    call void @_WriteInteger(i8* %t294, i32 1, i32 0, i32 %t295)
    call void @_WriteString(i8* %t294, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.170, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t294)
    %t298 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t298, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.172, i32 0, i32 0), i32 12)
    %t300 = load i32, i32* @bs
    %t301 = load i32, i32* @as
    %t299 = sdiv i32 %t300, %t301
    call void @_WriteInteger(i8* %t298, i32 1, i32 0, i32 %t299)
    call void @_WriteString(i8* %t298, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.173, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t298)
    %t302 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t302, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.174, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t302, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t302, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.175, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t302)
    %t303 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t303, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.176, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t303, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t303, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.177, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t303)
    %t304 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t304, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.178, i32 0, i32 0), i32 11)
    call void @_WriteInteger(i8* %t304, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t304, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.179, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t304)
    %t305 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t305, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.180, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t305, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t305, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t305)
    %t306 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t306, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.181, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t306, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t306, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t306)
    %t307 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t307, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.182, i32 0, i32 0), i32 12)
    %t309 = load i32, i32* @as
    %t310 = load i32, i32* @cs
    %t308 = icmp eq i32 %t309, %t310
    call void @_WriteBool(i8* %t307, i32 5, i32 0, i1 %t308)
    call void @_WriteString(i8* %t307, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t307)
    %t311 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t311, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.183, i32 0, i32 0), i32 12)
    %t313 = load i32, i32* @as
    %t314 = load i32, i32* @bs
    %t312 = icmp eq i32 %t313, %t314
    call void @_WriteBool(i8* %t311, i32 5, i32 0, i1 %t312)
    call void @_WriteString(i8* %t311, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t311)
    %t315 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t315, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.184, i32 0, i32 0), i32 12)
    %t317 = load i32, i32* @as
    %t318 = load i32, i32* @bs
    %t316 = icmp ne i32 %t317, %t318
    call void @_WriteBool(i8* %t315, i32 5, i32 0, i1 %t316)
    call void @_WriteString(i8* %t315, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t315)
    %t319 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t319, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.185, i32 0, i32 0), i32 12)
    %t321 = load i32, i32* @as
    %t322 = load i32, i32* @cs
    %t320 = icmp ne i32 %t321, %t322
    call void @_WriteBool(i8* %t319, i32 5, i32 0, i1 %t320)
    call void @_WriteString(i8* %t319, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t319)
    %t323 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t323, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.186, i32 0, i32 0), i32 12)
    %t325 = load i32, i32* @as
    %t326 = load i32, i32* @ds
    %t324 = icmp slt i32 %t325, %t326
    call void @_WriteBool(i8* %t323, i32 5, i32 0, i1 %t324)
    call void @_WriteString(i8* %t323, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t323)
    %t327 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t327, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.187, i32 0, i32 0), i32 12)
    %t329 = load i32, i32* @bs
    %t330 = load i32, i32* @as
    %t328 = icmp slt i32 %t329, %t330
    call void @_WriteBool(i8* %t327, i32 5, i32 0, i1 %t328)
    call void @_WriteString(i8* %t327, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t327)
    %t331 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t331, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.188, i32 0, i32 0), i32 12)
    %t333 = load i32, i32* @ds
    %t334 = load i32, i32* @as
    %t332 = icmp slt i32 %t333, %t334
    call void @_WriteBool(i8* %t331, i32 5, i32 0, i1 %t332)
    call void @_WriteString(i8* %t331, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t331)
    %t335 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t335, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.189, i32 0, i32 0), i32 12)
    %t337 = load i32, i32* @as
    %t338 = load i32, i32* @bs
    %t336 = icmp slt i32 %t337, %t338
    call void @_WriteBool(i8* %t335, i32 5, i32 0, i1 %t336)
    call void @_WriteString(i8* %t335, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t335)
    %t339 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t339, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.190, i32 0, i32 0), i32 12)
    %t341 = load i32, i32* @ds
    %t342 = load i32, i32* @as
    %t340 = icmp sgt i32 %t341, %t342
    call void @_WriteBool(i8* %t339, i32 5, i32 0, i1 %t340)
    call void @_WriteString(i8* %t339, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t339)
    %t343 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t343, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.191, i32 0, i32 0), i32 12)
    %t345 = load i32, i32* @as
    %t346 = load i32, i32* @bs
    %t344 = icmp sgt i32 %t345, %t346
    call void @_WriteBool(i8* %t343, i32 5, i32 0, i1 %t344)
    call void @_WriteString(i8* %t343, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t343)
    %t347 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t347, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.192, i32 0, i32 0), i32 12)
    %t349 = load i32, i32* @as
    %t350 = load i32, i32* @ds
    %t348 = icmp sgt i32 %t349, %t350
    call void @_WriteBool(i8* %t347, i32 5, i32 0, i1 %t348)
    call void @_WriteString(i8* %t347, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t347)
    %t351 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t351, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.193, i32 0, i32 0), i32 12)
    %t353 = load i32, i32* @bs
    %t354 = load i32, i32* @as
    %t352 = icmp sgt i32 %t353, %t354
    call void @_WriteBool(i8* %t351, i32 5, i32 0, i1 %t352)
    call void @_WriteString(i8* %t351, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t351)
    %t355 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t355, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.194, i32 0, i32 0), i32 12)
    %t357 = load i32, i32* @as
    %t358 = load i32, i32* @ds
    %t356 = icmp sle i32 %t357, %t358
    call void @_WriteBool(i8* %t355, i32 5, i32 0, i1 %t356)
    call void @_WriteString(i8* %t355, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t355)
    %t359 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t359, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.195, i32 0, i32 0), i32 12)
    %t361 = load i32, i32* @bs
    %t362 = load i32, i32* @as
    %t360 = icmp sle i32 %t361, %t362
    call void @_WriteBool(i8* %t359, i32 5, i32 0, i1 %t360)
    call void @_WriteString(i8* %t359, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t359)
    %t363 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t363, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.196, i32 0, i32 0), i32 12)
    %t365 = load i32, i32* @as
    %t366 = load i32, i32* @cs
    %t364 = icmp sle i32 %t365, %t366
    call void @_WriteBool(i8* %t363, i32 5, i32 0, i1 %t364)
    call void @_WriteString(i8* %t363, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t363)
    %t367 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t367, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.197, i32 0, i32 0), i32 12)
    %t369 = load i32, i32* @ds
    %t370 = load i32, i32* @as
    %t368 = icmp sle i32 %t369, %t370
    call void @_WriteBool(i8* %t367, i32 5, i32 0, i1 %t368)
    call void @_WriteString(i8* %t367, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t367)
    %t371 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t371, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.198, i32 0, i32 0), i32 12)
    %t373 = load i32, i32* @as
    %t374 = load i32, i32* @bs
    %t372 = icmp sle i32 %t373, %t374
    call void @_WriteBool(i8* %t371, i32 5, i32 0, i1 %t372)
    call void @_WriteString(i8* %t371, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t371)
    %t375 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t375, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.199, i32 0, i32 0), i32 12)
    %t377 = load i32, i32* @ds
    %t378 = load i32, i32* @as
    %t376 = icmp sge i32 %t377, %t378
    call void @_WriteBool(i8* %t375, i32 5, i32 0, i1 %t376)
    call void @_WriteString(i8* %t375, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t375)
    %t379 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t379, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.200, i32 0, i32 0), i32 12)
    %t381 = load i32, i32* @as
    %t382 = load i32, i32* @bs
    %t380 = icmp sge i32 %t381, %t382
    call void @_WriteBool(i8* %t379, i32 5, i32 0, i1 %t380)
    call void @_WriteString(i8* %t379, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t379)
    %t383 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t383, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.201, i32 0, i32 0), i32 12)
    %t385 = load i32, i32* @as
    %t386 = load i32, i32* @cs
    %t384 = icmp sge i32 %t385, %t386
    call void @_WriteBool(i8* %t383, i32 5, i32 0, i1 %t384)
    call void @_WriteString(i8* %t383, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t383)
    %t387 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t387, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.202, i32 0, i32 0), i32 12)
    %t389 = load i32, i32* @as
    %t390 = load i32, i32* @ds
    %t388 = icmp sge i32 %t389, %t390
    call void @_WriteBool(i8* %t387, i32 5, i32 0, i1 %t388)
    call void @_WriteString(i8* %t387, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t387)
    %t391 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t391, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.203, i32 0, i32 0), i32 12)
    %t393 = load i32, i32* @bs
    %t394 = load i32, i32* @as
    %t392 = icmp sge i32 %t393, %t394
    call void @_WriteBool(i8* %t391, i32 5, i32 0, i1 %t392)
    call void @_WriteString(i8* %t391, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t391)
    %t395 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t395, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.204, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t395, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t395, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.205, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t395)
    %t396 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t396, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.206, i32 0, i32 0), i32 12)
    %t398 = load i32, i32* @gs
    %t399 = load i32, i32* @hs
    %t397 = add i32 %t398, %t399
    call void @_WriteInteger(i8* %t396, i32 1, i32 0, i32 %t397)
    call void @_WriteString(i8* %t396, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t396)
    %t400 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t400, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.208, i32 0, i32 0), i32 12)
    %t402 = load i32, i32* @gs
    %t401 = sub i32 %t402, 2147483647
    call void @_WriteInteger(i8* %t400, i32 1, i32 0, i32 %t401)
    call void @_WriteString(i8* %t400, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t400)
    %t403 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t403, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.209, i32 0, i32 0), i32 12)
    %t405 = load i32, i32* @gs
    %t406 = load i32, i32* @vnum
    %t404 = add i32 %t405, %t406
    call void @_WriteInteger(i8* %t403, i32 1, i32 0, i32 %t404)
    call void @_WriteString(i8* %t403, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t403)
    %t407 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t407, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.210, i32 0, i32 0), i32 12)
    %t409 = sub i32 0, 30
    %t408 = add i32 45, %t409
    call void @_WriteInteger(i8* %t407, i32 1, i32 0, i32 %t408)
    call void @_WriteString(i8* %t407, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.211, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t407)
    %t410 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t410, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.212, i32 0, i32 0), i32 13)
    %t412 = sub i32 0, 25
    %t411 = add i32 %t412, 70
    call void @_WriteInteger(i8* %t410, i32 1, i32 0, i32 %t411)
    call void @_WriteString(i8* %t410, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.213, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t410)
    %t413 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t413, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.214, i32 0, i32 0), i32 12)
    %t415 = sub i32 0, 62
    %t414 = add i32 %t415, 23
    call void @_WriteInteger(i8* %t413, i32 1, i32 0, i32 %t414)
    call void @_WriteString(i8* %t413, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.215, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t413)
    %t416 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t416, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.216, i32 0, i32 0), i32 12)
    %t418 = sub i32 0, 20
    %t419 = sub i32 0, 15
    %t417 = add i32 %t418, %t419
    call void @_WriteInteger(i8* %t416, i32 1, i32 0, i32 %t417)
    call void @_WriteString(i8* %t416, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.217, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t416)
    %t420 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t420, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.218, i32 0, i32 0), i32 12)
    %t422 = sub i32 0, 14
    %t421 = sub i32 20, %t422
    call void @_WriteInteger(i8* %t420, i32 1, i32 0, i32 %t421)
    call void @_WriteString(i8* %t420, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t420)
    %t423 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t423, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.219, i32 0, i32 0), i32 12)
    %t425 = sub i32 0, 34
    %t424 = sub i32 %t425, 14
    call void @_WriteInteger(i8* %t423, i32 1, i32 0, i32 %t424)
    call void @_WriteString(i8* %t423, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.220, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t423)
    %t426 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t426, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.221, i32 0, i32 0), i32 12)
    %t428 = sub i32 0, 56
    %t429 = sub i32 0, 12
    %t427 = sub i32 %t428, %t429
    call void @_WriteInteger(i8* %t426, i32 1, i32 0, i32 %t427)
    call void @_WriteString(i8* %t426, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.222, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t426)
    %t430 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t430, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.223, i32 0, i32 0), i32 12)
    %t432 = sub i32 0, 4
    %t431 = mul i32 5, %t432
    call void @_WriteInteger(i8* %t430, i32 1, i32 0, i32 %t431)
    call void @_WriteString(i8* %t430, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.224, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t430)
    %t433 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t433, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.225, i32 0, i32 0), i32 12)
    %t435 = sub i32 0, 18
    %t434 = mul i32 %t435, 7
    call void @_WriteInteger(i8* %t433, i32 1, i32 0, i32 %t434)
    call void @_WriteString(i8* %t433, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.226, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t433)
    %t436 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t436, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.227, i32 0, i32 0), i32 12)
    %t438 = sub i32 0, 40
    %t439 = sub i32 0, 13
    %t437 = mul i32 %t438, %t439
    call void @_WriteInteger(i8* %t436, i32 1, i32 0, i32 %t437)
    call void @_WriteString(i8* %t436, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.228, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t436)
    %t440 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t440, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.229, i32 0, i32 0), i32 12)
    %t442 = sub i32 0, 5
    %t441 = sdiv i32 30, %t442
    call void @_WriteInteger(i8* %t440, i32 1, i32 0, i32 %t441)
    call void @_WriteString(i8* %t440, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.230, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t440)
    %t443 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t443, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.231, i32 0, i32 0), i32 12)
    %t445 = sub i32 0, 50
    %t444 = sdiv i32 %t445, 2
    call void @_WriteInteger(i8* %t443, i32 1, i32 0, i32 %t444)
    call void @_WriteString(i8* %t443, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.232, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t443)
    %t446 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t446, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.233, i32 0, i32 0), i32 12)
    %t448 = sub i32 0, 20
    %t449 = sub i32 0, 4
    %t447 = sdiv i32 %t448, %t449
    call void @_WriteInteger(i8* %t446, i32 1, i32 0, i32 %t447)
    call void @_WriteString(i8* %t446, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.234, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t446)
    %t450 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t450, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.235, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t450, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t450, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.236, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t450)
    %t451 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t451, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.237, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t451, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t451, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t451)
    %t452 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t452, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.238, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t452, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t452, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.239, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t452)
    %t453 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t453, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.240, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t453, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t453, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.241, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t453)
    %t454 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t454, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.242, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t454, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t454, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.243, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t454)
    %t455 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t455, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.244, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t455, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t455, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t455)
    %t456 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t456, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.245, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t456, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t456, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t456)
    %t457 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t457, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.246, i32 0, i32 0), i32 12)
    %t459 = sub i32 0, 5
    %t460 = sub i32 0, 5
    %t458 = icmp eq i32 %t459, %t460
    call void @_WriteBool(i8* %t457, i32 5, i32 0, i1 %t458)
    call void @_WriteString(i8* %t457, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t457)
    %t461 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t461, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.247, i32 0, i32 0), i32 12)
    %t463 = sub i32 0, 5
    %t462 = icmp eq i32 %t463, 5
    call void @_WriteBool(i8* %t461, i32 5, i32 0, i1 %t462)
    call void @_WriteString(i8* %t461, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t461)
    %t464 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t464, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.248, i32 0, i32 0), i32 12)
    %t466 = sub i32 0, 21
    %t467 = sub i32 0, 40
    %t465 = icmp ne i32 %t466, %t467
    call void @_WriteBool(i8* %t464, i32 5, i32 0, i1 %t465)
    call void @_WriteString(i8* %t464, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t464)
    %t468 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t468, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.249, i32 0, i32 0), i32 12)
    %t470 = sub i32 0, 21
    %t471 = sub i32 0, 21
    %t469 = icmp ne i32 %t470, %t471
    call void @_WriteBool(i8* %t468, i32 5, i32 0, i1 %t469)
    call void @_WriteString(i8* %t468, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t468)
    %t472 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t472, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.250, i32 0, i32 0), i32 12)
    %t474 = sub i32 0, 3
    %t473 = icmp slt i32 %t474, 5
    call void @_WriteBool(i8* %t472, i32 5, i32 0, i1 %t473)
    call void @_WriteString(i8* %t472, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t472)
    %t475 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t475, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.251, i32 0, i32 0), i32 12)
    %t477 = sub i32 0, 32
    %t478 = sub i32 0, 20
    %t476 = icmp slt i32 %t477, %t478
    call void @_WriteBool(i8* %t475, i32 5, i32 0, i1 %t476)
    call void @_WriteString(i8* %t475, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t475)
    %t479 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t479, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.252, i32 0, i32 0), i32 12)
    %t481 = sub i32 0, 20
    %t480 = icmp slt i32 20, %t481
    call void @_WriteBool(i8* %t479, i32 5, i32 0, i1 %t480)
    call void @_WriteString(i8* %t479, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t479)
    %t482 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t482, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.253, i32 0, i32 0), i32 12)
    %t484 = sub i32 0, 15
    %t485 = sub i32 0, 40
    %t483 = icmp slt i32 %t484, %t485
    call void @_WriteBool(i8* %t482, i32 5, i32 0, i1 %t483)
    call void @_WriteString(i8* %t482, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t482)
    %t486 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t486, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.254, i32 0, i32 0), i32 12)
    %t488 = sub i32 0, 4
    %t487 = icmp sgt i32 70, %t488
    call void @_WriteBool(i8* %t486, i32 5, i32 0, i1 %t487)
    call void @_WriteString(i8* %t486, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t486)
    %t489 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t489, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.255, i32 0, i32 0), i32 12)
    %t491 = sub i32 0, 23
    %t492 = sub i32 0, 34
    %t490 = icmp sgt i32 %t491, %t492
    call void @_WriteBool(i8* %t489, i32 5, i32 0, i1 %t490)
    call void @_WriteString(i8* %t489, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t489)
    %t493 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t493, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.256, i32 0, i32 0), i32 12)
    %t495 = sub i32 0, 5
    %t494 = icmp sgt i32 %t495, 5
    call void @_WriteBool(i8* %t493, i32 5, i32 0, i1 %t494)
    call void @_WriteString(i8* %t493, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t493)
    %t496 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t496, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.257, i32 0, i32 0), i32 12)
    %t498 = sub i32 0, 60
    %t499 = sub i32 0, 59
    %t497 = icmp sgt i32 %t498, %t499
    call void @_WriteBool(i8* %t496, i32 5, i32 0, i1 %t497)
    call void @_WriteString(i8* %t496, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t496)
    %t500 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t500, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.258, i32 0, i32 0), i32 12)
    %t502 = sub i32 0, 12
    %t501 = icmp sle i32 %t502, 4
    call void @_WriteBool(i8* %t500, i32 5, i32 0, i1 %t501)
    call void @_WriteString(i8* %t500, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t500)
    %t503 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t503, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.259, i32 0, i32 0), i32 12)
    %t505 = sub i32 0, 14
    %t506 = sub i32 0, 5
    %t504 = icmp sle i32 %t505, %t506
    call void @_WriteBool(i8* %t503, i32 5, i32 0, i1 %t504)
    call void @_WriteString(i8* %t503, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t503)
    %t507 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t507, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.260, i32 0, i32 0), i32 12)
    %t509 = sub i32 0, 7
    %t510 = sub i32 0, 7
    %t508 = icmp sle i32 %t509, %t510
    call void @_WriteBool(i8* %t507, i32 5, i32 0, i1 %t508)
    call void @_WriteString(i8* %t507, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t507)
    %t511 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t511, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.261, i32 0, i32 0), i32 12)
    %t513 = sub i32 0, 5
    %t512 = icmp sle i32 5, %t513
    call void @_WriteBool(i8* %t511, i32 5, i32 0, i1 %t512)
    call void @_WriteString(i8* %t511, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t511)
    %t514 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t514, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.262, i32 0, i32 0), i32 12)
    %t516 = sub i32 0, 10
    %t517 = sub i32 0, 20
    %t515 = icmp sle i32 %t516, %t517
    call void @_WriteBool(i8* %t514, i32 5, i32 0, i1 %t515)
    call void @_WriteString(i8* %t514, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t514)
    %t518 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t518, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.263, i32 0, i32 0), i32 12)
    %t520 = sub i32 0, 3
    %t519 = icmp sge i32 9, %t520
    call void @_WriteBool(i8* %t518, i32 5, i32 0, i1 %t519)
    call void @_WriteString(i8* %t518, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t518)
    %t521 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t521, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.264, i32 0, i32 0), i32 12)
    %t523 = sub i32 0, 4
    %t524 = sub i32 0, 10
    %t522 = icmp sge i32 %t523, %t524
    call void @_WriteBool(i8* %t521, i32 5, i32 0, i1 %t522)
    call void @_WriteString(i8* %t521, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t521)
    %t525 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t525, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.265, i32 0, i32 0), i32 12)
    %t527 = sub i32 0, 13
    %t528 = sub i32 0, 13
    %t526 = icmp sge i32 %t527, %t528
    call void @_WriteBool(i8* %t525, i32 5, i32 0, i1 %t526)
    call void @_WriteString(i8* %t525, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t525)
    %t529 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t529, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.266, i32 0, i32 0), i32 12)
    %t531 = sub i32 0, 6
    %t530 = icmp sge i32 %t531, 6
    call void @_WriteBool(i8* %t529, i32 5, i32 0, i1 %t530)
    call void @_WriteString(i8* %t529, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t529)
    %t532 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t532, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.267, i32 0, i32 0), i32 12)
    %t534 = sub i32 0, 20
    %t535 = sub i32 0, 10
    %t533 = icmp sge i32 %t534, %t535
    call void @_WriteBool(i8* %t532, i32 5, i32 0, i1 %t533)
    call void @_WriteString(i8* %t532, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t532)
    %t536 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t536, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.268, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t536, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t536, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t536)
    %t537 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t537, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.269, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t537, i32 1, i32 0, i32 -52)
    call void @_WriteString(i8* %t537, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.161, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t537)
    %t538 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t538, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.270, i32 0, i32 0), i32 12)
    %t539 = sub i32 0, -52
    call void @_WriteInteger(i8* %t538, i32 1, i32 0, i32 %t539)
    call void @_WriteString(i8* %t538, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.271, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t538)
    %t540 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t540, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.272, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t540, i32 1, i32 0, i32 -768)
    call void @_WriteString(i8* %t540, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.273, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t540)
    %t541 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t541, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.274, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t541, i32 1, i32 0, i32 52)
    call void @_WriteString(i8* %t541, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.271, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t541)
    %t542 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t542, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.275, i32 0, i32 0), i32 12)
    %t543 = add i32 2147483647, -2147483647
    call void @_WriteInteger(i8* %t542, i32 1, i32 0, i32 %t543)
    call void @_WriteString(i8* %t542, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t542)
    %t544 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t544)
    %t545 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t545, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.276, i32 0, i32 0), i32 49)
    call void @_WriteLn(i8* %t545)
    %t546 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t546)
    store i32 43, i32* @srx
    store i32 78, i32* @sry
    %t547 = load i32, i32* @sry
    store i32 %t547, i32* @srz
    %t548 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t548, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.277, i32 0, i32 0), i32 13)
    %t550 = load i32, i32* @srx
    %t551 = load i32, i32* @sry
    %t549 = add i32 %t550, %t551
    call void @_WriteInteger(i8* %t548, i32 1, i32 0, i32 %t549)
    call void @_WriteString(i8* %t548, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t548)
    %t552 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t552, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.278, i32 0, i32 0), i32 13)
    %t554 = load i32, i32* @sry
    %t555 = load i32, i32* @srx
    %t553 = sub i32 %t554, %t555
    call void @_WriteInteger(i8* %t552, i32 1, i32 0, i32 %t553)
    call void @_WriteString(i8* %t552, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t552)
    %t556 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t556, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.279, i32 0, i32 0), i32 13)
    %t558 = load i32, i32* @srx
    %t559 = load i32, i32* @sry
    %t557 = mul i32 %t558, %t559
    call void @_WriteInteger(i8* %t556, i32 1, i32 0, i32 %t557)
    call void @_WriteString(i8* %t556, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t556)
    %t560 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t560, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.280, i32 0, i32 0), i32 13)
    %t562 = load i32, i32* @sry
    %t563 = load i32, i32* @srx
    %t561 = sdiv i32 %t562, %t563
    call void @_WriteInteger(i8* %t560, i32 1, i32 0, i32 %t561)
    call void @_WriteString(i8* %t560, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t560)
    %t564 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t564, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.281, i32 0, i32 0), i32 13)
    %t566 = load i32, i32* @sry
    %t567 = load i32, i32* @srx
    %t565 = srem i32 %t566, %t567
    call void @_WriteInteger(i8* %t564, i32 1, i32 0, i32 %t565)
    call void @_WriteString(i8* %t564, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t564)
    %t568 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t568, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.282, i32 0, i32 0), i32 13)
    call void @_WriteInteger(i8* %t568, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t568, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t568)
    %t569 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t569, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.283, i32 0, i32 0), i32 13)
    call void @_WriteInteger(i8* %t569, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t569, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t569)
    %t570 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t570, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.284, i32 0, i32 0), i32 13)
    call void @_WriteChar(i8* %t570, i32 0, i32 0, i8 )
    call void @_WriteString(i8* %t570, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t570)
    %t571 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t571, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.285, i32 0, i32 0), i32 13)
    call void @_WriteInteger(i8* %t571, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t571, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t571)
    %t572 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t572, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.286, i32 0, i32 0), i32 13)
    call void @_WriteBool(i8* %t572, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t572, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t572)
    %t573 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t573, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.287, i32 0, i32 0), i32 13)
    call void @_WriteBool(i8* %t573, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t573, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t573)
    %t574 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t574, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.288, i32 0, i32 0), i32 13)
    %t576 = load i32, i32* @srz
    %t577 = load i32, i32* @sry
    %t575 = icmp eq i32 %t576, %t577
    call void @_WriteBool(i8* %t574, i32 5, i32 0, i1 %t575)
    call void @_WriteString(i8* %t574, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t574)
    %t578 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t578, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.289, i32 0, i32 0), i32 13)
    %t580 = load i32, i32* @srx
    %t581 = load i32, i32* @sry
    %t579 = icmp eq i32 %t580, %t581
    call void @_WriteBool(i8* %t578, i32 5, i32 0, i1 %t579)
    call void @_WriteString(i8* %t578, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t578)
    %t582 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t582, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.290, i32 0, i32 0), i32 13)
    %t584 = load i32, i32* @srx
    %t585 = load i32, i32* @sry
    %t583 = icmp slt i32 %t584, %t585
    call void @_WriteBool(i8* %t582, i32 5, i32 0, i1 %t583)
    call void @_WriteString(i8* %t582, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t582)
    %t586 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t586, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.291, i32 0, i32 0), i32 13)
    %t588 = load i32, i32* @sry
    %t589 = load i32, i32* @srx
    %t587 = icmp slt i32 %t588, %t589
    call void @_WriteBool(i8* %t586, i32 5, i32 0, i1 %t587)
    call void @_WriteString(i8* %t586, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t586)
    %t590 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t590, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.292, i32 0, i32 0), i32 13)
    %t592 = load i32, i32* @sry
    %t593 = load i32, i32* @srx
    %t591 = icmp sgt i32 %t592, %t593
    call void @_WriteBool(i8* %t590, i32 5, i32 0, i1 %t591)
    call void @_WriteString(i8* %t590, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t590)
    %t594 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t594, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.293, i32 0, i32 0), i32 13)
    %t596 = load i32, i32* @srx
    %t597 = load i32, i32* @sry
    %t595 = icmp sgt i32 %t596, %t597
    call void @_WriteBool(i8* %t594, i32 5, i32 0, i1 %t595)
    call void @_WriteString(i8* %t594, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t594)
    %t598 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t598, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.294, i32 0, i32 0), i32 13)
    %t600 = load i32, i32* @srx
    %t601 = load i32, i32* @sry
    %t599 = icmp ne i32 %t600, %t601
    call void @_WriteBool(i8* %t598, i32 5, i32 0, i1 %t599)
    call void @_WriteString(i8* %t598, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t598)
    %t602 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t602, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.295, i32 0, i32 0), i32 13)
    %t604 = load i32, i32* @sry
    %t605 = load i32, i32* @srz
    %t603 = icmp ne i32 %t604, %t605
    call void @_WriteBool(i8* %t602, i32 5, i32 0, i1 %t603)
    call void @_WriteString(i8* %t602, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t602)
    %t606 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t606, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.296, i32 0, i32 0), i32 13)
    %t608 = load i32, i32* @srx
    %t609 = load i32, i32* @sry
    %t607 = icmp sle i32 %t608, %t609
    call void @_WriteBool(i8* %t606, i32 5, i32 0, i1 %t607)
    call void @_WriteString(i8* %t606, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t606)
    %t610 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t610, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.297, i32 0, i32 0), i32 13)
    %t612 = load i32, i32* @srz
    %t613 = load i32, i32* @sry
    %t611 = icmp sle i32 %t612, %t613
    call void @_WriteBool(i8* %t610, i32 5, i32 0, i1 %t611)
    call void @_WriteString(i8* %t610, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t610)
    %t614 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t614, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.298, i32 0, i32 0), i32 13)
    %t616 = load i32, i32* @sry
    %t617 = load i32, i32* @srx
    %t615 = icmp sle i32 %t616, %t617
    call void @_WriteBool(i8* %t614, i32 5, i32 0, i1 %t615)
    call void @_WriteString(i8* %t614, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t614)
    %t618 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t618, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.299, i32 0, i32 0), i32 13)
    %t620 = load i32, i32* @sry
    %t621 = load i32, i32* @srx
    %t619 = icmp sge i32 %t620, %t621
    call void @_WriteBool(i8* %t618, i32 5, i32 0, i1 %t619)
    call void @_WriteString(i8* %t618, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t618)
    %t622 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t622, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.300, i32 0, i32 0), i32 13)
    %t624 = load i32, i32* @sry
    %t625 = load i32, i32* @srz
    %t623 = icmp sge i32 %t624, %t625
    call void @_WriteBool(i8* %t622, i32 5, i32 0, i1 %t623)
    call void @_WriteString(i8* %t622, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t622)
    %t626 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t626, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.301, i32 0, i32 0), i32 13)
    %t628 = load i32, i32* @srx
    %t629 = load i32, i32* @sry
    %t627 = icmp sge i32 %t628, %t629
    call void @_WriteBool(i8* %t626, i32 5, i32 0, i1 %t627)
    call void @_WriteString(i8* %t626, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t626)
    %t630 = sub i32 0, 14
    store i32 %t630, i32* @sras
    %t631 = sub i32 0, 32
    store i32 %t631, i32* @srbs
    %t632 = sub i32 0, 14
    store i32 %t632, i32* @srcs
    store i32 20, i32* @srds
    %t633 = sub i32 0, 15
    store i32 %t633, i32* @sres
    %t634 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t634, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.302, i32 0, i32 0), i32 13)
    %t636 = load i32, i32* @sras
    %t637 = load i32, i32* @srds
    %t635 = add i32 %t636, %t637
    call void @_WriteInteger(i8* %t634, i32 1, i32 0, i32 %t635)
    call void @_WriteString(i8* %t634, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t634)
    %t638 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t638, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.303, i32 0, i32 0), i32 13)
    %t640 = load i32, i32* @srds
    %t641 = load i32, i32* @sras
    %t639 = add i32 %t640, %t641
    call void @_WriteInteger(i8* %t638, i32 1, i32 0, i32 %t639)
    call void @_WriteString(i8* %t638, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t638)
    %t642 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t642, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.304, i32 0, i32 0), i32 13)
    %t644 = load i32, i32* @srbs
    %t645 = load i32, i32* @srds
    %t643 = add i32 %t644, %t645
    call void @_WriteInteger(i8* %t642, i32 1, i32 0, i32 %t643)
    call void @_WriteString(i8* %t642, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.155, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t642)
    %t646 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t646, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.305, i32 0, i32 0), i32 13)
    %t648 = load i32, i32* @sras
    %t649 = load i32, i32* @srbs
    %t647 = add i32 %t648, %t649
    call void @_WriteInteger(i8* %t646, i32 1, i32 0, i32 %t647)
    call void @_WriteString(i8* %t646, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.157, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t646)
    %t650 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t650, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.306, i32 0, i32 0), i32 13)
    %t652 = load i32, i32* @srds
    %t653 = load i32, i32* @sras
    %t651 = sub i32 %t652, %t653
    call void @_WriteInteger(i8* %t650, i32 1, i32 0, i32 %t651)
    call void @_WriteString(i8* %t650, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t650)
    %t654 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t654, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.307, i32 0, i32 0), i32 13)
    %t656 = load i32, i32* @srbs
    %t657 = load i32, i32* @srds
    %t655 = sub i32 %t656, %t657
    call void @_WriteInteger(i8* %t654, i32 1, i32 0, i32 %t655)
    call void @_WriteString(i8* %t654, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.161, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t654)
    %t658 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t658, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.308, i32 0, i32 0), i32 13)
    %t660 = load i32, i32* @srbs
    %t661 = load i32, i32* @sras
    %t659 = sub i32 %t660, %t661
    call void @_WriteInteger(i8* %t658, i32 1, i32 0, i32 %t659)
    call void @_WriteString(i8* %t658, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.163, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t658)
    %t662 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t662, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.309, i32 0, i32 0), i32 13)
    %t664 = load i32, i32* @srds
    %t665 = load i32, i32* @sras
    %t663 = mul i32 %t664, %t665
    call void @_WriteInteger(i8* %t662, i32 1, i32 0, i32 %t663)
    call void @_WriteString(i8* %t662, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.165, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t662)
    %t666 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t666, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.310, i32 0, i32 0), i32 13)
    %t668 = load i32, i32* @sras
    %t669 = load i32, i32* @srds
    %t667 = mul i32 %t668, %t669
    call void @_WriteInteger(i8* %t666, i32 1, i32 0, i32 %t667)
    call void @_WriteString(i8* %t666, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.165, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t666)
    %t670 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t670, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.311, i32 0, i32 0), i32 13)
    %t672 = load i32, i32* @sras
    %t673 = load i32, i32* @srbs
    %t671 = mul i32 %t672, %t673
    call void @_WriteInteger(i8* %t670, i32 1, i32 0, i32 %t671)
    call void @_WriteString(i8* %t670, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.168, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t670)
    %t674 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t674, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.312, i32 0, i32 0), i32 13)
    %t676 = load i32, i32* @srds
    %t677 = load i32, i32* @sras
    %t675 = sdiv i32 %t676, %t677
    call void @_WriteInteger(i8* %t674, i32 1, i32 0, i32 %t675)
    call void @_WriteString(i8* %t674, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.170, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t674)
    %t678 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t678, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.313, i32 0, i32 0), i32 13)
    %t680 = load i32, i32* @srbs
    %t681 = load i32, i32* @srds
    %t679 = sdiv i32 %t680, %t681
    call void @_WriteInteger(i8* %t678, i32 1, i32 0, i32 %t679)
    call void @_WriteString(i8* %t678, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.170, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t678)
    %t682 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t682, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.314, i32 0, i32 0), i32 13)
    %t684 = load i32, i32* @srbs
    %t685 = load i32, i32* @sras
    %t683 = sdiv i32 %t684, %t685
    call void @_WriteInteger(i8* %t682, i32 1, i32 0, i32 %t683)
    call void @_WriteString(i8* %t682, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.173, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t682)
    %t686 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t686, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.315, i32 0, i32 0), i32 13)
    call void @_WriteInteger(i8* %t686, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t686, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.175, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t686)
    %t687 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t687, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.316, i32 0, i32 0), i32 13)
    call void @_WriteInteger(i8* %t687, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t687, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.177, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t687)
    %t688 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t688, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.317, i32 0, i32 0), i32 13)
    call void @_WriteBool(i8* %t688, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t688, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t688)
    %t689 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t689, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.318, i32 0, i32 0), i32 13)
    call void @_WriteBool(i8* %t689, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t689, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t689)
    %t690 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t690, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.319, i32 0, i32 0), i32 13)
    %t692 = load i32, i32* @sras
    %t693 = load i32, i32* @srcs
    %t691 = icmp eq i32 %t692, %t693
    call void @_WriteBool(i8* %t690, i32 5, i32 0, i1 %t691)
    call void @_WriteString(i8* %t690, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t690)
    %t694 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t694, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.320, i32 0, i32 0), i32 13)
    %t696 = load i32, i32* @sras
    %t697 = load i32, i32* @srbs
    %t695 = icmp eq i32 %t696, %t697
    call void @_WriteBool(i8* %t694, i32 5, i32 0, i1 %t695)
    call void @_WriteString(i8* %t694, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t694)
    %t698 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t698, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.321, i32 0, i32 0), i32 13)
    %t700 = load i32, i32* @sras
    %t701 = load i32, i32* @srbs
    %t699 = icmp ne i32 %t700, %t701
    call void @_WriteBool(i8* %t698, i32 5, i32 0, i1 %t699)
    call void @_WriteString(i8* %t698, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t698)
    %t702 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t702, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.322, i32 0, i32 0), i32 13)
    %t704 = load i32, i32* @sras
    %t705 = load i32, i32* @srcs
    %t703 = icmp ne i32 %t704, %t705
    call void @_WriteBool(i8* %t702, i32 5, i32 0, i1 %t703)
    call void @_WriteString(i8* %t702, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t702)
    %t706 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t706, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.323, i32 0, i32 0), i32 13)
    %t708 = load i32, i32* @sras
    %t709 = load i32, i32* @srds
    %t707 = icmp slt i32 %t708, %t709
    call void @_WriteBool(i8* %t706, i32 5, i32 0, i1 %t707)
    call void @_WriteString(i8* %t706, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t706)
    %t710 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t710, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.324, i32 0, i32 0), i32 13)
    %t712 = load i32, i32* @srbs
    %t713 = load i32, i32* @sras
    %t711 = icmp slt i32 %t712, %t713
    call void @_WriteBool(i8* %t710, i32 5, i32 0, i1 %t711)
    call void @_WriteString(i8* %t710, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t710)
    %t714 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t714, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.325, i32 0, i32 0), i32 13)
    %t716 = load i32, i32* @srds
    %t717 = load i32, i32* @sras
    %t715 = icmp slt i32 %t716, %t717
    call void @_WriteBool(i8* %t714, i32 5, i32 0, i1 %t715)
    call void @_WriteString(i8* %t714, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t714)
    %t718 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t718, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.326, i32 0, i32 0), i32 13)
    %t720 = load i32, i32* @sras
    %t721 = load i32, i32* @srbs
    %t719 = icmp slt i32 %t720, %t721
    call void @_WriteBool(i8* %t718, i32 5, i32 0, i1 %t719)
    call void @_WriteString(i8* %t718, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t718)
    %t722 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t722, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.327, i32 0, i32 0), i32 13)
    %t724 = load i32, i32* @srds
    %t725 = load i32, i32* @sras
    %t723 = icmp sgt i32 %t724, %t725
    call void @_WriteBool(i8* %t722, i32 5, i32 0, i1 %t723)
    call void @_WriteString(i8* %t722, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t722)
    %t726 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t726, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.328, i32 0, i32 0), i32 13)
    %t728 = load i32, i32* @sras
    %t729 = load i32, i32* @srbs
    %t727 = icmp sgt i32 %t728, %t729
    call void @_WriteBool(i8* %t726, i32 5, i32 0, i1 %t727)
    call void @_WriteString(i8* %t726, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t726)
    %t730 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t730, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.329, i32 0, i32 0), i32 13)
    %t732 = load i32, i32* @sras
    %t733 = load i32, i32* @srds
    %t731 = icmp sgt i32 %t732, %t733
    call void @_WriteBool(i8* %t730, i32 5, i32 0, i1 %t731)
    call void @_WriteString(i8* %t730, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t730)
    %t734 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t734, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.330, i32 0, i32 0), i32 13)
    %t736 = load i32, i32* @srbs
    %t737 = load i32, i32* @sras
    %t735 = icmp sgt i32 %t736, %t737
    call void @_WriteBool(i8* %t734, i32 5, i32 0, i1 %t735)
    call void @_WriteString(i8* %t734, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t734)
    %t738 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t738, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.331, i32 0, i32 0), i32 13)
    %t740 = load i32, i32* @sras
    %t741 = load i32, i32* @srds
    %t739 = icmp sle i32 %t740, %t741
    call void @_WriteBool(i8* %t738, i32 5, i32 0, i1 %t739)
    call void @_WriteString(i8* %t738, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t738)
    %t742 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t742, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.332, i32 0, i32 0), i32 13)
    %t744 = load i32, i32* @srbs
    %t745 = load i32, i32* @sras
    %t743 = icmp sle i32 %t744, %t745
    call void @_WriteBool(i8* %t742, i32 5, i32 0, i1 %t743)
    call void @_WriteString(i8* %t742, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t742)
    %t746 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t746, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.333, i32 0, i32 0), i32 13)
    %t748 = load i32, i32* @sras
    %t749 = load i32, i32* @srcs
    %t747 = icmp sle i32 %t748, %t749
    call void @_WriteBool(i8* %t746, i32 5, i32 0, i1 %t747)
    call void @_WriteString(i8* %t746, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t746)
    %t750 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t750, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.334, i32 0, i32 0), i32 13)
    %t752 = load i32, i32* @srds
    %t753 = load i32, i32* @sras
    %t751 = icmp sle i32 %t752, %t753
    call void @_WriteBool(i8* %t750, i32 5, i32 0, i1 %t751)
    call void @_WriteString(i8* %t750, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t750)
    %t754 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t754, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.335, i32 0, i32 0), i32 13)
    %t756 = load i32, i32* @sras
    %t757 = load i32, i32* @srbs
    %t755 = icmp sle i32 %t756, %t757
    call void @_WriteBool(i8* %t754, i32 5, i32 0, i1 %t755)
    call void @_WriteString(i8* %t754, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t754)
    %t758 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t758, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.336, i32 0, i32 0), i32 13)
    %t760 = load i32, i32* @srds
    %t761 = load i32, i32* @sras
    %t759 = icmp sge i32 %t760, %t761
    call void @_WriteBool(i8* %t758, i32 5, i32 0, i1 %t759)
    call void @_WriteString(i8* %t758, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t758)
    %t762 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t762, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.337, i32 0, i32 0), i32 13)
    %t764 = load i32, i32* @sras
    %t765 = load i32, i32* @srbs
    %t763 = icmp sge i32 %t764, %t765
    call void @_WriteBool(i8* %t762, i32 5, i32 0, i1 %t763)
    call void @_WriteString(i8* %t762, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t762)
    %t766 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t766, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.338, i32 0, i32 0), i32 13)
    %t768 = load i32, i32* @sras
    %t769 = load i32, i32* @srcs
    %t767 = icmp sge i32 %t768, %t769
    call void @_WriteBool(i8* %t766, i32 5, i32 0, i1 %t767)
    call void @_WriteString(i8* %t766, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t766)
    %t770 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t770, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.339, i32 0, i32 0), i32 13)
    %t772 = load i32, i32* @sras
    %t773 = load i32, i32* @srds
    %t771 = icmp sge i32 %t772, %t773
    call void @_WriteBool(i8* %t770, i32 5, i32 0, i1 %t771)
    call void @_WriteString(i8* %t770, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t770)
    %t774 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t774, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.340, i32 0, i32 0), i32 13)
    %t776 = load i32, i32* @srbs
    %t777 = load i32, i32* @sras
    %t775 = icmp sge i32 %t776, %t777
    call void @_WriteBool(i8* %t774, i32 5, i32 0, i1 %t775)
    call void @_WriteString(i8* %t774, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t774)
    %t778 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t778, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.341, i32 0, i32 0), i32 13)
    call void @_WriteInteger(i8* %t778, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t778, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.205, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t778)
    %t779 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t779)
    %t780 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t780, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.342, i32 0, i32 0), i32 49)
    call void @_WriteLn(i8* %t780)
    %t781 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t781)
    store i8 103, i8* @ca
    store i8 103, i8* @cb
    store i8 117, i8* @cc
    %t782 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t782, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.343, i32 0, i32 0), i32 14)
    %t783 = load i8, i8* @ca
    call void @_WriteChar(i8* %t782, i32 0, i32 0, i8 %t783)
    call void @_WriteChar(i8* %t782, i32 0, i32 0, i8 32)
    %t784 = load i8, i8* @cb
    call void @_WriteChar(i8* %t782, i32 0, i32 0, i8 %t784)
    call void @_WriteChar(i8* %t782, i32 0, i32 0, i8 32)
    %t785 = load i8, i8* @cc
    call void @_WriteChar(i8* %t782, i32 0, i32 0, i8 %t785)
    call void @_WriteString(i8* %t782, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.344, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t782)
    %t786 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t786, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.345, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t786, i32 0, i32 0, i8 )
    call void @_WriteString(i8* %t786, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.346, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t786)
    %t787 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t787, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.347, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t787, i32 0, i32 0, i8 )
    call void @_WriteString(i8* %t787, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.348, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t787)
    %t788 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t788, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.349, i32 0, i32 0), i32 14)
    call void @_WriteInteger(i8* %t788, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t788, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.350, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t788)
    %t789 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t789, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.351, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t789, i32 0, i32 0, i8 )
    call void @_WriteString(i8* %t789, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.352, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t789)
    %t790 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t790, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.353, i32 0, i32 0), i32 14)
    %t792 = load i8, i8* @ca
    %t793 = load i8, i8* @cb
    %t791 = icmp eq i32 %t792, %t793
    call void @_WriteBool(i8* %t790, i32 5, i32 0, i1 %t791)
    call void @_WriteString(i8* %t790, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t790)
    %t794 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t794, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.354, i32 0, i32 0), i32 14)
    %t796 = load i8, i8* @ca
    %t797 = load i8, i8* @cc
    %t795 = icmp eq i32 %t796, %t797
    call void @_WriteBool(i8* %t794, i32 5, i32 0, i1 %t795)
    call void @_WriteString(i8* %t794, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t794)
    %t798 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t798, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.355, i32 0, i32 0), i32 14)
    %t800 = load i8, i8* @ca
    %t801 = load i8, i8* @cc
    %t799 = icmp slt i32 %t800, %t801
    call void @_WriteBool(i8* %t798, i32 5, i32 0, i1 %t799)
    call void @_WriteString(i8* %t798, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t798)
    %t802 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t802, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.356, i32 0, i32 0), i32 14)
    %t804 = load i8, i8* @cc
    %t805 = load i8, i8* @ca
    %t803 = icmp slt i32 %t804, %t805
    call void @_WriteBool(i8* %t802, i32 5, i32 0, i1 %t803)
    call void @_WriteString(i8* %t802, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t802)
    %t806 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t806, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.357, i32 0, i32 0), i32 14)
    %t808 = load i8, i8* @cc
    %t809 = load i8, i8* @ca
    %t807 = icmp sgt i32 %t808, %t809
    call void @_WriteBool(i8* %t806, i32 5, i32 0, i1 %t807)
    call void @_WriteString(i8* %t806, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t806)
    %t810 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t810, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.358, i32 0, i32 0), i32 14)
    %t812 = load i8, i8* @ca
    %t813 = load i8, i8* @cc
    %t811 = icmp sgt i32 %t812, %t813
    call void @_WriteBool(i8* %t810, i32 5, i32 0, i1 %t811)
    call void @_WriteString(i8* %t810, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t810)
    %t814 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t814, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.359, i32 0, i32 0), i32 14)
    %t816 = load i8, i8* @ca
    %t817 = load i8, i8* @cc
    %t815 = icmp ne i32 %t816, %t817
    call void @_WriteBool(i8* %t814, i32 5, i32 0, i1 %t815)
    call void @_WriteString(i8* %t814, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t814)
    %t818 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t818, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.360, i32 0, i32 0), i32 14)
    %t820 = load i8, i8* @ca
    %t821 = load i8, i8* @cb
    %t819 = icmp ne i32 %t820, %t821
    call void @_WriteBool(i8* %t818, i32 5, i32 0, i1 %t819)
    call void @_WriteString(i8* %t818, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t818)
    %t822 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t822, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.361, i32 0, i32 0), i32 14)
    %t824 = load i8, i8* @ca
    %t825 = load i8, i8* @cc
    %t823 = icmp sle i32 %t824, %t825
    call void @_WriteBool(i8* %t822, i32 5, i32 0, i1 %t823)
    call void @_WriteString(i8* %t822, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t822)
    %t826 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t826, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.362, i32 0, i32 0), i32 14)
    %t828 = load i8, i8* @ca
    %t829 = load i8, i8* @cb
    %t827 = icmp sle i32 %t828, %t829
    call void @_WriteBool(i8* %t826, i32 5, i32 0, i1 %t827)
    call void @_WriteString(i8* %t826, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t826)
    %t830 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t830, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.363, i32 0, i32 0), i32 14)
    %t832 = load i8, i8* @cc
    %t833 = load i8, i8* @ca
    %t831 = icmp sle i32 %t832, %t833
    call void @_WriteBool(i8* %t830, i32 5, i32 0, i1 %t831)
    call void @_WriteString(i8* %t830, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t830)
    %t834 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t834, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.364, i32 0, i32 0), i32 14)
    %t836 = load i8, i8* @cc
    %t837 = load i8, i8* @cb
    %t835 = icmp sge i32 %t836, %t837
    call void @_WriteBool(i8* %t834, i32 5, i32 0, i1 %t835)
    call void @_WriteString(i8* %t834, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t834)
    %t838 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t838, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.365, i32 0, i32 0), i32 14)
    %t840 = load i8, i8* @cb
    %t841 = load i8, i8* @ca
    %t839 = icmp sge i32 %t840, %t841
    call void @_WriteBool(i8* %t838, i32 5, i32 0, i1 %t839)
    call void @_WriteString(i8* %t838, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t838)
    %t842 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t842, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.366, i32 0, i32 0), i32 14)
    %t844 = load i8, i8* @cb
    %t845 = load i8, i8* @cc
    %t843 = icmp sge i32 %t844, %t845
    call void @_WriteBool(i8* %t842, i32 5, i32 0, i1 %t843)
    call void @_WriteString(i8* %t842, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t842)
    store %T_array_107 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.367, i32 0, i32 0), %T_array_107* @sa
    store %T_array_107 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.367, i32 0, i32 0), %T_array_107* @sb
    store %T_array_107 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.368, i32 0, i32 0), %T_array_107* @sc
    %t846 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t846, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.369, i32 0, i32 0), i32 14)
    call void @_WriteString(i8* %t846, i32 0, i32 0, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t846, i32 0, i32 0, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sb, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t846, i32 0, i32 0, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t846, i32 0, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.370, i32 0, i32 0), i32 31)
    call void @_WriteLn(i8* %t846)
    %t847 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t847, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.371, i32 0, i32 0), i32 14)
    %t848 = call i1 @_StrcmpEQ(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sb, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t847, i32 5, i32 0, i1 %t848)
    call void @_WriteString(i8* %t847, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t847)
    %t849 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t849, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.372, i32 0, i32 0), i32 14)
    %t850 = call i1 @_StrcmpEQ(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t849, i32 5, i32 0, i1 %t850)
    call void @_WriteString(i8* %t849, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t849)
    %t851 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t851, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.373, i32 0, i32 0), i32 14)
    %t852 = call i1 @_StrcmpLT(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t851, i32 5, i32 0, i1 %t852)
    call void @_WriteString(i8* %t851, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t851)
    %t853 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t853, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.374, i32 0, i32 0), i32 14)
    %t854 = call i1 @_StrcmpLT(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t853, i32 5, i32 0, i1 %t854)
    call void @_WriteString(i8* %t853, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t853)
    %t855 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t855, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.375, i32 0, i32 0), i32 14)
    %t856 = call i1 @_StrcmpGT(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t855, i32 5, i32 0, i1 %t856)
    call void @_WriteString(i8* %t855, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t855)
    %t857 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t857, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.376, i32 0, i32 0), i32 14)
    %t858 = call i1 @_StrcmpGT(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t857, i32 5, i32 0, i1 %t858)
    call void @_WriteString(i8* %t857, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t857)
    %t859 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t859, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.377, i32 0, i32 0), i32 14)
    %t860 = call i1 @_StrcmpNE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t859, i32 5, i32 0, i1 %t860)
    call void @_WriteString(i8* %t859, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t859)
    %t861 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t861, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.378, i32 0, i32 0), i32 14)
    %t862 = call i1 @_StrcmpNE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sb, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t861, i32 5, i32 0, i1 %t862)
    call void @_WriteString(i8* %t861, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t861)
    %t863 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t863, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.379, i32 0, i32 0), i32 14)
    %t864 = call i1 @_StrcmpLE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t863, i32 5, i32 0, i1 %t864)
    call void @_WriteString(i8* %t863, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t863)
    %t865 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t865, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.380, i32 0, i32 0), i32 14)
    %t866 = call i1 @_StrcmpLE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sb, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t865, i32 5, i32 0, i1 %t866)
    call void @_WriteString(i8* %t865, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t865)
    %t867 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t867, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.381, i32 0, i32 0), i32 14)
    %t868 = call i1 @_StrcmpLE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t867, i32 5, i32 0, i1 %t868)
    call void @_WriteString(i8* %t867, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t867)
    %t869 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t869, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.382, i32 0, i32 0), i32 14)
    %t870 = call i1 @_StrcmpGE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t869, i32 5, i32 0, i1 %t870)
    call void @_WriteString(i8* %t869, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t869)
    %t871 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t871, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.383, i32 0, i32 0), i32 14)
    %t872 = call i1 @_StrcmpGE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sb, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t871, i32 5, i32 0, i1 %t872)
    call void @_WriteString(i8* %t871, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t871)
    %t873 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t873, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.384, i32 0, i32 0), i32 14)
    %t874 = call i1 @_StrcmpGE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t873, i32 5, i32 0, i1 %t874)
    call void @_WriteString(i8* %t873, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t873)
    %t875 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t875, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.385, i32 0, i32 0), i32 14)
    %t876 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t876, i32 0, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.386, i32 0, i32 0), i32 31)
    call void @_WriteLn(i8* %t876)
    %t877 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t877, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.387, i32 0, i32 0), i32 14)
    %t878 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t878, i32 0, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.388, i32 0, i32 0), i32 31)
    call void @_WriteLn(i8* %t878)
    %t879 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t879, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.389, i32 0, i32 0), i32 14)
    store i32 0, i32* @x
    %t880 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t880)
    %t881 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t881, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.390, i32 0, i32 0), i32 49)
    call void @_WriteString(i8* %t881, i32 0, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.391, i32 0, i32 0), i32 35)
    call void @_WriteLn(i8* %t881)
    %t883 = getelementptr inbounds %T_record_103, %T_record_103* @r, i32 0, i32 4
    %t882 = bitcast i8* %t883 to i8*
    store i8 110, i8* %t882
    %t884 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t884, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.392, i32 0, i32 0), i32 13)
    %t886 = getelementptr inbounds %T_record_103, %T_record_103* @r, i32 0, i32 4
    %t885 = bitcast i8* %t886 to i8*
    %t887 = load i8, i8* %t885
    call void @_WriteChar(i8* %t884, i32 0, i32 0, i8 %t887)
    call void @_WriteString(i8* %t884, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.393, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t884)
    %t889 = getelementptr inbounds %T_record_103, %T_record_103* @r, i32 0, i32 13
    %t888 = bitcast i8* %t889 to %T_array_104*
    store %T_array_104 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.394, i32 0, i32 0), %T_array_104* %t888
    %t890 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t890, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.395, i32 0, i32 0), i32 13)
    %t892 = getelementptr inbounds %T_record_103, %T_record_103* @r, i32 0, i32 13
    %t891 = bitcast i8* %t892 to %T_array_104*
    call void @_WriteString(i8* %t890, i32 0, i32 0, i8* getelementptr inbounds (%T_array_104, %T_array_104* %t891, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t890, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t890)
    %t893 = getelementptr inbounds %T_array_108, %T_array_108* @sar, i32 0, i32 1
    store %T_array_109 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.397, i32 0, i32 0), %T_array_109* %t893
    %t894 = getelementptr inbounds %T_array_108, %T_array_108* @sar, i32 0, i32 2
    store %T_array_109 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.398, i32 0, i32 0), %T_array_109* %t894
    %t895 = getelementptr inbounds %T_array_108, %T_array_108* @sar, i32 0, i32 10
    store %T_array_109 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.399, i32 0, i32 0), %T_array_109* %t895
    %t896 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t896, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.400, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t896)
    %t897 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t897, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.401, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t897)
    %t898 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t898, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.402, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t898)
    %t899 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t899, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.403, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t899)
    %t900 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t900, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.403, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t900)
    %t901 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t901, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.403, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t901)
    %t902 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t902, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.403, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t902)
    %t903 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t903, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.403, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t903)
    %t904 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t904, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.403, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t904)
    %t905 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t905, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.403, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t905)
    %t906 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t906, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.404, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t906)
    %t907 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t907, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.405, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t907)
    %t908 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t908, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.406, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t908)
    %t909 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t909)
    %t910 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t910, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.407, i32 0, i32 0), i32 38)
    call void @_WriteString(i8* %t910, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.408, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t910)
    %t911 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t911, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.409, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t911, i32 0, i32 0, i8 97)
    call void @_WriteString(i8* %t911, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.410, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t911)
    %t912 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t912, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.411, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t912, i32 0, i32 0, i8 )
    call void @_WriteString(i8* %t912, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.412, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t912)
    %t913 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t913, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.413, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t913, i32 0, i32 0, i8 )
    call void @_WriteString(i8* %t913, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.414, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t913)
    %t914 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t914, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.415, i32 0, i32 0), i32 14)
    call void @_WriteInteger(i8* %t914, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t914, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.416, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t914)
    %t915 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t915, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.417, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t915, i32 0, i32 0, i8 )
    call void @_WriteString(i8* %t915, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.418, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t915)
    %t916 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t916, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.419, i32 0, i32 0), i32 14)
    %t917 = icmp eq i32 113, 113
    call void @_WriteBool(i8* %t916, i32 5, i32 0, i1 %t917)
    call void @_WriteString(i8* %t916, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t916)
    %t918 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t918, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.420, i32 0, i32 0), i32 14)
    %t919 = icmp eq i32 114, 113
    call void @_WriteBool(i8* %t918, i32 5, i32 0, i1 %t919)
    call void @_WriteString(i8* %t918, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t918)
    %t920 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t920, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.421, i32 0, i32 0), i32 14)
    %t921 = icmp slt i32 98, 116
    call void @_WriteBool(i8* %t920, i32 5, i32 0, i1 %t921)
    call void @_WriteString(i8* %t920, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t920)
    %t922 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t922, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.422, i32 0, i32 0), i32 14)
    %t923 = icmp slt i32 103, 99
    call void @_WriteBool(i8* %t922, i32 5, i32 0, i1 %t923)
    call void @_WriteString(i8* %t922, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t922)
    %t924 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t924, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.406, i32 0, i32 0), i32 14)
    %t925 = icmp sgt i32 102, 101
    call void @_WriteBool(i8* %t924, i32 5, i32 0, i1 %t925)
    call void @_WriteString(i8* %t924, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t924)
    %t926 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t926, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.423, i32 0, i32 0), i32 14)
    %t927 = icmp sgt i32 102, 103
    call void @_WriteBool(i8* %t926, i32 5, i32 0, i1 %t927)
    call void @_WriteString(i8* %t926, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t926)
    %t928 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t928, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.424, i32 0, i32 0), i32 14)
    %t929 = icmp ne i32 104, 108
    call void @_WriteBool(i8* %t928, i32 5, i32 0, i1 %t929)
    call void @_WriteString(i8* %t928, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t928)
    %t930 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t930, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.425, i32 0, i32 0), i32 14)
    %t931 = icmp ne i32 105, 105
    call void @_WriteBool(i8* %t930, i32 5, i32 0, i1 %t931)
    call void @_WriteString(i8* %t930, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t930)
    %t932 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t932, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.426, i32 0, i32 0), i32 14)
    %t933 = icmp sle i32 118, 121
    call void @_WriteBool(i8* %t932, i32 5, i32 0, i1 %t933)
    call void @_WriteString(i8* %t932, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t932)
    %t934 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t934, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.427, i32 0, i32 0), i32 14)
    %t935 = icmp sle i32 121, 121
    call void @_WriteBool(i8* %t934, i32 5, i32 0, i1 %t935)
    call void @_WriteString(i8* %t934, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t934)
    %t936 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t936, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.428, i32 0, i32 0), i32 14)
    %t937 = icmp sle i32 122, 121
    call void @_WriteBool(i8* %t936, i32 5, i32 0, i1 %t937)
    call void @_WriteString(i8* %t936, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t936)
    %t938 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t938, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.429, i32 0, i32 0), i32 14)
    %t939 = icmp sge i32 108, 98
    call void @_WriteBool(i8* %t938, i32 5, i32 0, i1 %t939)
    call void @_WriteString(i8* %t938, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t938)
    %t940 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t940, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.430, i32 0, i32 0), i32 14)
    %t941 = icmp sge i32 108, 108
    call void @_WriteBool(i8* %t940, i32 5, i32 0, i1 %t941)
    call void @_WriteString(i8* %t940, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t940)
    %t942 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t942, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.431, i32 0, i32 0), i32 14)
    %t943 = icmp sge i32 108, 109
    call void @_WriteBool(i8* %t942, i32 5, i32 0, i1 %t943)
    call void @_WriteString(i8* %t942, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t942)
    %t944 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t944, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.432, i32 0, i32 0), i32 14)
    %t945 = call i1 @_StrcmpEQ(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.404, i32 0, i32 0), i32 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.404, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t944, i32 5, i32 0, i1 %t945)
    call void @_WriteString(i8* %t944, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t944)
    %t946 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t946, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.433, i32 0, i32 0), i32 14)
    %t947 = call i1 @_StrcmpEQ(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.434, i32 0, i32 0), i32 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.404, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t946, i32 5, i32 0, i1 %t947)
    call void @_WriteString(i8* %t946, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t946)
    %t948 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t948, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.435, i32 0, i32 0), i32 14)
    %t949 = call i1 @_StrcmpLT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.436, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.437, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t948, i32 5, i32 0, i1 %t949)
    call void @_WriteString(i8* %t948, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t948)
    %t950 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t950, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.438, i32 0, i32 0), i32 14)
    %t951 = call i1 @_StrcmpLT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.437, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.436, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t950, i32 5, i32 0, i1 %t951)
    call void @_WriteString(i8* %t950, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t950)
    %t952 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t952, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.439, i32 0, i32 0), i32 14)
    %t953 = call i1 @_StrcmpGT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.437, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.436, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t952, i32 5, i32 0, i1 %t953)
    call void @_WriteString(i8* %t952, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t952)
    %t954 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t954, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.440, i32 0, i32 0), i32 14)
    %t955 = call i1 @_StrcmpGT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.436, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.437, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t954, i32 5, i32 0, i1 %t955)
    call void @_WriteString(i8* %t954, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t954)
    %t956 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t956, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.441, i32 0, i32 0), i32 14)
    %t957 = call i1 @_StrcmpNE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.442, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.443, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t956, i32 5, i32 0, i1 %t957)
    call void @_WriteString(i8* %t956, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t956)
    %t958 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t958, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.444, i32 0, i32 0), i32 14)
    %t959 = call i1 @_StrcmpNE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.443, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.443, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t958, i32 5, i32 0, i1 %t959)
    call void @_WriteString(i8* %t958, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t958)
    %t960 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t960, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.445, i32 0, i32 0), i32 14)
    %t961 = call i1 @_StrcmpLE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.446, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.447, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t960, i32 5, i32 0, i1 %t961)
    call void @_WriteString(i8* %t960, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t960)
    %t962 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t962, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.448, i32 0, i32 0), i32 14)
    %t963 = call i1 @_StrcmpLE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.443, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.443, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t962, i32 5, i32 0, i1 %t963)
    call void @_WriteString(i8* %t962, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t962)
    %t964 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t964, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.449, i32 0, i32 0), i32 14)
    %t965 = call i1 @_StrcmpLE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.447, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.443, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t964, i32 5, i32 0, i1 %t965)
    call void @_WriteString(i8* %t964, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t964)
    %t966 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t966, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.450, i32 0, i32 0), i32 14)
    %t967 = call i1 @_StrcmpGE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.451, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.452, i32 0, i32 0), i32 6)
    call void @_WriteBool(i8* %t966, i32 5, i32 0, i1 %t967)
    call void @_WriteString(i8* %t966, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t966)
    %t968 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t968, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.453, i32 0, i32 0), i32 14)
    %t969 = call i1 @_StrcmpGE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.452, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.452, i32 0, i32 0), i32 6)
    call void @_WriteBool(i8* %t968, i32 5, i32 0, i1 %t969)
    call void @_WriteString(i8* %t968, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t968)
    %t970 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t970, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.454, i32 0, i32 0), i32 14)
    %t971 = call i1 @_StrcmpGE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.452, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.455, i32 0, i32 0), i32 6)
    call void @_WriteBool(i8* %t970, i32 5, i32 0, i1 %t971)
    call void @_WriteString(i8* %t970, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t970)
    %t972 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t972, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.456, i32 0, i32 0), i32 14)
    call void @_WriteString(i8* %t972, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.457, i32 0, i32 0), i32 16)
    call void @_WriteString(i8* %t972, i32 0, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.458, i32 0, i32 0), i32 21)
    call void @_WriteLn(i8* %t972)
    %t973 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t973, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.459, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t973, i32 0, i32 0, i8 118)
    call void @_WriteString(i8* %t973, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.460, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t973)
    %t974 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t974, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.461, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t974)
    %t975 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t975, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.462, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t975)
    %t976 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t976, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.463, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t976)
    %t977 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t977, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.464, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t977)
    %t978 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t978, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.465, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t978)
    %t979 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t979, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.466, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t979)
    %t980 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t980, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.467, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t980)
    %t981 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t981, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.468, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t981)
    %t982 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t982, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.469, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t982)
    %t983 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t983, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.470, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t983)
    %t984 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t984, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.471, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t984)
    %t985 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t985, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.472, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t985)
    %t986 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t986, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.473, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t986)
    %t987 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t987, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.474, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t987)
    %t988 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t988, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.475, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t988)
    %t989 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t989, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.476, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t989)
    %t990 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t990, i32 0, i32 0, i8 104)
    call void @_WriteLn(i8* %t990)
    %t991 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t991)
    %t992 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t992, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.477, i32 0, i32 0), i32 48)
    call void @_WriteLn(i8* %t992)
    %t993 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t993)
    store i1 1, i1* @ba
    store i1 0, i1* @bb
    store i1 1, i1* @bc
    %t994 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t994, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.478, i32 0, i32 0), i32 12)
    %t995 = load i1, i1* @ba
    call void @_WriteBool(i8* %t994, i32 5, i32 0, i1 %t995)
    call void @_WriteChar(i8* %t994, i32 0, i32 0, i8 32)
    %t996 = load i1, i1* @bb
    call void @_WriteBool(i8* %t994, i32 5, i32 0, i1 %t996)
    call void @_WriteString(i8* %t994, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.479, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t994)
    %t997 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t997, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.480, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t997, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t997, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t997)
    %t998 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t998, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.481, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t998, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t998, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t998)
    %t999 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t999, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.482, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t999, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t999, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t999)
    %t1000 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1000, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.483, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t1000, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1000, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1000)
    %t1001 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1001, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.484, i32 0, i32 0), i32 12)
    %t1003 = load i1, i1* @ba
    %t1004 = load i1, i1* @bc
    %t1002 = icmp eq i32 %t1003, %t1004
    call void @_WriteBool(i8* %t1001, i32 5, i32 0, i1 %t1002)
    call void @_WriteString(i8* %t1001, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1001)
    %t1005 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1005, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.485, i32 0, i32 0), i32 12)
    %t1007 = load i1, i1* @bb
    %t1008 = load i1, i1* @bb
    %t1006 = icmp eq i32 %t1007, %t1008
    call void @_WriteBool(i8* %t1005, i32 5, i32 0, i1 %t1006)
    call void @_WriteString(i8* %t1005, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1005)
    %t1009 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1009, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.486, i32 0, i32 0), i32 12)
    %t1011 = load i1, i1* @ba
    %t1012 = load i1, i1* @bb
    %t1010 = icmp eq i32 %t1011, %t1012
    call void @_WriteBool(i8* %t1009, i32 5, i32 0, i1 %t1010)
    call void @_WriteString(i8* %t1009, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1009)
    %t1013 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1013, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.487, i32 0, i32 0), i32 12)
    %t1015 = load i1, i1* @bb
    %t1016 = load i1, i1* @ba
    %t1014 = icmp slt i32 %t1015, %t1016
    call void @_WriteBool(i8* %t1013, i32 5, i32 0, i1 %t1014)
    call void @_WriteString(i8* %t1013, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1013)
    %t1017 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1017, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.488, i32 0, i32 0), i32 12)
    %t1019 = load i1, i1* @ba
    %t1020 = load i1, i1* @bb
    %t1018 = icmp slt i32 %t1019, %t1020
    call void @_WriteBool(i8* %t1017, i32 5, i32 0, i1 %t1018)
    call void @_WriteString(i8* %t1017, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1017)
    %t1021 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1021, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.489, i32 0, i32 0), i32 12)
    %t1023 = load i1, i1* @ba
    %t1024 = load i1, i1* @bb
    %t1022 = icmp sgt i32 %t1023, %t1024
    call void @_WriteBool(i8* %t1021, i32 5, i32 0, i1 %t1022)
    call void @_WriteString(i8* %t1021, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1021)
    %t1025 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1025, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.490, i32 0, i32 0), i32 12)
    %t1027 = load i1, i1* @bb
    %t1028 = load i1, i1* @ba
    %t1026 = icmp sgt i32 %t1027, %t1028
    call void @_WriteBool(i8* %t1025, i32 5, i32 0, i1 %t1026)
    call void @_WriteString(i8* %t1025, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1025)
    %t1029 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1029, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.491, i32 0, i32 0), i32 12)
    %t1031 = load i1, i1* @ba
    %t1032 = load i1, i1* @bb
    %t1030 = icmp ne i32 %t1031, %t1032
    call void @_WriteBool(i8* %t1029, i32 5, i32 0, i1 %t1030)
    call void @_WriteString(i8* %t1029, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1029)
    %t1033 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1033, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.492, i32 0, i32 0), i32 12)
    %t1035 = load i1, i1* @ba
    %t1036 = load i1, i1* @bc
    %t1034 = icmp ne i32 %t1035, %t1036
    call void @_WriteBool(i8* %t1033, i32 5, i32 0, i1 %t1034)
    call void @_WriteString(i8* %t1033, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1033)
    %t1037 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1037, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.493, i32 0, i32 0), i32 12)
    %t1039 = load i1, i1* @bb
    %t1040 = load i1, i1* @ba
    %t1038 = icmp sle i32 %t1039, %t1040
    call void @_WriteBool(i8* %t1037, i32 5, i32 0, i1 %t1038)
    call void @_WriteString(i8* %t1037, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1037)
    %t1041 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1041, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.494, i32 0, i32 0), i32 12)
    %t1043 = load i1, i1* @ba
    %t1044 = load i1, i1* @bc
    %t1042 = icmp sle i32 %t1043, %t1044
    call void @_WriteBool(i8* %t1041, i32 5, i32 0, i1 %t1042)
    call void @_WriteString(i8* %t1041, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1041)
    %t1045 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1045, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.495, i32 0, i32 0), i32 12)
    %t1047 = load i1, i1* @ba
    %t1048 = load i1, i1* @bb
    %t1046 = icmp sle i32 %t1047, %t1048
    call void @_WriteBool(i8* %t1045, i32 5, i32 0, i1 %t1046)
    call void @_WriteString(i8* %t1045, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1045)
    %t1049 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1049, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.496, i32 0, i32 0), i32 12)
    %t1051 = load i1, i1* @ba
    %t1052 = load i1, i1* @bb
    %t1050 = icmp sge i32 %t1051, %t1052
    call void @_WriteBool(i8* %t1049, i32 5, i32 0, i1 %t1050)
    call void @_WriteString(i8* %t1049, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1049)
    %t1053 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1053, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.497, i32 0, i32 0), i32 12)
    %t1055 = load i1, i1* @bb
    %t1056 = load i1, i1* @bb
    %t1054 = icmp sge i32 %t1055, %t1056
    call void @_WriteBool(i8* %t1053, i32 5, i32 0, i1 %t1054)
    call void @_WriteString(i8* %t1053, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1053)
    %t1057 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1057, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.498, i32 0, i32 0), i32 12)
    %t1059 = load i1, i1* @bb
    %t1060 = load i1, i1* @ba
    %t1058 = icmp sge i32 %t1059, %t1060
    call void @_WriteBool(i8* %t1057, i32 5, i32 0, i1 %t1058)
    call void @_WriteString(i8* %t1057, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1057)
    %t1061 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1061, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.499, i32 0, i32 0), i32 12)
    %t1062 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1062, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.500, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t1062)
    %t1063 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1063, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.501, i32 0, i32 0), i32 12)
    %t1064 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1064, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.502, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t1064)
    %t1065 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1065, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.503, i32 0, i32 0), i32 12)
    %t1066 = icmp sgt i32 1, 0
    store i1 %t1066, i1* @ba
    %t1067 = load %T_text, %T_text* @output
    %t1068 = load i1, i1* @ba
    call void @_WriteBool(i8* %t1067, i32 5, i32 0, i1 %t1068)
    call void @_WriteString(i8* %t1067, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1067)
    %t1069 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1069, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.504, i32 0, i32 0), i32 12)
    %t1070 = icmp slt i32 1, 0
    store i1 %t1070, i1* @ba
    %t1071 = load %T_text, %T_text* @output
    %t1072 = load i1, i1* @ba
    call void @_WriteBool(i8* %t1071, i32 5, i32 0, i1 %t1072)
    call void @_WriteString(i8* %t1071, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1071)
    %t1073 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1073, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.505, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t1073, i32 5, i32 0, i1 1)
    call void @_WriteChar(i8* %t1073, i32 0, i32 0, i8 32)
    call void @_WriteBool(i8* %t1073, i32 5, i32 0, i1 0)
    call void @_WriteString(i8* %t1073, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.479, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1073)
    %t1074 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1074, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.506, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t1074, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t1074, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1074)
    %t1075 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1075, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.507, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t1075, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t1075, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1075)
    %t1076 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1076, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.508, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t1076, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1076, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1076)
    %t1077 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1077, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.509, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t1077, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1077, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1077)
    %t1078 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1078, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.510, i32 0, i32 0), i32 12)
    %t1079 = icmp eq i32 1, 1
    call void @_WriteBool(i8* %t1078, i32 5, i32 0, i1 %t1079)
    call void @_WriteString(i8* %t1078, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1078)
    %t1080 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1080, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.511, i32 0, i32 0), i32 12)
    %t1081 = icmp eq i32 0, 0
    call void @_WriteBool(i8* %t1080, i32 5, i32 0, i1 %t1081)
    call void @_WriteString(i8* %t1080, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1080)
    %t1082 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1082, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.512, i32 0, i32 0), i32 12)
    %t1083 = icmp eq i32 1, 0
    call void @_WriteBool(i8* %t1082, i32 5, i32 0, i1 %t1083)
    call void @_WriteString(i8* %t1082, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1082)
    %t1084 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1084, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.513, i32 0, i32 0), i32 12)
    %t1085 = icmp slt i32 0, 1
    call void @_WriteBool(i8* %t1084, i32 5, i32 0, i1 %t1085)
    call void @_WriteString(i8* %t1084, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1084)
    %t1086 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1086, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.514, i32 0, i32 0), i32 12)
    %t1087 = icmp slt i32 1, 0
    call void @_WriteBool(i8* %t1086, i32 5, i32 0, i1 %t1087)
    call void @_WriteString(i8* %t1086, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1086)
    %t1088 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1088, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.515, i32 0, i32 0), i32 12)
    %t1089 = icmp sgt i32 1, 0
    call void @_WriteBool(i8* %t1088, i32 5, i32 0, i1 %t1089)
    call void @_WriteString(i8* %t1088, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1088)
    %t1090 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1090, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.516, i32 0, i32 0), i32 12)
    %t1091 = icmp sgt i32 0, 1
    call void @_WriteBool(i8* %t1090, i32 5, i32 0, i1 %t1091)
    call void @_WriteString(i8* %t1090, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1090)
    %t1092 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1092, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.517, i32 0, i32 0), i32 12)
    %t1093 = icmp ne i32 1, 0
    call void @_WriteBool(i8* %t1092, i32 5, i32 0, i1 %t1093)
    call void @_WriteString(i8* %t1092, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1092)
    %t1094 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1094, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.518, i32 0, i32 0), i32 12)
    %t1095 = icmp ne i32 1, 1
    call void @_WriteBool(i8* %t1094, i32 5, i32 0, i1 %t1095)
    call void @_WriteString(i8* %t1094, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1094)
    %t1096 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1096, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.519, i32 0, i32 0), i32 12)
    %t1097 = icmp sle i32 0, 1
    call void @_WriteBool(i8* %t1096, i32 5, i32 0, i1 %t1097)
    call void @_WriteString(i8* %t1096, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1096)
    %t1098 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1098, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.520, i32 0, i32 0), i32 12)
    %t1099 = icmp sle i32 1, 1
    call void @_WriteBool(i8* %t1098, i32 5, i32 0, i1 %t1099)
    call void @_WriteString(i8* %t1098, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1098)
    %t1100 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1100, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.521, i32 0, i32 0), i32 12)
    %t1101 = icmp sle i32 1, 0
    call void @_WriteBool(i8* %t1100, i32 5, i32 0, i1 %t1101)
    call void @_WriteString(i8* %t1100, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1100)
    %t1102 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1102, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.522, i32 0, i32 0), i32 12)
    %t1103 = icmp sge i32 1, 0
    call void @_WriteBool(i8* %t1102, i32 5, i32 0, i1 %t1103)
    call void @_WriteString(i8* %t1102, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1102)
    %t1104 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1104, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.523, i32 0, i32 0), i32 12)
    %t1105 = icmp sge i32 0, 0
    call void @_WriteBool(i8* %t1104, i32 5, i32 0, i1 %t1105)
    call void @_WriteString(i8* %t1104, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1104)
    %t1106 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1106, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.524, i32 0, i32 0), i32 12)
    %t1107 = icmp sge i32 0, 1
    call void @_WriteBool(i8* %t1106, i32 5, i32 0, i1 %t1107)
    call void @_WriteString(i8* %t1106, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1106)
    %t1108 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1108, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.525, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1108)
    %t1109 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1109, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.526, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1109)
    %t1110 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1110, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.527, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1110)
    %t1111 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1111, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.528, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1111)
    %t1112 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1112, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.529, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1112)
    %t1113 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1113, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.530, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1113)
    %t1114 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1114, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.531, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1114)
    %t1115 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1115, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.532, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t1115)
    %t1116 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1116, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.533, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t1116)
    %t1117 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1117, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.534, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t1117)
    %t1118 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1118, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1118)
    %t1119 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t1119, i32 0, i32 0, i8 102)
    call void @_WriteLn(i8* %t1119)
    %t1120 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1120, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.535, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1120)
    %t1121 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1121, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.536, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1121)
    %t1122 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1122, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.537, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1122)
    %t1123 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1123, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.538, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1123)
    %t1124 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1124, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.539, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1124)
    %t1125 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1125, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.540, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1125)
    %t1126 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1126, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.541, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1126)
    %t1127 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1127, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.542, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t1127)
    %t1128 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1128, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.543, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t1128)
    %t1129 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1129, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.544, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t1129)
    %t1130 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1130, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.545, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1130)
    %t1131 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t1131, i32 0, i32 0, i8 116)
    call void @_WriteLn(i8* %t1131)
    %t1132 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1132)
    %t1133 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1133, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.546, i32 0, i32 0), i32 46)
    call void @_WriteLn(i8* %t1133)
    %t1134 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1134)
    store i32 2, i32* @sva
    store i32 0, i32* @svb
    store i32 2, i32* @svc
    %t1135 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1135, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.547, i32 0, i32 0), i32 11)
    %t1136 = icmp eq i32 , 1
    call void @_WriteBool(i8* %t1135, i32 5, i32 0, i1 %t1136)
    call void @_WriteString(i8* %t1135, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1135)
    %t1137 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1137, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.548, i32 0, i32 0), i32 11)
    %t1138 = icmp eq i32 , 1
    call void @_WriteBool(i8* %t1137, i32 5, i32 0, i1 %t1138)
    call void @_WriteString(i8* %t1137, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1137)
    %t1139 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1139, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.549, i32 0, i32 0), i32 11)
    call void @_WriteInteger(i8* %t1139, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1139, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1139)
    %t1140 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1140, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.550, i32 0, i32 0), i32 11)
    call void @_WriteInteger(i8* %t1140, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1140, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.173, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1140)
    %t1141 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1141, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.551, i32 0, i32 0), i32 11)
    %t1143 = load i32, i32* @sva
    %t1144 = load i32, i32* @svc
    %t1142 = icmp eq i32 %t1143, %t1144
    call void @_WriteBool(i8* %t1141, i32 5, i32 0, i1 %t1142)
    call void @_WriteString(i8* %t1141, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1141)
    %t1145 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1145, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.552, i32 0, i32 0), i32 11)
    %t1147 = load i32, i32* @svb
    %t1148 = load i32, i32* @svb
    %t1146 = icmp eq i32 %t1147, %t1148
    call void @_WriteBool(i8* %t1145, i32 5, i32 0, i1 %t1146)
    call void @_WriteString(i8* %t1145, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1145)
    %t1149 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1149, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.553, i32 0, i32 0), i32 11)
    %t1151 = load i32, i32* @sva
    %t1152 = load i32, i32* @svb
    %t1150 = icmp eq i32 %t1151, %t1152
    call void @_WriteBool(i8* %t1149, i32 5, i32 0, i1 %t1150)
    call void @_WriteString(i8* %t1149, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1149)
    %t1153 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1153, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.554, i32 0, i32 0), i32 11)
    %t1155 = load i32, i32* @svb
    %t1156 = load i32, i32* @sva
    %t1154 = icmp slt i32 %t1155, %t1156
    call void @_WriteBool(i8* %t1153, i32 5, i32 0, i1 %t1154)
    call void @_WriteString(i8* %t1153, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1153)
    %t1157 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1157, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.555, i32 0, i32 0), i32 11)
    %t1159 = load i32, i32* @sva
    %t1160 = load i32, i32* @svb
    %t1158 = icmp slt i32 %t1159, %t1160
    call void @_WriteBool(i8* %t1157, i32 5, i32 0, i1 %t1158)
    call void @_WriteString(i8* %t1157, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1157)
    %t1161 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1161, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.556, i32 0, i32 0), i32 11)
    %t1163 = load i32, i32* @sva
    %t1164 = load i32, i32* @svb
    %t1162 = icmp sgt i32 %t1163, %t1164
    call void @_WriteBool(i8* %t1161, i32 5, i32 0, i1 %t1162)
    call void @_WriteString(i8* %t1161, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1161)
    %t1165 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1165, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.557, i32 0, i32 0), i32 11)
    %t1167 = load i32, i32* @svb
    %t1168 = load i32, i32* @sva
    %t1166 = icmp sgt i32 %t1167, %t1168
    call void @_WriteBool(i8* %t1165, i32 5, i32 0, i1 %t1166)
    call void @_WriteString(i8* %t1165, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1165)
    %t1169 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1169, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.558, i32 0, i32 0), i32 11)
    %t1171 = load i32, i32* @sva
    %t1172 = load i32, i32* @svb
    %t1170 = icmp ne i32 %t1171, %t1172
    call void @_WriteBool(i8* %t1169, i32 5, i32 0, i1 %t1170)
    call void @_WriteString(i8* %t1169, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1169)
    %t1173 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1173, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.559, i32 0, i32 0), i32 11)
    %t1175 = load i32, i32* @sva
    %t1176 = load i32, i32* @svc
    %t1174 = icmp ne i32 %t1175, %t1176
    call void @_WriteBool(i8* %t1173, i32 5, i32 0, i1 %t1174)
    call void @_WriteString(i8* %t1173, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1173)
    %t1177 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1177, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.560, i32 0, i32 0), i32 11)
    %t1179 = load i32, i32* @svb
    %t1180 = load i32, i32* @sva
    %t1178 = icmp sle i32 %t1179, %t1180
    call void @_WriteBool(i8* %t1177, i32 5, i32 0, i1 %t1178)
    call void @_WriteString(i8* %t1177, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1177)
    %t1181 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1181, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.561, i32 0, i32 0), i32 11)
    %t1183 = load i32, i32* @sva
    %t1184 = load i32, i32* @svc
    %t1182 = icmp sle i32 %t1183, %t1184
    call void @_WriteBool(i8* %t1181, i32 5, i32 0, i1 %t1182)
    call void @_WriteString(i8* %t1181, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1181)
    %t1185 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1185, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.562, i32 0, i32 0), i32 11)
    %t1187 = load i32, i32* @sva
    %t1188 = load i32, i32* @svb
    %t1186 = icmp sle i32 %t1187, %t1188
    call void @_WriteBool(i8* %t1185, i32 5, i32 0, i1 %t1186)
    call void @_WriteString(i8* %t1185, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1185)
    %t1189 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1189, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.563, i32 0, i32 0), i32 11)
    %t1191 = load i32, i32* @sva
    %t1192 = load i32, i32* @svb
    %t1190 = icmp sge i32 %t1191, %t1192
    call void @_WriteBool(i8* %t1189, i32 5, i32 0, i1 %t1190)
    call void @_WriteString(i8* %t1189, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1189)
    %t1193 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1193, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.564, i32 0, i32 0), i32 11)
    %t1195 = load i32, i32* @svb
    %t1196 = load i32, i32* @svb
    %t1194 = icmp sge i32 %t1195, %t1196
    call void @_WriteBool(i8* %t1193, i32 5, i32 0, i1 %t1194)
    call void @_WriteString(i8* %t1193, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1193)
    %t1197 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1197, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.565, i32 0, i32 0), i32 11)
    %t1199 = load i32, i32* @svb
    %t1200 = load i32, i32* @sva
    %t1198 = icmp sge i32 %t1199, %t1200
    call void @_WriteBool(i8* %t1197, i32 5, i32 0, i1 %t1198)
    call void @_WriteString(i8* %t1197, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1197)
    %t1201 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1201, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.566, i32 0, i32 0), i32 11)
    %t1202 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1202, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.567, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1202)
    %t1203 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1203, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.568, i32 0, i32 0), i32 11)
    %t1204 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1204, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.569, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1204)
    %t1205 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1205, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.547, i32 0, i32 0), i32 11)
    %t1206 = icmp eq i32 , 1
    call void @_WriteBool(i8* %t1205, i32 5, i32 0, i1 %t1206)
    call void @_WriteString(i8* %t1205, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1205)
    %t1207 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1207, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.548, i32 0, i32 0), i32 11)
    %t1208 = icmp eq i32 , 3
    call void @_WriteBool(i8* %t1207, i32 5, i32 0, i1 %t1208)
    call void @_WriteString(i8* %t1207, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1207)
    %t1209 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1209, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.549, i32 0, i32 0), i32 11)
    call void @_WriteInteger(i8* %t1209, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1209, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.173, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1209)
    %t1210 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1210, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.550, i32 0, i32 0), i32 11)
    call void @_WriteInteger(i8* %t1210, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1210, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1210)
    %t1211 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1211, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.551, i32 0, i32 0), i32 11)
    %t1212 = icmp eq i32 3, 3
    call void @_WriteBool(i8* %t1211, i32 5, i32 0, i1 %t1212)
    call void @_WriteString(i8* %t1211, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1211)
    %t1213 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1213, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.552, i32 0, i32 0), i32 11)
    %t1214 = icmp eq i32 4, 4
    call void @_WriteBool(i8* %t1213, i32 5, i32 0, i1 %t1214)
    call void @_WriteString(i8* %t1213, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1213)
    %t1215 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1215, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.553, i32 0, i32 0), i32 11)
    %t1216 = icmp eq i32 1, 2
    call void @_WriteBool(i8* %t1215, i32 5, i32 0, i1 %t1216)
    call void @_WriteString(i8* %t1215, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1215)
    %t1217 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1217, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.554, i32 0, i32 0), i32 11)
    %t1218 = icmp slt i32 0, 2
    call void @_WriteBool(i8* %t1217, i32 5, i32 0, i1 %t1218)
    call void @_WriteString(i8* %t1217, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1217)
    %t1219 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1219, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.555, i32 0, i32 0), i32 11)
    %t1220 = icmp slt i32 4, 4
    call void @_WriteBool(i8* %t1219, i32 5, i32 0, i1 %t1220)
    call void @_WriteString(i8* %t1219, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1219)
    %t1221 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1221, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.556, i32 0, i32 0), i32 11)
    %t1222 = icmp sgt i32 6, 5
    call void @_WriteBool(i8* %t1221, i32 5, i32 0, i1 %t1222)
    call void @_WriteString(i8* %t1221, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1221)
    %t1223 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1223, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.557, i32 0, i32 0), i32 11)
    %t1224 = icmp sgt i32 4, 6
    call void @_WriteBool(i8* %t1223, i32 5, i32 0, i1 %t1224)
    call void @_WriteString(i8* %t1223, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1223)
    %t1225 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1225, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.558, i32 0, i32 0), i32 11)
    %t1226 = icmp ne i32 3, 1
    call void @_WriteBool(i8* %t1225, i32 5, i32 0, i1 %t1226)
    call void @_WriteString(i8* %t1225, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1225)
    %t1227 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1227, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.559, i32 0, i32 0), i32 11)
    %t1228 = icmp ne i32 2, 2
    call void @_WriteBool(i8* %t1227, i32 5, i32 0, i1 %t1228)
    call void @_WriteString(i8* %t1227, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1227)
    %t1229 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1229, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.560, i32 0, i32 0), i32 11)
    %t1230 = icmp sle i32 0, 4
    call void @_WriteBool(i8* %t1229, i32 5, i32 0, i1 %t1230)
    call void @_WriteString(i8* %t1229, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1229)
    %t1231 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1231, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.561, i32 0, i32 0), i32 11)
    %t1232 = icmp sle i32 4, 4
    call void @_WriteBool(i8* %t1231, i32 5, i32 0, i1 %t1232)
    call void @_WriteString(i8* %t1231, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1231)
    %t1233 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1233, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.562, i32 0, i32 0), i32 11)
    %t1234 = icmp sle i32 5, 4
    call void @_WriteBool(i8* %t1233, i32 5, i32 0, i1 %t1234)
    call void @_WriteString(i8* %t1233, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1233)
    %t1235 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1235, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.563, i32 0, i32 0), i32 11)
    %t1236 = icmp sge i32 4, 1
    call void @_WriteBool(i8* %t1235, i32 5, i32 0, i1 %t1236)
    call void @_WriteString(i8* %t1235, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1235)
    %t1237 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1237, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.564, i32 0, i32 0), i32 11)
    %t1238 = icmp sge i32 1, 1
    call void @_WriteBool(i8* %t1237, i32 5, i32 0, i1 %t1238)
    call void @_WriteString(i8* %t1237, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1237)
    %t1239 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1239, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.565, i32 0, i32 0), i32 11)
    %t1240 = icmp sge i32 1, 5
    call void @_WriteBool(i8* %t1239, i32 5, i32 0, i1 %t1240)
    call void @_WriteString(i8* %t1239, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1239)
    %t1241 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1241)
    %t1242 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1242, i32 0, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.570, i32 0, i32 0), i32 56)
    call void @_WriteLn(i8* %t1242)
    %t1243 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1243)
    %t1244 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1244, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.571, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1244, i32 15, i32 0, double 1.55400)
    call void @_WriteString(i8* %t1244, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.572, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1244)
    %t1245 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1245, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.573, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1245, i32 15, i32 0, double 0.00334000)
    call void @_WriteString(i8* %t1245, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.574, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1245)
    %t1246 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1246, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.575, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1246, i32 15, i32 0, double 3.34000e-24)
    call void @_WriteString(i8* %t1246, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.576, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1246)
    %t1247 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1247, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.577, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1247, i32 15, i32 0, double 4.00000e-45)
    call void @_WriteString(i8* %t1247, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.578, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1247)
    %t1248 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1248, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.579, i32 0, i32 0), i32 9)
    %t1249 = fneg double 5.56500
    call void @_WriteReal(i8* %t1248, i32 15, i32 0, double %t1249)
    call void @_WriteString(i8* %t1248, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.580, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1248)
    %t1250 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1250, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.581, i32 0, i32 0), i32 9)
    %t1251 = fneg double 0.00944000
    call void @_WriteReal(i8* %t1250, i32 15, i32 0, double %t1251)
    call void @_WriteString(i8* %t1250, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.582, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1250)
    %t1252 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1252, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.583, i32 0, i32 0), i32 9)
    %t1253 = fneg double 6.36400e+29
    call void @_WriteReal(i8* %t1252, i32 15, i32 0, double %t1253)
    call void @_WriteString(i8* %t1252, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.584, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1252)
    %t1254 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1254, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.585, i32 0, i32 0), i32 9)
    %t1255 = fneg double 2.00000e-14
    call void @_WriteReal(i8* %t1254, i32 15, i32 0, double %t1255)
    call void @_WriteString(i8* %t1254, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.586, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1254)
    %t1256 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1256, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.587, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1256)
    %t1257 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1257, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.588, i32 0, i32 0), i32 50)
    call void @_WriteLn(i8* %t1257)
    %t1258 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1258, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.589, i32 0, i32 0), i32 50)
    call void @_WriteLn(i8* %t1258)
    %t1259 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1259, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.590, i32 0, i32 0), i32 38)
    call void @_WriteLn(i8* %t1259)
    %t1260 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1260, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.591, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1260)
    %t1261 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1261, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.591, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1261)
    %t1262 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1262, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.591, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1262)
    %t1263 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1263, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.591, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1263)
    %t1264 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1264, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.591, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1264)
    %t1265 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1265, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.591, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1265)
    %t1266 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1266, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.591, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1266)
    %t1267 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1267, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.591, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1267)
    %t1268 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1268, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.591, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1268)
    %t1269 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1269, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.592, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1269)
    %t1270 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1270, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.593, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t1270)
    %t1271 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1271, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.594, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t1271)
    %t1272 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1272, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.595, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t1272)
    %t1273 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1273, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.596, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t1273)
    %t1274 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1274, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.597, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1274)
    %t1275 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1275, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.598, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t1275)
    %t1276 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1276, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.599, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1276)
    %t1277 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1277, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.600, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1277)
    %t1278 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1278, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.601, i32 0, i32 0), i32 19)
    call void @_WriteLn(i8* %t1278)
    %t1279 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1279, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.602, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t1279)
    %t1280 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1280, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.603, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1280)
    %t1281 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1281, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.588, i32 0, i32 0), i32 50)
    call void @_WriteLn(i8* %t1281)
    %t1282 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1282, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.589, i32 0, i32 0), i32 50)
    call void @_WriteLn(i8* %t1282)
    %t1283 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1283, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.590, i32 0, i32 0), i32 38)
    call void @_WriteLn(i8* %t1283)
    %t1284 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1284, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.604, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t1284)
    %t1285 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1285, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.605, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t1285)
    %t1286 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1286, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.606, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t1286)
    %t1287 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1287, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.607, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1287)
    %t1288 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1288, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.608, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1288)
    %t1289 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1289, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.609, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1289)
    %t1290 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1290, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.610, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1290)
    %t1291 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1291, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.611, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1291)
    %t1292 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1292, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.612, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t1292)
    %t1293 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1293, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.613, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t1293)
    %t1294 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1294, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.614, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t1294)
    %t1295 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1295, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.615, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1295)
    %t1296 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1296, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.616, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t1296)
    %t1297 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1297, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.617, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1297)
    %t1298 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1298, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.618, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1298)
    %t1299 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1299, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.619, i32 0, i32 0), i32 19)
    call void @_WriteLn(i8* %t1299)
    %t1300 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1300, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.620, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t1300)
    %t1301 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1301, i32 0, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.621, i32 0, i32 0), i32 21)
    call void @_WriteLn(i8* %t1301)
    %t1302 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1302, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.622, i32 0, i32 0), i32 22)
    call void @_WriteLn(i8* %t1302)
    %t1303 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1303, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.623, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t1303)
    store double 435.230, double* @ra
    store double 983.670, double* @rb
    %t1304 = load double, double* @rb
    store double %t1304, double* @rc
    store double 0.344300, double* @rd
    %t1305 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1305, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.624, i32 0, i32 0), i32 9)
    %t1307 = load double, double* @ra
    %t1308 = load double, double* @rb
    %t1306 = fadd double %t1307, %t1308
    call void @_WriteReal(i8* %t1305, i32 15, i32 0, double %t1306)
    call void @_WriteString(i8* %t1305, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.625, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1305)
    %t1309 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1309, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.626, i32 0, i32 0), i32 9)
    %t1311 = load double, double* @rb
    %t1312 = load double, double* @ra
    %t1310 = fsub double %t1311, %t1312
    call void @_WriteReal(i8* %t1309, i32 15, i32 0, double %t1310)
    call void @_WriteString(i8* %t1309, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.627, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1309)
    %t1313 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1313, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.628, i32 0, i32 0), i32 9)
    %t1315 = load double, double* @ra
    %t1316 = load double, double* @rb
    %t1314 = fmul double %t1315, %t1316
    call void @_WriteReal(i8* %t1313, i32 15, i32 0, double %t1314)
    call void @_WriteString(i8* %t1313, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.629, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1313)
    %t1317 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1317, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.630, i32 0, i32 0), i32 9)
    %t1319 = load double, double* @rb
    %t1320 = load double, double* @ra
    %t1318 = fdiv double %t1319, %t1320
    call void @_WriteReal(i8* %t1317, i32 15, i32 0, double %t1318)
    call void @_WriteString(i8* %t1317, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.631, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1317)
    %t1321 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1321, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.632, i32 0, i32 0), i32 9)
    %t1323 = load double, double* @rc
    %t1324 = load double, double* @rb
    %t1322 = fcmp ueq double %t1323, %t1324
    call void @_WriteBool(i8* %t1321, i32 5, i32 0, i1 %t1322)
    call void @_WriteString(i8* %t1321, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1321)
    %t1325 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1325, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.633, i32 0, i32 0), i32 9)
    %t1327 = load double, double* @ra
    %t1328 = load double, double* @rb
    %t1326 = fcmp ueq double %t1327, %t1328
    call void @_WriteBool(i8* %t1325, i32 5, i32 0, i1 %t1326)
    call void @_WriteString(i8* %t1325, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1325)
    %t1329 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1329, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.634, i32 0, i32 0), i32 9)
    %t1331 = load double, double* @ra
    %t1332 = load double, double* @rb
    %t1330 = fcmp ult double %t1331, %t1332
    call void @_WriteBool(i8* %t1329, i32 5, i32 0, i1 %t1330)
    call void @_WriteString(i8* %t1329, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1329)
    %t1333 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1333, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.635, i32 0, i32 0), i32 9)
    %t1335 = load double, double* @rb
    %t1336 = load double, double* @ra
    %t1334 = fcmp ult double %t1335, %t1336
    call void @_WriteBool(i8* %t1333, i32 5, i32 0, i1 %t1334)
    call void @_WriteString(i8* %t1333, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1333)
    %t1337 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1337, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.636, i32 0, i32 0), i32 9)
    %t1339 = load double, double* @rb
    %t1340 = load double, double* @ra
    %t1338 = fcmp ugt double %t1339, %t1340
    call void @_WriteBool(i8* %t1337, i32 5, i32 0, i1 %t1338)
    call void @_WriteString(i8* %t1337, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1337)
    %t1341 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1341, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.637, i32 0, i32 0), i32 9)
    %t1343 = load double, double* @ra
    %t1344 = load double, double* @rb
    %t1342 = fcmp ugt double %t1343, %t1344
    call void @_WriteBool(i8* %t1341, i32 5, i32 0, i1 %t1342)
    call void @_WriteString(i8* %t1341, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1341)
    %t1345 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1345, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.638, i32 0, i32 0), i32 9)
    %t1347 = load double, double* @ra
    %t1348 = load double, double* @rb
    %t1346 = fcmp une double %t1347, %t1348
    call void @_WriteBool(i8* %t1345, i32 5, i32 0, i1 %t1346)
    call void @_WriteString(i8* %t1345, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1345)
    %t1349 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1349, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.639, i32 0, i32 0), i32 9)
    %t1351 = load double, double* @rb
    %t1352 = load double, double* @rc
    %t1350 = fcmp une double %t1351, %t1352
    call void @_WriteBool(i8* %t1349, i32 5, i32 0, i1 %t1350)
    call void @_WriteString(i8* %t1349, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1349)
    %t1353 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1353, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.640, i32 0, i32 0), i32 9)
    %t1355 = load double, double* @ra
    %t1356 = load double, double* @rb
    %t1354 = fcmp ule double %t1355, %t1356
    call void @_WriteBool(i8* %t1353, i32 5, i32 0, i1 %t1354)
    call void @_WriteString(i8* %t1353, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1353)
    %t1357 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1357, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.641, i32 0, i32 0), i32 9)
    %t1359 = load double, double* @rc
    %t1360 = load double, double* @rb
    %t1358 = fcmp ule double %t1359, %t1360
    call void @_WriteBool(i8* %t1357, i32 5, i32 0, i1 %t1358)
    call void @_WriteString(i8* %t1357, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1357)
    %t1361 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1361, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.642, i32 0, i32 0), i32 9)
    %t1363 = load double, double* @rb
    %t1364 = load double, double* @ra
    %t1362 = fcmp ule double %t1363, %t1364
    call void @_WriteBool(i8* %t1361, i32 5, i32 0, i1 %t1362)
    call void @_WriteString(i8* %t1361, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1361)
    %t1365 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1365, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.643, i32 0, i32 0), i32 9)
    %t1367 = load double, double* @rb
    %t1368 = load double, double* @ra
    %t1366 = fcmp uge double %t1367, %t1368
    call void @_WriteBool(i8* %t1365, i32 5, i32 0, i1 %t1366)
    call void @_WriteString(i8* %t1365, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1365)
    %t1369 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1369, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.644, i32 0, i32 0), i32 9)
    %t1371 = load double, double* @rb
    %t1372 = load double, double* @rc
    %t1370 = fcmp uge double %t1371, %t1372
    call void @_WriteBool(i8* %t1369, i32 5, i32 0, i1 %t1370)
    call void @_WriteString(i8* %t1369, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1369)
    %t1373 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1373, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.645, i32 0, i32 0), i32 9)
    %t1375 = load double, double* @ra
    %t1376 = load double, double* @rb
    %t1374 = fcmp uge double %t1375, %t1376
    call void @_WriteBool(i8* %t1373, i32 5, i32 0, i1 %t1374)
    call void @_WriteString(i8* %t1373, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1373)
    %t1377 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1377, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.646, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1377, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1377, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.647, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1377)
    %t1378 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1378, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.648, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1378, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1378, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.649, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1378)
    %t1379 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1379, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.650, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1379, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1379, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.651, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1379)
    %t1380 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1380, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.652, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1380, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1380, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.653, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1380)
    %t1381 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1381, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.654, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1381, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1381, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.655, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1381)
    %t1382 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1382, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.656, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1382, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1382, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.657, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1382)
    %t1383 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1383, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.658, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1383, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1383, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.659, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1383)
    %t1384 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1384, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.660, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1384, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1384, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.661, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1384)
    %t1385 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1385, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.662, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1385, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1385, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.663, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1385)
    %t1386 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1386, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.664, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1386, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1386, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.661, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1386)
    %t1387 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1387, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.665, i32 0, i32 0), i32 9)
    %t1388 = fadd double 344.939, 933.113
    call void @_WriteReal(i8* %t1387, i32 15, i32 0, double %t1388)
    call void @_WriteString(i8* %t1387, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.666, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1387)
    %t1389 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1389, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.667, i32 0, i32 0), i32 9)
    %t1390 = fsub double 883.885, 644.939
    call void @_WriteReal(i8* %t1389, i32 15, i32 0, double %t1390)
    call void @_WriteString(i8* %t1389, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.668, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1389)
    %t1391 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1391, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.669, i32 0, i32 0), i32 9)
    %t1392 = fmul double 754.740, 138.750
    call void @_WriteReal(i8* %t1391, i32 15, i32 0, double %t1392)
    call void @_WriteString(i8* %t1391, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.670, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1391)
    %t1393 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1393, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.671, i32 0, i32 0), i32 9)
    %t1394 = fdiv double 634.300, 87374.0
    call void @_WriteReal(i8* %t1393, i32 15, i32 0, double %t1394)
    call void @_WriteString(i8* %t1393, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.672, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1393)
    %t1395 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1395, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.673, i32 0, i32 0), i32 9)
    %t1396 = fcmp ueq double 77.4400, 77.4400
    call void @_WriteBool(i8* %t1395, i32 5, i32 0, i1 %t1396)
    call void @_WriteString(i8* %t1395, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1395)
    %t1397 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1397, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.674, i32 0, i32 0), i32 9)
    %t1398 = fcmp ueq double 733.900, 959.200
    call void @_WriteBool(i8* %t1397, i32 5, i32 0, i1 %t1398)
    call void @_WriteString(i8* %t1397, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1397)
    %t1399 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1399, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.675, i32 0, i32 0), i32 9)
    %t1400 = fcmp ult double 883.220, 8383.33
    call void @_WriteBool(i8* %t1399, i32 5, i32 0, i1 %t1400)
    call void @_WriteString(i8* %t1399, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1399)
    %t1401 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1401, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.676, i32 0, i32 0), i32 9)
    %t1402 = fcmp ult double 475.322, 234.930
    call void @_WriteBool(i8* %t1401, i32 5, i32 0, i1 %t1402)
    call void @_WriteString(i8* %t1401, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1401)
    %t1403 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1403, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.677, i32 0, i32 0), i32 9)
    %t1404 = fcmp ugt double 7374.30, 6442.34
    call void @_WriteBool(i8* %t1403, i32 5, i32 0, i1 %t1404)
    call void @_WriteString(i8* %t1403, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1403)
    %t1405 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1405, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.678, i32 0, i32 0), i32 9)
    %t1406 = fcmp ugt double 985.562, 1001.95
    call void @_WriteBool(i8* %t1405, i32 5, i32 0, i1 %t1406)
    call void @_WriteString(i8* %t1405, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1405)
    %t1407 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1407, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.679, i32 0, i32 0), i32 9)
    %t1408 = fcmp une double 30.1100, 938.440
    call void @_WriteBool(i8* %t1407, i32 5, i32 0, i1 %t1408)
    call void @_WriteString(i8* %t1407, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1407)
    %t1409 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1409, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.680, i32 0, i32 0), i32 9)
    %t1410 = fcmp une double 1.23300, 1.23300
    call void @_WriteBool(i8* %t1409, i32 5, i32 0, i1 %t1410)
    call void @_WriteString(i8* %t1409, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1409)
    %t1411 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1411, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.681, i32 0, i32 0), i32 9)
    %t1412 = fcmp ule double 8484.00, 9344.00
    call void @_WriteBool(i8* %t1411, i32 5, i32 0, i1 %t1412)
    call void @_WriteString(i8* %t1411, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1411)
    %t1413 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1413, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.682, i32 0, i32 0), i32 9)
    %t1414 = fcmp ule double 9.11000, 9.11000
    call void @_WriteBool(i8* %t1413, i32 5, i32 0, i1 %t1414)
    call void @_WriteString(i8* %t1413, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1413)
    %t1415 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1415, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.683, i32 0, i32 0), i32 9)
    %t1416 = fcmp ule double 93.3230, 90.3230
    call void @_WriteBool(i8* %t1415, i32 5, i32 0, i1 %t1416)
    call void @_WriteString(i8* %t1415, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1415)
    %t1417 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1417, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.684, i32 0, i32 0), i32 9)
    %t1418 = fcmp uge double 6543.44, 5883.33
    call void @_WriteBool(i8* %t1417, i32 5, i32 0, i1 %t1418)
    call void @_WriteString(i8* %t1417, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1417)
    %t1419 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1419, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.685, i32 0, i32 0), i32 9)
    %t1420 = fcmp uge double 3247.03, 3247.03
    call void @_WriteBool(i8* %t1419, i32 5, i32 0, i1 %t1420)
    call void @_WriteString(i8* %t1419, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1419)
    %t1421 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1421, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.686, i32 0, i32 0), i32 9)
    %t1422 = fcmp uge double 28343.2, 30044.5
    call void @_WriteBool(i8* %t1421, i32 5, i32 0, i1 %t1422)
    call void @_WriteString(i8* %t1421, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1421)
    %t1423 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1423, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.687, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1423, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1423, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.688, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1423)
    %t1424 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1424, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.689, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1424, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1424, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.690, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1424)
    %t1425 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1425, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.691, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1425, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1425, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.692, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1425)
    %t1426 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1426, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.693, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1426, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1426, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.694, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1426)
    %t1427 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1427, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.695, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1427, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1427, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.696, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1427)
    %t1428 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1428, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.697, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1428, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1428, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.698, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1428)
    %t1429 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1429, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.699, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1429, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1429, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.700, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1429)
    %t1430 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1430, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.701, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1430, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1430, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.702, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1430)
    %t1431 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1431, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.703, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1431, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1431, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.704, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1431)
    %t1432 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1432, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.705, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1432, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1432, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.706, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1432)
    %t1433 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1433, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.707, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1433, i32 15, i32 0, double 43.3300)
    call void @_WriteString(i8* %t1433, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.708, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1433)
    %t1434 = fneg double 734.200
    store double %t1434, double* @ra
    %t1435 = fneg double 7634.52
    store double %t1435, double* @rb
    %t1436 = load double, double* @ra
    store double %t1436, double* @rc
    store double 1034.54, double* @rd
    %t1437 = fneg double 0.384830
    store double %t1437, double* @re
    %t1438 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1438, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.709, i32 0, i32 0), i32 9)
    %t1440 = load double, double* @ra
    %t1441 = load double, double* @rd
    %t1439 = fadd double %t1440, %t1441
    call void @_WriteReal(i8* %t1438, i32 15, i32 0, double %t1439)
    call void @_WriteString(i8* %t1438, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.710, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1438)
    %t1442 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1442, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.711, i32 0, i32 0), i32 9)
    %t1444 = load double, double* @rd
    %t1445 = load double, double* @ra
    %t1443 = fadd double %t1444, %t1445
    call void @_WriteReal(i8* %t1442, i32 15, i32 0, double %t1443)
    call void @_WriteString(i8* %t1442, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.710, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1442)
    %t1446 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1446, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.712, i32 0, i32 0), i32 9)
    %t1448 = load double, double* @rb
    %t1449 = load double, double* @rd
    %t1447 = fadd double %t1448, %t1449
    call void @_WriteReal(i8* %t1446, i32 15, i32 0, double %t1447)
    call void @_WriteString(i8* %t1446, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.713, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1446)
    %t1450 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1450, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.714, i32 0, i32 0), i32 9)
    %t1452 = load double, double* @ra
    %t1453 = load double, double* @rb
    %t1451 = fadd double %t1452, %t1453
    call void @_WriteReal(i8* %t1450, i32 15, i32 0, double %t1451)
    call void @_WriteString(i8* %t1450, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.715, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1450)
    %t1454 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1454, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.716, i32 0, i32 0), i32 9)
    %t1456 = load double, double* @rd
    %t1457 = load double, double* @ra
    %t1455 = fsub double %t1456, %t1457
    call void @_WriteReal(i8* %t1454, i32 15, i32 0, double %t1455)
    call void @_WriteString(i8* %t1454, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.717, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1454)
    %t1458 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1458, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.718, i32 0, i32 0), i32 9)
    %t1460 = load double, double* @rb
    %t1461 = load double, double* @rd
    %t1459 = fsub double %t1460, %t1461
    call void @_WriteReal(i8* %t1458, i32 15, i32 0, double %t1459)
    call void @_WriteString(i8* %t1458, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.719, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1458)
    %t1462 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1462, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.720, i32 0, i32 0), i32 9)
    %t1464 = load double, double* @rb
    %t1465 = load double, double* @ra
    %t1463 = fsub double %t1464, %t1465
    call void @_WriteReal(i8* %t1462, i32 15, i32 0, double %t1463)
    call void @_WriteString(i8* %t1462, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.721, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1462)
    %t1466 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1466, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.722, i32 0, i32 0), i32 9)
    %t1468 = load double, double* @rd
    %t1469 = load double, double* @ra
    %t1467 = fmul double %t1468, %t1469
    call void @_WriteReal(i8* %t1466, i32 15, i32 0, double %t1467)
    call void @_WriteString(i8* %t1466, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.723, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1466)
    %t1470 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1470, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.724, i32 0, i32 0), i32 9)
    %t1472 = load double, double* @ra
    %t1473 = load double, double* @rd
    %t1471 = fmul double %t1472, %t1473
    call void @_WriteReal(i8* %t1470, i32 15, i32 0, double %t1471)
    call void @_WriteString(i8* %t1470, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.723, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1470)
    %t1474 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1474, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.725, i32 0, i32 0), i32 9)
    %t1476 = load double, double* @ra
    %t1477 = load double, double* @rb
    %t1475 = fmul double %t1476, %t1477
    call void @_WriteReal(i8* %t1474, i32 15, i32 0, double %t1475)
    call void @_WriteString(i8* %t1474, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.726, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1474)
    %t1478 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1478, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.727, i32 0, i32 0), i32 9)
    %t1480 = load double, double* @rd
    %t1481 = load double, double* @ra
    %t1479 = fdiv double %t1480, %t1481
    call void @_WriteReal(i8* %t1478, i32 15, i32 0, double %t1479)
    call void @_WriteString(i8* %t1478, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.728, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1478)
    %t1482 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1482, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.729, i32 0, i32 0), i32 9)
    %t1484 = load double, double* @rb
    %t1485 = load double, double* @rd
    %t1483 = fdiv double %t1484, %t1485
    call void @_WriteReal(i8* %t1482, i32 15, i32 0, double %t1483)
    call void @_WriteString(i8* %t1482, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.730, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1482)
    %t1486 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1486, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.731, i32 0, i32 0), i32 9)
    %t1488 = load double, double* @rb
    %t1489 = load double, double* @ra
    %t1487 = fdiv double %t1488, %t1489
    call void @_WriteReal(i8* %t1486, i32 15, i32 0, double %t1487)
    call void @_WriteString(i8* %t1486, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.732, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1486)
    %t1490 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1490, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.733, i32 0, i32 0), i32 9)
    %t1492 = load double, double* @ra
    %t1493 = load double, double* @rc
    %t1491 = fcmp ueq double %t1492, %t1493
    call void @_WriteBool(i8* %t1490, i32 5, i32 0, i1 %t1491)
    call void @_WriteString(i8* %t1490, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1490)
    %t1494 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1494, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.734, i32 0, i32 0), i32 9)
    %t1496 = load double, double* @ra
    %t1497 = load double, double* @rb
    %t1495 = fcmp ueq double %t1496, %t1497
    call void @_WriteBool(i8* %t1494, i32 5, i32 0, i1 %t1495)
    call void @_WriteString(i8* %t1494, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1494)
    %t1498 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1498, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.735, i32 0, i32 0), i32 9)
    %t1500 = load double, double* @ra
    %t1501 = load double, double* @rb
    %t1499 = fcmp une double %t1500, %t1501
    call void @_WriteBool(i8* %t1498, i32 5, i32 0, i1 %t1499)
    call void @_WriteString(i8* %t1498, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1498)
    %t1502 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1502, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.736, i32 0, i32 0), i32 9)
    %t1504 = load double, double* @ra
    %t1505 = load double, double* @rc
    %t1503 = fcmp une double %t1504, %t1505
    call void @_WriteBool(i8* %t1502, i32 5, i32 0, i1 %t1503)
    call void @_WriteString(i8* %t1502, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1502)
    %t1506 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1506, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.737, i32 0, i32 0), i32 9)
    %t1508 = load double, double* @ra
    %t1509 = load double, double* @rd
    %t1507 = fcmp ult double %t1508, %t1509
    call void @_WriteBool(i8* %t1506, i32 5, i32 0, i1 %t1507)
    call void @_WriteString(i8* %t1506, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1506)
    %t1510 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1510, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.738, i32 0, i32 0), i32 9)
    %t1512 = load double, double* @rb
    %t1513 = load double, double* @ra
    %t1511 = fcmp ult double %t1512, %t1513
    call void @_WriteBool(i8* %t1510, i32 5, i32 0, i1 %t1511)
    call void @_WriteString(i8* %t1510, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1510)
    %t1514 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1514, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.739, i32 0, i32 0), i32 9)
    %t1516 = load double, double* @rd
    %t1517 = load double, double* @ra
    %t1515 = fcmp ult double %t1516, %t1517
    call void @_WriteBool(i8* %t1514, i32 5, i32 0, i1 %t1515)
    call void @_WriteString(i8* %t1514, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1514)
    %t1518 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1518, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.740, i32 0, i32 0), i32 9)
    %t1520 = load double, double* @ra
    %t1521 = load double, double* @rb
    %t1519 = fcmp ult double %t1520, %t1521
    call void @_WriteBool(i8* %t1518, i32 5, i32 0, i1 %t1519)
    call void @_WriteString(i8* %t1518, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1518)
    %t1522 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1522, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.741, i32 0, i32 0), i32 9)
    %t1524 = load double, double* @rd
    %t1525 = load double, double* @ra
    %t1523 = fcmp ugt double %t1524, %t1525
    call void @_WriteBool(i8* %t1522, i32 5, i32 0, i1 %t1523)
    call void @_WriteString(i8* %t1522, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1522)
    %t1526 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1526, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.742, i32 0, i32 0), i32 9)
    %t1528 = load double, double* @ra
    %t1529 = load double, double* @rb
    %t1527 = fcmp ugt double %t1528, %t1529
    call void @_WriteBool(i8* %t1526, i32 5, i32 0, i1 %t1527)
    call void @_WriteString(i8* %t1526, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1526)
    %t1530 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1530, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.743, i32 0, i32 0), i32 9)
    %t1532 = load double, double* @ra
    %t1533 = load double, double* @rd
    %t1531 = fcmp ugt double %t1532, %t1533
    call void @_WriteBool(i8* %t1530, i32 5, i32 0, i1 %t1531)
    call void @_WriteString(i8* %t1530, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1530)
    %t1534 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1534, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.744, i32 0, i32 0), i32 9)
    %t1536 = load double, double* @rb
    %t1537 = load double, double* @ra
    %t1535 = fcmp ugt double %t1536, %t1537
    call void @_WriteBool(i8* %t1534, i32 5, i32 0, i1 %t1535)
    call void @_WriteString(i8* %t1534, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1534)
    %t1538 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1538, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.745, i32 0, i32 0), i32 9)
    %t1540 = load double, double* @ra
    %t1541 = load double, double* @rd
    %t1539 = fcmp ule double %t1540, %t1541
    call void @_WriteBool(i8* %t1538, i32 5, i32 0, i1 %t1539)
    call void @_WriteString(i8* %t1538, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1538)
    %t1542 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1542, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.746, i32 0, i32 0), i32 9)
    %t1544 = load double, double* @rb
    %t1545 = load double, double* @ra
    %t1543 = fcmp ule double %t1544, %t1545
    call void @_WriteBool(i8* %t1542, i32 5, i32 0, i1 %t1543)
    call void @_WriteString(i8* %t1542, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1542)
    %t1546 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1546, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.747, i32 0, i32 0), i32 9)
    %t1548 = load double, double* @ra
    %t1549 = load double, double* @rc
    %t1547 = fcmp ule double %t1548, %t1549
    call void @_WriteBool(i8* %t1546, i32 5, i32 0, i1 %t1547)
    call void @_WriteString(i8* %t1546, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1546)
    %t1550 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1550, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.748, i32 0, i32 0), i32 9)
    %t1552 = load double, double* @rd
    %t1553 = load double, double* @ra
    %t1551 = fcmp ule double %t1552, %t1553
    call void @_WriteBool(i8* %t1550, i32 5, i32 0, i1 %t1551)
    call void @_WriteString(i8* %t1550, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1550)
    %t1554 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1554, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.749, i32 0, i32 0), i32 9)
    %t1556 = load double, double* @ra
    %t1557 = load double, double* @rb
    %t1555 = fcmp ule double %t1556, %t1557
    call void @_WriteBool(i8* %t1554, i32 5, i32 0, i1 %t1555)
    call void @_WriteString(i8* %t1554, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1554)
    %t1558 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1558, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.750, i32 0, i32 0), i32 9)
    %t1560 = load double, double* @rd
    %t1561 = load double, double* @ra
    %t1559 = fcmp uge double %t1560, %t1561
    call void @_WriteBool(i8* %t1558, i32 5, i32 0, i1 %t1559)
    call void @_WriteString(i8* %t1558, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1558)
    %t1562 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1562, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.751, i32 0, i32 0), i32 9)
    %t1564 = load double, double* @ra
    %t1565 = load double, double* @rb
    %t1563 = fcmp uge double %t1564, %t1565
    call void @_WriteBool(i8* %t1562, i32 5, i32 0, i1 %t1563)
    call void @_WriteString(i8* %t1562, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1562)
    %t1566 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1566, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.752, i32 0, i32 0), i32 9)
    %t1568 = load double, double* @ra
    %t1569 = load double, double* @rc
    %t1567 = fcmp uge double %t1568, %t1569
    call void @_WriteBool(i8* %t1566, i32 5, i32 0, i1 %t1567)
    call void @_WriteString(i8* %t1566, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1566)
    %t1570 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1570, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.753, i32 0, i32 0), i32 9)
    %t1572 = load double, double* @ra
    %t1573 = load double, double* @rd
    %t1571 = fcmp uge double %t1572, %t1573
    call void @_WriteBool(i8* %t1570, i32 5, i32 0, i1 %t1571)
    call void @_WriteString(i8* %t1570, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1570)
    %t1574 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1574, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.754, i32 0, i32 0), i32 9)
    %t1576 = load double, double* @rb
    %t1577 = load double, double* @ra
    %t1575 = fcmp uge double %t1576, %t1577
    call void @_WriteBool(i8* %t1574, i32 5, i32 0, i1 %t1575)
    call void @_WriteString(i8* %t1574, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1574)
    %t1578 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1578, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.755, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1578, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1578, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.756, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1578)
    %t1579 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1579, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.757, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1579, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1579, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.758, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1579)
    %t1580 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1580, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.759, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1580, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1580, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.760, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1580)
    %t1581 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1581, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.761, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1581, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1581, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.762, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1581)
    %t1582 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1582, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.763, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1582, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1582, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.764, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1582)
    %t1583 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1583, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.765, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1583, i32 15, i32 0, i32 )
    call void @_WriteString(i8* %t1583, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.766, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1583)
    %t1584 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1584, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.767, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1584, i32 15, i32 0, i32 )
    call void @_WriteString(i8* %t1584, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.768, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1584)
    %t1585 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1585, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.769, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1585, i32 15, i32 0, i32 )
    call void @_WriteString(i8* %t1585, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.766, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1585)
    %t1586 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1586, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.770, i32 0, i32 0), i32 9)
    %t1588 = fneg double 30.8340
    %t1587 = fadd double 45.9340, %t1588
    call void @_WriteReal(i8* %t1586, i32 15, i32 0, double %t1587)
    call void @_WriteString(i8* %t1586, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.771, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1586)
    %t1589 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1589, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.772, i32 0, i32 0), i32 9)
    %t1591 = fneg double 25.7370
    %t1590 = fadd double %t1591, 70.8700
    call void @_WriteReal(i8* %t1589, i32 15, i32 0, double %t1590)
    call void @_WriteString(i8* %t1589, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.773, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1589)
    %t1592 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1592, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.774, i32 0, i32 0), i32 9)
    %t1594 = fneg double 62.6300
    %t1593 = fadd double %t1594, 23.9900
    call void @_WriteReal(i8* %t1592, i32 15, i32 0, double %t1593)
    call void @_WriteString(i8* %t1592, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.775, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1592)
    %t1595 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1595, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.776, i32 0, i32 0), i32 9)
    %t1597 = fneg double 20.7330
    %t1598 = fneg double 15.8480
    %t1596 = fadd double %t1597, %t1598
    call void @_WriteReal(i8* %t1595, i32 15, i32 0, double %t1596)
    call void @_WriteString(i8* %t1595, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.777, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1595)
    %t1599 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1599, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.778, i32 0, i32 0), i32 9)
    %t1601 = fneg double 14.7740
    %t1600 = fsub double 20.7740, %t1601
    call void @_WriteReal(i8* %t1599, i32 15, i32 0, double %t1600)
    call void @_WriteString(i8* %t1599, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.779, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1599)
    %t1602 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1602, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.780, i32 0, i32 0), i32 9)
    %t1604 = fneg double 34.5230
    %t1603 = fsub double %t1604, 14.8754
    call void @_WriteReal(i8* %t1602, i32 15, i32 0, double %t1603)
    call void @_WriteString(i8* %t1602, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.781, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1602)
    %t1605 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1605, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.782, i32 0, i32 0), i32 9)
    %t1607 = fneg double 56.6640
    %t1608 = fneg double 12.6630
    %t1606 = fsub double %t1607, %t1608
    call void @_WriteReal(i8* %t1605, i32 15, i32 0, double %t1606)
    call void @_WriteString(i8* %t1605, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.783, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1605)
    %t1609 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1609, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.784, i32 0, i32 0), i32 9)
    %t1611 = fneg double 4.66400
    %t1610 = fmul double 5.66300, %t1611
    call void @_WriteReal(i8* %t1609, i32 15, i32 0, double %t1610)
    call void @_WriteString(i8* %t1609, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.785, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1609)
    %t1612 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1612, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.786, i32 0, i32 0), i32 9)
    %t1614 = fneg double 18.6200
    %t1613 = fmul double %t1614, 7.99700
    call void @_WriteReal(i8* %t1612, i32 15, i32 0, double %t1613)
    call void @_WriteString(i8* %t1612, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.787, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1612)
    %t1615 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1615, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.788, i32 0, i32 0), i32 9)
    %t1617 = fneg double 40.5520
    %t1618 = fneg double 13.7740
    %t1616 = fmul double %t1617, %t1618
    call void @_WriteReal(i8* %t1615, i32 15, i32 0, double %t1616)
    call void @_WriteString(i8* %t1615, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.789, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1615)
    %t1619 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1619, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.790, i32 0, i32 0), i32 9)
    %t1621 = fneg double 5.87400
    %t1620 = fdiv double 30.6632, %t1621
    call void @_WriteReal(i8* %t1619, i32 15, i32 0, double %t1620)
    call void @_WriteString(i8* %t1619, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.791, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1619)
    %t1622 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1622, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.792, i32 0, i32 0), i32 9)
    %t1624 = fneg double 50.6360
    %t1623 = fdiv double %t1624, 2.85730
    call void @_WriteReal(i8* %t1622, i32 15, i32 0, double %t1623)
    call void @_WriteString(i8* %t1622, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.793, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1622)
    %t1625 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1625, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.794, i32 0, i32 0), i32 9)
    %t1627 = fneg double 20.7631
    %t1628 = fneg double 4.85734
    %t1626 = fdiv double %t1627, %t1628
    call void @_WriteReal(i8* %t1625, i32 15, i32 0, double %t1626)
    call void @_WriteString(i8* %t1625, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.795, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1625)
    %t1629 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1629, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.796, i32 0, i32 0), i32 9)
    %t1631 = fneg double 5.77500
    %t1632 = fneg double 5.77500
    %t1630 = fcmp ueq double %t1631, %t1632
    call void @_WriteBool(i8* %t1629, i32 5, i32 0, i1 %t1630)
    call void @_WriteString(i8* %t1629, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1629)
    %t1633 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1633, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.797, i32 0, i32 0), i32 9)
    %t1635 = fneg double 5.63640
    %t1634 = fcmp ueq double %t1635, 5.85750
    call void @_WriteBool(i8* %t1633, i32 5, i32 0, i1 %t1634)
    call void @_WriteString(i8* %t1633, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1633)
    %t1636 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1636, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.798, i32 0, i32 0), i32 9)
    %t1638 = fneg double 21.6385
    %t1639 = fneg double 40.7640
    %t1637 = fcmp une double %t1638, %t1639
    call void @_WriteBool(i8* %t1636, i32 5, i32 0, i1 %t1637)
    call void @_WriteString(i8* %t1636, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1636)
    %t1640 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1640, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.799, i32 0, i32 0), i32 9)
    %t1642 = fneg double 21.7720
    %t1643 = fneg double 21.7720
    %t1641 = fcmp une double %t1642, %t1643
    call void @_WriteBool(i8* %t1640, i32 5, i32 0, i1 %t1641)
    call void @_WriteString(i8* %t1640, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1640)
    %t1644 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1644, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.800, i32 0, i32 0), i32 9)
    %t1646 = fneg double 3.51200
    %t1645 = fcmp ult double %t1646, 5.84670
    call void @_WriteBool(i8* %t1644, i32 5, i32 0, i1 %t1645)
    call void @_WriteString(i8* %t1644, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1644)
    %t1647 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1647, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.801, i32 0, i32 0), i32 9)
    %t1649 = fneg double 32.6440
    %t1650 = fneg double 20.9074
    %t1648 = fcmp ult double %t1649, %t1650
    call void @_WriteBool(i8* %t1647, i32 5, i32 0, i1 %t1648)
    call void @_WriteString(i8* %t1647, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1647)
    %t1651 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1651, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.802, i32 0, i32 0), i32 9)
    %t1653 = fneg double 20.7430
    %t1652 = fcmp ult double 20.7630, %t1653
    call void @_WriteBool(i8* %t1651, i32 5, i32 0, i1 %t1652)
    call void @_WriteString(i8* %t1651, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1651)
    %t1654 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1654, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.803, i32 0, i32 0), i32 9)
    %t1656 = fneg double 15.6630
    %t1657 = fneg double 40.7840
    %t1655 = fcmp ult double %t1656, %t1657
    call void @_WriteBool(i8* %t1654, i32 5, i32 0, i1 %t1655)
    call void @_WriteString(i8* %t1654, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1654)
    %t1658 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1658, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.804, i32 0, i32 0), i32 9)
    %t1660 = fneg double 4.97400
    %t1659 = fcmp ugt double 70.7660, %t1660
    call void @_WriteBool(i8* %t1658, i32 5, i32 0, i1 %t1659)
    call void @_WriteString(i8* %t1658, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1658)
    %t1661 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1661, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.805, i32 0, i32 0), i32 9)
    %t1663 = fneg double 23.6532
    %t1664 = fneg double 34.7740
    %t1662 = fcmp ugt double %t1663, %t1664
    call void @_WriteBool(i8* %t1661, i32 5, i32 0, i1 %t1662)
    call void @_WriteString(i8* %t1661, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1661)
    %t1665 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1665, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.806, i32 0, i32 0), i32 9)
    %t1667 = fneg double 5.77300
    %t1666 = fcmp ugt double %t1667, 5.98740
    call void @_WriteBool(i8* %t1665, i32 5, i32 0, i1 %t1666)
    call void @_WriteString(i8* %t1665, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1665)
    %t1668 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1668, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.807, i32 0, i32 0), i32 9)
    %t1670 = fneg double 60.6630
    %t1671 = fneg double 59.7800
    %t1669 = fcmp ugt double %t1670, %t1671
    call void @_WriteBool(i8* %t1668, i32 5, i32 0, i1 %t1669)
    call void @_WriteString(i8* %t1668, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1668)
    %t1672 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1672, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.808, i32 0, i32 0), i32 9)
    %t1674 = fneg double 12.5420
    %t1673 = fcmp ule double %t1674, 4.08480
    call void @_WriteBool(i8* %t1672, i32 5, i32 0, i1 %t1673)
    call void @_WriteString(i8* %t1672, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1672)
    %t1675 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1675, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.809, i32 0, i32 0), i32 9)
    %t1677 = fneg double 14.8763
    %t1678 = fneg double 5.08470
    %t1676 = fcmp ule double %t1677, %t1678
    call void @_WriteBool(i8* %t1675, i32 5, i32 0, i1 %t1676)
    call void @_WriteString(i8* %t1675, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1675)
    %t1679 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1679, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.810, i32 0, i32 0), i32 9)
    %t1681 = fneg double 7.83730
    %t1682 = fneg double 7.83730
    %t1680 = fcmp ule double %t1681, %t1682
    call void @_WriteBool(i8* %t1679, i32 5, i32 0, i1 %t1680)
    call void @_WriteString(i8* %t1679, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1679)
    %t1683 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1683, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.811, i32 0, i32 0), i32 9)
    %t1685 = fneg double 5.45640
    %t1684 = fcmp ule double 5.45640, %t1685
    call void @_WriteBool(i8* %t1683, i32 5, i32 0, i1 %t1684)
    call void @_WriteString(i8* %t1683, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1683)
    %t1686 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1686, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.812, i32 0, i32 0), i32 9)
    %t1688 = fneg double 10.7263
    %t1689 = fneg double 20.9840
    %t1687 = fcmp ule double %t1688, %t1689
    call void @_WriteBool(i8* %t1686, i32 5, i32 0, i1 %t1687)
    call void @_WriteString(i8* %t1686, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1686)
    %t1690 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1690, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.813, i32 0, i32 0), i32 9)
    %t1692 = fneg double 3.93830
    %t1691 = fcmp uge double 9.83400, %t1692
    call void @_WriteBool(i8* %t1690, i32 5, i32 0, i1 %t1691)
    call void @_WriteString(i8* %t1690, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1690)
    %t1693 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1693, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.814, i32 0, i32 0), i32 9)
    %t1695 = fneg double 4.56200
    %t1696 = fneg double 10.7400
    %t1694 = fcmp uge double %t1695, %t1696
    call void @_WriteBool(i8* %t1693, i32 5, i32 0, i1 %t1694)
    call void @_WriteString(i8* %t1693, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1693)
    %t1697 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1697, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.815, i32 0, i32 0), i32 9)
    %t1699 = fneg double 13.6300
    %t1700 = fneg double 13.6300
    %t1698 = fcmp uge double %t1699, %t1700
    call void @_WriteBool(i8* %t1697, i32 5, i32 0, i1 %t1698)
    call void @_WriteString(i8* %t1697, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1697)
    %t1701 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1701, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.816, i32 0, i32 0), i32 9)
    %t1703 = fneg double 6.74000
    %t1702 = fcmp uge double %t1703, 6.74000
    call void @_WriteBool(i8* %t1701, i32 5, i32 0, i1 %t1702)
    call void @_WriteString(i8* %t1701, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1701)
    %t1704 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1704, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.817, i32 0, i32 0), i32 9)
    %t1706 = fneg double 20.7623
    %t1707 = fneg double 10.5740
    %t1705 = fcmp uge double %t1706, %t1707
    call void @_WriteBool(i8* %t1704, i32 5, i32 0, i1 %t1705)
    call void @_WriteString(i8* %t1704, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1704)
    %t1708 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1708, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.818, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1708, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1708, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.819, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1708)
    %t1709 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1709, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.820, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1709, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1709, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.821, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1709)
    %t1710 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1710, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.822, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1710, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1710, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.823, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1710)
    %t1711 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1711, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.824, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1711, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1711, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.825, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1711)
    %t1712 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1712, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.826, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1712, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1712, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.827, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1712)
    %t1713 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1713, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.828, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1713, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1713, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.177, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1713)
    %t1714 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1714, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.829, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1714, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1714, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.830, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1714)
    %t1715 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1715, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.831, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1715, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1715, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.832, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1715)
    %t1716 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1716, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.833, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1716, i32 15, i32 0, i32 -2061584302)
    call void @_WriteString(i8* %t1716, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.834, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1716)
    %t1717 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1717, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.835, i32 0, i32 0), i32 9)
    %t1718 = sub i32 0, -2061584302
    call void @_WriteInteger(i8* %t1717, i32 15, i32 0, i32 %t1718)
    call void @_WriteString(i8* %t1717, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.836, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1717)
    %t1719 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1719, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.837, i32 0, i32 0), i32 10)
    call void @_WriteReal(i8* %t1719, i32 15, i32 0, double -43.3300)
    call void @_WriteString(i8* %t1719, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.838, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1719)
    %t1720 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1720, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.839, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1720, i32 15, i32 0, i32 2061584302)
    call void @_WriteString(i8* %t1720, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.836, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1720)
    %t1721 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1721)
    %t1722 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1722, i32 0, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.840, i32 0, i32 0), i32 55)
    call void @_WriteLn(i8* %t1722)
    %t1723 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1723)
    %t1724 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1724, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.841, i32 0, i32 0), i32 7)
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    %t1725 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1725, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1726 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1726, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.843, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t1726)
    %t1727 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1727, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.844, i32 0, i32 0), i32 7)
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    store %T_set_121 %.dummy_set, %T_set_121* @stb
    %t1728 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1728, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1729 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1729, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.845, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1729)
    %t1730 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1730, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.846, i32 0, i32 0), i32 7)
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    store %T_set_121 %.dummy_set, %T_set_121* @stb
    %t1731 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1731, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1732 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1732, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.847, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1732)
    %t1733 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1733, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.848, i32 0, i32 0), i32 7)
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    store %T_set_121 %.dummy_set, %T_set_121* @stb
    %t1734 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1734, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1735 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1735, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.849, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1735)
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    store %T_set_121 %.dummy_set, %T_set_121* @stb
    store %T_set_121 %.dummy_set, %T_set_121* @stc
    %t1736 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1736, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.850, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1736, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1736, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1736)
    %t1738 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1738, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.851, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1738, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1738, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1738)
    %t1740 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1740, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.852, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1740, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1740, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1740)
    %t1742 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1742, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.853, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1742, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1742, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1742)
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    store %T_set_121 %.dummy_set, %T_set_121* @stb
    store %T_set_121 %.dummy_set, %T_set_121* @stc
    store %T_set_121 %.dummy_set, %T_set_121* @std
    %t1744 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1744, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.854, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1744, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1744, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1744)
    %t1746 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1746, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.855, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1746, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1746, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1746)
    %t1748 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1748, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.856, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1748, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1748, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1748)
    %t1750 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1750, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.857, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1750, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1750, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1750)
    %t1752 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1752, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.858, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1752, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1752, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1752)
    %t1754 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1754, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.859, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1754, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1754, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1754)
    %t1756 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1756, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.860, i32 0, i32 0), i32 7)
    store i32 2, i32* @i
    store i32 4, i32* @x
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    %t1757 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1757, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1758 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1758, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.861, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1758)
    %t1759 = load %T_set_121, %T_set_121* @std
    store %T_set_122 %.dummy_set, %T_set_122* @ste
    store %T_set_123 %.dummy_set, %T_set_123* @stf
    %t1760 = load %T_set_123, %T_set_123* @stf
    store %T_set_124 %.dummy_set, %T_set_124* @stg
    %t1761 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1761, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.862, i32 0, i32 0), i32 7)
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    %t1762 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1762, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1763 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1763, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.863, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t1763)
    %t1764 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1764, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.864, i32 0, i32 0), i32 7)
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    store %T_set_25 %.dummy_set, %T_set_25* @cstb
    %t1765 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1765, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1766 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1766, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.865, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1766)
    %t1767 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1767, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.866, i32 0, i32 0), i32 7)
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    store %T_set_25 %.dummy_set, %T_set_25* @cstb
    %t1768 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1768, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1769 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1769, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.867, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1769)
    %t1770 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1770, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.868, i32 0, i32 0), i32 7)
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    store %T_set_25 %.dummy_set, %T_set_25* @cstb
    %t1771 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1771, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1772 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1772, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.869, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1772)
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    store %T_set_25 %.dummy_set, %T_set_25* @cstb
    store %T_set_25 %.dummy_set, %T_set_25* @cstc
    %t1773 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1773, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.870, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1773, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1773, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1773)
    %t1775 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1775, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.871, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1775, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1775, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1775)
    %t1777 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1777, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.872, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1777, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1777, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1777)
    %t1779 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1779, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.873, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1779, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1779, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1779)
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    store %T_set_25 %.dummy_set, %T_set_25* @cstb
    store %T_set_25 %.dummy_set, %T_set_25* @cstc
    store %T_set_25 %.dummy_set, %T_set_25* @cstd
    %t1781 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1781, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.874, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1781, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1781, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1781)
    %t1783 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1783, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.875, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1783, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1783, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1783)
    %t1785 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1785, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.876, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1785, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1785, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1785)
    %t1787 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1787, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.877, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1787, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1787, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1787)
    %t1789 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1789, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.878, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1789, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1789, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1789)
    %t1791 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1791, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.879, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1791, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1791, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1791)
    %t1793 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1793, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.880, i32 0, i32 0), i32 7)
    store i8 97, i8* @ci
    store i32 4, i32* @i
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    %t1794 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1794, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1795 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1795, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.881, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1795)
    %t1796 = load %T_set_25, %T_set_25* @cstd
    store %T_set_26 %.dummy_set, %T_set_26* @cste
    store %T_set_27 %.dummy_set, %T_set_27* @cstf
    %t1797 = load %T_set_27, %T_set_27* @cstf
    store %T_set_28 %.dummy_set, %T_set_28* @cstg
    %t1798 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1798, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.882, i32 0, i32 0), i32 7)
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    %t1799 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1799, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1800 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1800, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.883, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1800)
    %t1801 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1801, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.884, i32 0, i32 0), i32 7)
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    store %T_set_115 %.dummy_set, %T_set_115* @senb
    %t1802 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1802, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1803 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1803, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.845, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1803)
    %t1804 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1804, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.885, i32 0, i32 0), i32 7)
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    store %T_set_115 %.dummy_set, %T_set_115* @senb
    %t1805 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1805, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1806 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1806, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.847, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1806)
    %t1807 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1807, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.886, i32 0, i32 0), i32 7)
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    store %T_set_115 %.dummy_set, %T_set_115* @senb
    %t1808 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1808, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1809 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1809, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.849, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1809)
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    store %T_set_115 %.dummy_set, %T_set_115* @senb
    store %T_set_115 %.dummy_set, %T_set_115* @senc
    %t1810 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1810, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.887, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1810, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1810, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1810)
    %t1812 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1812, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.888, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1812, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1812, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1812)
    %t1814 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1814, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.889, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1814, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1814, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1814)
    %t1816 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1816, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.890, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1816, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1816, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1816)
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    store %T_set_115 %.dummy_set, %T_set_115* @senb
    store %T_set_115 %.dummy_set, %T_set_115* @senc
    store %T_set_115 %.dummy_set, %T_set_115* @send
    %t1818 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1818, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.891, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1818, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1818, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1818)
    %t1820 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1820, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.892, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1820, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1820, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1820)
    %t1822 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1822, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.893, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1822, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1822, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1822)
    %t1824 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1824, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.894, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1824, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1824, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1824)
    %t1826 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1826, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.895, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1826, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1826, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1826)
    %t1828 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1828, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.896, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1828, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1828, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1828)
    %t1830 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1830, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.897, i32 0, i32 0), i32 7)
    store i32 1, i32* @ei
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    %t1831 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1831, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1832 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1832, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.898, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1832)
    store %T_set_115 %.dummy_set, %T_set_115* @send
    %t1833 = load %T_set_115, %T_set_115* @send
    store %T_set_116 %.dummy_set, %T_set_116* @sene
    store %T_set_117 %.dummy_set, %T_set_117* @senf
    %t1834 = load %T_set_117, %T_set_117* @senf
    store %T_set_118 %.dummy_set, %T_set_118* @seng
    %t1835 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1835, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.899, i32 0, i32 0), i32 7)
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    %t1836 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1836, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1837 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1837, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.900, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1837)
    %t1838 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1838, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.901, i32 0, i32 0), i32 7)
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    store %T_set_110 %.dummy_set, %T_set_110* @sbb
    %t1839 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1839, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1840 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1840, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.902, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1840)
    %t1841 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1841, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.903, i32 0, i32 0), i32 7)
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    store %T_set_110 %.dummy_set, %T_set_110* @sbb
    %t1842 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1842, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1843 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1843, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.904, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1843)
    %t1844 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1844, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.905, i32 0, i32 0), i32 7)
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    store %T_set_110 %.dummy_set, %T_set_110* @sbb
    %t1845 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1845, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1846 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1846, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.904, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1846)
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    store %T_set_110 %.dummy_set, %T_set_110* @sbb
    store %T_set_110 %.dummy_set, %T_set_110* @sbc
    %t1847 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1847, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.906, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1847, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1847, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1847)
    %t1849 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1849, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.907, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1849, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1849, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1849)
    %t1851 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1851, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.908, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1851, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1851, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1851)
    %t1853 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1853, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.909, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1853, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1853, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1853)
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    store %T_set_110 %.dummy_set, %T_set_110* @sbb
    store %T_set_110 %.dummy_set, %T_set_110* @sbc
    store %T_set_110 %.dummy_set, %T_set_110* @sbd
    %t1855 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1855, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.910, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1855, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1855, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1855)
    %t1857 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1857, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.911, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1857, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1857, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1857)
    %t1859 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1859, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.912, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1859, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1859, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1859)
    %t1861 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1861, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.913, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1861, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1861, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1861)
    %t1863 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1863, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.914, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1863, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1863, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1863)
    %t1865 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1865, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.915, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1865, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1865, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1865)
    %t1867 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1867, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.916, i32 0, i32 0), i32 7)
    store i1 0, i1* @ba
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    %t1868 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1868, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1869 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1869, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.902, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1869)
    %t1870 = load %T_set_110, %T_set_110* @sbd
    store %T_set_111 %.dummy_set, %T_set_111* @sbe
    store %T_set_112 %.dummy_set, %T_set_112* @sbf
    %t1871 = load %T_set_112, %T_set_112* @sbf
    store %T_set_113 %.dummy_set, %T_set_113* @sbg
    %t1872 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1872, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.917, i32 0, i32 0), i32 7)
    %t1873 = load i8*, i8** @pi1
    %t1874 = bitcast i8* %t1873 to i32*
    store i32 3, i32* %t1874
    %t1875 = load i8*, i8** @pi2
    %t1876 = bitcast i8* %t1875 to i32*
    store i32 5, i32* %t1876
    %t1877 = load %T_text, %T_text* @output
    call void @_WriteBool(i8* %t1877, i32 5, i32 0, i1 true)
    %t1879 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1879, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1879)
    %t1880 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1880)
    %t1881 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1881, i32 0, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.918, i32 0, i32 0), i32 59)
    call void @_WriteLn(i8* %t1881)
    %t1882 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1882)
    %t1883 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1883, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.919, i32 0, i32 0), i32 12)
    %t1884 = load i8*, i8** @pti
    %t1885 = bitcast i8* %t1884 to i32*
    store i32 4594, i32* %t1885
    %t1886 = load %T_text, %T_text* @output
    %t1887 = load i8*, i8** @pti
    %t1888 = bitcast i8* %t1887 to i32*
    %t1889 = load i32, i32* %t1888
    call void @_WriteInteger(i8* %t1886, i32 1, i32 0, i32 %t1889)
    call void @_WriteString(i8* %t1886, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.920, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1886)
    %t1890 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1890, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.921, i32 0, i32 0), i32 12)
    %t1891 = load i8*, i8** @ptb
    %t1892 = bitcast i8* %t1891 to i1*
    store i1 1, i1* %t1892
    %t1893 = load %T_text, %T_text* @output
    %t1894 = load i8*, i8** @ptb
    %t1895 = bitcast i8* %t1894 to i1*
    %t1896 = load i1, i1* %t1895
    call void @_WriteBool(i8* %t1893, i32 5, i32 0, i1 %t1896)
    call void @_WriteString(i8* %t1893, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.922, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1893)
    %t1897 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1897, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.923, i32 0, i32 0), i32 12)
    %t1898 = load i8*, i8** @ptb
    %t1899 = bitcast i8* %t1898 to i1*
    store i1 0, i1* %t1899
    %t1900 = load %T_text, %T_text* @output
    %t1901 = load i8*, i8** @ptb
    %t1902 = bitcast i8* %t1901 to i1*
    %t1903 = load i1, i1* %t1902
    call void @_WriteBool(i8* %t1900, i32 5, i32 0, i1 %t1903)
    call void @_WriteString(i8* %t1900, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1900)
    %t1904 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1904, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.924, i32 0, i32 0), i32 12)
    %t1905 = load i8*, i8** @ptc
    %t1906 = bitcast i8* %t1905 to i8*
    store i8 112, i8* %t1906
    %t1907 = load %T_text, %T_text* @output
    %t1908 = load i8*, i8** @ptc
    %t1909 = bitcast i8* %t1908 to i8*
    %t1910 = load i8, i8* %t1909
    call void @_WriteChar(i8* %t1907, i32 0, i32 0, i8 %t1910)
    call void @_WriteString(i8* %t1907, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.925, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1907)
    %t1911 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1911, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.926, i32 0, i32 0), i32 12)
    %t1912 = load i8*, i8** @pte
    %t1913 = bitcast i8* %t1912 to i32*
    store i32 5, i32* %t1913
    %t1914 = load %T_text, %T_text* @output
    call void @_WriteInteger(i8* %t1914, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1914, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.234, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1914)
    %t1915 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1915, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.927, i32 0, i32 0), i32 12)
    %t1916 = load i8*, i8** @ptes
    %t1917 = bitcast i8* %t1916 to i32*
    store i32 3, i32* %t1917
    %t1918 = load %T_text, %T_text* @output
    call void @_WriteInteger(i8* %t1918, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1918, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.928, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1918)
    %t1919 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1919, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.929, i32 0, i32 0), i32 12)
    %t1920 = load i8*, i8** @pts
    %t1921 = bitcast i8* %t1920 to i32*
    store i32 17, i32* %t1921
    %t1922 = load %T_text, %T_text* @output
    %t1923 = load i8*, i8** @pts
    %t1924 = bitcast i8* %t1923 to i32*
    %t1925 = load i32, i32* %t1924
    call void @_WriteInteger(i8* %t1922, i32 1, i32 0, i32 %t1925)
    call void @_WriteString(i8* %t1922, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.930, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1922)
    %t1926 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1926, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.931, i32 0, i32 0), i32 12)
    %t1927 = load i8*, i8** @ptr
    %t1928 = bitcast i8* %t1927 to double*
    store double 1234.57, double* %t1928
    %t1929 = load %T_text, %T_text* @output
    %t1930 = load i8*, i8** @ptr
    %t1931 = bitcast i8* %t1930 to double*
    %t1932 = load double, double* %t1931
    call void @_WriteReal(i8* %t1929, i32 1, i32 4, double %t1932)
    call void @_WriteString(i8* %t1929, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.932, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t1929)
    %t1933 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1933, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.933, i32 0, i32 0), i32 12)
    %t1934 = load i8*, i8** @ptst
    %t1935 = bitcast i8* %t1934 to %T_string10*
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.934, i32 0, i32 0), %T_string10* %t1935
    %t1936 = load %T_text, %T_text* @output
    %t1937 = load i8*, i8** @ptst
    %t1938 = bitcast i8* %t1937 to %T_string10*
    call void @_WriteString(i8* %t1936, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* %t1938, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t1936, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.935, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1936)
    %t1939 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1939, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.936, i32 0, i32 0), i32 12)
    %t1940 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1940, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.937, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t1940)
    %t1941 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1941, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.938, i32 0, i32 0), i32 13)
    %t1942 = load i8*, i8** @ptrc
    %t1943 = bitcast i8* %t1942 to %T_recs*
    %t1945 = getelementptr inbounds %T_recs, %T_recs* %t1943, i32 0, i32 0
    %t1944 = bitcast i8* %t1945 to i32*
    store i32 7234, i32* %t1944
    %t1946 = load i8*, i8** @ptrc
    %t1947 = bitcast i8* %t1946 to %T_recs*
    %t1949 = getelementptr inbounds %T_recs, %T_recs* %t1947, i32 0, i32 4
    %t1948 = bitcast i8* %t1949 to i8*
    store i8 121, i8* %t1948
    %t1950 = load %T_text, %T_text* @output
    %t1951 = load i8*, i8** @ptrc
    %t1952 = bitcast i8* %t1951 to %T_recs*
    %t1954 = getelementptr inbounds %T_recs, %T_recs* %t1952, i32 0, i32 0
    %t1953 = bitcast i8* %t1954 to i32*
    %t1955 = load i32, i32* %t1953
    call void @_WriteInteger(i8* %t1950, i32 1, i32 0, i32 %t1955)
    call void @_WriteChar(i8* %t1950, i32 0, i32 0, i8 32)
    %t1956 = load i8*, i8** @ptrc
    %t1957 = bitcast i8* %t1956 to %T_recs*
    %t1959 = getelementptr inbounds %T_recs, %T_recs* %t1957, i32 0, i32 4
    %t1958 = bitcast i8* %t1959 to i8*
    %t1960 = load i8, i8* %t1958
    call void @_WriteChar(i8* %t1950, i32 0, i32 0, i8 %t1960)
    call void @_WriteString(i8* %t1950, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.939, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t1950)
    %t1961 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1961, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.940, i32 0, i32 0), i32 13)
    %t1962 = load i8*, i8** @ptstc
    %t1963 = bitcast i8* %t1962 to %T_cset*
    store %T_cset %.dummy_set, %T_cset* %t1963
    %t1964 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1964, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.941, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1964)
    %t1965 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1965, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.942, i32 0, i32 0), i32 12)
    %t1966 = load i8*, i8** @ptp
    %t1967 = bitcast i8* %t1966 to i8**
    %t1968 = load i8*, i8** %t1967
    %t1969 = bitcast i8* %t1968 to i32*
    store i32 3732, i32* %t1969
    %t1970 = load %T_text, %T_text* @output
    %t1971 = load i8*, i8** @ptp
    %t1972 = bitcast i8* %t1971 to i8**
    %t1973 = load i8*, i8** %t1972
    %t1974 = bitcast i8* %t1973 to i32*
    %t1975 = load i32, i32* %t1974
    call void @_WriteInteger(i8* %t1970, i32 1, i32 0, i32 %t1975)
    call void @_WriteString(i8* %t1970, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.943, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1970)
    %t1976 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1976, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.944, i32 0, i32 0), i32 12)
    store i8* null, i8** @pti
    %t1977 = load %T_text, %T_text* @output
    %t1979 = load i8*, i8** @pti
    %t1978 = icmp eq i32 %t1979, null
    call void @_WriteBool(i8* %t1977, i32 5, i32 0, i1 %t1978)
    call void @_WriteString(i8* %t1977, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.922, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1977)
    %t1980 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1980, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.945, i32 0, i32 0), i32 12)
    %t1981 = load %T_text, %T_text* @output
    %t1983 = load i8*, i8** @pti
    %t1982 = icmp eq i32 %t1983, null
    call void @_WriteBool(i8* %t1981, i32 5, i32 0, i1 %t1982)
    call void @_WriteString(i8* %t1981, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1981)
    %t1984 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1984, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.946, i32 0, i32 0), i32 12)
    %t1985 = load i8*, i8** @pti
    store i8* %t1985, i8** @pti1
    %t1986 = load %T_text, %T_text* @output
    %t1988 = load i8*, i8** @pti
    %t1989 = load i8*, i8** @pti1
    %t1987 = icmp eq i32 %t1988, %t1989
    call void @_WriteBool(i8* %t1986, i32 5, i32 0, i1 %t1987)
    call void @_WriteString(i8* %t1986, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1986)
    %t1990 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1990, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.947, i32 0, i32 0), i32 12)
    %t1991 = load i8*, i8** @pti
    store i8* %t1991, i8** @pti1
    %t1992 = load %T_text, %T_text* @output
    %t1994 = load i8*, i8** @pti
    %t1995 = load i8*, i8** @pti1
    %t1993 = icmp ne i32 %t1994, %t1995
    call void @_WriteBool(i8* %t1992, i32 5, i32 0, i1 %t1993)
    call void @_WriteString(i8* %t1992, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1992)
    %t1996 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1996, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.948, i32 0, i32 0), i32 12)
    %t1997 = load %T_text, %T_text* @output
    %t1999 = load i8*, i8** @pti
    %t2000 = load i8*, i8** @pti1
    %t1998 = icmp eq i32 %t1999, %t2000
    call void @_WriteBool(i8* %t1997, i32 5, i32 0, i1 %t1998)
    call void @_WriteString(i8* %t1997, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1997)
    %t2001 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2001, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.949, i32 0, i32 0), i32 12)
    %t2002 = load %T_text, %T_text* @output
    %t2004 = load i8*, i8** @pti
    %t2005 = load i8*, i8** @pti1
    %t2003 = icmp ne i32 %t2004, %t2005
    call void @_WriteBool(i8* %t2002, i32 5, i32 0, i1 %t2003)
    call void @_WriteString(i8* %t2002, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.922, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2002)
    %t2006 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2006, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.950, i32 0, i32 0), i32 12)
    %t2007 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2007, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.951, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t2007)
    %t2008 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2008, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.952, i32 0, i32 0), i32 12)
    %t2009 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2009, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.953, i32 0, i32 0), i32 12)
    %t2010 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2010, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.951, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t2010)
    %t2011 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2011, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.954, i32 0, i32 0), i32 12)
    %t2012 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2012, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.951, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t2012)
    %t2013 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2013, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.955, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t2013)
    %t2014 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2014)
    %t2015 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2015, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.956, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t2015)
    %t2016 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2016)
    %t2017 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2017, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.957, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2017)
    %t2018 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2018, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.958, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2018)
    %t2019 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2019, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.959, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2019)
    %t2020 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2020, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.960, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2020)
    %t2021 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2021, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.961, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2021)
    %t2022 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2022, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.962, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2022)
    %t2023 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2023, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.963, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2023)
    %t2024 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2024, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.964, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2024)
    %t2025 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2025, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.965, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2025)
    %t2026 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2026, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.966, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t2026)
    store i32 1, i32* @rndseq
    %t2027 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2027, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.967, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t2027)
    %t2028 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2028)
    %t2029 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2029, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.956, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t2029)
    %t2030 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2030)
    %t2031 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2031, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.957, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2031)
    %t2032 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2032, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.958, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2032)
    %t2033 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2033, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.959, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2033)
    %t2034 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2034, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.960, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2034)
    %t2035 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2035, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.961, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2035)
    %t2036 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2036, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.962, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2036)
    %t2037 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2037, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.963, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2037)
    %t2038 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2038, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.964, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2038)
    %t2039 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2039, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.965, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2039)
    %t2040 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2040, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.966, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t2040)
    %t2041 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2041)
    %t2042 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2042, i32 0, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.968, i32 0, i32 0), i32 57)
    call void @_WriteLn(i8* %t2042)
    %t2043 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2043)
    %t2044 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2044, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.969, i32 0, i32 0), i32 10)
    %t2045 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2045, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.970, i32 0, i32 0), i32 34)
    call void @_WriteLn(i8* %t2045)
    %t2046 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2046, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.971, i32 0, i32 0), i32 10)
    %t2047 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2047, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.970, i32 0, i32 0), i32 34)
    call void @_WriteLn(i8* %t2047)
    %t2048 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2048, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.972, i32 0, i32 0), i32 10)
    %t2049 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2049, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.970, i32 0, i32 0), i32 34)
    call void @_WriteLn(i8* %t2049)
    %t2050 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2050, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.973, i32 0, i32 0), i32 10)
    %t2051 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2051, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.970, i32 0, i32 0), i32 34)
    call void @_WriteLn(i8* %t2051)
    %t2052 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2052, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.974, i32 0, i32 0), i32 10)
    %t2053 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2053)
    %t2054 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2054, i32 0, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.975, i32 0, i32 0), i32 64)
    call void @_WriteString(i8* %t2054, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.541, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t2054)
    %t2055 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2055, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.976, i32 0, i32 0), i32 10)
    %t2056 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2056)
    %t2057 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2057, i32 0, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.975, i32 0, i32 0), i32 64)
    call void @_WriteString(i8* %t2057, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.541, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t2057)
    %t2058 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2058, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.977, i32 0, i32 0), i32 10)
    %t2059 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2059)
    %t2060 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2060, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.978, i32 0, i32 0), i32 53)
    call void @_WriteString(i8* %t2060, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.979, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t2060)
    %t2061 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2061, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.980, i32 0, i32 0), i32 10)
    %t2062 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2062)
    %t2063 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2063, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.978, i32 0, i32 0), i32 53)
    call void @_WriteString(i8* %t2063, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.979, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t2063)
    %t2064 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2064, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.981, i32 0, i32 0), i32 10)
    %t2065 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2065, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.982, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2065)
    %t2066 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2066, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.983, i32 0, i32 0), i32 10)
    %t2067 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2067, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.982, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2067)
    %t2068 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2068, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.984, i32 0, i32 0), i32 10)
    %t2069 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2069, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.985, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2069)
    %t2070 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2070, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.986, i32 0, i32 0), i32 10)
    %t2071 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2071, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.985, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2071)
    %t2072 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2072, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.987, i32 0, i32 0), i32 10)
    %t2073 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2073, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.988, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2073)
    %t2074 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2074, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.989, i32 0, i32 0), i32 10)
    %t2075 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2075, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.988, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2075)
    %t2076 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2076, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.990, i32 0, i32 0), i32 10)
    %t2077 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2077, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.991, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t2077)
    %t2078 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2078, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.992, i32 0, i32 0), i32 10)
    %t2079 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2079, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.991, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t2079)
    %t2080 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2080, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.993, i32 0, i32 0), i32 10)
    %t2081 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2081, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.982, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2081)
    %t2082 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2082, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.994, i32 0, i32 0), i32 10)
    %t2083 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2083, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.982, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2083)
    %t2084 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2084, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.995, i32 0, i32 0), i32 10)
    %t2085 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2085)
    %t2086 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2086, i32 0, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.996, i32 0, i32 0), i32 60)
    call void @_WriteLn(i8* %t2086)
    %t2087 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2087, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.997, i32 0, i32 0), i32 10)
    %t2088 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2088)
    %t2089 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2089, i32 0, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.996, i32 0, i32 0), i32 60)
    call void @_WriteLn(i8* %t2089)
    %t2090 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2090, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.998, i32 0, i32 0), i32 10)
    %t2091 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2091, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.937, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2091)
    %t2092 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2092, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.999, i32 0, i32 0), i32 10)
    %t2093 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2093, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.937, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2093)
    %t2094 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2094, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1000, i32 0, i32 0), i32 10)
    %t2095 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2095, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.937, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2095)
    %t2096 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2096, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1001, i32 0, i32 0), i32 10)
    %t2097 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2097, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.937, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2097)
    %t2098 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2098, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1002, i32 0, i32 0), i32 10)
    %t2099 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2099, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1003, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2099)
    %t2100 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2100, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1004, i32 0, i32 0), i32 10)
    %t2101 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2101, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1003, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2101)
    %t2102 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2102, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1005, i32 0, i32 0), i32 10)
    %t2103 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2103, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1006, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2103)
    %t2104 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2104, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1007, i32 0, i32 0), i32 10)
    %t2105 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2105, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1006, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2105)
    %t2106 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2106, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1008, i32 0, i32 0), i32 10)
    %t2107 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2107, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1006, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2107)
    %t2108 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2108, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1009, i32 0, i32 0), i32 10)
    %t2109 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2109, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1006, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2109)
    %t2110 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2110, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1010, i32 0, i32 0), i32 10)
    %t2111 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2111, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1011, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2111)
    %t2112 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2112, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1012, i32 0, i32 0), i32 10)
    %t2113 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2113, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1011, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2113)
    %t2114 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2114, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1013, i32 0, i32 0), i32 10)
    %t2115 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2115, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1014, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t2115)
    %t2116 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2116, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1015, i32 0, i32 0), i32 10)
    %t2117 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2117, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1014, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t2117)
    %t2118 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2118, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1016, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t2118)
    store i32 0, i32* @z
    %t2119 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2119, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.956, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t2119)
    %t2120 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2120, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1017, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2120)
    %t2121 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2121, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1018, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2121)
    %t2122 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2122, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1019, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2122)
    %t2123 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2123, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1020, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2123)
    %t2124 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2124, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1021, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2124)
    %t2125 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2125, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1022, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2125)
    %t2126 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2126, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1023, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2126)
    %t2127 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2127, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1024, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2127)
    %t2128 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2128, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1025, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2128)
    %t2129 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2129, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1026, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2129)
    %t2130 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2130, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1027, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2130)
    store i32 0, i32* @t
    %t2131 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2131, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1028, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t2131)
    %t2132 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2132, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1029, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2132)
    %t2133 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2133, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1030, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2133)
    %t2134 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2134, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1031, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2134)
    %t2135 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2135, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1032, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2135)
    %t2136 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2136, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1033, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2136)
    %t2137 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2137, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1034, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2137)
    %t2138 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2138, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1035, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2138)
    %t2139 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2139, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1036, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2139)
    %t2140 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2140, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1037, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2140)
    store %T_array_60 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1038, i32 0, i32 0), %T_array_60* @pavc
    %t2141 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2141, i32 0, i32 0, i8* getelementptr inbounds (%T_array_60, %T_array_60* @pavc, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t2141, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1039, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t2141)
    %t2142 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2142, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1040, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2142)
    %t2143 = load %T_arri, %T_arri* @avi
    store %T_arri %t2143, %T_arri* @avi2
    %t2144 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2144, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.937, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2144)
    %t2145 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2145, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1041, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2145)
    store i32 0, i32* @t
    %t2146 = load %T_arrim, %T_arrim* @mdar
    store %T_arrim %t2146, %T_arrim* @mdar2
    %t2147 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2147, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1028, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t2147)
    %t2148 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2148, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1029, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2148)
    %t2149 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2149, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1030, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2149)
    %t2150 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2150, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1031, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2150)
    %t2151 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2151, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1032, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2151)
    %t2152 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2152, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1033, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2152)
    %t2153 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2153, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1034, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2153)
    %t2154 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2154, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1035, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2154)
    %t2155 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2155, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1036, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2155)
    %t2156 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2156, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1042, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2156)
    %t2157 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2157, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.937, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2157)
    %t2158 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2158, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1043, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2158)
    %t2159 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2159, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1044, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2159)
    %t2160 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2160, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1045, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2160)
    %t2161 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2161, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1046, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2161)
    %t2162 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2162, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1047, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2162)
    store i32 1, i32* @x
    %t2163 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2163, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1048, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2163)
    %t2164 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2164)
    %t2165 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2165, i32 0, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1049, i32 0, i32 0), i32 58)
    call void @_WriteLn(i8* %t2165)
    %t2166 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2166)
    %t2167 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2167, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1050, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t2167)
    %t2169 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 0
    %t2168 = bitcast i8* %t2169 to i32*
    store i32 64, i32* %t2168
    %t2171 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 4
    %t2170 = bitcast i8* %t2171 to i1*
    store i1 0, i1* %t2170
    %t2173 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 5
    %t2172 = bitcast i8* %t2173 to i8*
    store i8 106, i8* %t2172
    %t2175 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 8
    %t2174 = bitcast i8* %t2175 to i32*
    store i32 1, i32* %t2174
    %t2177 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 12
    %t2176 = bitcast i8* %t2177 to i32*
    store i32 3, i32* %t2176
    %t2179 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 16
    %t2178 = bitcast i8* %t2179 to i32*
    store i32 12, i32* %t2178
    %t2181 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 24
    %t2180 = bitcast i8* %t2181 to double*
    store double 4.54512e-29, double* %t2180
    %t2183 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 32
    %t2182 = bitcast i8* %t2183 to %T_string10*
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1051, i32 0, i32 0), %T_string10* %t2182
    %t2185 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 84
    %t2184 = bitcast i8* %t2185 to %T_recs*
    %t2187 = getelementptr inbounds %T_recs, %T_recs* %t2184, i32 0, i32 0
    %t2186 = bitcast i8* %t2187 to i32*
    store i32 2324, i32* %t2186
    %t2189 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 84
    %t2188 = bitcast i8* %t2189 to %T_recs*
    %t2191 = getelementptr inbounds %T_recs, %T_recs* %t2188, i32 0, i32 4
    %t2190 = bitcast i8* %t2191 to i8*
    store i8 121, i8* %t2190
    %t2193 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 92
    %t2192 = bitcast i8* %t2193 to %T_cset*
    store %T_cset %.dummy_set, %T_cset* %t2192
    %t2195 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 128
    %t2194 = bitcast i8* %t2195 to i8**
    %t2196 = load i8*, i8** %t2194
    %t2197 = bitcast i8* %t2196 to i32*
    store i32 8454, i32* %t2197
    %t2198 = load %T_text, %T_text* @output
    %t2200 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 0
    %t2199 = bitcast i8* %t2200 to i32*
    %t2201 = load i32, i32* %t2199
    call void @_WriteInteger(i8* %t2198, i32 1, i32 0, i32 %t2201)
    call void @_WriteChar(i8* %t2198, i32 0, i32 0, i8 32)
    %t2203 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 4
    %t2202 = bitcast i8* %t2203 to i1*
    %t2204 = load i1, i1* %t2202
    call void @_WriteBool(i8* %t2198, i32 5, i32 0, i1 %t2204)
    call void @_WriteChar(i8* %t2198, i32 0, i32 0, i8 32)
    %t2206 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 5
    %t2205 = bitcast i8* %t2206 to i8*
    %t2207 = load i8, i8* %t2205
    call void @_WriteChar(i8* %t2198, i32 1, i32 0, i8 %t2207)
    call void @_WriteChar(i8* %t2198, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2198, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2198, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2198, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2198, i32 0, i32 0, i8 32)
    %t2209 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 16
    %t2208 = bitcast i8* %t2209 to i32*
    %t2210 = load i32, i32* %t2208
    call void @_WriteInteger(i8* %t2198, i32 1, i32 0, i32 %t2210)
    call void @_WriteChar(i8* %t2198, i32 0, i32 0, i8 32)
    %t2212 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 24
    %t2211 = bitcast i8* %t2212 to double*
    %t2213 = load double, double* %t2211
    call void @_WriteReal(i8* %t2198, i32 15, i32 0, double %t2213)
    call void @_WriteChar(i8* %t2198, i32 0, i32 0, i8 32)
    %t2215 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 32
    %t2214 = bitcast i8* %t2215 to %T_string10*
    call void @_WriteString(i8* %t2198, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* %t2214, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2198)
    %t2216 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2216)
    %t2217 = load %T_text, %T_text* @output
    %t2219 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 84
    %t2218 = bitcast i8* %t2219 to %T_recs*
    %t2221 = getelementptr inbounds %T_recs, %T_recs* %t2218, i32 0, i32 0
    %t2220 = bitcast i8* %t2221 to i32*
    %t2222 = load i32, i32* %t2220
    call void @_WriteInteger(i8* %t2217, i32 1, i32 0, i32 %t2222)
    call void @_WriteChar(i8* %t2217, i32 0, i32 0, i8 32)
    %t2224 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 84
    %t2223 = bitcast i8* %t2224 to %T_recs*
    %t2226 = getelementptr inbounds %T_recs, %T_recs* %t2223, i32 0, i32 4
    %t2225 = bitcast i8* %t2226 to i8*
    %t2227 = load i8, i8* %t2225
    call void @_WriteChar(i8* %t2217, i32 1, i32 0, i8 %t2227)
    call void @_WriteLn(i8* %t2217)
    %t2228 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2228)
    %t2229 = load %T_text, %T_text* @output
    %t2231 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 128
    %t2230 = bitcast i8* %t2231 to i8**
    %t2232 = load i8*, i8** %t2230
    %t2233 = bitcast i8* %t2232 to i32*
    %t2234 = load i32, i32* %t2233
    call void @_WriteInteger(i8* %t2229, i32 1, i32 0, i32 %t2234)
    call void @_WriteLn(i8* %t2229)
    %t2235 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2235, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1028, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t2235)
    %t2236 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2236, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1052, i32 0, i32 0), i32 44)
    call void @_WriteLn(i8* %t2236)
    %t2237 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2237, i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1053, i32 0, i32 0), i32 29)
    call void @_WriteLn(i8* %t2237)
    %t2238 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2238, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1054, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t2238)
    %t2239 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2239, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1055, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2239)
    %t2240 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2240, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1056, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t2240)
    %t2241 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2241, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1057, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t2241)
    %t2243 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 0
    %t2242 = bitcast i8* %t2243 to i32*
    store i32 64, i32* %t2242
    %t2245 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 4
    %t2244 = bitcast i8* %t2245 to i1*
    store i1 0, i1* %t2244
    %t2247 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 5
    %t2246 = bitcast i8* %t2247 to i8*
    store i8 106, i8* %t2246
    %t2249 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 8
    %t2248 = bitcast i8* %t2249 to i32*
    store i32 1, i32* %t2248
    %t2251 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 12
    %t2250 = bitcast i8* %t2251 to i32*
    store i32 3, i32* %t2250
    %t2253 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 16
    %t2252 = bitcast i8* %t2253 to i32*
    store i32 12, i32* %t2252
    %t2255 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 24
    %t2254 = bitcast i8* %t2255 to double*
    store double 4.54512e-29, double* %t2254
    %t2257 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 32
    %t2256 = bitcast i8* %t2257 to %T_string10*
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1051, i32 0, i32 0), %T_string10* %t2256
    %t2259 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 84
    %t2258 = bitcast i8* %t2259 to %T_recs*
    %t2261 = getelementptr inbounds %T_recs, %T_recs* %t2258, i32 0, i32 0
    %t2260 = bitcast i8* %t2261 to i32*
    store i32 2324, i32* %t2260
    %t2263 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 84
    %t2262 = bitcast i8* %t2263 to %T_recs*
    %t2265 = getelementptr inbounds %T_recs, %T_recs* %t2262, i32 0, i32 4
    %t2264 = bitcast i8* %t2265 to i8*
    store i8 121, i8* %t2264
    %t2267 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 92
    %t2266 = bitcast i8* %t2267 to %T_cset*
    store %T_cset %.dummy_set, %T_cset* %t2266
    %t2269 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 128
    %t2268 = bitcast i8* %t2269 to i8**
    %t2270 = load i8*, i8** %t2268
    %t2271 = bitcast i8* %t2270 to i32*
    store i32 8454, i32* %t2271
    %t2272 = load %T_text, %T_text* @output
    %t2274 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 0
    %t2273 = bitcast i8* %t2274 to i32*
    %t2275 = load i32, i32* %t2273
    call void @_WriteInteger(i8* %t2272, i32 1, i32 0, i32 %t2275)
    call void @_WriteChar(i8* %t2272, i32 0, i32 0, i8 32)
    %t2277 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 4
    %t2276 = bitcast i8* %t2277 to i1*
    %t2278 = load i1, i1* %t2276
    call void @_WriteBool(i8* %t2272, i32 5, i32 0, i1 %t2278)
    call void @_WriteChar(i8* %t2272, i32 0, i32 0, i8 32)
    %t2280 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 5
    %t2279 = bitcast i8* %t2280 to i8*
    %t2281 = load i8, i8* %t2279
    call void @_WriteChar(i8* %t2272, i32 1, i32 0, i8 %t2281)
    call void @_WriteChar(i8* %t2272, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2272, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2272, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2272, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2272, i32 0, i32 0, i8 32)
    %t2283 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 16
    %t2282 = bitcast i8* %t2283 to i32*
    %t2284 = load i32, i32* %t2282
    call void @_WriteInteger(i8* %t2272, i32 1, i32 0, i32 %t2284)
    call void @_WriteChar(i8* %t2272, i32 0, i32 0, i8 32)
    %t2286 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 24
    %t2285 = bitcast i8* %t2286 to double*
    %t2287 = load double, double* %t2285
    call void @_WriteReal(i8* %t2272, i32 15, i32 0, double %t2287)
    call void @_WriteChar(i8* %t2272, i32 0, i32 0, i8 32)
    %t2289 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 32
    %t2288 = bitcast i8* %t2289 to %T_string10*
    call void @_WriteString(i8* %t2272, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* %t2288, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2272)
    %t2290 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2290)
    %t2291 = load %T_text, %T_text* @output
    %t2293 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 84
    %t2292 = bitcast i8* %t2293 to %T_recs*
    %t2295 = getelementptr inbounds %T_recs, %T_recs* %t2292, i32 0, i32 0
    %t2294 = bitcast i8* %t2295 to i32*
    %t2296 = load i32, i32* %t2294
    call void @_WriteInteger(i8* %t2291, i32 1, i32 0, i32 %t2296)
    call void @_WriteChar(i8* %t2291, i32 0, i32 0, i8 32)
    %t2298 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 84
    %t2297 = bitcast i8* %t2298 to %T_recs*
    %t2300 = getelementptr inbounds %T_recs, %T_recs* %t2297, i32 0, i32 4
    %t2299 = bitcast i8* %t2300 to i8*
    %t2301 = load i8, i8* %t2299
    call void @_WriteChar(i8* %t2291, i32 1, i32 0, i8 %t2301)
    call void @_WriteLn(i8* %t2291)
    %t2302 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2302)
    %t2303 = load %T_text, %T_text* @output
    %t2305 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 128
    %t2304 = bitcast i8* %t2305 to i8**
    %t2306 = load i8*, i8** %t2304
    %t2307 = bitcast i8* %t2306 to i32*
    %t2308 = load i32, i32* %t2307
    call void @_WriteInteger(i8* %t2303, i32 1, i32 0, i32 %t2308)
    call void @_WriteLn(i8* %t2303)
    %t2309 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2309, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1028, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t2309)
    %t2310 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2310, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1052, i32 0, i32 0), i32 44)
    call void @_WriteLn(i8* %t2310)
    %t2311 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2311, i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1053, i32 0, i32 0), i32 29)
    call void @_WriteLn(i8* %t2311)
    %t2312 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2312, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1054, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t2312)
    %t2313 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2313, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1055, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2313)
    %t2314 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2314, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1056, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t2314)
    %t2315 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2315, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1058, i32 0, i32 0), i32 11)
    %t2317 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2316 = bitcast i8* %t2317 to i32*
    store i32 873, i32* %t2316
    %t2319 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2318 = bitcast i8* %t2319 to i32*
    store i32 0, i32* %t2318
    %t2321 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2320 = bitcast i8* %t2321 to i32*
    store i32 427, i32* %t2320
    %t2323 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2322 = bitcast i8* %t2323 to i32*
    store i32 235, i32* %t2322
    %t2324 = load %T_text, %T_text* @output
    %t2326 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2325 = bitcast i8* %t2326 to i32*
    %t2327 = load i32, i32* %t2325
    call void @_WriteInteger(i8* %t2324, i32 1, i32 0, i32 %t2327)
    call void @_WriteChar(i8* %t2324, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2324, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2324, i32 0, i32 0, i8 32)
    %t2329 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2328 = bitcast i8* %t2329 to i32*
    %t2330 = load i32, i32* %t2328
    call void @_WriteInteger(i8* %t2324, i32 1, i32 0, i32 %t2330)
    call void @_WriteChar(i8* %t2324, i32 0, i32 0, i8 32)
    %t2332 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2331 = bitcast i8* %t2332 to i32*
    %t2333 = load i32, i32* %t2331
    call void @_WriteInteger(i8* %t2324, i32 1, i32 0, i32 %t2333)
    %t2334 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2334, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1059, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t2334)
    %t2335 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2335, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1060, i32 0, i32 0), i32 11)
    %t2337 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2336 = bitcast i8* %t2337 to i32*
    store i32 873, i32* %t2336
    %t2339 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2338 = bitcast i8* %t2339 to i32*
    store i32 1, i32* %t2338
    %t2341 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2340 = bitcast i8* %t2341 to i32*
    store i32 427, i32* %t2340
    %t2343 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2342 = bitcast i8* %t2343 to i1*
    store i1 1, i1* %t2342
    %t2344 = load %T_text, %T_text* @output
    %t2346 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2345 = bitcast i8* %t2346 to i32*
    %t2347 = load i32, i32* %t2345
    call void @_WriteInteger(i8* %t2344, i32 1, i32 0, i32 %t2347)
    call void @_WriteChar(i8* %t2344, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2344, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2344, i32 0, i32 0, i8 32)
    %t2349 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2348 = bitcast i8* %t2349 to i1*
    %t2350 = load i1, i1* %t2348
    call void @_WriteBool(i8* %t2344, i32 5, i32 0, i1 %t2350)
    call void @_WriteChar(i8* %t2344, i32 0, i32 0, i8 32)
    %t2352 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2351 = bitcast i8* %t2352 to i32*
    %t2353 = load i32, i32* %t2351
    call void @_WriteInteger(i8* %t2344, i32 1, i32 0, i32 %t2353)
    %t2354 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2354, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1061, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t2354)
    %t2355 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2355, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1062, i32 0, i32 0), i32 11)
    %t2357 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2356 = bitcast i8* %t2357 to i32*
    store i32 873, i32* %t2356
    %t2359 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2358 = bitcast i8* %t2359 to i32*
    store i32 2, i32* %t2358
    %t2361 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2360 = bitcast i8* %t2361 to i32*
    store i32 427, i32* %t2360
    %t2363 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2362 = bitcast i8* %t2363 to i8*
    store i8 102, i8* %t2362
    %t2364 = load %T_text, %T_text* @output
    %t2366 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2365 = bitcast i8* %t2366 to i32*
    %t2367 = load i32, i32* %t2365
    call void @_WriteInteger(i8* %t2364, i32 1, i32 0, i32 %t2367)
    call void @_WriteChar(i8* %t2364, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2364, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2364, i32 0, i32 0, i8 32)
    %t2369 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2368 = bitcast i8* %t2369 to i8*
    %t2370 = load i8, i8* %t2368
    call void @_WriteChar(i8* %t2364, i32 0, i32 0, i8 %t2370)
    call void @_WriteChar(i8* %t2364, i32 0, i32 0, i8 32)
    %t2372 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2371 = bitcast i8* %t2372 to i32*
    %t2373 = load i32, i32* %t2371
    call void @_WriteInteger(i8* %t2364, i32 1, i32 0, i32 %t2373)
    %t2374 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2374, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1063, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t2374)
    %t2375 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2375, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1064, i32 0, i32 0), i32 11)
    %t2377 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2376 = bitcast i8* %t2377 to i32*
    store i32 873, i32* %t2376
    %t2379 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2378 = bitcast i8* %t2379 to i32*
    store i32 3, i32* %t2378
    %t2381 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2380 = bitcast i8* %t2381 to i32*
    store i32 427, i32* %t2380
    %t2383 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2382 = bitcast i8* %t2383 to i32*
    store i32 8, i32* %t2382
    %t2384 = load %T_text, %T_text* @output
    %t2386 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2385 = bitcast i8* %t2386 to i32*
    %t2387 = load i32, i32* %t2385
    call void @_WriteInteger(i8* %t2384, i32 1, i32 0, i32 %t2387)
    call void @_WriteChar(i8* %t2384, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2384, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2384, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2384, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2384, i32 0, i32 0, i8 32)
    %t2389 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2388 = bitcast i8* %t2389 to i32*
    %t2390 = load i32, i32* %t2388
    call void @_WriteInteger(i8* %t2384, i32 1, i32 0, i32 %t2390)
    %t2391 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2391, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1065, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t2391)
    %t2392 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2392, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1066, i32 0, i32 0), i32 11)
    %t2394 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2393 = bitcast i8* %t2394 to i32*
    store i32 873, i32* %t2393
    %t2396 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2395 = bitcast i8* %t2396 to i32*
    store i32 4, i32* %t2395
    %t2398 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2397 = bitcast i8* %t2398 to i32*
    store i32 427, i32* %t2397
    %t2400 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2399 = bitcast i8* %t2400 to i32*
    store i32 3, i32* %t2399
    %t2401 = load %T_text, %T_text* @output
    %t2403 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2402 = bitcast i8* %t2403 to i32*
    %t2404 = load i32, i32* %t2402
    call void @_WriteInteger(i8* %t2401, i32 1, i32 0, i32 %t2404)
    call void @_WriteChar(i8* %t2401, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2401, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2401, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2401, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2401, i32 0, i32 0, i8 32)
    %t2406 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2405 = bitcast i8* %t2406 to i32*
    %t2407 = load i32, i32* %t2405
    call void @_WriteInteger(i8* %t2401, i32 1, i32 0, i32 %t2407)
    %t2408 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2408, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1067, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t2408)
    %t2409 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2409, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1068, i32 0, i32 0), i32 11)
    %t2411 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2410 = bitcast i8* %t2411 to i32*
    store i32 873, i32* %t2410
    %t2413 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2412 = bitcast i8* %t2413 to i32*
    store i32 5, i32* %t2412
    %t2415 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2414 = bitcast i8* %t2415 to i32*
    store i32 427, i32* %t2414
    %t2417 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2416 = bitcast i8* %t2417 to i32*
    store i32 12, i32* %t2416
    %t2418 = load %T_text, %T_text* @output
    %t2420 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2419 = bitcast i8* %t2420 to i32*
    %t2421 = load i32, i32* %t2419
    call void @_WriteInteger(i8* %t2418, i32 1, i32 0, i32 %t2421)
    call void @_WriteChar(i8* %t2418, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2418, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2418, i32 0, i32 0, i8 32)
    %t2423 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2422 = bitcast i8* %t2423 to i32*
    %t2424 = load i32, i32* %t2422
    call void @_WriteInteger(i8* %t2418, i32 1, i32 0, i32 %t2424)
    call void @_WriteChar(i8* %t2418, i32 0, i32 0, i8 32)
    %t2426 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2425 = bitcast i8* %t2426 to i32*
    %t2427 = load i32, i32* %t2425
    call void @_WriteInteger(i8* %t2418, i32 1, i32 0, i32 %t2427)
    %t2428 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2428, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1069, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t2428)
    %t2429 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2429, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1070, i32 0, i32 0), i32 11)
    %t2431 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2430 = bitcast i8* %t2431 to i32*
    store i32 873, i32* %t2430
    %t2433 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2432 = bitcast i8* %t2433 to i32*
    store i32 6, i32* %t2432
    %t2435 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 16
    %t2434 = bitcast i8* %t2435 to i32*
    store i32 427, i32* %t2434
    %t2437 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2436 = bitcast i8* %t2437 to double*
    store double 8734.84, double* %t2436
    %t2438 = load %T_text, %T_text* @output
    %t2440 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2439 = bitcast i8* %t2440 to i32*
    %t2441 = load i32, i32* %t2439
    call void @_WriteInteger(i8* %t2438, i32 1, i32 0, i32 %t2441)
    call void @_WriteChar(i8* %t2438, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2438, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2438, i32 0, i32 0, i8 32)
    %t2443 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2442 = bitcast i8* %t2443 to double*
    %t2444 = load double, double* %t2442
    call void @_WriteReal(i8* %t2438, i32 1, i32 4, double %t2444)
    call void @_WriteChar(i8* %t2438, i32 0, i32 0, i8 32)
    %t2446 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 16
    %t2445 = bitcast i8* %t2446 to i32*
    %t2447 = load i32, i32* %t2445
    call void @_WriteInteger(i8* %t2438, i32 1, i32 0, i32 %t2447)
    %t2448 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2448, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1071, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t2448)
    %t2449 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2449, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1072, i32 0, i32 0), i32 11)
    %t2451 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2450 = bitcast i8* %t2451 to i32*
    store i32 873, i32* %t2450
    %t2453 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2452 = bitcast i8* %t2453 to i32*
    store i32 7, i32* %t2452
    %t2455 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 20
    %t2454 = bitcast i8* %t2455 to i32*
    store i32 427, i32* %t2454
    %t2457 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2456 = bitcast i8* %t2457 to %T_string10*
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1073, i32 0, i32 0), %T_string10* %t2456
    %t2458 = load %T_text, %T_text* @output
    %t2460 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2459 = bitcast i8* %t2460 to i32*
    %t2461 = load i32, i32* %t2459
    call void @_WriteInteger(i8* %t2458, i32 1, i32 0, i32 %t2461)
    call void @_WriteChar(i8* %t2458, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2458, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2458, i32 0, i32 0, i8 32)
    %t2463 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2462 = bitcast i8* %t2463 to %T_string10*
    call void @_WriteString(i8* %t2458, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* %t2462, i32 0, i32 0), i32 10)
    call void @_WriteChar(i8* %t2458, i32 0, i32 0, i8 32)
    %t2465 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 20
    %t2464 = bitcast i8* %t2465 to i32*
    %t2466 = load i32, i32* %t2464
    call void @_WriteInteger(i8* %t2458, i32 1, i32 0, i32 %t2466)
    %t2467 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2467, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1074, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2467)
    %t2468 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2468, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1075, i32 0, i32 0), i32 11)
    %t2470 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2469 = bitcast i8* %t2470 to i32*
    store i32 873, i32* %t2469
    %t2472 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2471 = bitcast i8* %t2472 to i32*
    store i32 8, i32* %t2471
    %t2474 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 48
    %t2473 = bitcast i8* %t2474 to i32*
    store i32 427, i32* %t2473
    %t2475 = load %T_text, %T_text* @output
    %t2477 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2476 = bitcast i8* %t2477 to i32*
    %t2478 = load i32, i32* %t2476
    call void @_WriteInteger(i8* %t2475, i32 1, i32 0, i32 %t2478)
    call void @_WriteChar(i8* %t2475, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2475, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2475, i32 0, i32 0, i8 32)
    %t2479 = load %T_text, %T_text* @output
    %t2481 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 48
    %t2480 = bitcast i8* %t2481 to i32*
    %t2482 = load i32, i32* %t2480
    call void @_WriteInteger(i8* %t2479, i32 1, i32 0, i32 %t2482)
    call void @_WriteLn(i8* %t2479)
    %t2483 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2483, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1076, i32 0, i32 0), i32 51)
    call void @_WriteLn(i8* %t2483)
    %t2484 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2484, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1077, i32 0, i32 0), i32 11)
    %t2486 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2485 = bitcast i8* %t2486 to i32*
    store i32 873, i32* %t2485
    %t2488 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2487 = bitcast i8* %t2488 to i32*
    store i32 9, i32* %t2487
    %t2490 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 16
    %t2489 = bitcast i8* %t2490 to i32*
    store i32 427, i32* %t2489
    %t2492 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2491 = bitcast i8* %t2492 to %T_recs*
    %t2494 = getelementptr inbounds %T_recs, %T_recs* %t2491, i32 0, i32 0
    %t2493 = bitcast i8* %t2494 to i32*
    store i32 2387, i32* %t2493
    %t2496 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2495 = bitcast i8* %t2496 to %T_recs*
    %t2498 = getelementptr inbounds %T_recs, %T_recs* %t2495, i32 0, i32 4
    %t2497 = bitcast i8* %t2498 to i8*
    store i8 116, i8* %t2497
    %t2499 = load %T_text, %T_text* @output
    %t2501 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2500 = bitcast i8* %t2501 to i32*
    %t2502 = load i32, i32* %t2500
    call void @_WriteInteger(i8* %t2499, i32 1, i32 0, i32 %t2502)
    call void @_WriteChar(i8* %t2499, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2499, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2499, i32 0, i32 0, i8 32)
    %t2504 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2503 = bitcast i8* %t2504 to %T_recs*
    %t2506 = getelementptr inbounds %T_recs, %T_recs* %t2503, i32 0, i32 0
    %t2505 = bitcast i8* %t2506 to i32*
    %t2507 = load i32, i32* %t2505
    call void @_WriteInteger(i8* %t2499, i32 1, i32 0, i32 %t2507)
    call void @_WriteChar(i8* %t2499, i32 0, i32 0, i8 32)
    %t2509 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2508 = bitcast i8* %t2509 to %T_recs*
    %t2511 = getelementptr inbounds %T_recs, %T_recs* %t2508, i32 0, i32 4
    %t2510 = bitcast i8* %t2511 to i8*
    %t2512 = load i8, i8* %t2510
    call void @_WriteChar(i8* %t2499, i32 0, i32 0, i8 %t2512)
    call void @_WriteChar(i8* %t2499, i32 0, i32 0, i8 32)
    %t2514 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 16
    %t2513 = bitcast i8* %t2514 to i32*
    %t2515 = load i32, i32* %t2513
    call void @_WriteInteger(i8* %t2499, i32 1, i32 0, i32 %t2515)
    %t2516 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2516, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1078, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2516)
    %t2517 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2517, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1079, i32 0, i32 0), i32 11)
    %t2519 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2518 = bitcast i8* %t2519 to i32*
    store i32 873, i32* %t2518
    %t2521 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2520 = bitcast i8* %t2521 to i32*
    store i32 10, i32* %t2520
    %t2523 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 40
    %t2522 = bitcast i8* %t2523 to i32*
    store i32 427, i32* %t2522
    %t2525 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2524 = bitcast i8* %t2525 to %T_cset*
    store %T_cset %.dummy_set, %T_cset* %t2524
    %t2526 = load %T_text, %T_text* @output
    %t2528 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2527 = bitcast i8* %t2528 to i32*
    %t2529 = load i32, i32* %t2527
    call void @_WriteInteger(i8* %t2526, i32 1, i32 0, i32 %t2529)
    call void @_WriteChar(i8* %t2526, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2526, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2526, i32 0, i32 0, i8 32)
    %t2530 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t2530, i32 0, i32 0, i8 32)
    %t2532 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 40
    %t2531 = bitcast i8* %t2532 to i32*
    %t2533 = load i32, i32* %t2531
    call void @_WriteInteger(i8* %t2530, i32 1, i32 0, i32 %t2533)
    call void @_WriteLn(i8* %t2530)
    %t2534 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2534, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1080, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2534)
    %t2535 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2535, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1081, i32 0, i32 0), i32 11)
    %t2537 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2536 = bitcast i8* %t2537 to i32*
    store i32 873, i32* %t2536
    %t2539 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2538 = bitcast i8* %t2539 to i32*
    store i32 11, i32* %t2538
    %t2541 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 16
    %t2540 = bitcast i8* %t2541 to i32*
    store i32 427, i32* %t2540
    %t2543 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2542 = bitcast i8* %t2543 to i8**
    %t2544 = load i8*, i8** %t2542
    %t2545 = bitcast i8* %t2544 to i32*
    store i32 2394, i32* %t2545
    %t2546 = load %T_text, %T_text* @output
    %t2548 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2547 = bitcast i8* %t2548 to i32*
    %t2549 = load i32, i32* %t2547
    call void @_WriteInteger(i8* %t2546, i32 1, i32 0, i32 %t2549)
    call void @_WriteChar(i8* %t2546, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t2546, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2546, i32 0, i32 0, i8 32)
    %t2551 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2550 = bitcast i8* %t2551 to i8**
    %t2552 = load i8*, i8** %t2550
    %t2553 = bitcast i8* %t2552 to i32*
    %t2554 = load i32, i32* %t2553
    call void @_WriteInteger(i8* %t2546, i32 1, i32 0, i32 %t2554)
    call void @_WriteChar(i8* %t2546, i32 0, i32 0, i8 32)
    %t2556 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 16
    %t2555 = bitcast i8* %t2556 to i32*
    %t2557 = load i32, i32* %t2555
    call void @_WriteInteger(i8* %t2546, i32 1, i32 0, i32 %t2557)
    %t2558 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2558, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1082, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t2558)
    %t2559 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2559, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1083, i32 0, i32 0), i32 11)
    %t2561 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 0
    %t2560 = bitcast i8* %t2561 to i32*
    store i32 10, i32* %t2560
    %t2563 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 4
    %t2562 = bitcast i8* %t2563 to i32*
    store i32 2343, i32* %t2562
    %t2564 = load %T_text, %T_text* @output
    %t2566 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 0
    %t2565 = bitcast i8* %t2566 to i32*
    %t2567 = load i32, i32* %t2565
    call void @_WriteInteger(i8* %t2564, i32 1, i32 0, i32 %t2567)
    call void @_WriteChar(i8* %t2564, i32 0, i32 0, i8 32)
    %t2569 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 4
    %t2568 = bitcast i8* %t2569 to i32*
    %t2570 = load i32, i32* %t2568
    call void @_WriteInteger(i8* %t2564, i32 1, i32 0, i32 %t2570)
    %t2571 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2571, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1084, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t2571)
    %t2572 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2572, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1085, i32 0, i32 0), i32 11)
    %t2574 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 0
    %t2573 = bitcast i8* %t2574 to i32*
    store i32 19, i32* %t2573
    %t2576 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 4
    %t2575 = bitcast i8* %t2576 to i1*
    store i1 1, i1* %t2575
    %t2577 = load %T_text, %T_text* @output
    %t2579 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 0
    %t2578 = bitcast i8* %t2579 to i32*
    %t2580 = load i32, i32* %t2578
    call void @_WriteInteger(i8* %t2577, i32 1, i32 0, i32 %t2580)
    call void @_WriteChar(i8* %t2577, i32 0, i32 0, i8 32)
    %t2582 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 4
    %t2581 = bitcast i8* %t2582 to i1*
    %t2583 = load i1, i1* %t2581
    call void @_WriteBool(i8* %t2577, i32 5, i32 0, i1 %t2583)
    %t2584 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2584, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1086, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t2584)
    %t2585 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2585, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1087, i32 0, i32 0), i32 11)
    %t2587 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 0
    %t2586 = bitcast i8* %t2587 to i1*
    store i1 1, i1* %t2586
    %t2589 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 4
    %t2588 = bitcast i8* %t2589 to i32*
    store i32 2343, i32* %t2588
    %t2590 = load %T_text, %T_text* @output
    %t2592 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 0
    %t2591 = bitcast i8* %t2592 to i1*
    %t2593 = load i1, i1* %t2591
    call void @_WriteBool(i8* %t2590, i32 5, i32 0, i1 %t2593)
    call void @_WriteChar(i8* %t2590, i32 0, i32 0, i8 32)
    %t2595 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 4
    %t2594 = bitcast i8* %t2595 to i32*
    %t2596 = load i32, i32* %t2594
    call void @_WriteInteger(i8* %t2590, i32 1, i32 0, i32 %t2596)
    %t2597 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2597, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1088, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t2597)
    %t2598 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2598, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1089, i32 0, i32 0), i32 11)
    %t2600 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 0
    %t2599 = bitcast i8* %t2600 to i1*
    store i1 0, i1* %t2599
    %t2602 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 1
    %t2601 = bitcast i8* %t2602 to i1*
    store i1 1, i1* %t2601
    %t2603 = load %T_text, %T_text* @output
    %t2605 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 0
    %t2604 = bitcast i8* %t2605 to i1*
    %t2606 = load i1, i1* %t2604
    call void @_WriteBool(i8* %t2603, i32 5, i32 0, i1 %t2606)
    call void @_WriteChar(i8* %t2603, i32 0, i32 0, i8 32)
    %t2608 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 1
    %t2607 = bitcast i8* %t2608 to i1*
    %t2609 = load i1, i1* %t2607
    call void @_WriteBool(i8* %t2603, i32 5, i32 0, i1 %t2609)
    %t2610 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2610, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1090, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t2610)
    %t2611 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2611, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1091, i32 0, i32 0), i32 11)
    %t2613 = getelementptr inbounds %T_record_128, %T_record_128* @vvre, i32 0, i32 0
    %t2612 = bitcast i8* %t2613 to i32*
    store i32 2, i32* %t2612
    %t2615 = getelementptr inbounds %T_record_128, %T_record_128* @vvre, i32 0, i32 4
    %t2614 = bitcast i8* %t2615 to i32*
    store i32 2343, i32* %t2614
    %t2616 = load %T_text, %T_text* @output
    call void @_WriteInteger(i8* %t2616, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2616, i32 0, i32 0, i8 32)
    %t2618 = getelementptr inbounds %T_record_128, %T_record_128* @vvre, i32 0, i32 4
    %t2617 = bitcast i8* %t2618 to i32*
    %t2619 = load i32, i32* %t2617
    call void @_WriteInteger(i8* %t2616, i32 1, i32 0, i32 %t2619)
    %t2620 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2620, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1092, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t2620)
    %t2621 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2621, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1093, i32 0, i32 0), i32 11)
    %t2623 = getelementptr inbounds %T_record_128, %T_record_128* @vvre, i32 0, i32 0
    %t2622 = bitcast i8* %t2623 to i32*
    store i32 7, i32* %t2622
    %t2625 = getelementptr inbounds %T_record_128, %T_record_128* @vvre, i32 0, i32 4
    %t2624 = bitcast i8* %t2625 to i1*
    store i1 1, i1* %t2624
    %t2626 = load %T_text, %T_text* @output
    call void @_WriteInteger(i8* %t2626, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2626, i32 0, i32 0, i8 32)
    %t2628 = getelementptr inbounds %T_record_128, %T_record_128* @vvre, i32 0, i32 4
    %t2627 = bitcast i8* %t2628 to i1*
    %t2629 = load i1, i1* %t2627
    call void @_WriteBool(i8* %t2626, i32 5, i32 0, i1 %t2629)
    %t2630 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2630, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1094, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t2630)
    %t2631 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2631, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1095, i32 0, i32 0), i32 11)
    %t2633 = getelementptr inbounds %T_record_129, %T_record_129* @vvres, i32 0, i32 0
    %t2632 = bitcast i8* %t2633 to i32*
    store i32 3, i32* %t2632
    %t2635 = getelementptr inbounds %T_record_129, %T_record_129* @vvres, i32 0, i32 4
    %t2634 = bitcast i8* %t2635 to i32*
    store i32 2343, i32* %t2634
    %t2636 = load %T_text, %T_text* @output
    call void @_WriteInteger(i8* %t2636, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2636, i32 0, i32 0, i8 32)
    %t2638 = getelementptr inbounds %T_record_129, %T_record_129* @vvres, i32 0, i32 4
    %t2637 = bitcast i8* %t2638 to i32*
    %t2639 = load i32, i32* %t2637
    call void @_WriteInteger(i8* %t2636, i32 1, i32 0, i32 %t2639)
    %t2640 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2640, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1096, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t2640)
    %t2641 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2641, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1097, i32 0, i32 0), i32 11)
    %t2643 = getelementptr inbounds %T_record_129, %T_record_129* @vvres, i32 0, i32 0
    %t2642 = bitcast i8* %t2643 to i32*
    store i32 4, i32* %t2642
    %t2645 = getelementptr inbounds %T_record_129, %T_record_129* @vvres, i32 0, i32 4
    %t2644 = bitcast i8* %t2645 to i1*
    store i1 1, i1* %t2644
    %t2646 = load %T_text, %T_text* @output
    call void @_WriteInteger(i8* %t2646, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2646, i32 0, i32 0, i8 32)
    %t2648 = getelementptr inbounds %T_record_129, %T_record_129* @vvres, i32 0, i32 4
    %t2647 = bitcast i8* %t2648 to i1*
    %t2649 = load i1, i1* %t2647
    call void @_WriteBool(i8* %t2646, i32 5, i32 0, i1 %t2649)
    %t2650 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2650, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1098, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t2650)
    %t2651 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2651, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1099, i32 0, i32 0), i32 11)
    %t2653 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 0
    %t2652 = bitcast i8* %t2653 to i32*
    store i32 1, i32* %t2652
    %t2655 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2654 = bitcast i8* %t2655 to %T_record_50*
    %t2657 = getelementptr inbounds %T_record_50, %T_record_50* %t2654, i32 0, i32 0
    %t2656 = bitcast i8* %t2657 to i32*
    store i32 2, i32* %t2656
    %t2659 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2658 = bitcast i8* %t2659 to %T_record_50*
    %t2661 = getelementptr inbounds %T_record_50, %T_record_50* %t2658, i32 0, i32 4
    %t2660 = bitcast i8* %t2661 to %T_record_51*
    %t2663 = getelementptr inbounds %T_record_51, %T_record_51* %t2660, i32 0, i32 0
    %t2662 = bitcast i8* %t2663 to i32*
    store i32 3, i32* %t2662
    %t2665 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2664 = bitcast i8* %t2665 to %T_record_50*
    %t2667 = getelementptr inbounds %T_record_50, %T_record_50* %t2664, i32 0, i32 4
    %t2666 = bitcast i8* %t2667 to %T_record_51*
    %t2669 = getelementptr inbounds %T_record_51, %T_record_51* %t2666, i32 0, i32 4
    %t2668 = bitcast i8* %t2669 to %T_record_52*
    %t2671 = getelementptr inbounds %T_record_52, %T_record_52* %t2668, i32 0, i32 0
    %t2670 = bitcast i8* %t2671 to i32*
    store i32 4, i32* %t2670
    %t2673 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2672 = bitcast i8* %t2673 to %T_record_50*
    %t2675 = getelementptr inbounds %T_record_50, %T_record_50* %t2672, i32 0, i32 4
    %t2674 = bitcast i8* %t2675 to %T_record_51*
    %t2677 = getelementptr inbounds %T_record_51, %T_record_51* %t2674, i32 0, i32 4
    %t2676 = bitcast i8* %t2677 to %T_record_52*
    %t2679 = getelementptr inbounds %T_record_52, %T_record_52* %t2676, i32 0, i32 4
    %t2678 = bitcast i8* %t2679 to %T_record_53*
    %t2681 = getelementptr inbounds %T_record_53, %T_record_53* %t2678, i32 0, i32 0
    %t2680 = bitcast i8* %t2681 to i32*
    store i32 5, i32* %t2680
    %t2683 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2682 = bitcast i8* %t2683 to %T_record_50*
    %t2685 = getelementptr inbounds %T_record_50, %T_record_50* %t2682, i32 0, i32 4
    %t2684 = bitcast i8* %t2685 to %T_record_51*
    %t2687 = getelementptr inbounds %T_record_51, %T_record_51* %t2684, i32 0, i32 4
    %t2686 = bitcast i8* %t2687 to %T_record_52*
    %t2689 = getelementptr inbounds %T_record_52, %T_record_52* %t2686, i32 0, i32 4
    %t2688 = bitcast i8* %t2689 to %T_record_53*
    %t2691 = getelementptr inbounds %T_record_53, %T_record_53* %t2688, i32 0, i32 4
    %t2690 = bitcast i8* %t2691 to %T_record_54*
    %t2693 = getelementptr inbounds %T_record_54, %T_record_54* %t2690, i32 0, i32 0
    %t2692 = bitcast i8* %t2693 to i32*
    store i32 6, i32* %t2692
    %t2695 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2694 = bitcast i8* %t2695 to %T_record_50*
    %t2697 = getelementptr inbounds %T_record_50, %T_record_50* %t2694, i32 0, i32 4
    %t2696 = bitcast i8* %t2697 to %T_record_51*
    %t2699 = getelementptr inbounds %T_record_51, %T_record_51* %t2696, i32 0, i32 4
    %t2698 = bitcast i8* %t2699 to %T_record_52*
    %t2701 = getelementptr inbounds %T_record_52, %T_record_52* %t2698, i32 0, i32 4
    %t2700 = bitcast i8* %t2701 to %T_record_53*
    %t2703 = getelementptr inbounds %T_record_53, %T_record_53* %t2700, i32 0, i32 4
    %t2702 = bitcast i8* %t2703 to %T_record_54*
    %t2705 = getelementptr inbounds %T_record_54, %T_record_54* %t2702, i32 0, i32 4
    %t2704 = bitcast i8* %t2705 to %T_record_55*
    %t2707 = getelementptr inbounds %T_record_55, %T_record_55* %t2704, i32 0, i32 0
    %t2706 = bitcast i8* %t2707 to i32*
    store i32 7, i32* %t2706
    %t2709 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2708 = bitcast i8* %t2709 to %T_record_50*
    %t2711 = getelementptr inbounds %T_record_50, %T_record_50* %t2708, i32 0, i32 4
    %t2710 = bitcast i8* %t2711 to %T_record_51*
    %t2713 = getelementptr inbounds %T_record_51, %T_record_51* %t2710, i32 0, i32 4
    %t2712 = bitcast i8* %t2713 to %T_record_52*
    %t2715 = getelementptr inbounds %T_record_52, %T_record_52* %t2712, i32 0, i32 4
    %t2714 = bitcast i8* %t2715 to %T_record_53*
    %t2717 = getelementptr inbounds %T_record_53, %T_record_53* %t2714, i32 0, i32 4
    %t2716 = bitcast i8* %t2717 to %T_record_54*
    %t2719 = getelementptr inbounds %T_record_54, %T_record_54* %t2716, i32 0, i32 4
    %t2718 = bitcast i8* %t2719 to %T_record_55*
    %t2721 = getelementptr inbounds %T_record_55, %T_record_55* %t2718, i32 0, i32 4
    %t2720 = bitcast i8* %t2721 to %T_record_56*
    %t2723 = getelementptr inbounds %T_record_56, %T_record_56* %t2720, i32 0, i32 0
    %t2722 = bitcast i8* %t2723 to i32*
    store i32 8, i32* %t2722
    %t2725 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2724 = bitcast i8* %t2725 to %T_record_50*
    %t2727 = getelementptr inbounds %T_record_50, %T_record_50* %t2724, i32 0, i32 4
    %t2726 = bitcast i8* %t2727 to %T_record_51*
    %t2729 = getelementptr inbounds %T_record_51, %T_record_51* %t2726, i32 0, i32 4
    %t2728 = bitcast i8* %t2729 to %T_record_52*
    %t2731 = getelementptr inbounds %T_record_52, %T_record_52* %t2728, i32 0, i32 4
    %t2730 = bitcast i8* %t2731 to %T_record_53*
    %t2733 = getelementptr inbounds %T_record_53, %T_record_53* %t2730, i32 0, i32 4
    %t2732 = bitcast i8* %t2733 to %T_record_54*
    %t2735 = getelementptr inbounds %T_record_54, %T_record_54* %t2732, i32 0, i32 4
    %t2734 = bitcast i8* %t2735 to %T_record_55*
    %t2737 = getelementptr inbounds %T_record_55, %T_record_55* %t2734, i32 0, i32 4
    %t2736 = bitcast i8* %t2737 to %T_record_56*
    %t2739 = getelementptr inbounds %T_record_56, %T_record_56* %t2736, i32 0, i32 4
    %t2738 = bitcast i8* %t2739 to %T_record_57*
    %t2741 = getelementptr inbounds %T_record_57, %T_record_57* %t2738, i32 0, i32 0
    %t2740 = bitcast i8* %t2741 to i32*
    store i32 9, i32* %t2740
    %t2743 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2742 = bitcast i8* %t2743 to %T_record_50*
    %t2745 = getelementptr inbounds %T_record_50, %T_record_50* %t2742, i32 0, i32 4
    %t2744 = bitcast i8* %t2745 to %T_record_51*
    %t2747 = getelementptr inbounds %T_record_51, %T_record_51* %t2744, i32 0, i32 4
    %t2746 = bitcast i8* %t2747 to %T_record_52*
    %t2749 = getelementptr inbounds %T_record_52, %T_record_52* %t2746, i32 0, i32 4
    %t2748 = bitcast i8* %t2749 to %T_record_53*
    %t2751 = getelementptr inbounds %T_record_53, %T_record_53* %t2748, i32 0, i32 4
    %t2750 = bitcast i8* %t2751 to %T_record_54*
    %t2753 = getelementptr inbounds %T_record_54, %T_record_54* %t2750, i32 0, i32 4
    %t2752 = bitcast i8* %t2753 to %T_record_55*
    %t2755 = getelementptr inbounds %T_record_55, %T_record_55* %t2752, i32 0, i32 4
    %t2754 = bitcast i8* %t2755 to %T_record_56*
    %t2757 = getelementptr inbounds %T_record_56, %T_record_56* %t2754, i32 0, i32 4
    %t2756 = bitcast i8* %t2757 to %T_record_57*
    %t2759 = getelementptr inbounds %T_record_57, %T_record_57* %t2756, i32 0, i32 4
    %t2758 = bitcast i8* %t2759 to %T_record_58*
    %t2761 = getelementptr inbounds %T_record_58, %T_record_58* %t2758, i32 0, i32 0
    %t2760 = bitcast i8* %t2761 to i32*
    store i32 10, i32* %t2760
    %t2762 = load %T_text, %T_text* @output
    %t2764 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 0
    %t2763 = bitcast i8* %t2764 to i32*
    %t2765 = load i32, i32* %t2763
    call void @_WriteInteger(i8* %t2762, i32 1, i32 0, i32 %t2765)
    call void @_WriteChar(i8* %t2762, i32 0, i32 0, i8 32)
    %t2767 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2766 = bitcast i8* %t2767 to %T_record_50*
    %t2769 = getelementptr inbounds %T_record_50, %T_record_50* %t2766, i32 0, i32 0
    %t2768 = bitcast i8* %t2769 to i32*
    %t2770 = load i32, i32* %t2768
    call void @_WriteInteger(i8* %t2762, i32 1, i32 0, i32 %t2770)
    call void @_WriteChar(i8* %t2762, i32 0, i32 0, i8 32)
    %t2772 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2771 = bitcast i8* %t2772 to %T_record_50*
    %t2774 = getelementptr inbounds %T_record_50, %T_record_50* %t2771, i32 0, i32 4
    %t2773 = bitcast i8* %t2774 to %T_record_51*
    %t2776 = getelementptr inbounds %T_record_51, %T_record_51* %t2773, i32 0, i32 0
    %t2775 = bitcast i8* %t2776 to i32*
    %t2777 = load i32, i32* %t2775
    call void @_WriteInteger(i8* %t2762, i32 1, i32 0, i32 %t2777)
    call void @_WriteChar(i8* %t2762, i32 0, i32 0, i8 32)
    %t2779 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2778 = bitcast i8* %t2779 to %T_record_50*
    %t2781 = getelementptr inbounds %T_record_50, %T_record_50* %t2778, i32 0, i32 4
    %t2780 = bitcast i8* %t2781 to %T_record_51*
    %t2783 = getelementptr inbounds %T_record_51, %T_record_51* %t2780, i32 0, i32 4
    %t2782 = bitcast i8* %t2783 to %T_record_52*
    %t2785 = getelementptr inbounds %T_record_52, %T_record_52* %t2782, i32 0, i32 0
    %t2784 = bitcast i8* %t2785 to i32*
    %t2786 = load i32, i32* %t2784
    call void @_WriteInteger(i8* %t2762, i32 1, i32 0, i32 %t2786)
    call void @_WriteChar(i8* %t2762, i32 0, i32 0, i8 32)
    %t2788 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2787 = bitcast i8* %t2788 to %T_record_50*
    %t2790 = getelementptr inbounds %T_record_50, %T_record_50* %t2787, i32 0, i32 4
    %t2789 = bitcast i8* %t2790 to %T_record_51*
    %t2792 = getelementptr inbounds %T_record_51, %T_record_51* %t2789, i32 0, i32 4
    %t2791 = bitcast i8* %t2792 to %T_record_52*
    %t2794 = getelementptr inbounds %T_record_52, %T_record_52* %t2791, i32 0, i32 4
    %t2793 = bitcast i8* %t2794 to %T_record_53*
    %t2796 = getelementptr inbounds %T_record_53, %T_record_53* %t2793, i32 0, i32 0
    %t2795 = bitcast i8* %t2796 to i32*
    %t2797 = load i32, i32* %t2795
    call void @_WriteInteger(i8* %t2762, i32 1, i32 0, i32 %t2797)
    call void @_WriteChar(i8* %t2762, i32 0, i32 0, i8 32)
    %t2799 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2798 = bitcast i8* %t2799 to %T_record_50*
    %t2801 = getelementptr inbounds %T_record_50, %T_record_50* %t2798, i32 0, i32 4
    %t2800 = bitcast i8* %t2801 to %T_record_51*
    %t2803 = getelementptr inbounds %T_record_51, %T_record_51* %t2800, i32 0, i32 4
    %t2802 = bitcast i8* %t2803 to %T_record_52*
    %t2805 = getelementptr inbounds %T_record_52, %T_record_52* %t2802, i32 0, i32 4
    %t2804 = bitcast i8* %t2805 to %T_record_53*
    %t2807 = getelementptr inbounds %T_record_53, %T_record_53* %t2804, i32 0, i32 4
    %t2806 = bitcast i8* %t2807 to %T_record_54*
    %t2809 = getelementptr inbounds %T_record_54, %T_record_54* %t2806, i32 0, i32 0
    %t2808 = bitcast i8* %t2809 to i32*
    %t2810 = load i32, i32* %t2808
    call void @_WriteInteger(i8* %t2762, i32 1, i32 0, i32 %t2810)
    call void @_WriteChar(i8* %t2762, i32 0, i32 0, i8 32)
    %t2812 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2811 = bitcast i8* %t2812 to %T_record_50*
    %t2814 = getelementptr inbounds %T_record_50, %T_record_50* %t2811, i32 0, i32 4
    %t2813 = bitcast i8* %t2814 to %T_record_51*
    %t2816 = getelementptr inbounds %T_record_51, %T_record_51* %t2813, i32 0, i32 4
    %t2815 = bitcast i8* %t2816 to %T_record_52*
    %t2818 = getelementptr inbounds %T_record_52, %T_record_52* %t2815, i32 0, i32 4
    %t2817 = bitcast i8* %t2818 to %T_record_53*
    %t2820 = getelementptr inbounds %T_record_53, %T_record_53* %t2817, i32 0, i32 4
    %t2819 = bitcast i8* %t2820 to %T_record_54*
    %t2822 = getelementptr inbounds %T_record_54, %T_record_54* %t2819, i32 0, i32 4
    %t2821 = bitcast i8* %t2822 to %T_record_55*
    %t2824 = getelementptr inbounds %T_record_55, %T_record_55* %t2821, i32 0, i32 0
    %t2823 = bitcast i8* %t2824 to i32*
    %t2825 = load i32, i32* %t2823
    call void @_WriteInteger(i8* %t2762, i32 1, i32 0, i32 %t2825)
    call void @_WriteChar(i8* %t2762, i32 0, i32 0, i8 32)
    %t2827 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2826 = bitcast i8* %t2827 to %T_record_50*
    %t2829 = getelementptr inbounds %T_record_50, %T_record_50* %t2826, i32 0, i32 4
    %t2828 = bitcast i8* %t2829 to %T_record_51*
    %t2831 = getelementptr inbounds %T_record_51, %T_record_51* %t2828, i32 0, i32 4
    %t2830 = bitcast i8* %t2831 to %T_record_52*
    %t2833 = getelementptr inbounds %T_record_52, %T_record_52* %t2830, i32 0, i32 4
    %t2832 = bitcast i8* %t2833 to %T_record_53*
    %t2835 = getelementptr inbounds %T_record_53, %T_record_53* %t2832, i32 0, i32 4
    %t2834 = bitcast i8* %t2835 to %T_record_54*
    %t2837 = getelementptr inbounds %T_record_54, %T_record_54* %t2834, i32 0, i32 4
    %t2836 = bitcast i8* %t2837 to %T_record_55*
    %t2839 = getelementptr inbounds %T_record_55, %T_record_55* %t2836, i32 0, i32 4
    %t2838 = bitcast i8* %t2839 to %T_record_56*
    %t2841 = getelementptr inbounds %T_record_56, %T_record_56* %t2838, i32 0, i32 0
    %t2840 = bitcast i8* %t2841 to i32*
    %t2842 = load i32, i32* %t2840
    call void @_WriteInteger(i8* %t2762, i32 1, i32 0, i32 %t2842)
    call void @_WriteChar(i8* %t2762, i32 0, i32 0, i8 32)
    %t2844 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2843 = bitcast i8* %t2844 to %T_record_50*
    %t2846 = getelementptr inbounds %T_record_50, %T_record_50* %t2843, i32 0, i32 4
    %t2845 = bitcast i8* %t2846 to %T_record_51*
    %t2848 = getelementptr inbounds %T_record_51, %T_record_51* %t2845, i32 0, i32 4
    %t2847 = bitcast i8* %t2848 to %T_record_52*
    %t2850 = getelementptr inbounds %T_record_52, %T_record_52* %t2847, i32 0, i32 4
    %t2849 = bitcast i8* %t2850 to %T_record_53*
    %t2852 = getelementptr inbounds %T_record_53, %T_record_53* %t2849, i32 0, i32 4
    %t2851 = bitcast i8* %t2852 to %T_record_54*
    %t2854 = getelementptr inbounds %T_record_54, %T_record_54* %t2851, i32 0, i32 4
    %t2853 = bitcast i8* %t2854 to %T_record_55*
    %t2856 = getelementptr inbounds %T_record_55, %T_record_55* %t2853, i32 0, i32 4
    %t2855 = bitcast i8* %t2856 to %T_record_56*
    %t2858 = getelementptr inbounds %T_record_56, %T_record_56* %t2855, i32 0, i32 4
    %t2857 = bitcast i8* %t2858 to %T_record_57*
    %t2860 = getelementptr inbounds %T_record_57, %T_record_57* %t2857, i32 0, i32 0
    %t2859 = bitcast i8* %t2860 to i32*
    %t2861 = load i32, i32* %t2859
    call void @_WriteInteger(i8* %t2762, i32 1, i32 0, i32 %t2861)
    call void @_WriteChar(i8* %t2762, i32 0, i32 0, i8 32)
    %t2863 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2862 = bitcast i8* %t2863 to %T_record_50*
    %t2865 = getelementptr inbounds %T_record_50, %T_record_50* %t2862, i32 0, i32 4
    %t2864 = bitcast i8* %t2865 to %T_record_51*
    %t2867 = getelementptr inbounds %T_record_51, %T_record_51* %t2864, i32 0, i32 4
    %t2866 = bitcast i8* %t2867 to %T_record_52*
    %t2869 = getelementptr inbounds %T_record_52, %T_record_52* %t2866, i32 0, i32 4
    %t2868 = bitcast i8* %t2869 to %T_record_53*
    %t2871 = getelementptr inbounds %T_record_53, %T_record_53* %t2868, i32 0, i32 4
    %t2870 = bitcast i8* %t2871 to %T_record_54*
    %t2873 = getelementptr inbounds %T_record_54, %T_record_54* %t2870, i32 0, i32 4
    %t2872 = bitcast i8* %t2873 to %T_record_55*
    %t2875 = getelementptr inbounds %T_record_55, %T_record_55* %t2872, i32 0, i32 4
    %t2874 = bitcast i8* %t2875 to %T_record_56*
    %t2877 = getelementptr inbounds %T_record_56, %T_record_56* %t2874, i32 0, i32 4
    %t2876 = bitcast i8* %t2877 to %T_record_57*
    %t2879 = getelementptr inbounds %T_record_57, %T_record_57* %t2876, i32 0, i32 4
    %t2878 = bitcast i8* %t2879 to %T_record_58*
    %t2881 = getelementptr inbounds %T_record_58, %T_record_58* %t2878, i32 0, i32 0
    %t2880 = bitcast i8* %t2881 to i32*
    %t2882 = load i32, i32* %t2880
    call void @_WriteInteger(i8* %t2762, i32 1, i32 0, i32 %t2882)
    call void @_WriteChar(i8* %t2762, i32 0, i32 0, i8 32)
    call void @_WriteString(i8* %t2762, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t2762)
    %t2883 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2883, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1100, i32 0, i32 0), i32 11)
    %t2885 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 0
    %t2884 = bitcast i8* %t2885 to i32*
    store i32 10, i32* %t2884
    %t2887 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2886 = bitcast i8* %t2887 to %T_record_50*
    %t2889 = getelementptr inbounds %T_record_50, %T_record_50* %t2886, i32 0, i32 0
    %t2888 = bitcast i8* %t2889 to i32*
    store i32 9, i32* %t2888
    %t2891 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2890 = bitcast i8* %t2891 to %T_record_50*
    %t2893 = getelementptr inbounds %T_record_50, %T_record_50* %t2890, i32 0, i32 4
    %t2892 = bitcast i8* %t2893 to %T_record_51*
    %t2895 = getelementptr inbounds %T_record_51, %T_record_51* %t2892, i32 0, i32 0
    %t2894 = bitcast i8* %t2895 to i32*
    store i32 8, i32* %t2894
    %t2897 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2896 = bitcast i8* %t2897 to %T_record_50*
    %t2899 = getelementptr inbounds %T_record_50, %T_record_50* %t2896, i32 0, i32 4
    %t2898 = bitcast i8* %t2899 to %T_record_51*
    %t2901 = getelementptr inbounds %T_record_51, %T_record_51* %t2898, i32 0, i32 4
    %t2900 = bitcast i8* %t2901 to %T_record_52*
    %t2903 = getelementptr inbounds %T_record_52, %T_record_52* %t2900, i32 0, i32 0
    %t2902 = bitcast i8* %t2903 to i32*
    store i32 7, i32* %t2902
    %t2905 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2904 = bitcast i8* %t2905 to %T_record_50*
    %t2907 = getelementptr inbounds %T_record_50, %T_record_50* %t2904, i32 0, i32 4
    %t2906 = bitcast i8* %t2907 to %T_record_51*
    %t2909 = getelementptr inbounds %T_record_51, %T_record_51* %t2906, i32 0, i32 4
    %t2908 = bitcast i8* %t2909 to %T_record_52*
    %t2911 = getelementptr inbounds %T_record_52, %T_record_52* %t2908, i32 0, i32 4
    %t2910 = bitcast i8* %t2911 to %T_record_53*
    %t2913 = getelementptr inbounds %T_record_53, %T_record_53* %t2910, i32 0, i32 0
    %t2912 = bitcast i8* %t2913 to i32*
    store i32 6, i32* %t2912
    %t2915 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2914 = bitcast i8* %t2915 to %T_record_50*
    %t2917 = getelementptr inbounds %T_record_50, %T_record_50* %t2914, i32 0, i32 4
    %t2916 = bitcast i8* %t2917 to %T_record_51*
    %t2919 = getelementptr inbounds %T_record_51, %T_record_51* %t2916, i32 0, i32 4
    %t2918 = bitcast i8* %t2919 to %T_record_52*
    %t2921 = getelementptr inbounds %T_record_52, %T_record_52* %t2918, i32 0, i32 4
    %t2920 = bitcast i8* %t2921 to %T_record_53*
    %t2923 = getelementptr inbounds %T_record_53, %T_record_53* %t2920, i32 0, i32 4
    %t2922 = bitcast i8* %t2923 to %T_record_54*
    %t2925 = getelementptr inbounds %T_record_54, %T_record_54* %t2922, i32 0, i32 0
    %t2924 = bitcast i8* %t2925 to i32*
    store i32 5, i32* %t2924
    %t2927 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2926 = bitcast i8* %t2927 to %T_record_50*
    %t2929 = getelementptr inbounds %T_record_50, %T_record_50* %t2926, i32 0, i32 4
    %t2928 = bitcast i8* %t2929 to %T_record_51*
    %t2931 = getelementptr inbounds %T_record_51, %T_record_51* %t2928, i32 0, i32 4
    %t2930 = bitcast i8* %t2931 to %T_record_52*
    %t2933 = getelementptr inbounds %T_record_52, %T_record_52* %t2930, i32 0, i32 4
    %t2932 = bitcast i8* %t2933 to %T_record_53*
    %t2935 = getelementptr inbounds %T_record_53, %T_record_53* %t2932, i32 0, i32 4
    %t2934 = bitcast i8* %t2935 to %T_record_54*
    %t2937 = getelementptr inbounds %T_record_54, %T_record_54* %t2934, i32 0, i32 4
    %t2936 = bitcast i8* %t2937 to %T_record_55*
    %t2939 = getelementptr inbounds %T_record_55, %T_record_55* %t2936, i32 0, i32 0
    %t2938 = bitcast i8* %t2939 to i32*
    store i32 4, i32* %t2938
    %t2941 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2940 = bitcast i8* %t2941 to %T_record_50*
    %t2943 = getelementptr inbounds %T_record_50, %T_record_50* %t2940, i32 0, i32 4
    %t2942 = bitcast i8* %t2943 to %T_record_51*
    %t2945 = getelementptr inbounds %T_record_51, %T_record_51* %t2942, i32 0, i32 4
    %t2944 = bitcast i8* %t2945 to %T_record_52*
    %t2947 = getelementptr inbounds %T_record_52, %T_record_52* %t2944, i32 0, i32 4
    %t2946 = bitcast i8* %t2947 to %T_record_53*
    %t2949 = getelementptr inbounds %T_record_53, %T_record_53* %t2946, i32 0, i32 4
    %t2948 = bitcast i8* %t2949 to %T_record_54*
    %t2951 = getelementptr inbounds %T_record_54, %T_record_54* %t2948, i32 0, i32 4
    %t2950 = bitcast i8* %t2951 to %T_record_55*
    %t2953 = getelementptr inbounds %T_record_55, %T_record_55* %t2950, i32 0, i32 4
    %t2952 = bitcast i8* %t2953 to %T_record_56*
    %t2955 = getelementptr inbounds %T_record_56, %T_record_56* %t2952, i32 0, i32 0
    %t2954 = bitcast i8* %t2955 to i32*
    store i32 3, i32* %t2954
    %t2957 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2956 = bitcast i8* %t2957 to %T_record_50*
    %t2959 = getelementptr inbounds %T_record_50, %T_record_50* %t2956, i32 0, i32 4
    %t2958 = bitcast i8* %t2959 to %T_record_51*
    %t2961 = getelementptr inbounds %T_record_51, %T_record_51* %t2958, i32 0, i32 4
    %t2960 = bitcast i8* %t2961 to %T_record_52*
    %t2963 = getelementptr inbounds %T_record_52, %T_record_52* %t2960, i32 0, i32 4
    %t2962 = bitcast i8* %t2963 to %T_record_53*
    %t2965 = getelementptr inbounds %T_record_53, %T_record_53* %t2962, i32 0, i32 4
    %t2964 = bitcast i8* %t2965 to %T_record_54*
    %t2967 = getelementptr inbounds %T_record_54, %T_record_54* %t2964, i32 0, i32 4
    %t2966 = bitcast i8* %t2967 to %T_record_55*
    %t2969 = getelementptr inbounds %T_record_55, %T_record_55* %t2966, i32 0, i32 4
    %t2968 = bitcast i8* %t2969 to %T_record_56*
    %t2971 = getelementptr inbounds %T_record_56, %T_record_56* %t2968, i32 0, i32 4
    %t2970 = bitcast i8* %t2971 to %T_record_57*
    %t2973 = getelementptr inbounds %T_record_57, %T_record_57* %t2970, i32 0, i32 0
    %t2972 = bitcast i8* %t2973 to i32*
    store i32 2, i32* %t2972
    %t2975 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2974 = bitcast i8* %t2975 to %T_record_50*
    %t2977 = getelementptr inbounds %T_record_50, %T_record_50* %t2974, i32 0, i32 4
    %t2976 = bitcast i8* %t2977 to %T_record_51*
    %t2979 = getelementptr inbounds %T_record_51, %T_record_51* %t2976, i32 0, i32 4
    %t2978 = bitcast i8* %t2979 to %T_record_52*
    %t2981 = getelementptr inbounds %T_record_52, %T_record_52* %t2978, i32 0, i32 4
    %t2980 = bitcast i8* %t2981 to %T_record_53*
    %t2983 = getelementptr inbounds %T_record_53, %T_record_53* %t2980, i32 0, i32 4
    %t2982 = bitcast i8* %t2983 to %T_record_54*
    %t2985 = getelementptr inbounds %T_record_54, %T_record_54* %t2982, i32 0, i32 4
    %t2984 = bitcast i8* %t2985 to %T_record_55*
    %t2987 = getelementptr inbounds %T_record_55, %T_record_55* %t2984, i32 0, i32 4
    %t2986 = bitcast i8* %t2987 to %T_record_56*
    %t2989 = getelementptr inbounds %T_record_56, %T_record_56* %t2986, i32 0, i32 4
    %t2988 = bitcast i8* %t2989 to %T_record_57*
    %t2991 = getelementptr inbounds %T_record_57, %T_record_57* %t2988, i32 0, i32 4
    %t2990 = bitcast i8* %t2991 to %T_record_58*
    %t2993 = getelementptr inbounds %T_record_58, %T_record_58* %t2990, i32 0, i32 0
    %t2992 = bitcast i8* %t2993 to i32*
    store i32 2, i32* %t2992
    %t2995 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2994 = bitcast i8* %t2995 to %T_record_50*
    %t2997 = getelementptr inbounds %T_record_50, %T_record_50* %t2994, i32 0, i32 4
    %t2996 = bitcast i8* %t2997 to %T_record_51*
    %t2999 = getelementptr inbounds %T_record_51, %T_record_51* %t2996, i32 0, i32 4
    %t2998 = bitcast i8* %t2999 to %T_record_52*
    %t3001 = getelementptr inbounds %T_record_52, %T_record_52* %t2998, i32 0, i32 4
    %t3000 = bitcast i8* %t3001 to %T_record_53*
    %t3003 = getelementptr inbounds %T_record_53, %T_record_53* %t3000, i32 0, i32 4
    %t3002 = bitcast i8* %t3003 to %T_record_54*
    %t3005 = getelementptr inbounds %T_record_54, %T_record_54* %t3002, i32 0, i32 4
    %t3004 = bitcast i8* %t3005 to %T_record_55*
    %t3007 = getelementptr inbounds %T_record_55, %T_record_55* %t3004, i32 0, i32 4
    %t3006 = bitcast i8* %t3007 to %T_record_56*
    %t3009 = getelementptr inbounds %T_record_56, %T_record_56* %t3006, i32 0, i32 4
    %t3008 = bitcast i8* %t3009 to %T_record_57*
    %t3011 = getelementptr inbounds %T_record_57, %T_record_57* %t3008, i32 0, i32 4
    %t3010 = bitcast i8* %t3011 to %T_record_58*
    %t3013 = getelementptr inbounds %T_record_58, %T_record_58* %t3010, i32 0, i32 0
    %t3012 = bitcast i8* %t3013 to i32*
    store i32 1, i32* %t3012
    %t3014 = load %T_text, %T_text* @output
    %t3016 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 0
    %t3015 = bitcast i8* %t3016 to i32*
    %t3017 = load i32, i32* %t3015
    call void @_WriteInteger(i8* %t3014, i32 1, i32 0, i32 %t3017)
    call void @_WriteChar(i8* %t3014, i32 0, i32 0, i8 32)
    %t3019 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3018 = bitcast i8* %t3019 to %T_record_50*
    %t3021 = getelementptr inbounds %T_record_50, %T_record_50* %t3018, i32 0, i32 0
    %t3020 = bitcast i8* %t3021 to i32*
    %t3022 = load i32, i32* %t3020
    call void @_WriteInteger(i8* %t3014, i32 1, i32 0, i32 %t3022)
    call void @_WriteChar(i8* %t3014, i32 0, i32 0, i8 32)
    %t3024 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3023 = bitcast i8* %t3024 to %T_record_50*
    %t3026 = getelementptr inbounds %T_record_50, %T_record_50* %t3023, i32 0, i32 4
    %t3025 = bitcast i8* %t3026 to %T_record_51*
    %t3028 = getelementptr inbounds %T_record_51, %T_record_51* %t3025, i32 0, i32 0
    %t3027 = bitcast i8* %t3028 to i32*
    %t3029 = load i32, i32* %t3027
    call void @_WriteInteger(i8* %t3014, i32 1, i32 0, i32 %t3029)
    call void @_WriteChar(i8* %t3014, i32 0, i32 0, i8 32)
    %t3031 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3030 = bitcast i8* %t3031 to %T_record_50*
    %t3033 = getelementptr inbounds %T_record_50, %T_record_50* %t3030, i32 0, i32 4
    %t3032 = bitcast i8* %t3033 to %T_record_51*
    %t3035 = getelementptr inbounds %T_record_51, %T_record_51* %t3032, i32 0, i32 4
    %t3034 = bitcast i8* %t3035 to %T_record_52*
    %t3037 = getelementptr inbounds %T_record_52, %T_record_52* %t3034, i32 0, i32 0
    %t3036 = bitcast i8* %t3037 to i32*
    %t3038 = load i32, i32* %t3036
    call void @_WriteInteger(i8* %t3014, i32 1, i32 0, i32 %t3038)
    call void @_WriteChar(i8* %t3014, i32 0, i32 0, i8 32)
    %t3040 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3039 = bitcast i8* %t3040 to %T_record_50*
    %t3042 = getelementptr inbounds %T_record_50, %T_record_50* %t3039, i32 0, i32 4
    %t3041 = bitcast i8* %t3042 to %T_record_51*
    %t3044 = getelementptr inbounds %T_record_51, %T_record_51* %t3041, i32 0, i32 4
    %t3043 = bitcast i8* %t3044 to %T_record_52*
    %t3046 = getelementptr inbounds %T_record_52, %T_record_52* %t3043, i32 0, i32 4
    %t3045 = bitcast i8* %t3046 to %T_record_53*
    %t3048 = getelementptr inbounds %T_record_53, %T_record_53* %t3045, i32 0, i32 0
    %t3047 = bitcast i8* %t3048 to i32*
    %t3049 = load i32, i32* %t3047
    call void @_WriteInteger(i8* %t3014, i32 1, i32 0, i32 %t3049)
    call void @_WriteChar(i8* %t3014, i32 0, i32 0, i8 32)
    %t3051 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3050 = bitcast i8* %t3051 to %T_record_50*
    %t3053 = getelementptr inbounds %T_record_50, %T_record_50* %t3050, i32 0, i32 4
    %t3052 = bitcast i8* %t3053 to %T_record_51*
    %t3055 = getelementptr inbounds %T_record_51, %T_record_51* %t3052, i32 0, i32 4
    %t3054 = bitcast i8* %t3055 to %T_record_52*
    %t3057 = getelementptr inbounds %T_record_52, %T_record_52* %t3054, i32 0, i32 4
    %t3056 = bitcast i8* %t3057 to %T_record_53*
    %t3059 = getelementptr inbounds %T_record_53, %T_record_53* %t3056, i32 0, i32 4
    %t3058 = bitcast i8* %t3059 to %T_record_54*
    %t3061 = getelementptr inbounds %T_record_54, %T_record_54* %t3058, i32 0, i32 0
    %t3060 = bitcast i8* %t3061 to i32*
    %t3062 = load i32, i32* %t3060
    call void @_WriteInteger(i8* %t3014, i32 1, i32 0, i32 %t3062)
    call void @_WriteChar(i8* %t3014, i32 0, i32 0, i8 32)
    %t3064 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3063 = bitcast i8* %t3064 to %T_record_50*
    %t3066 = getelementptr inbounds %T_record_50, %T_record_50* %t3063, i32 0, i32 4
    %t3065 = bitcast i8* %t3066 to %T_record_51*
    %t3068 = getelementptr inbounds %T_record_51, %T_record_51* %t3065, i32 0, i32 4
    %t3067 = bitcast i8* %t3068 to %T_record_52*
    %t3070 = getelementptr inbounds %T_record_52, %T_record_52* %t3067, i32 0, i32 4
    %t3069 = bitcast i8* %t3070 to %T_record_53*
    %t3072 = getelementptr inbounds %T_record_53, %T_record_53* %t3069, i32 0, i32 4
    %t3071 = bitcast i8* %t3072 to %T_record_54*
    %t3074 = getelementptr inbounds %T_record_54, %T_record_54* %t3071, i32 0, i32 4
    %t3073 = bitcast i8* %t3074 to %T_record_55*
    %t3076 = getelementptr inbounds %T_record_55, %T_record_55* %t3073, i32 0, i32 0
    %t3075 = bitcast i8* %t3076 to i32*
    %t3077 = load i32, i32* %t3075
    call void @_WriteInteger(i8* %t3014, i32 1, i32 0, i32 %t3077)
    call void @_WriteChar(i8* %t3014, i32 0, i32 0, i8 32)
    %t3079 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3078 = bitcast i8* %t3079 to %T_record_50*
    %t3081 = getelementptr inbounds %T_record_50, %T_record_50* %t3078, i32 0, i32 4
    %t3080 = bitcast i8* %t3081 to %T_record_51*
    %t3083 = getelementptr inbounds %T_record_51, %T_record_51* %t3080, i32 0, i32 4
    %t3082 = bitcast i8* %t3083 to %T_record_52*
    %t3085 = getelementptr inbounds %T_record_52, %T_record_52* %t3082, i32 0, i32 4
    %t3084 = bitcast i8* %t3085 to %T_record_53*
    %t3087 = getelementptr inbounds %T_record_53, %T_record_53* %t3084, i32 0, i32 4
    %t3086 = bitcast i8* %t3087 to %T_record_54*
    %t3089 = getelementptr inbounds %T_record_54, %T_record_54* %t3086, i32 0, i32 4
    %t3088 = bitcast i8* %t3089 to %T_record_55*
    %t3091 = getelementptr inbounds %T_record_55, %T_record_55* %t3088, i32 0, i32 4
    %t3090 = bitcast i8* %t3091 to %T_record_56*
    %t3093 = getelementptr inbounds %T_record_56, %T_record_56* %t3090, i32 0, i32 0
    %t3092 = bitcast i8* %t3093 to i32*
    %t3094 = load i32, i32* %t3092
    call void @_WriteInteger(i8* %t3014, i32 1, i32 0, i32 %t3094)
    call void @_WriteChar(i8* %t3014, i32 0, i32 0, i8 32)
    %t3096 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3095 = bitcast i8* %t3096 to %T_record_50*
    %t3098 = getelementptr inbounds %T_record_50, %T_record_50* %t3095, i32 0, i32 4
    %t3097 = bitcast i8* %t3098 to %T_record_51*
    %t3100 = getelementptr inbounds %T_record_51, %T_record_51* %t3097, i32 0, i32 4
    %t3099 = bitcast i8* %t3100 to %T_record_52*
    %t3102 = getelementptr inbounds %T_record_52, %T_record_52* %t3099, i32 0, i32 4
    %t3101 = bitcast i8* %t3102 to %T_record_53*
    %t3104 = getelementptr inbounds %T_record_53, %T_record_53* %t3101, i32 0, i32 4
    %t3103 = bitcast i8* %t3104 to %T_record_54*
    %t3106 = getelementptr inbounds %T_record_54, %T_record_54* %t3103, i32 0, i32 4
    %t3105 = bitcast i8* %t3106 to %T_record_55*
    %t3108 = getelementptr inbounds %T_record_55, %T_record_55* %t3105, i32 0, i32 4
    %t3107 = bitcast i8* %t3108 to %T_record_56*
    %t3110 = getelementptr inbounds %T_record_56, %T_record_56* %t3107, i32 0, i32 4
    %t3109 = bitcast i8* %t3110 to %T_record_57*
    %t3112 = getelementptr inbounds %T_record_57, %T_record_57* %t3109, i32 0, i32 0
    %t3111 = bitcast i8* %t3112 to i32*
    %t3113 = load i32, i32* %t3111
    call void @_WriteInteger(i8* %t3014, i32 1, i32 0, i32 %t3113)
    call void @_WriteChar(i8* %t3014, i32 0, i32 0, i8 32)
    %t3115 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3114 = bitcast i8* %t3115 to %T_record_50*
    %t3117 = getelementptr inbounds %T_record_50, %T_record_50* %t3114, i32 0, i32 4
    %t3116 = bitcast i8* %t3117 to %T_record_51*
    %t3119 = getelementptr inbounds %T_record_51, %T_record_51* %t3116, i32 0, i32 4
    %t3118 = bitcast i8* %t3119 to %T_record_52*
    %t3121 = getelementptr inbounds %T_record_52, %T_record_52* %t3118, i32 0, i32 4
    %t3120 = bitcast i8* %t3121 to %T_record_53*
    %t3123 = getelementptr inbounds %T_record_53, %T_record_53* %t3120, i32 0, i32 4
    %t3122 = bitcast i8* %t3123 to %T_record_54*
    %t3125 = getelementptr inbounds %T_record_54, %T_record_54* %t3122, i32 0, i32 4
    %t3124 = bitcast i8* %t3125 to %T_record_55*
    %t3127 = getelementptr inbounds %T_record_55, %T_record_55* %t3124, i32 0, i32 4
    %t3126 = bitcast i8* %t3127 to %T_record_56*
    %t3129 = getelementptr inbounds %T_record_56, %T_record_56* %t3126, i32 0, i32 4
    %t3128 = bitcast i8* %t3129 to %T_record_57*
    %t3131 = getelementptr inbounds %T_record_57, %T_record_57* %t3128, i32 0, i32 4
    %t3130 = bitcast i8* %t3131 to %T_record_58*
    %t3133 = getelementptr inbounds %T_record_58, %T_record_58* %t3130, i32 0, i32 0
    %t3132 = bitcast i8* %t3133 to i32*
    %t3134 = load i32, i32* %t3132
    call void @_WriteInteger(i8* %t3014, i32 1, i32 0, i32 %t3134)
    call void @_WriteChar(i8* %t3014, i32 0, i32 0, i8 32)
    call void @_WriteString(i8* %t3014, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t3014)
    %t3135 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3135, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1101, i32 0, i32 0), i32 11)
    %t3137 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3136 = bitcast i8* %t3137 to %T_record_50*
    %t3139 = getelementptr inbounds %T_record_50, %T_record_50* %t3136, i32 0, i32 4
    %t3138 = bitcast i8* %t3139 to %T_record_51*
    %t3141 = getelementptr inbounds %T_record_51, %T_record_51* %t3138, i32 0, i32 4
    %t3140 = bitcast i8* %t3141 to %T_record_52*
    %t3143 = getelementptr inbounds %T_record_52, %T_record_52* %t3140, i32 0, i32 4
    %t3142 = bitcast i8* %t3143 to %T_record_53*
    %t3145 = getelementptr inbounds %T_record_53, %T_record_53* %t3142, i32 0, i32 4
    %t3144 = bitcast i8* %t3145 to %T_record_54*
    %t3147 = getelementptr inbounds %T_record_54, %T_record_54* %t3144, i32 0, i32 4
    %t3146 = bitcast i8* %t3147 to %T_record_55*
    %t3149 = getelementptr inbounds %T_record_55, %T_record_55* %t3146, i32 0, i32 4
    %t3148 = bitcast i8* %t3149 to %T_record_56*
    %t3151 = getelementptr inbounds %T_record_56, %T_record_56* %t3148, i32 0, i32 4
    %t3150 = bitcast i8* %t3151 to %T_record_57*
    %t3153 = getelementptr inbounds %T_record_57, %T_record_57* %t3150, i32 0, i32 4
    %t3152 = bitcast i8* %t3153 to %T_record_58*
    %t3155 = getelementptr inbounds %T_record_58, %T_record_58* %t3152, i32 0, i32 0
    %t3154 = bitcast i8* %t3155 to i32*
    store i32 76, i32* %t3154
    %t3156 = load %T_text, %T_text* @output
    %t3158 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 0
    %t3157 = bitcast i8* %t3158 to i32*
    %t3159 = load i32, i32* %t3157
    call void @_WriteInteger(i8* %t3156, i32 1, i32 0, i32 %t3159)
    call void @_WriteChar(i8* %t3156, i32 0, i32 0, i8 32)
    %t3161 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3160 = bitcast i8* %t3161 to %T_record_50*
    %t3163 = getelementptr inbounds %T_record_50, %T_record_50* %t3160, i32 0, i32 0
    %t3162 = bitcast i8* %t3163 to i32*
    %t3164 = load i32, i32* %t3162
    call void @_WriteInteger(i8* %t3156, i32 1, i32 0, i32 %t3164)
    call void @_WriteChar(i8* %t3156, i32 0, i32 0, i8 32)
    %t3166 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3165 = bitcast i8* %t3166 to %T_record_50*
    %t3168 = getelementptr inbounds %T_record_50, %T_record_50* %t3165, i32 0, i32 4
    %t3167 = bitcast i8* %t3168 to %T_record_51*
    %t3170 = getelementptr inbounds %T_record_51, %T_record_51* %t3167, i32 0, i32 0
    %t3169 = bitcast i8* %t3170 to i32*
    %t3171 = load i32, i32* %t3169
    call void @_WriteInteger(i8* %t3156, i32 1, i32 0, i32 %t3171)
    call void @_WriteChar(i8* %t3156, i32 0, i32 0, i8 32)
    %t3173 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3172 = bitcast i8* %t3173 to %T_record_50*
    %t3175 = getelementptr inbounds %T_record_50, %T_record_50* %t3172, i32 0, i32 4
    %t3174 = bitcast i8* %t3175 to %T_record_51*
    %t3177 = getelementptr inbounds %T_record_51, %T_record_51* %t3174, i32 0, i32 4
    %t3176 = bitcast i8* %t3177 to %T_record_52*
    %t3179 = getelementptr inbounds %T_record_52, %T_record_52* %t3176, i32 0, i32 0
    %t3178 = bitcast i8* %t3179 to i32*
    %t3180 = load i32, i32* %t3178
    call void @_WriteInteger(i8* %t3156, i32 1, i32 0, i32 %t3180)
    call void @_WriteChar(i8* %t3156, i32 0, i32 0, i8 32)
    %t3182 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3181 = bitcast i8* %t3182 to %T_record_50*
    %t3184 = getelementptr inbounds %T_record_50, %T_record_50* %t3181, i32 0, i32 4
    %t3183 = bitcast i8* %t3184 to %T_record_51*
    %t3186 = getelementptr inbounds %T_record_51, %T_record_51* %t3183, i32 0, i32 4
    %t3185 = bitcast i8* %t3186 to %T_record_52*
    %t3188 = getelementptr inbounds %T_record_52, %T_record_52* %t3185, i32 0, i32 4
    %t3187 = bitcast i8* %t3188 to %T_record_53*
    %t3190 = getelementptr inbounds %T_record_53, %T_record_53* %t3187, i32 0, i32 0
    %t3189 = bitcast i8* %t3190 to i32*
    %t3191 = load i32, i32* %t3189
    call void @_WriteInteger(i8* %t3156, i32 1, i32 0, i32 %t3191)
    call void @_WriteChar(i8* %t3156, i32 0, i32 0, i8 32)
    %t3193 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3192 = bitcast i8* %t3193 to %T_record_50*
    %t3195 = getelementptr inbounds %T_record_50, %T_record_50* %t3192, i32 0, i32 4
    %t3194 = bitcast i8* %t3195 to %T_record_51*
    %t3197 = getelementptr inbounds %T_record_51, %T_record_51* %t3194, i32 0, i32 4
    %t3196 = bitcast i8* %t3197 to %T_record_52*
    %t3199 = getelementptr inbounds %T_record_52, %T_record_52* %t3196, i32 0, i32 4
    %t3198 = bitcast i8* %t3199 to %T_record_53*
    %t3201 = getelementptr inbounds %T_record_53, %T_record_53* %t3198, i32 0, i32 4
    %t3200 = bitcast i8* %t3201 to %T_record_54*
    %t3203 = getelementptr inbounds %T_record_54, %T_record_54* %t3200, i32 0, i32 0
    %t3202 = bitcast i8* %t3203 to i32*
    %t3204 = load i32, i32* %t3202
    call void @_WriteInteger(i8* %t3156, i32 1, i32 0, i32 %t3204)
    call void @_WriteChar(i8* %t3156, i32 0, i32 0, i8 32)
    %t3206 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3205 = bitcast i8* %t3206 to %T_record_50*
    %t3208 = getelementptr inbounds %T_record_50, %T_record_50* %t3205, i32 0, i32 4
    %t3207 = bitcast i8* %t3208 to %T_record_51*
    %t3210 = getelementptr inbounds %T_record_51, %T_record_51* %t3207, i32 0, i32 4
    %t3209 = bitcast i8* %t3210 to %T_record_52*
    %t3212 = getelementptr inbounds %T_record_52, %T_record_52* %t3209, i32 0, i32 4
    %t3211 = bitcast i8* %t3212 to %T_record_53*
    %t3214 = getelementptr inbounds %T_record_53, %T_record_53* %t3211, i32 0, i32 4
    %t3213 = bitcast i8* %t3214 to %T_record_54*
    %t3216 = getelementptr inbounds %T_record_54, %T_record_54* %t3213, i32 0, i32 4
    %t3215 = bitcast i8* %t3216 to %T_record_55*
    %t3218 = getelementptr inbounds %T_record_55, %T_record_55* %t3215, i32 0, i32 0
    %t3217 = bitcast i8* %t3218 to i32*
    %t3219 = load i32, i32* %t3217
    call void @_WriteInteger(i8* %t3156, i32 1, i32 0, i32 %t3219)
    call void @_WriteChar(i8* %t3156, i32 0, i32 0, i8 32)
    %t3221 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3220 = bitcast i8* %t3221 to %T_record_50*
    %t3223 = getelementptr inbounds %T_record_50, %T_record_50* %t3220, i32 0, i32 4
    %t3222 = bitcast i8* %t3223 to %T_record_51*
    %t3225 = getelementptr inbounds %T_record_51, %T_record_51* %t3222, i32 0, i32 4
    %t3224 = bitcast i8* %t3225 to %T_record_52*
    %t3227 = getelementptr inbounds %T_record_52, %T_record_52* %t3224, i32 0, i32 4
    %t3226 = bitcast i8* %t3227 to %T_record_53*
    %t3229 = getelementptr inbounds %T_record_53, %T_record_53* %t3226, i32 0, i32 4
    %t3228 = bitcast i8* %t3229 to %T_record_54*
    %t3231 = getelementptr inbounds %T_record_54, %T_record_54* %t3228, i32 0, i32 4
    %t3230 = bitcast i8* %t3231 to %T_record_55*
    %t3233 = getelementptr inbounds %T_record_55, %T_record_55* %t3230, i32 0, i32 4
    %t3232 = bitcast i8* %t3233 to %T_record_56*
    %t3235 = getelementptr inbounds %T_record_56, %T_record_56* %t3232, i32 0, i32 0
    %t3234 = bitcast i8* %t3235 to i32*
    %t3236 = load i32, i32* %t3234
    call void @_WriteInteger(i8* %t3156, i32 1, i32 0, i32 %t3236)
    call void @_WriteChar(i8* %t3156, i32 0, i32 0, i8 32)
    %t3238 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3237 = bitcast i8* %t3238 to %T_record_50*
    %t3240 = getelementptr inbounds %T_record_50, %T_record_50* %t3237, i32 0, i32 4
    %t3239 = bitcast i8* %t3240 to %T_record_51*
    %t3242 = getelementptr inbounds %T_record_51, %T_record_51* %t3239, i32 0, i32 4
    %t3241 = bitcast i8* %t3242 to %T_record_52*
    %t3244 = getelementptr inbounds %T_record_52, %T_record_52* %t3241, i32 0, i32 4
    %t3243 = bitcast i8* %t3244 to %T_record_53*
    %t3246 = getelementptr inbounds %T_record_53, %T_record_53* %t3243, i32 0, i32 4
    %t3245 = bitcast i8* %t3246 to %T_record_54*
    %t3248 = getelementptr inbounds %T_record_54, %T_record_54* %t3245, i32 0, i32 4
    %t3247 = bitcast i8* %t3248 to %T_record_55*
    %t3250 = getelementptr inbounds %T_record_55, %T_record_55* %t3247, i32 0, i32 4
    %t3249 = bitcast i8* %t3250 to %T_record_56*
    %t3252 = getelementptr inbounds %T_record_56, %T_record_56* %t3249, i32 0, i32 4
    %t3251 = bitcast i8* %t3252 to %T_record_57*
    %t3254 = getelementptr inbounds %T_record_57, %T_record_57* %t3251, i32 0, i32 0
    %t3253 = bitcast i8* %t3254 to i32*
    %t3255 = load i32, i32* %t3253
    call void @_WriteInteger(i8* %t3156, i32 1, i32 0, i32 %t3255)
    call void @_WriteChar(i8* %t3156, i32 0, i32 0, i8 32)
    %t3257 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3256 = bitcast i8* %t3257 to %T_record_50*
    %t3259 = getelementptr inbounds %T_record_50, %T_record_50* %t3256, i32 0, i32 4
    %t3258 = bitcast i8* %t3259 to %T_record_51*
    %t3261 = getelementptr inbounds %T_record_51, %T_record_51* %t3258, i32 0, i32 4
    %t3260 = bitcast i8* %t3261 to %T_record_52*
    %t3263 = getelementptr inbounds %T_record_52, %T_record_52* %t3260, i32 0, i32 4
    %t3262 = bitcast i8* %t3263 to %T_record_53*
    %t3265 = getelementptr inbounds %T_record_53, %T_record_53* %t3262, i32 0, i32 4
    %t3264 = bitcast i8* %t3265 to %T_record_54*
    %t3267 = getelementptr inbounds %T_record_54, %T_record_54* %t3264, i32 0, i32 4
    %t3266 = bitcast i8* %t3267 to %T_record_55*
    %t3269 = getelementptr inbounds %T_record_55, %T_record_55* %t3266, i32 0, i32 4
    %t3268 = bitcast i8* %t3269 to %T_record_56*
    %t3271 = getelementptr inbounds %T_record_56, %T_record_56* %t3268, i32 0, i32 4
    %t3270 = bitcast i8* %t3271 to %T_record_57*
    %t3273 = getelementptr inbounds %T_record_57, %T_record_57* %t3270, i32 0, i32 4
    %t3272 = bitcast i8* %t3273 to %T_record_58*
    %t3275 = getelementptr inbounds %T_record_58, %T_record_58* %t3272, i32 0, i32 0
    %t3274 = bitcast i8* %t3275 to i32*
    %t3276 = load i32, i32* %t3274
    call void @_WriteInteger(i8* %t3156, i32 1, i32 0, i32 %t3276)
    call void @_WriteChar(i8* %t3156, i32 0, i32 0, i8 32)
    call void @_WriteString(i8* %t3156, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1102, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t3156)
    %t3277 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3277, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1103, i32 0, i32 0), i32 11)
    %t3278 = load i8*, i8** @rpa
    %t3279 = bitcast i8* %t3278 to %T_rec*
    %t3281 = getelementptr inbounds %T_rec, %T_rec* %t3279, i32 0, i32 0
    %t3280 = bitcast i8* %t3281 to i32*
    store i32 1, i32* %t3280
    %t3282 = load i8*, i8** @rpa
    %t3283 = bitcast i8* %t3282 to %T_rec*
    %t3285 = getelementptr inbounds %T_rec, %T_rec* %t3283, i32 0, i32 84
    %t3284 = bitcast i8* %t3285 to %T_recs*
    %t3287 = getelementptr inbounds %T_recs, %T_recs* %t3284, i32 0, i32 4
    %t3286 = bitcast i8* %t3287 to i8*
    store i8 103, i8* %t3286
    %t3288 = load %T_text, %T_text* @output
    %t3289 = load i8*, i8** @rpa
    %t3290 = bitcast i8* %t3289 to %T_rec*
    %t3292 = getelementptr inbounds %T_rec, %T_rec* %t3290, i32 0, i32 0
    %t3291 = bitcast i8* %t3292 to i32*
    %t3293 = load i32, i32* %t3291
    call void @_WriteInteger(i8* %t3288, i32 1, i32 0, i32 %t3293)
    call void @_WriteChar(i8* %t3288, i32 0, i32 0, i8 32)
    %t3294 = load i8*, i8** @rpa
    %t3295 = bitcast i8* %t3294 to %T_rec*
    %t3297 = getelementptr inbounds %T_rec, %T_rec* %t3295, i32 0, i32 84
    %t3296 = bitcast i8* %t3297 to %T_recs*
    %t3299 = getelementptr inbounds %T_recs, %T_recs* %t3296, i32 0, i32 4
    %t3298 = bitcast i8* %t3299 to i8*
    %t3300 = load i8, i8* %t3298
    call void @_WriteChar(i8* %t3288, i32 0, i32 0, i8 %t3300)
    call void @_WriteString(i8* %t3288, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1104, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t3288)
    %t3301 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3301, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1105, i32 0, i32 0), i32 11)
    %t3302 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3302, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.937, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t3302)
    %t3303 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3303)
    %t3304 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3304, i32 0, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1106, i32 0, i32 0), i32 56)
    call void @_WriteLn(i8* %t3304)
    %t3305 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3305)
    %t3306 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3306, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1107, i32 0, i32 0), i32 22)
    store i32 45, i32* @x
    store i32 89, i32* @y
    %t3307 = load i32, i32* @x
    %t3308 = load i32, i32* @y
    call void @P_junk1(i32 %t3307, i32 %t3308)
    %t3309 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3309, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1108, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3309)
    %t3310 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3310, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1109, i32 0, i32 0), i32 22)
    store i32 45, i32* @x
    call void @P_junk2(i32* @x)
    %t3311 = load %T_text, %T_text* @output
    %t3312 = load i32, i32* @x
    call void @_WriteInteger(i8* %t3311, i32 1, i32 0, i32 %t3312)
    call void @_WriteString(i8* %t3311, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1110, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t3311)
    %t3313 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3313, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1111, i32 0, i32 0), i32 22)
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1112, i32 0, i32 0), %T_string10* @s
    call void @P_junk3(%T_string10* @s)
    %t3314 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3314, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1113, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t3314)
    %t3315 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3315, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1114, i32 0, i32 0), i32 22)
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1112, i32 0, i32 0), %T_string10* @s
    %t3316 = load %T_string10, %T_string10* @s
    call void @P_junk4(%T_string10 %t3316)
    %t3317 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3317, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1115, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t3317)
    %t3318 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3318, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* @s, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t3318, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1113, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t3318)
    %t3319 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3319, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1116, i32 0, i32 0), i32 22)
    %t3320 = load %T_text, %T_text* @output
    %t3321 = call i32 @F_junk5(i32 34)
    call void @_WriteInteger(i8* %t3320, i32 1, i32 0, i32 %t3321)
    call void @_WriteString(i8* %t3320, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t3320)
    %t3322 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1117, i32 0, i32 0), i32 22)
    %t3323 = call i32 @F_junk7(i32 10, i32 9, i32 8)
    store i32 %t3323, i32* @i
    %t3324 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t3324, i32 0, i32 0, i8 32)
    %t3325 = load i32, i32* @i
    call void @_WriteInteger(i8* %t3324, i32 1, i32 0, i32 %t3325)
    call void @_WriteLn(i8* %t3324)
    %t3326 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3326, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1118, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t3326)
    %t3327 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3327, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1119, i32 0, i32 0), i32 19)
    call void @_WriteLn(i8* %t3327)
    %t3329 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 0
    %t3328 = bitcast i8* %t3329 to i32*
    store i32 64, i32* %t3328
    %t3331 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 4
    %t3330 = bitcast i8* %t3331 to i1*
    store i1 0, i1* %t3330
    %t3333 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 5
    %t3332 = bitcast i8* %t3333 to i8*
    store i8 106, i8* %t3332
    %t3335 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 8
    %t3334 = bitcast i8* %t3335 to i32*
    store i32 1, i32* %t3334
    %t3337 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 12
    %t3336 = bitcast i8* %t3337 to i32*
    store i32 3, i32* %t3336
    %t3339 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 16
    %t3338 = bitcast i8* %t3339 to i32*
    store i32 12, i32* %t3338
    %t3341 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 24
    %t3340 = bitcast i8* %t3341 to double*
    store double 4.54512e-29, double* %t3340
    %t3343 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 32
    %t3342 = bitcast i8* %t3343 to %T_string10*
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1051, i32 0, i32 0), %T_string10* %t3342
    %t3345 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 84
    %t3344 = bitcast i8* %t3345 to %T_recs*
    %t3347 = getelementptr inbounds %T_recs, %T_recs* %t3344, i32 0, i32 0
    %t3346 = bitcast i8* %t3347 to i32*
    store i32 2324, i32* %t3346
    %t3349 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 84
    %t3348 = bitcast i8* %t3349 to %T_recs*
    %t3351 = getelementptr inbounds %T_recs, %T_recs* %t3348, i32 0, i32 4
    %t3350 = bitcast i8* %t3351 to i8*
    store i8 121, i8* %t3350
    %t3353 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 92
    %t3352 = bitcast i8* %t3353 to %T_cset*
    store %T_cset %.dummy_set, %T_cset* %t3352
    %t3355 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 128
    %t3354 = bitcast i8* %t3355 to i8**
    %t3356 = load i8*, i8** %t3354
    %t3357 = bitcast i8* %t3356 to i32*
    store i32 8454, i32* %t3357
    %t3359 = getelementptr inbounds %T_recv, %T_recv* @vrec, i32 0, i32 0
    %t3358 = bitcast i8* %t3359 to i32*
    store i32 23487, i32* %t3358
    %t3361 = getelementptr inbounds %T_recv, %T_recv* @vrec, i32 0, i32 4
    %t3360 = bitcast i8* %t3361 to i8*
    store i8 110, i8* %t3360
    %t3363 = getelementptr inbounds %T_recv, %T_recv* @vrec, i32 0, i32 5
    %t3362 = bitcast i8* %t3363 to i1*
    store i1 0, i1* %t3362
    %t3365 = getelementptr inbounds %T_recv, %T_recv* @vrec, i32 0, i32 6
    %t3364 = bitcast i8* %t3365 to %T_string10*
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1120, i32 0, i32 0), %T_string10* %t3364
    %t3366 = load i8*, i8** @ip
    %t3367 = bitcast i8* %t3366 to i32*
    store i32 734, i32* %t3367
    %t3368 = load %T_arri, %T_arri* @ai
    %t3369 = load %T_rec, %T_rec* @arec
    %t3370 = load %T_recv, %T_recv* @vrec
    %t3371 = load i8*, i8** @ip
    call void @P_junk8(i32 93, i1 1, i8 107, i32 7, i32 4, i32 10, double 3.14140, %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1038, i32 0, i32 0), %T_arri %t3368, %T_rec %t3369, %T_recv %t3370, %T_cset %.dummy_set, i8* %t3371)
    %t3372 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3372, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1028, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t3372)
    %t3373 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3373, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1121, i32 0, i32 0), i32 44)
    call void @_WriteLn(i8* %t3373)
    %t3374 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3374, i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1122, i32 0, i32 0), i32 29)
    call void @_WriteLn(i8* %t3374)
    %t3375 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3375, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1123, i32 0, i32 0), i32 44)
    call void @_WriteLn(i8* %t3375)
    %t3376 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3376, i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1053, i32 0, i32 0), i32 29)
    call void @_WriteLn(i8* %t3376)
    %t3377 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3377, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1054, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t3377)
    %t3378 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3378, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1055, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3378)
    %t3379 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3379, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1056, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t3379)
    %t3380 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3380, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1124, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t3380)
    %t3381 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3381, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1120, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3381)
    %t3382 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3382, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1125, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3382)
    %t3383 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3383, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1126, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t3383)
    %t3384 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3384, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1127, i32 0, i32 0), i32 22)
    call void @P_junk9( %.dummy,  %.dummy)
    %t3385 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3385, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1128, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t3385)
    %t3386 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3386, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1129, i32 0, i32 0), i32 22)
    call void @P_junk12( %.dummy,  %.dummy)
    %t3387 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3387, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1130, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t3387)
    %t3388 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3388, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1131, i32 0, i32 0), i32 23)
    call void @P_junk14()
    %t3389 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3389, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1132, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3389)
    %t3390 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3390, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1133, i32 0, i32 0), i32 23)
    call void @P_junk17( %.dummy, i32 52)
    %t3391 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3391, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.271, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t3391)
    %t3392 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3392, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1134, i32 0, i32 0), i32 23)
    call void @P_junk19()
    %t3393 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3393, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.410, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t3393)
    %t3394 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3394, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1135, i32 0, i32 0), i32 23)
    %t3395 = load %T_text, %T_text* @output
    %t3396 = call i32 @F_junk20()
    call void @_WriteInteger(i8* %t3395, i32 1, i32 0, i32 %t3396)
    call void @_WriteString(i8* %t3395, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1136, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t3395)
    ; nop

    ; cleanup
    %t3397 = load %T_file_89, %T_file_89* @pfstc
    call void @_CloseFile(i8* %t3397)
    %t3398 = load %T_file_88, %T_file_88* @pfst
    call void @_CloseFile(i8* %t3398)
    %t3399 = load %T_file_87, %T_file_87* @pfs
    call void @_CloseFile(i8* %t3399)
    %t3400 = load %T_file_86, %T_file_86* @pfrc
    call void @_CloseFile(i8* %t3400)
    %t3401 = load %T_file_85, %T_file_85* @pfr
    call void @_CloseFile(i8* %t3401)
    %t3402 = load %T_file_84, %T_file_84* @pfp
    call void @_CloseFile(i8* %t3402)
    %t3403 = load %T_file_83, %T_file_83* @pfi
    call void @_CloseFile(i8* %t3403)
    %t3404 = load %T_file_82, %T_file_82* @pfes
    call void @_CloseFile(i8* %t3404)
    %t3405 = load %T_file_81, %T_file_81* @pfe
    call void @_CloseFile(i8* %t3405)
    %t3406 = load %T_text_80, %T_text_80* @pfc
    call void @_CloseFile(i8* %t3406)
    %t3407 = load %T_file_79, %T_file_79* @pfb
    call void @_CloseFile(i8* %t3407)
    %t3408 = load %T_file_78, %T_file_78* @pfa
    call void @_CloseFile(i8* %t3408)
    %t3409 = load %T_text, %T_text* @output
    call void @_CloseFile(i8* %t3409)
    %t3410 = load %T_text, %T_text* @ft
    call void @_CloseFile(i8* %t3410)
    %t3411 = load %T_file_45, %T_file_45* @fstc
    call void @_CloseFile(i8* %t3411)
    %t3412 = load %T_file_44, %T_file_44* @fst
    call void @_CloseFile(i8* %t3412)
    %t3413 = load %T_file_43, %T_file_43* @fs
    call void @_CloseFile(i8* %t3413)
    %t3414 = load %T_file_41, %T_file_41* @frc
    call void @_CloseFile(i8* %t3414)
    %t3415 = load %T_file_40, %T_file_40* @fr
    call void @_CloseFile(i8* %t3415)
    %t3416 = load %T_file_39, %T_file_39* @fp
    call void @_CloseFile(i8* %t3416)
    %t3417 = load %T_file_38, %T_file_38* @fi
    call void @_CloseFile(i8* %t3417)
    %t3418 = load %T_file_37, %T_file_37* @fes
    call void @_CloseFile(i8* %t3418)
    %t3419 = load %T_file_36, %T_file_36* @fe
    call void @_CloseFile(i8* %t3419)
    %t3420 = load %T_text_35, %T_text_35* @fc
    call void @_CloseFile(i8* %t3420)
    %t3421 = load %T_file_34, %T_file_34* @fb
    call void @_CloseFile(i8* %t3421)
    %t3422 = load %T_file_33, %T_file_33* @fa
    call void @_CloseFile(i8* %t3422)
    %t3423 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t3423)

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

    ; body
    %t3 = load %T_text, %T_text* @output
    %t5 = getelementptr inbounds %Frame_junk1, %Frame_junk1* %.frame, i32 0, i32 1
    %t4 = load i32, i32* %t5
    call void @_WriteInteger(i8* %t3, i32 1, i32 0, i32 %t4)
    call void @_WriteChar(i8* %t3, i32 0, i32 0, i8 32)
    %t7 = getelementptr inbounds %Frame_junk1, %Frame_junk1* %.frame, i32 0, i32 0
    %t6 = load i32, i32* %t7
    call void @_WriteInteger(i8* %t3, i32 1, i32 0, i32 %t6)
    ; nop

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

    ; body
    %t2 = getelementptr inbounds %Frame_junk2, %Frame_junk2* %.frame, i32 0, i32 0
    %t3 = load i32*, i32** %t2
    %t6 = getelementptr inbounds %Frame_junk2, %Frame_junk2* %.frame, i32 0, i32 0
    %t7 = load i32*, i32** %t6
    %t5 = load i32, i32* %t7
    %t4 = add i32 %t5, 1
    store i32 %t4, i32* %t3

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

    ; body
    %t2 = load %T_text, %T_text* @output
    %t3 = getelementptr inbounds %Frame_junk3, %Frame_junk3* %.frame, i32 0, i32 0
    %t4 = load %T_string10*, %T_string10** %t3
    call void @_WriteString(i8* %t2, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* %t4, i32 0, i32 0), i32 10)

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

    ; body
    %t2 = getelementptr inbounds %Frame_junk4, %Frame_junk4* %.frame, i32 0, i32 0
    %t3 = getelementptr inbounds %T_string10, %T_string10* %t2, i32 0, i32 5
    store i8 63, i8* %t3
    %t4 = load %T_text, %T_text* @output
    %t5 = getelementptr inbounds %Frame_junk4, %Frame_junk4* %.frame, i32 0, i32 0
    call void @_WriteString(i8* %t4, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* %t5, i32 0, i32 0), i32 10)

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

    ; body
    %t2 = getelementptr inbounds %Frame_junk5, %Frame_junk5* %.frame, i32 0, i32 1
    %t5 = getelementptr inbounds %Frame_junk5, %Frame_junk5* %.frame, i32 0, i32 0
    %t4 = load i32, i32* %t5
    %t3 = add i32 %t4, 1
    store i32 %t3, i32* %t2

    ; epilogue
    %t6 = getelementptr inbounds %Frame_junk5, %Frame_junk5* %.frame, i32 0, i32 1
    %t7 = load i32, i32* %t6
    ret i32 %t7
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

    ; body

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

    ; body
    %t4 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 4
    store i32 1, i32* %t4
    %t5 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 5
    store i32 2, i32* %t5
    %t6 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 6
    store i32 3, i32* %t6
    %t7 = load %T_text, %T_text* @output
    %t9 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 0
    %t8 = load i32, i32* %t9
    call void @_WriteInteger(i8* %t7, i32 1, i32 0, i32 %t8)
    call void @_WriteChar(i8* %t7, i32 0, i32 0, i8 32)
    %t11 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 1
    %t10 = load i32, i32* %t11
    call void @_WriteInteger(i8* %t7, i32 1, i32 0, i32 %t10)
    call void @_WriteChar(i8* %t7, i32 0, i32 0, i8 32)
    %t13 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 2
    %t12 = load i32, i32* %t13
    call void @_WriteInteger(i8* %t7, i32 1, i32 0, i32 %t12)
    call void @_WriteChar(i8* %t7, i32 0, i32 0, i8 32)
    %t14 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 0
    store i32 4, i32* %t14
    %t15 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 1
    store i32 5, i32* %t15
    %t16 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 2
    store i32 6, i32* %t16
    %t17 = load %T_text, %T_text* @output
    %t19 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 2
    %t18 = load i32, i32* %t19
    call void @_WriteInteger(i8* %t17, i32 1, i32 0, i32 %t18)
    call void @_WriteChar(i8* %t17, i32 0, i32 0, i8 32)
    %t21 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 1
    %t20 = load i32, i32* %t21
    call void @_WriteInteger(i8* %t17, i32 1, i32 0, i32 %t20)
    call void @_WriteChar(i8* %t17, i32 0, i32 0, i8 32)
    %t23 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 0
    %t22 = load i32, i32* %t23
    call void @_WriteInteger(i8* %t17, i32 1, i32 0, i32 %t22)
    call void @_WriteChar(i8* %t17, i32 0, i32 0, i8 32)
    %t25 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 6
    %t24 = load i32, i32* %t25
    call void @_WriteInteger(i8* %t17, i32 1, i32 0, i32 %t24)
    call void @_WriteChar(i8* %t17, i32 0, i32 0, i8 32)
    %t27 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 5
    %t26 = load i32, i32* %t27
    call void @_WriteInteger(i8* %t17, i32 1, i32 0, i32 %t26)
    call void @_WriteChar(i8* %t17, i32 0, i32 0, i8 32)
    %t29 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 4
    %t28 = load i32, i32* %t29
    call void @_WriteInteger(i8* %t17, i32 1, i32 0, i32 %t28)
    %t30 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 3
    store i32 78, i32* %t30

    ; epilogue
    %t31 = getelementptr inbounds %Frame_junk7, %Frame_junk7* %.frame, i32 0, i32 3
    %t32 = load i32, i32* %t31
    ret i32 %t32
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

    ; body
    %t14 = load %T_text, %T_text* @output
    %t16 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 0
    %t15 = load i32, i32* %t16
    call void @_WriteInteger(i8* %t14, i32 1, i32 0, i32 %t15)
    call void @_WriteChar(i8* %t14, i32 0, i32 0, i8 32)
    %t18 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 2
    %t17 = load i1, i1* %t18
    call void @_WriteBool(i8* %t14, i32 5, i32 0, i1 %t17)
    call void @_WriteChar(i8* %t14, i32 0, i32 0, i8 32)
    %t20 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 3
    %t19 = load i8, i8* %t20
    call void @_WriteChar(i8* %t14, i32 1, i32 0, i8 %t19)
    call void @_WriteChar(i8* %t14, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t14, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t14, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t14, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t14, i32 0, i32 0, i8 32)
    %t22 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 10
    %t21 = load i32, i32* %t22
    call void @_WriteInteger(i8* %t14, i32 1, i32 0, i32 %t21)
    call void @_WriteChar(i8* %t14, i32 0, i32 0, i8 32)
    %t24 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 7
    %t23 = load double, double* %t24
    call void @_WriteReal(i8* %t14, i32 15, i32 0, double %t23)
    call void @_WriteChar(i8* %t14, i32 0, i32 0, i8 32)
    %t25 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 11
    call void @_WriteString(i8* %t14, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* %t25, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t14)
    %t26 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t26)
    %t27 = load %T_text, %T_text* @output
    %t28 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 8
    %t30 = getelementptr inbounds %T_rec, %T_rec* %t28, i32 0, i32 0
    %t29 = bitcast i8* %t30 to i32*
    %t31 = load i32, i32* %t29
    call void @_WriteInteger(i8* %t27, i32 1, i32 0, i32 %t31)
    call void @_WriteChar(i8* %t27, i32 0, i32 0, i8 32)
    %t32 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 8
    %t34 = getelementptr inbounds %T_rec, %T_rec* %t32, i32 0, i32 4
    %t33 = bitcast i8* %t34 to i1*
    %t35 = load i1, i1* %t33
    call void @_WriteBool(i8* %t27, i32 5, i32 0, i1 %t35)
    call void @_WriteChar(i8* %t27, i32 0, i32 0, i8 32)
    %t36 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 8
    %t38 = getelementptr inbounds %T_rec, %T_rec* %t36, i32 0, i32 5
    %t37 = bitcast i8* %t38 to i8*
    %t39 = load i8, i8* %t37
    call void @_WriteChar(i8* %t27, i32 1, i32 0, i8 %t39)
    call void @_WriteChar(i8* %t27, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t27, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t27, i32 0, i32 0, i8 32)
    call void @_WriteInteger(i8* %t27, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t27, i32 0, i32 0, i8 32)
    %t40 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 8
    %t42 = getelementptr inbounds %T_rec, %T_rec* %t40, i32 0, i32 16
    %t41 = bitcast i8* %t42 to i32*
    %t43 = load i32, i32* %t41
    call void @_WriteInteger(i8* %t27, i32 1, i32 0, i32 %t43)
    call void @_WriteChar(i8* %t27, i32 0, i32 0, i8 32)
    %t44 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 8
    %t46 = getelementptr inbounds %T_rec, %T_rec* %t44, i32 0, i32 24
    %t45 = bitcast i8* %t46 to double*
    %t47 = load double, double* %t45
    call void @_WriteReal(i8* %t27, i32 15, i32 0, double %t47)
    call void @_WriteChar(i8* %t27, i32 0, i32 0, i8 32)
    %t48 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 8
    %t50 = getelementptr inbounds %T_rec, %T_rec* %t48, i32 0, i32 32
    %t49 = bitcast i8* %t50 to %T_string10*
    call void @_WriteString(i8* %t27, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* %t49, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t27)
    %t51 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t51)
    %t52 = load %T_text, %T_text* @output
    %t53 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 8
    %t55 = getelementptr inbounds %T_rec, %T_rec* %t53, i32 0, i32 84
    %t54 = bitcast i8* %t55 to %T_recs*
    %t57 = getelementptr inbounds %T_recs, %T_recs* %t54, i32 0, i32 0
    %t56 = bitcast i8* %t57 to i32*
    %t58 = load i32, i32* %t56
    call void @_WriteInteger(i8* %t52, i32 1, i32 0, i32 %t58)
    call void @_WriteChar(i8* %t52, i32 0, i32 0, i8 32)
    %t59 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 8
    %t61 = getelementptr inbounds %T_rec, %T_rec* %t59, i32 0, i32 84
    %t60 = bitcast i8* %t61 to %T_recs*
    %t63 = getelementptr inbounds %T_recs, %T_recs* %t60, i32 0, i32 4
    %t62 = bitcast i8* %t63 to i8*
    %t64 = load i8, i8* %t62
    call void @_WriteChar(i8* %t52, i32 1, i32 0, i8 %t64)
    call void @_WriteLn(i8* %t52)
    %t65 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t65)
    %t66 = load %T_text, %T_text* @output
    %t67 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 8
    %t69 = getelementptr inbounds %T_rec, %T_rec* %t67, i32 0, i32 128
    %t68 = bitcast i8* %t69 to i8**
    %t70 = load i8*, i8** %t68
    %t71 = bitcast i8* %t70 to i32*
    %t72 = load i32, i32* %t71
    call void @_WriteInteger(i8* %t66, i32 1, i32 0, i32 %t72)
    call void @_WriteLn(i8* %t66)
    %t73 = load %T_text, %T_text* @output
    %t74 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 9
    %t76 = getelementptr inbounds %T_recv, %T_recv* %t74, i32 0, i32 0
    %t75 = bitcast i8* %t76 to i32*
    %t77 = load i32, i32* %t75
    call void @_WriteInteger(i8* %t73, i32 1, i32 0, i32 %t77)
    call void @_WriteChar(i8* %t73, i32 0, i32 0, i8 32)
    %t78 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 9
    %t80 = getelementptr inbounds %T_recv, %T_recv* %t78, i32 0, i32 4
    %t79 = bitcast i8* %t80 to i8*
    %t81 = load i8, i8* %t79
    call void @_WriteChar(i8* %t73, i32 1, i32 0, i8 %t81)
    call void @_WriteChar(i8* %t73, i32 0, i32 0, i8 32)
    %t82 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 9
    %t84 = getelementptr inbounds %T_recv, %T_recv* %t82, i32 0, i32 5
    %t83 = bitcast i8* %t84 to i1*
    %t85 = load i1, i1* %t83
    call void @_WriteBool(i8* %t73, i32 5, i32 0, i1 %t85)
    call void @_WriteLn(i8* %t73)
    %t86 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t86)
    %t87 = load %T_text, %T_text* @output
    %t89 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 6
    %t88 = load i8*, i8** %t89
    %t90 = bitcast i8* %t88 to i32*
    %t91 = load i32, i32* %t90
    call void @_WriteInteger(i8* %t87, i32 1, i32 0, i32 %t91)
    call void @_WriteLn(i8* %t87)

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

    ; body
    call void (i32 9834, i32 8383, i8 106)
    %t3 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t3, i32 0, i32 0, i8 32)
    %t4 = call i32 (i32 743)
    call void @_WriteInteger(i8* %t3, i32 1, i32 0, i32 %t4)
    ; nop

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

    ; body
    %t4 = load %T_text, %T_text* @output
    %t6 = getelementptr inbounds %Frame_junk10, %Frame_junk10* %.frame, i32 0, i32 1
    %t5 = load i32, i32* %t6
    call void @_WriteInteger(i8* %t4, i32 1, i32 0, i32 %t5)
    call void @_WriteChar(i8* %t4, i32 0, i32 0, i8 32)
    %t8 = getelementptr inbounds %Frame_junk10, %Frame_junk10* %.frame, i32 0, i32 2
    %t7 = load i32, i32* %t8
    call void @_WriteInteger(i8* %t4, i32 1, i32 0, i32 %t7)
    call void @_WriteChar(i8* %t4, i32 0, i32 0, i8 32)
    %t10 = getelementptr inbounds %Frame_junk10, %Frame_junk10* %.frame, i32 0, i32 0
    %t9 = load i8, i8* %t10
    call void @_WriteChar(i8* %t4, i32 1, i32 0, i8 %t9)

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

    ; body
    %t2 = getelementptr inbounds %Frame_junk11, %Frame_junk11* %.frame, i32 0, i32 1
    store i32 , i32* %t2

    ; epilogue
    %t3 = getelementptr inbounds %Frame_junk11, %Frame_junk11* %.frame, i32 0, i32 1
    %t4 = load i32, i32* %t3
    ret i32 %t4
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

    ; body
    %t4 = getelementptr inbounds %Frame_junk12, %Frame_junk12* %.frame, i32 0, i32 0
    %t3 = load %T_junk12_subroutine_133, %T_junk12_subroutine_133* %t4
    call void (%T_junk12_subroutine_133 %t3)

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

    ; body
    %t2 = load %T_text, %T_text* @output
    %t3 = call i32 (i32 941)
    call void @_WriteInteger(i8* %t2, i32 1, i32 0, i32 %t3)

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

    ; body
    %t1 = getelementptr inbounds %Frame_junk14, %Frame_junk14* %.frame, i32 0, i32 0
    store i32 62, i32* %t1
    %t2 = getelementptr inbounds %Frame_junk14, %Frame_junk14* %.frame, i32 0, i32 1
    store i32 76, i32* %t2
    call void @P_junk14_junk15(%Frame_junk14* %.frame)

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

    ; body
    %t2 = load %T_text, %T_text* @output
    %t5 = getelementptr inbounds %Frame_junk14_junk15, %Frame_junk14_junk15* %.frame, i32 0, i32 0
    %t6 = load %Frame_junk14*, %Frame_junk14** %t5
    %t4 = getelementptr inbounds %Frame_junk14, %Frame_junk14* %t6, i32 0, i32 0
    %t3 = load i32, i32* %t4
    call void @_WriteInteger(i8* %t2, i32 1, i32 0, i32 %t3)
    call void @_WriteChar(i8* %t2, i32 0, i32 0, i8 32)
    %t9 = getelementptr inbounds %Frame_junk14_junk15, %Frame_junk14_junk15* %.frame, i32 0, i32 0
    %t10 = load %Frame_junk14*, %Frame_junk14** %t9
    %t8 = getelementptr inbounds %Frame_junk14, %Frame_junk14* %t10, i32 0, i32 1
    %t7 = load i32, i32* %t8
    call void @_WriteInteger(i8* %t2, i32 1, i32 0, i32 %t7)

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

    ; body
    ; nop

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

    ; body
    call void ()

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

    ; body
    %t2 = load %T_text, %T_text* @output
    %t5 = getelementptr inbounds %Frame_junk17_junk18, %Frame_junk17_junk18* %.frame, i32 0, i32 0
    %t6 = load %Frame_junk17*, %Frame_junk17** %t5
    %t4 = getelementptr inbounds %Frame_junk17, %Frame_junk17* %t6, i32 0, i32 0
    %t3 = load i32, i32* %t4
    call void @_WriteInteger(i8* %t2, i32 1, i32 0, i32 %t3)

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

    ; body
    %t2 = getelementptr inbounds %Frame_junk19, %Frame_junk19* %.frame, i32 0, i32 0
    %t1 = load i8*, i8** %t2
    %t3 = bitcast i8* %t1 to i8*
    store i8 97, i8* %t3
    %t4 = load %T_text, %T_text* @output
    %t6 = getelementptr inbounds %Frame_junk19, %Frame_junk19* %.frame, i32 0, i32 0
    %t5 = load i8*, i8** %t6
    %t7 = bitcast i8* %t5 to i8*
    %t8 = load i8, i8* %t7
    call void @_WriteChar(i8* %t4, i32 0, i32 0, i8 %t8)

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

    ; body
    %t1 = call i32 @F_junk20_inner(%Frame_junk20* %.frame)
    store i32 %t1, i32* @i

    ; epilogue
    %t2 = getelementptr inbounds %Frame_junk20, %Frame_junk20* %.frame, i32 0, i32 0
    %t3 = load i32, i32* %t2
    ret i32 %t3
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

    ; body
    %t2 = getelementptr inbounds %Frame_junk20_inner, %Frame_junk20_inner* %.frame, i32 0, i32 0
    store i32 12, i32* %t2
    %t4 = getelementptr inbounds %Frame_junk20_inner, %Frame_junk20_inner* %.frame, i32 0, i32 1
    %t5 = load %Frame_junk20*, %Frame_junk20** %t4
    %t3 = getelementptr inbounds %Frame_junk20, %Frame_junk20* %t5, i32 0, i32 0
    store i32 37, i32* %t3

    ; epilogue
    %t6 = getelementptr inbounds %Frame_junk20_inner, %Frame_junk20_inner* %.frame, i32 0, i32 0
    %t7 = load i32, i32* %t6
    ret i32 %t7
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

    ; body
    %t3 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 3
    %t7 = load i32, i32* @rndseq
    %t8 = sdiv i32 2147483647, 16807
    %t6 = srem i32 %t7, %t8
    %t5 = mul i32 16807, %t6
    %t10 = srem i32 2147483647, 16807
    %t12 = load i32, i32* @rndseq
    %t13 = sdiv i32 2147483647, 16807
    %t11 = sdiv i32 %t12, %t13
    %t9 = mul i32 %t10, %t11
    %t4 = sub i32 %t5, %t9
    store i32 %t4, i32* %t3
    %t14 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 2
    %t17 = load i32, i32* @rndseq
    %t22 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 0
    %t21 = load i32, i32* %t22
    %t24 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 1
    %t23 = load i32, i32* %t24
    %t20 = sub i32 %t21, %t23
    %t19 = add i32 %t20, 1
    %t18 = sdiv i32 2147483647, %t19
    %t16 = sdiv i32 %t17, %t18
    %t26 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 1
    %t25 = load i32, i32* %t26
    %t15 = add i32 %t16, %t25
    store i32 %t15, i32* %t14

    ; epilogue
    %t27 = getelementptr inbounds %Frame_random, %Frame_random* %.frame, i32 0, i32 2
    %t28 = load i32, i32* %t27
    ret i32 %t28
}


;================================================================================
; string literals

@.str.31 = private unnamed_addr constant [62 x i8] c"                 Copyright (C) 1995 S. A. Moore - All rights \00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"                 TEST SUITE FOR ISO 7185 PASCAL\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c"         1111111111222222222233333333334\00", align 1
@.str.588 = private unnamed_addr constant [51 x i8] c"         11111111112222222222333333333344444444445\00", align 1
@.str.1080 = private unnamed_addr constant [34 x i8] c"      s/b:  873 10 _i_gfedcb_ 427\00", align 1
@.str.1076 = private unnamed_addr constant [52 x i8] c"      s/b:  873 8 20 19 18 17 16 15 14 13 12 11 427\00", align 1
@.str.537 = private unnamed_addr constant [11 x i8] c"      true\00", align 1
@.str.527 = private unnamed_addr constant [11 x i8] c"     false\00", align 1
@.str.996 = private unnamed_addr constant [61 x i8] c"     s/b:  20 k 19 j 18 i 17 h 16 g 15 f 14 e 13 d 12 c 11 b\00", align 1
@.str.538 = private unnamed_addr constant [10 x i8] c"     true\00", align 1
@.str.528 = private unnamed_addr constant [10 x i8] c"    false\00", align 1
@.str.978 = private unnamed_addr constant [54 x i8] c"    s/b:   20.12 19.12 18.12 17.12 16.12 15.12 14.12 \00", align 1
@.str.975 = private unnamed_addr constant [65 x i8] c"    s/b:   false  true false  true false  true false  true false\00", align 1
@.str.539 = private unnamed_addr constant [9 x i8] c"    true\00", align 1
@.str.529 = private unnamed_addr constant [9 x i8] c"   false\00", align 1
@.str.463 = private unnamed_addr constant [16 x i8] c"   hello, world\00", align 1
@.str.540 = private unnamed_addr constant [8 x i8] c"   true\00", align 1
@.str.957 = private unnamed_addr constant [40 x i8] c"  1   2   3   4   5   6   7   8   9  10\00", align 1
@.str.530 = private unnamed_addr constant [8 x i8] c"  false\00", align 1
@.str.464 = private unnamed_addr constant [15 x i8] c"  hello, world\00", align 1
@.str.541 = private unnamed_addr constant [7 x i8] c"  true\00", align 1
@.str.602 = private unnamed_addr constant [21 x i8] c" 1.234567890123e+000\00", align 1
@.str.601 = private unnamed_addr constant [20 x i8] c" 1.23456789012e+000\00", align 1
@.str.600 = private unnamed_addr constant [19 x i8] c" 1.2345678901e+000\00", align 1
@.str.599 = private unnamed_addr constant [18 x i8] c" 1.234567890e+000\00", align 1
@.str.598 = private unnamed_addr constant [17 x i8] c" 1.23456789e+000\00", align 1
@.str.597 = private unnamed_addr constant [16 x i8] c" 1.2345678e+000\00", align 1
@.str.596 = private unnamed_addr constant [15 x i8] c" 1.234567e+000\00", align 1
@.str.595 = private unnamed_addr constant [14 x i8] c" 1.23456e+000\00", align 1
@.str.594 = private unnamed_addr constant [13 x i8] c" 1.2345e+000\00", align 1
@.str.593 = private unnamed_addr constant [12 x i8] c" 1.234e+000\00", align 1
@.str.592 = private unnamed_addr constant [11 x i8] c" 1.23e+000\00", align 1
@.str.591 = private unnamed_addr constant [10 x i8] c" 1.2e+000\00", align 1
@.str.958 = private unnamed_addr constant [40 x i8] c" 11  12  13  14  15  16  17  18  19  20\00", align 1
@.str.391 = private unnamed_addr constant [36 x i8] c" 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0\00", align 1
@.str.959 = private unnamed_addr constant [40 x i8] c" 21  22  23  24  25  26  27  28  29  30\00", align 1
@.str.960 = private unnamed_addr constant [40 x i8] c" 31  32  33  34  35  36  37  38  39  40\00", align 1
@.str.961 = private unnamed_addr constant [40 x i8] c" 41  42  43  44  45  46  47  48  49  50\00", align 1
@.str.962 = private unnamed_addr constant [40 x i8] c" 51  52  53  54  55  56  57  58  59  60\00", align 1
@.str.963 = private unnamed_addr constant [40 x i8] c" 61  62  63  64  65  66  67  68  69  70\00", align 1
@.str.1036 = private unnamed_addr constant [24 x i8] c" 7  6  5  4  3  2  1  0\00", align 1
@.str.964 = private unnamed_addr constant [40 x i8] c" 71  72  73  74  75  76  77  78  79  80\00", align 1
@.str.965 = private unnamed_addr constant [40 x i8] c" 81  82  83  84  85  86  87  88  89  90\00", align 1
@.str.966 = private unnamed_addr constant [41 x i8] c" 91  92  93  94  95  96  97  98  99  100\00", align 1
@.str.531 = private unnamed_addr constant [7 x i8] c" false\00", align 1
@.str.465 = private unnamed_addr constant [15 x i8] c" hello, world \00", align 1
@.str.842 = private unnamed_addr constant [6 x i8] c" s/b \00", align 1
@.str.67 = private unnamed_addr constant [36 x i8] c" s/b   1  2  3  4  5  6  7  8  9 10\00", align 1
@.str.732 = private unnamed_addr constant [19 x i8] c" s/b  1.039842e+01\00", align 1
@.str.670 = private unnamed_addr constant [19 x i8] c" s/b  1.047202e+05\00", align 1
@.str.821 = private unnamed_addr constant [19 x i8] c" s/b  1.212572e+05\00", align 1
@.str.666 = private unnamed_addr constant [19 x i8] c" s/b  1.278052e+03\00", align 1
@.str.698 = private unnamed_addr constant [19 x i8] c" s/b  1.393753e+00\00", align 1
@.str.657 = private unnamed_addr constant [18 x i8] c" s/b  1.41100e+00\00", align 1
@.str.625 = private unnamed_addr constant [19 x i8] c" s/b  1.418900e+03\00", align 1
@.str.771 = private unnamed_addr constant [19 x i8] c" s/b  1.510000e+01\00", align 1
@.str.572 = private unnamed_addr constant [19 x i8] c" s/b  1.554000e+00\00", align 1
@.str.696 = private unnamed_addr constant [19 x i8] c" s/b  1.567883e+00\00", align 1
@.str.655 = private unnamed_addr constant [18 x i8] c" s/b  1.56850e+00\00", align 1
@.str.717 = private unnamed_addr constant [19 x i8] c" s/b  1.768740e+03\00", align 1
@.str.649 = private unnamed_addr constant [18 x i8] c" s/b  1.89425e+05\00", align 1
@.str.69 = private unnamed_addr constant [36 x i8] c" s/b  10  9  8  7  6  5  4  3  2  1\00", align 1
@.str.631 = private unnamed_addr constant [19 x i8] c" s/b  2.260115e+00\00", align 1
@.str.668 = private unnamed_addr constant [19 x i8] c" s/b  2.389460e+02\00", align 1
@.str.710 = private unnamed_addr constant [19 x i8] c" s/b  3.003400e+02\00", align 1
@.str.651 = private unnamed_addr constant [18 x i8] c" s/b  3.13635e+01\00", align 1
@.str.694 = private unnamed_addr constant [19 x i8] c" s/b  3.311461e-01\00", align 1
@.str.574 = private unnamed_addr constant [19 x i8] c" s/b  3.340000e-03\00", align 1
@.str.576 = private unnamed_addr constant [18 x i8] c" s/b  3.34000e-24\00", align 1
@.str.688 = private unnamed_addr constant [19 x i8] c" s/b  3.493000e+01\00", align 1
@.str.779 = private unnamed_addr constant [19 x i8] c" s/b  3.554800e+01\00", align 1
@.str.578 = private unnamed_addr constant [19 x i8] c" s/b  4.000000e-45\00", align 1
@.str.827 = private unnamed_addr constant [19 x i8] c" s/b  4.171539e-01\00", align 1
@.str.795 = private unnamed_addr constant [19 x i8] c" s/b  4.274582e+00\00", align 1
@.str.629 = private unnamed_addr constant [19 x i8] c" s/b  4.281227e+05\00", align 1
@.str.708 = private unnamed_addr constant [19 x i8] c" s/b  4.333000e+01\00", align 1
@.str.647 = private unnamed_addr constant [18 x i8] c" s/b  4.35230e+02\00", align 1
@.str.700 = private unnamed_addr constant [19 x i8] c" s/b  4.421488e+00\00", align 1
@.str.773 = private unnamed_addr constant [19 x i8] c" s/b  4.513300e+01\00", align 1
@.str.1014 = private unnamed_addr constant [16 x i8] c" s/b  5 4 3 2 1\00", align 1
@.str.758 = private unnamed_addr constant [18 x i8] c" s/b  5.39050e+05\00", align 1
@.str.690 = private unnamed_addr constant [19 x i8] c" s/b  5.475600e+00\00", align 1
@.str.627 = private unnamed_addr constant [19 x i8] c" s/b  5.484399e+02\00", align 1
@.str.789 = private unnamed_addr constant [19 x i8] c" s/b  5.585632e+02\00", align 1
@.str.726 = private unnamed_addr constant [19 x i8] c" s/b  5.605265e+06\00", align 1
@.str.659 = private unnamed_addr constant [18 x i8] c" s/b  6.07587e+00\00", align 1
@.str.764 = private unnamed_addr constant [18 x i8] c" s/b  6.80566e-01\00", align 1
@.str.819 = private unnamed_addr constant [19 x i8] c" s/b  6.823000e+00\00", align 1
@.str.672 = private unnamed_addr constant [19 x i8] c" s/b  7.259598e-03\00", align 1
@.str.756 = private unnamed_addr constant [18 x i8] c" s/b  7.34200e+02\00", align 1
@.str.836 = private unnamed_addr constant [19 x i8] c" s/b  8.422000e+01\00", align 1
@.str.1011 = private unnamed_addr constant [26 x i8] c" s/b  9 8 7 6 5 4 3 2 1 0\00", align 1
@.str.823 = private unnamed_addr constant [19 x i8] c" s/b  9.421146e-01\00", align 1
@.str.692 = private unnamed_addr constant [19 x i8] c" s/b  9.723333e+01\00", align 1
@.str.1006 = private unnamed_addr constant [26 x i8] c" s/b  j i h g f e d c b a\00", align 1
@.str.922 = private unnamed_addr constant [11 x i8] c" s/b  true\00", align 1
@.str.1088 = private unnamed_addr constant [16 x i8] c" s/b  true 2343\00", align 1
@.str.170 = private unnamed_addr constant [8 x i8] c" s/b -1\00", align 1
@.str.728 = private unnamed_addr constant [19 x i8] c" s/b -1.409071e+00\00", align 1
@.str.787 = private unnamed_addr constant [19 x i8] c" s/b -1.489041e+02\00", align 1
@.str.762 = private unnamed_addr constant [18 x i8] c" s/b -1.56943e+00\00", align 1
@.str.825 = private unnamed_addr constant [19 x i8] c" s/b -1.570677e+00\00", align 1
@.str.793 = private unnamed_addr constant [19 x i8] c" s/b -1.772163e+01\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c" s/b -12\00", align 1
@.str.226 = private unnamed_addr constant [10 x i8] c" s/b -126\00", align 1
@.str.175 = private unnamed_addr constant [9 x i8] c" s/b -13\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c" s/b -18\00", align 1
@.str.239 = private unnamed_addr constant [8 x i8] c" s/b -2\00", align 1
@.str.586 = private unnamed_addr constant [19 x i8] c" s/b -2.000000e-14\00", align 1
@.str.785 = private unnamed_addr constant [19 x i8] c" s/b -2.641223e+01\00", align 1
@.str.224 = private unnamed_addr constant [9 x i8] c" s/b -20\00", align 1
@.str.232 = private unnamed_addr constant [9 x i8] c" s/b -25\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c" s/b -280\00", align 1
@.str.653 = private unnamed_addr constant [18 x i8] c" s/b -3.44290e-01\00", align 1
@.str.777 = private unnamed_addr constant [19 x i8] c" s/b -3.658100e+01\00", align 1
@.str.775 = private unnamed_addr constant [19 x i8] c" s/b -3.864000e+01\00", align 1
@.str.177 = private unnamed_addr constant [9 x i8] c" s/b -33\00", align 1
@.str.217 = private unnamed_addr constant [9 x i8] c" s/b -35\00", align 1
@.str.215 = private unnamed_addr constant [9 x i8] c" s/b -39\00", align 1
@.str.838 = private unnamed_addr constant [19 x i8] c" s/b -4.333000e+01\00", align 1
@.str.760 = private unnamed_addr constant [18 x i8] c" s/b -4.34850e-01\00", align 1
@.str.783 = private unnamed_addr constant [19 x i8] c" s/b -4.400100e+01\00", align 1
@.str.781 = private unnamed_addr constant [19 x i8] c" s/b -4.939840e+01\00", align 1
@.str.222 = private unnamed_addr constant [9 x i8] c" s/b -44\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c" s/b -46\00", align 1
@.str.220 = private unnamed_addr constant [9 x i8] c" s/b -48\00", align 1
@.str.791 = private unnamed_addr constant [19 x i8] c" s/b -5.220157e+00\00", align 1
@.str.580 = private unnamed_addr constant [19 x i8] c" s/b -5.565000e+03\00", align 1
@.str.161 = private unnamed_addr constant [9 x i8] c" s/b -52\00", align 1
@.str.243 = private unnamed_addr constant [9 x i8] c" s/b -55\00", align 1
@.str.230 = private unnamed_addr constant [8 x i8] c" s/b -6\00", align 1
@.str.584 = private unnamed_addr constant [19 x i8] c" s/b -6.364000e+29\00", align 1
@.str.713 = private unnamed_addr constant [19 x i8] c" s/b -6.599980e+03\00", align 1
@.str.721 = private unnamed_addr constant [19 x i8] c" s/b -6.900320e+03\00", align 1
@.str.832 = private unnamed_addr constant [11 x i8] c" s/b -6244\00", align 1
@.str.730 = private unnamed_addr constant [19 x i8] c" s/b -7.379627e+00\00", align 1
@.str.723 = private unnamed_addr constant [19 x i8] c" s/b -7.595593e+05\00", align 1
@.str.766 = private unnamed_addr constant [10 x i8] c" s/b -734\00", align 1
@.str.768 = private unnamed_addr constant [11 x i8] c" s/b -7635\00", align 1
@.str.273 = private unnamed_addr constant [10 x i8] c" s/b -768\00", align 1
@.str.715 = private unnamed_addr constant [19 x i8] c" s/b -8.368720e+03\00", align 1
@.str.834 = private unnamed_addr constant [19 x i8] c" s/b -8.422000e+01\00", align 1
@.str.719 = private unnamed_addr constant [19 x i8] c" s/b -8.669061e+03\00", align 1
@.str.830 = private unnamed_addr constant [10 x i8] c" s/b -843\00", align 1
@.str.236 = private unnamed_addr constant [8 x i8] c" s/b -9\00", align 1
@.str.582 = private unnamed_addr constant [19 x i8] c" s/b -9.440000e-03\00", align 1
@.str.207 = private unnamed_addr constant [7 x i8] c" s/b 0\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c" s/b 0 1 2 3 4 5 6 7 8 9\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c" s/b 1\00", align 1
@.str.1104 = private unnamed_addr constant [9 x i8] c" s/b 1 g\00", align 1
@.str.1084 = private unnamed_addr constant [13 x i8] c" s/b 10 2343\00", align 1
@.str.350 = private unnamed_addr constant [9 x i8] c" s/b 103\00", align 1
@.str.1003 = private unnamed_addr constant [11 x i8] c" s/b 11 10\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c" s/b 121\00", align 1
@.str.932 = private unnamed_addr constant [15 x i8] c" s/b 1234.5678\00", align 1
@.str.205 = private unnamed_addr constant [8 x i8] c" s/b 14\00", align 1
@.str.211 = private unnamed_addr constant [8 x i8] c" s/b 15\00", align 1
@.str.930 = private unnamed_addr constant [8 x i8] c" s/b 17\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c" s/b 1849\00", align 1
@.str.1086 = private unnamed_addr constant [14 x i8] c" s/b 19  true\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c" s/b 1904\00", align 1
@.str.179 = private unnamed_addr constant [9 x i8] c" s/b 196\00", align 1
@.str.173 = private unnamed_addr constant [7 x i8] c" s/b 2\00", align 1
@.str.1092 = private unnamed_addr constant [12 x i8] c" s/b 2 2343\00", align 1
@.str.970 = private unnamed_addr constant [35 x i8] c" s/b 20 19 18 17 16 15 14 13 12 11\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c" s/b 22\00", align 1
@.str.702 = private unnamed_addr constant [8 x i8] c" s/b 24\00", align 1
@.str.928 = private unnamed_addr constant [7 x i8] c" s/b 3\00", align 1
@.str.1096 = private unnamed_addr constant [12 x i8] c" s/b 3 2343\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c" s/b 3354\00", align 1
@.str.159 = private unnamed_addr constant [8 x i8] c" s/b 34\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c" s/b 35\00", align 1
@.str.1136 = private unnamed_addr constant [8 x i8] c" s/b 37\00", align 1
@.str.943 = private unnamed_addr constant [10 x i8] c" s/b 3732\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c" s/b 4\00", align 1
@.str.1098 = private unnamed_addr constant [13 x i8] c" s/b 4  true\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c" s/b 42\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c" s/b 43\00", align 1
@.str.661 = private unnamed_addr constant [9 x i8] c" s/b 435\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c" s/b 44\00", align 1
@.str.168 = private unnamed_addr constant [9 x i8] c" s/b 448\00", align 1
@.str.213 = private unnamed_addr constant [8 x i8] c" s/b 45\00", align 1
@.str.1108 = private unnamed_addr constant [11 x i8] c" s/b 45 89\00", align 1
@.str.920 = private unnamed_addr constant [10 x i8] c" s/b 4594\00", align 1
@.str.1110 = private unnamed_addr constant [8 x i8] c" s/b 46\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c" s/b 49\00", align 1
@.str.234 = private unnamed_addr constant [7 x i8] c" s/b 5\00", align 1
@.str.271 = private unnamed_addr constant [8 x i8] c" s/b 52\00", align 1
@.str.228 = private unnamed_addr constant [9 x i8] c" s/b 520\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c" s/b 546\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c" s/b 6\00", align 1
@.str.1132 = private unnamed_addr constant [11 x i8] c" s/b 62 76\00", align 1
@.str.241 = private unnamed_addr constant [8 x i8] c" s/b 64\00", align 1
@.str.133 = private unnamed_addr constant [8 x i8] c" s/b 65\00", align 1
@.str.1094 = private unnamed_addr constant [13 x i8] c" s/b 7  true\00", align 1
@.str.939 = private unnamed_addr constant [12 x i8] c" s/b 7234 y\00", align 1
@.str.704 = private unnamed_addr constant [8 x i8] c" s/b 75\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c" s/b 768\00", align 1
@.str.706 = private unnamed_addr constant [8 x i8] c" s/b 83\00", align 1
@.str.1059 = private unnamed_addr constant [19 x i8] c" s/b 873 0 235 427\00", align 1
@.str.1061 = private unnamed_addr constant [21 x i8] c" s/b 873 1  true 427\00", align 1
@.str.1082 = private unnamed_addr constant [21 x i8] c" s/b 873 11 2394 427\00", align 1
@.str.1063 = private unnamed_addr constant [17 x i8] c" s/b 873 2 f 427\00", align 1
@.str.1065 = private unnamed_addr constant [17 x i8] c" s/b 873 3 8 427\00", align 1
@.str.1067 = private unnamed_addr constant [17 x i8] c" s/b 873 4 3 427\00", align 1
@.str.1069 = private unnamed_addr constant [18 x i8] c" s/b 873 5 12 427\00", align 1
@.str.1071 = private unnamed_addr constant [25 x i8] c" s/b 873 6 8734.8389 427\00", align 1
@.str.1074 = private unnamed_addr constant [26 x i8] c" s/b 873 7 this one ? 427\00", align 1
@.str.73 = private unnamed_addr constant [25 x i8] c" s/b 9 8 7 6 5 4 3 2 1 0\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c" s/b 90\00", align 1
@.str.1130 = private unnamed_addr constant [9 x i8] c" s/b 942\00", align 1
@.str.1128 = private unnamed_addr constant [21 x i8] c" s/b 9834 8383 j 744\00", align 1
@.str.663 = private unnamed_addr constant [9 x i8] c" s/b 984\00", align 1
@.str.416 = private unnamed_addr constant [8 x i8] c" s/b 99\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c" s/b A\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c" s/b N\00", align 1
@.str.941 = private unnamed_addr constant [16 x i8] c" s/b _b_d____ij\00", align 1
@.str.410 = private unnamed_addr constant [7 x i8] c" s/b a\00", align 1
@.str.386 = private unnamed_addr constant [32 x i8] c" s/b abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.412 = private unnamed_addr constant [7 x i8] c" s/b b\00", align 1
@.str.348 = private unnamed_addr constant [7 x i8] c" s/b f\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c" s/b false\00", align 1
@.str.1090 = private unnamed_addr constant [17 x i8] c" s/b false  true\00", align 1
@.str.418 = private unnamed_addr constant [7 x i8] c" s/b g\00", align 1
@.str.344 = private unnamed_addr constant [11 x i8] c" s/b g g u\00", align 1
@.str.346 = private unnamed_addr constant [7 x i8] c" s/b h\00", align 1
@.str.1039 = private unnamed_addr constant [16 x i8] c" s/b hello, guy\00", align 1
@.str.396 = private unnamed_addr constant [16 x i8] c" s/b junky01234\00", align 1
@.str.935 = private unnamed_addr constant [16 x i8] c" s/b my word is\00", align 1
@.str.393 = private unnamed_addr constant [7 x i8] c" s/b n\00", align 1
@.str.925 = private unnamed_addr constant [7 x i8] c" s/b p\00", align 1
@.str.370 = private unnamed_addr constant [32 x i8] c" s/b porker    porker    parker\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c" s/b stop\00", align 1
@.str.458 = private unnamed_addr constant [22 x i8] c" s/b this is a string\00", align 1
@.str.1115 = private unnamed_addr constant [16 x i8] c" s/b tota? junk\00", align 1
@.str.1113 = private unnamed_addr constant [16 x i8] c" s/b total junk\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c" s/b true\00", align 1
@.str.479 = private unnamed_addr constant [16 x i8] c" s/b true false\00", align 1
@.str.352 = private unnamed_addr constant [7 x i8] c" s/b u\00", align 1
@.str.460 = private unnamed_addr constant [7 x i8] c" s/b v\00", align 1
@.str.414 = private unnamed_addr constant [7 x i8] c" s/b y\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c" s/b yes\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c" s/b yes stop\00", align 1
@.str.407 = private unnamed_addr constant [39 x i8] c" s/b zero one two three four five six \00", align 1
@.str.388 = private unnamed_addr constant [32 x i8] c" s/b zyxwvutsrqponmlkjihgfedcba\00", align 1
@.str.1078 = private unnamed_addr constant [24 x i8] c" s/b:  873 9 2387 t 427\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c" start s/b good\00", align 1
@.str.542 = private unnamed_addr constant [6 x i8] c" true\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"!! BAD !!\00", align 1
@.str.1106 = private unnamed_addr constant [57 x i8] c"************ Procedures and functions ******************\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"***************\00", align 1
@.str.477 = private unnamed_addr constant [49 x i8] c"******************* Booleans *******************\00", align 1
@.str.342 = private unnamed_addr constant [50 x i8] c"******************* Characters*******************\00", align 1
@.str.42 = private unnamed_addr constant [65 x i8] c"******************* Control structures tests *******************\00", align 1
@.str.76 = private unnamed_addr constant [49 x i8] c"******************* Integers *******************\00", align 1
@.str.918 = private unnamed_addr constant [60 x i8] c"******************* Pointers ******************************\00", align 1
@.str.570 = private unnamed_addr constant [57 x i8] c"******************* Reals ******************************\00", align 1
@.str.546 = private unnamed_addr constant [47 x i8] c"******************* Scalar *******************\00", align 1
@.str.276 = private unnamed_addr constant [50 x i8] c"******************* Subranges *******************\00", align 1
@.str.968 = private unnamed_addr constant [58 x i8] c"******************* arrays ******************************\00", align 1
@.str.1049 = private unnamed_addr constant [59 x i8] c"******************* records ******************************\00", align 1
@.str.840 = private unnamed_addr constant [56 x i8] c"******************* sets ******************************\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"****************************************************************\00", align 1
@.str.1017 = private unnamed_addr constant [29 x i8] c"0 10 20 30 40 50 60 70 80 90\00", align 1
@.str.900 = private unnamed_addr constant [3 x i8] c"01\00", align 1
@.str.849 = private unnamed_addr constant [11 x i8] c"0100001000\00", align 1
@.str.847 = private unnamed_addr constant [11 x i8] c"0100010000\00", align 1
@.str.861 = private unnamed_addr constant [11 x i8] c"0101010000\00", align 1
@.str.883 = private unnamed_addr constant [11 x i8] c"0101010101\00", align 1
@.str.898 = private unnamed_addr constant [11 x i8] c"0110000000\00", align 1
@.str.403 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.1018 = private unnamed_addr constant [29 x i8] c"1 11 21 31 41 51 61 71 81 91\00", align 1
@.str.604 = private unnamed_addr constant [4 x i8] c"1.2\00", align 1
@.str.904 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.613 = private unnamed_addr constant [14 x i8] c"10.2345678901\00", align 1
@.str.843 = private unnamed_addr constant [21 x i8] c"10101010101010101010\00", align 1
@.str.902 = private unnamed_addr constant [3 x i8] c"11\00", align 1
@.str.1122 = private unnamed_addr constant [30 x i8] c"11 12 13 14 15 16 17 18 19 20\00", align 1
@.str.614 = private unnamed_addr constant [15 x i8] c"11.23456789012\00", align 1
@.str.845 = private unnamed_addr constant [11 x i8] c"1101110001\00", align 1
@.str.615 = private unnamed_addr constant [16 x i8] c"12.234567890123\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"1234567890123456789012345678901234567890\00", align 1
@.str.589 = private unnamed_addr constant [51 x i8] c"12345678901234567890123456789012345678901234567890\00", align 1
@.str.979 = private unnamed_addr constant [18 x i8] c"13.12 12.12 11.12\00", align 1
@.str.616 = private unnamed_addr constant [17 x i8] c"13.2345678901234\00", align 1
@.str.617 = private unnamed_addr constant [18 x i8] c"14.23456789012345\00", align 1
@.str.1035 = private unnamed_addr constant [24 x i8] c"15 14 13 12 11 10  9  8\00", align 1
@.str.618 = private unnamed_addr constant [19 x i8] c"15.234567890123456\00", align 1
@.str.619 = private unnamed_addr constant [20 x i8] c"16.2345678901234567\00", align 1
@.str.620 = private unnamed_addr constant [21 x i8] c"17.23456789012345678\00", align 1
@.str.621 = private unnamed_addr constant [22 x i8] c"18.234567890123456789\00", align 1
@.str.622 = private unnamed_addr constant [23 x i8] c"19.2345678901234567890\00", align 1
@.str.1019 = private unnamed_addr constant [29 x i8] c"2 12 22 32 42 52 62 72 82 92\00", align 1
@.str.605 = private unnamed_addr constant [5 x i8] c"2.23\00", align 1
@.str.623 = private unnamed_addr constant [24 x i8] c"20.23456789012345678901\00", align 1
@.str.1053 = private unnamed_addr constant [30 x i8] c"21 22 23 24 25 26 27 28 29 30\00", align 1
@.str.1034 = private unnamed_addr constant [24 x i8] c"23 22 21 20 19 18 17 16\00", align 1
@.str.1054 = private unnamed_addr constant [7 x i8] c"2324 y\00", align 1
@.str.1124 = private unnamed_addr constant [14 x i8] c"23487 n false\00", align 1
@.str.1020 = private unnamed_addr constant [29 x i8] c"3 13 23 33 43 53 63 73 83 93\00", align 1
@.str.606 = private unnamed_addr constant [6 x i8] c"3.234\00", align 1
@.str.1033 = private unnamed_addr constant [24 x i8] c"31 30 29 28 27 26 25 24\00", align 1
@.str.1032 = private unnamed_addr constant [24 x i8] c"39 38 37 36 35 34 33 32\00", align 1
@.str.1021 = private unnamed_addr constant [29 x i8] c"4 14 24 34 44 54 64 74 84 94\00", align 1
@.str.607 = private unnamed_addr constant [7 x i8] c"4.2345\00", align 1
@.str.1031 = private unnamed_addr constant [24 x i8] c"47 46 45 44 43 42 41 40\00", align 1
@.str.1022 = private unnamed_addr constant [29 x i8] c"5 15 25 35 45 55 65 75 85 95\00", align 1
@.str.608 = private unnamed_addr constant [8 x i8] c"5.23456\00", align 1
@.str.1030 = private unnamed_addr constant [24 x i8] c"55 54 53 52 51 50 49 48\00", align 1
@.str.1023 = private unnamed_addr constant [29 x i8] c"6 16 26 36 46 56 66 76 86 96\00", align 1
@.str.609 = private unnamed_addr constant [9 x i8] c"6.234567\00", align 1
@.str.1029 = private unnamed_addr constant [24 x i8] c"63 62 61 60 59 58 57 56\00", align 1
@.str.1123 = private unnamed_addr constant [45 x i8] c"64 false j 1 3 12  4.54500000e-29 what ? who\00", align 1
@.str.1052 = private unnamed_addr constant [45 x i8] c"64 false j 1 3 12  4.54512000e-29 what ? who\00", align 1
@.str.1024 = private unnamed_addr constant [29 x i8] c"7 17 27 37 47 57 67 77 87 97\00", align 1
@.str.610 = private unnamed_addr constant [10 x i8] c"7.2345678\00", align 1
@.str.1126 = private unnamed_addr constant [4 x i8] c"734\00", align 1
@.str.1025 = private unnamed_addr constant [29 x i8] c"8 18 28 38 48 58 68 78 88 98\00", align 1
@.str.611 = private unnamed_addr constant [11 x i8] c"8.23456789\00", align 1
@.str.1056 = private unnamed_addr constant [5 x i8] c"8454\00", align 1
@.str.1026 = private unnamed_addr constant [29 x i8] c"9 19 29 39 49 59 69 79 89 99\00", align 1
@.str.612 = private unnamed_addr constant [12 x i8] c"9.234567890\00", align 1
@.str.1121 = private unnamed_addr constant [45 x i8] c"93  true k 7 4 10  3.14140000e+00 hello, guy\00", align 1
@.str.983 = private unnamed_addr constant [11 x i8] c"Array10:  \00", align 1
@.str.984 = private unnamed_addr constant [11 x i8] c"Array11:  \00", align 1
@.str.986 = private unnamed_addr constant [11 x i8] c"Array12:  \00", align 1
@.str.987 = private unnamed_addr constant [11 x i8] c"Array13:  \00", align 1
@.str.989 = private unnamed_addr constant [11 x i8] c"Array14:  \00", align 1
@.str.990 = private unnamed_addr constant [11 x i8] c"Array15:  \00", align 1
@.str.992 = private unnamed_addr constant [11 x i8] c"Array16:  \00", align 1
@.str.993 = private unnamed_addr constant [11 x i8] c"Array17:  \00", align 1
@.str.994 = private unnamed_addr constant [11 x i8] c"Array18:  \00", align 1
@.str.995 = private unnamed_addr constant [11 x i8] c"Array19:  \00", align 1
@.str.969 = private unnamed_addr constant [11 x i8] c"Array1:   \00", align 1
@.str.997 = private unnamed_addr constant [11 x i8] c"Array20:  \00", align 1
@.str.998 = private unnamed_addr constant [11 x i8] c"Array21:  \00", align 1
@.str.999 = private unnamed_addr constant [11 x i8] c"Array22:  \00", align 1
@.str.1000 = private unnamed_addr constant [11 x i8] c"Array23:  \00", align 1
@.str.1001 = private unnamed_addr constant [11 x i8] c"Array24:  \00", align 1
@.str.1002 = private unnamed_addr constant [11 x i8] c"Array25:  \00", align 1
@.str.1004 = private unnamed_addr constant [11 x i8] c"Array26:  \00", align 1
@.str.1005 = private unnamed_addr constant [11 x i8] c"Array27:  \00", align 1
@.str.1007 = private unnamed_addr constant [11 x i8] c"Array28:  \00", align 1
@.str.1008 = private unnamed_addr constant [11 x i8] c"Array29:  \00", align 1
@.str.971 = private unnamed_addr constant [11 x i8] c"Array2:   \00", align 1
@.str.1009 = private unnamed_addr constant [11 x i8] c"Array30:  \00", align 1
@.str.1010 = private unnamed_addr constant [11 x i8] c"Array31:  \00", align 1
@.str.1012 = private unnamed_addr constant [11 x i8] c"Array32:  \00", align 1
@.str.1013 = private unnamed_addr constant [11 x i8] c"Array33:  \00", align 1
@.str.1015 = private unnamed_addr constant [11 x i8] c"Array34:  \00", align 1
@.str.1016 = private unnamed_addr constant [9 x i8] c"Array35:\00", align 1
@.str.1027 = private unnamed_addr constant [10 x i8] c"Array36: \00", align 1
@.str.1037 = private unnamed_addr constant [10 x i8] c"Array37: \00", align 1
@.str.1040 = private unnamed_addr constant [10 x i8] c"Array38: \00", align 1
@.str.1041 = private unnamed_addr constant [10 x i8] c"Array39: \00", align 1
@.str.972 = private unnamed_addr constant [11 x i8] c"Array3:   \00", align 1
@.str.1042 = private unnamed_addr constant [10 x i8] c"Array40: \00", align 1
@.str.1043 = private unnamed_addr constant [10 x i8] c"Array41: \00", align 1
@.str.1045 = private unnamed_addr constant [10 x i8] c"Array42: \00", align 1
@.str.1047 = private unnamed_addr constant [10 x i8] c"Array43: \00", align 1
@.str.973 = private unnamed_addr constant [11 x i8] c"Array4:   \00", align 1
@.str.974 = private unnamed_addr constant [11 x i8] c"Array5:   \00", align 1
@.str.976 = private unnamed_addr constant [11 x i8] c"Array6:   \00", align 1
@.str.977 = private unnamed_addr constant [11 x i8] c"Array7:   \00", align 1
@.str.980 = private unnamed_addr constant [11 x i8] c"Array8:   \00", align 1
@.str.981 = private unnamed_addr constant [11 x i8] c"Array9:   \00", align 1
@.str.35 = private unnamed_addr constant [55 x i8] c"Bit length of integer without sign bit appears to be: \00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"Boolean default output field\00", align 1
@.str.488 = private unnamed_addr constant [13 x i8] c"Boolean10:  \00", align 1
@.str.489 = private unnamed_addr constant [13 x i8] c"Boolean11:  \00", align 1
@.str.490 = private unnamed_addr constant [13 x i8] c"Boolean12:  \00", align 1
@.str.491 = private unnamed_addr constant [13 x i8] c"Boolean13:  \00", align 1
@.str.492 = private unnamed_addr constant [13 x i8] c"Boolean14:  \00", align 1
@.str.493 = private unnamed_addr constant [13 x i8] c"Boolean15:  \00", align 1
@.str.494 = private unnamed_addr constant [13 x i8] c"Boolean16:  \00", align 1
@.str.495 = private unnamed_addr constant [13 x i8] c"Boolean17:  \00", align 1
@.str.496 = private unnamed_addr constant [13 x i8] c"Boolean18:  \00", align 1
@.str.497 = private unnamed_addr constant [13 x i8] c"Boolean19:  \00", align 1
@.str.478 = private unnamed_addr constant [13 x i8] c"Boolean1:   \00", align 1
@.str.498 = private unnamed_addr constant [13 x i8] c"Boolean20:  \00", align 1
@.str.499 = private unnamed_addr constant [13 x i8] c"Boolean21:  \00", align 1
@.str.501 = private unnamed_addr constant [13 x i8] c"Boolean22:  \00", align 1
@.str.503 = private unnamed_addr constant [13 x i8] c"Boolean23:  \00", align 1
@.str.504 = private unnamed_addr constant [13 x i8] c"Boolean24:  \00", align 1
@.str.505 = private unnamed_addr constant [13 x i8] c"Boolean25:  \00", align 1
@.str.506 = private unnamed_addr constant [13 x i8] c"Boolean26:  \00", align 1
@.str.507 = private unnamed_addr constant [13 x i8] c"Boolean27:  \00", align 1
@.str.508 = private unnamed_addr constant [13 x i8] c"Boolean28:  \00", align 1
@.str.509 = private unnamed_addr constant [13 x i8] c"Boolean29:  \00", align 1
@.str.480 = private unnamed_addr constant [13 x i8] c"Boolean2:   \00", align 1
@.str.510 = private unnamed_addr constant [13 x i8] c"Boolean30:  \00", align 1
@.str.511 = private unnamed_addr constant [13 x i8] c"Boolean31:  \00", align 1
@.str.512 = private unnamed_addr constant [13 x i8] c"Boolean32:  \00", align 1
@.str.513 = private unnamed_addr constant [13 x i8] c"Boolean33:  \00", align 1
@.str.514 = private unnamed_addr constant [13 x i8] c"Boolean34:  \00", align 1
@.str.515 = private unnamed_addr constant [13 x i8] c"Boolean35:  \00", align 1
@.str.516 = private unnamed_addr constant [13 x i8] c"Boolean36:  \00", align 1
@.str.517 = private unnamed_addr constant [13 x i8] c"Boolean37:  \00", align 1
@.str.518 = private unnamed_addr constant [13 x i8] c"Boolean38:  \00", align 1
@.str.519 = private unnamed_addr constant [13 x i8] c"Boolean39:  \00", align 1
@.str.481 = private unnamed_addr constant [13 x i8] c"Boolean3:   \00", align 1
@.str.520 = private unnamed_addr constant [13 x i8] c"Boolean40:  \00", align 1
@.str.521 = private unnamed_addr constant [13 x i8] c"Boolean41:  \00", align 1
@.str.522 = private unnamed_addr constant [13 x i8] c"Boolean42:  \00", align 1
@.str.523 = private unnamed_addr constant [13 x i8] c"Boolean43:  \00", align 1
@.str.524 = private unnamed_addr constant [13 x i8] c"Boolean44:  \00", align 1
@.str.525 = private unnamed_addr constant [11 x i8] c"Boolean45:\00", align 1
@.str.526 = private unnamed_addr constant [16 x i8] c"Boolean45: s/b:\00", align 1
@.str.535 = private unnamed_addr constant [11 x i8] c"Boolean46:\00", align 1
@.str.536 = private unnamed_addr constant [16 x i8] c"Boolean46: s/b:\00", align 1
@.str.482 = private unnamed_addr constant [13 x i8] c"Boolean4:   \00", align 1
@.str.483 = private unnamed_addr constant [13 x i8] c"Boolean5:   \00", align 1
@.str.484 = private unnamed_addr constant [13 x i8] c"Boolean6:   \00", align 1
@.str.485 = private unnamed_addr constant [13 x i8] c"Boolean7:   \00", align 1
@.str.486 = private unnamed_addr constant [13 x i8] c"Boolean8:   \00", align 1
@.str.487 = private unnamed_addr constant [13 x i8] c"Boolean9:   \00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"Char default output field\00", align 1
@.str.357 = private unnamed_addr constant [15 x i8] c"Character10:  \00", align 1
@.str.358 = private unnamed_addr constant [15 x i8] c"Character11:  \00", align 1
@.str.359 = private unnamed_addr constant [15 x i8] c"Character12:  \00", align 1
@.str.360 = private unnamed_addr constant [15 x i8] c"Character13:  \00", align 1
@.str.361 = private unnamed_addr constant [15 x i8] c"Character14:  \00", align 1
@.str.362 = private unnamed_addr constant [15 x i8] c"Character15:  \00", align 1
@.str.363 = private unnamed_addr constant [15 x i8] c"Character16:  \00", align 1
@.str.364 = private unnamed_addr constant [15 x i8] c"Character17:  \00", align 1
@.str.365 = private unnamed_addr constant [15 x i8] c"Character18:  \00", align 1
@.str.366 = private unnamed_addr constant [15 x i8] c"Character19:  \00", align 1
@.str.343 = private unnamed_addr constant [15 x i8] c"Character1:   \00", align 1
@.str.369 = private unnamed_addr constant [15 x i8] c"Character20:  \00", align 1
@.str.371 = private unnamed_addr constant [15 x i8] c"Character21:  \00", align 1
@.str.372 = private unnamed_addr constant [15 x i8] c"Character22:  \00", align 1
@.str.373 = private unnamed_addr constant [15 x i8] c"Character23:  \00", align 1
@.str.374 = private unnamed_addr constant [15 x i8] c"Character24:  \00", align 1
@.str.375 = private unnamed_addr constant [15 x i8] c"Character25:  \00", align 1
@.str.376 = private unnamed_addr constant [15 x i8] c"Character26:  \00", align 1
@.str.377 = private unnamed_addr constant [15 x i8] c"Character27:  \00", align 1
@.str.378 = private unnamed_addr constant [15 x i8] c"Character28:  \00", align 1
@.str.379 = private unnamed_addr constant [15 x i8] c"Character29:  \00", align 1
@.str.345 = private unnamed_addr constant [15 x i8] c"Character2:   \00", align 1
@.str.380 = private unnamed_addr constant [15 x i8] c"Character30:  \00", align 1
@.str.347 = private unnamed_addr constant [15 x i8] c"Character3:   \00", align 1
@.str.381 = private unnamed_addr constant [15 x i8] c"Character40:  \00", align 1
@.str.382 = private unnamed_addr constant [15 x i8] c"Character41:  \00", align 1
@.str.383 = private unnamed_addr constant [15 x i8] c"Character42:  \00", align 1
@.str.384 = private unnamed_addr constant [15 x i8] c"Character43:  \00", align 1
@.str.385 = private unnamed_addr constant [15 x i8] c"Character44:  \00", align 1
@.str.387 = private unnamed_addr constant [15 x i8] c"Character45:  \00", align 1
@.str.389 = private unnamed_addr constant [15 x i8] c"Character46:  \00", align 1
@.str.390 = private unnamed_addr constant [50 x i8] c"Character46: s/b 25 24 23 22 21 20 19 18 17 16 15\00", align 1
@.str.392 = private unnamed_addr constant [14 x i8] c"Character47: \00", align 1
@.str.395 = private unnamed_addr constant [14 x i8] c"Character48: \00", align 1
@.str.400 = private unnamed_addr constant [15 x i8] c"Character49:  \00", align 1
@.str.401 = private unnamed_addr constant [17 x i8] c"Character49: s/b\00", align 1
@.str.349 = private unnamed_addr constant [15 x i8] c"Character4:   \00", align 1
@.str.406 = private unnamed_addr constant [15 x i8] c"Character50:  \00", align 1
@.str.409 = private unnamed_addr constant [15 x i8] c"Character51:  \00", align 1
@.str.411 = private unnamed_addr constant [15 x i8] c"Character52:  \00", align 1
@.str.413 = private unnamed_addr constant [15 x i8] c"Character53:  \00", align 1
@.str.415 = private unnamed_addr constant [15 x i8] c"Character54:  \00", align 1
@.str.417 = private unnamed_addr constant [15 x i8] c"Character55:  \00", align 1
@.str.419 = private unnamed_addr constant [15 x i8] c"Character56:  \00", align 1
@.str.420 = private unnamed_addr constant [15 x i8] c"Character57:  \00", align 1
@.str.421 = private unnamed_addr constant [15 x i8] c"Character58:  \00", align 1
@.str.422 = private unnamed_addr constant [15 x i8] c"Character59:  \00", align 1
@.str.351 = private unnamed_addr constant [15 x i8] c"Character5:   \00", align 1
@.str.423 = private unnamed_addr constant [15 x i8] c"Character61:  \00", align 1
@.str.424 = private unnamed_addr constant [15 x i8] c"Character62:  \00", align 1
@.str.425 = private unnamed_addr constant [15 x i8] c"Character63:  \00", align 1
@.str.426 = private unnamed_addr constant [15 x i8] c"Character64:  \00", align 1
@.str.427 = private unnamed_addr constant [15 x i8] c"Character65:  \00", align 1
@.str.428 = private unnamed_addr constant [15 x i8] c"Character66:  \00", align 1
@.str.429 = private unnamed_addr constant [15 x i8] c"Character67:  \00", align 1
@.str.430 = private unnamed_addr constant [15 x i8] c"Character68:  \00", align 1
@.str.431 = private unnamed_addr constant [15 x i8] c"Character69:  \00", align 1
@.str.353 = private unnamed_addr constant [15 x i8] c"Character6:   \00", align 1
@.str.432 = private unnamed_addr constant [15 x i8] c"Character70:  \00", align 1
@.str.433 = private unnamed_addr constant [15 x i8] c"Character71:  \00", align 1
@.str.435 = private unnamed_addr constant [15 x i8] c"Character72:  \00", align 1
@.str.438 = private unnamed_addr constant [15 x i8] c"Character73:  \00", align 1
@.str.439 = private unnamed_addr constant [15 x i8] c"Character74:  \00", align 1
@.str.440 = private unnamed_addr constant [15 x i8] c"Character75:  \00", align 1
@.str.441 = private unnamed_addr constant [15 x i8] c"Character76:  \00", align 1
@.str.444 = private unnamed_addr constant [15 x i8] c"Character77:  \00", align 1
@.str.445 = private unnamed_addr constant [15 x i8] c"Character78:  \00", align 1
@.str.448 = private unnamed_addr constant [15 x i8] c"Character79:  \00", align 1
@.str.354 = private unnamed_addr constant [15 x i8] c"Character7:   \00", align 1
@.str.449 = private unnamed_addr constant [15 x i8] c"Character80:  \00", align 1
@.str.450 = private unnamed_addr constant [15 x i8] c"Character81:  \00", align 1
@.str.453 = private unnamed_addr constant [15 x i8] c"Character82:  \00", align 1
@.str.454 = private unnamed_addr constant [15 x i8] c"Character83:  \00", align 1
@.str.456 = private unnamed_addr constant [15 x i8] c"Character84:  \00", align 1
@.str.459 = private unnamed_addr constant [15 x i8] c"Character85:  \00", align 1
@.str.461 = private unnamed_addr constant [15 x i8] c"Character86:  \00", align 1
@.str.462 = private unnamed_addr constant [19 x i8] c"Character86:  s/b:\00", align 1
@.str.355 = private unnamed_addr constant [15 x i8] c"Character8:   \00", align 1
@.str.356 = private unnamed_addr constant [15 x i8] c"Character9:   \00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"Control10: \00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"Control10: s/b \00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"Control11: start \00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"Control12: start \00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"Control13: start \00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"Control14: start \00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"Control15: start \00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"Control16: start \00", align 1
@.str.74 = private unnamed_addr constant [18 x i8] c"Control17: start \00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"Control1: \00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"Control2: \00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"Control3: \00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"Control4: \00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"Control5: \00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"Control6: \00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"Control7: \00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"Control8: \00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"Control9: \00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"Integer default output field\00", align 1
@.str.212 = private unnamed_addr constant [14 x i8] c"Integer100:  \00", align 1
@.str.214 = private unnamed_addr constant [13 x i8] c"Integer101: \00", align 1
@.str.216 = private unnamed_addr constant [13 x i8] c"Integer102: \00", align 1
@.str.218 = private unnamed_addr constant [13 x i8] c"Integer103: \00", align 1
@.str.219 = private unnamed_addr constant [13 x i8] c"Integer104: \00", align 1
@.str.221 = private unnamed_addr constant [13 x i8] c"Integer105: \00", align 1
@.str.223 = private unnamed_addr constant [13 x i8] c"Integer106: \00", align 1
@.str.225 = private unnamed_addr constant [13 x i8] c"Integer107: \00", align 1
@.str.227 = private unnamed_addr constant [13 x i8] c"Integer108: \00", align 1
@.str.229 = private unnamed_addr constant [13 x i8] c"Integer109: \00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"Integer10:  \00", align 1
@.str.231 = private unnamed_addr constant [13 x i8] c"Integer110: \00", align 1
@.str.233 = private unnamed_addr constant [13 x i8] c"Integer111: \00", align 1
@.str.235 = private unnamed_addr constant [13 x i8] c"Integer112: \00", align 1
@.str.237 = private unnamed_addr constant [13 x i8] c"Integer113: \00", align 1
@.str.238 = private unnamed_addr constant [13 x i8] c"Integer114: \00", align 1
@.str.240 = private unnamed_addr constant [13 x i8] c"Integer115: \00", align 1
@.str.242 = private unnamed_addr constant [13 x i8] c"Integer116: \00", align 1
@.str.244 = private unnamed_addr constant [13 x i8] c"Integer117: \00", align 1
@.str.245 = private unnamed_addr constant [13 x i8] c"Integer118: \00", align 1
@.str.246 = private unnamed_addr constant [13 x i8] c"Integer119: \00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"Integer11:  \00", align 1
@.str.247 = private unnamed_addr constant [13 x i8] c"Integer120: \00", align 1
@.str.248 = private unnamed_addr constant [13 x i8] c"Integer121: \00", align 1
@.str.249 = private unnamed_addr constant [13 x i8] c"Integer122: \00", align 1
@.str.250 = private unnamed_addr constant [13 x i8] c"Integer123: \00", align 1
@.str.251 = private unnamed_addr constant [13 x i8] c"Integer124: \00", align 1
@.str.252 = private unnamed_addr constant [13 x i8] c"Integer125: \00", align 1
@.str.253 = private unnamed_addr constant [13 x i8] c"Integer126: \00", align 1
@.str.254 = private unnamed_addr constant [13 x i8] c"Integer127: \00", align 1
@.str.255 = private unnamed_addr constant [13 x i8] c"Integer128: \00", align 1
@.str.256 = private unnamed_addr constant [13 x i8] c"Integer129: \00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"Integer12:  \00", align 1
@.str.257 = private unnamed_addr constant [13 x i8] c"Integer130: \00", align 1
@.str.258 = private unnamed_addr constant [13 x i8] c"Integer131: \00", align 1
@.str.259 = private unnamed_addr constant [13 x i8] c"Integer132: \00", align 1
@.str.260 = private unnamed_addr constant [13 x i8] c"Integer133: \00", align 1
@.str.261 = private unnamed_addr constant [13 x i8] c"Integer134: \00", align 1
@.str.262 = private unnamed_addr constant [13 x i8] c"Integer135: \00", align 1
@.str.263 = private unnamed_addr constant [13 x i8] c"Integer136: \00", align 1
@.str.264 = private unnamed_addr constant [13 x i8] c"Integer137: \00", align 1
@.str.265 = private unnamed_addr constant [13 x i8] c"Integer138: \00", align 1
@.str.266 = private unnamed_addr constant [13 x i8] c"Integer139: \00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"Integer13:  \00", align 1
@.str.267 = private unnamed_addr constant [13 x i8] c"Integer140: \00", align 1
@.str.268 = private unnamed_addr constant [13 x i8] c"Integer141: \00", align 1
@.str.269 = private unnamed_addr constant [13 x i8] c"Integer142: \00", align 1
@.str.270 = private unnamed_addr constant [13 x i8] c"Integer143: \00", align 1
@.str.272 = private unnamed_addr constant [13 x i8] c"Integer144: \00", align 1
@.str.274 = private unnamed_addr constant [13 x i8] c"Integer145: \00", align 1
@.str.275 = private unnamed_addr constant [13 x i8] c"Integer146: \00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"Integer14:  \00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"Integer15:  \00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"Integer16:  \00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"Integer17:  \00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"Integer18:  \00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"Integer19:  \00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"Integer1:   \00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"Integer20:  \00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"Integer21:  \00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"Integer22:  \00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"Integer23:  \00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"Integer24:  \00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"Integer25:  \00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c"Integer26:  \00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"Integer27:  \00", align 1
@.str.116 = private unnamed_addr constant [13 x i8] c"Integer28:  \00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"Integer29:  \00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"Integer2:   \00", align 1
@.str.120 = private unnamed_addr constant [13 x i8] c"Integer30:  \00", align 1
@.str.122 = private unnamed_addr constant [13 x i8] c"Integer31:  \00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"Integer32:  \00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"Integer33:  \00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c"Integer34:  \00", align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"Integer35:  \00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"Integer36:  \00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"Integer37:  \00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"Integer38:  \00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"Integer39:  \00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"Integer3:   \00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"Integer40:  \00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"Integer41:  \00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"Integer42:  \00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"Integer43:  \00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"Integer44:  \00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"Integer45:  \00", align 1
@.str.143 = private unnamed_addr constant [13 x i8] c"Integer46:  \00", align 1
@.str.144 = private unnamed_addr constant [13 x i8] c"Integer47:  \00", align 1
@.str.145 = private unnamed_addr constant [13 x i8] c"Integer48:  \00", align 1
@.str.146 = private unnamed_addr constant [13 x i8] c"Integer49:  \00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"Integer4:   \00", align 1
@.str.147 = private unnamed_addr constant [13 x i8] c"Integer50:  \00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"Integer51:  \00", align 1
@.str.149 = private unnamed_addr constant [13 x i8] c"Integer52:  \00", align 1
@.str.150 = private unnamed_addr constant [13 x i8] c"Integer53:  \00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"Integer54:  \00", align 1
@.str.152 = private unnamed_addr constant [13 x i8] c"Integer55:  \00", align 1
@.str.153 = private unnamed_addr constant [13 x i8] c"Integer56:  \00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"Integer57:  \00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c"Integer58:  \00", align 1
@.str.158 = private unnamed_addr constant [13 x i8] c"Integer59:  \00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"Integer5:   \00", align 1
@.str.160 = private unnamed_addr constant [13 x i8] c"Integer60:  \00", align 1
@.str.162 = private unnamed_addr constant [13 x i8] c"Integer61:  \00", align 1
@.str.164 = private unnamed_addr constant [13 x i8] c"Integer62:  \00", align 1
@.str.166 = private unnamed_addr constant [13 x i8] c"Integer63:  \00", align 1
@.str.167 = private unnamed_addr constant [13 x i8] c"Integer64:  \00", align 1
@.str.169 = private unnamed_addr constant [13 x i8] c"Integer65:  \00", align 1
@.str.171 = private unnamed_addr constant [13 x i8] c"Integer66:  \00", align 1
@.str.172 = private unnamed_addr constant [13 x i8] c"Integer67:  \00", align 1
@.str.174 = private unnamed_addr constant [13 x i8] c"Integer68:  \00", align 1
@.str.176 = private unnamed_addr constant [13 x i8] c"Integer69:  \00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"Integer6:   \00", align 1
@.str.178 = private unnamed_addr constant [12 x i8] c"Integer70: \00", align 1
@.str.180 = private unnamed_addr constant [13 x i8] c"Integer71:  \00", align 1
@.str.181 = private unnamed_addr constant [13 x i8] c"Integer72:  \00", align 1
@.str.182 = private unnamed_addr constant [13 x i8] c"Integer73:  \00", align 1
@.str.183 = private unnamed_addr constant [13 x i8] c"Integer74:  \00", align 1
@.str.184 = private unnamed_addr constant [13 x i8] c"Integer75:  \00", align 1
@.str.185 = private unnamed_addr constant [13 x i8] c"Integer76:  \00", align 1
@.str.186 = private unnamed_addr constant [13 x i8] c"Integer77:  \00", align 1
@.str.187 = private unnamed_addr constant [13 x i8] c"Integer78:  \00", align 1
@.str.188 = private unnamed_addr constant [13 x i8] c"Integer79:  \00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"Integer7:   \00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c"Integer80:  \00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c"Integer81:  \00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"Integer82:  \00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c"Integer83:  \00", align 1
@.str.193 = private unnamed_addr constant [13 x i8] c"Integer84:  \00", align 1
@.str.194 = private unnamed_addr constant [13 x i8] c"Integer85:  \00", align 1
@.str.195 = private unnamed_addr constant [13 x i8] c"Integer86:  \00", align 1
@.str.196 = private unnamed_addr constant [13 x i8] c"Integer87:  \00", align 1
@.str.197 = private unnamed_addr constant [13 x i8] c"Integer88:  \00", align 1
@.str.198 = private unnamed_addr constant [13 x i8] c"Integer89:  \00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"Integer8:   \00", align 1
@.str.199 = private unnamed_addr constant [13 x i8] c"Integer90:  \00", align 1
@.str.200 = private unnamed_addr constant [13 x i8] c"Integer91:  \00", align 1
@.str.201 = private unnamed_addr constant [13 x i8] c"Integer92:  \00", align 1
@.str.202 = private unnamed_addr constant [13 x i8] c"Integer93:  \00", align 1
@.str.203 = private unnamed_addr constant [13 x i8] c"Integer94:  \00", align 1
@.str.204 = private unnamed_addr constant [13 x i8] c"Integer95:  \00", align 1
@.str.206 = private unnamed_addr constant [13 x i8] c"Integer96:  \00", align 1
@.str.208 = private unnamed_addr constant [13 x i8] c"Integer97:  \00", align 1
@.str.209 = private unnamed_addr constant [13 x i8] c"Integer98:  \00", align 1
@.str.210 = private unnamed_addr constant [13 x i8] c"Integer99:  \00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"Integer9:   \00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"Maxint: \00", align 1
@.str.936 = private unnamed_addr constant [13 x i8] c"Pointer10:  \00", align 1
@.str.938 = private unnamed_addr constant [14 x i8] c"Pointer11:   \00", align 1
@.str.940 = private unnamed_addr constant [14 x i8] c"Pointer12:   \00", align 1
@.str.942 = private unnamed_addr constant [13 x i8] c"Pointer13:  \00", align 1
@.str.944 = private unnamed_addr constant [13 x i8] c"Pointer14:  \00", align 1
@.str.945 = private unnamed_addr constant [13 x i8] c"Pointer15:  \00", align 1
@.str.946 = private unnamed_addr constant [13 x i8] c"Pointer16:  \00", align 1
@.str.947 = private unnamed_addr constant [13 x i8] c"Pointer17:  \00", align 1
@.str.948 = private unnamed_addr constant [13 x i8] c"Pointer18:  \00", align 1
@.str.949 = private unnamed_addr constant [13 x i8] c"Pointer19:  \00", align 1
@.str.919 = private unnamed_addr constant [13 x i8] c"Pointer1:   \00", align 1
@.str.950 = private unnamed_addr constant [13 x i8] c"Pointer20:  \00", align 1
@.str.952 = private unnamed_addr constant [13 x i8] c"Pointer21:  \00", align 1
@.str.953 = private unnamed_addr constant [13 x i8] c"Pointer22:  \00", align 1
@.str.954 = private unnamed_addr constant [13 x i8] c"Pointer23:  \00", align 1
@.str.955 = private unnamed_addr constant [13 x i8] c"Pointer24:  \00", align 1
@.str.967 = private unnamed_addr constant [13 x i8] c"Pointer25:  \00", align 1
@.str.921 = private unnamed_addr constant [13 x i8] c"Pointer2:   \00", align 1
@.str.923 = private unnamed_addr constant [13 x i8] c"Pointer3:   \00", align 1
@.str.924 = private unnamed_addr constant [13 x i8] c"Pointer4:   \00", align 1
@.str.926 = private unnamed_addr constant [13 x i8] c"Pointer5:   \00", align 1
@.str.927 = private unnamed_addr constant [13 x i8] c"Pointer6:   \00", align 1
@.str.929 = private unnamed_addr constant [13 x i8] c"Pointer7:   \00", align 1
@.str.931 = private unnamed_addr constant [13 x i8] c"Pointer8:   \00", align 1
@.str.933 = private unnamed_addr constant [13 x i8] c"Pointer9:   \00", align 1
@.str.1131 = private unnamed_addr constant [24 x i8] c"ProcedureFunction10:   \00", align 1
@.str.1133 = private unnamed_addr constant [24 x i8] c"ProcedureFunction11:   \00", align 1
@.str.1134 = private unnamed_addr constant [24 x i8] c"ProcedureFunction12:   \00", align 1
@.str.1135 = private unnamed_addr constant [24 x i8] c"ProcedureFunction13:   \00", align 1
@.str.1107 = private unnamed_addr constant [23 x i8] c"ProcedureFunction1:   \00", align 1
@.str.1109 = private unnamed_addr constant [23 x i8] c"ProcedureFunction2:   \00", align 1
@.str.1111 = private unnamed_addr constant [23 x i8] c"ProcedureFunction3:   \00", align 1
@.str.1114 = private unnamed_addr constant [23 x i8] c"ProcedureFunction4:   \00", align 1
@.str.1116 = private unnamed_addr constant [23 x i8] c"ProcedureFunction5:   \00", align 1
@.str.1117 = private unnamed_addr constant [23 x i8] c"ProcedureFunction6:   \00", align 1
@.str.1119 = private unnamed_addr constant [20 x i8] c"ProcedureFunction7:\00", align 1
@.str.1127 = private unnamed_addr constant [23 x i8] c"ProcedureFunction8:   \00", align 1
@.str.1129 = private unnamed_addr constant [23 x i8] c"ProcedureFunction9:   \00", align 1
@.str.626 = private unnamed_addr constant [10 x i8] c"Rea112:  \00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"Real default output field\00", align 1
@.str.752 = private unnamed_addr constant [10 x i8] c"Real100: \00", align 1
@.str.753 = private unnamed_addr constant [10 x i8] c"Real101: \00", align 1
@.str.754 = private unnamed_addr constant [10 x i8] c"Real102: \00", align 1
@.str.755 = private unnamed_addr constant [10 x i8] c"Real103: \00", align 1
@.str.757 = private unnamed_addr constant [10 x i8] c"Real104: \00", align 1
@.str.759 = private unnamed_addr constant [10 x i8] c"Real105: \00", align 1
@.str.761 = private unnamed_addr constant [10 x i8] c"Real106: \00", align 1
@.str.763 = private unnamed_addr constant [10 x i8] c"Real107: \00", align 1
@.str.765 = private unnamed_addr constant [10 x i8] c"Real108: \00", align 1
@.str.767 = private unnamed_addr constant [10 x i8] c"Real109: \00", align 1
@.str.603 = private unnamed_addr constant [8 x i8] c"Real10:\00", align 1
@.str.769 = private unnamed_addr constant [10 x i8] c"Real110: \00", align 1
@.str.770 = private unnamed_addr constant [10 x i8] c"Real111: \00", align 1
@.str.772 = private unnamed_addr constant [10 x i8] c"Real112: \00", align 1
@.str.774 = private unnamed_addr constant [10 x i8] c"Real113: \00", align 1
@.str.776 = private unnamed_addr constant [10 x i8] c"Real114: \00", align 1
@.str.778 = private unnamed_addr constant [10 x i8] c"Real115: \00", align 1
@.str.780 = private unnamed_addr constant [10 x i8] c"Real116: \00", align 1
@.str.782 = private unnamed_addr constant [10 x i8] c"Real117: \00", align 1
@.str.784 = private unnamed_addr constant [10 x i8] c"Real118: \00", align 1
@.str.786 = private unnamed_addr constant [10 x i8] c"Real119: \00", align 1
@.str.624 = private unnamed_addr constant [10 x i8] c"Real11:  \00", align 1
@.str.788 = private unnamed_addr constant [10 x i8] c"Real120: \00", align 1
@.str.790 = private unnamed_addr constant [10 x i8] c"Real121: \00", align 1
@.str.792 = private unnamed_addr constant [10 x i8] c"Real122: \00", align 1
@.str.794 = private unnamed_addr constant [10 x i8] c"Real123: \00", align 1
@.str.796 = private unnamed_addr constant [10 x i8] c"Real124: \00", align 1
@.str.797 = private unnamed_addr constant [10 x i8] c"Real125: \00", align 1
@.str.798 = private unnamed_addr constant [10 x i8] c"Real126: \00", align 1
@.str.799 = private unnamed_addr constant [10 x i8] c"Real127: \00", align 1
@.str.800 = private unnamed_addr constant [10 x i8] c"Real128: \00", align 1
@.str.801 = private unnamed_addr constant [10 x i8] c"Real129: \00", align 1
@.str.802 = private unnamed_addr constant [10 x i8] c"Real130: \00", align 1
@.str.803 = private unnamed_addr constant [10 x i8] c"Real131: \00", align 1
@.str.804 = private unnamed_addr constant [10 x i8] c"Real132: \00", align 1
@.str.805 = private unnamed_addr constant [10 x i8] c"Real133: \00", align 1
@.str.806 = private unnamed_addr constant [10 x i8] c"Real134: \00", align 1
@.str.807 = private unnamed_addr constant [10 x i8] c"Real135: \00", align 1
@.str.808 = private unnamed_addr constant [10 x i8] c"Real136: \00", align 1
@.str.809 = private unnamed_addr constant [10 x i8] c"Real137: \00", align 1
@.str.810 = private unnamed_addr constant [10 x i8] c"Real138: \00", align 1
@.str.811 = private unnamed_addr constant [10 x i8] c"Real139: \00", align 1
@.str.628 = private unnamed_addr constant [10 x i8] c"Real13:  \00", align 1
@.str.812 = private unnamed_addr constant [10 x i8] c"Real140: \00", align 1
@.str.813 = private unnamed_addr constant [10 x i8] c"Real141: \00", align 1
@.str.814 = private unnamed_addr constant [10 x i8] c"Real142: \00", align 1
@.str.815 = private unnamed_addr constant [10 x i8] c"Real143: \00", align 1
@.str.816 = private unnamed_addr constant [10 x i8] c"Real144: \00", align 1
@.str.817 = private unnamed_addr constant [10 x i8] c"Real145: \00", align 1
@.str.818 = private unnamed_addr constant [10 x i8] c"Real146: \00", align 1
@.str.820 = private unnamed_addr constant [10 x i8] c"Real147  \00", align 1
@.str.822 = private unnamed_addr constant [10 x i8] c"Real148: \00", align 1
@.str.824 = private unnamed_addr constant [10 x i8] c"Real149: \00", align 1
@.str.630 = private unnamed_addr constant [10 x i8] c"Real14:  \00", align 1
@.str.826 = private unnamed_addr constant [10 x i8] c"Real150: \00", align 1
@.str.828 = private unnamed_addr constant [10 x i8] c"Real151: \00", align 1
@.str.829 = private unnamed_addr constant [10 x i8] c"Real152: \00", align 1
@.str.831 = private unnamed_addr constant [10 x i8] c"Real153: \00", align 1
@.str.833 = private unnamed_addr constant [10 x i8] c"Real154: \00", align 1
@.str.835 = private unnamed_addr constant [10 x i8] c"Real155: \00", align 1
@.str.837 = private unnamed_addr constant [11 x i8] c"Real156:  \00", align 1
@.str.839 = private unnamed_addr constant [10 x i8] c"Real157: \00", align 1
@.str.632 = private unnamed_addr constant [10 x i8] c"Real15:  \00", align 1
@.str.633 = private unnamed_addr constant [10 x i8] c"Real16:  \00", align 1
@.str.634 = private unnamed_addr constant [10 x i8] c"Real17:  \00", align 1
@.str.635 = private unnamed_addr constant [10 x i8] c"Real18:  \00", align 1
@.str.636 = private unnamed_addr constant [10 x i8] c"Real19:  \00", align 1
@.str.571 = private unnamed_addr constant [10 x i8] c"Real1:   \00", align 1
@.str.637 = private unnamed_addr constant [10 x i8] c"Real20:  \00", align 1
@.str.638 = private unnamed_addr constant [10 x i8] c"Real21:  \00", align 1
@.str.639 = private unnamed_addr constant [10 x i8] c"Real22:  \00", align 1
@.str.640 = private unnamed_addr constant [10 x i8] c"Real23:  \00", align 1
@.str.641 = private unnamed_addr constant [10 x i8] c"Real24:  \00", align 1
@.str.642 = private unnamed_addr constant [10 x i8] c"Real25:  \00", align 1
@.str.643 = private unnamed_addr constant [10 x i8] c"Real26:  \00", align 1
@.str.644 = private unnamed_addr constant [10 x i8] c"Real27:  \00", align 1
@.str.645 = private unnamed_addr constant [10 x i8] c"Real28:  \00", align 1
@.str.646 = private unnamed_addr constant [10 x i8] c"Real29:  \00", align 1
@.str.573 = private unnamed_addr constant [10 x i8] c"Real2:   \00", align 1
@.str.648 = private unnamed_addr constant [10 x i8] c"Real30:  \00", align 1
@.str.650 = private unnamed_addr constant [10 x i8] c"Real31:  \00", align 1
@.str.652 = private unnamed_addr constant [10 x i8] c"Real32:  \00", align 1
@.str.654 = private unnamed_addr constant [10 x i8] c"Real33:  \00", align 1
@.str.656 = private unnamed_addr constant [10 x i8] c"Real34:  \00", align 1
@.str.658 = private unnamed_addr constant [10 x i8] c"Real35:  \00", align 1
@.str.660 = private unnamed_addr constant [10 x i8] c"Real36:  \00", align 1
@.str.662 = private unnamed_addr constant [10 x i8] c"Real37:  \00", align 1
@.str.664 = private unnamed_addr constant [10 x i8] c"Real38:  \00", align 1
@.str.665 = private unnamed_addr constant [10 x i8] c"Real39:  \00", align 1
@.str.575 = private unnamed_addr constant [10 x i8] c"Real3:   \00", align 1
@.str.667 = private unnamed_addr constant [10 x i8] c"Real40:  \00", align 1
@.str.669 = private unnamed_addr constant [10 x i8] c"Real41:  \00", align 1
@.str.671 = private unnamed_addr constant [10 x i8] c"Real42:  \00", align 1
@.str.673 = private unnamed_addr constant [10 x i8] c"Real43:  \00", align 1
@.str.674 = private unnamed_addr constant [10 x i8] c"Real44:  \00", align 1
@.str.675 = private unnamed_addr constant [10 x i8] c"Real45:  \00", align 1
@.str.676 = private unnamed_addr constant [10 x i8] c"Real46:  \00", align 1
@.str.677 = private unnamed_addr constant [10 x i8] c"Real47:  \00", align 1
@.str.678 = private unnamed_addr constant [10 x i8] c"Real48:  \00", align 1
@.str.679 = private unnamed_addr constant [10 x i8] c"Real49:  \00", align 1
@.str.577 = private unnamed_addr constant [10 x i8] c"Real4:   \00", align 1
@.str.680 = private unnamed_addr constant [10 x i8] c"Real50:  \00", align 1
@.str.681 = private unnamed_addr constant [10 x i8] c"Real51:  \00", align 1
@.str.682 = private unnamed_addr constant [10 x i8] c"Real52:  \00", align 1
@.str.683 = private unnamed_addr constant [10 x i8] c"Real53:  \00", align 1
@.str.684 = private unnamed_addr constant [10 x i8] c"Real54:  \00", align 1
@.str.685 = private unnamed_addr constant [10 x i8] c"Real55:  \00", align 1
@.str.686 = private unnamed_addr constant [10 x i8] c"Real56:  \00", align 1
@.str.687 = private unnamed_addr constant [10 x i8] c"Real57:  \00", align 1
@.str.689 = private unnamed_addr constant [10 x i8] c"Real58:  \00", align 1
@.str.691 = private unnamed_addr constant [10 x i8] c"Real59:  \00", align 1
@.str.579 = private unnamed_addr constant [10 x i8] c"Real5:   \00", align 1
@.str.693 = private unnamed_addr constant [10 x i8] c"Real60:  \00", align 1
@.str.695 = private unnamed_addr constant [10 x i8] c"Real61:  \00", align 1
@.str.697 = private unnamed_addr constant [10 x i8] c"Real62:  \00", align 1
@.str.699 = private unnamed_addr constant [10 x i8] c"Real63:  \00", align 1
@.str.701 = private unnamed_addr constant [10 x i8] c"Real64:  \00", align 1
@.str.703 = private unnamed_addr constant [10 x i8] c"Real65:  \00", align 1
@.str.705 = private unnamed_addr constant [10 x i8] c"Real66:  \00", align 1
@.str.707 = private unnamed_addr constant [10 x i8] c"Real67:  \00", align 1
@.str.709 = private unnamed_addr constant [10 x i8] c"Real68:  \00", align 1
@.str.711 = private unnamed_addr constant [10 x i8] c"Real69:  \00", align 1
@.str.581 = private unnamed_addr constant [10 x i8] c"Real6:   \00", align 1
@.str.712 = private unnamed_addr constant [10 x i8] c"Real70:  \00", align 1
@.str.714 = private unnamed_addr constant [10 x i8] c"Real71:  \00", align 1
@.str.716 = private unnamed_addr constant [10 x i8] c"Real72:  \00", align 1
@.str.718 = private unnamed_addr constant [10 x i8] c"Real73:  \00", align 1
@.str.720 = private unnamed_addr constant [10 x i8] c"Real74:  \00", align 1
@.str.722 = private unnamed_addr constant [10 x i8] c"Real75:  \00", align 1
@.str.724 = private unnamed_addr constant [10 x i8] c"Real76:  \00", align 1
@.str.725 = private unnamed_addr constant [10 x i8] c"Real77:  \00", align 1
@.str.727 = private unnamed_addr constant [10 x i8] c"Real78:  \00", align 1
@.str.729 = private unnamed_addr constant [10 x i8] c"Real79:  \00", align 1
@.str.583 = private unnamed_addr constant [10 x i8] c"Real7:   \00", align 1
@.str.731 = private unnamed_addr constant [10 x i8] c"Real80:  \00", align 1
@.str.733 = private unnamed_addr constant [10 x i8] c"Real81:  \00", align 1
@.str.734 = private unnamed_addr constant [10 x i8] c"Real82:  \00", align 1
@.str.735 = private unnamed_addr constant [10 x i8] c"Real83:  \00", align 1
@.str.736 = private unnamed_addr constant [10 x i8] c"Real84:  \00", align 1
@.str.737 = private unnamed_addr constant [10 x i8] c"Real85:  \00", align 1
@.str.738 = private unnamed_addr constant [10 x i8] c"Real86:  \00", align 1
@.str.739 = private unnamed_addr constant [10 x i8] c"Real87:  \00", align 1
@.str.740 = private unnamed_addr constant [10 x i8] c"Real88:  \00", align 1
@.str.741 = private unnamed_addr constant [10 x i8] c"Real89:  \00", align 1
@.str.585 = private unnamed_addr constant [10 x i8] c"Real8:   \00", align 1
@.str.742 = private unnamed_addr constant [10 x i8] c"Real90:  \00", align 1
@.str.743 = private unnamed_addr constant [10 x i8] c"Real91:  \00", align 1
@.str.744 = private unnamed_addr constant [10 x i8] c"Real92:  \00", align 1
@.str.745 = private unnamed_addr constant [10 x i8] c"Real93:  \00", align 1
@.str.746 = private unnamed_addr constant [10 x i8] c"Real94:  \00", align 1
@.str.747 = private unnamed_addr constant [10 x i8] c"Real95:  \00", align 1
@.str.748 = private unnamed_addr constant [10 x i8] c"Real96:  \00", align 1
@.str.749 = private unnamed_addr constant [10 x i8] c"Real97:  \00", align 1
@.str.750 = private unnamed_addr constant [10 x i8] c"Real98:  \00", align 1
@.str.751 = private unnamed_addr constant [10 x i8] c"Real99:  \00", align 1
@.str.587 = private unnamed_addr constant [7 x i8] c"Real9:\00", align 1
@.str.1072 = private unnamed_addr constant [12 x i8] c"Record10:  \00", align 1
@.str.1075 = private unnamed_addr constant [12 x i8] c"Record11:  \00", align 1
@.str.1077 = private unnamed_addr constant [12 x i8] c"Record12:  \00", align 1
@.str.1079 = private unnamed_addr constant [12 x i8] c"Record13:  \00", align 1
@.str.1081 = private unnamed_addr constant [12 x i8] c"Record14:  \00", align 1
@.str.1083 = private unnamed_addr constant [12 x i8] c"Record15:  \00", align 1
@.str.1085 = private unnamed_addr constant [12 x i8] c"Record16:  \00", align 1
@.str.1087 = private unnamed_addr constant [12 x i8] c"Record17:  \00", align 1
@.str.1089 = private unnamed_addr constant [12 x i8] c"Record18:  \00", align 1
@.str.1091 = private unnamed_addr constant [12 x i8] c"Record19:  \00", align 1
@.str.1050 = private unnamed_addr constant [12 x i8] c"Record1:   \00", align 1
@.str.1093 = private unnamed_addr constant [12 x i8] c"Record20:  \00", align 1
@.str.1095 = private unnamed_addr constant [12 x i8] c"Record21:  \00", align 1
@.str.1097 = private unnamed_addr constant [12 x i8] c"Record22:  \00", align 1
@.str.1099 = private unnamed_addr constant [12 x i8] c"Record23:  \00", align 1
@.str.1100 = private unnamed_addr constant [12 x i8] c"Record24:  \00", align 1
@.str.1101 = private unnamed_addr constant [12 x i8] c"Record25:  \00", align 1
@.str.1103 = private unnamed_addr constant [12 x i8] c"Record26:  \00", align 1
@.str.1105 = private unnamed_addr constant [12 x i8] c"Record27:  \00", align 1
@.str.1057 = private unnamed_addr constant [12 x i8] c"Record2:   \00", align 1
@.str.1058 = private unnamed_addr constant [12 x i8] c"Record3:   \00", align 1
@.str.1060 = private unnamed_addr constant [12 x i8] c"Record4:   \00", align 1
@.str.1062 = private unnamed_addr constant [12 x i8] c"Record5:   \00", align 1
@.str.1064 = private unnamed_addr constant [12 x i8] c"Record6:   \00", align 1
@.str.1066 = private unnamed_addr constant [12 x i8] c"Record7:   \00", align 1
@.str.1068 = private unnamed_addr constant [12 x i8] c"Record8:   \00", align 1
@.str.1070 = private unnamed_addr constant [12 x i8] c"Record9:   \00", align 1
@.str.556 = private unnamed_addr constant [12 x i8] c"Scalar10:  \00", align 1
@.str.557 = private unnamed_addr constant [12 x i8] c"Scalar11:  \00", align 1
@.str.558 = private unnamed_addr constant [12 x i8] c"Scalar12:  \00", align 1
@.str.559 = private unnamed_addr constant [12 x i8] c"Scalar13:  \00", align 1
@.str.560 = private unnamed_addr constant [12 x i8] c"Scalar14:  \00", align 1
@.str.561 = private unnamed_addr constant [12 x i8] c"Scalar15:  \00", align 1
@.str.562 = private unnamed_addr constant [12 x i8] c"Scalar16:  \00", align 1
@.str.563 = private unnamed_addr constant [12 x i8] c"Scalar17:  \00", align 1
@.str.564 = private unnamed_addr constant [12 x i8] c"Scalar18:  \00", align 1
@.str.565 = private unnamed_addr constant [12 x i8] c"Scalar19:  \00", align 1
@.str.547 = private unnamed_addr constant [12 x i8] c"Scalar1:   \00", align 1
@.str.566 = private unnamed_addr constant [12 x i8] c"Scalar20:  \00", align 1
@.str.568 = private unnamed_addr constant [12 x i8] c"Scalar21:  \00", align 1
@.str.548 = private unnamed_addr constant [12 x i8] c"Scalar2:   \00", align 1
@.str.549 = private unnamed_addr constant [12 x i8] c"Scalar3:   \00", align 1
@.str.550 = private unnamed_addr constant [12 x i8] c"Scalar4:   \00", align 1
@.str.551 = private unnamed_addr constant [12 x i8] c"Scalar5:   \00", align 1
@.str.552 = private unnamed_addr constant [12 x i8] c"Scalar6:   \00", align 1
@.str.553 = private unnamed_addr constant [12 x i8] c"Scalar7:   \00", align 1
@.str.554 = private unnamed_addr constant [12 x i8] c"Scalar8:   \00", align 1
@.str.555 = private unnamed_addr constant [12 x i8] c"Scalar9:   \00", align 1
@.str.855 = private unnamed_addr constant [8 x i8] c"Set10: \00", align 1
@.str.856 = private unnamed_addr constant [8 x i8] c"Set11: \00", align 1
@.str.857 = private unnamed_addr constant [8 x i8] c"Set12: \00", align 1
@.str.858 = private unnamed_addr constant [8 x i8] c"Set13: \00", align 1
@.str.859 = private unnamed_addr constant [8 x i8] c"Set14: \00", align 1
@.str.860 = private unnamed_addr constant [8 x i8] c"Set15: \00", align 1
@.str.862 = private unnamed_addr constant [8 x i8] c"Set16: \00", align 1
@.str.864 = private unnamed_addr constant [8 x i8] c"Set17: \00", align 1
@.str.866 = private unnamed_addr constant [8 x i8] c"Set18: \00", align 1
@.str.868 = private unnamed_addr constant [8 x i8] c"Set19: \00", align 1
@.str.841 = private unnamed_addr constant [8 x i8] c"Set1:  \00", align 1
@.str.870 = private unnamed_addr constant [8 x i8] c"Set20: \00", align 1
@.str.871 = private unnamed_addr constant [8 x i8] c"Set21: \00", align 1
@.str.872 = private unnamed_addr constant [8 x i8] c"Set22: \00", align 1
@.str.873 = private unnamed_addr constant [8 x i8] c"Set23: \00", align 1
@.str.874 = private unnamed_addr constant [8 x i8] c"Set24: \00", align 1
@.str.875 = private unnamed_addr constant [8 x i8] c"Set25: \00", align 1
@.str.876 = private unnamed_addr constant [8 x i8] c"Set26: \00", align 1
@.str.877 = private unnamed_addr constant [8 x i8] c"Set27: \00", align 1
@.str.878 = private unnamed_addr constant [8 x i8] c"Set28: \00", align 1
@.str.879 = private unnamed_addr constant [8 x i8] c"Set29: \00", align 1
@.str.844 = private unnamed_addr constant [8 x i8] c"Set2:  \00", align 1
@.str.880 = private unnamed_addr constant [8 x i8] c"Set30: \00", align 1
@.str.882 = private unnamed_addr constant [8 x i8] c"Set31: \00", align 1
@.str.884 = private unnamed_addr constant [8 x i8] c"Set32: \00", align 1
@.str.885 = private unnamed_addr constant [8 x i8] c"Set33: \00", align 1
@.str.886 = private unnamed_addr constant [8 x i8] c"Set34: \00", align 1
@.str.887 = private unnamed_addr constant [8 x i8] c"Set35: \00", align 1
@.str.888 = private unnamed_addr constant [8 x i8] c"Set36: \00", align 1
@.str.889 = private unnamed_addr constant [8 x i8] c"Set37: \00", align 1
@.str.890 = private unnamed_addr constant [8 x i8] c"Set38: \00", align 1
@.str.891 = private unnamed_addr constant [8 x i8] c"Set39: \00", align 1
@.str.846 = private unnamed_addr constant [8 x i8] c"Set3:  \00", align 1
@.str.892 = private unnamed_addr constant [8 x i8] c"Set40: \00", align 1
@.str.893 = private unnamed_addr constant [8 x i8] c"Set41: \00", align 1
@.str.894 = private unnamed_addr constant [8 x i8] c"Set42: \00", align 1
@.str.895 = private unnamed_addr constant [8 x i8] c"Set43: \00", align 1
@.str.896 = private unnamed_addr constant [8 x i8] c"Set44: \00", align 1
@.str.897 = private unnamed_addr constant [8 x i8] c"Set45: \00", align 1
@.str.899 = private unnamed_addr constant [8 x i8] c"Set46: \00", align 1
@.str.901 = private unnamed_addr constant [8 x i8] c"Set47: \00", align 1
@.str.903 = private unnamed_addr constant [8 x i8] c"Set48: \00", align 1
@.str.905 = private unnamed_addr constant [8 x i8] c"Set49: \00", align 1
@.str.848 = private unnamed_addr constant [8 x i8] c"Set4:  \00", align 1
@.str.906 = private unnamed_addr constant [8 x i8] c"Set50: \00", align 1
@.str.907 = private unnamed_addr constant [8 x i8] c"Set51: \00", align 1
@.str.908 = private unnamed_addr constant [8 x i8] c"Set52: \00", align 1
@.str.909 = private unnamed_addr constant [8 x i8] c"Set53: \00", align 1
@.str.910 = private unnamed_addr constant [8 x i8] c"Set54: \00", align 1
@.str.911 = private unnamed_addr constant [8 x i8] c"Set55: \00", align 1
@.str.912 = private unnamed_addr constant [8 x i8] c"Set56: \00", align 1
@.str.913 = private unnamed_addr constant [8 x i8] c"Set57: \00", align 1
@.str.914 = private unnamed_addr constant [8 x i8] c"Set58: \00", align 1
@.str.915 = private unnamed_addr constant [8 x i8] c"Set59: \00", align 1
@.str.850 = private unnamed_addr constant [8 x i8] c"Set5:  \00", align 1
@.str.916 = private unnamed_addr constant [8 x i8] c"Set60: \00", align 1
@.str.851 = private unnamed_addr constant [8 x i8] c"Set6:  \00", align 1
@.str.852 = private unnamed_addr constant [8 x i8] c"Set7:  \00", align 1
@.str.853 = private unnamed_addr constant [8 x i8] c"Set8:  \00", align 1
@.str.854 = private unnamed_addr constant [8 x i8] c"Set9:  \00", align 1
@.str.286 = private unnamed_addr constant [14 x i8] c"Subrange10:  \00", align 1
@.str.287 = private unnamed_addr constant [14 x i8] c"Subrange11:  \00", align 1
@.str.288 = private unnamed_addr constant [14 x i8] c"Subrange12:  \00", align 1
@.str.289 = private unnamed_addr constant [14 x i8] c"Subrange13:  \00", align 1
@.str.290 = private unnamed_addr constant [14 x i8] c"Subrange14:  \00", align 1
@.str.291 = private unnamed_addr constant [14 x i8] c"Subrange15:  \00", align 1
@.str.292 = private unnamed_addr constant [14 x i8] c"Subrange16:  \00", align 1
@.str.293 = private unnamed_addr constant [14 x i8] c"Subrange17:  \00", align 1
@.str.294 = private unnamed_addr constant [14 x i8] c"Subrange18:  \00", align 1
@.str.295 = private unnamed_addr constant [14 x i8] c"Subrange19:  \00", align 1
@.str.277 = private unnamed_addr constant [14 x i8] c"Subrange1:   \00", align 1
@.str.296 = private unnamed_addr constant [14 x i8] c"Subrange20:  \00", align 1
@.str.297 = private unnamed_addr constant [14 x i8] c"Subrange21:  \00", align 1
@.str.298 = private unnamed_addr constant [14 x i8] c"Subrange22:  \00", align 1
@.str.299 = private unnamed_addr constant [14 x i8] c"Subrange23:  \00", align 1
@.str.300 = private unnamed_addr constant [14 x i8] c"Subrange24:  \00", align 1
@.str.301 = private unnamed_addr constant [14 x i8] c"Subrange25:  \00", align 1
@.str.302 = private unnamed_addr constant [14 x i8] c"Subrange26:  \00", align 1
@.str.303 = private unnamed_addr constant [14 x i8] c"Subrange27:  \00", align 1
@.str.304 = private unnamed_addr constant [14 x i8] c"Subrange28:  \00", align 1
@.str.305 = private unnamed_addr constant [14 x i8] c"Subrange29:  \00", align 1
@.str.278 = private unnamed_addr constant [14 x i8] c"Subrange2:   \00", align 1
@.str.306 = private unnamed_addr constant [14 x i8] c"Subrange30:  \00", align 1
@.str.307 = private unnamed_addr constant [14 x i8] c"Subrange31:  \00", align 1
@.str.308 = private unnamed_addr constant [14 x i8] c"Subrange32:  \00", align 1
@.str.309 = private unnamed_addr constant [14 x i8] c"Subrange33:  \00", align 1
@.str.310 = private unnamed_addr constant [14 x i8] c"Subrange34:  \00", align 1
@.str.311 = private unnamed_addr constant [14 x i8] c"Subrange35:  \00", align 1
@.str.312 = private unnamed_addr constant [14 x i8] c"Subrange36:  \00", align 1
@.str.313 = private unnamed_addr constant [14 x i8] c"Subrange37:  \00", align 1
@.str.314 = private unnamed_addr constant [14 x i8] c"Subrange38:  \00", align 1
@.str.315 = private unnamed_addr constant [14 x i8] c"Subrange39:  \00", align 1
@.str.279 = private unnamed_addr constant [14 x i8] c"Subrange3:   \00", align 1
@.str.316 = private unnamed_addr constant [14 x i8] c"Subrange40:  \00", align 1
@.str.317 = private unnamed_addr constant [14 x i8] c"Subrange41:  \00", align 1
@.str.318 = private unnamed_addr constant [14 x i8] c"Subrange42:  \00", align 1
@.str.319 = private unnamed_addr constant [14 x i8] c"Subrange43:  \00", align 1
@.str.320 = private unnamed_addr constant [14 x i8] c"Subrange44:  \00", align 1
@.str.321 = private unnamed_addr constant [14 x i8] c"Subrange45:  \00", align 1
@.str.322 = private unnamed_addr constant [14 x i8] c"Subrange46:  \00", align 1
@.str.323 = private unnamed_addr constant [14 x i8] c"Subrange47:  \00", align 1
@.str.324 = private unnamed_addr constant [14 x i8] c"Subrange48:  \00", align 1
@.str.325 = private unnamed_addr constant [14 x i8] c"Subrange49:  \00", align 1
@.str.280 = private unnamed_addr constant [14 x i8] c"Subrange4:   \00", align 1
@.str.326 = private unnamed_addr constant [14 x i8] c"Subrange50:  \00", align 1
@.str.327 = private unnamed_addr constant [14 x i8] c"Subrange51:  \00", align 1
@.str.328 = private unnamed_addr constant [14 x i8] c"Subrange52:  \00", align 1
@.str.329 = private unnamed_addr constant [14 x i8] c"Subrange53:  \00", align 1
@.str.330 = private unnamed_addr constant [14 x i8] c"Subrange54:  \00", align 1
@.str.331 = private unnamed_addr constant [14 x i8] c"Subrange55:  \00", align 1
@.str.332 = private unnamed_addr constant [14 x i8] c"Subrange56:  \00", align 1
@.str.333 = private unnamed_addr constant [14 x i8] c"Subrange57:  \00", align 1
@.str.334 = private unnamed_addr constant [14 x i8] c"Subrange58:  \00", align 1
@.str.335 = private unnamed_addr constant [14 x i8] c"Subrange59:  \00", align 1
@.str.281 = private unnamed_addr constant [14 x i8] c"Subrange5:   \00", align 1
@.str.336 = private unnamed_addr constant [14 x i8] c"Subrange60:  \00", align 1
@.str.337 = private unnamed_addr constant [14 x i8] c"Subrange61:  \00", align 1
@.str.338 = private unnamed_addr constant [14 x i8] c"Subrange62:  \00", align 1
@.str.339 = private unnamed_addr constant [14 x i8] c"Subrange63:  \00", align 1
@.str.340 = private unnamed_addr constant [14 x i8] c"Subrange64:  \00", align 1
@.str.341 = private unnamed_addr constant [14 x i8] c"Subrange65:  \00", align 1
@.str.282 = private unnamed_addr constant [14 x i8] c"Subrange6:   \00", align 1
@.str.283 = private unnamed_addr constant [14 x i8] c"Subrange7:   \00", align 1
@.str.284 = private unnamed_addr constant [14 x i8] c"Subrange8:   \00", align 1
@.str.285 = private unnamed_addr constant [14 x i8] c"Subrange9:   \00", align 1
@.str.33 = private unnamed_addr constant [57 x i8] c"The following are implementation defined characteristics\00", align 1
@.str.869 = private unnamed_addr constant [11 x i8] c"_b_______j\00", align 1
@.str.1055 = private unnamed_addr constant [11 x i8] c"_bcde___i_\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_input\00", align 1
@.str.867 = private unnamed_addr constant [11 x i8] c"a______h__\00", align 1
@.str.881 = private unnamed_addr constant [11 x i8] c"a___e_____\00", align 1
@.str.863 = private unnamed_addr constant [21 x i8] c"a_c_e_g_i_k_m_o_q_s_\00", align 1
@.str.865 = private unnamed_addr constant [11 x i8] c"a_cd_fg___\00", align 1
@.str.1125 = private unnamed_addr constant [11 x i8] c"abcd___h__\00", align 1
@.str.402 = private unnamed_addr constant [8 x i8] c"crapola\00", align 1
@.str.399 = private unnamed_addr constant [11 x i8] c"crapola   \00", align 1
@.str.951 = private unnamed_addr constant [14 x i8] c"done s/b done\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"fa\00", align 1
@.str.534 = private unnamed_addr constant [4 x i8] c"fal\00", align 1
@.str.533 = private unnamed_addr constant [5 x i8] c"fals\00", align 1
@.str.532 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.442 = private unnamed_addr constant [6 x i8] c"fark \00", align 1
@.str.446 = private unnamed_addr constant [6 x i8] c"farka\00", align 1
@.str.443 = private unnamed_addr constant [6 x i8] c"farks\00", align 1
@.str.447 = private unnamed_addr constant [6 x i8] c"farkz\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"fb\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"fc\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"fe\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"fes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"fi\00", align 1
@.str.404 = private unnamed_addr constant [8 x i8] c"finnork\00", align 1
@.str.398 = private unnamed_addr constant [11 x i8] c"finnork   \00", align 1
@.str.434 = private unnamed_addr constant [8 x i8] c"finoork\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"fp\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"fr\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"frc\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"fst\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"fstc\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"ft\00", align 1
@.str.476 = private unnamed_addr constant [3 x i8] c"he\00", align 1
@.str.475 = private unnamed_addr constant [4 x i8] c"hel\00", align 1
@.str.474 = private unnamed_addr constant [5 x i8] c"hell\00", align 1
@.str.473 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.472 = private unnamed_addr constant [7 x i8] c"hello,\00", align 1
@.str.471 = private unnamed_addr constant [8 x i8] c"hello, \00", align 1
@.str.1038 = private unnamed_addr constant [11 x i8] c"hello, guy\00", align 1
@.str.470 = private unnamed_addr constant [9 x i8] c"hello, w\00", align 1
@.str.469 = private unnamed_addr constant [10 x i8] c"hello, wo\00", align 1
@.str.468 = private unnamed_addr constant [11 x i8] c"hello, wor\00", align 1
@.str.467 = private unnamed_addr constant [12 x i8] c"hello, worl\00", align 1
@.str.466 = private unnamed_addr constant [13 x i8] c"hello, world\00", align 1
@.str.1120 = private unnamed_addr constant [11 x i8] c"help me123\00", align 1
@.str.394 = private unnamed_addr constant [11 x i8] c"junky01234\00", align 1
@.str.934 = private unnamed_addr constant [11 x i8] c"my word is\00", align 1
@.str.436 = private unnamed_addr constant [6 x i8] c"oliab\00", align 1
@.str.437 = private unnamed_addr constant [6 x i8] c"olibb\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"one two three four five \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.368 = private unnamed_addr constant [11 x i8] c"parker    \00", align 1
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
@.str.367 = private unnamed_addr constant [11 x i8] c"porker    \00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.956 = private unnamed_addr constant [4 x i8] c"s/b\00", align 1
@.str.590 = private unnamed_addr constant [39 x i8] c"s/b (note precision dropoff at right):\00", align 1
@.str.567 = private unnamed_addr constant [18 x i8] c"s/b 0 1 2 3 4 5 6\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"s/b 1 2 3 4 5 6 7 8 9 10\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"s/b 10 9 8 7 6 5 4 3 2 1\00", align 1
@.str.1102 = private unnamed_addr constant [26 x i8] c"s/b 10 9 8 7 6 5 4 3 2 76\00", align 1
@.str.937 = private unnamed_addr constant [34 x i8] c"s/b 20 19 18 17 16 15 14 13 12 11\00", align 1
@.str.1048 = private unnamed_addr constant [34 x i8] c"s/b 22 21 20 19 18 17 16 15 14 13\00", align 1
@.str.1044 = private unnamed_addr constant [34 x i8] c"s/b 30 29 28 27 26 25 24 23 22 21\00", align 1
@.str.1046 = private unnamed_addr constant [34 x i8] c"s/b 40 39 38 37 36 35 34 33 32 31\00", align 1
@.str.991 = private unnamed_addr constant [12 x i8] c"s/b 5 4 3 2\00", align 1
@.str.569 = private unnamed_addr constant [18 x i8] c"s/b 6 5 4 3 2 1 0\00", align 1
@.str.988 = private unnamed_addr constant [24 x i8] c"s/b 9 8 7 6 5 4 3 2 1 0\00", align 1
@.str.500 = private unnamed_addr constant [15 x i8] c"s/b false true\00", align 1
@.str.982 = private unnamed_addr constant [24 x i8] c"s/b k j i h g f e d c b\00", align 1
@.str.985 = private unnamed_addr constant [24 x i8] c"s/b p o n m l k j i h g\00", align 1
@.str.502 = private unnamed_addr constant [15 x i8] c"s/b true false\00", align 1
@.str.1028 = private unnamed_addr constant [5 x i8] c"s/b:\00", align 1
@.str.1118 = private unnamed_addr constant [29 x i8] c"s/b:   10 9 8 6 5 4 3 2 1 78\00", align 1
@.str.917 = private unnamed_addr constant [8 x i8] c"set61: \00", align 1
@.str.408 = private unnamed_addr constant [17 x i8] c"seven eight nine\00", align 1
@.str.61 = private unnamed_addr constant [34 x i8] c"six seven eight nine-ten nine-ten\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"stop s/b start stop\00", align 1
@.str.457 = private unnamed_addr constant [17 x i8] c"this is a string\00", align 1
@.str.1073 = private unnamed_addr constant [11 x i8] c"this one ?\00", align 1
@.str.452 = private unnamed_addr constant [7 x i8] c"topcat\00", align 1
@.str.451 = private unnamed_addr constant [7 x i8] c"topnat\00", align 1
@.str.455 = private unnamed_addr constant [7 x i8] c"topzat\00", align 1
@.str.1112 = private unnamed_addr constant [11 x i8] c"total junk\00", align 1
@.str.545 = private unnamed_addr constant [3 x i8] c"tr\00", align 1
@.str.405 = private unnamed_addr constant [6 x i8] c"trash\00", align 1
@.str.397 = private unnamed_addr constant [11 x i8] c"trash     \00", align 1
@.str.544 = private unnamed_addr constant [4 x i8] c"tru\00", align 1
@.str.543 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1051 = private unnamed_addr constant [11 x i8] c"what ? who\00", align 1


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
!70 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 213, baseType: !71, size: 80, elements: !73)
!71 = !DIBasicType(name: "range of char", size: 8, encoding: DW_ATE_unsigned_char)
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
!216 = !DICompositeType(tag: DW_TAG_array_type, file: !0, line: 214, baseType: !217, size: 80, elements: !219)
!217 = !DIBasicType(name: "range of char", size: 8, encoding: DW_ATE_unsigned_char)
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

