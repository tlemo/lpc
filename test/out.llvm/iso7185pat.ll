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
    %t95 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t95, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), i32 19)
    call void @_WriteLn(i8* %t95)
    %t96 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t96, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i32 0, i32 0), i32 17)
    %t97 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t97, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i32 9)
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
028D0798    call void @_WriteChar(i8* %t136, i32 0, i32 0, i8 )
    call void @_WriteString(i8* %t136, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t136)
    %t138 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t138, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.94, i32 0, i32 0), i32 12)
028D06C8    call void @_WriteInteger(i8* %t138, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t138, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t138)
    %t140 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t140, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.96, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t140, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t140, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t140)
    %t141 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t141, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t141, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t141, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t141)
    %t142 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t142, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.100, i32 0, i32 0), i32 12)
    %t144 = load i32, i32* @z
    %t145 = load i32, i32* @y
    %t143 = icmp eq i32 %t144, %t145
    call void @_WriteBool(i8* %t142, i32 5, i32 0, i1 %t143)
    call void @_WriteString(i8* %t142, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t142)
    %t146 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t146, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.101, i32 0, i32 0), i32 12)
    %t148 = load i32, i32* @x
    %t149 = load i32, i32* @y
    %t147 = icmp eq i32 %t148, %t149
    call void @_WriteBool(i8* %t146, i32 5, i32 0, i1 %t147)
    call void @_WriteString(i8* %t146, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t146)
    %t150 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t150, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), i32 12)
    %t152 = load i32, i32* @x
    %t153 = load i32, i32* @y
    %t151 = icmp slt i32 %t152, %t153
    call void @_WriteBool(i8* %t150, i32 5, i32 0, i1 %t151)
    call void @_WriteString(i8* %t150, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t150)
    %t154 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t154, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.103, i32 0, i32 0), i32 12)
    %t156 = load i32, i32* @y
    %t157 = load i32, i32* @x
    %t155 = icmp slt i32 %t156, %t157
    call void @_WriteBool(i8* %t154, i32 5, i32 0, i1 %t155)
    call void @_WriteString(i8* %t154, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t154)
    %t158 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t158, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.104, i32 0, i32 0), i32 12)
    %t160 = load i32, i32* @y
    %t161 = load i32, i32* @x
    %t159 = icmp sgt i32 %t160, %t161
    call void @_WriteBool(i8* %t158, i32 5, i32 0, i1 %t159)
    call void @_WriteString(i8* %t158, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t158)
    %t162 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t162, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.105, i32 0, i32 0), i32 12)
    %t164 = load i32, i32* @x
    %t165 = load i32, i32* @y
    %t163 = icmp sgt i32 %t164, %t165
    call void @_WriteBool(i8* %t162, i32 5, i32 0, i1 %t163)
    call void @_WriteString(i8* %t162, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t162)
    %t166 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t166, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i32 0, i32 0), i32 12)
    %t168 = load i32, i32* @x
    %t169 = load i32, i32* @y
    %t167 = icmp ne i32 %t168, %t169
    call void @_WriteBool(i8* %t166, i32 5, i32 0, i1 %t167)
    call void @_WriteString(i8* %t166, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t166)
    %t170 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t170, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.107, i32 0, i32 0), i32 12)
    %t172 = load i32, i32* @y
    %t173 = load i32, i32* @z
    %t171 = icmp ne i32 %t172, %t173
    call void @_WriteBool(i8* %t170, i32 5, i32 0, i1 %t171)
    call void @_WriteString(i8* %t170, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t170)
    %t174 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t174, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.108, i32 0, i32 0), i32 12)
    %t176 = load i32, i32* @x
    %t177 = load i32, i32* @y
    %t175 = icmp sle i32 %t176, %t177
    call void @_WriteBool(i8* %t174, i32 5, i32 0, i1 %t175)
    call void @_WriteString(i8* %t174, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t174)
    %t178 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t178, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.109, i32 0, i32 0), i32 12)
    %t180 = load i32, i32* @z
    %t181 = load i32, i32* @y
    %t179 = icmp sle i32 %t180, %t181
    call void @_WriteBool(i8* %t178, i32 5, i32 0, i1 %t179)
    call void @_WriteString(i8* %t178, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t178)
    %t182 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t182, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.110, i32 0, i32 0), i32 12)
    %t184 = load i32, i32* @y
    %t185 = load i32, i32* @x
    %t183 = icmp sle i32 %t184, %t185
    call void @_WriteBool(i8* %t182, i32 5, i32 0, i1 %t183)
    call void @_WriteString(i8* %t182, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t182)
    %t186 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t186, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.111, i32 0, i32 0), i32 12)
    %t188 = load i32, i32* @y
    %t189 = load i32, i32* @x
    %t187 = icmp sge i32 %t188, %t189
    call void @_WriteBool(i8* %t186, i32 5, i32 0, i1 %t187)
    call void @_WriteString(i8* %t186, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t186)
    %t190 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t190, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.112, i32 0, i32 0), i32 12)
    %t192 = load i32, i32* @y
    %t193 = load i32, i32* @z
    %t191 = icmp sge i32 %t192, %t193
    call void @_WriteBool(i8* %t190, i32 5, i32 0, i1 %t191)
    call void @_WriteString(i8* %t190, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t190)
    %t194 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t194, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.113, i32 0, i32 0), i32 12)
    %t196 = load i32, i32* @x
    %t197 = load i32, i32* @y
    %t195 = icmp sge i32 %t196, %t197
    call void @_WriteBool(i8* %t194, i32 5, i32 0, i1 %t195)
    call void @_WriteString(i8* %t194, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t194)
    %t198 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t198, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.114, i32 0, i32 0), i32 12)
    store i32 546, i32* @i
    %t199 = load %T_text, %T_text* @output
    %t200 = load i32, i32* @i
    call void @_WriteInteger(i8* %t199, i32 1, i32 0, i32 %t200)
    call void @_WriteString(i8* %t199, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.115, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t199)
    %t201 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t201, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.116, i32 0, i32 0), i32 12)
    %t202 = add i32 56, 34
    call void @_WriteInteger(i8* %t201, i32 1, i32 0, i32 %t202)
    call void @_WriteString(i8* %t201, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.117, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t201)
    %t203 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t203, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.118, i32 0, i32 0), i32 12)
    %t204 = sub i32 56, 34
    call void @_WriteInteger(i8* %t203, i32 1, i32 0, i32 %t204)
    call void @_WriteString(i8* %t203, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t203)
    %t205 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t205, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.120, i32 0, i32 0), i32 12)
    %t206 = mul i32 56, 34
    call void @_WriteInteger(i8* %t205, i32 1, i32 0, i32 %t206)
    call void @_WriteString(i8* %t205, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.121, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t205)
    %t207 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t207, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.122, i32 0, i32 0), i32 12)
    %t208 = sdiv i32 56, 34
    call void @_WriteInteger(i8* %t207, i32 1, i32 0, i32 %t208)
    call void @_WriteString(i8* %t207, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t207)
    %t209 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t209, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.123, i32 0, i32 0), i32 12)
    %t210 = srem i32 56, 34
    call void @_WriteInteger(i8* %t209, i32 1, i32 0, i32 %t210)
    call void @_WriteString(i8* %t209, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t209)
    %t211 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t211, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.124, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t211, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t211, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t211)
    %t212 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t212, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.126, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t212, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t212, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t212)
    %t213 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t213, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.128, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t213, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t213, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.129, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t213)
    %t214 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t214, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.130, i32 0, i32 0), i32 12)
028D0388    call void @_WriteChar(i8* %t214, i32 0, i32 0, i8 )
    call void @_WriteString(i8* %t214, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t214)
    %t215 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t215, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i32 0, i32 0), i32 12)
028D04C0    call void @_WriteInteger(i8* %t215, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t215, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.133, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t215)
    %t216 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t216, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.134, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t216, i32 1, i32 0, i32 768)
    call void @_WriteString(i8* %t216, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.135, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t216)
    %t217 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t217, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t217, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t217, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t217)
    %t218 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t218, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.137, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t218, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t218, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t218)
    %t219 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t219, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.138, i32 0, i32 0), i32 12)
    %t220 = icmp eq i32 56, 56
    call void @_WriteBool(i8* %t219, i32 5, i32 0, i1 %t220)
    call void @_WriteString(i8* %t219, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t219)
    %t221 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t221, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.139, i32 0, i32 0), i32 12)
    %t222 = icmp eq i32 56, 57
    call void @_WriteBool(i8* %t221, i32 5, i32 0, i1 %t222)
    call void @_WriteString(i8* %t221, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t221)
    %t223 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t223, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.140, i32 0, i32 0), i32 12)
    %t224 = icmp slt i32 56, 57
    call void @_WriteBool(i8* %t223, i32 5, i32 0, i1 %t224)
    call void @_WriteString(i8* %t223, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t223)
    %t225 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t225, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141, i32 0, i32 0), i32 12)
    %t226 = icmp slt i32 57, 56
    call void @_WriteBool(i8* %t225, i32 5, i32 0, i1 %t226)
    call void @_WriteString(i8* %t225, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t225)
    %t227 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t227, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.142, i32 0, i32 0), i32 12)
    %t228 = icmp sgt i32 57, 56
    call void @_WriteBool(i8* %t227, i32 5, i32 0, i1 %t228)
    call void @_WriteString(i8* %t227, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t227)
    %t229 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t229, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.143, i32 0, i32 0), i32 12)
    %t230 = icmp sgt i32 56, 57
    call void @_WriteBool(i8* %t229, i32 5, i32 0, i1 %t230)
    call void @_WriteString(i8* %t229, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t229)
    %t231 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t231, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.144, i32 0, i32 0), i32 12)
    %t232 = icmp ne i32 56, 57
    call void @_WriteBool(i8* %t231, i32 5, i32 0, i1 %t232)
    call void @_WriteString(i8* %t231, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t231)
    %t233 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t233, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.145, i32 0, i32 0), i32 12)
    %t234 = icmp ne i32 56, 56
    call void @_WriteBool(i8* %t233, i32 5, i32 0, i1 %t234)
    call void @_WriteString(i8* %t233, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t233)
    %t235 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t235, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.146, i32 0, i32 0), i32 12)
    %t236 = icmp sle i32 55, 500
    call void @_WriteBool(i8* %t235, i32 5, i32 0, i1 %t236)
    call void @_WriteString(i8* %t235, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t235)
    %t237 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t237, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.147, i32 0, i32 0), i32 12)
    %t238 = icmp sle i32 67, 67
    call void @_WriteBool(i8* %t237, i32 5, i32 0, i1 %t238)
    call void @_WriteString(i8* %t237, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t237)
    %t239 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t239, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.148, i32 0, i32 0), i32 12)
    %t240 = icmp sle i32 56, 33
    call void @_WriteBool(i8* %t239, i32 5, i32 0, i1 %t240)
    call void @_WriteString(i8* %t239, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t239)
    %t241 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t241, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.149, i32 0, i32 0), i32 12)
    %t242 = icmp sge i32 645, 4
    call void @_WriteBool(i8* %t241, i32 5, i32 0, i1 %t242)
    call void @_WriteString(i8* %t241, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t241)
    %t243 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t243, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.150, i32 0, i32 0), i32 12)
    %t244 = icmp sge i32 23, 23
    call void @_WriteBool(i8* %t243, i32 5, i32 0, i1 %t244)
    call void @_WriteString(i8* %t243, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t243)
    %t245 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t245, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.151, i32 0, i32 0), i32 12)
    %t246 = icmp sge i32 45, 123
    call void @_WriteBool(i8* %t245, i32 5, i32 0, i1 %t246)
    call void @_WriteString(i8* %t245, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t245)
    %t247 = sub i32 0, 14
    store i32 %t247, i32* @as
    %t248 = sub i32 0, 32
    store i32 %t248, i32* @bs
    %t249 = sub i32 0, 14
    store i32 %t249, i32* @cs
    store i32 20, i32* @ds
    %t250 = sub i32 0, 15
    store i32 %t250, i32* @es
    store i32 2147483647, i32* @gs
    store i32 -2147483647, i32* @hs
    %t251 = sub i32 0, 2147483647
    store i32 %t251, i32* @vnum
    %t252 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t252, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.152, i32 0, i32 0), i32 12)
    %t254 = load i32, i32* @as
    %t255 = load i32, i32* @ds
    %t253 = add i32 %t254, %t255
    call void @_WriteInteger(i8* %t252, i32 1, i32 0, i32 %t253)
    call void @_WriteString(i8* %t252, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t252)
    %t256 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t256, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.153, i32 0, i32 0), i32 12)
    %t258 = load i32, i32* @ds
    %t259 = load i32, i32* @as
    %t257 = add i32 %t258, %t259
    call void @_WriteInteger(i8* %t256, i32 1, i32 0, i32 %t257)
    call void @_WriteString(i8* %t256, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t256)
    %t260 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t260, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.154, i32 0, i32 0), i32 12)
    %t262 = load i32, i32* @bs
    %t263 = load i32, i32* @ds
    %t261 = add i32 %t262, %t263
    call void @_WriteInteger(i8* %t260, i32 1, i32 0, i32 %t261)
    call void @_WriteString(i8* %t260, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.155, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t260)
    %t264 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t264, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.156, i32 0, i32 0), i32 12)
    %t266 = load i32, i32* @as
    %t267 = load i32, i32* @bs
    %t265 = add i32 %t266, %t267
    call void @_WriteInteger(i8* %t264, i32 1, i32 0, i32 %t265)
    call void @_WriteString(i8* %t264, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.157, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t264)
    %t268 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t268, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.158, i32 0, i32 0), i32 12)
    %t270 = load i32, i32* @ds
    %t271 = load i32, i32* @as
    %t269 = sub i32 %t270, %t271
    call void @_WriteInteger(i8* %t268, i32 1, i32 0, i32 %t269)
    call void @_WriteString(i8* %t268, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t268)
    %t272 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t272, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.160, i32 0, i32 0), i32 12)
    %t274 = load i32, i32* @bs
    %t275 = load i32, i32* @ds
    %t273 = sub i32 %t274, %t275
    call void @_WriteInteger(i8* %t272, i32 1, i32 0, i32 %t273)
    call void @_WriteString(i8* %t272, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.161, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t272)
    %t276 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t276, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.162, i32 0, i32 0), i32 12)
    %t278 = load i32, i32* @bs
    %t279 = load i32, i32* @as
    %t277 = sub i32 %t278, %t279
    call void @_WriteInteger(i8* %t276, i32 1, i32 0, i32 %t277)
    call void @_WriteString(i8* %t276, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.163, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t276)
    %t280 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t280, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.164, i32 0, i32 0), i32 12)
    %t282 = load i32, i32* @ds
    %t283 = load i32, i32* @as
    %t281 = mul i32 %t282, %t283
    call void @_WriteInteger(i8* %t280, i32 1, i32 0, i32 %t281)
    call void @_WriteString(i8* %t280, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.165, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t280)
    %t284 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t284, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.166, i32 0, i32 0), i32 12)
    %t286 = load i32, i32* @as
    %t287 = load i32, i32* @ds
    %t285 = mul i32 %t286, %t287
    call void @_WriteInteger(i8* %t284, i32 1, i32 0, i32 %t285)
    call void @_WriteString(i8* %t284, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.165, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t284)
    %t288 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t288, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.167, i32 0, i32 0), i32 12)
    %t290 = load i32, i32* @as
    %t291 = load i32, i32* @bs
    %t289 = mul i32 %t290, %t291
    call void @_WriteInteger(i8* %t288, i32 1, i32 0, i32 %t289)
    call void @_WriteString(i8* %t288, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.168, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t288)
    %t292 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t292, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.169, i32 0, i32 0), i32 12)
    %t294 = load i32, i32* @ds
    %t295 = load i32, i32* @as
    %t293 = sdiv i32 %t294, %t295
    call void @_WriteInteger(i8* %t292, i32 1, i32 0, i32 %t293)
    call void @_WriteString(i8* %t292, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.170, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t292)
    %t296 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t296, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.171, i32 0, i32 0), i32 12)
    %t298 = load i32, i32* @bs
    %t299 = load i32, i32* @ds
    %t297 = sdiv i32 %t298, %t299
    call void @_WriteInteger(i8* %t296, i32 1, i32 0, i32 %t297)
    call void @_WriteString(i8* %t296, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.170, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t296)
    %t300 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t300, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.172, i32 0, i32 0), i32 12)
    %t302 = load i32, i32* @bs
    %t303 = load i32, i32* @as
    %t301 = sdiv i32 %t302, %t303
    call void @_WriteInteger(i8* %t300, i32 1, i32 0, i32 %t301)
    call void @_WriteString(i8* %t300, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.173, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t300)
    %t304 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t304, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.174, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t304, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t304, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.175, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t304)
    %t305 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t305, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.176, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t305, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t305, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.177, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t305)
    %t306 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t306, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.178, i32 0, i32 0), i32 11)
    call void @_WriteInteger(i8* %t306, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t306, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.179, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t306)
    %t307 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t307, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.180, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t307, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t307, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t307)
    %t308 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t308, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.181, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t308, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t308, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t308)
    %t309 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t309, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.182, i32 0, i32 0), i32 12)
    %t311 = load i32, i32* @as
    %t312 = load i32, i32* @cs
    %t310 = icmp eq i32 %t311, %t312
    call void @_WriteBool(i8* %t309, i32 5, i32 0, i1 %t310)
    call void @_WriteString(i8* %t309, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t309)
    %t313 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t313, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.183, i32 0, i32 0), i32 12)
    %t315 = load i32, i32* @as
    %t316 = load i32, i32* @bs
    %t314 = icmp eq i32 %t315, %t316
    call void @_WriteBool(i8* %t313, i32 5, i32 0, i1 %t314)
    call void @_WriteString(i8* %t313, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t313)
    %t317 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t317, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.184, i32 0, i32 0), i32 12)
    %t319 = load i32, i32* @as
    %t320 = load i32, i32* @bs
    %t318 = icmp ne i32 %t319, %t320
    call void @_WriteBool(i8* %t317, i32 5, i32 0, i1 %t318)
    call void @_WriteString(i8* %t317, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t317)
    %t321 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t321, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.185, i32 0, i32 0), i32 12)
    %t323 = load i32, i32* @as
    %t324 = load i32, i32* @cs
    %t322 = icmp ne i32 %t323, %t324
    call void @_WriteBool(i8* %t321, i32 5, i32 0, i1 %t322)
    call void @_WriteString(i8* %t321, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t321)
    %t325 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t325, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.186, i32 0, i32 0), i32 12)
    %t327 = load i32, i32* @as
    %t328 = load i32, i32* @ds
    %t326 = icmp slt i32 %t327, %t328
    call void @_WriteBool(i8* %t325, i32 5, i32 0, i1 %t326)
    call void @_WriteString(i8* %t325, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t325)
    %t329 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t329, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.187, i32 0, i32 0), i32 12)
    %t331 = load i32, i32* @bs
    %t332 = load i32, i32* @as
    %t330 = icmp slt i32 %t331, %t332
    call void @_WriteBool(i8* %t329, i32 5, i32 0, i1 %t330)
    call void @_WriteString(i8* %t329, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t329)
    %t333 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t333, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.188, i32 0, i32 0), i32 12)
    %t335 = load i32, i32* @ds
    %t336 = load i32, i32* @as
    %t334 = icmp slt i32 %t335, %t336
    call void @_WriteBool(i8* %t333, i32 5, i32 0, i1 %t334)
    call void @_WriteString(i8* %t333, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t333)
    %t337 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t337, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.189, i32 0, i32 0), i32 12)
    %t339 = load i32, i32* @as
    %t340 = load i32, i32* @bs
    %t338 = icmp slt i32 %t339, %t340
    call void @_WriteBool(i8* %t337, i32 5, i32 0, i1 %t338)
    call void @_WriteString(i8* %t337, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t337)
    %t341 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t341, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.190, i32 0, i32 0), i32 12)
    %t343 = load i32, i32* @ds
    %t344 = load i32, i32* @as
    %t342 = icmp sgt i32 %t343, %t344
    call void @_WriteBool(i8* %t341, i32 5, i32 0, i1 %t342)
    call void @_WriteString(i8* %t341, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t341)
    %t345 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t345, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.191, i32 0, i32 0), i32 12)
    %t347 = load i32, i32* @as
    %t348 = load i32, i32* @bs
    %t346 = icmp sgt i32 %t347, %t348
    call void @_WriteBool(i8* %t345, i32 5, i32 0, i1 %t346)
    call void @_WriteString(i8* %t345, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t345)
    %t349 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t349, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.192, i32 0, i32 0), i32 12)
    %t351 = load i32, i32* @as
    %t352 = load i32, i32* @ds
    %t350 = icmp sgt i32 %t351, %t352
    call void @_WriteBool(i8* %t349, i32 5, i32 0, i1 %t350)
    call void @_WriteString(i8* %t349, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t349)
    %t353 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t353, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.193, i32 0, i32 0), i32 12)
    %t355 = load i32, i32* @bs
    %t356 = load i32, i32* @as
    %t354 = icmp sgt i32 %t355, %t356
    call void @_WriteBool(i8* %t353, i32 5, i32 0, i1 %t354)
    call void @_WriteString(i8* %t353, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t353)
    %t357 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t357, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.194, i32 0, i32 0), i32 12)
    %t359 = load i32, i32* @as
    %t360 = load i32, i32* @ds
    %t358 = icmp sle i32 %t359, %t360
    call void @_WriteBool(i8* %t357, i32 5, i32 0, i1 %t358)
    call void @_WriteString(i8* %t357, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t357)
    %t361 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t361, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.195, i32 0, i32 0), i32 12)
    %t363 = load i32, i32* @bs
    %t364 = load i32, i32* @as
    %t362 = icmp sle i32 %t363, %t364
    call void @_WriteBool(i8* %t361, i32 5, i32 0, i1 %t362)
    call void @_WriteString(i8* %t361, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t361)
    %t365 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t365, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.196, i32 0, i32 0), i32 12)
    %t367 = load i32, i32* @as
    %t368 = load i32, i32* @cs
    %t366 = icmp sle i32 %t367, %t368
    call void @_WriteBool(i8* %t365, i32 5, i32 0, i1 %t366)
    call void @_WriteString(i8* %t365, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t365)
    %t369 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t369, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.197, i32 0, i32 0), i32 12)
    %t371 = load i32, i32* @ds
    %t372 = load i32, i32* @as
    %t370 = icmp sle i32 %t371, %t372
    call void @_WriteBool(i8* %t369, i32 5, i32 0, i1 %t370)
    call void @_WriteString(i8* %t369, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t369)
    %t373 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t373, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.198, i32 0, i32 0), i32 12)
    %t375 = load i32, i32* @as
    %t376 = load i32, i32* @bs
    %t374 = icmp sle i32 %t375, %t376
    call void @_WriteBool(i8* %t373, i32 5, i32 0, i1 %t374)
    call void @_WriteString(i8* %t373, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t373)
    %t377 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t377, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.199, i32 0, i32 0), i32 12)
    %t379 = load i32, i32* @ds
    %t380 = load i32, i32* @as
    %t378 = icmp sge i32 %t379, %t380
    call void @_WriteBool(i8* %t377, i32 5, i32 0, i1 %t378)
    call void @_WriteString(i8* %t377, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t377)
    %t381 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t381, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.200, i32 0, i32 0), i32 12)
    %t383 = load i32, i32* @as
    %t384 = load i32, i32* @bs
    %t382 = icmp sge i32 %t383, %t384
    call void @_WriteBool(i8* %t381, i32 5, i32 0, i1 %t382)
    call void @_WriteString(i8* %t381, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t381)
    %t385 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t385, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.201, i32 0, i32 0), i32 12)
    %t387 = load i32, i32* @as
    %t388 = load i32, i32* @cs
    %t386 = icmp sge i32 %t387, %t388
    call void @_WriteBool(i8* %t385, i32 5, i32 0, i1 %t386)
    call void @_WriteString(i8* %t385, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t385)
    %t389 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t389, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.202, i32 0, i32 0), i32 12)
    %t391 = load i32, i32* @as
    %t392 = load i32, i32* @ds
    %t390 = icmp sge i32 %t391, %t392
    call void @_WriteBool(i8* %t389, i32 5, i32 0, i1 %t390)
    call void @_WriteString(i8* %t389, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t389)
    %t393 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t393, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.203, i32 0, i32 0), i32 12)
    %t395 = load i32, i32* @bs
    %t396 = load i32, i32* @as
    %t394 = icmp sge i32 %t395, %t396
    call void @_WriteBool(i8* %t393, i32 5, i32 0, i1 %t394)
    call void @_WriteString(i8* %t393, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t393)
    %t397 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t397, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.204, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t397, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t397, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.205, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t397)
    %t398 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t398, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.206, i32 0, i32 0), i32 12)
    %t400 = load i32, i32* @gs
    %t401 = load i32, i32* @hs
    %t399 = add i32 %t400, %t401
    call void @_WriteInteger(i8* %t398, i32 1, i32 0, i32 %t399)
    call void @_WriteString(i8* %t398, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t398)
    %t402 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t402, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.208, i32 0, i32 0), i32 12)
    %t404 = load i32, i32* @gs
    %t403 = sub i32 %t404, 2147483647
    call void @_WriteInteger(i8* %t402, i32 1, i32 0, i32 %t403)
    call void @_WriteString(i8* %t402, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t402)
    %t405 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t405, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.209, i32 0, i32 0), i32 12)
    %t407 = load i32, i32* @gs
    %t408 = load i32, i32* @vnum
    %t406 = add i32 %t407, %t408
    call void @_WriteInteger(i8* %t405, i32 1, i32 0, i32 %t406)
    call void @_WriteString(i8* %t405, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t405)
    %t409 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t409, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.210, i32 0, i32 0), i32 12)
    %t411 = sub i32 0, 30
    %t410 = add i32 45, %t411
    call void @_WriteInteger(i8* %t409, i32 1, i32 0, i32 %t410)
    call void @_WriteString(i8* %t409, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.211, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t409)
    %t412 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t412, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.212, i32 0, i32 0), i32 13)
    %t414 = sub i32 0, 25
    %t413 = add i32 %t414, 70
    call void @_WriteInteger(i8* %t412, i32 1, i32 0, i32 %t413)
    call void @_WriteString(i8* %t412, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.213, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t412)
    %t415 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t415, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.214, i32 0, i32 0), i32 12)
    %t417 = sub i32 0, 62
    %t416 = add i32 %t417, 23
    call void @_WriteInteger(i8* %t415, i32 1, i32 0, i32 %t416)
    call void @_WriteString(i8* %t415, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.215, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t415)
    %t418 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t418, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.216, i32 0, i32 0), i32 12)
    %t420 = sub i32 0, 20
    %t421 = sub i32 0, 15
    %t419 = add i32 %t420, %t421
    call void @_WriteInteger(i8* %t418, i32 1, i32 0, i32 %t419)
    call void @_WriteString(i8* %t418, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.217, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t418)
    %t422 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t422, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.218, i32 0, i32 0), i32 12)
    %t424 = sub i32 0, 14
    %t423 = sub i32 20, %t424
    call void @_WriteInteger(i8* %t422, i32 1, i32 0, i32 %t423)
    call void @_WriteString(i8* %t422, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t422)
    %t425 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t425, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.219, i32 0, i32 0), i32 12)
    %t427 = sub i32 0, 34
    %t426 = sub i32 %t427, 14
    call void @_WriteInteger(i8* %t425, i32 1, i32 0, i32 %t426)
    call void @_WriteString(i8* %t425, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.220, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t425)
    %t428 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t428, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.221, i32 0, i32 0), i32 12)
    %t430 = sub i32 0, 56
    %t431 = sub i32 0, 12
    %t429 = sub i32 %t430, %t431
    call void @_WriteInteger(i8* %t428, i32 1, i32 0, i32 %t429)
    call void @_WriteString(i8* %t428, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.222, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t428)
    %t432 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t432, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.223, i32 0, i32 0), i32 12)
    %t434 = sub i32 0, 4
    %t433 = mul i32 5, %t434
    call void @_WriteInteger(i8* %t432, i32 1, i32 0, i32 %t433)
    call void @_WriteString(i8* %t432, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.224, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t432)
    %t435 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t435, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.225, i32 0, i32 0), i32 12)
    %t437 = sub i32 0, 18
    %t436 = mul i32 %t437, 7
    call void @_WriteInteger(i8* %t435, i32 1, i32 0, i32 %t436)
    call void @_WriteString(i8* %t435, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.226, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t435)
    %t438 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t438, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.227, i32 0, i32 0), i32 12)
    %t440 = sub i32 0, 40
    %t441 = sub i32 0, 13
    %t439 = mul i32 %t440, %t441
    call void @_WriteInteger(i8* %t438, i32 1, i32 0, i32 %t439)
    call void @_WriteString(i8* %t438, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.228, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t438)
    %t442 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t442, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.229, i32 0, i32 0), i32 12)
    %t444 = sub i32 0, 5
    %t443 = sdiv i32 30, %t444
    call void @_WriteInteger(i8* %t442, i32 1, i32 0, i32 %t443)
    call void @_WriteString(i8* %t442, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.230, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t442)
    %t445 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t445, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.231, i32 0, i32 0), i32 12)
    %t447 = sub i32 0, 50
    %t446 = sdiv i32 %t447, 2
    call void @_WriteInteger(i8* %t445, i32 1, i32 0, i32 %t446)
    call void @_WriteString(i8* %t445, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.232, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t445)
    %t448 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t448, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.233, i32 0, i32 0), i32 12)
    %t450 = sub i32 0, 20
    %t451 = sub i32 0, 4
    %t449 = sdiv i32 %t450, %t451
    call void @_WriteInteger(i8* %t448, i32 1, i32 0, i32 %t449)
    call void @_WriteString(i8* %t448, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.234, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t448)
    %t452 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t452, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.235, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t452, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t452, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.236, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t452)
    %t453 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t453, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.237, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t453, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t453, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t453)
    %t454 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t454, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.238, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t454, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t454, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.239, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t454)
    %t455 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t455, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.240, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t455, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t455, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.241, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t455)
    %t456 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t456, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.242, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t456, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t456, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.243, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t456)
    %t457 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t457, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.244, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t457, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t457, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t457)
    %t458 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t458, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.245, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t458, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t458, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t458)
    %t459 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t459, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.246, i32 0, i32 0), i32 12)
    %t461 = sub i32 0, 5
    %t462 = sub i32 0, 5
    %t460 = icmp eq i32 %t461, %t462
    call void @_WriteBool(i8* %t459, i32 5, i32 0, i1 %t460)
    call void @_WriteString(i8* %t459, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t459)
    %t463 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t463, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.247, i32 0, i32 0), i32 12)
    %t465 = sub i32 0, 5
    %t464 = icmp eq i32 %t465, 5
    call void @_WriteBool(i8* %t463, i32 5, i32 0, i1 %t464)
    call void @_WriteString(i8* %t463, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t463)
    %t466 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t466, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.248, i32 0, i32 0), i32 12)
    %t468 = sub i32 0, 21
    %t469 = sub i32 0, 40
    %t467 = icmp ne i32 %t468, %t469
    call void @_WriteBool(i8* %t466, i32 5, i32 0, i1 %t467)
    call void @_WriteString(i8* %t466, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t466)
    %t470 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t470, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.249, i32 0, i32 0), i32 12)
    %t472 = sub i32 0, 21
    %t473 = sub i32 0, 21
    %t471 = icmp ne i32 %t472, %t473
    call void @_WriteBool(i8* %t470, i32 5, i32 0, i1 %t471)
    call void @_WriteString(i8* %t470, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t470)
    %t474 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t474, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.250, i32 0, i32 0), i32 12)
    %t476 = sub i32 0, 3
    %t475 = icmp slt i32 %t476, 5
    call void @_WriteBool(i8* %t474, i32 5, i32 0, i1 %t475)
    call void @_WriteString(i8* %t474, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t474)
    %t477 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t477, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.251, i32 0, i32 0), i32 12)
    %t479 = sub i32 0, 32
    %t480 = sub i32 0, 20
    %t478 = icmp slt i32 %t479, %t480
    call void @_WriteBool(i8* %t477, i32 5, i32 0, i1 %t478)
    call void @_WriteString(i8* %t477, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t477)
    %t481 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t481, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.252, i32 0, i32 0), i32 12)
    %t483 = sub i32 0, 20
    %t482 = icmp slt i32 20, %t483
    call void @_WriteBool(i8* %t481, i32 5, i32 0, i1 %t482)
    call void @_WriteString(i8* %t481, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t481)
    %t484 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t484, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.253, i32 0, i32 0), i32 12)
    %t486 = sub i32 0, 15
    %t487 = sub i32 0, 40
    %t485 = icmp slt i32 %t486, %t487
    call void @_WriteBool(i8* %t484, i32 5, i32 0, i1 %t485)
    call void @_WriteString(i8* %t484, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t484)
    %t488 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t488, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.254, i32 0, i32 0), i32 12)
    %t490 = sub i32 0, 4
    %t489 = icmp sgt i32 70, %t490
    call void @_WriteBool(i8* %t488, i32 5, i32 0, i1 %t489)
    call void @_WriteString(i8* %t488, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t488)
    %t491 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t491, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.255, i32 0, i32 0), i32 12)
    %t493 = sub i32 0, 23
    %t494 = sub i32 0, 34
    %t492 = icmp sgt i32 %t493, %t494
    call void @_WriteBool(i8* %t491, i32 5, i32 0, i1 %t492)
    call void @_WriteString(i8* %t491, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t491)
    %t495 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t495, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.256, i32 0, i32 0), i32 12)
    %t497 = sub i32 0, 5
    %t496 = icmp sgt i32 %t497, 5
    call void @_WriteBool(i8* %t495, i32 5, i32 0, i1 %t496)
    call void @_WriteString(i8* %t495, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t495)
    %t498 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t498, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.257, i32 0, i32 0), i32 12)
    %t500 = sub i32 0, 60
    %t501 = sub i32 0, 59
    %t499 = icmp sgt i32 %t500, %t501
    call void @_WriteBool(i8* %t498, i32 5, i32 0, i1 %t499)
    call void @_WriteString(i8* %t498, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t498)
    %t502 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t502, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.258, i32 0, i32 0), i32 12)
    %t504 = sub i32 0, 12
    %t503 = icmp sle i32 %t504, 4
    call void @_WriteBool(i8* %t502, i32 5, i32 0, i1 %t503)
    call void @_WriteString(i8* %t502, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t502)
    %t505 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t505, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.259, i32 0, i32 0), i32 12)
    %t507 = sub i32 0, 14
    %t508 = sub i32 0, 5
    %t506 = icmp sle i32 %t507, %t508
    call void @_WriteBool(i8* %t505, i32 5, i32 0, i1 %t506)
    call void @_WriteString(i8* %t505, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t505)
    %t509 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t509, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.260, i32 0, i32 0), i32 12)
    %t511 = sub i32 0, 7
    %t512 = sub i32 0, 7
    %t510 = icmp sle i32 %t511, %t512
    call void @_WriteBool(i8* %t509, i32 5, i32 0, i1 %t510)
    call void @_WriteString(i8* %t509, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t509)
    %t513 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t513, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.261, i32 0, i32 0), i32 12)
    %t515 = sub i32 0, 5
    %t514 = icmp sle i32 5, %t515
    call void @_WriteBool(i8* %t513, i32 5, i32 0, i1 %t514)
    call void @_WriteString(i8* %t513, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t513)
    %t516 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t516, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.262, i32 0, i32 0), i32 12)
    %t518 = sub i32 0, 10
    %t519 = sub i32 0, 20
    %t517 = icmp sle i32 %t518, %t519
    call void @_WriteBool(i8* %t516, i32 5, i32 0, i1 %t517)
    call void @_WriteString(i8* %t516, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t516)
    %t520 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t520, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.263, i32 0, i32 0), i32 12)
    %t522 = sub i32 0, 3
    %t521 = icmp sge i32 9, %t522
    call void @_WriteBool(i8* %t520, i32 5, i32 0, i1 %t521)
    call void @_WriteString(i8* %t520, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t520)
    %t523 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t523, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.264, i32 0, i32 0), i32 12)
    %t525 = sub i32 0, 4
    %t526 = sub i32 0, 10
    %t524 = icmp sge i32 %t525, %t526
    call void @_WriteBool(i8* %t523, i32 5, i32 0, i1 %t524)
    call void @_WriteString(i8* %t523, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t523)
    %t527 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t527, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.265, i32 0, i32 0), i32 12)
    %t529 = sub i32 0, 13
    %t530 = sub i32 0, 13
    %t528 = icmp sge i32 %t529, %t530
    call void @_WriteBool(i8* %t527, i32 5, i32 0, i1 %t528)
    call void @_WriteString(i8* %t527, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t527)
    %t531 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t531, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.266, i32 0, i32 0), i32 12)
    %t533 = sub i32 0, 6
    %t532 = icmp sge i32 %t533, 6
    call void @_WriteBool(i8* %t531, i32 5, i32 0, i1 %t532)
    call void @_WriteString(i8* %t531, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t531)
    %t534 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t534, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.267, i32 0, i32 0), i32 12)
    %t536 = sub i32 0, 20
    %t537 = sub i32 0, 10
    %t535 = icmp sge i32 %t536, %t537
    call void @_WriteBool(i8* %t534, i32 5, i32 0, i1 %t535)
    call void @_WriteString(i8* %t534, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t534)
    %t538 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t538, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.268, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t538, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t538, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t538)
    %t539 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t539, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.269, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t539, i32 1, i32 0, i32 -52)
    call void @_WriteString(i8* %t539, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.161, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t539)
    %t540 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t540, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.270, i32 0, i32 0), i32 12)
    %t541 = sub i32 0, -52
    call void @_WriteInteger(i8* %t540, i32 1, i32 0, i32 %t541)
    call void @_WriteString(i8* %t540, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.271, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t540)
    %t542 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t542, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.272, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t542, i32 1, i32 0, i32 -768)
    call void @_WriteString(i8* %t542, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.273, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t542)
    %t543 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t543, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.274, i32 0, i32 0), i32 12)
    call void @_WriteInteger(i8* %t543, i32 1, i32 0, i32 52)
    call void @_WriteString(i8* %t543, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.271, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t543)
    %t544 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t544, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.275, i32 0, i32 0), i32 12)
    %t545 = add i32 2147483647, -2147483647
    call void @_WriteInteger(i8* %t544, i32 1, i32 0, i32 %t545)
    call void @_WriteString(i8* %t544, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t544)
    %t546 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t546)
    %t547 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t547, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.276, i32 0, i32 0), i32 49)
    call void @_WriteLn(i8* %t547)
    %t548 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t548)
    store i32 43, i32* @srx
    store i32 78, i32* @sry
    %t549 = load i32, i32* @sry
    store i32 %t549, i32* @srz
    %t550 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t550, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.277, i32 0, i32 0), i32 13)
    %t552 = load i32, i32* @srx
    %t553 = load i32, i32* @sry
    %t551 = add i32 %t552, %t553
    call void @_WriteInteger(i8* %t550, i32 1, i32 0, i32 %t551)
    call void @_WriteString(i8* %t550, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t550)
    %t554 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t554, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.278, i32 0, i32 0), i32 13)
    %t556 = load i32, i32* @sry
    %t557 = load i32, i32* @srx
    %t555 = sub i32 %t556, %t557
    call void @_WriteInteger(i8* %t554, i32 1, i32 0, i32 %t555)
    call void @_WriteString(i8* %t554, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t554)
    %t558 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t558, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.279, i32 0, i32 0), i32 13)
    %t560 = load i32, i32* @srx
    %t561 = load i32, i32* @sry
    %t559 = mul i32 %t560, %t561
    call void @_WriteInteger(i8* %t558, i32 1, i32 0, i32 %t559)
    call void @_WriteString(i8* %t558, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t558)
    %t562 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t562, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.280, i32 0, i32 0), i32 13)
    %t564 = load i32, i32* @sry
    %t565 = load i32, i32* @srx
    %t563 = sdiv i32 %t564, %t565
    call void @_WriteInteger(i8* %t562, i32 1, i32 0, i32 %t563)
    call void @_WriteString(i8* %t562, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t562)
    %t566 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t566, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.281, i32 0, i32 0), i32 13)
    %t568 = load i32, i32* @sry
    %t569 = load i32, i32* @srx
    %t567 = srem i32 %t568, %t569
    call void @_WriteInteger(i8* %t566, i32 1, i32 0, i32 %t567)
    call void @_WriteString(i8* %t566, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t566)
    %t570 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t570, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.282, i32 0, i32 0), i32 13)
    call void @_WriteInteger(i8* %t570, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t570, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t570)
    %t571 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t571, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.283, i32 0, i32 0), i32 13)
    call void @_WriteInteger(i8* %t571, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t571, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t571)
    %t572 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t572, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.284, i32 0, i32 0), i32 13)
028D0798    call void @_WriteChar(i8* %t572, i32 0, i32 0, i8 )
    call void @_WriteString(i8* %t572, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t572)
    %t574 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t574, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.285, i32 0, i32 0), i32 13)
028D09A0    call void @_WriteInteger(i8* %t574, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t574, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t574)
    %t576 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t576, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.286, i32 0, i32 0), i32 13)
    call void @_WriteBool(i8* %t576, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t576, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t576)
    %t577 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t577, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.287, i32 0, i32 0), i32 13)
    call void @_WriteBool(i8* %t577, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t577, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t577)
    %t578 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t578, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.288, i32 0, i32 0), i32 13)
    %t580 = load i32, i32* @srz
    %t581 = load i32, i32* @sry
    %t579 = icmp eq i32 %t580, %t581
    call void @_WriteBool(i8* %t578, i32 5, i32 0, i1 %t579)
    call void @_WriteString(i8* %t578, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t578)
    %t582 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t582, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.289, i32 0, i32 0), i32 13)
    %t584 = load i32, i32* @srx
    %t585 = load i32, i32* @sry
    %t583 = icmp eq i32 %t584, %t585
    call void @_WriteBool(i8* %t582, i32 5, i32 0, i1 %t583)
    call void @_WriteString(i8* %t582, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t582)
    %t586 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t586, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.290, i32 0, i32 0), i32 13)
    %t588 = load i32, i32* @srx
    %t589 = load i32, i32* @sry
    %t587 = icmp slt i32 %t588, %t589
    call void @_WriteBool(i8* %t586, i32 5, i32 0, i1 %t587)
    call void @_WriteString(i8* %t586, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t586)
    %t590 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t590, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.291, i32 0, i32 0), i32 13)
    %t592 = load i32, i32* @sry
    %t593 = load i32, i32* @srx
    %t591 = icmp slt i32 %t592, %t593
    call void @_WriteBool(i8* %t590, i32 5, i32 0, i1 %t591)
    call void @_WriteString(i8* %t590, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t590)
    %t594 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t594, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.292, i32 0, i32 0), i32 13)
    %t596 = load i32, i32* @sry
    %t597 = load i32, i32* @srx
    %t595 = icmp sgt i32 %t596, %t597
    call void @_WriteBool(i8* %t594, i32 5, i32 0, i1 %t595)
    call void @_WriteString(i8* %t594, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t594)
    %t598 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t598, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.293, i32 0, i32 0), i32 13)
    %t600 = load i32, i32* @srx
    %t601 = load i32, i32* @sry
    %t599 = icmp sgt i32 %t600, %t601
    call void @_WriteBool(i8* %t598, i32 5, i32 0, i1 %t599)
    call void @_WriteString(i8* %t598, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t598)
    %t602 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t602, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.294, i32 0, i32 0), i32 13)
    %t604 = load i32, i32* @srx
    %t605 = load i32, i32* @sry
    %t603 = icmp ne i32 %t604, %t605
    call void @_WriteBool(i8* %t602, i32 5, i32 0, i1 %t603)
    call void @_WriteString(i8* %t602, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t602)
    %t606 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t606, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.295, i32 0, i32 0), i32 13)
    %t608 = load i32, i32* @sry
    %t609 = load i32, i32* @srz
    %t607 = icmp ne i32 %t608, %t609
    call void @_WriteBool(i8* %t606, i32 5, i32 0, i1 %t607)
    call void @_WriteString(i8* %t606, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t606)
    %t610 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t610, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.296, i32 0, i32 0), i32 13)
    %t612 = load i32, i32* @srx
    %t613 = load i32, i32* @sry
    %t611 = icmp sle i32 %t612, %t613
    call void @_WriteBool(i8* %t610, i32 5, i32 0, i1 %t611)
    call void @_WriteString(i8* %t610, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t610)
    %t614 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t614, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.297, i32 0, i32 0), i32 13)
    %t616 = load i32, i32* @srz
    %t617 = load i32, i32* @sry
    %t615 = icmp sle i32 %t616, %t617
    call void @_WriteBool(i8* %t614, i32 5, i32 0, i1 %t615)
    call void @_WriteString(i8* %t614, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t614)
    %t618 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t618, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.298, i32 0, i32 0), i32 13)
    %t620 = load i32, i32* @sry
    %t621 = load i32, i32* @srx
    %t619 = icmp sle i32 %t620, %t621
    call void @_WriteBool(i8* %t618, i32 5, i32 0, i1 %t619)
    call void @_WriteString(i8* %t618, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t618)
    %t622 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t622, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.299, i32 0, i32 0), i32 13)
    %t624 = load i32, i32* @sry
    %t625 = load i32, i32* @srx
    %t623 = icmp sge i32 %t624, %t625
    call void @_WriteBool(i8* %t622, i32 5, i32 0, i1 %t623)
    call void @_WriteString(i8* %t622, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t622)
    %t626 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t626, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.300, i32 0, i32 0), i32 13)
    %t628 = load i32, i32* @sry
    %t629 = load i32, i32* @srz
    %t627 = icmp sge i32 %t628, %t629
    call void @_WriteBool(i8* %t626, i32 5, i32 0, i1 %t627)
    call void @_WriteString(i8* %t626, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t626)
    %t630 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t630, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.301, i32 0, i32 0), i32 13)
    %t632 = load i32, i32* @srx
    %t633 = load i32, i32* @sry
    %t631 = icmp sge i32 %t632, %t633
    call void @_WriteBool(i8* %t630, i32 5, i32 0, i1 %t631)
    call void @_WriteString(i8* %t630, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t630)
    %t634 = sub i32 0, 14
    store i32 %t634, i32* @sras
    %t635 = sub i32 0, 32
    store i32 %t635, i32* @srbs
    %t636 = sub i32 0, 14
    store i32 %t636, i32* @srcs
    store i32 20, i32* @srds
    %t637 = sub i32 0, 15
    store i32 %t637, i32* @sres
    %t638 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t638, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.302, i32 0, i32 0), i32 13)
    %t640 = load i32, i32* @sras
    %t641 = load i32, i32* @srds
    %t639 = add i32 %t640, %t641
    call void @_WriteInteger(i8* %t638, i32 1, i32 0, i32 %t639)
    call void @_WriteString(i8* %t638, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t638)
    %t642 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t642, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.303, i32 0, i32 0), i32 13)
    %t644 = load i32, i32* @srds
    %t645 = load i32, i32* @sras
    %t643 = add i32 %t644, %t645
    call void @_WriteInteger(i8* %t642, i32 1, i32 0, i32 %t643)
    call void @_WriteString(i8* %t642, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t642)
    %t646 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t646, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.304, i32 0, i32 0), i32 13)
    %t648 = load i32, i32* @srbs
    %t649 = load i32, i32* @srds
    %t647 = add i32 %t648, %t649
    call void @_WriteInteger(i8* %t646, i32 1, i32 0, i32 %t647)
    call void @_WriteString(i8* %t646, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.155, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t646)
    %t650 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t650, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.305, i32 0, i32 0), i32 13)
    %t652 = load i32, i32* @sras
    %t653 = load i32, i32* @srbs
    %t651 = add i32 %t652, %t653
    call void @_WriteInteger(i8* %t650, i32 1, i32 0, i32 %t651)
    call void @_WriteString(i8* %t650, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.157, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t650)
    %t654 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t654, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.306, i32 0, i32 0), i32 13)
    %t656 = load i32, i32* @srds
    %t657 = load i32, i32* @sras
    %t655 = sub i32 %t656, %t657
    call void @_WriteInteger(i8* %t654, i32 1, i32 0, i32 %t655)
    call void @_WriteString(i8* %t654, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t654)
    %t658 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t658, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.307, i32 0, i32 0), i32 13)
    %t660 = load i32, i32* @srbs
    %t661 = load i32, i32* @srds
    %t659 = sub i32 %t660, %t661
    call void @_WriteInteger(i8* %t658, i32 1, i32 0, i32 %t659)
    call void @_WriteString(i8* %t658, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.161, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t658)
    %t662 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t662, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.308, i32 0, i32 0), i32 13)
    %t664 = load i32, i32* @srbs
    %t665 = load i32, i32* @sras
    %t663 = sub i32 %t664, %t665
    call void @_WriteInteger(i8* %t662, i32 1, i32 0, i32 %t663)
    call void @_WriteString(i8* %t662, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.163, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t662)
    %t666 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t666, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.309, i32 0, i32 0), i32 13)
    %t668 = load i32, i32* @srds
    %t669 = load i32, i32* @sras
    %t667 = mul i32 %t668, %t669
    call void @_WriteInteger(i8* %t666, i32 1, i32 0, i32 %t667)
    call void @_WriteString(i8* %t666, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.165, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t666)
    %t670 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t670, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.310, i32 0, i32 0), i32 13)
    %t672 = load i32, i32* @sras
    %t673 = load i32, i32* @srds
    %t671 = mul i32 %t672, %t673
    call void @_WriteInteger(i8* %t670, i32 1, i32 0, i32 %t671)
    call void @_WriteString(i8* %t670, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.165, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t670)
    %t674 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t674, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.311, i32 0, i32 0), i32 13)
    %t676 = load i32, i32* @sras
    %t677 = load i32, i32* @srbs
    %t675 = mul i32 %t676, %t677
    call void @_WriteInteger(i8* %t674, i32 1, i32 0, i32 %t675)
    call void @_WriteString(i8* %t674, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.168, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t674)
    %t678 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t678, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.312, i32 0, i32 0), i32 13)
    %t680 = load i32, i32* @srds
    %t681 = load i32, i32* @sras
    %t679 = sdiv i32 %t680, %t681
    call void @_WriteInteger(i8* %t678, i32 1, i32 0, i32 %t679)
    call void @_WriteString(i8* %t678, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.170, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t678)
    %t682 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t682, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.313, i32 0, i32 0), i32 13)
    %t684 = load i32, i32* @srbs
    %t685 = load i32, i32* @srds
    %t683 = sdiv i32 %t684, %t685
    call void @_WriteInteger(i8* %t682, i32 1, i32 0, i32 %t683)
    call void @_WriteString(i8* %t682, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.170, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t682)
    %t686 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t686, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.314, i32 0, i32 0), i32 13)
    %t688 = load i32, i32* @srbs
    %t689 = load i32, i32* @sras
    %t687 = sdiv i32 %t688, %t689
    call void @_WriteInteger(i8* %t686, i32 1, i32 0, i32 %t687)
    call void @_WriteString(i8* %t686, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.173, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t686)
    %t690 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t690, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.315, i32 0, i32 0), i32 13)
    call void @_WriteInteger(i8* %t690, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t690, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.175, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t690)
    %t691 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t691, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.316, i32 0, i32 0), i32 13)
    call void @_WriteInteger(i8* %t691, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t691, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.177, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t691)
    %t692 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t692, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.317, i32 0, i32 0), i32 13)
    call void @_WriteBool(i8* %t692, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t692, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t692)
    %t693 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t693, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.318, i32 0, i32 0), i32 13)
    call void @_WriteBool(i8* %t693, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t693, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t693)
    %t694 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t694, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.319, i32 0, i32 0), i32 13)
    %t696 = load i32, i32* @sras
    %t697 = load i32, i32* @srcs
    %t695 = icmp eq i32 %t696, %t697
    call void @_WriteBool(i8* %t694, i32 5, i32 0, i1 %t695)
    call void @_WriteString(i8* %t694, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t694)
    %t698 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t698, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.320, i32 0, i32 0), i32 13)
    %t700 = load i32, i32* @sras
    %t701 = load i32, i32* @srbs
    %t699 = icmp eq i32 %t700, %t701
    call void @_WriteBool(i8* %t698, i32 5, i32 0, i1 %t699)
    call void @_WriteString(i8* %t698, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t698)
    %t702 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t702, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.321, i32 0, i32 0), i32 13)
    %t704 = load i32, i32* @sras
    %t705 = load i32, i32* @srbs
    %t703 = icmp ne i32 %t704, %t705
    call void @_WriteBool(i8* %t702, i32 5, i32 0, i1 %t703)
    call void @_WriteString(i8* %t702, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t702)
    %t706 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t706, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.322, i32 0, i32 0), i32 13)
    %t708 = load i32, i32* @sras
    %t709 = load i32, i32* @srcs
    %t707 = icmp ne i32 %t708, %t709
    call void @_WriteBool(i8* %t706, i32 5, i32 0, i1 %t707)
    call void @_WriteString(i8* %t706, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t706)
    %t710 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t710, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.323, i32 0, i32 0), i32 13)
    %t712 = load i32, i32* @sras
    %t713 = load i32, i32* @srds
    %t711 = icmp slt i32 %t712, %t713
    call void @_WriteBool(i8* %t710, i32 5, i32 0, i1 %t711)
    call void @_WriteString(i8* %t710, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t710)
    %t714 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t714, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.324, i32 0, i32 0), i32 13)
    %t716 = load i32, i32* @srbs
    %t717 = load i32, i32* @sras
    %t715 = icmp slt i32 %t716, %t717
    call void @_WriteBool(i8* %t714, i32 5, i32 0, i1 %t715)
    call void @_WriteString(i8* %t714, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t714)
    %t718 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t718, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.325, i32 0, i32 0), i32 13)
    %t720 = load i32, i32* @srds
    %t721 = load i32, i32* @sras
    %t719 = icmp slt i32 %t720, %t721
    call void @_WriteBool(i8* %t718, i32 5, i32 0, i1 %t719)
    call void @_WriteString(i8* %t718, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t718)
    %t722 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t722, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.326, i32 0, i32 0), i32 13)
    %t724 = load i32, i32* @sras
    %t725 = load i32, i32* @srbs
    %t723 = icmp slt i32 %t724, %t725
    call void @_WriteBool(i8* %t722, i32 5, i32 0, i1 %t723)
    call void @_WriteString(i8* %t722, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t722)
    %t726 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t726, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.327, i32 0, i32 0), i32 13)
    %t728 = load i32, i32* @srds
    %t729 = load i32, i32* @sras
    %t727 = icmp sgt i32 %t728, %t729
    call void @_WriteBool(i8* %t726, i32 5, i32 0, i1 %t727)
    call void @_WriteString(i8* %t726, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t726)
    %t730 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t730, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.328, i32 0, i32 0), i32 13)
    %t732 = load i32, i32* @sras
    %t733 = load i32, i32* @srbs
    %t731 = icmp sgt i32 %t732, %t733
    call void @_WriteBool(i8* %t730, i32 5, i32 0, i1 %t731)
    call void @_WriteString(i8* %t730, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t730)
    %t734 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t734, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.329, i32 0, i32 0), i32 13)
    %t736 = load i32, i32* @sras
    %t737 = load i32, i32* @srds
    %t735 = icmp sgt i32 %t736, %t737
    call void @_WriteBool(i8* %t734, i32 5, i32 0, i1 %t735)
    call void @_WriteString(i8* %t734, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t734)
    %t738 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t738, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.330, i32 0, i32 0), i32 13)
    %t740 = load i32, i32* @srbs
    %t741 = load i32, i32* @sras
    %t739 = icmp sgt i32 %t740, %t741
    call void @_WriteBool(i8* %t738, i32 5, i32 0, i1 %t739)
    call void @_WriteString(i8* %t738, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t738)
    %t742 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t742, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.331, i32 0, i32 0), i32 13)
    %t744 = load i32, i32* @sras
    %t745 = load i32, i32* @srds
    %t743 = icmp sle i32 %t744, %t745
    call void @_WriteBool(i8* %t742, i32 5, i32 0, i1 %t743)
    call void @_WriteString(i8* %t742, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t742)
    %t746 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t746, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.332, i32 0, i32 0), i32 13)
    %t748 = load i32, i32* @srbs
    %t749 = load i32, i32* @sras
    %t747 = icmp sle i32 %t748, %t749
    call void @_WriteBool(i8* %t746, i32 5, i32 0, i1 %t747)
    call void @_WriteString(i8* %t746, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t746)
    %t750 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t750, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.333, i32 0, i32 0), i32 13)
    %t752 = load i32, i32* @sras
    %t753 = load i32, i32* @srcs
    %t751 = icmp sle i32 %t752, %t753
    call void @_WriteBool(i8* %t750, i32 5, i32 0, i1 %t751)
    call void @_WriteString(i8* %t750, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t750)
    %t754 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t754, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.334, i32 0, i32 0), i32 13)
    %t756 = load i32, i32* @srds
    %t757 = load i32, i32* @sras
    %t755 = icmp sle i32 %t756, %t757
    call void @_WriteBool(i8* %t754, i32 5, i32 0, i1 %t755)
    call void @_WriteString(i8* %t754, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t754)
    %t758 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t758, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.335, i32 0, i32 0), i32 13)
    %t760 = load i32, i32* @sras
    %t761 = load i32, i32* @srbs
    %t759 = icmp sle i32 %t760, %t761
    call void @_WriteBool(i8* %t758, i32 5, i32 0, i1 %t759)
    call void @_WriteString(i8* %t758, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t758)
    %t762 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t762, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.336, i32 0, i32 0), i32 13)
    %t764 = load i32, i32* @srds
    %t765 = load i32, i32* @sras
    %t763 = icmp sge i32 %t764, %t765
    call void @_WriteBool(i8* %t762, i32 5, i32 0, i1 %t763)
    call void @_WriteString(i8* %t762, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t762)
    %t766 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t766, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.337, i32 0, i32 0), i32 13)
    %t768 = load i32, i32* @sras
    %t769 = load i32, i32* @srbs
    %t767 = icmp sge i32 %t768, %t769
    call void @_WriteBool(i8* %t766, i32 5, i32 0, i1 %t767)
    call void @_WriteString(i8* %t766, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t766)
    %t770 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t770, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.338, i32 0, i32 0), i32 13)
    %t772 = load i32, i32* @sras
    %t773 = load i32, i32* @srcs
    %t771 = icmp sge i32 %t772, %t773
    call void @_WriteBool(i8* %t770, i32 5, i32 0, i1 %t771)
    call void @_WriteString(i8* %t770, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t770)
    %t774 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t774, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.339, i32 0, i32 0), i32 13)
    %t776 = load i32, i32* @sras
    %t777 = load i32, i32* @srds
    %t775 = icmp sge i32 %t776, %t777
    call void @_WriteBool(i8* %t774, i32 5, i32 0, i1 %t775)
    call void @_WriteString(i8* %t774, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t774)
    %t778 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t778, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.340, i32 0, i32 0), i32 13)
    %t780 = load i32, i32* @srbs
    %t781 = load i32, i32* @sras
    %t779 = icmp sge i32 %t780, %t781
    call void @_WriteBool(i8* %t778, i32 5, i32 0, i1 %t779)
    call void @_WriteString(i8* %t778, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t778)
    %t782 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t782, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.341, i32 0, i32 0), i32 13)
    call void @_WriteInteger(i8* %t782, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t782, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.205, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t782)
    %t783 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t783)
    %t784 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t784, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.342, i32 0, i32 0), i32 49)
    call void @_WriteLn(i8* %t784)
    %t785 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t785)
    store i8 103, i8* @ca
    store i8 103, i8* @cb
    store i8 117, i8* @cc
    %t786 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t786, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.343, i32 0, i32 0), i32 14)
    %t787 = load i8, i8* @ca
    call void @_WriteChar(i8* %t786, i32 0, i32 0, i8 %t787)
    call void @_WriteChar(i8* %t786, i32 0, i32 0, i8 32)
    %t788 = load i8, i8* @cb
    call void @_WriteChar(i8* %t786, i32 0, i32 0, i8 %t788)
    call void @_WriteChar(i8* %t786, i32 0, i32 0, i8 32)
    %t789 = load i8, i8* @cc
    call void @_WriteChar(i8* %t786, i32 0, i32 0, i8 %t789)
    call void @_WriteString(i8* %t786, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.344, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t786)
    %t790 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t790, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.345, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t790, i32 0, i32 0, i8 )
    call void @_WriteString(i8* %t790, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.346, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t790)
    %t791 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t791, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.347, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t791, i32 0, i32 0, i8 )
    call void @_WriteString(i8* %t791, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.348, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t791)
    %t792 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t792, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.349, i32 0, i32 0), i32 14)
028D0938    call void @_WriteInteger(i8* %t792, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t792, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.350, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t792)
    %t794 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t794, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.351, i32 0, i32 0), i32 14)
028D0C78    call void @_WriteChar(i8* %t794, i32 0, i32 0, i8 )
    call void @_WriteString(i8* %t794, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.352, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t794)
    %t796 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t796, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.353, i32 0, i32 0), i32 14)
    %t798 = load i8, i8* @ca
    %t799 = load i8, i8* @cb
    %t797 = icmp eq i32 %t798, %t799
    call void @_WriteBool(i8* %t796, i32 5, i32 0, i1 %t797)
    call void @_WriteString(i8* %t796, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t796)
    %t800 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t800, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.354, i32 0, i32 0), i32 14)
    %t802 = load i8, i8* @ca
    %t803 = load i8, i8* @cc
    %t801 = icmp eq i32 %t802, %t803
    call void @_WriteBool(i8* %t800, i32 5, i32 0, i1 %t801)
    call void @_WriteString(i8* %t800, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t800)
    %t804 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t804, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.355, i32 0, i32 0), i32 14)
    %t806 = load i8, i8* @ca
    %t807 = load i8, i8* @cc
    %t805 = icmp slt i32 %t806, %t807
    call void @_WriteBool(i8* %t804, i32 5, i32 0, i1 %t805)
    call void @_WriteString(i8* %t804, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t804)
    %t808 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t808, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.356, i32 0, i32 0), i32 14)
    %t810 = load i8, i8* @cc
    %t811 = load i8, i8* @ca
    %t809 = icmp slt i32 %t810, %t811
    call void @_WriteBool(i8* %t808, i32 5, i32 0, i1 %t809)
    call void @_WriteString(i8* %t808, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t808)
    %t812 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t812, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.357, i32 0, i32 0), i32 14)
    %t814 = load i8, i8* @cc
    %t815 = load i8, i8* @ca
    %t813 = icmp sgt i32 %t814, %t815
    call void @_WriteBool(i8* %t812, i32 5, i32 0, i1 %t813)
    call void @_WriteString(i8* %t812, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t812)
    %t816 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t816, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.358, i32 0, i32 0), i32 14)
    %t818 = load i8, i8* @ca
    %t819 = load i8, i8* @cc
    %t817 = icmp sgt i32 %t818, %t819
    call void @_WriteBool(i8* %t816, i32 5, i32 0, i1 %t817)
    call void @_WriteString(i8* %t816, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t816)
    %t820 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t820, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.359, i32 0, i32 0), i32 14)
    %t822 = load i8, i8* @ca
    %t823 = load i8, i8* @cc
    %t821 = icmp ne i32 %t822, %t823
    call void @_WriteBool(i8* %t820, i32 5, i32 0, i1 %t821)
    call void @_WriteString(i8* %t820, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t820)
    %t824 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t824, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.360, i32 0, i32 0), i32 14)
    %t826 = load i8, i8* @ca
    %t827 = load i8, i8* @cb
    %t825 = icmp ne i32 %t826, %t827
    call void @_WriteBool(i8* %t824, i32 5, i32 0, i1 %t825)
    call void @_WriteString(i8* %t824, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t824)
    %t828 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t828, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.361, i32 0, i32 0), i32 14)
    %t830 = load i8, i8* @ca
    %t831 = load i8, i8* @cc
    %t829 = icmp sle i32 %t830, %t831
    call void @_WriteBool(i8* %t828, i32 5, i32 0, i1 %t829)
    call void @_WriteString(i8* %t828, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t828)
    %t832 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t832, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.362, i32 0, i32 0), i32 14)
    %t834 = load i8, i8* @ca
    %t835 = load i8, i8* @cb
    %t833 = icmp sle i32 %t834, %t835
    call void @_WriteBool(i8* %t832, i32 5, i32 0, i1 %t833)
    call void @_WriteString(i8* %t832, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t832)
    %t836 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t836, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.363, i32 0, i32 0), i32 14)
    %t838 = load i8, i8* @cc
    %t839 = load i8, i8* @ca
    %t837 = icmp sle i32 %t838, %t839
    call void @_WriteBool(i8* %t836, i32 5, i32 0, i1 %t837)
    call void @_WriteString(i8* %t836, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t836)
    %t840 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t840, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.364, i32 0, i32 0), i32 14)
    %t842 = load i8, i8* @cc
    %t843 = load i8, i8* @cb
    %t841 = icmp sge i32 %t842, %t843
    call void @_WriteBool(i8* %t840, i32 5, i32 0, i1 %t841)
    call void @_WriteString(i8* %t840, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t840)
    %t844 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t844, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.365, i32 0, i32 0), i32 14)
    %t846 = load i8, i8* @cb
    %t847 = load i8, i8* @ca
    %t845 = icmp sge i32 %t846, %t847
    call void @_WriteBool(i8* %t844, i32 5, i32 0, i1 %t845)
    call void @_WriteString(i8* %t844, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t844)
    %t848 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t848, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.366, i32 0, i32 0), i32 14)
    %t850 = load i8, i8* @cb
    %t851 = load i8, i8* @cc
    %t849 = icmp sge i32 %t850, %t851
    call void @_WriteBool(i8* %t848, i32 5, i32 0, i1 %t849)
    call void @_WriteString(i8* %t848, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t848)
    store %T_array_107 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.367, i32 0, i32 0), %T_array_107* @sa
    store %T_array_107 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.367, i32 0, i32 0), %T_array_107* @sb
    store %T_array_107 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.368, i32 0, i32 0), %T_array_107* @sc
    %t852 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t852, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.369, i32 0, i32 0), i32 14)
    call void @_WriteString(i8* %t852, i32 0, i32 0, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t852, i32 0, i32 0, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sb, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t852, i32 0, i32 0, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t852, i32 0, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.370, i32 0, i32 0), i32 31)
    call void @_WriteLn(i8* %t852)
    %t853 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t853, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.371, i32 0, i32 0), i32 14)
    %t854 = call i1 @_StrcmpEQ(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sb, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t853, i32 5, i32 0, i1 %t854)
    call void @_WriteString(i8* %t853, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t853)
    %t855 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t855, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.372, i32 0, i32 0), i32 14)
    %t856 = call i1 @_StrcmpEQ(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t855, i32 5, i32 0, i1 %t856)
    call void @_WriteString(i8* %t855, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t855)
    %t857 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t857, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.373, i32 0, i32 0), i32 14)
    %t858 = call i1 @_StrcmpLT(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t857, i32 5, i32 0, i1 %t858)
    call void @_WriteString(i8* %t857, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t857)
    %t859 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t859, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.374, i32 0, i32 0), i32 14)
    %t860 = call i1 @_StrcmpLT(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t859, i32 5, i32 0, i1 %t860)
    call void @_WriteString(i8* %t859, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t859)
    %t861 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t861, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.375, i32 0, i32 0), i32 14)
    %t862 = call i1 @_StrcmpGT(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t861, i32 5, i32 0, i1 %t862)
    call void @_WriteString(i8* %t861, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t861)
    %t863 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t863, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.376, i32 0, i32 0), i32 14)
    %t864 = call i1 @_StrcmpGT(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t863, i32 5, i32 0, i1 %t864)
    call void @_WriteString(i8* %t863, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t863)
    %t865 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t865, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.377, i32 0, i32 0), i32 14)
    %t866 = call i1 @_StrcmpNE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t865, i32 5, i32 0, i1 %t866)
    call void @_WriteString(i8* %t865, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t865)
    %t867 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t867, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.378, i32 0, i32 0), i32 14)
    %t868 = call i1 @_StrcmpNE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sb, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t867, i32 5, i32 0, i1 %t868)
    call void @_WriteString(i8* %t867, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t867)
    %t869 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t869, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.379, i32 0, i32 0), i32 14)
    %t870 = call i1 @_StrcmpLE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t869, i32 5, i32 0, i1 %t870)
    call void @_WriteString(i8* %t869, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t869)
    %t871 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t871, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.380, i32 0, i32 0), i32 14)
    %t872 = call i1 @_StrcmpLE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sb, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t871, i32 5, i32 0, i1 %t872)
    call void @_WriteString(i8* %t871, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t871)
    %t873 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t873, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.381, i32 0, i32 0), i32 14)
    %t874 = call i1 @_StrcmpLE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t873, i32 5, i32 0, i1 %t874)
    call void @_WriteString(i8* %t873, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t873)
    %t875 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t875, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.382, i32 0, i32 0), i32 14)
    %t876 = call i1 @_StrcmpGE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t875, i32 5, i32 0, i1 %t876)
    call void @_WriteString(i8* %t875, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t875)
    %t877 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t877, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.383, i32 0, i32 0), i32 14)
    %t878 = call i1 @_StrcmpGE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sb, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t877, i32 5, i32 0, i1 %t878)
    call void @_WriteString(i8* %t877, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t877)
    %t879 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t879, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.384, i32 0, i32 0), i32 14)
    %t880 = call i1 @_StrcmpGE(i8* getelementptr inbounds (%T_array_107, %T_array_107* @sc, i32 0, i32 0), i32 10, i8* getelementptr inbounds (%T_array_107, %T_array_107* @sa, i32 0, i32 0), i32 10)
    call void @_WriteBool(i8* %t879, i32 5, i32 0, i1 %t880)
    call void @_WriteString(i8* %t879, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t879)
    %t881 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t881, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.385, i32 0, i32 0), i32 14)
    %t882 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t882, i32 0, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.386, i32 0, i32 0), i32 31)
    call void @_WriteLn(i8* %t882)
    %t883 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t883, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.387, i32 0, i32 0), i32 14)
    %t884 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t884, i32 0, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.388, i32 0, i32 0), i32 31)
    call void @_WriteLn(i8* %t884)
    %t885 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t885, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.389, i32 0, i32 0), i32 14)
    store i32 0, i32* @x
    %t886 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t886)
    %t887 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t887, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.390, i32 0, i32 0), i32 49)
    call void @_WriteString(i8* %t887, i32 0, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.391, i32 0, i32 0), i32 35)
    call void @_WriteLn(i8* %t887)
    %t889 = getelementptr inbounds %T_record_103, %T_record_103* @r, i32 0, i32 4
    %t888 = bitcast i8* %t889 to i8*
    store i8 110, i8* %t888
    %t890 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t890, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.392, i32 0, i32 0), i32 13)
    %t892 = getelementptr inbounds %T_record_103, %T_record_103* @r, i32 0, i32 4
    %t891 = bitcast i8* %t892 to i8*
    %t893 = load i8, i8* %t891
    call void @_WriteChar(i8* %t890, i32 0, i32 0, i8 %t893)
    call void @_WriteString(i8* %t890, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.393, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t890)
    %t895 = getelementptr inbounds %T_record_103, %T_record_103* @r, i32 0, i32 13
    %t894 = bitcast i8* %t895 to %T_array_104*
    store %T_array_104 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.394, i32 0, i32 0), %T_array_104* %t894
    %t896 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t896, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.395, i32 0, i32 0), i32 13)
    %t898 = getelementptr inbounds %T_record_103, %T_record_103* @r, i32 0, i32 13
    %t897 = bitcast i8* %t898 to %T_array_104*
    call void @_WriteString(i8* %t896, i32 0, i32 0, i8* getelementptr inbounds (%T_array_104, %T_array_104* %t897, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t896, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.396, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t896)
    %t899 = getelementptr inbounds %T_array_108, %T_array_108* @sar, i32 0, i32 1
    store %T_array_109 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.397, i32 0, i32 0), %T_array_109* %t899
    %t900 = getelementptr inbounds %T_array_108, %T_array_108* @sar, i32 0, i32 2
    store %T_array_109 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.398, i32 0, i32 0), %T_array_109* %t900
    %t901 = getelementptr inbounds %T_array_108, %T_array_108* @sar, i32 0, i32 10
    store %T_array_109 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.399, i32 0, i32 0), %T_array_109* %t901
    %t902 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t902, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.400, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t902)
    %t903 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t903, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.401, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t903)
    %t904 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t904, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.402, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t904)
    %t905 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t905, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.403, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t905)
    %t906 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t906, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.403, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t906)
    %t907 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t907, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.403, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t907)
    %t908 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t908, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.403, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t908)
    %t909 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t909, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.403, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t909)
    %t910 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t910, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.403, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t910)
    %t911 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t911, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.403, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t911)
    %t912 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t912, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.404, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t912)
    %t913 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t913, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.405, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t913)
    %t914 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t914, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.406, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t914)
    %t915 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t915)
    %t916 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t916, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.407, i32 0, i32 0), i32 38)
    call void @_WriteString(i8* %t916, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.408, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t916)
    %t917 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t917, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.409, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t917, i32 0, i32 0, i8 97)
    call void @_WriteString(i8* %t917, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.410, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t917)
    %t918 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t918, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.411, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t918, i32 0, i32 0, i8 )
    call void @_WriteString(i8* %t918, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.412, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t918)
    %t919 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t919, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.413, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t919, i32 0, i32 0, i8 )
    call void @_WriteString(i8* %t919, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.414, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t919)
    %t920 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t920, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.415, i32 0, i32 0), i32 14)
028D0C10    call void @_WriteInteger(i8* %t920, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t920, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.416, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t920)
    %t921 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t921, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.417, i32 0, i32 0), i32 14)
028D0528    call void @_WriteChar(i8* %t921, i32 0, i32 0, i8 )
    call void @_WriteString(i8* %t921, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.418, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t921)
    %t922 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t922, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.419, i32 0, i32 0), i32 14)
    %t923 = icmp eq i32 113, 113
    call void @_WriteBool(i8* %t922, i32 5, i32 0, i1 %t923)
    call void @_WriteString(i8* %t922, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t922)
    %t924 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t924, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.420, i32 0, i32 0), i32 14)
    %t925 = icmp eq i32 114, 113
    call void @_WriteBool(i8* %t924, i32 5, i32 0, i1 %t925)
    call void @_WriteString(i8* %t924, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t924)
    %t926 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t926, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.421, i32 0, i32 0), i32 14)
    %t927 = icmp slt i32 98, 116
    call void @_WriteBool(i8* %t926, i32 5, i32 0, i1 %t927)
    call void @_WriteString(i8* %t926, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t926)
    %t928 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t928, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.422, i32 0, i32 0), i32 14)
    %t929 = icmp slt i32 103, 99
    call void @_WriteBool(i8* %t928, i32 5, i32 0, i1 %t929)
    call void @_WriteString(i8* %t928, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t928)
    %t930 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t930, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.406, i32 0, i32 0), i32 14)
    %t931 = icmp sgt i32 102, 101
    call void @_WriteBool(i8* %t930, i32 5, i32 0, i1 %t931)
    call void @_WriteString(i8* %t930, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t930)
    %t932 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t932, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.423, i32 0, i32 0), i32 14)
    %t933 = icmp sgt i32 102, 103
    call void @_WriteBool(i8* %t932, i32 5, i32 0, i1 %t933)
    call void @_WriteString(i8* %t932, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t932)
    %t934 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t934, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.424, i32 0, i32 0), i32 14)
    %t935 = icmp ne i32 104, 108
    call void @_WriteBool(i8* %t934, i32 5, i32 0, i1 %t935)
    call void @_WriteString(i8* %t934, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t934)
    %t936 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t936, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.425, i32 0, i32 0), i32 14)
    %t937 = icmp ne i32 105, 105
    call void @_WriteBool(i8* %t936, i32 5, i32 0, i1 %t937)
    call void @_WriteString(i8* %t936, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t936)
    %t938 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t938, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.426, i32 0, i32 0), i32 14)
    %t939 = icmp sle i32 118, 121
    call void @_WriteBool(i8* %t938, i32 5, i32 0, i1 %t939)
    call void @_WriteString(i8* %t938, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t938)
    %t940 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t940, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.427, i32 0, i32 0), i32 14)
    %t941 = icmp sle i32 121, 121
    call void @_WriteBool(i8* %t940, i32 5, i32 0, i1 %t941)
    call void @_WriteString(i8* %t940, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t940)
    %t942 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t942, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.428, i32 0, i32 0), i32 14)
    %t943 = icmp sle i32 122, 121
    call void @_WriteBool(i8* %t942, i32 5, i32 0, i1 %t943)
    call void @_WriteString(i8* %t942, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t942)
    %t944 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t944, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.429, i32 0, i32 0), i32 14)
    %t945 = icmp sge i32 108, 98
    call void @_WriteBool(i8* %t944, i32 5, i32 0, i1 %t945)
    call void @_WriteString(i8* %t944, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t944)
    %t946 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t946, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.430, i32 0, i32 0), i32 14)
    %t947 = icmp sge i32 108, 108
    call void @_WriteBool(i8* %t946, i32 5, i32 0, i1 %t947)
    call void @_WriteString(i8* %t946, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t946)
    %t948 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t948, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.431, i32 0, i32 0), i32 14)
    %t949 = icmp sge i32 108, 109
    call void @_WriteBool(i8* %t948, i32 5, i32 0, i1 %t949)
    call void @_WriteString(i8* %t948, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t948)
    %t950 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t950, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.432, i32 0, i32 0), i32 14)
    %t951 = call i1 @_StrcmpEQ(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.404, i32 0, i32 0), i32 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.404, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t950, i32 5, i32 0, i1 %t951)
    call void @_WriteString(i8* %t950, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t950)
    %t952 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t952, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.433, i32 0, i32 0), i32 14)
    %t953 = call i1 @_StrcmpEQ(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.434, i32 0, i32 0), i32 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.404, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t952, i32 5, i32 0, i1 %t953)
    call void @_WriteString(i8* %t952, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t952)
    %t954 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t954, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.435, i32 0, i32 0), i32 14)
    %t955 = call i1 @_StrcmpLT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.436, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.437, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t954, i32 5, i32 0, i1 %t955)
    call void @_WriteString(i8* %t954, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t954)
    %t956 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t956, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.438, i32 0, i32 0), i32 14)
    %t957 = call i1 @_StrcmpLT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.437, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.436, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t956, i32 5, i32 0, i1 %t957)
    call void @_WriteString(i8* %t956, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t956)
    %t958 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t958, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.439, i32 0, i32 0), i32 14)
    %t959 = call i1 @_StrcmpGT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.437, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.436, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t958, i32 5, i32 0, i1 %t959)
    call void @_WriteString(i8* %t958, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t958)
    %t960 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t960, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.440, i32 0, i32 0), i32 14)
    %t961 = call i1 @_StrcmpGT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.436, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.437, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t960, i32 5, i32 0, i1 %t961)
    call void @_WriteString(i8* %t960, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t960)
    %t962 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t962, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.441, i32 0, i32 0), i32 14)
    %t963 = call i1 @_StrcmpNE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.442, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.443, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t962, i32 5, i32 0, i1 %t963)
    call void @_WriteString(i8* %t962, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t962)
    %t964 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t964, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.444, i32 0, i32 0), i32 14)
    %t965 = call i1 @_StrcmpNE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.443, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.443, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t964, i32 5, i32 0, i1 %t965)
    call void @_WriteString(i8* %t964, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t964)
    %t966 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t966, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.445, i32 0, i32 0), i32 14)
    %t967 = call i1 @_StrcmpLE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.446, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.447, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t966, i32 5, i32 0, i1 %t967)
    call void @_WriteString(i8* %t966, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t966)
    %t968 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t968, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.448, i32 0, i32 0), i32 14)
    %t969 = call i1 @_StrcmpLE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.443, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.443, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t968, i32 5, i32 0, i1 %t969)
    call void @_WriteString(i8* %t968, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t968)
    %t970 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t970, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.449, i32 0, i32 0), i32 14)
    %t971 = call i1 @_StrcmpLE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.447, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.443, i32 0, i32 0), i32 5)
    call void @_WriteBool(i8* %t970, i32 5, i32 0, i1 %t971)
    call void @_WriteString(i8* %t970, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t970)
    %t972 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t972, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.450, i32 0, i32 0), i32 14)
    %t973 = call i1 @_StrcmpGE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.451, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.452, i32 0, i32 0), i32 6)
    call void @_WriteBool(i8* %t972, i32 5, i32 0, i1 %t973)
    call void @_WriteString(i8* %t972, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t972)
    %t974 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t974, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.453, i32 0, i32 0), i32 14)
    %t975 = call i1 @_StrcmpGE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.452, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.452, i32 0, i32 0), i32 6)
    call void @_WriteBool(i8* %t974, i32 5, i32 0, i1 %t975)
    call void @_WriteString(i8* %t974, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t974)
    %t976 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t976, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.454, i32 0, i32 0), i32 14)
    %t977 = call i1 @_StrcmpGE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.452, i32 0, i32 0), i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.455, i32 0, i32 0), i32 6)
    call void @_WriteBool(i8* %t976, i32 5, i32 0, i1 %t977)
    call void @_WriteString(i8* %t976, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t976)
    %t978 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t978, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.456, i32 0, i32 0), i32 14)
    call void @_WriteString(i8* %t978, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.457, i32 0, i32 0), i32 16)
    call void @_WriteString(i8* %t978, i32 0, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.458, i32 0, i32 0), i32 21)
    call void @_WriteLn(i8* %t978)
    %t979 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t979, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.459, i32 0, i32 0), i32 14)
    call void @_WriteChar(i8* %t979, i32 0, i32 0, i8 118)
    call void @_WriteString(i8* %t979, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.460, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t979)
    %t980 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t980, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.461, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t980)
    %t981 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t981, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.462, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t981)
    %t982 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t982, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.463, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t982)
    %t983 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t983, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.464, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t983)
    %t984 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t984, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.465, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t984)
    %t985 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t985, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.466, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t985)
    %t986 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t986, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.467, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t986)
    %t987 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t987, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.468, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t987)
    %t988 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t988, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.469, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t988)
    %t989 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t989, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.470, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t989)
    %t990 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t990, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.471, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t990)
    %t991 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t991, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.472, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t991)
    %t992 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t992, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.473, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t992)
    %t993 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t993, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.474, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t993)
    %t994 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t994, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.475, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t994)
    %t995 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t995, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.476, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t995)
    %t996 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t996, i32 0, i32 0, i8 104)
    call void @_WriteLn(i8* %t996)
    %t997 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t997)
    %t998 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t998, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.477, i32 0, i32 0), i32 48)
    call void @_WriteLn(i8* %t998)
    %t999 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t999)
    store i1 1, i1* @ba
    store i1 0, i1* @bb
    store i1 1, i1* @bc
    %t1000 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1000, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.478, i32 0, i32 0), i32 12)
    %t1001 = load i1, i1* @ba
    call void @_WriteBool(i8* %t1000, i32 5, i32 0, i1 %t1001)
    call void @_WriteChar(i8* %t1000, i32 0, i32 0, i8 32)
    %t1002 = load i1, i1* @bb
    call void @_WriteBool(i8* %t1000, i32 5, i32 0, i1 %t1002)
    call void @_WriteString(i8* %t1000, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.479, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1000)
    %t1003 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1003, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.480, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t1003, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t1003, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1003)
    %t1004 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1004, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.481, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t1004, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t1004, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1004)
    %t1005 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1005, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.482, i32 0, i32 0), i32 12)
028D00B0    call void @_WriteInteger(i8* %t1005, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1005, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1005)
    %t1007 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1007, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.483, i32 0, i32 0), i32 12)
028D09A0    call void @_WriteInteger(i8* %t1007, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1007, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1007)
    %t1009 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1009, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.484, i32 0, i32 0), i32 12)
    %t1011 = load i1, i1* @ba
    %t1012 = load i1, i1* @bc
    %t1010 = icmp eq i32 %t1011, %t1012
    call void @_WriteBool(i8* %t1009, i32 5, i32 0, i1 %t1010)
    call void @_WriteString(i8* %t1009, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1009)
    %t1013 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1013, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.485, i32 0, i32 0), i32 12)
    %t1015 = load i1, i1* @bb
    %t1016 = load i1, i1* @bb
    %t1014 = icmp eq i32 %t1015, %t1016
    call void @_WriteBool(i8* %t1013, i32 5, i32 0, i1 %t1014)
    call void @_WriteString(i8* %t1013, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1013)
    %t1017 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1017, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.486, i32 0, i32 0), i32 12)
    %t1019 = load i1, i1* @ba
    %t1020 = load i1, i1* @bb
    %t1018 = icmp eq i32 %t1019, %t1020
    call void @_WriteBool(i8* %t1017, i32 5, i32 0, i1 %t1018)
    call void @_WriteString(i8* %t1017, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1017)
    %t1021 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1021, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.487, i32 0, i32 0), i32 12)
    %t1023 = load i1, i1* @bb
    %t1024 = load i1, i1* @ba
    %t1022 = icmp slt i32 %t1023, %t1024
    call void @_WriteBool(i8* %t1021, i32 5, i32 0, i1 %t1022)
    call void @_WriteString(i8* %t1021, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1021)
    %t1025 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1025, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.488, i32 0, i32 0), i32 12)
    %t1027 = load i1, i1* @ba
    %t1028 = load i1, i1* @bb
    %t1026 = icmp slt i32 %t1027, %t1028
    call void @_WriteBool(i8* %t1025, i32 5, i32 0, i1 %t1026)
    call void @_WriteString(i8* %t1025, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1025)
    %t1029 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1029, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.489, i32 0, i32 0), i32 12)
    %t1031 = load i1, i1* @ba
    %t1032 = load i1, i1* @bb
    %t1030 = icmp sgt i32 %t1031, %t1032
    call void @_WriteBool(i8* %t1029, i32 5, i32 0, i1 %t1030)
    call void @_WriteString(i8* %t1029, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1029)
    %t1033 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1033, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.490, i32 0, i32 0), i32 12)
    %t1035 = load i1, i1* @bb
    %t1036 = load i1, i1* @ba
    %t1034 = icmp sgt i32 %t1035, %t1036
    call void @_WriteBool(i8* %t1033, i32 5, i32 0, i1 %t1034)
    call void @_WriteString(i8* %t1033, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1033)
    %t1037 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1037, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.491, i32 0, i32 0), i32 12)
    %t1039 = load i1, i1* @ba
    %t1040 = load i1, i1* @bb
    %t1038 = icmp ne i32 %t1039, %t1040
    call void @_WriteBool(i8* %t1037, i32 5, i32 0, i1 %t1038)
    call void @_WriteString(i8* %t1037, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1037)
    %t1041 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1041, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.492, i32 0, i32 0), i32 12)
    %t1043 = load i1, i1* @ba
    %t1044 = load i1, i1* @bc
    %t1042 = icmp ne i32 %t1043, %t1044
    call void @_WriteBool(i8* %t1041, i32 5, i32 0, i1 %t1042)
    call void @_WriteString(i8* %t1041, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1041)
    %t1045 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1045, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.493, i32 0, i32 0), i32 12)
    %t1047 = load i1, i1* @bb
    %t1048 = load i1, i1* @ba
    %t1046 = icmp sle i32 %t1047, %t1048
    call void @_WriteBool(i8* %t1045, i32 5, i32 0, i1 %t1046)
    call void @_WriteString(i8* %t1045, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1045)
    %t1049 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1049, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.494, i32 0, i32 0), i32 12)
    %t1051 = load i1, i1* @ba
    %t1052 = load i1, i1* @bc
    %t1050 = icmp sle i32 %t1051, %t1052
    call void @_WriteBool(i8* %t1049, i32 5, i32 0, i1 %t1050)
    call void @_WriteString(i8* %t1049, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1049)
    %t1053 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1053, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.495, i32 0, i32 0), i32 12)
    %t1055 = load i1, i1* @ba
    %t1056 = load i1, i1* @bb
    %t1054 = icmp sle i32 %t1055, %t1056
    call void @_WriteBool(i8* %t1053, i32 5, i32 0, i1 %t1054)
    call void @_WriteString(i8* %t1053, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1053)
    %t1057 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1057, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.496, i32 0, i32 0), i32 12)
    %t1059 = load i1, i1* @ba
    %t1060 = load i1, i1* @bb
    %t1058 = icmp sge i32 %t1059, %t1060
    call void @_WriteBool(i8* %t1057, i32 5, i32 0, i1 %t1058)
    call void @_WriteString(i8* %t1057, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1057)
    %t1061 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1061, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.497, i32 0, i32 0), i32 12)
    %t1063 = load i1, i1* @bb
    %t1064 = load i1, i1* @bb
    %t1062 = icmp sge i32 %t1063, %t1064
    call void @_WriteBool(i8* %t1061, i32 5, i32 0, i1 %t1062)
    call void @_WriteString(i8* %t1061, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1061)
    %t1065 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1065, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.498, i32 0, i32 0), i32 12)
    %t1067 = load i1, i1* @bb
    %t1068 = load i1, i1* @ba
    %t1066 = icmp sge i32 %t1067, %t1068
    call void @_WriteBool(i8* %t1065, i32 5, i32 0, i1 %t1066)
    call void @_WriteString(i8* %t1065, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1065)
    %t1069 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1069, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.499, i32 0, i32 0), i32 12)
    %t1070 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1070, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.500, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t1070)
    %t1071 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1071, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.501, i32 0, i32 0), i32 12)
    %t1072 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1072, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.502, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t1072)
    %t1073 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1073, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.503, i32 0, i32 0), i32 12)
    %t1074 = icmp sgt i32 1, 0
    store i1 %t1074, i1* @ba
    %t1075 = load %T_text, %T_text* @output
    %t1076 = load i1, i1* @ba
    call void @_WriteBool(i8* %t1075, i32 5, i32 0, i1 %t1076)
    call void @_WriteString(i8* %t1075, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1075)
    %t1077 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1077, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.504, i32 0, i32 0), i32 12)
    %t1078 = icmp slt i32 1, 0
    store i1 %t1078, i1* @ba
    %t1079 = load %T_text, %T_text* @output
    %t1080 = load i1, i1* @ba
    call void @_WriteBool(i8* %t1079, i32 5, i32 0, i1 %t1080)
    call void @_WriteString(i8* %t1079, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1079)
    %t1081 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1081, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.505, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t1081, i32 5, i32 0, i1 1)
    call void @_WriteChar(i8* %t1081, i32 0, i32 0, i8 32)
    call void @_WriteBool(i8* %t1081, i32 5, i32 0, i1 0)
    call void @_WriteString(i8* %t1081, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.479, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1081)
    %t1082 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1082, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.506, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t1082, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t1082, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1082)
    %t1083 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1083, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.507, i32 0, i32 0), i32 12)
    call void @_WriteBool(i8* %t1083, i32 5, i32 0, i1 )
    call void @_WriteString(i8* %t1083, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1083)
    %t1084 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1084, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.508, i32 0, i32 0), i32 12)
028D0C78    call void @_WriteInteger(i8* %t1084, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1084, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1084)
    %t1085 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1085, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.509, i32 0, i32 0), i32 12)
028D09A0    call void @_WriteInteger(i8* %t1085, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1085, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1085)
    %t1086 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1086, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.510, i32 0, i32 0), i32 12)
    %t1087 = icmp eq i32 1, 1
    call void @_WriteBool(i8* %t1086, i32 5, i32 0, i1 %t1087)
    call void @_WriteString(i8* %t1086, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1086)
    %t1088 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1088, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.511, i32 0, i32 0), i32 12)
    %t1089 = icmp eq i32 0, 0
    call void @_WriteBool(i8* %t1088, i32 5, i32 0, i1 %t1089)
    call void @_WriteString(i8* %t1088, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1088)
    %t1090 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1090, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.512, i32 0, i32 0), i32 12)
    %t1091 = icmp eq i32 1, 0
    call void @_WriteBool(i8* %t1090, i32 5, i32 0, i1 %t1091)
    call void @_WriteString(i8* %t1090, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1090)
    %t1092 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1092, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.513, i32 0, i32 0), i32 12)
    %t1093 = icmp slt i32 0, 1
    call void @_WriteBool(i8* %t1092, i32 5, i32 0, i1 %t1093)
    call void @_WriteString(i8* %t1092, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1092)
    %t1094 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1094, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.514, i32 0, i32 0), i32 12)
    %t1095 = icmp slt i32 1, 0
    call void @_WriteBool(i8* %t1094, i32 5, i32 0, i1 %t1095)
    call void @_WriteString(i8* %t1094, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1094)
    %t1096 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1096, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.515, i32 0, i32 0), i32 12)
    %t1097 = icmp sgt i32 1, 0
    call void @_WriteBool(i8* %t1096, i32 5, i32 0, i1 %t1097)
    call void @_WriteString(i8* %t1096, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1096)
    %t1098 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1098, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.516, i32 0, i32 0), i32 12)
    %t1099 = icmp sgt i32 0, 1
    call void @_WriteBool(i8* %t1098, i32 5, i32 0, i1 %t1099)
    call void @_WriteString(i8* %t1098, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1098)
    %t1100 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1100, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.517, i32 0, i32 0), i32 12)
    %t1101 = icmp ne i32 1, 0
    call void @_WriteBool(i8* %t1100, i32 5, i32 0, i1 %t1101)
    call void @_WriteString(i8* %t1100, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1100)
    %t1102 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1102, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.518, i32 0, i32 0), i32 12)
    %t1103 = icmp ne i32 1, 1
    call void @_WriteBool(i8* %t1102, i32 5, i32 0, i1 %t1103)
    call void @_WriteString(i8* %t1102, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1102)
    %t1104 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1104, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.519, i32 0, i32 0), i32 12)
    %t1105 = icmp sle i32 0, 1
    call void @_WriteBool(i8* %t1104, i32 5, i32 0, i1 %t1105)
    call void @_WriteString(i8* %t1104, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1104)
    %t1106 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1106, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.520, i32 0, i32 0), i32 12)
    %t1107 = icmp sle i32 1, 1
    call void @_WriteBool(i8* %t1106, i32 5, i32 0, i1 %t1107)
    call void @_WriteString(i8* %t1106, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1106)
    %t1108 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1108, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.521, i32 0, i32 0), i32 12)
    %t1109 = icmp sle i32 1, 0
    call void @_WriteBool(i8* %t1108, i32 5, i32 0, i1 %t1109)
    call void @_WriteString(i8* %t1108, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1108)
    %t1110 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1110, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.522, i32 0, i32 0), i32 12)
    %t1111 = icmp sge i32 1, 0
    call void @_WriteBool(i8* %t1110, i32 5, i32 0, i1 %t1111)
    call void @_WriteString(i8* %t1110, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1110)
    %t1112 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1112, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.523, i32 0, i32 0), i32 12)
    %t1113 = icmp sge i32 0, 0
    call void @_WriteBool(i8* %t1112, i32 5, i32 0, i1 %t1113)
    call void @_WriteString(i8* %t1112, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1112)
    %t1114 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1114, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.524, i32 0, i32 0), i32 12)
    %t1115 = icmp sge i32 0, 1
    call void @_WriteBool(i8* %t1114, i32 5, i32 0, i1 %t1115)
    call void @_WriteString(i8* %t1114, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1114)
    %t1116 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1116, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.525, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1116)
    %t1117 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1117, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.526, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1117)
    %t1118 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1118, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.527, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1118)
    %t1119 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1119, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.528, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1119)
    %t1120 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1120, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.529, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1120)
    %t1121 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1121, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.530, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1121)
    %t1122 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1122, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.531, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1122)
    %t1123 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1123, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.532, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t1123)
    %t1124 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1124, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.533, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t1124)
    %t1125 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1125, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.534, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t1125)
    %t1126 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1126, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1126)
    %t1127 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t1127, i32 0, i32 0, i8 102)
    call void @_WriteLn(i8* %t1127)
    %t1128 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1128, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.535, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1128)
    %t1129 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1129, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.536, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1129)
    %t1130 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1130, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.537, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1130)
    %t1131 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1131, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.538, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1131)
    %t1132 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1132, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.539, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1132)
    %t1133 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1133, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.540, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1133)
    %t1134 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1134, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.541, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1134)
    %t1135 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1135, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.542, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t1135)
    %t1136 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1136, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.543, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t1136)
    %t1137 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1137, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.544, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t1137)
    %t1138 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1138, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.545, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1138)
    %t1139 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t1139, i32 0, i32 0, i8 116)
    call void @_WriteLn(i8* %t1139)
    %t1140 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1140)
    %t1141 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1141, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.546, i32 0, i32 0), i32 46)
    call void @_WriteLn(i8* %t1141)
    %t1142 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1142)
    store i32 2, i32* @sva
    store i32 0, i32* @svb
    store i32 2, i32* @svc
    %t1143 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1143, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.547, i32 0, i32 0), i32 11)
    %t1144 = icmp eq i32 , 1
    call void @_WriteBool(i8* %t1143, i32 5, i32 0, i1 %t1144)
    call void @_WriteString(i8* %t1143, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1143)
    %t1145 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1145, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.548, i32 0, i32 0), i32 11)
    %t1146 = icmp eq i32 , 1
    call void @_WriteBool(i8* %t1145, i32 5, i32 0, i1 %t1146)
    call void @_WriteString(i8* %t1145, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1145)
    %t1147 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1147, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.549, i32 0, i32 0), i32 11)
028D00B0    call void @_WriteInteger(i8* %t1147, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1147, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1147)
    %t1149 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1149, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.550, i32 0, i32 0), i32 11)
028D08D0    call void @_WriteInteger(i8* %t1149, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1149, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.173, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1149)
    %t1151 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1151, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.551, i32 0, i32 0), i32 11)
    %t1153 = load i32, i32* @sva
    %t1154 = load i32, i32* @svc
    %t1152 = icmp eq i32 %t1153, %t1154
    call void @_WriteBool(i8* %t1151, i32 5, i32 0, i1 %t1152)
    call void @_WriteString(i8* %t1151, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1151)
    %t1155 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1155, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.552, i32 0, i32 0), i32 11)
    %t1157 = load i32, i32* @svb
    %t1158 = load i32, i32* @svb
    %t1156 = icmp eq i32 %t1157, %t1158
    call void @_WriteBool(i8* %t1155, i32 5, i32 0, i1 %t1156)
    call void @_WriteString(i8* %t1155, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1155)
    %t1159 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1159, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.553, i32 0, i32 0), i32 11)
    %t1161 = load i32, i32* @sva
    %t1162 = load i32, i32* @svb
    %t1160 = icmp eq i32 %t1161, %t1162
    call void @_WriteBool(i8* %t1159, i32 5, i32 0, i1 %t1160)
    call void @_WriteString(i8* %t1159, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1159)
    %t1163 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1163, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.554, i32 0, i32 0), i32 11)
    %t1165 = load i32, i32* @svb
    %t1166 = load i32, i32* @sva
    %t1164 = icmp slt i32 %t1165, %t1166
    call void @_WriteBool(i8* %t1163, i32 5, i32 0, i1 %t1164)
    call void @_WriteString(i8* %t1163, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1163)
    %t1167 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1167, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.555, i32 0, i32 0), i32 11)
    %t1169 = load i32, i32* @sva
    %t1170 = load i32, i32* @svb
    %t1168 = icmp slt i32 %t1169, %t1170
    call void @_WriteBool(i8* %t1167, i32 5, i32 0, i1 %t1168)
    call void @_WriteString(i8* %t1167, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1167)
    %t1171 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1171, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.556, i32 0, i32 0), i32 11)
    %t1173 = load i32, i32* @sva
    %t1174 = load i32, i32* @svb
    %t1172 = icmp sgt i32 %t1173, %t1174
    call void @_WriteBool(i8* %t1171, i32 5, i32 0, i1 %t1172)
    call void @_WriteString(i8* %t1171, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1171)
    %t1175 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1175, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.557, i32 0, i32 0), i32 11)
    %t1177 = load i32, i32* @svb
    %t1178 = load i32, i32* @sva
    %t1176 = icmp sgt i32 %t1177, %t1178
    call void @_WriteBool(i8* %t1175, i32 5, i32 0, i1 %t1176)
    call void @_WriteString(i8* %t1175, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1175)
    %t1179 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1179, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.558, i32 0, i32 0), i32 11)
    %t1181 = load i32, i32* @sva
    %t1182 = load i32, i32* @svb
    %t1180 = icmp ne i32 %t1181, %t1182
    call void @_WriteBool(i8* %t1179, i32 5, i32 0, i1 %t1180)
    call void @_WriteString(i8* %t1179, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1179)
    %t1183 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1183, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.559, i32 0, i32 0), i32 11)
    %t1185 = load i32, i32* @sva
    %t1186 = load i32, i32* @svc
    %t1184 = icmp ne i32 %t1185, %t1186
    call void @_WriteBool(i8* %t1183, i32 5, i32 0, i1 %t1184)
    call void @_WriteString(i8* %t1183, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1183)
    %t1187 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1187, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.560, i32 0, i32 0), i32 11)
    %t1189 = load i32, i32* @svb
    %t1190 = load i32, i32* @sva
    %t1188 = icmp sle i32 %t1189, %t1190
    call void @_WriteBool(i8* %t1187, i32 5, i32 0, i1 %t1188)
    call void @_WriteString(i8* %t1187, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1187)
    %t1191 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1191, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.561, i32 0, i32 0), i32 11)
    %t1193 = load i32, i32* @sva
    %t1194 = load i32, i32* @svc
    %t1192 = icmp sle i32 %t1193, %t1194
    call void @_WriteBool(i8* %t1191, i32 5, i32 0, i1 %t1192)
    call void @_WriteString(i8* %t1191, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1191)
    %t1195 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1195, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.562, i32 0, i32 0), i32 11)
    %t1197 = load i32, i32* @sva
    %t1198 = load i32, i32* @svb
    %t1196 = icmp sle i32 %t1197, %t1198
    call void @_WriteBool(i8* %t1195, i32 5, i32 0, i1 %t1196)
    call void @_WriteString(i8* %t1195, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1195)
    %t1199 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1199, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.563, i32 0, i32 0), i32 11)
    %t1201 = load i32, i32* @sva
    %t1202 = load i32, i32* @svb
    %t1200 = icmp sge i32 %t1201, %t1202
    call void @_WriteBool(i8* %t1199, i32 5, i32 0, i1 %t1200)
    call void @_WriteString(i8* %t1199, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1199)
    %t1203 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1203, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.564, i32 0, i32 0), i32 11)
    %t1205 = load i32, i32* @svb
    %t1206 = load i32, i32* @svb
    %t1204 = icmp sge i32 %t1205, %t1206
    call void @_WriteBool(i8* %t1203, i32 5, i32 0, i1 %t1204)
    call void @_WriteString(i8* %t1203, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1203)
    %t1207 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1207, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.565, i32 0, i32 0), i32 11)
    %t1209 = load i32, i32* @svb
    %t1210 = load i32, i32* @sva
    %t1208 = icmp sge i32 %t1209, %t1210
    call void @_WriteBool(i8* %t1207, i32 5, i32 0, i1 %t1208)
    call void @_WriteString(i8* %t1207, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1207)
    %t1211 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1211, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.566, i32 0, i32 0), i32 11)
    %t1212 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1212, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.567, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1212)
    %t1213 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1213, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.568, i32 0, i32 0), i32 11)
    %t1214 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1214, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.569, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1214)
    %t1215 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1215, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.547, i32 0, i32 0), i32 11)
    %t1216 = icmp eq i32 , 1
    call void @_WriteBool(i8* %t1215, i32 5, i32 0, i1 %t1216)
    call void @_WriteString(i8* %t1215, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1215)
    %t1217 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1217, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.548, i32 0, i32 0), i32 11)
    %t1218 = icmp eq i32 , 3
    call void @_WriteBool(i8* %t1217, i32 5, i32 0, i1 %t1218)
    call void @_WriteString(i8* %t1217, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1217)
    %t1219 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1219, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.549, i32 0, i32 0), i32 11)
028D0C10    call void @_WriteInteger(i8* %t1219, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1219, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.173, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1219)
    %t1220 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1220, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.550, i32 0, i32 0), i32 11)
028D0868    call void @_WriteInteger(i8* %t1220, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1220, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1220)
    %t1221 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1221, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.551, i32 0, i32 0), i32 11)
    %t1222 = icmp eq i32 3, 3
    call void @_WriteBool(i8* %t1221, i32 5, i32 0, i1 %t1222)
    call void @_WriteString(i8* %t1221, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1221)
    %t1223 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1223, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.552, i32 0, i32 0), i32 11)
    %t1224 = icmp eq i32 4, 4
    call void @_WriteBool(i8* %t1223, i32 5, i32 0, i1 %t1224)
    call void @_WriteString(i8* %t1223, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1223)
    %t1225 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1225, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.553, i32 0, i32 0), i32 11)
    %t1226 = icmp eq i32 1, 2
    call void @_WriteBool(i8* %t1225, i32 5, i32 0, i1 %t1226)
    call void @_WriteString(i8* %t1225, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1225)
    %t1227 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1227, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.554, i32 0, i32 0), i32 11)
    %t1228 = icmp slt i32 0, 2
    call void @_WriteBool(i8* %t1227, i32 5, i32 0, i1 %t1228)
    call void @_WriteString(i8* %t1227, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1227)
    %t1229 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1229, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.555, i32 0, i32 0), i32 11)
    %t1230 = icmp slt i32 4, 4
    call void @_WriteBool(i8* %t1229, i32 5, i32 0, i1 %t1230)
    call void @_WriteString(i8* %t1229, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1229)
    %t1231 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1231, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.556, i32 0, i32 0), i32 11)
    %t1232 = icmp sgt i32 6, 5
    call void @_WriteBool(i8* %t1231, i32 5, i32 0, i1 %t1232)
    call void @_WriteString(i8* %t1231, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1231)
    %t1233 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1233, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.557, i32 0, i32 0), i32 11)
    %t1234 = icmp sgt i32 4, 6
    call void @_WriteBool(i8* %t1233, i32 5, i32 0, i1 %t1234)
    call void @_WriteString(i8* %t1233, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1233)
    %t1235 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1235, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.558, i32 0, i32 0), i32 11)
    %t1236 = icmp ne i32 3, 1
    call void @_WriteBool(i8* %t1235, i32 5, i32 0, i1 %t1236)
    call void @_WriteString(i8* %t1235, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1235)
    %t1237 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1237, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.559, i32 0, i32 0), i32 11)
    %t1238 = icmp ne i32 2, 2
    call void @_WriteBool(i8* %t1237, i32 5, i32 0, i1 %t1238)
    call void @_WriteString(i8* %t1237, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1237)
    %t1239 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1239, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.560, i32 0, i32 0), i32 11)
    %t1240 = icmp sle i32 0, 4
    call void @_WriteBool(i8* %t1239, i32 5, i32 0, i1 %t1240)
    call void @_WriteString(i8* %t1239, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1239)
    %t1241 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1241, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.561, i32 0, i32 0), i32 11)
    %t1242 = icmp sle i32 4, 4
    call void @_WriteBool(i8* %t1241, i32 5, i32 0, i1 %t1242)
    call void @_WriteString(i8* %t1241, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1241)
    %t1243 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1243, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.562, i32 0, i32 0), i32 11)
    %t1244 = icmp sle i32 5, 4
    call void @_WriteBool(i8* %t1243, i32 5, i32 0, i1 %t1244)
    call void @_WriteString(i8* %t1243, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1243)
    %t1245 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1245, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.563, i32 0, i32 0), i32 11)
    %t1246 = icmp sge i32 4, 1
    call void @_WriteBool(i8* %t1245, i32 5, i32 0, i1 %t1246)
    call void @_WriteString(i8* %t1245, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1245)
    %t1247 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1247, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.564, i32 0, i32 0), i32 11)
    %t1248 = icmp sge i32 1, 1
    call void @_WriteBool(i8* %t1247, i32 5, i32 0, i1 %t1248)
    call void @_WriteString(i8* %t1247, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1247)
    %t1249 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1249, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.565, i32 0, i32 0), i32 11)
    %t1250 = icmp sge i32 1, 5
    call void @_WriteBool(i8* %t1249, i32 5, i32 0, i1 %t1250)
    call void @_WriteString(i8* %t1249, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1249)
    %t1251 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1251)
    %t1252 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1252, i32 0, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.570, i32 0, i32 0), i32 56)
    call void @_WriteLn(i8* %t1252)
    %t1253 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1253)
    %t1254 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1254, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.571, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1254, i32 15, i32 0, double 1.55400)
    call void @_WriteString(i8* %t1254, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.572, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1254)
    %t1255 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1255, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.573, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1255, i32 15, i32 0, double 0.00334000)
    call void @_WriteString(i8* %t1255, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.574, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1255)
    %t1256 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1256, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.575, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1256, i32 15, i32 0, double 3.34000e-24)
    call void @_WriteString(i8* %t1256, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.576, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1256)
    %t1257 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1257, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.577, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1257, i32 15, i32 0, double 4.00000e-45)
    call void @_WriteString(i8* %t1257, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.578, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1257)
    %t1258 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1258, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.579, i32 0, i32 0), i32 9)
    %t1259 = fneg double 5.56500
    call void @_WriteReal(i8* %t1258, i32 15, i32 0, double %t1259)
    call void @_WriteString(i8* %t1258, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.580, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1258)
    %t1260 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1260, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.581, i32 0, i32 0), i32 9)
    %t1261 = fneg double 0.00944000
    call void @_WriteReal(i8* %t1260, i32 15, i32 0, double %t1261)
    call void @_WriteString(i8* %t1260, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.582, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1260)
    %t1262 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1262, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.583, i32 0, i32 0), i32 9)
    %t1263 = fneg double 6.36400e+29
    call void @_WriteReal(i8* %t1262, i32 15, i32 0, double %t1263)
    call void @_WriteString(i8* %t1262, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.584, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1262)
    %t1264 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1264, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.585, i32 0, i32 0), i32 9)
    %t1265 = fneg double 2.00000e-14
    call void @_WriteReal(i8* %t1264, i32 15, i32 0, double %t1265)
    call void @_WriteString(i8* %t1264, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.586, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1264)
    %t1266 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1266, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.587, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1266)
    %t1267 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1267, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.588, i32 0, i32 0), i32 50)
    call void @_WriteLn(i8* %t1267)
    %t1268 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1268, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.589, i32 0, i32 0), i32 50)
    call void @_WriteLn(i8* %t1268)
    %t1269 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1269, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.590, i32 0, i32 0), i32 38)
    call void @_WriteLn(i8* %t1269)
    %t1270 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1270, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.591, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1270)
    %t1271 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1271, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.591, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1271)
    %t1272 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1272, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.591, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1272)
    %t1273 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1273, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.591, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1273)
    %t1274 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1274, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.591, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1274)
    %t1275 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1275, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.591, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1275)
    %t1276 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1276, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.591, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1276)
    %t1277 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1277, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.591, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1277)
    %t1278 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1278, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.591, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1278)
    %t1279 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1279, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.592, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1279)
    %t1280 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1280, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.593, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t1280)
    %t1281 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1281, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.594, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t1281)
    %t1282 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1282, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.595, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t1282)
    %t1283 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1283, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.596, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t1283)
    %t1284 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1284, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.597, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1284)
    %t1285 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1285, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.598, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t1285)
    %t1286 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1286, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.599, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1286)
    %t1287 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1287, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.600, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1287)
    %t1288 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1288, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.601, i32 0, i32 0), i32 19)
    call void @_WriteLn(i8* %t1288)
    %t1289 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1289, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.602, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t1289)
    %t1290 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1290, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.603, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1290)
    %t1291 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1291, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.588, i32 0, i32 0), i32 50)
    call void @_WriteLn(i8* %t1291)
    %t1292 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1292, i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.589, i32 0, i32 0), i32 50)
    call void @_WriteLn(i8* %t1292)
    %t1293 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1293, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.590, i32 0, i32 0), i32 38)
    call void @_WriteLn(i8* %t1293)
    %t1294 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1294, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.604, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t1294)
    %t1295 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1295, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.605, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t1295)
    %t1296 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1296, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.606, i32 0, i32 0), i32 5)
    call void @_WriteLn(i8* %t1296)
    %t1297 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1297, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.607, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1297)
    %t1298 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1298, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.608, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1298)
    %t1299 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1299, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.609, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1299)
    %t1300 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1300, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.610, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1300)
    %t1301 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1301, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.611, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1301)
    %t1302 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1302, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.612, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t1302)
    %t1303 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1303, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.613, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t1303)
    %t1304 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1304, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.614, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t1304)
    %t1305 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1305, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.615, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1305)
    %t1306 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1306, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.616, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t1306)
    %t1307 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1307, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.617, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1307)
    %t1308 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1308, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.618, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1308)
    %t1309 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1309, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.619, i32 0, i32 0), i32 19)
    call void @_WriteLn(i8* %t1309)
    %t1310 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1310, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.620, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t1310)
    %t1311 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1311, i32 0, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.621, i32 0, i32 0), i32 21)
    call void @_WriteLn(i8* %t1311)
    %t1312 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1312, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.622, i32 0, i32 0), i32 22)
    call void @_WriteLn(i8* %t1312)
    %t1313 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1313, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.623, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t1313)
    store double 435.230, double* @ra
    store double 983.670, double* @rb
    %t1314 = load double, double* @rb
    store double %t1314, double* @rc
    store double 0.344300, double* @rd
    %t1315 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1315, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.624, i32 0, i32 0), i32 9)
    %t1317 = load double, double* @ra
    %t1318 = load double, double* @rb
    %t1316 = fadd double %t1317, %t1318
    call void @_WriteReal(i8* %t1315, i32 15, i32 0, double %t1316)
    call void @_WriteString(i8* %t1315, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.625, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1315)
    %t1319 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1319, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.626, i32 0, i32 0), i32 9)
    %t1321 = load double, double* @rb
    %t1322 = load double, double* @ra
    %t1320 = fsub double %t1321, %t1322
    call void @_WriteReal(i8* %t1319, i32 15, i32 0, double %t1320)
    call void @_WriteString(i8* %t1319, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.627, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1319)
    %t1323 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1323, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.628, i32 0, i32 0), i32 9)
    %t1325 = load double, double* @ra
    %t1326 = load double, double* @rb
    %t1324 = fmul double %t1325, %t1326
    call void @_WriteReal(i8* %t1323, i32 15, i32 0, double %t1324)
    call void @_WriteString(i8* %t1323, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.629, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1323)
    %t1327 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1327, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.630, i32 0, i32 0), i32 9)
    %t1329 = load double, double* @rb
    %t1330 = load double, double* @ra
    %t1328 = fdiv double %t1329, %t1330
    call void @_WriteReal(i8* %t1327, i32 15, i32 0, double %t1328)
    call void @_WriteString(i8* %t1327, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.631, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1327)
    %t1331 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1331, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.632, i32 0, i32 0), i32 9)
    %t1333 = load double, double* @rc
    %t1334 = load double, double* @rb
    %t1332 = fcmp ueq double %t1333, %t1334
    call void @_WriteBool(i8* %t1331, i32 5, i32 0, i1 %t1332)
    call void @_WriteString(i8* %t1331, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1331)
    %t1335 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1335, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.633, i32 0, i32 0), i32 9)
    %t1337 = load double, double* @ra
    %t1338 = load double, double* @rb
    %t1336 = fcmp ueq double %t1337, %t1338
    call void @_WriteBool(i8* %t1335, i32 5, i32 0, i1 %t1336)
    call void @_WriteString(i8* %t1335, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1335)
    %t1339 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1339, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.634, i32 0, i32 0), i32 9)
    %t1341 = load double, double* @ra
    %t1342 = load double, double* @rb
    %t1340 = fcmp ult double %t1341, %t1342
    call void @_WriteBool(i8* %t1339, i32 5, i32 0, i1 %t1340)
    call void @_WriteString(i8* %t1339, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1339)
    %t1343 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1343, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.635, i32 0, i32 0), i32 9)
    %t1345 = load double, double* @rb
    %t1346 = load double, double* @ra
    %t1344 = fcmp ult double %t1345, %t1346
    call void @_WriteBool(i8* %t1343, i32 5, i32 0, i1 %t1344)
    call void @_WriteString(i8* %t1343, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1343)
    %t1347 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1347, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.636, i32 0, i32 0), i32 9)
    %t1349 = load double, double* @rb
    %t1350 = load double, double* @ra
    %t1348 = fcmp ugt double %t1349, %t1350
    call void @_WriteBool(i8* %t1347, i32 5, i32 0, i1 %t1348)
    call void @_WriteString(i8* %t1347, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1347)
    %t1351 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1351, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.637, i32 0, i32 0), i32 9)
    %t1353 = load double, double* @ra
    %t1354 = load double, double* @rb
    %t1352 = fcmp ugt double %t1353, %t1354
    call void @_WriteBool(i8* %t1351, i32 5, i32 0, i1 %t1352)
    call void @_WriteString(i8* %t1351, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1351)
    %t1355 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1355, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.638, i32 0, i32 0), i32 9)
    %t1357 = load double, double* @ra
    %t1358 = load double, double* @rb
    %t1356 = fcmp une double %t1357, %t1358
    call void @_WriteBool(i8* %t1355, i32 5, i32 0, i1 %t1356)
    call void @_WriteString(i8* %t1355, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1355)
    %t1359 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1359, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.639, i32 0, i32 0), i32 9)
    %t1361 = load double, double* @rb
    %t1362 = load double, double* @rc
    %t1360 = fcmp une double %t1361, %t1362
    call void @_WriteBool(i8* %t1359, i32 5, i32 0, i1 %t1360)
    call void @_WriteString(i8* %t1359, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1359)
    %t1363 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1363, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.640, i32 0, i32 0), i32 9)
    %t1365 = load double, double* @ra
    %t1366 = load double, double* @rb
    %t1364 = fcmp ule double %t1365, %t1366
    call void @_WriteBool(i8* %t1363, i32 5, i32 0, i1 %t1364)
    call void @_WriteString(i8* %t1363, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1363)
    %t1367 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1367, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.641, i32 0, i32 0), i32 9)
    %t1369 = load double, double* @rc
    %t1370 = load double, double* @rb
    %t1368 = fcmp ule double %t1369, %t1370
    call void @_WriteBool(i8* %t1367, i32 5, i32 0, i1 %t1368)
    call void @_WriteString(i8* %t1367, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1367)
    %t1371 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1371, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.642, i32 0, i32 0), i32 9)
    %t1373 = load double, double* @rb
    %t1374 = load double, double* @ra
    %t1372 = fcmp ule double %t1373, %t1374
    call void @_WriteBool(i8* %t1371, i32 5, i32 0, i1 %t1372)
    call void @_WriteString(i8* %t1371, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1371)
    %t1375 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1375, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.643, i32 0, i32 0), i32 9)
    %t1377 = load double, double* @rb
    %t1378 = load double, double* @ra
    %t1376 = fcmp uge double %t1377, %t1378
    call void @_WriteBool(i8* %t1375, i32 5, i32 0, i1 %t1376)
    call void @_WriteString(i8* %t1375, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1375)
    %t1379 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1379, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.644, i32 0, i32 0), i32 9)
    %t1381 = load double, double* @rb
    %t1382 = load double, double* @rc
    %t1380 = fcmp uge double %t1381, %t1382
    call void @_WriteBool(i8* %t1379, i32 5, i32 0, i1 %t1380)
    call void @_WriteString(i8* %t1379, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1379)
    %t1383 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1383, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.645, i32 0, i32 0), i32 9)
    %t1385 = load double, double* @ra
    %t1386 = load double, double* @rb
    %t1384 = fcmp uge double %t1385, %t1386
    call void @_WriteBool(i8* %t1383, i32 5, i32 0, i1 %t1384)
    call void @_WriteString(i8* %t1383, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1383)
    %t1387 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1387, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.646, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1387, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1387, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.647, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1387)
    %t1388 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1388, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.648, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1388, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1388, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.649, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1388)
    %t1389 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1389, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.650, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1389, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1389, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.651, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1389)
    %t1390 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1390, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.652, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1390, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1390, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.653, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1390)
    %t1391 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1391, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.654, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1391, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1391, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.655, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1391)
    %t1392 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1392, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.656, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1392, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1392, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.657, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1392)
    %t1393 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1393, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.658, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1393, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1393, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.659, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1393)
    %t1394 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1394, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.660, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1394, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1394, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.661, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1394)
    %t1395 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1395, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.662, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1395, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1395, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.663, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1395)
    %t1396 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1396, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.664, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1396, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1396, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.661, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1396)
    %t1397 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1397, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.665, i32 0, i32 0), i32 9)
    %t1398 = fadd double 344.939, 933.113
    call void @_WriteReal(i8* %t1397, i32 15, i32 0, double %t1398)
    call void @_WriteString(i8* %t1397, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.666, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1397)
    %t1399 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1399, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.667, i32 0, i32 0), i32 9)
    %t1400 = fsub double 883.885, 644.939
    call void @_WriteReal(i8* %t1399, i32 15, i32 0, double %t1400)
    call void @_WriteString(i8* %t1399, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.668, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1399)
    %t1401 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1401, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.669, i32 0, i32 0), i32 9)
    %t1402 = fmul double 754.740, 138.750
    call void @_WriteReal(i8* %t1401, i32 15, i32 0, double %t1402)
    call void @_WriteString(i8* %t1401, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.670, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1401)
    %t1403 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1403, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.671, i32 0, i32 0), i32 9)
    %t1404 = fdiv double 634.300, 87374.0
    call void @_WriteReal(i8* %t1403, i32 15, i32 0, double %t1404)
    call void @_WriteString(i8* %t1403, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.672, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1403)
    %t1405 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1405, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.673, i32 0, i32 0), i32 9)
    %t1406 = fcmp ueq double 77.4400, 77.4400
    call void @_WriteBool(i8* %t1405, i32 5, i32 0, i1 %t1406)
    call void @_WriteString(i8* %t1405, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1405)
    %t1407 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1407, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.674, i32 0, i32 0), i32 9)
    %t1408 = fcmp ueq double 733.900, 959.200
    call void @_WriteBool(i8* %t1407, i32 5, i32 0, i1 %t1408)
    call void @_WriteString(i8* %t1407, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1407)
    %t1409 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1409, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.675, i32 0, i32 0), i32 9)
    %t1410 = fcmp ult double 883.220, 8383.33
    call void @_WriteBool(i8* %t1409, i32 5, i32 0, i1 %t1410)
    call void @_WriteString(i8* %t1409, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1409)
    %t1411 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1411, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.676, i32 0, i32 0), i32 9)
    %t1412 = fcmp ult double 475.322, 234.930
    call void @_WriteBool(i8* %t1411, i32 5, i32 0, i1 %t1412)
    call void @_WriteString(i8* %t1411, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1411)
    %t1413 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1413, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.677, i32 0, i32 0), i32 9)
    %t1414 = fcmp ugt double 7374.30, 6442.34
    call void @_WriteBool(i8* %t1413, i32 5, i32 0, i1 %t1414)
    call void @_WriteString(i8* %t1413, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1413)
    %t1415 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1415, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.678, i32 0, i32 0), i32 9)
    %t1416 = fcmp ugt double 985.562, 1001.95
    call void @_WriteBool(i8* %t1415, i32 5, i32 0, i1 %t1416)
    call void @_WriteString(i8* %t1415, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1415)
    %t1417 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1417, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.679, i32 0, i32 0), i32 9)
    %t1418 = fcmp une double 30.1100, 938.440
    call void @_WriteBool(i8* %t1417, i32 5, i32 0, i1 %t1418)
    call void @_WriteString(i8* %t1417, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1417)
    %t1419 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1419, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.680, i32 0, i32 0), i32 9)
    %t1420 = fcmp une double 1.23300, 1.23300
    call void @_WriteBool(i8* %t1419, i32 5, i32 0, i1 %t1420)
    call void @_WriteString(i8* %t1419, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1419)
    %t1421 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1421, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.681, i32 0, i32 0), i32 9)
    %t1422 = fcmp ule double 8484.00, 9344.00
    call void @_WriteBool(i8* %t1421, i32 5, i32 0, i1 %t1422)
    call void @_WriteString(i8* %t1421, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1421)
    %t1423 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1423, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.682, i32 0, i32 0), i32 9)
    %t1424 = fcmp ule double 9.11000, 9.11000
    call void @_WriteBool(i8* %t1423, i32 5, i32 0, i1 %t1424)
    call void @_WriteString(i8* %t1423, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1423)
    %t1425 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1425, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.683, i32 0, i32 0), i32 9)
    %t1426 = fcmp ule double 93.3230, 90.3230
    call void @_WriteBool(i8* %t1425, i32 5, i32 0, i1 %t1426)
    call void @_WriteString(i8* %t1425, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1425)
    %t1427 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1427, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.684, i32 0, i32 0), i32 9)
    %t1428 = fcmp uge double 6543.44, 5883.33
    call void @_WriteBool(i8* %t1427, i32 5, i32 0, i1 %t1428)
    call void @_WriteString(i8* %t1427, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1427)
    %t1429 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1429, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.685, i32 0, i32 0), i32 9)
    %t1430 = fcmp uge double 3247.03, 3247.03
    call void @_WriteBool(i8* %t1429, i32 5, i32 0, i1 %t1430)
    call void @_WriteString(i8* %t1429, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1429)
    %t1431 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1431, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.686, i32 0, i32 0), i32 9)
    %t1432 = fcmp uge double 28343.2, 30044.5
    call void @_WriteBool(i8* %t1431, i32 5, i32 0, i1 %t1432)
    call void @_WriteString(i8* %t1431, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1431)
    %t1433 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1433, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.687, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1433, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1433, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.688, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1433)
    %t1434 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1434, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.689, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1434, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1434, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.690, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1434)
    %t1435 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1435, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.691, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1435, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1435, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.692, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1435)
    %t1436 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1436, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.693, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1436, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1436, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.694, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1436)
    %t1437 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1437, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.695, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1437, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1437, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.696, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1437)
    %t1438 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1438, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.697, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1438, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1438, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.698, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1438)
    %t1439 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1439, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.699, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1439, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1439, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.700, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1439)
    %t1440 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1440, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.701, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1440, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1440, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.702, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1440)
    %t1441 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1441, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.703, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1441, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1441, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.704, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1441)
    %t1442 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1442, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.705, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1442, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1442, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.706, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1442)
    %t1443 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1443, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.707, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1443, i32 15, i32 0, double 43.3300)
    call void @_WriteString(i8* %t1443, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.708, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1443)
    %t1444 = fneg double 734.200
    store double %t1444, double* @ra
    %t1445 = fneg double 7634.52
    store double %t1445, double* @rb
    %t1446 = load double, double* @ra
    store double %t1446, double* @rc
    store double 1034.54, double* @rd
    %t1447 = fneg double 0.384830
    store double %t1447, double* @re
    %t1448 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1448, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.709, i32 0, i32 0), i32 9)
    %t1450 = load double, double* @ra
    %t1451 = load double, double* @rd
    %t1449 = fadd double %t1450, %t1451
    call void @_WriteReal(i8* %t1448, i32 15, i32 0, double %t1449)
    call void @_WriteString(i8* %t1448, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.710, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1448)
    %t1452 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1452, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.711, i32 0, i32 0), i32 9)
    %t1454 = load double, double* @rd
    %t1455 = load double, double* @ra
    %t1453 = fadd double %t1454, %t1455
    call void @_WriteReal(i8* %t1452, i32 15, i32 0, double %t1453)
    call void @_WriteString(i8* %t1452, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.710, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1452)
    %t1456 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1456, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.712, i32 0, i32 0), i32 9)
    %t1458 = load double, double* @rb
    %t1459 = load double, double* @rd
    %t1457 = fadd double %t1458, %t1459
    call void @_WriteReal(i8* %t1456, i32 15, i32 0, double %t1457)
    call void @_WriteString(i8* %t1456, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.713, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1456)
    %t1460 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1460, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.714, i32 0, i32 0), i32 9)
    %t1462 = load double, double* @ra
    %t1463 = load double, double* @rb
    %t1461 = fadd double %t1462, %t1463
    call void @_WriteReal(i8* %t1460, i32 15, i32 0, double %t1461)
    call void @_WriteString(i8* %t1460, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.715, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1460)
    %t1464 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1464, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.716, i32 0, i32 0), i32 9)
    %t1466 = load double, double* @rd
    %t1467 = load double, double* @ra
    %t1465 = fsub double %t1466, %t1467
    call void @_WriteReal(i8* %t1464, i32 15, i32 0, double %t1465)
    call void @_WriteString(i8* %t1464, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.717, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1464)
    %t1468 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1468, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.718, i32 0, i32 0), i32 9)
    %t1470 = load double, double* @rb
    %t1471 = load double, double* @rd
    %t1469 = fsub double %t1470, %t1471
    call void @_WriteReal(i8* %t1468, i32 15, i32 0, double %t1469)
    call void @_WriteString(i8* %t1468, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.719, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1468)
    %t1472 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1472, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.720, i32 0, i32 0), i32 9)
    %t1474 = load double, double* @rb
    %t1475 = load double, double* @ra
    %t1473 = fsub double %t1474, %t1475
    call void @_WriteReal(i8* %t1472, i32 15, i32 0, double %t1473)
    call void @_WriteString(i8* %t1472, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.721, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1472)
    %t1476 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1476, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.722, i32 0, i32 0), i32 9)
    %t1478 = load double, double* @rd
    %t1479 = load double, double* @ra
    %t1477 = fmul double %t1478, %t1479
    call void @_WriteReal(i8* %t1476, i32 15, i32 0, double %t1477)
    call void @_WriteString(i8* %t1476, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.723, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1476)
    %t1480 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1480, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.724, i32 0, i32 0), i32 9)
    %t1482 = load double, double* @ra
    %t1483 = load double, double* @rd
    %t1481 = fmul double %t1482, %t1483
    call void @_WriteReal(i8* %t1480, i32 15, i32 0, double %t1481)
    call void @_WriteString(i8* %t1480, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.723, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1480)
    %t1484 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1484, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.725, i32 0, i32 0), i32 9)
    %t1486 = load double, double* @ra
    %t1487 = load double, double* @rb
    %t1485 = fmul double %t1486, %t1487
    call void @_WriteReal(i8* %t1484, i32 15, i32 0, double %t1485)
    call void @_WriteString(i8* %t1484, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.726, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1484)
    %t1488 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1488, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.727, i32 0, i32 0), i32 9)
    %t1490 = load double, double* @rd
    %t1491 = load double, double* @ra
    %t1489 = fdiv double %t1490, %t1491
    call void @_WriteReal(i8* %t1488, i32 15, i32 0, double %t1489)
    call void @_WriteString(i8* %t1488, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.728, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1488)
    %t1492 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1492, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.729, i32 0, i32 0), i32 9)
    %t1494 = load double, double* @rb
    %t1495 = load double, double* @rd
    %t1493 = fdiv double %t1494, %t1495
    call void @_WriteReal(i8* %t1492, i32 15, i32 0, double %t1493)
    call void @_WriteString(i8* %t1492, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.730, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1492)
    %t1496 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1496, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.731, i32 0, i32 0), i32 9)
    %t1498 = load double, double* @rb
    %t1499 = load double, double* @ra
    %t1497 = fdiv double %t1498, %t1499
    call void @_WriteReal(i8* %t1496, i32 15, i32 0, double %t1497)
    call void @_WriteString(i8* %t1496, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.732, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1496)
    %t1500 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1500, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.733, i32 0, i32 0), i32 9)
    %t1502 = load double, double* @ra
    %t1503 = load double, double* @rc
    %t1501 = fcmp ueq double %t1502, %t1503
    call void @_WriteBool(i8* %t1500, i32 5, i32 0, i1 %t1501)
    call void @_WriteString(i8* %t1500, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1500)
    %t1504 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1504, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.734, i32 0, i32 0), i32 9)
    %t1506 = load double, double* @ra
    %t1507 = load double, double* @rb
    %t1505 = fcmp ueq double %t1506, %t1507
    call void @_WriteBool(i8* %t1504, i32 5, i32 0, i1 %t1505)
    call void @_WriteString(i8* %t1504, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1504)
    %t1508 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1508, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.735, i32 0, i32 0), i32 9)
    %t1510 = load double, double* @ra
    %t1511 = load double, double* @rb
    %t1509 = fcmp une double %t1510, %t1511
    call void @_WriteBool(i8* %t1508, i32 5, i32 0, i1 %t1509)
    call void @_WriteString(i8* %t1508, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1508)
    %t1512 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1512, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.736, i32 0, i32 0), i32 9)
    %t1514 = load double, double* @ra
    %t1515 = load double, double* @rc
    %t1513 = fcmp une double %t1514, %t1515
    call void @_WriteBool(i8* %t1512, i32 5, i32 0, i1 %t1513)
    call void @_WriteString(i8* %t1512, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1512)
    %t1516 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1516, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.737, i32 0, i32 0), i32 9)
    %t1518 = load double, double* @ra
    %t1519 = load double, double* @rd
    %t1517 = fcmp ult double %t1518, %t1519
    call void @_WriteBool(i8* %t1516, i32 5, i32 0, i1 %t1517)
    call void @_WriteString(i8* %t1516, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1516)
    %t1520 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1520, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.738, i32 0, i32 0), i32 9)
    %t1522 = load double, double* @rb
    %t1523 = load double, double* @ra
    %t1521 = fcmp ult double %t1522, %t1523
    call void @_WriteBool(i8* %t1520, i32 5, i32 0, i1 %t1521)
    call void @_WriteString(i8* %t1520, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1520)
    %t1524 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1524, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.739, i32 0, i32 0), i32 9)
    %t1526 = load double, double* @rd
    %t1527 = load double, double* @ra
    %t1525 = fcmp ult double %t1526, %t1527
    call void @_WriteBool(i8* %t1524, i32 5, i32 0, i1 %t1525)
    call void @_WriteString(i8* %t1524, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1524)
    %t1528 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1528, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.740, i32 0, i32 0), i32 9)
    %t1530 = load double, double* @ra
    %t1531 = load double, double* @rb
    %t1529 = fcmp ult double %t1530, %t1531
    call void @_WriteBool(i8* %t1528, i32 5, i32 0, i1 %t1529)
    call void @_WriteString(i8* %t1528, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1528)
    %t1532 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1532, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.741, i32 0, i32 0), i32 9)
    %t1534 = load double, double* @rd
    %t1535 = load double, double* @ra
    %t1533 = fcmp ugt double %t1534, %t1535
    call void @_WriteBool(i8* %t1532, i32 5, i32 0, i1 %t1533)
    call void @_WriteString(i8* %t1532, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1532)
    %t1536 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1536, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.742, i32 0, i32 0), i32 9)
    %t1538 = load double, double* @ra
    %t1539 = load double, double* @rb
    %t1537 = fcmp ugt double %t1538, %t1539
    call void @_WriteBool(i8* %t1536, i32 5, i32 0, i1 %t1537)
    call void @_WriteString(i8* %t1536, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1536)
    %t1540 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1540, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.743, i32 0, i32 0), i32 9)
    %t1542 = load double, double* @ra
    %t1543 = load double, double* @rd
    %t1541 = fcmp ugt double %t1542, %t1543
    call void @_WriteBool(i8* %t1540, i32 5, i32 0, i1 %t1541)
    call void @_WriteString(i8* %t1540, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1540)
    %t1544 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1544, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.744, i32 0, i32 0), i32 9)
    %t1546 = load double, double* @rb
    %t1547 = load double, double* @ra
    %t1545 = fcmp ugt double %t1546, %t1547
    call void @_WriteBool(i8* %t1544, i32 5, i32 0, i1 %t1545)
    call void @_WriteString(i8* %t1544, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1544)
    %t1548 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1548, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.745, i32 0, i32 0), i32 9)
    %t1550 = load double, double* @ra
    %t1551 = load double, double* @rd
    %t1549 = fcmp ule double %t1550, %t1551
    call void @_WriteBool(i8* %t1548, i32 5, i32 0, i1 %t1549)
    call void @_WriteString(i8* %t1548, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1548)
    %t1552 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1552, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.746, i32 0, i32 0), i32 9)
    %t1554 = load double, double* @rb
    %t1555 = load double, double* @ra
    %t1553 = fcmp ule double %t1554, %t1555
    call void @_WriteBool(i8* %t1552, i32 5, i32 0, i1 %t1553)
    call void @_WriteString(i8* %t1552, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1552)
    %t1556 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1556, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.747, i32 0, i32 0), i32 9)
    %t1558 = load double, double* @ra
    %t1559 = load double, double* @rc
    %t1557 = fcmp ule double %t1558, %t1559
    call void @_WriteBool(i8* %t1556, i32 5, i32 0, i1 %t1557)
    call void @_WriteString(i8* %t1556, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1556)
    %t1560 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1560, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.748, i32 0, i32 0), i32 9)
    %t1562 = load double, double* @rd
    %t1563 = load double, double* @ra
    %t1561 = fcmp ule double %t1562, %t1563
    call void @_WriteBool(i8* %t1560, i32 5, i32 0, i1 %t1561)
    call void @_WriteString(i8* %t1560, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1560)
    %t1564 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1564, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.749, i32 0, i32 0), i32 9)
    %t1566 = load double, double* @ra
    %t1567 = load double, double* @rb
    %t1565 = fcmp ule double %t1566, %t1567
    call void @_WriteBool(i8* %t1564, i32 5, i32 0, i1 %t1565)
    call void @_WriteString(i8* %t1564, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1564)
    %t1568 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1568, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.750, i32 0, i32 0), i32 9)
    %t1570 = load double, double* @rd
    %t1571 = load double, double* @ra
    %t1569 = fcmp uge double %t1570, %t1571
    call void @_WriteBool(i8* %t1568, i32 5, i32 0, i1 %t1569)
    call void @_WriteString(i8* %t1568, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1568)
    %t1572 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1572, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.751, i32 0, i32 0), i32 9)
    %t1574 = load double, double* @ra
    %t1575 = load double, double* @rb
    %t1573 = fcmp uge double %t1574, %t1575
    call void @_WriteBool(i8* %t1572, i32 5, i32 0, i1 %t1573)
    call void @_WriteString(i8* %t1572, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1572)
    %t1576 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1576, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.752, i32 0, i32 0), i32 9)
    %t1578 = load double, double* @ra
    %t1579 = load double, double* @rc
    %t1577 = fcmp uge double %t1578, %t1579
    call void @_WriteBool(i8* %t1576, i32 5, i32 0, i1 %t1577)
    call void @_WriteString(i8* %t1576, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1576)
    %t1580 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1580, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.753, i32 0, i32 0), i32 9)
    %t1582 = load double, double* @ra
    %t1583 = load double, double* @rd
    %t1581 = fcmp uge double %t1582, %t1583
    call void @_WriteBool(i8* %t1580, i32 5, i32 0, i1 %t1581)
    call void @_WriteString(i8* %t1580, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1580)
    %t1584 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1584, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.754, i32 0, i32 0), i32 9)
    %t1586 = load double, double* @rb
    %t1587 = load double, double* @ra
    %t1585 = fcmp uge double %t1586, %t1587
    call void @_WriteBool(i8* %t1584, i32 5, i32 0, i1 %t1585)
    call void @_WriteString(i8* %t1584, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1584)
    %t1588 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1588, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.755, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1588, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1588, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.756, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1588)
    %t1589 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1589, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.757, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1589, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1589, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.758, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1589)
    %t1590 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1590, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.759, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1590, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1590, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.760, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1590)
    %t1591 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1591, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.761, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1591, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1591, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.762, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1591)
    %t1592 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1592, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.763, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1592, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1592, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.764, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t1592)
    %t1593 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1593, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.765, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1593, i32 15, i32 0, i32 )
    call void @_WriteString(i8* %t1593, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.766, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1593)
    %t1594 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1594, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.767, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1594, i32 15, i32 0, i32 )
    call void @_WriteString(i8* %t1594, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.768, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1594)
    %t1595 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1595, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.769, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1595, i32 15, i32 0, i32 )
    call void @_WriteString(i8* %t1595, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.766, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1595)
    %t1596 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1596, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.770, i32 0, i32 0), i32 9)
    %t1598 = fneg double 30.8340
    %t1597 = fadd double 45.9340, %t1598
    call void @_WriteReal(i8* %t1596, i32 15, i32 0, double %t1597)
    call void @_WriteString(i8* %t1596, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.771, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1596)
    %t1599 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1599, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.772, i32 0, i32 0), i32 9)
    %t1601 = fneg double 25.7370
    %t1600 = fadd double %t1601, 70.8700
    call void @_WriteReal(i8* %t1599, i32 15, i32 0, double %t1600)
    call void @_WriteString(i8* %t1599, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.773, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1599)
    %t1602 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1602, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.774, i32 0, i32 0), i32 9)
    %t1604 = fneg double 62.6300
    %t1603 = fadd double %t1604, 23.9900
    call void @_WriteReal(i8* %t1602, i32 15, i32 0, double %t1603)
    call void @_WriteString(i8* %t1602, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.775, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1602)
    %t1605 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1605, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.776, i32 0, i32 0), i32 9)
    %t1607 = fneg double 20.7330
    %t1608 = fneg double 15.8480
    %t1606 = fadd double %t1607, %t1608
    call void @_WriteReal(i8* %t1605, i32 15, i32 0, double %t1606)
    call void @_WriteString(i8* %t1605, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.777, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1605)
    %t1609 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1609, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.778, i32 0, i32 0), i32 9)
    %t1611 = fneg double 14.7740
    %t1610 = fsub double 20.7740, %t1611
    call void @_WriteReal(i8* %t1609, i32 15, i32 0, double %t1610)
    call void @_WriteString(i8* %t1609, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.779, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1609)
    %t1612 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1612, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.780, i32 0, i32 0), i32 9)
    %t1614 = fneg double 34.5230
    %t1613 = fsub double %t1614, 14.8754
    call void @_WriteReal(i8* %t1612, i32 15, i32 0, double %t1613)
    call void @_WriteString(i8* %t1612, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.781, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1612)
    %t1615 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1615, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.782, i32 0, i32 0), i32 9)
    %t1617 = fneg double 56.6640
    %t1618 = fneg double 12.6630
    %t1616 = fsub double %t1617, %t1618
    call void @_WriteReal(i8* %t1615, i32 15, i32 0, double %t1616)
    call void @_WriteString(i8* %t1615, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.783, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1615)
    %t1619 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1619, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.784, i32 0, i32 0), i32 9)
    %t1621 = fneg double 4.66400
    %t1620 = fmul double 5.66300, %t1621
    call void @_WriteReal(i8* %t1619, i32 15, i32 0, double %t1620)
    call void @_WriteString(i8* %t1619, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.785, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1619)
    %t1622 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1622, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.786, i32 0, i32 0), i32 9)
    %t1624 = fneg double 18.6200
    %t1623 = fmul double %t1624, 7.99700
    call void @_WriteReal(i8* %t1622, i32 15, i32 0, double %t1623)
    call void @_WriteString(i8* %t1622, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.787, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1622)
    %t1625 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1625, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.788, i32 0, i32 0), i32 9)
    %t1627 = fneg double 40.5520
    %t1628 = fneg double 13.7740
    %t1626 = fmul double %t1627, %t1628
    call void @_WriteReal(i8* %t1625, i32 15, i32 0, double %t1626)
    call void @_WriteString(i8* %t1625, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.789, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1625)
    %t1629 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1629, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.790, i32 0, i32 0), i32 9)
    %t1631 = fneg double 5.87400
    %t1630 = fdiv double 30.6632, %t1631
    call void @_WriteReal(i8* %t1629, i32 15, i32 0, double %t1630)
    call void @_WriteString(i8* %t1629, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.791, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1629)
    %t1632 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1632, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.792, i32 0, i32 0), i32 9)
    %t1634 = fneg double 50.6360
    %t1633 = fdiv double %t1634, 2.85730
    call void @_WriteReal(i8* %t1632, i32 15, i32 0, double %t1633)
    call void @_WriteString(i8* %t1632, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.793, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1632)
    %t1635 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1635, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.794, i32 0, i32 0), i32 9)
    %t1637 = fneg double 20.7631
    %t1638 = fneg double 4.85734
    %t1636 = fdiv double %t1637, %t1638
    call void @_WriteReal(i8* %t1635, i32 15, i32 0, double %t1636)
    call void @_WriteString(i8* %t1635, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.795, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1635)
    %t1639 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1639, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.796, i32 0, i32 0), i32 9)
    %t1641 = fneg double 5.77500
    %t1642 = fneg double 5.77500
    %t1640 = fcmp ueq double %t1641, %t1642
    call void @_WriteBool(i8* %t1639, i32 5, i32 0, i1 %t1640)
    call void @_WriteString(i8* %t1639, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1639)
    %t1643 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1643, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.797, i32 0, i32 0), i32 9)
    %t1645 = fneg double 5.63640
    %t1644 = fcmp ueq double %t1645, 5.85750
    call void @_WriteBool(i8* %t1643, i32 5, i32 0, i1 %t1644)
    call void @_WriteString(i8* %t1643, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1643)
    %t1646 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1646, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.798, i32 0, i32 0), i32 9)
    %t1648 = fneg double 21.6385
    %t1649 = fneg double 40.7640
    %t1647 = fcmp une double %t1648, %t1649
    call void @_WriteBool(i8* %t1646, i32 5, i32 0, i1 %t1647)
    call void @_WriteString(i8* %t1646, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1646)
    %t1650 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1650, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.799, i32 0, i32 0), i32 9)
    %t1652 = fneg double 21.7720
    %t1653 = fneg double 21.7720
    %t1651 = fcmp une double %t1652, %t1653
    call void @_WriteBool(i8* %t1650, i32 5, i32 0, i1 %t1651)
    call void @_WriteString(i8* %t1650, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1650)
    %t1654 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1654, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.800, i32 0, i32 0), i32 9)
    %t1656 = fneg double 3.51200
    %t1655 = fcmp ult double %t1656, 5.84670
    call void @_WriteBool(i8* %t1654, i32 5, i32 0, i1 %t1655)
    call void @_WriteString(i8* %t1654, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1654)
    %t1657 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1657, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.801, i32 0, i32 0), i32 9)
    %t1659 = fneg double 32.6440
    %t1660 = fneg double 20.9074
    %t1658 = fcmp ult double %t1659, %t1660
    call void @_WriteBool(i8* %t1657, i32 5, i32 0, i1 %t1658)
    call void @_WriteString(i8* %t1657, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1657)
    %t1661 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1661, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.802, i32 0, i32 0), i32 9)
    %t1663 = fneg double 20.7430
    %t1662 = fcmp ult double 20.7630, %t1663
    call void @_WriteBool(i8* %t1661, i32 5, i32 0, i1 %t1662)
    call void @_WriteString(i8* %t1661, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1661)
    %t1664 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1664, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.803, i32 0, i32 0), i32 9)
    %t1666 = fneg double 15.6630
    %t1667 = fneg double 40.7840
    %t1665 = fcmp ult double %t1666, %t1667
    call void @_WriteBool(i8* %t1664, i32 5, i32 0, i1 %t1665)
    call void @_WriteString(i8* %t1664, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1664)
    %t1668 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1668, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.804, i32 0, i32 0), i32 9)
    %t1670 = fneg double 4.97400
    %t1669 = fcmp ugt double 70.7660, %t1670
    call void @_WriteBool(i8* %t1668, i32 5, i32 0, i1 %t1669)
    call void @_WriteString(i8* %t1668, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1668)
    %t1671 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1671, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.805, i32 0, i32 0), i32 9)
    %t1673 = fneg double 23.6532
    %t1674 = fneg double 34.7740
    %t1672 = fcmp ugt double %t1673, %t1674
    call void @_WriteBool(i8* %t1671, i32 5, i32 0, i1 %t1672)
    call void @_WriteString(i8* %t1671, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1671)
    %t1675 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1675, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.806, i32 0, i32 0), i32 9)
    %t1677 = fneg double 5.77300
    %t1676 = fcmp ugt double %t1677, 5.98740
    call void @_WriteBool(i8* %t1675, i32 5, i32 0, i1 %t1676)
    call void @_WriteString(i8* %t1675, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1675)
    %t1678 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1678, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.807, i32 0, i32 0), i32 9)
    %t1680 = fneg double 60.6630
    %t1681 = fneg double 59.7800
    %t1679 = fcmp ugt double %t1680, %t1681
    call void @_WriteBool(i8* %t1678, i32 5, i32 0, i1 %t1679)
    call void @_WriteString(i8* %t1678, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1678)
    %t1682 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1682, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.808, i32 0, i32 0), i32 9)
    %t1684 = fneg double 12.5420
    %t1683 = fcmp ule double %t1684, 4.08480
    call void @_WriteBool(i8* %t1682, i32 5, i32 0, i1 %t1683)
    call void @_WriteString(i8* %t1682, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1682)
    %t1685 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1685, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.809, i32 0, i32 0), i32 9)
    %t1687 = fneg double 14.8763
    %t1688 = fneg double 5.08470
    %t1686 = fcmp ule double %t1687, %t1688
    call void @_WriteBool(i8* %t1685, i32 5, i32 0, i1 %t1686)
    call void @_WriteString(i8* %t1685, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1685)
    %t1689 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1689, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.810, i32 0, i32 0), i32 9)
    %t1691 = fneg double 7.83730
    %t1692 = fneg double 7.83730
    %t1690 = fcmp ule double %t1691, %t1692
    call void @_WriteBool(i8* %t1689, i32 5, i32 0, i1 %t1690)
    call void @_WriteString(i8* %t1689, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1689)
    %t1693 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1693, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.811, i32 0, i32 0), i32 9)
    %t1695 = fneg double 5.45640
    %t1694 = fcmp ule double 5.45640, %t1695
    call void @_WriteBool(i8* %t1693, i32 5, i32 0, i1 %t1694)
    call void @_WriteString(i8* %t1693, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1693)
    %t1696 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1696, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.812, i32 0, i32 0), i32 9)
    %t1698 = fneg double 10.7263
    %t1699 = fneg double 20.9840
    %t1697 = fcmp ule double %t1698, %t1699
    call void @_WriteBool(i8* %t1696, i32 5, i32 0, i1 %t1697)
    call void @_WriteString(i8* %t1696, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1696)
    %t1700 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1700, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.813, i32 0, i32 0), i32 9)
    %t1702 = fneg double 3.93830
    %t1701 = fcmp uge double 9.83400, %t1702
    call void @_WriteBool(i8* %t1700, i32 5, i32 0, i1 %t1701)
    call void @_WriteString(i8* %t1700, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1700)
    %t1703 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1703, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.814, i32 0, i32 0), i32 9)
    %t1705 = fneg double 4.56200
    %t1706 = fneg double 10.7400
    %t1704 = fcmp uge double %t1705, %t1706
    call void @_WriteBool(i8* %t1703, i32 5, i32 0, i1 %t1704)
    call void @_WriteString(i8* %t1703, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1703)
    %t1707 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1707, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.815, i32 0, i32 0), i32 9)
    %t1709 = fneg double 13.6300
    %t1710 = fneg double 13.6300
    %t1708 = fcmp uge double %t1709, %t1710
    call void @_WriteBool(i8* %t1707, i32 5, i32 0, i1 %t1708)
    call void @_WriteString(i8* %t1707, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1707)
    %t1711 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1711, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.816, i32 0, i32 0), i32 9)
    %t1713 = fneg double 6.74000
    %t1712 = fcmp uge double %t1713, 6.74000
    call void @_WriteBool(i8* %t1711, i32 5, i32 0, i1 %t1712)
    call void @_WriteString(i8* %t1711, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1711)
    %t1714 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1714, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.817, i32 0, i32 0), i32 9)
    %t1716 = fneg double 20.7623
    %t1717 = fneg double 10.5740
    %t1715 = fcmp uge double %t1716, %t1717
    call void @_WriteBool(i8* %t1714, i32 5, i32 0, i1 %t1715)
    call void @_WriteString(i8* %t1714, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1714)
    %t1718 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1718, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.818, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1718, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1718, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.819, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1718)
    %t1719 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1719, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.820, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1719, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1719, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.821, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1719)
    %t1720 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1720, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.822, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1720, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1720, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.823, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1720)
    %t1721 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1721, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.824, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1721, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1721, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.825, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1721)
    %t1722 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1722, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.826, i32 0, i32 0), i32 9)
    call void @_WriteReal(i8* %t1722, i32 15, i32 0, double )
    call void @_WriteString(i8* %t1722, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.827, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1722)
    %t1723 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1723, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.828, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1723, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1723, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.177, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t1723)
    %t1724 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1724, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.829, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1724, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1724, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.830, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1724)
    %t1725 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1725, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.831, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1725, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1725, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.832, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1725)
    %t1726 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1726, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.833, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1726, i32 15, i32 0, i32 -2061584302)
    call void @_WriteString(i8* %t1726, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.834, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1726)
    %t1727 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1727, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.835, i32 0, i32 0), i32 9)
    %t1728 = sub i32 0, -2061584302
    call void @_WriteInteger(i8* %t1727, i32 15, i32 0, i32 %t1728)
    call void @_WriteString(i8* %t1727, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.836, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1727)
    %t1729 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1729, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.837, i32 0, i32 0), i32 10)
    call void @_WriteReal(i8* %t1729, i32 15, i32 0, double -43.3300)
    call void @_WriteString(i8* %t1729, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.838, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1729)
    %t1730 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1730, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.839, i32 0, i32 0), i32 9)
    call void @_WriteInteger(i8* %t1730, i32 15, i32 0, i32 2061584302)
    call void @_WriteString(i8* %t1730, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.836, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t1730)
    %t1731 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1731)
    %t1732 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1732, i32 0, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.840, i32 0, i32 0), i32 55)
    call void @_WriteLn(i8* %t1732)
    %t1733 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1733)
    %t1734 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1734, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.841, i32 0, i32 0), i32 7)
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    %t1735 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1735, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1736 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1736, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.843, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t1736)
    %t1737 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1737, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.844, i32 0, i32 0), i32 7)
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    store %T_set_121 %.dummy_set, %T_set_121* @stb
    %t1738 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1738, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1739 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1739, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.845, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1739)
    %t1740 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1740, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.846, i32 0, i32 0), i32 7)
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    store %T_set_121 %.dummy_set, %T_set_121* @stb
    %t1741 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1741, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1742 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1742, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.847, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1742)
    %t1743 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1743, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.848, i32 0, i32 0), i32 7)
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    store %T_set_121 %.dummy_set, %T_set_121* @stb
    %t1744 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1744, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1745 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1745, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.849, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1745)
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    store %T_set_121 %.dummy_set, %T_set_121* @stb
    store %T_set_121 %.dummy_set, %T_set_121* @stc
    %t1746 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1746, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.850, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1746, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1746, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1746)
    %t1748 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1748, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.851, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1748, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1748, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1748)
    %t1750 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1750, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.852, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1750, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1750, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1750)
    %t1752 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1752, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.853, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1752, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1752, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1752)
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    store %T_set_121 %.dummy_set, %T_set_121* @stb
    store %T_set_121 %.dummy_set, %T_set_121* @stc
    store %T_set_121 %.dummy_set, %T_set_121* @std
    %t1754 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1754, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.854, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1754, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1754, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1754)
    %t1756 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1756, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.855, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1756, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1756, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1756)
    %t1758 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1758, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.856, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1758, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1758, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1758)
    %t1760 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1760, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.857, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1760, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1760, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1760)
    %t1762 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1762, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.858, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1762, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1762, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1762)
    %t1764 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1764, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.859, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1764, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1764, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1764)
    %t1766 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1766, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.860, i32 0, i32 0), i32 7)
    store i32 2, i32* @i
    store i32 4, i32* @x
    store %T_set_121 %.dummy_set, %T_set_121* @sta
    %t1767 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1767, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1768 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1768, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.861, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1768)
    %t1769 = load %T_set_121, %T_set_121* @std
    store %T_set_122 %.dummy_set, %T_set_122* @ste
    store %T_set_123 %.dummy_set, %T_set_123* @stf
    %t1770 = load %T_set_123, %T_set_123* @stf
    store %T_set_124 %.dummy_set, %T_set_124* @stg
    %t1771 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1771, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.862, i32 0, i32 0), i32 7)
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    %t1772 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1772, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1773 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1773, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.863, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t1773)
    %t1774 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1774, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.864, i32 0, i32 0), i32 7)
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    store %T_set_25 %.dummy_set, %T_set_25* @cstb
    %t1775 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1775, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1776 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1776, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.865, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1776)
    %t1777 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1777, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.866, i32 0, i32 0), i32 7)
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    store %T_set_25 %.dummy_set, %T_set_25* @cstb
    %t1778 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1778, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1779 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1779, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.867, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1779)
    %t1780 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1780, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.868, i32 0, i32 0), i32 7)
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    store %T_set_25 %.dummy_set, %T_set_25* @cstb
    %t1781 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1781, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1782 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1782, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.869, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1782)
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    store %T_set_25 %.dummy_set, %T_set_25* @cstb
    store %T_set_25 %.dummy_set, %T_set_25* @cstc
    %t1783 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1783, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.870, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1783, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1783, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1783)
    %t1785 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1785, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.871, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1785, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1785, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1785)
    %t1787 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1787, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.872, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1787, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1787, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1787)
    %t1789 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1789, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.873, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1789, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1789, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1789)
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    store %T_set_25 %.dummy_set, %T_set_25* @cstb
    store %T_set_25 %.dummy_set, %T_set_25* @cstc
    store %T_set_25 %.dummy_set, %T_set_25* @cstd
    %t1791 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1791, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.874, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1791, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1791, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1791)
    %t1793 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1793, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.875, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1793, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1793, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1793)
    %t1795 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1795, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.876, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1795, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1795, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1795)
    %t1797 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1797, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.877, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1797, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1797, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1797)
    %t1799 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1799, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.878, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1799, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1799, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1799)
    %t1801 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1801, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.879, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1801, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1801, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1801)
    %t1803 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1803, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.880, i32 0, i32 0), i32 7)
    store i8 97, i8* @ci
    store i32 4, i32* @i
    store %T_set_25 %.dummy_set, %T_set_25* @csta
    %t1804 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1804, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1805 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1805, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.881, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1805)
    %t1806 = load %T_set_25, %T_set_25* @cstd
    store %T_set_26 %.dummy_set, %T_set_26* @cste
    store %T_set_27 %.dummy_set, %T_set_27* @cstf
    %t1807 = load %T_set_27, %T_set_27* @cstf
    store %T_set_28 %.dummy_set, %T_set_28* @cstg
    %t1808 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1808, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.882, i32 0, i32 0), i32 7)
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    %t1809 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1809, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1810 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1810, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.883, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1810)
    %t1811 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1811, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.884, i32 0, i32 0), i32 7)
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    store %T_set_115 %.dummy_set, %T_set_115* @senb
    %t1812 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1812, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1813 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1813, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.845, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1813)
    %t1814 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1814, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.885, i32 0, i32 0), i32 7)
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    store %T_set_115 %.dummy_set, %T_set_115* @senb
    %t1815 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1815, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1816 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1816, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.847, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1816)
    %t1817 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1817, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.886, i32 0, i32 0), i32 7)
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    store %T_set_115 %.dummy_set, %T_set_115* @senb
    %t1818 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1818, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1819 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1819, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.849, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1819)
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    store %T_set_115 %.dummy_set, %T_set_115* @senb
    store %T_set_115 %.dummy_set, %T_set_115* @senc
    %t1820 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1820, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.887, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1820, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1820, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1820)
    %t1822 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1822, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.888, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1822, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1822, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1822)
    %t1824 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1824, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.889, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1824, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1824, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1824)
    %t1826 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1826, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.890, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1826, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1826, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1826)
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    store %T_set_115 %.dummy_set, %T_set_115* @senb
    store %T_set_115 %.dummy_set, %T_set_115* @senc
    store %T_set_115 %.dummy_set, %T_set_115* @send
    %t1828 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1828, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.891, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1828, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1828, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1828)
    %t1830 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1830, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.892, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1830, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1830, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1830)
    %t1832 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1832, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.893, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1832, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1832, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1832)
    %t1834 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1834, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.894, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1834, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1834, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1834)
    %t1836 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1836, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.895, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1836, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1836, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1836)
    %t1838 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1838, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.896, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1838, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1838, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1838)
    %t1840 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1840, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.897, i32 0, i32 0), i32 7)
    store i32 1, i32* @ei
    store %T_set_115 %.dummy_set, %T_set_115* @sena
    %t1841 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1841, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1842 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1842, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.898, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1842)
    store %T_set_115 %.dummy_set, %T_set_115* @send
    %t1843 = load %T_set_115, %T_set_115* @send
    store %T_set_116 %.dummy_set, %T_set_116* @sene
    store %T_set_117 %.dummy_set, %T_set_117* @senf
    %t1844 = load %T_set_117, %T_set_117* @senf
    store %T_set_118 %.dummy_set, %T_set_118* @seng
    %t1845 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1845, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.899, i32 0, i32 0), i32 7)
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    %t1846 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1846, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1847 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1847, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.900, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1847)
    %t1848 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1848, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.901, i32 0, i32 0), i32 7)
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    store %T_set_110 %.dummy_set, %T_set_110* @sbb
    %t1849 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1849, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1850 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1850, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.902, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1850)
    %t1851 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1851, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.903, i32 0, i32 0), i32 7)
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    store %T_set_110 %.dummy_set, %T_set_110* @sbb
    %t1852 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1852, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1853 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1853, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.904, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1853)
    %t1854 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1854, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.905, i32 0, i32 0), i32 7)
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    store %T_set_110 %.dummy_set, %T_set_110* @sbb
    %t1855 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1855, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1856 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1856, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.904, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1856)
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    store %T_set_110 %.dummy_set, %T_set_110* @sbb
    store %T_set_110 %.dummy_set, %T_set_110* @sbc
    %t1857 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1857, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.906, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1857, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1857, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1857)
    %t1859 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1859, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.907, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1859, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1859, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1859)
    %t1861 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1861, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.908, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1861, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1861, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1861)
    %t1863 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1863, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.909, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1863, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1863, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1863)
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    store %T_set_110 %.dummy_set, %T_set_110* @sbb
    store %T_set_110 %.dummy_set, %T_set_110* @sbc
    store %T_set_110 %.dummy_set, %T_set_110* @sbd
    %t1865 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1865, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.910, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1865, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1865, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1865)
    %t1867 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1867, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.911, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1867, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1867, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1867)
    %t1869 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1869, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.912, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1869, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1869, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1869)
    %t1871 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1871, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.913, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1871, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1871, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1871)
    %t1873 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1873, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.914, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1873, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1873, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1873)
    %t1875 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1875, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.915, i32 0, i32 0), i32 7)
    call void @_WriteBool(i8* %t1875, i32 5, i32 0, i1 true)
    call void @_WriteString(i8* %t1875, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1875)
    %t1877 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1877, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.916, i32 0, i32 0), i32 7)
    store i1 0, i1* @ba
    store %T_set_110 %.dummy_set, %T_set_110* @sba
    %t1878 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1878, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.842, i32 0, i32 0), i32 5)
    %t1879 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1879, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.902, i32 0, i32 0), i32 2)
    call void @_WriteLn(i8* %t1879)
    %t1880 = load %T_set_110, %T_set_110* @sbd
    store %T_set_111 %.dummy_set, %T_set_111* @sbe
    store %T_set_112 %.dummy_set, %T_set_112* @sbf
    %t1881 = load %T_set_112, %T_set_112* @sbf
    store %T_set_113 %.dummy_set, %T_set_113* @sbg
    %t1882 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1882, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.917, i32 0, i32 0), i32 7)
    %t1883 = load i8*, i8** @pi1
    %t1884 = bitcast i8* %t1883 to i32*
    store i32 3, i32* %t1884
    %t1885 = load i8*, i8** @pi2
    %t1886 = bitcast i8* %t1885 to i32*
    store i32 5, i32* %t1886
    %t1887 = load %T_text, %T_text* @output
    call void @_WriteBool(i8* %t1887, i32 5, i32 0, i1 true)
    %t1889 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1889, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1889)
    %t1890 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1890)
    %t1891 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1891, i32 0, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.918, i32 0, i32 0), i32 59)
    call void @_WriteLn(i8* %t1891)
    %t1892 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t1892)
    %t1893 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1893, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.919, i32 0, i32 0), i32 12)
    %t1894 = load i8*, i8** @pti
    %t1895 = bitcast i8* %t1894 to i32*
    store i32 4594, i32* %t1895
    %t1896 = load %T_text, %T_text* @output
    %t1897 = load i8*, i8** @pti
    %t1898 = bitcast i8* %t1897 to i32*
    %t1899 = load i32, i32* %t1898
    call void @_WriteInteger(i8* %t1896, i32 1, i32 0, i32 %t1899)
    call void @_WriteString(i8* %t1896, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.920, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1896)
    %t1900 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1900, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.921, i32 0, i32 0), i32 12)
    %t1901 = load i8*, i8** @ptb
    %t1902 = bitcast i8* %t1901 to i1*
    store i1 1, i1* %t1902
    %t1903 = load %T_text, %T_text* @output
    %t1904 = load i8*, i8** @ptb
    %t1905 = bitcast i8* %t1904 to i1*
    %t1906 = load i1, i1* %t1905
    call void @_WriteBool(i8* %t1903, i32 5, i32 0, i1 %t1906)
    call void @_WriteString(i8* %t1903, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.922, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1903)
    %t1907 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1907, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.923, i32 0, i32 0), i32 12)
    %t1908 = load i8*, i8** @ptb
    %t1909 = bitcast i8* %t1908 to i1*
    store i1 0, i1* %t1909
    %t1910 = load %T_text, %T_text* @output
    %t1911 = load i8*, i8** @ptb
    %t1912 = bitcast i8* %t1911 to i1*
    %t1913 = load i1, i1* %t1912
    call void @_WriteBool(i8* %t1910, i32 5, i32 0, i1 %t1913)
    call void @_WriteString(i8* %t1910, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1910)
    %t1914 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1914, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.924, i32 0, i32 0), i32 12)
    %t1915 = load i8*, i8** @ptc
    %t1916 = bitcast i8* %t1915 to i8*
    store i8 112, i8* %t1916
    %t1917 = load %T_text, %T_text* @output
    %t1918 = load i8*, i8** @ptc
    %t1919 = bitcast i8* %t1918 to i8*
    %t1920 = load i8, i8* %t1919
    call void @_WriteChar(i8* %t1917, i32 0, i32 0, i8 %t1920)
    call void @_WriteString(i8* %t1917, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.925, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1917)
    %t1921 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1921, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.926, i32 0, i32 0), i32 12)
    %t1922 = load i8*, i8** @pte
    %t1923 = bitcast i8* %t1922 to i32*
    store i32 5, i32* %t1923
    %t1924 = load %T_text, %T_text* @output
028D0CE0    call void @_WriteInteger(i8* %t1924, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1924, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.234, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1924)
    %t1928 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1928, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.927, i32 0, i32 0), i32 12)
    %t1929 = load i8*, i8** @ptes
    %t1930 = bitcast i8* %t1929 to i32*
    store i32 3, i32* %t1930
    %t1931 = load %T_text, %T_text* @output
028D06C8    call void @_WriteInteger(i8* %t1931, i32 1, i32 0, i32 )
    call void @_WriteString(i8* %t1931, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.928, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t1931)
    %t1935 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1935, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.929, i32 0, i32 0), i32 12)
    %t1936 = load i8*, i8** @pts
    %t1937 = bitcast i8* %t1936 to i32*
    store i32 17, i32* %t1937
    %t1938 = load %T_text, %T_text* @output
    %t1939 = load i8*, i8** @pts
    %t1940 = bitcast i8* %t1939 to i32*
    %t1941 = load i32, i32* %t1940
    call void @_WriteInteger(i8* %t1938, i32 1, i32 0, i32 %t1941)
    call void @_WriteString(i8* %t1938, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.930, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t1938)
    %t1942 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1942, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.931, i32 0, i32 0), i32 12)
    %t1943 = load i8*, i8** @ptr
    %t1944 = bitcast i8* %t1943 to double*
    store double 1234.57, double* %t1944
    %t1945 = load %T_text, %T_text* @output
    %t1946 = load i8*, i8** @ptr
    %t1947 = bitcast i8* %t1946 to double*
    %t1948 = load double, double* %t1947
    call void @_WriteReal(i8* %t1945, i32 1, i32 4, double %t1948)
    call void @_WriteString(i8* %t1945, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.932, i32 0, i32 0), i32 14)
    call void @_WriteLn(i8* %t1945)
    %t1949 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1949, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.933, i32 0, i32 0), i32 12)
    %t1950 = load i8*, i8** @ptst
    %t1951 = bitcast i8* %t1950 to %T_string10*
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.934, i32 0, i32 0), %T_string10* %t1951
    %t1952 = load %T_text, %T_text* @output
    %t1953 = load i8*, i8** @ptst
    %t1954 = bitcast i8* %t1953 to %T_string10*
    call void @_WriteString(i8* %t1952, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* %t1954, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t1952, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.935, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1952)
    %t1955 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1955, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.936, i32 0, i32 0), i32 12)
    %t1956 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1956, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.937, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t1956)
    %t1957 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1957, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.938, i32 0, i32 0), i32 13)
    %t1958 = load i8*, i8** @ptrc
    %t1959 = bitcast i8* %t1958 to %T_recs*
    %t1961 = getelementptr inbounds %T_recs, %T_recs* %t1959, i32 0, i32 0
    %t1960 = bitcast i8* %t1961 to i32*
    store i32 7234, i32* %t1960
    %t1962 = load i8*, i8** @ptrc
    %t1963 = bitcast i8* %t1962 to %T_recs*
    %t1965 = getelementptr inbounds %T_recs, %T_recs* %t1963, i32 0, i32 4
    %t1964 = bitcast i8* %t1965 to i8*
    store i8 121, i8* %t1964
    %t1966 = load %T_text, %T_text* @output
    %t1967 = load i8*, i8** @ptrc
    %t1968 = bitcast i8* %t1967 to %T_recs*
    %t1970 = getelementptr inbounds %T_recs, %T_recs* %t1968, i32 0, i32 0
    %t1969 = bitcast i8* %t1970 to i32*
    %t1971 = load i32, i32* %t1969
    call void @_WriteInteger(i8* %t1966, i32 1, i32 0, i32 %t1971)
    call void @_WriteChar(i8* %t1966, i32 0, i32 0, i8 32)
    %t1972 = load i8*, i8** @ptrc
    %t1973 = bitcast i8* %t1972 to %T_recs*
    %t1975 = getelementptr inbounds %T_recs, %T_recs* %t1973, i32 0, i32 4
    %t1974 = bitcast i8* %t1975 to i8*
    %t1976 = load i8, i8* %t1974
    call void @_WriteChar(i8* %t1966, i32 0, i32 0, i8 %t1976)
    call void @_WriteString(i8* %t1966, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.939, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t1966)
    %t1977 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1977, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.940, i32 0, i32 0), i32 13)
    %t1978 = load i8*, i8** @ptstc
    %t1979 = bitcast i8* %t1978 to %T_cset*
    store %T_cset %.dummy_set, %T_cset* %t1979
    %t1980 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1980, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.941, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t1980)
    %t1981 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1981, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.942, i32 0, i32 0), i32 12)
    %t1982 = load i8*, i8** @ptp
    %t1983 = bitcast i8* %t1982 to i8**
    %t1984 = load i8*, i8** %t1983
    %t1985 = bitcast i8* %t1984 to i32*
    store i32 3732, i32* %t1985
    %t1986 = load %T_text, %T_text* @output
    %t1987 = load i8*, i8** @ptp
    %t1988 = bitcast i8* %t1987 to i8**
    %t1989 = load i8*, i8** %t1988
    %t1990 = bitcast i8* %t1989 to i32*
    %t1991 = load i32, i32* %t1990
    call void @_WriteInteger(i8* %t1986, i32 1, i32 0, i32 %t1991)
    call void @_WriteString(i8* %t1986, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.943, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t1986)
    %t1992 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1992, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.944, i32 0, i32 0), i32 12)
    store i8* null, i8** @pti
    %t1993 = load %T_text, %T_text* @output
    %t1995 = load i8*, i8** @pti
    %t1994 = icmp eq i32 %t1995, null
    call void @_WriteBool(i8* %t1993, i32 5, i32 0, i1 %t1994)
    call void @_WriteString(i8* %t1993, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.922, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1993)
    %t1996 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t1996, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.945, i32 0, i32 0), i32 12)
    %t1997 = load %T_text, %T_text* @output
    %t1999 = load i8*, i8** @pti
    %t1998 = icmp eq i32 %t1999, null
    call void @_WriteBool(i8* %t1997, i32 5, i32 0, i1 %t1998)
    call void @_WriteString(i8* %t1997, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t1997)
    %t2000 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2000, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.946, i32 0, i32 0), i32 12)
    %t2001 = load i8*, i8** @pti
    store i8* %t2001, i8** @pti1
    %t2002 = load %T_text, %T_text* @output
    %t2004 = load i8*, i8** @pti
    %t2005 = load i8*, i8** @pti1
    %t2003 = icmp eq i32 %t2004, %t2005
    call void @_WriteBool(i8* %t2002, i32 5, i32 0, i1 %t2003)
    call void @_WriteString(i8* %t2002, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2002)
    %t2006 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2006, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.947, i32 0, i32 0), i32 12)
    %t2007 = load i8*, i8** @pti
    store i8* %t2007, i8** @pti1
    %t2008 = load %T_text, %T_text* @output
    %t2010 = load i8*, i8** @pti
    %t2011 = load i8*, i8** @pti1
    %t2009 = icmp ne i32 %t2010, %t2011
    call void @_WriteBool(i8* %t2008, i32 5, i32 0, i1 %t2009)
    call void @_WriteString(i8* %t2008, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2008)
    %t2012 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2012, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.948, i32 0, i32 0), i32 12)
    %t2013 = load %T_text, %T_text* @output
    %t2015 = load i8*, i8** @pti
    %t2016 = load i8*, i8** @pti1
    %t2014 = icmp eq i32 %t2015, %t2016
    call void @_WriteBool(i8* %t2013, i32 5, i32 0, i1 %t2014)
    call void @_WriteString(i8* %t2013, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2013)
    %t2017 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2017, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.949, i32 0, i32 0), i32 12)
    %t2018 = load %T_text, %T_text* @output
    %t2020 = load i8*, i8** @pti
    %t2021 = load i8*, i8** @pti1
    %t2019 = icmp ne i32 %t2020, %t2021
    call void @_WriteBool(i8* %t2018, i32 5, i32 0, i1 %t2019)
    call void @_WriteString(i8* %t2018, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.922, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2018)
    %t2022 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2022, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.950, i32 0, i32 0), i32 12)
    %t2023 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2023, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.951, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t2023)
    %t2024 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2024, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.952, i32 0, i32 0), i32 12)
    %t2025 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2025, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.953, i32 0, i32 0), i32 12)
    %t2026 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2026, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.951, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t2026)
    %t2027 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2027, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.954, i32 0, i32 0), i32 12)
    %t2028 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2028, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.951, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t2028)
    %t2029 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2029, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.955, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t2029)
    %t2030 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2030)
    %t2031 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2031, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.956, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t2031)
    %t2032 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2032)
    %t2033 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2033, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.957, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2033)
    %t2034 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2034, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.958, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2034)
    %t2035 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2035, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.959, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2035)
    %t2036 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2036, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.960, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2036)
    %t2037 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2037, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.961, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2037)
    %t2038 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2038, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.962, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2038)
    %t2039 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2039, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.963, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2039)
    %t2040 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2040, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.964, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2040)
    %t2041 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2041, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.965, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2041)
    %t2042 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2042, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.966, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t2042)
    store i32 1, i32* @rndseq
    %t2043 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2043, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.967, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t2043)
    %t2044 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2044)
    %t2045 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2045, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.956, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t2045)
    %t2046 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2046)
    %t2047 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2047, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.957, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2047)
    %t2048 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2048, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.958, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2048)
    %t2049 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2049, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.959, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2049)
    %t2050 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2050, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.960, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2050)
    %t2051 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2051, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.961, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2051)
    %t2052 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2052, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.962, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2052)
    %t2053 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2053, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.963, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2053)
    %t2054 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2054, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.964, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2054)
    %t2055 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2055, i32 0, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.965, i32 0, i32 0), i32 39)
    call void @_WriteLn(i8* %t2055)
    %t2056 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2056, i32 0, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.966, i32 0, i32 0), i32 40)
    call void @_WriteLn(i8* %t2056)
    %t2057 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2057)
    %t2058 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2058, i32 0, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.968, i32 0, i32 0), i32 57)
    call void @_WriteLn(i8* %t2058)
    %t2059 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2059)
    %t2060 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2060, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.969, i32 0, i32 0), i32 10)
    %t2061 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2061, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.970, i32 0, i32 0), i32 34)
    call void @_WriteLn(i8* %t2061)
    %t2062 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2062, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.971, i32 0, i32 0), i32 10)
    %t2063 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2063, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.970, i32 0, i32 0), i32 34)
    call void @_WriteLn(i8* %t2063)
    %t2064 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2064, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.972, i32 0, i32 0), i32 10)
    %t2065 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2065, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.970, i32 0, i32 0), i32 34)
    call void @_WriteLn(i8* %t2065)
    %t2066 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2066, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.973, i32 0, i32 0), i32 10)
    %t2067 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2067, i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.970, i32 0, i32 0), i32 34)
    call void @_WriteLn(i8* %t2067)
    %t2068 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2068, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.974, i32 0, i32 0), i32 10)
    %t2069 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2069)
    %t2070 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2070, i32 0, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.975, i32 0, i32 0), i32 64)
    call void @_WriteString(i8* %t2070, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.541, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t2070)
    %t2071 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2071, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.976, i32 0, i32 0), i32 10)
    %t2072 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2072)
    %t2073 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2073, i32 0, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.975, i32 0, i32 0), i32 64)
    call void @_WriteString(i8* %t2073, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.541, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t2073)
    %t2074 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2074, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.977, i32 0, i32 0), i32 10)
    %t2075 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2075)
    %t2076 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2076, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.978, i32 0, i32 0), i32 53)
    call void @_WriteString(i8* %t2076, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.979, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t2076)
    %t2077 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2077, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.980, i32 0, i32 0), i32 10)
    %t2078 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2078)
    %t2079 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2079, i32 0, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.978, i32 0, i32 0), i32 53)
    call void @_WriteString(i8* %t2079, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.979, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t2079)
    %t2080 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2080, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.981, i32 0, i32 0), i32 10)
    %t2081 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2081, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.982, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2081)
    %t2082 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2082, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.983, i32 0, i32 0), i32 10)
    %t2083 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2083, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.982, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2083)
    %t2084 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2084, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.984, i32 0, i32 0), i32 10)
    %t2085 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2085, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.985, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2085)
    %t2086 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2086, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.986, i32 0, i32 0), i32 10)
    %t2087 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2087, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.985, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2087)
    %t2088 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2088, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.987, i32 0, i32 0), i32 10)
    %t2089 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2089, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.988, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2089)
    %t2090 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2090, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.989, i32 0, i32 0), i32 10)
    %t2091 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2091, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.988, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2091)
    %t2092 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2092, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.990, i32 0, i32 0), i32 10)
    %t2093 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2093, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.991, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t2093)
    %t2094 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2094, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.992, i32 0, i32 0), i32 10)
    %t2095 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2095, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.991, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t2095)
    %t2096 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2096, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.993, i32 0, i32 0), i32 10)
    %t2097 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2097, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.982, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2097)
    %t2098 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2098, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.994, i32 0, i32 0), i32 10)
    %t2099 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2099, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.982, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2099)
    %t2100 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2100, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.995, i32 0, i32 0), i32 10)
    %t2101 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2101)
    %t2102 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2102, i32 0, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.996, i32 0, i32 0), i32 60)
    call void @_WriteLn(i8* %t2102)
    %t2103 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2103, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.997, i32 0, i32 0), i32 10)
    %t2104 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2104)
    %t2105 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2105, i32 0, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.996, i32 0, i32 0), i32 60)
    call void @_WriteLn(i8* %t2105)
    %t2106 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2106, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.998, i32 0, i32 0), i32 10)
    %t2107 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2107, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.937, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2107)
    %t2108 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2108, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.999, i32 0, i32 0), i32 10)
    %t2109 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2109, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.937, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2109)
    %t2110 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2110, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1000, i32 0, i32 0), i32 10)
    %t2111 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2111, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.937, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2111)
    %t2112 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2112, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1001, i32 0, i32 0), i32 10)
    %t2113 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2113, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.937, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2113)
    %t2114 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2114, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1002, i32 0, i32 0), i32 10)
    %t2115 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2115, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1003, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2115)
    %t2116 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2116, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1004, i32 0, i32 0), i32 10)
    %t2117 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2117, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1003, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2117)
    %t2118 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2118, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1005, i32 0, i32 0), i32 10)
    %t2119 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2119, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1006, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2119)
    %t2120 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2120, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1007, i32 0, i32 0), i32 10)
    %t2121 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2121, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1006, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2121)
    %t2122 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2122, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1008, i32 0, i32 0), i32 10)
    %t2123 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2123, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1006, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2123)
    %t2124 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2124, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1009, i32 0, i32 0), i32 10)
    %t2125 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2125, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1006, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2125)
    %t2126 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2126, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1010, i32 0, i32 0), i32 10)
    %t2127 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2127, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1011, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2127)
    %t2128 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2128, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1012, i32 0, i32 0), i32 10)
    %t2129 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2129, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1011, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2129)
    %t2130 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2130, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1013, i32 0, i32 0), i32 10)
    %t2131 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2131, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1014, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t2131)
    %t2132 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2132, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1015, i32 0, i32 0), i32 10)
    %t2133 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2133, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1014, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t2133)
    %t2134 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2134, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1016, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t2134)
    store i32 0, i32* @z
    %t2135 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2135, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.956, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t2135)
    %t2136 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2136, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1017, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2136)
    %t2137 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2137, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1018, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2137)
    %t2138 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2138, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1019, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2138)
    %t2139 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2139, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1020, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2139)
    %t2140 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2140, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1021, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2140)
    %t2141 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2141, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1022, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2141)
    %t2142 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2142, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1023, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2142)
    %t2143 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2143, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1024, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2143)
    %t2144 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2144, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1025, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2144)
    %t2145 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2145, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1026, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t2145)
    %t2146 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2146, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1027, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2146)
    store i32 0, i32* @t
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
    call void @_WriteString(i8* %t2156, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1037, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2156)
    store %T_array_60 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1038, i32 0, i32 0), %T_array_60* @pavc
    %t2157 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2157, i32 0, i32 0, i8* getelementptr inbounds (%T_array_60, %T_array_60* @pavc, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t2157, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1039, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t2157)
    %t2158 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2158, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1040, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2158)
    %t2159 = load %T_arri, %T_arri* @avi
    store %T_arri %t2159, %T_arri* @avi2
    %t2160 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2160, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.937, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2160)
    %t2161 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2161, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1041, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2161)
    store i32 0, i32* @t
    %t2162 = load %T_arrim, %T_arrim* @mdar
    store %T_arrim %t2162, %T_arrim* @mdar2
    %t2163 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2163, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1028, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t2163)
    %t2164 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2164, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1029, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2164)
    %t2165 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2165, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1030, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2165)
    %t2166 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2166, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1031, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2166)
    %t2167 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2167, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1032, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2167)
    %t2168 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2168, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1033, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2168)
    %t2169 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2169, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1034, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2169)
    %t2170 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2170, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1035, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2170)
    %t2171 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2171, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1036, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2171)
    %t2172 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2172, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1042, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2172)
    %t2173 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2173, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.937, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2173)
    %t2174 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2174, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1043, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2174)
    %t2175 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2175, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1044, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2175)
    %t2176 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2176, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1045, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2176)
    %t2177 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2177, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1046, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2177)
    %t2178 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2178, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1047, i32 0, i32 0), i32 9)
    call void @_WriteLn(i8* %t2178)
    store i32 1, i32* @x
    %t2179 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2179, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1048, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2179)
    %t2180 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2180)
    %t2181 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2181, i32 0, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1049, i32 0, i32 0), i32 58)
    call void @_WriteLn(i8* %t2181)
    %t2182 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2182)
    %t2183 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2183, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1050, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t2183)
    %t2185 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 0
    %t2184 = bitcast i8* %t2185 to i32*
    store i32 64, i32* %t2184
    %t2187 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 4
    %t2186 = bitcast i8* %t2187 to i1*
    store i1 0, i1* %t2186
    %t2189 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 5
    %t2188 = bitcast i8* %t2189 to i8*
    store i8 106, i8* %t2188
    %t2191 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 8
    %t2190 = bitcast i8* %t2191 to i32*
    store i32 1, i32* %t2190
    %t2193 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 12
    %t2192 = bitcast i8* %t2193 to i32*
    store i32 3, i32* %t2192
    %t2195 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 16
    %t2194 = bitcast i8* %t2195 to i32*
    store i32 12, i32* %t2194
    %t2197 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 24
    %t2196 = bitcast i8* %t2197 to double*
    store double 4.54512e-29, double* %t2196
    %t2199 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 32
    %t2198 = bitcast i8* %t2199 to %T_string10*
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1051, i32 0, i32 0), %T_string10* %t2198
    %t2201 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 84
    %t2200 = bitcast i8* %t2201 to %T_recs*
    %t2203 = getelementptr inbounds %T_recs, %T_recs* %t2200, i32 0, i32 0
    %t2202 = bitcast i8* %t2203 to i32*
    store i32 2324, i32* %t2202
    %t2205 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 84
    %t2204 = bitcast i8* %t2205 to %T_recs*
    %t2207 = getelementptr inbounds %T_recs, %T_recs* %t2204, i32 0, i32 4
    %t2206 = bitcast i8* %t2207 to i8*
    store i8 121, i8* %t2206
    %t2209 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 92
    %t2208 = bitcast i8* %t2209 to %T_cset*
    store %T_cset %.dummy_set, %T_cset* %t2208
    %t2211 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 128
    %t2210 = bitcast i8* %t2211 to i8**
    %t2212 = load i8*, i8** %t2210
    %t2213 = bitcast i8* %t2212 to i32*
    store i32 8454, i32* %t2213
    %t2214 = load %T_text, %T_text* @output
    %t2216 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 0
    %t2215 = bitcast i8* %t2216 to i32*
    %t2217 = load i32, i32* %t2215
    call void @_WriteInteger(i8* %t2214, i32 1, i32 0, i32 %t2217)
    call void @_WriteChar(i8* %t2214, i32 0, i32 0, i8 32)
    %t2219 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 4
    %t2218 = bitcast i8* %t2219 to i1*
    %t2220 = load i1, i1* %t2218
    call void @_WriteBool(i8* %t2214, i32 5, i32 0, i1 %t2220)
    call void @_WriteChar(i8* %t2214, i32 0, i32 0, i8 32)
    %t2222 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 5
    %t2221 = bitcast i8* %t2222 to i8*
    %t2223 = load i8, i8* %t2221
    call void @_WriteChar(i8* %t2214, i32 1, i32 0, i8 %t2223)
    call void @_WriteChar(i8* %t2214, i32 0, i32 0, i8 32)
028D08D0    call void @_WriteInteger(i8* %t2214, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2214, i32 0, i32 0, i8 32)
028D0798    call void @_WriteInteger(i8* %t2214, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2214, i32 0, i32 0, i8 32)
    %t2231 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 16
    %t2230 = bitcast i8* %t2231 to i32*
    %t2232 = load i32, i32* %t2230
    call void @_WriteInteger(i8* %t2214, i32 1, i32 0, i32 %t2232)
    call void @_WriteChar(i8* %t2214, i32 0, i32 0, i8 32)
    %t2234 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 24
    %t2233 = bitcast i8* %t2234 to double*
    %t2235 = load double, double* %t2233
    call void @_WriteReal(i8* %t2214, i32 15, i32 0, double %t2235)
    call void @_WriteChar(i8* %t2214, i32 0, i32 0, i8 32)
    %t2237 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 32
    %t2236 = bitcast i8* %t2237 to %T_string10*
    call void @_WriteString(i8* %t2214, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* %t2236, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2214)
    %t2238 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2238)
    %t2239 = load %T_text, %T_text* @output
    %t2241 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 84
    %t2240 = bitcast i8* %t2241 to %T_recs*
    %t2243 = getelementptr inbounds %T_recs, %T_recs* %t2240, i32 0, i32 0
    %t2242 = bitcast i8* %t2243 to i32*
    %t2244 = load i32, i32* %t2242
    call void @_WriteInteger(i8* %t2239, i32 1, i32 0, i32 %t2244)
    call void @_WriteChar(i8* %t2239, i32 0, i32 0, i8 32)
    %t2246 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 84
    %t2245 = bitcast i8* %t2246 to %T_recs*
    %t2248 = getelementptr inbounds %T_recs, %T_recs* %t2245, i32 0, i32 4
    %t2247 = bitcast i8* %t2248 to i8*
    %t2249 = load i8, i8* %t2247
    call void @_WriteChar(i8* %t2239, i32 1, i32 0, i8 %t2249)
    call void @_WriteLn(i8* %t2239)
    %t2250 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2250)
    %t2251 = load %T_text, %T_text* @output
    %t2253 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 128
    %t2252 = bitcast i8* %t2253 to i8**
    %t2254 = load i8*, i8** %t2252
    %t2255 = bitcast i8* %t2254 to i32*
    %t2256 = load i32, i32* %t2255
    call void @_WriteInteger(i8* %t2251, i32 1, i32 0, i32 %t2256)
    call void @_WriteLn(i8* %t2251)
    %t2257 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2257, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1028, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t2257)
    %t2258 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2258, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1052, i32 0, i32 0), i32 44)
    call void @_WriteLn(i8* %t2258)
    %t2259 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2259, i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1053, i32 0, i32 0), i32 29)
    call void @_WriteLn(i8* %t2259)
    %t2260 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2260, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1054, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t2260)
    %t2261 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2261, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1055, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2261)
    %t2262 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2262, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1056, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t2262)
    %t2263 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2263, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1057, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t2263)
    %t2265 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 0
    %t2264 = bitcast i8* %t2265 to i32*
    store i32 64, i32* %t2264
    %t2267 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 4
    %t2266 = bitcast i8* %t2267 to i1*
    store i1 0, i1* %t2266
    %t2269 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 5
    %t2268 = bitcast i8* %t2269 to i8*
    store i8 106, i8* %t2268
    %t2271 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 8
    %t2270 = bitcast i8* %t2271 to i32*
    store i32 1, i32* %t2270
    %t2273 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 12
    %t2272 = bitcast i8* %t2273 to i32*
    store i32 3, i32* %t2272
    %t2275 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 16
    %t2274 = bitcast i8* %t2275 to i32*
    store i32 12, i32* %t2274
    %t2277 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 24
    %t2276 = bitcast i8* %t2277 to double*
    store double 4.54512e-29, double* %t2276
    %t2279 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 32
    %t2278 = bitcast i8* %t2279 to %T_string10*
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1051, i32 0, i32 0), %T_string10* %t2278
    %t2281 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 84
    %t2280 = bitcast i8* %t2281 to %T_recs*
    %t2283 = getelementptr inbounds %T_recs, %T_recs* %t2280, i32 0, i32 0
    %t2282 = bitcast i8* %t2283 to i32*
    store i32 2324, i32* %t2282
    %t2285 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 84
    %t2284 = bitcast i8* %t2285 to %T_recs*
    %t2287 = getelementptr inbounds %T_recs, %T_recs* %t2284, i32 0, i32 4
    %t2286 = bitcast i8* %t2287 to i8*
    store i8 121, i8* %t2286
    %t2289 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 92
    %t2288 = bitcast i8* %t2289 to %T_cset*
    store %T_cset %.dummy_set, %T_cset* %t2288
    %t2291 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 128
    %t2290 = bitcast i8* %t2291 to i8**
    %t2292 = load i8*, i8** %t2290
    %t2293 = bitcast i8* %t2292 to i32*
    store i32 8454, i32* %t2293
    %t2294 = load %T_text, %T_text* @output
    %t2296 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 0
    %t2295 = bitcast i8* %t2296 to i32*
    %t2297 = load i32, i32* %t2295
    call void @_WriteInteger(i8* %t2294, i32 1, i32 0, i32 %t2297)
    call void @_WriteChar(i8* %t2294, i32 0, i32 0, i8 32)
    %t2299 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 4
    %t2298 = bitcast i8* %t2299 to i1*
    %t2300 = load i1, i1* %t2298
    call void @_WriteBool(i8* %t2294, i32 5, i32 0, i1 %t2300)
    call void @_WriteChar(i8* %t2294, i32 0, i32 0, i8 32)
    %t2302 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 5
    %t2301 = bitcast i8* %t2302 to i8*
    %t2303 = load i8, i8* %t2301
    call void @_WriteChar(i8* %t2294, i32 1, i32 0, i8 %t2303)
    call void @_WriteChar(i8* %t2294, i32 0, i32 0, i8 32)
028D03F0    call void @_WriteInteger(i8* %t2294, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2294, i32 0, i32 0, i8 32)
028D0800    call void @_WriteInteger(i8* %t2294, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2294, i32 0, i32 0, i8 32)
    %t2311 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 16
    %t2310 = bitcast i8* %t2311 to i32*
    %t2312 = load i32, i32* %t2310
    call void @_WriteInteger(i8* %t2294, i32 1, i32 0, i32 %t2312)
    call void @_WriteChar(i8* %t2294, i32 0, i32 0, i8 32)
    %t2314 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 24
    %t2313 = bitcast i8* %t2314 to double*
    %t2315 = load double, double* %t2313
    call void @_WriteReal(i8* %t2294, i32 15, i32 0, double %t2315)
    call void @_WriteChar(i8* %t2294, i32 0, i32 0, i8 32)
    %t2317 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 32
    %t2316 = bitcast i8* %t2317 to %T_string10*
    call void @_WriteString(i8* %t2294, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* %t2316, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2294)
    %t2318 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2318)
    %t2319 = load %T_text, %T_text* @output
    %t2321 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 84
    %t2320 = bitcast i8* %t2321 to %T_recs*
    %t2323 = getelementptr inbounds %T_recs, %T_recs* %t2320, i32 0, i32 0
    %t2322 = bitcast i8* %t2323 to i32*
    %t2324 = load i32, i32* %t2322
    call void @_WriteInteger(i8* %t2319, i32 1, i32 0, i32 %t2324)
    call void @_WriteChar(i8* %t2319, i32 0, i32 0, i8 32)
    %t2326 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 84
    %t2325 = bitcast i8* %t2326 to %T_recs*
    %t2328 = getelementptr inbounds %T_recs, %T_recs* %t2325, i32 0, i32 4
    %t2327 = bitcast i8* %t2328 to i8*
    %t2329 = load i8, i8* %t2327
    call void @_WriteChar(i8* %t2319, i32 1, i32 0, i8 %t2329)
    call void @_WriteLn(i8* %t2319)
    %t2330 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t2330)
    %t2331 = load %T_text, %T_text* @output
    %t2333 = getelementptr inbounds %T_prec, %T_prec* @parec, i32 0, i32 128
    %t2332 = bitcast i8* %t2333 to i8**
    %t2334 = load i8*, i8** %t2332
    %t2335 = bitcast i8* %t2334 to i32*
    %t2336 = load i32, i32* %t2335
    call void @_WriteInteger(i8* %t2331, i32 1, i32 0, i32 %t2336)
    call void @_WriteLn(i8* %t2331)
    %t2337 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2337, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1028, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t2337)
    %t2338 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2338, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1052, i32 0, i32 0), i32 44)
    call void @_WriteLn(i8* %t2338)
    %t2339 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2339, i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1053, i32 0, i32 0), i32 29)
    call void @_WriteLn(i8* %t2339)
    %t2340 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2340, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1054, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t2340)
    %t2341 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2341, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1055, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t2341)
    %t2342 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2342, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1056, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t2342)
    %t2343 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2343, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1058, i32 0, i32 0), i32 11)
    %t2345 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2344 = bitcast i8* %t2345 to i32*
    store i32 873, i32* %t2344
    %t2347 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2346 = bitcast i8* %t2347 to i32*
    store i32 0, i32* %t2346
    %t2349 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2348 = bitcast i8* %t2349 to i32*
    store i32 427, i32* %t2348
    %t2351 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2350 = bitcast i8* %t2351 to i32*
    store i32 235, i32* %t2350
    %t2352 = load %T_text, %T_text* @output
    %t2354 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2353 = bitcast i8* %t2354 to i32*
    %t2355 = load i32, i32* %t2353
    call void @_WriteInteger(i8* %t2352, i32 1, i32 0, i32 %t2355)
    call void @_WriteChar(i8* %t2352, i32 0, i32 0, i8 32)
028D03F0    call void @_WriteInteger(i8* %t2352, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2352, i32 0, i32 0, i8 32)
    %t2360 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2359 = bitcast i8* %t2360 to i32*
    %t2361 = load i32, i32* %t2359
    call void @_WriteInteger(i8* %t2352, i32 1, i32 0, i32 %t2361)
    call void @_WriteChar(i8* %t2352, i32 0, i32 0, i8 32)
    %t2363 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2362 = bitcast i8* %t2363 to i32*
    %t2364 = load i32, i32* %t2362
    call void @_WriteInteger(i8* %t2352, i32 1, i32 0, i32 %t2364)
    %t2365 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2365, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1059, i32 0, i32 0), i32 18)
    call void @_WriteLn(i8* %t2365)
    %t2366 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2366, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1060, i32 0, i32 0), i32 11)
    %t2368 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2367 = bitcast i8* %t2368 to i32*
    store i32 873, i32* %t2367
    %t2370 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2369 = bitcast i8* %t2370 to i32*
    store i32 1, i32* %t2369
    %t2372 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2371 = bitcast i8* %t2372 to i32*
    store i32 427, i32* %t2371
    %t2374 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2373 = bitcast i8* %t2374 to i1*
    store i1 1, i1* %t2373
    %t2375 = load %T_text, %T_text* @output
    %t2377 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2376 = bitcast i8* %t2377 to i32*
    %t2378 = load i32, i32* %t2376
    call void @_WriteInteger(i8* %t2375, i32 1, i32 0, i32 %t2378)
    call void @_WriteChar(i8* %t2375, i32 0, i32 0, i8 32)
028D01E8    call void @_WriteInteger(i8* %t2375, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2375, i32 0, i32 0, i8 32)
    %t2383 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2382 = bitcast i8* %t2383 to i1*
    %t2384 = load i1, i1* %t2382
    call void @_WriteBool(i8* %t2375, i32 5, i32 0, i1 %t2384)
    call void @_WriteChar(i8* %t2375, i32 0, i32 0, i8 32)
    %t2386 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2385 = bitcast i8* %t2386 to i32*
    %t2387 = load i32, i32* %t2385
    call void @_WriteInteger(i8* %t2375, i32 1, i32 0, i32 %t2387)
    %t2388 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2388, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1061, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t2388)
    %t2389 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2389, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1062, i32 0, i32 0), i32 11)
    %t2391 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2390 = bitcast i8* %t2391 to i32*
    store i32 873, i32* %t2390
    %t2393 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2392 = bitcast i8* %t2393 to i32*
    store i32 2, i32* %t2392
    %t2395 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2394 = bitcast i8* %t2395 to i32*
    store i32 427, i32* %t2394
    %t2397 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2396 = bitcast i8* %t2397 to i8*
    store i8 102, i8* %t2396
    %t2398 = load %T_text, %T_text* @output
    %t2400 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2399 = bitcast i8* %t2400 to i32*
    %t2401 = load i32, i32* %t2399
    call void @_WriteInteger(i8* %t2398, i32 1, i32 0, i32 %t2401)
    call void @_WriteChar(i8* %t2398, i32 0, i32 0, i8 32)
028D0118    call void @_WriteInteger(i8* %t2398, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2398, i32 0, i32 0, i8 32)
    %t2406 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2405 = bitcast i8* %t2406 to i8*
    %t2407 = load i8, i8* %t2405
    call void @_WriteChar(i8* %t2398, i32 0, i32 0, i8 %t2407)
    call void @_WriteChar(i8* %t2398, i32 0, i32 0, i8 32)
    %t2409 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2408 = bitcast i8* %t2409 to i32*
    %t2410 = load i32, i32* %t2408
    call void @_WriteInteger(i8* %t2398, i32 1, i32 0, i32 %t2410)
    %t2411 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2411, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1063, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t2411)
    %t2412 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2412, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1064, i32 0, i32 0), i32 11)
    %t2414 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2413 = bitcast i8* %t2414 to i32*
    store i32 873, i32* %t2413
    %t2416 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2415 = bitcast i8* %t2416 to i32*
    store i32 3, i32* %t2415
    %t2418 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2417 = bitcast i8* %t2418 to i32*
    store i32 427, i32* %t2417
    %t2420 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2419 = bitcast i8* %t2420 to i32*
    store i32 8, i32* %t2419
    %t2421 = load %T_text, %T_text* @output
    %t2423 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2422 = bitcast i8* %t2423 to i32*
    %t2424 = load i32, i32* %t2422
    call void @_WriteInteger(i8* %t2421, i32 1, i32 0, i32 %t2424)
    call void @_WriteChar(i8* %t2421, i32 0, i32 0, i8 32)
028D0C78    call void @_WriteInteger(i8* %t2421, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2421, i32 0, i32 0, i8 32)
028D0250    call void @_WriteInteger(i8* %t2421, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2421, i32 0, i32 0, i8 32)
    %t2432 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2431 = bitcast i8* %t2432 to i32*
    %t2433 = load i32, i32* %t2431
    call void @_WriteInteger(i8* %t2421, i32 1, i32 0, i32 %t2433)
    %t2434 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2434, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1065, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t2434)
    %t2435 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2435, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1066, i32 0, i32 0), i32 11)
    %t2437 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2436 = bitcast i8* %t2437 to i32*
    store i32 873, i32* %t2436
    %t2439 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2438 = bitcast i8* %t2439 to i32*
    store i32 4, i32* %t2438
    %t2441 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2440 = bitcast i8* %t2441 to i32*
    store i32 427, i32* %t2440
    %t2443 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2442 = bitcast i8* %t2443 to i32*
    store i32 3, i32* %t2442
    %t2444 = load %T_text, %T_text* @output
    %t2446 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2445 = bitcast i8* %t2446 to i32*
    %t2447 = load i32, i32* %t2445
    call void @_WriteInteger(i8* %t2444, i32 1, i32 0, i32 %t2447)
    call void @_WriteChar(i8* %t2444, i32 0, i32 0, i8 32)
028D04C0    call void @_WriteInteger(i8* %t2444, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2444, i32 0, i32 0, i8 32)
028D0800    call void @_WriteInteger(i8* %t2444, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2444, i32 0, i32 0, i8 32)
    %t2455 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2454 = bitcast i8* %t2455 to i32*
    %t2456 = load i32, i32* %t2454
    call void @_WriteInteger(i8* %t2444, i32 1, i32 0, i32 %t2456)
    %t2457 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2457, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1067, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t2457)
    %t2458 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2458, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1068, i32 0, i32 0), i32 11)
    %t2460 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2459 = bitcast i8* %t2460 to i32*
    store i32 873, i32* %t2459
    %t2462 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2461 = bitcast i8* %t2462 to i32*
    store i32 5, i32* %t2461
    %t2464 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2463 = bitcast i8* %t2464 to i32*
    store i32 427, i32* %t2463
    %t2466 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2465 = bitcast i8* %t2466 to i32*
    store i32 12, i32* %t2465
    %t2467 = load %T_text, %T_text* @output
    %t2469 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2468 = bitcast i8* %t2469 to i32*
    %t2470 = load i32, i32* %t2468
    call void @_WriteInteger(i8* %t2467, i32 1, i32 0, i32 %t2470)
    call void @_WriteChar(i8* %t2467, i32 0, i32 0, i8 32)
028D0A08    call void @_WriteInteger(i8* %t2467, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2467, i32 0, i32 0, i8 32)
    %t2475 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2474 = bitcast i8* %t2475 to i32*
    %t2476 = load i32, i32* %t2474
    call void @_WriteInteger(i8* %t2467, i32 1, i32 0, i32 %t2476)
    call void @_WriteChar(i8* %t2467, i32 0, i32 0, i8 32)
    %t2478 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 12
    %t2477 = bitcast i8* %t2478 to i32*
    %t2479 = load i32, i32* %t2477
    call void @_WriteInteger(i8* %t2467, i32 1, i32 0, i32 %t2479)
    %t2480 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2480, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1069, i32 0, i32 0), i32 17)
    call void @_WriteLn(i8* %t2480)
    %t2481 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2481, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1070, i32 0, i32 0), i32 11)
    %t2483 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2482 = bitcast i8* %t2483 to i32*
    store i32 873, i32* %t2482
    %t2485 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2484 = bitcast i8* %t2485 to i32*
    store i32 6, i32* %t2484
    %t2487 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 16
    %t2486 = bitcast i8* %t2487 to i32*
    store i32 427, i32* %t2486
    %t2489 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2488 = bitcast i8* %t2489 to double*
    store double 8734.84, double* %t2488
    %t2490 = load %T_text, %T_text* @output
    %t2492 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2491 = bitcast i8* %t2492 to i32*
    %t2493 = load i32, i32* %t2491
    call void @_WriteInteger(i8* %t2490, i32 1, i32 0, i32 %t2493)
    call void @_WriteChar(i8* %t2490, i32 0, i32 0, i8 32)
028D04C0    call void @_WriteInteger(i8* %t2490, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2490, i32 0, i32 0, i8 32)
    %t2498 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2497 = bitcast i8* %t2498 to double*
    %t2499 = load double, double* %t2497
    call void @_WriteReal(i8* %t2490, i32 1, i32 4, double %t2499)
    call void @_WriteChar(i8* %t2490, i32 0, i32 0, i8 32)
    %t2501 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 16
    %t2500 = bitcast i8* %t2501 to i32*
    %t2502 = load i32, i32* %t2500
    call void @_WriteInteger(i8* %t2490, i32 1, i32 0, i32 %t2502)
    %t2503 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2503, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1071, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t2503)
    %t2504 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2504, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1072, i32 0, i32 0), i32 11)
    %t2506 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2505 = bitcast i8* %t2506 to i32*
    store i32 873, i32* %t2505
    %t2508 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2507 = bitcast i8* %t2508 to i32*
    store i32 7, i32* %t2507
    %t2510 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 20
    %t2509 = bitcast i8* %t2510 to i32*
    store i32 427, i32* %t2509
    %t2512 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2511 = bitcast i8* %t2512 to %T_string10*
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1073, i32 0, i32 0), %T_string10* %t2511
    %t2513 = load %T_text, %T_text* @output
    %t2515 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2514 = bitcast i8* %t2515 to i32*
    %t2516 = load i32, i32* %t2514
    call void @_WriteInteger(i8* %t2513, i32 1, i32 0, i32 %t2516)
    call void @_WriteChar(i8* %t2513, i32 0, i32 0, i8 32)
028D01E8    call void @_WriteInteger(i8* %t2513, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2513, i32 0, i32 0, i8 32)
    %t2521 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2520 = bitcast i8* %t2521 to %T_string10*
    call void @_WriteString(i8* %t2513, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* %t2520, i32 0, i32 0), i32 10)
    call void @_WriteChar(i8* %t2513, i32 0, i32 0, i8 32)
    %t2523 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 20
    %t2522 = bitcast i8* %t2523 to i32*
    %t2524 = load i32, i32* %t2522
    call void @_WriteInteger(i8* %t2513, i32 1, i32 0, i32 %t2524)
    %t2525 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2525, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1074, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t2525)
    %t2526 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2526, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1075, i32 0, i32 0), i32 11)
    %t2528 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2527 = bitcast i8* %t2528 to i32*
    store i32 873, i32* %t2527
    %t2530 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2529 = bitcast i8* %t2530 to i32*
    store i32 8, i32* %t2529
    %t2532 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 48
    %t2531 = bitcast i8* %t2532 to i32*
    store i32 427, i32* %t2531
    %t2533 = load %T_text, %T_text* @output
    %t2535 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2534 = bitcast i8* %t2535 to i32*
    %t2536 = load i32, i32* %t2534
    call void @_WriteInteger(i8* %t2533, i32 1, i32 0, i32 %t2536)
    call void @_WriteChar(i8* %t2533, i32 0, i32 0, i8 32)
028D0C10    call void @_WriteInteger(i8* %t2533, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2533, i32 0, i32 0, i8 32)
    %t2540 = load %T_text, %T_text* @output
    %t2542 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 48
    %t2541 = bitcast i8* %t2542 to i32*
    %t2543 = load i32, i32* %t2541
    call void @_WriteInteger(i8* %t2540, i32 1, i32 0, i32 %t2543)
    call void @_WriteLn(i8* %t2540)
    %t2544 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2544, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1076, i32 0, i32 0), i32 51)
    call void @_WriteLn(i8* %t2544)
    %t2545 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2545, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1077, i32 0, i32 0), i32 11)
    %t2547 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2546 = bitcast i8* %t2547 to i32*
    store i32 873, i32* %t2546
    %t2549 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2548 = bitcast i8* %t2549 to i32*
    store i32 9, i32* %t2548
    %t2551 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 16
    %t2550 = bitcast i8* %t2551 to i32*
    store i32 427, i32* %t2550
    %t2553 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2552 = bitcast i8* %t2553 to %T_recs*
    %t2555 = getelementptr inbounds %T_recs, %T_recs* %t2552, i32 0, i32 0
    %t2554 = bitcast i8* %t2555 to i32*
    store i32 2387, i32* %t2554
    %t2557 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2556 = bitcast i8* %t2557 to %T_recs*
    %t2559 = getelementptr inbounds %T_recs, %T_recs* %t2556, i32 0, i32 4
    %t2558 = bitcast i8* %t2559 to i8*
    store i8 116, i8* %t2558
    %t2560 = load %T_text, %T_text* @output
    %t2562 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2561 = bitcast i8* %t2562 to i32*
    %t2563 = load i32, i32* %t2561
    call void @_WriteInteger(i8* %t2560, i32 1, i32 0, i32 %t2563)
    call void @_WriteChar(i8* %t2560, i32 0, i32 0, i8 32)
028D0388    call void @_WriteInteger(i8* %t2560, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2560, i32 0, i32 0, i8 32)
    %t2568 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2567 = bitcast i8* %t2568 to %T_recs*
    %t2570 = getelementptr inbounds %T_recs, %T_recs* %t2567, i32 0, i32 0
    %t2569 = bitcast i8* %t2570 to i32*
    %t2571 = load i32, i32* %t2569
    call void @_WriteInteger(i8* %t2560, i32 1, i32 0, i32 %t2571)
    call void @_WriteChar(i8* %t2560, i32 0, i32 0, i8 32)
    %t2573 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2572 = bitcast i8* %t2573 to %T_recs*
    %t2575 = getelementptr inbounds %T_recs, %T_recs* %t2572, i32 0, i32 4
    %t2574 = bitcast i8* %t2575 to i8*
    %t2576 = load i8, i8* %t2574
    call void @_WriteChar(i8* %t2560, i32 0, i32 0, i8 %t2576)
    call void @_WriteChar(i8* %t2560, i32 0, i32 0, i8 32)
    %t2578 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 16
    %t2577 = bitcast i8* %t2578 to i32*
    %t2579 = load i32, i32* %t2577
    call void @_WriteInteger(i8* %t2560, i32 1, i32 0, i32 %t2579)
    %t2580 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2580, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1078, i32 0, i32 0), i32 23)
    call void @_WriteLn(i8* %t2580)
    %t2581 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2581, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1079, i32 0, i32 0), i32 11)
    %t2583 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2582 = bitcast i8* %t2583 to i32*
    store i32 873, i32* %t2582
    %t2585 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2584 = bitcast i8* %t2585 to i32*
    store i32 10, i32* %t2584
    %t2587 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 40
    %t2586 = bitcast i8* %t2587 to i32*
    store i32 427, i32* %t2586
    %t2589 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2588 = bitcast i8* %t2589 to %T_cset*
    store %T_cset %.dummy_set, %T_cset* %t2588
    %t2590 = load %T_text, %T_text* @output
    %t2592 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2591 = bitcast i8* %t2592 to i32*
    %t2593 = load i32, i32* %t2591
    call void @_WriteInteger(i8* %t2590, i32 1, i32 0, i32 %t2593)
    call void @_WriteChar(i8* %t2590, i32 0, i32 0, i8 32)
028D02B8    call void @_WriteInteger(i8* %t2590, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2590, i32 0, i32 0, i8 32)
    %t2597 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t2597, i32 0, i32 0, i8 32)
    %t2599 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 40
    %t2598 = bitcast i8* %t2599 to i32*
    %t2600 = load i32, i32* %t2598
    call void @_WriteInteger(i8* %t2597, i32 1, i32 0, i32 %t2600)
    call void @_WriteLn(i8* %t2597)
    %t2601 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2601, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1080, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t2601)
    %t2602 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2602, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1081, i32 0, i32 0), i32 11)
    %t2604 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2603 = bitcast i8* %t2604 to i32*
    store i32 873, i32* %t2603
    %t2606 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 4
    %t2605 = bitcast i8* %t2606 to i32*
    store i32 11, i32* %t2605
    %t2608 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 16
    %t2607 = bitcast i8* %t2608 to i32*
    store i32 427, i32* %t2607
    %t2610 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2609 = bitcast i8* %t2610 to i8**
    %t2611 = load i8*, i8** %t2609
    %t2612 = bitcast i8* %t2611 to i32*
    store i32 2394, i32* %t2612
    %t2613 = load %T_text, %T_text* @output
    %t2615 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 0
    %t2614 = bitcast i8* %t2615 to i32*
    %t2616 = load i32, i32* %t2614
    call void @_WriteInteger(i8* %t2613, i32 1, i32 0, i32 %t2616)
    call void @_WriteChar(i8* %t2613, i32 0, i32 0, i8 32)
028D0730    call void @_WriteInteger(i8* %t2613, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2613, i32 0, i32 0, i8 32)
    %t2621 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 8
    %t2620 = bitcast i8* %t2621 to i8**
    %t2622 = load i8*, i8** %t2620
    %t2623 = bitcast i8* %t2622 to i32*
    %t2624 = load i32, i32* %t2623
    call void @_WriteInteger(i8* %t2613, i32 1, i32 0, i32 %t2624)
    call void @_WriteChar(i8* %t2613, i32 0, i32 0, i8 32)
    %t2626 = getelementptr inbounds %T_record_126, %T_record_126* @vra, i32 0, i32 16
    %t2625 = bitcast i8* %t2626 to i32*
    %t2627 = load i32, i32* %t2625
    call void @_WriteInteger(i8* %t2613, i32 1, i32 0, i32 %t2627)
    %t2628 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2628, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1082, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t2628)
    %t2629 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2629, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1083, i32 0, i32 0), i32 11)
    %t2631 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 0
    %t2630 = bitcast i8* %t2631 to i32*
    store i32 10, i32* %t2630
    %t2633 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 4
    %t2632 = bitcast i8* %t2633 to i32*
    store i32 2343, i32* %t2632
    %t2634 = load %T_text, %T_text* @output
    %t2636 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 0
    %t2635 = bitcast i8* %t2636 to i32*
    %t2637 = load i32, i32* %t2635
    call void @_WriteInteger(i8* %t2634, i32 1, i32 0, i32 %t2637)
    call void @_WriteChar(i8* %t2634, i32 0, i32 0, i8 32)
    %t2639 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 4
    %t2638 = bitcast i8* %t2639 to i32*
    %t2640 = load i32, i32* %t2638
    call void @_WriteInteger(i8* %t2634, i32 1, i32 0, i32 %t2640)
    %t2641 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2641, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1084, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t2641)
    %t2642 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2642, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1085, i32 0, i32 0), i32 11)
    %t2644 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 0
    %t2643 = bitcast i8* %t2644 to i32*
    store i32 19, i32* %t2643
    %t2646 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 4
    %t2645 = bitcast i8* %t2646 to i1*
    store i1 1, i1* %t2645
    %t2647 = load %T_text, %T_text* @output
    %t2649 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 0
    %t2648 = bitcast i8* %t2649 to i32*
    %t2650 = load i32, i32* %t2648
    call void @_WriteInteger(i8* %t2647, i32 1, i32 0, i32 %t2650)
    call void @_WriteChar(i8* %t2647, i32 0, i32 0, i8 32)
    %t2652 = getelementptr inbounds %T_record_130, %T_record_130* @vvrs, i32 0, i32 4
    %t2651 = bitcast i8* %t2652 to i1*
    %t2653 = load i1, i1* %t2651
    call void @_WriteBool(i8* %t2647, i32 5, i32 0, i1 %t2653)
    %t2654 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2654, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1086, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t2654)
    %t2655 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2655, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1087, i32 0, i32 0), i32 11)
    %t2657 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 0
    %t2656 = bitcast i8* %t2657 to i1*
    store i1 1, i1* %t2656
    %t2659 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 4
    %t2658 = bitcast i8* %t2659 to i32*
    store i32 2343, i32* %t2658
    %t2660 = load %T_text, %T_text* @output
    %t2662 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 0
    %t2661 = bitcast i8* %t2662 to i1*
    %t2663 = load i1, i1* %t2661
    call void @_WriteBool(i8* %t2660, i32 5, i32 0, i1 %t2663)
    call void @_WriteChar(i8* %t2660, i32 0, i32 0, i8 32)
    %t2665 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 4
    %t2664 = bitcast i8* %t2665 to i32*
    %t2666 = load i32, i32* %t2664
    call void @_WriteInteger(i8* %t2660, i32 1, i32 0, i32 %t2666)
    %t2667 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2667, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1088, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t2667)
    %t2668 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2668, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1089, i32 0, i32 0), i32 11)
    %t2670 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 0
    %t2669 = bitcast i8* %t2670 to i1*
    store i1 0, i1* %t2669
    %t2672 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 1
    %t2671 = bitcast i8* %t2672 to i1*
    store i1 1, i1* %t2671
    %t2673 = load %T_text, %T_text* @output
    %t2675 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 0
    %t2674 = bitcast i8* %t2675 to i1*
    %t2676 = load i1, i1* %t2674
    call void @_WriteBool(i8* %t2673, i32 5, i32 0, i1 %t2676)
    call void @_WriteChar(i8* %t2673, i32 0, i32 0, i8 32)
    %t2678 = getelementptr inbounds %T_record_127, %T_record_127* @vvrb, i32 0, i32 1
    %t2677 = bitcast i8* %t2678 to i1*
    %t2679 = load i1, i1* %t2677
    call void @_WriteBool(i8* %t2673, i32 5, i32 0, i1 %t2679)
    %t2680 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2680, i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1090, i32 0, i32 0), i32 16)
    call void @_WriteLn(i8* %t2680)
    %t2681 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2681, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1091, i32 0, i32 0), i32 11)
    %t2683 = getelementptr inbounds %T_record_128, %T_record_128* @vvre, i32 0, i32 0
    %t2682 = bitcast i8* %t2683 to i32*
    store i32 2, i32* %t2682
    %t2685 = getelementptr inbounds %T_record_128, %T_record_128* @vvre, i32 0, i32 4
    %t2684 = bitcast i8* %t2685 to i32*
    store i32 2343, i32* %t2684
    %t2686 = load %T_text, %T_text* @output
028D01E8    call void @_WriteInteger(i8* %t2686, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2686, i32 0, i32 0, i8 32)
    %t2691 = getelementptr inbounds %T_record_128, %T_record_128* @vvre, i32 0, i32 4
    %t2690 = bitcast i8* %t2691 to i32*
    %t2692 = load i32, i32* %t2690
    call void @_WriteInteger(i8* %t2686, i32 1, i32 0, i32 %t2692)
    %t2693 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2693, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1092, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t2693)
    %t2694 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2694, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1093, i32 0, i32 0), i32 11)
    %t2696 = getelementptr inbounds %T_record_128, %T_record_128* @vvre, i32 0, i32 0
    %t2695 = bitcast i8* %t2696 to i32*
    store i32 7, i32* %t2695
    %t2698 = getelementptr inbounds %T_record_128, %T_record_128* @vvre, i32 0, i32 4
    %t2697 = bitcast i8* %t2698 to i1*
    store i1 1, i1* %t2697
    %t2699 = load %T_text, %T_text* @output
028D02B8    call void @_WriteInteger(i8* %t2699, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2699, i32 0, i32 0, i8 32)
    %t2704 = getelementptr inbounds %T_record_128, %T_record_128* @vvre, i32 0, i32 4
    %t2703 = bitcast i8* %t2704 to i1*
    %t2705 = load i1, i1* %t2703
    call void @_WriteBool(i8* %t2699, i32 5, i32 0, i1 %t2705)
    %t2706 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2706, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1094, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t2706)
    %t2707 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2707, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1095, i32 0, i32 0), i32 11)
    %t2709 = getelementptr inbounds %T_record_129, %T_record_129* @vvres, i32 0, i32 0
    %t2708 = bitcast i8* %t2709 to i32*
    store i32 3, i32* %t2708
    %t2711 = getelementptr inbounds %T_record_129, %T_record_129* @vvres, i32 0, i32 4
    %t2710 = bitcast i8* %t2711 to i32*
    store i32 2343, i32* %t2710
    %t2712 = load %T_text, %T_text* @output
028D0660    call void @_WriteInteger(i8* %t2712, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2712, i32 0, i32 0, i8 32)
    %t2717 = getelementptr inbounds %T_record_129, %T_record_129* @vvres, i32 0, i32 4
    %t2716 = bitcast i8* %t2717 to i32*
    %t2718 = load i32, i32* %t2716
    call void @_WriteInteger(i8* %t2712, i32 1, i32 0, i32 %t2718)
    %t2719 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2719, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1096, i32 0, i32 0), i32 11)
    call void @_WriteLn(i8* %t2719)
    %t2720 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2720, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1097, i32 0, i32 0), i32 11)
    %t2722 = getelementptr inbounds %T_record_129, %T_record_129* @vvres, i32 0, i32 0
    %t2721 = bitcast i8* %t2722 to i32*
    store i32 4, i32* %t2721
    %t2724 = getelementptr inbounds %T_record_129, %T_record_129* @vvres, i32 0, i32 4
    %t2723 = bitcast i8* %t2724 to i1*
    store i1 1, i1* %t2723
    %t2725 = load %T_text, %T_text* @output
028D0798    call void @_WriteInteger(i8* %t2725, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t2725, i32 0, i32 0, i8 32)
    %t2730 = getelementptr inbounds %T_record_129, %T_record_129* @vvres, i32 0, i32 4
    %t2729 = bitcast i8* %t2730 to i1*
    %t2731 = load i1, i1* %t2729
    call void @_WriteBool(i8* %t2725, i32 5, i32 0, i1 %t2731)
    %t2732 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2732, i32 0, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1098, i32 0, i32 0), i32 12)
    call void @_WriteLn(i8* %t2732)
    %t2733 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2733, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1099, i32 0, i32 0), i32 11)
    %t2735 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 0
    %t2734 = bitcast i8* %t2735 to i32*
    store i32 1, i32* %t2734
    %t2737 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2736 = bitcast i8* %t2737 to %T_record_50*
    %t2739 = getelementptr inbounds %T_record_50, %T_record_50* %t2736, i32 0, i32 0
    %t2738 = bitcast i8* %t2739 to i32*
    store i32 2, i32* %t2738
    %t2741 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2740 = bitcast i8* %t2741 to %T_record_50*
    %t2743 = getelementptr inbounds %T_record_50, %T_record_50* %t2740, i32 0, i32 4
    %t2742 = bitcast i8* %t2743 to %T_record_51*
    %t2745 = getelementptr inbounds %T_record_51, %T_record_51* %t2742, i32 0, i32 0
    %t2744 = bitcast i8* %t2745 to i32*
    store i32 3, i32* %t2744
    %t2747 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2746 = bitcast i8* %t2747 to %T_record_50*
    %t2749 = getelementptr inbounds %T_record_50, %T_record_50* %t2746, i32 0, i32 4
    %t2748 = bitcast i8* %t2749 to %T_record_51*
    %t2751 = getelementptr inbounds %T_record_51, %T_record_51* %t2748, i32 0, i32 4
    %t2750 = bitcast i8* %t2751 to %T_record_52*
    %t2753 = getelementptr inbounds %T_record_52, %T_record_52* %t2750, i32 0, i32 0
    %t2752 = bitcast i8* %t2753 to i32*
    store i32 4, i32* %t2752
    %t2755 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2754 = bitcast i8* %t2755 to %T_record_50*
    %t2757 = getelementptr inbounds %T_record_50, %T_record_50* %t2754, i32 0, i32 4
    %t2756 = bitcast i8* %t2757 to %T_record_51*
    %t2759 = getelementptr inbounds %T_record_51, %T_record_51* %t2756, i32 0, i32 4
    %t2758 = bitcast i8* %t2759 to %T_record_52*
    %t2761 = getelementptr inbounds %T_record_52, %T_record_52* %t2758, i32 0, i32 4
    %t2760 = bitcast i8* %t2761 to %T_record_53*
    %t2763 = getelementptr inbounds %T_record_53, %T_record_53* %t2760, i32 0, i32 0
    %t2762 = bitcast i8* %t2763 to i32*
    store i32 5, i32* %t2762
    %t2765 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2764 = bitcast i8* %t2765 to %T_record_50*
    %t2767 = getelementptr inbounds %T_record_50, %T_record_50* %t2764, i32 0, i32 4
    %t2766 = bitcast i8* %t2767 to %T_record_51*
    %t2769 = getelementptr inbounds %T_record_51, %T_record_51* %t2766, i32 0, i32 4
    %t2768 = bitcast i8* %t2769 to %T_record_52*
    %t2771 = getelementptr inbounds %T_record_52, %T_record_52* %t2768, i32 0, i32 4
    %t2770 = bitcast i8* %t2771 to %T_record_53*
    %t2773 = getelementptr inbounds %T_record_53, %T_record_53* %t2770, i32 0, i32 4
    %t2772 = bitcast i8* %t2773 to %T_record_54*
    %t2775 = getelementptr inbounds %T_record_54, %T_record_54* %t2772, i32 0, i32 0
    %t2774 = bitcast i8* %t2775 to i32*
    store i32 6, i32* %t2774
    %t2777 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2776 = bitcast i8* %t2777 to %T_record_50*
    %t2779 = getelementptr inbounds %T_record_50, %T_record_50* %t2776, i32 0, i32 4
    %t2778 = bitcast i8* %t2779 to %T_record_51*
    %t2781 = getelementptr inbounds %T_record_51, %T_record_51* %t2778, i32 0, i32 4
    %t2780 = bitcast i8* %t2781 to %T_record_52*
    %t2783 = getelementptr inbounds %T_record_52, %T_record_52* %t2780, i32 0, i32 4
    %t2782 = bitcast i8* %t2783 to %T_record_53*
    %t2785 = getelementptr inbounds %T_record_53, %T_record_53* %t2782, i32 0, i32 4
    %t2784 = bitcast i8* %t2785 to %T_record_54*
    %t2787 = getelementptr inbounds %T_record_54, %T_record_54* %t2784, i32 0, i32 4
    %t2786 = bitcast i8* %t2787 to %T_record_55*
    %t2789 = getelementptr inbounds %T_record_55, %T_record_55* %t2786, i32 0, i32 0
    %t2788 = bitcast i8* %t2789 to i32*
    store i32 7, i32* %t2788
    %t2791 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2790 = bitcast i8* %t2791 to %T_record_50*
    %t2793 = getelementptr inbounds %T_record_50, %T_record_50* %t2790, i32 0, i32 4
    %t2792 = bitcast i8* %t2793 to %T_record_51*
    %t2795 = getelementptr inbounds %T_record_51, %T_record_51* %t2792, i32 0, i32 4
    %t2794 = bitcast i8* %t2795 to %T_record_52*
    %t2797 = getelementptr inbounds %T_record_52, %T_record_52* %t2794, i32 0, i32 4
    %t2796 = bitcast i8* %t2797 to %T_record_53*
    %t2799 = getelementptr inbounds %T_record_53, %T_record_53* %t2796, i32 0, i32 4
    %t2798 = bitcast i8* %t2799 to %T_record_54*
    %t2801 = getelementptr inbounds %T_record_54, %T_record_54* %t2798, i32 0, i32 4
    %t2800 = bitcast i8* %t2801 to %T_record_55*
    %t2803 = getelementptr inbounds %T_record_55, %T_record_55* %t2800, i32 0, i32 4
    %t2802 = bitcast i8* %t2803 to %T_record_56*
    %t2805 = getelementptr inbounds %T_record_56, %T_record_56* %t2802, i32 0, i32 0
    %t2804 = bitcast i8* %t2805 to i32*
    store i32 8, i32* %t2804
    %t2807 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2806 = bitcast i8* %t2807 to %T_record_50*
    %t2809 = getelementptr inbounds %T_record_50, %T_record_50* %t2806, i32 0, i32 4
    %t2808 = bitcast i8* %t2809 to %T_record_51*
    %t2811 = getelementptr inbounds %T_record_51, %T_record_51* %t2808, i32 0, i32 4
    %t2810 = bitcast i8* %t2811 to %T_record_52*
    %t2813 = getelementptr inbounds %T_record_52, %T_record_52* %t2810, i32 0, i32 4
    %t2812 = bitcast i8* %t2813 to %T_record_53*
    %t2815 = getelementptr inbounds %T_record_53, %T_record_53* %t2812, i32 0, i32 4
    %t2814 = bitcast i8* %t2815 to %T_record_54*
    %t2817 = getelementptr inbounds %T_record_54, %T_record_54* %t2814, i32 0, i32 4
    %t2816 = bitcast i8* %t2817 to %T_record_55*
    %t2819 = getelementptr inbounds %T_record_55, %T_record_55* %t2816, i32 0, i32 4
    %t2818 = bitcast i8* %t2819 to %T_record_56*
    %t2821 = getelementptr inbounds %T_record_56, %T_record_56* %t2818, i32 0, i32 4
    %t2820 = bitcast i8* %t2821 to %T_record_57*
    %t2823 = getelementptr inbounds %T_record_57, %T_record_57* %t2820, i32 0, i32 0
    %t2822 = bitcast i8* %t2823 to i32*
    store i32 9, i32* %t2822
    %t2825 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2824 = bitcast i8* %t2825 to %T_record_50*
    %t2827 = getelementptr inbounds %T_record_50, %T_record_50* %t2824, i32 0, i32 4
    %t2826 = bitcast i8* %t2827 to %T_record_51*
    %t2829 = getelementptr inbounds %T_record_51, %T_record_51* %t2826, i32 0, i32 4
    %t2828 = bitcast i8* %t2829 to %T_record_52*
    %t2831 = getelementptr inbounds %T_record_52, %T_record_52* %t2828, i32 0, i32 4
    %t2830 = bitcast i8* %t2831 to %T_record_53*
    %t2833 = getelementptr inbounds %T_record_53, %T_record_53* %t2830, i32 0, i32 4
    %t2832 = bitcast i8* %t2833 to %T_record_54*
    %t2835 = getelementptr inbounds %T_record_54, %T_record_54* %t2832, i32 0, i32 4
    %t2834 = bitcast i8* %t2835 to %T_record_55*
    %t2837 = getelementptr inbounds %T_record_55, %T_record_55* %t2834, i32 0, i32 4
    %t2836 = bitcast i8* %t2837 to %T_record_56*
    %t2839 = getelementptr inbounds %T_record_56, %T_record_56* %t2836, i32 0, i32 4
    %t2838 = bitcast i8* %t2839 to %T_record_57*
    %t2841 = getelementptr inbounds %T_record_57, %T_record_57* %t2838, i32 0, i32 4
    %t2840 = bitcast i8* %t2841 to %T_record_58*
    %t2843 = getelementptr inbounds %T_record_58, %T_record_58* %t2840, i32 0, i32 0
    %t2842 = bitcast i8* %t2843 to i32*
    store i32 10, i32* %t2842
    %t2844 = load %T_text, %T_text* @output
    %t2846 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 0
    %t2845 = bitcast i8* %t2846 to i32*
    %t2847 = load i32, i32* %t2845
    call void @_WriteInteger(i8* %t2844, i32 1, i32 0, i32 %t2847)
    call void @_WriteChar(i8* %t2844, i32 0, i32 0, i8 32)
    %t2849 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2848 = bitcast i8* %t2849 to %T_record_50*
    %t2851 = getelementptr inbounds %T_record_50, %T_record_50* %t2848, i32 0, i32 0
    %t2850 = bitcast i8* %t2851 to i32*
    %t2852 = load i32, i32* %t2850
    call void @_WriteInteger(i8* %t2844, i32 1, i32 0, i32 %t2852)
    call void @_WriteChar(i8* %t2844, i32 0, i32 0, i8 32)
    %t2854 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2853 = bitcast i8* %t2854 to %T_record_50*
    %t2856 = getelementptr inbounds %T_record_50, %T_record_50* %t2853, i32 0, i32 4
    %t2855 = bitcast i8* %t2856 to %T_record_51*
    %t2858 = getelementptr inbounds %T_record_51, %T_record_51* %t2855, i32 0, i32 0
    %t2857 = bitcast i8* %t2858 to i32*
    %t2859 = load i32, i32* %t2857
    call void @_WriteInteger(i8* %t2844, i32 1, i32 0, i32 %t2859)
    call void @_WriteChar(i8* %t2844, i32 0, i32 0, i8 32)
    %t2861 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2860 = bitcast i8* %t2861 to %T_record_50*
    %t2863 = getelementptr inbounds %T_record_50, %T_record_50* %t2860, i32 0, i32 4
    %t2862 = bitcast i8* %t2863 to %T_record_51*
    %t2865 = getelementptr inbounds %T_record_51, %T_record_51* %t2862, i32 0, i32 4
    %t2864 = bitcast i8* %t2865 to %T_record_52*
    %t2867 = getelementptr inbounds %T_record_52, %T_record_52* %t2864, i32 0, i32 0
    %t2866 = bitcast i8* %t2867 to i32*
    %t2868 = load i32, i32* %t2866
    call void @_WriteInteger(i8* %t2844, i32 1, i32 0, i32 %t2868)
    call void @_WriteChar(i8* %t2844, i32 0, i32 0, i8 32)
    %t2870 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2869 = bitcast i8* %t2870 to %T_record_50*
    %t2872 = getelementptr inbounds %T_record_50, %T_record_50* %t2869, i32 0, i32 4
    %t2871 = bitcast i8* %t2872 to %T_record_51*
    %t2874 = getelementptr inbounds %T_record_51, %T_record_51* %t2871, i32 0, i32 4
    %t2873 = bitcast i8* %t2874 to %T_record_52*
    %t2876 = getelementptr inbounds %T_record_52, %T_record_52* %t2873, i32 0, i32 4
    %t2875 = bitcast i8* %t2876 to %T_record_53*
    %t2878 = getelementptr inbounds %T_record_53, %T_record_53* %t2875, i32 0, i32 0
    %t2877 = bitcast i8* %t2878 to i32*
    %t2879 = load i32, i32* %t2877
    call void @_WriteInteger(i8* %t2844, i32 1, i32 0, i32 %t2879)
    call void @_WriteChar(i8* %t2844, i32 0, i32 0, i8 32)
    %t2881 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2880 = bitcast i8* %t2881 to %T_record_50*
    %t2883 = getelementptr inbounds %T_record_50, %T_record_50* %t2880, i32 0, i32 4
    %t2882 = bitcast i8* %t2883 to %T_record_51*
    %t2885 = getelementptr inbounds %T_record_51, %T_record_51* %t2882, i32 0, i32 4
    %t2884 = bitcast i8* %t2885 to %T_record_52*
    %t2887 = getelementptr inbounds %T_record_52, %T_record_52* %t2884, i32 0, i32 4
    %t2886 = bitcast i8* %t2887 to %T_record_53*
    %t2889 = getelementptr inbounds %T_record_53, %T_record_53* %t2886, i32 0, i32 4
    %t2888 = bitcast i8* %t2889 to %T_record_54*
    %t2891 = getelementptr inbounds %T_record_54, %T_record_54* %t2888, i32 0, i32 0
    %t2890 = bitcast i8* %t2891 to i32*
    %t2892 = load i32, i32* %t2890
    call void @_WriteInteger(i8* %t2844, i32 1, i32 0, i32 %t2892)
    call void @_WriteChar(i8* %t2844, i32 0, i32 0, i8 32)
    %t2894 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2893 = bitcast i8* %t2894 to %T_record_50*
    %t2896 = getelementptr inbounds %T_record_50, %T_record_50* %t2893, i32 0, i32 4
    %t2895 = bitcast i8* %t2896 to %T_record_51*
    %t2898 = getelementptr inbounds %T_record_51, %T_record_51* %t2895, i32 0, i32 4
    %t2897 = bitcast i8* %t2898 to %T_record_52*
    %t2900 = getelementptr inbounds %T_record_52, %T_record_52* %t2897, i32 0, i32 4
    %t2899 = bitcast i8* %t2900 to %T_record_53*
    %t2902 = getelementptr inbounds %T_record_53, %T_record_53* %t2899, i32 0, i32 4
    %t2901 = bitcast i8* %t2902 to %T_record_54*
    %t2904 = getelementptr inbounds %T_record_54, %T_record_54* %t2901, i32 0, i32 4
    %t2903 = bitcast i8* %t2904 to %T_record_55*
    %t2906 = getelementptr inbounds %T_record_55, %T_record_55* %t2903, i32 0, i32 0
    %t2905 = bitcast i8* %t2906 to i32*
    %t2907 = load i32, i32* %t2905
    call void @_WriteInteger(i8* %t2844, i32 1, i32 0, i32 %t2907)
    call void @_WriteChar(i8* %t2844, i32 0, i32 0, i8 32)
    %t2909 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2908 = bitcast i8* %t2909 to %T_record_50*
    %t2911 = getelementptr inbounds %T_record_50, %T_record_50* %t2908, i32 0, i32 4
    %t2910 = bitcast i8* %t2911 to %T_record_51*
    %t2913 = getelementptr inbounds %T_record_51, %T_record_51* %t2910, i32 0, i32 4
    %t2912 = bitcast i8* %t2913 to %T_record_52*
    %t2915 = getelementptr inbounds %T_record_52, %T_record_52* %t2912, i32 0, i32 4
    %t2914 = bitcast i8* %t2915 to %T_record_53*
    %t2917 = getelementptr inbounds %T_record_53, %T_record_53* %t2914, i32 0, i32 4
    %t2916 = bitcast i8* %t2917 to %T_record_54*
    %t2919 = getelementptr inbounds %T_record_54, %T_record_54* %t2916, i32 0, i32 4
    %t2918 = bitcast i8* %t2919 to %T_record_55*
    %t2921 = getelementptr inbounds %T_record_55, %T_record_55* %t2918, i32 0, i32 4
    %t2920 = bitcast i8* %t2921 to %T_record_56*
    %t2923 = getelementptr inbounds %T_record_56, %T_record_56* %t2920, i32 0, i32 0
    %t2922 = bitcast i8* %t2923 to i32*
    %t2924 = load i32, i32* %t2922
    call void @_WriteInteger(i8* %t2844, i32 1, i32 0, i32 %t2924)
    call void @_WriteChar(i8* %t2844, i32 0, i32 0, i8 32)
    %t2926 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2925 = bitcast i8* %t2926 to %T_record_50*
    %t2928 = getelementptr inbounds %T_record_50, %T_record_50* %t2925, i32 0, i32 4
    %t2927 = bitcast i8* %t2928 to %T_record_51*
    %t2930 = getelementptr inbounds %T_record_51, %T_record_51* %t2927, i32 0, i32 4
    %t2929 = bitcast i8* %t2930 to %T_record_52*
    %t2932 = getelementptr inbounds %T_record_52, %T_record_52* %t2929, i32 0, i32 4
    %t2931 = bitcast i8* %t2932 to %T_record_53*
    %t2934 = getelementptr inbounds %T_record_53, %T_record_53* %t2931, i32 0, i32 4
    %t2933 = bitcast i8* %t2934 to %T_record_54*
    %t2936 = getelementptr inbounds %T_record_54, %T_record_54* %t2933, i32 0, i32 4
    %t2935 = bitcast i8* %t2936 to %T_record_55*
    %t2938 = getelementptr inbounds %T_record_55, %T_record_55* %t2935, i32 0, i32 4
    %t2937 = bitcast i8* %t2938 to %T_record_56*
    %t2940 = getelementptr inbounds %T_record_56, %T_record_56* %t2937, i32 0, i32 4
    %t2939 = bitcast i8* %t2940 to %T_record_57*
    %t2942 = getelementptr inbounds %T_record_57, %T_record_57* %t2939, i32 0, i32 0
    %t2941 = bitcast i8* %t2942 to i32*
    %t2943 = load i32, i32* %t2941
    call void @_WriteInteger(i8* %t2844, i32 1, i32 0, i32 %t2943)
    call void @_WriteChar(i8* %t2844, i32 0, i32 0, i8 32)
    %t2945 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2944 = bitcast i8* %t2945 to %T_record_50*
    %t2947 = getelementptr inbounds %T_record_50, %T_record_50* %t2944, i32 0, i32 4
    %t2946 = bitcast i8* %t2947 to %T_record_51*
    %t2949 = getelementptr inbounds %T_record_51, %T_record_51* %t2946, i32 0, i32 4
    %t2948 = bitcast i8* %t2949 to %T_record_52*
    %t2951 = getelementptr inbounds %T_record_52, %T_record_52* %t2948, i32 0, i32 4
    %t2950 = bitcast i8* %t2951 to %T_record_53*
    %t2953 = getelementptr inbounds %T_record_53, %T_record_53* %t2950, i32 0, i32 4
    %t2952 = bitcast i8* %t2953 to %T_record_54*
    %t2955 = getelementptr inbounds %T_record_54, %T_record_54* %t2952, i32 0, i32 4
    %t2954 = bitcast i8* %t2955 to %T_record_55*
    %t2957 = getelementptr inbounds %T_record_55, %T_record_55* %t2954, i32 0, i32 4
    %t2956 = bitcast i8* %t2957 to %T_record_56*
    %t2959 = getelementptr inbounds %T_record_56, %T_record_56* %t2956, i32 0, i32 4
    %t2958 = bitcast i8* %t2959 to %T_record_57*
    %t2961 = getelementptr inbounds %T_record_57, %T_record_57* %t2958, i32 0, i32 4
    %t2960 = bitcast i8* %t2961 to %T_record_58*
    %t2963 = getelementptr inbounds %T_record_58, %T_record_58* %t2960, i32 0, i32 0
    %t2962 = bitcast i8* %t2963 to i32*
    %t2964 = load i32, i32* %t2962
    call void @_WriteInteger(i8* %t2844, i32 1, i32 0, i32 %t2964)
    call void @_WriteChar(i8* %t2844, i32 0, i32 0, i8 32)
    call void @_WriteString(i8* %t2844, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t2844)
    %t2965 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t2965, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1100, i32 0, i32 0), i32 11)
    %t2967 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 0
    %t2966 = bitcast i8* %t2967 to i32*
    store i32 10, i32* %t2966
    %t2969 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2968 = bitcast i8* %t2969 to %T_record_50*
    %t2971 = getelementptr inbounds %T_record_50, %T_record_50* %t2968, i32 0, i32 0
    %t2970 = bitcast i8* %t2971 to i32*
    store i32 9, i32* %t2970
    %t2973 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2972 = bitcast i8* %t2973 to %T_record_50*
    %t2975 = getelementptr inbounds %T_record_50, %T_record_50* %t2972, i32 0, i32 4
    %t2974 = bitcast i8* %t2975 to %T_record_51*
    %t2977 = getelementptr inbounds %T_record_51, %T_record_51* %t2974, i32 0, i32 0
    %t2976 = bitcast i8* %t2977 to i32*
    store i32 8, i32* %t2976
    %t2979 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2978 = bitcast i8* %t2979 to %T_record_50*
    %t2981 = getelementptr inbounds %T_record_50, %T_record_50* %t2978, i32 0, i32 4
    %t2980 = bitcast i8* %t2981 to %T_record_51*
    %t2983 = getelementptr inbounds %T_record_51, %T_record_51* %t2980, i32 0, i32 4
    %t2982 = bitcast i8* %t2983 to %T_record_52*
    %t2985 = getelementptr inbounds %T_record_52, %T_record_52* %t2982, i32 0, i32 0
    %t2984 = bitcast i8* %t2985 to i32*
    store i32 7, i32* %t2984
    %t2987 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2986 = bitcast i8* %t2987 to %T_record_50*
    %t2989 = getelementptr inbounds %T_record_50, %T_record_50* %t2986, i32 0, i32 4
    %t2988 = bitcast i8* %t2989 to %T_record_51*
    %t2991 = getelementptr inbounds %T_record_51, %T_record_51* %t2988, i32 0, i32 4
    %t2990 = bitcast i8* %t2991 to %T_record_52*
    %t2993 = getelementptr inbounds %T_record_52, %T_record_52* %t2990, i32 0, i32 4
    %t2992 = bitcast i8* %t2993 to %T_record_53*
    %t2995 = getelementptr inbounds %T_record_53, %T_record_53* %t2992, i32 0, i32 0
    %t2994 = bitcast i8* %t2995 to i32*
    store i32 6, i32* %t2994
    %t2997 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t2996 = bitcast i8* %t2997 to %T_record_50*
    %t2999 = getelementptr inbounds %T_record_50, %T_record_50* %t2996, i32 0, i32 4
    %t2998 = bitcast i8* %t2999 to %T_record_51*
    %t3001 = getelementptr inbounds %T_record_51, %T_record_51* %t2998, i32 0, i32 4
    %t3000 = bitcast i8* %t3001 to %T_record_52*
    %t3003 = getelementptr inbounds %T_record_52, %T_record_52* %t3000, i32 0, i32 4
    %t3002 = bitcast i8* %t3003 to %T_record_53*
    %t3005 = getelementptr inbounds %T_record_53, %T_record_53* %t3002, i32 0, i32 4
    %t3004 = bitcast i8* %t3005 to %T_record_54*
    %t3007 = getelementptr inbounds %T_record_54, %T_record_54* %t3004, i32 0, i32 0
    %t3006 = bitcast i8* %t3007 to i32*
    store i32 5, i32* %t3006
    %t3009 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3008 = bitcast i8* %t3009 to %T_record_50*
    %t3011 = getelementptr inbounds %T_record_50, %T_record_50* %t3008, i32 0, i32 4
    %t3010 = bitcast i8* %t3011 to %T_record_51*
    %t3013 = getelementptr inbounds %T_record_51, %T_record_51* %t3010, i32 0, i32 4
    %t3012 = bitcast i8* %t3013 to %T_record_52*
    %t3015 = getelementptr inbounds %T_record_52, %T_record_52* %t3012, i32 0, i32 4
    %t3014 = bitcast i8* %t3015 to %T_record_53*
    %t3017 = getelementptr inbounds %T_record_53, %T_record_53* %t3014, i32 0, i32 4
    %t3016 = bitcast i8* %t3017 to %T_record_54*
    %t3019 = getelementptr inbounds %T_record_54, %T_record_54* %t3016, i32 0, i32 4
    %t3018 = bitcast i8* %t3019 to %T_record_55*
    %t3021 = getelementptr inbounds %T_record_55, %T_record_55* %t3018, i32 0, i32 0
    %t3020 = bitcast i8* %t3021 to i32*
    store i32 4, i32* %t3020
    %t3023 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3022 = bitcast i8* %t3023 to %T_record_50*
    %t3025 = getelementptr inbounds %T_record_50, %T_record_50* %t3022, i32 0, i32 4
    %t3024 = bitcast i8* %t3025 to %T_record_51*
    %t3027 = getelementptr inbounds %T_record_51, %T_record_51* %t3024, i32 0, i32 4
    %t3026 = bitcast i8* %t3027 to %T_record_52*
    %t3029 = getelementptr inbounds %T_record_52, %T_record_52* %t3026, i32 0, i32 4
    %t3028 = bitcast i8* %t3029 to %T_record_53*
    %t3031 = getelementptr inbounds %T_record_53, %T_record_53* %t3028, i32 0, i32 4
    %t3030 = bitcast i8* %t3031 to %T_record_54*
    %t3033 = getelementptr inbounds %T_record_54, %T_record_54* %t3030, i32 0, i32 4
    %t3032 = bitcast i8* %t3033 to %T_record_55*
    %t3035 = getelementptr inbounds %T_record_55, %T_record_55* %t3032, i32 0, i32 4
    %t3034 = bitcast i8* %t3035 to %T_record_56*
    %t3037 = getelementptr inbounds %T_record_56, %T_record_56* %t3034, i32 0, i32 0
    %t3036 = bitcast i8* %t3037 to i32*
    store i32 3, i32* %t3036
    %t3039 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3038 = bitcast i8* %t3039 to %T_record_50*
    %t3041 = getelementptr inbounds %T_record_50, %T_record_50* %t3038, i32 0, i32 4
    %t3040 = bitcast i8* %t3041 to %T_record_51*
    %t3043 = getelementptr inbounds %T_record_51, %T_record_51* %t3040, i32 0, i32 4
    %t3042 = bitcast i8* %t3043 to %T_record_52*
    %t3045 = getelementptr inbounds %T_record_52, %T_record_52* %t3042, i32 0, i32 4
    %t3044 = bitcast i8* %t3045 to %T_record_53*
    %t3047 = getelementptr inbounds %T_record_53, %T_record_53* %t3044, i32 0, i32 4
    %t3046 = bitcast i8* %t3047 to %T_record_54*
    %t3049 = getelementptr inbounds %T_record_54, %T_record_54* %t3046, i32 0, i32 4
    %t3048 = bitcast i8* %t3049 to %T_record_55*
    %t3051 = getelementptr inbounds %T_record_55, %T_record_55* %t3048, i32 0, i32 4
    %t3050 = bitcast i8* %t3051 to %T_record_56*
    %t3053 = getelementptr inbounds %T_record_56, %T_record_56* %t3050, i32 0, i32 4
    %t3052 = bitcast i8* %t3053 to %T_record_57*
    %t3055 = getelementptr inbounds %T_record_57, %T_record_57* %t3052, i32 0, i32 0
    %t3054 = bitcast i8* %t3055 to i32*
    store i32 2, i32* %t3054
    %t3057 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3056 = bitcast i8* %t3057 to %T_record_50*
    %t3059 = getelementptr inbounds %T_record_50, %T_record_50* %t3056, i32 0, i32 4
    %t3058 = bitcast i8* %t3059 to %T_record_51*
    %t3061 = getelementptr inbounds %T_record_51, %T_record_51* %t3058, i32 0, i32 4
    %t3060 = bitcast i8* %t3061 to %T_record_52*
    %t3063 = getelementptr inbounds %T_record_52, %T_record_52* %t3060, i32 0, i32 4
    %t3062 = bitcast i8* %t3063 to %T_record_53*
    %t3065 = getelementptr inbounds %T_record_53, %T_record_53* %t3062, i32 0, i32 4
    %t3064 = bitcast i8* %t3065 to %T_record_54*
    %t3067 = getelementptr inbounds %T_record_54, %T_record_54* %t3064, i32 0, i32 4
    %t3066 = bitcast i8* %t3067 to %T_record_55*
    %t3069 = getelementptr inbounds %T_record_55, %T_record_55* %t3066, i32 0, i32 4
    %t3068 = bitcast i8* %t3069 to %T_record_56*
    %t3071 = getelementptr inbounds %T_record_56, %T_record_56* %t3068, i32 0, i32 4
    %t3070 = bitcast i8* %t3071 to %T_record_57*
    %t3073 = getelementptr inbounds %T_record_57, %T_record_57* %t3070, i32 0, i32 4
    %t3072 = bitcast i8* %t3073 to %T_record_58*
    %t3075 = getelementptr inbounds %T_record_58, %T_record_58* %t3072, i32 0, i32 0
    %t3074 = bitcast i8* %t3075 to i32*
    store i32 2, i32* %t3074
    %t3077 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3076 = bitcast i8* %t3077 to %T_record_50*
    %t3079 = getelementptr inbounds %T_record_50, %T_record_50* %t3076, i32 0, i32 4
    %t3078 = bitcast i8* %t3079 to %T_record_51*
    %t3081 = getelementptr inbounds %T_record_51, %T_record_51* %t3078, i32 0, i32 4
    %t3080 = bitcast i8* %t3081 to %T_record_52*
    %t3083 = getelementptr inbounds %T_record_52, %T_record_52* %t3080, i32 0, i32 4
    %t3082 = bitcast i8* %t3083 to %T_record_53*
    %t3085 = getelementptr inbounds %T_record_53, %T_record_53* %t3082, i32 0, i32 4
    %t3084 = bitcast i8* %t3085 to %T_record_54*
    %t3087 = getelementptr inbounds %T_record_54, %T_record_54* %t3084, i32 0, i32 4
    %t3086 = bitcast i8* %t3087 to %T_record_55*
    %t3089 = getelementptr inbounds %T_record_55, %T_record_55* %t3086, i32 0, i32 4
    %t3088 = bitcast i8* %t3089 to %T_record_56*
    %t3091 = getelementptr inbounds %T_record_56, %T_record_56* %t3088, i32 0, i32 4
    %t3090 = bitcast i8* %t3091 to %T_record_57*
    %t3093 = getelementptr inbounds %T_record_57, %T_record_57* %t3090, i32 0, i32 4
    %t3092 = bitcast i8* %t3093 to %T_record_58*
    %t3095 = getelementptr inbounds %T_record_58, %T_record_58* %t3092, i32 0, i32 0
    %t3094 = bitcast i8* %t3095 to i32*
    store i32 1, i32* %t3094
    %t3096 = load %T_text, %T_text* @output
    %t3098 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 0
    %t3097 = bitcast i8* %t3098 to i32*
    %t3099 = load i32, i32* %t3097
    call void @_WriteInteger(i8* %t3096, i32 1, i32 0, i32 %t3099)
    call void @_WriteChar(i8* %t3096, i32 0, i32 0, i8 32)
    %t3101 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3100 = bitcast i8* %t3101 to %T_record_50*
    %t3103 = getelementptr inbounds %T_record_50, %T_record_50* %t3100, i32 0, i32 0
    %t3102 = bitcast i8* %t3103 to i32*
    %t3104 = load i32, i32* %t3102
    call void @_WriteInteger(i8* %t3096, i32 1, i32 0, i32 %t3104)
    call void @_WriteChar(i8* %t3096, i32 0, i32 0, i8 32)
    %t3106 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3105 = bitcast i8* %t3106 to %T_record_50*
    %t3108 = getelementptr inbounds %T_record_50, %T_record_50* %t3105, i32 0, i32 4
    %t3107 = bitcast i8* %t3108 to %T_record_51*
    %t3110 = getelementptr inbounds %T_record_51, %T_record_51* %t3107, i32 0, i32 0
    %t3109 = bitcast i8* %t3110 to i32*
    %t3111 = load i32, i32* %t3109
    call void @_WriteInteger(i8* %t3096, i32 1, i32 0, i32 %t3111)
    call void @_WriteChar(i8* %t3096, i32 0, i32 0, i8 32)
    %t3113 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3112 = bitcast i8* %t3113 to %T_record_50*
    %t3115 = getelementptr inbounds %T_record_50, %T_record_50* %t3112, i32 0, i32 4
    %t3114 = bitcast i8* %t3115 to %T_record_51*
    %t3117 = getelementptr inbounds %T_record_51, %T_record_51* %t3114, i32 0, i32 4
    %t3116 = bitcast i8* %t3117 to %T_record_52*
    %t3119 = getelementptr inbounds %T_record_52, %T_record_52* %t3116, i32 0, i32 0
    %t3118 = bitcast i8* %t3119 to i32*
    %t3120 = load i32, i32* %t3118
    call void @_WriteInteger(i8* %t3096, i32 1, i32 0, i32 %t3120)
    call void @_WriteChar(i8* %t3096, i32 0, i32 0, i8 32)
    %t3122 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3121 = bitcast i8* %t3122 to %T_record_50*
    %t3124 = getelementptr inbounds %T_record_50, %T_record_50* %t3121, i32 0, i32 4
    %t3123 = bitcast i8* %t3124 to %T_record_51*
    %t3126 = getelementptr inbounds %T_record_51, %T_record_51* %t3123, i32 0, i32 4
    %t3125 = bitcast i8* %t3126 to %T_record_52*
    %t3128 = getelementptr inbounds %T_record_52, %T_record_52* %t3125, i32 0, i32 4
    %t3127 = bitcast i8* %t3128 to %T_record_53*
    %t3130 = getelementptr inbounds %T_record_53, %T_record_53* %t3127, i32 0, i32 0
    %t3129 = bitcast i8* %t3130 to i32*
    %t3131 = load i32, i32* %t3129
    call void @_WriteInteger(i8* %t3096, i32 1, i32 0, i32 %t3131)
    call void @_WriteChar(i8* %t3096, i32 0, i32 0, i8 32)
    %t3133 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3132 = bitcast i8* %t3133 to %T_record_50*
    %t3135 = getelementptr inbounds %T_record_50, %T_record_50* %t3132, i32 0, i32 4
    %t3134 = bitcast i8* %t3135 to %T_record_51*
    %t3137 = getelementptr inbounds %T_record_51, %T_record_51* %t3134, i32 0, i32 4
    %t3136 = bitcast i8* %t3137 to %T_record_52*
    %t3139 = getelementptr inbounds %T_record_52, %T_record_52* %t3136, i32 0, i32 4
    %t3138 = bitcast i8* %t3139 to %T_record_53*
    %t3141 = getelementptr inbounds %T_record_53, %T_record_53* %t3138, i32 0, i32 4
    %t3140 = bitcast i8* %t3141 to %T_record_54*
    %t3143 = getelementptr inbounds %T_record_54, %T_record_54* %t3140, i32 0, i32 0
    %t3142 = bitcast i8* %t3143 to i32*
    %t3144 = load i32, i32* %t3142
    call void @_WriteInteger(i8* %t3096, i32 1, i32 0, i32 %t3144)
    call void @_WriteChar(i8* %t3096, i32 0, i32 0, i8 32)
    %t3146 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3145 = bitcast i8* %t3146 to %T_record_50*
    %t3148 = getelementptr inbounds %T_record_50, %T_record_50* %t3145, i32 0, i32 4
    %t3147 = bitcast i8* %t3148 to %T_record_51*
    %t3150 = getelementptr inbounds %T_record_51, %T_record_51* %t3147, i32 0, i32 4
    %t3149 = bitcast i8* %t3150 to %T_record_52*
    %t3152 = getelementptr inbounds %T_record_52, %T_record_52* %t3149, i32 0, i32 4
    %t3151 = bitcast i8* %t3152 to %T_record_53*
    %t3154 = getelementptr inbounds %T_record_53, %T_record_53* %t3151, i32 0, i32 4
    %t3153 = bitcast i8* %t3154 to %T_record_54*
    %t3156 = getelementptr inbounds %T_record_54, %T_record_54* %t3153, i32 0, i32 4
    %t3155 = bitcast i8* %t3156 to %T_record_55*
    %t3158 = getelementptr inbounds %T_record_55, %T_record_55* %t3155, i32 0, i32 0
    %t3157 = bitcast i8* %t3158 to i32*
    %t3159 = load i32, i32* %t3157
    call void @_WriteInteger(i8* %t3096, i32 1, i32 0, i32 %t3159)
    call void @_WriteChar(i8* %t3096, i32 0, i32 0, i8 32)
    %t3161 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3160 = bitcast i8* %t3161 to %T_record_50*
    %t3163 = getelementptr inbounds %T_record_50, %T_record_50* %t3160, i32 0, i32 4
    %t3162 = bitcast i8* %t3163 to %T_record_51*
    %t3165 = getelementptr inbounds %T_record_51, %T_record_51* %t3162, i32 0, i32 4
    %t3164 = bitcast i8* %t3165 to %T_record_52*
    %t3167 = getelementptr inbounds %T_record_52, %T_record_52* %t3164, i32 0, i32 4
    %t3166 = bitcast i8* %t3167 to %T_record_53*
    %t3169 = getelementptr inbounds %T_record_53, %T_record_53* %t3166, i32 0, i32 4
    %t3168 = bitcast i8* %t3169 to %T_record_54*
    %t3171 = getelementptr inbounds %T_record_54, %T_record_54* %t3168, i32 0, i32 4
    %t3170 = bitcast i8* %t3171 to %T_record_55*
    %t3173 = getelementptr inbounds %T_record_55, %T_record_55* %t3170, i32 0, i32 4
    %t3172 = bitcast i8* %t3173 to %T_record_56*
    %t3175 = getelementptr inbounds %T_record_56, %T_record_56* %t3172, i32 0, i32 0
    %t3174 = bitcast i8* %t3175 to i32*
    %t3176 = load i32, i32* %t3174
    call void @_WriteInteger(i8* %t3096, i32 1, i32 0, i32 %t3176)
    call void @_WriteChar(i8* %t3096, i32 0, i32 0, i8 32)
    %t3178 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3177 = bitcast i8* %t3178 to %T_record_50*
    %t3180 = getelementptr inbounds %T_record_50, %T_record_50* %t3177, i32 0, i32 4
    %t3179 = bitcast i8* %t3180 to %T_record_51*
    %t3182 = getelementptr inbounds %T_record_51, %T_record_51* %t3179, i32 0, i32 4
    %t3181 = bitcast i8* %t3182 to %T_record_52*
    %t3184 = getelementptr inbounds %T_record_52, %T_record_52* %t3181, i32 0, i32 4
    %t3183 = bitcast i8* %t3184 to %T_record_53*
    %t3186 = getelementptr inbounds %T_record_53, %T_record_53* %t3183, i32 0, i32 4
    %t3185 = bitcast i8* %t3186 to %T_record_54*
    %t3188 = getelementptr inbounds %T_record_54, %T_record_54* %t3185, i32 0, i32 4
    %t3187 = bitcast i8* %t3188 to %T_record_55*
    %t3190 = getelementptr inbounds %T_record_55, %T_record_55* %t3187, i32 0, i32 4
    %t3189 = bitcast i8* %t3190 to %T_record_56*
    %t3192 = getelementptr inbounds %T_record_56, %T_record_56* %t3189, i32 0, i32 4
    %t3191 = bitcast i8* %t3192 to %T_record_57*
    %t3194 = getelementptr inbounds %T_record_57, %T_record_57* %t3191, i32 0, i32 0
    %t3193 = bitcast i8* %t3194 to i32*
    %t3195 = load i32, i32* %t3193
    call void @_WriteInteger(i8* %t3096, i32 1, i32 0, i32 %t3195)
    call void @_WriteChar(i8* %t3096, i32 0, i32 0, i8 32)
    %t3197 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3196 = bitcast i8* %t3197 to %T_record_50*
    %t3199 = getelementptr inbounds %T_record_50, %T_record_50* %t3196, i32 0, i32 4
    %t3198 = bitcast i8* %t3199 to %T_record_51*
    %t3201 = getelementptr inbounds %T_record_51, %T_record_51* %t3198, i32 0, i32 4
    %t3200 = bitcast i8* %t3201 to %T_record_52*
    %t3203 = getelementptr inbounds %T_record_52, %T_record_52* %t3200, i32 0, i32 4
    %t3202 = bitcast i8* %t3203 to %T_record_53*
    %t3205 = getelementptr inbounds %T_record_53, %T_record_53* %t3202, i32 0, i32 4
    %t3204 = bitcast i8* %t3205 to %T_record_54*
    %t3207 = getelementptr inbounds %T_record_54, %T_record_54* %t3204, i32 0, i32 4
    %t3206 = bitcast i8* %t3207 to %T_record_55*
    %t3209 = getelementptr inbounds %T_record_55, %T_record_55* %t3206, i32 0, i32 4
    %t3208 = bitcast i8* %t3209 to %T_record_56*
    %t3211 = getelementptr inbounds %T_record_56, %T_record_56* %t3208, i32 0, i32 4
    %t3210 = bitcast i8* %t3211 to %T_record_57*
    %t3213 = getelementptr inbounds %T_record_57, %T_record_57* %t3210, i32 0, i32 4
    %t3212 = bitcast i8* %t3213 to %T_record_58*
    %t3215 = getelementptr inbounds %T_record_58, %T_record_58* %t3212, i32 0, i32 0
    %t3214 = bitcast i8* %t3215 to i32*
    %t3216 = load i32, i32* %t3214
    call void @_WriteInteger(i8* %t3096, i32 1, i32 0, i32 %t3216)
    call void @_WriteChar(i8* %t3096, i32 0, i32 0, i8 32)
    call void @_WriteString(i8* %t3096, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0), i32 24)
    call void @_WriteLn(i8* %t3096)
    %t3217 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3217, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1101, i32 0, i32 0), i32 11)
    %t3219 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3218 = bitcast i8* %t3219 to %T_record_50*
    %t3221 = getelementptr inbounds %T_record_50, %T_record_50* %t3218, i32 0, i32 4
    %t3220 = bitcast i8* %t3221 to %T_record_51*
    %t3223 = getelementptr inbounds %T_record_51, %T_record_51* %t3220, i32 0, i32 4
    %t3222 = bitcast i8* %t3223 to %T_record_52*
    %t3225 = getelementptr inbounds %T_record_52, %T_record_52* %t3222, i32 0, i32 4
    %t3224 = bitcast i8* %t3225 to %T_record_53*
    %t3227 = getelementptr inbounds %T_record_53, %T_record_53* %t3224, i32 0, i32 4
    %t3226 = bitcast i8* %t3227 to %T_record_54*
    %t3229 = getelementptr inbounds %T_record_54, %T_record_54* %t3226, i32 0, i32 4
    %t3228 = bitcast i8* %t3229 to %T_record_55*
    %t3231 = getelementptr inbounds %T_record_55, %T_record_55* %t3228, i32 0, i32 4
    %t3230 = bitcast i8* %t3231 to %T_record_56*
    %t3233 = getelementptr inbounds %T_record_56, %T_record_56* %t3230, i32 0, i32 4
    %t3232 = bitcast i8* %t3233 to %T_record_57*
    %t3235 = getelementptr inbounds %T_record_57, %T_record_57* %t3232, i32 0, i32 4
    %t3234 = bitcast i8* %t3235 to %T_record_58*
    %t3237 = getelementptr inbounds %T_record_58, %T_record_58* %t3234, i32 0, i32 0
    %t3236 = bitcast i8* %t3237 to i32*
    store i32 76, i32* %t3236
    %t3238 = load %T_text, %T_text* @output
    %t3240 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 0
    %t3239 = bitcast i8* %t3240 to i32*
    %t3241 = load i32, i32* %t3239
    call void @_WriteInteger(i8* %t3238, i32 1, i32 0, i32 %t3241)
    call void @_WriteChar(i8* %t3238, i32 0, i32 0, i8 32)
    %t3243 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3242 = bitcast i8* %t3243 to %T_record_50*
    %t3245 = getelementptr inbounds %T_record_50, %T_record_50* %t3242, i32 0, i32 0
    %t3244 = bitcast i8* %t3245 to i32*
    %t3246 = load i32, i32* %t3244
    call void @_WriteInteger(i8* %t3238, i32 1, i32 0, i32 %t3246)
    call void @_WriteChar(i8* %t3238, i32 0, i32 0, i8 32)
    %t3248 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3247 = bitcast i8* %t3248 to %T_record_50*
    %t3250 = getelementptr inbounds %T_record_50, %T_record_50* %t3247, i32 0, i32 4
    %t3249 = bitcast i8* %t3250 to %T_record_51*
    %t3252 = getelementptr inbounds %T_record_51, %T_record_51* %t3249, i32 0, i32 0
    %t3251 = bitcast i8* %t3252 to i32*
    %t3253 = load i32, i32* %t3251
    call void @_WriteInteger(i8* %t3238, i32 1, i32 0, i32 %t3253)
    call void @_WriteChar(i8* %t3238, i32 0, i32 0, i8 32)
    %t3255 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3254 = bitcast i8* %t3255 to %T_record_50*
    %t3257 = getelementptr inbounds %T_record_50, %T_record_50* %t3254, i32 0, i32 4
    %t3256 = bitcast i8* %t3257 to %T_record_51*
    %t3259 = getelementptr inbounds %T_record_51, %T_record_51* %t3256, i32 0, i32 4
    %t3258 = bitcast i8* %t3259 to %T_record_52*
    %t3261 = getelementptr inbounds %T_record_52, %T_record_52* %t3258, i32 0, i32 0
    %t3260 = bitcast i8* %t3261 to i32*
    %t3262 = load i32, i32* %t3260
    call void @_WriteInteger(i8* %t3238, i32 1, i32 0, i32 %t3262)
    call void @_WriteChar(i8* %t3238, i32 0, i32 0, i8 32)
    %t3264 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3263 = bitcast i8* %t3264 to %T_record_50*
    %t3266 = getelementptr inbounds %T_record_50, %T_record_50* %t3263, i32 0, i32 4
    %t3265 = bitcast i8* %t3266 to %T_record_51*
    %t3268 = getelementptr inbounds %T_record_51, %T_record_51* %t3265, i32 0, i32 4
    %t3267 = bitcast i8* %t3268 to %T_record_52*
    %t3270 = getelementptr inbounds %T_record_52, %T_record_52* %t3267, i32 0, i32 4
    %t3269 = bitcast i8* %t3270 to %T_record_53*
    %t3272 = getelementptr inbounds %T_record_53, %T_record_53* %t3269, i32 0, i32 0
    %t3271 = bitcast i8* %t3272 to i32*
    %t3273 = load i32, i32* %t3271
    call void @_WriteInteger(i8* %t3238, i32 1, i32 0, i32 %t3273)
    call void @_WriteChar(i8* %t3238, i32 0, i32 0, i8 32)
    %t3275 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3274 = bitcast i8* %t3275 to %T_record_50*
    %t3277 = getelementptr inbounds %T_record_50, %T_record_50* %t3274, i32 0, i32 4
    %t3276 = bitcast i8* %t3277 to %T_record_51*
    %t3279 = getelementptr inbounds %T_record_51, %T_record_51* %t3276, i32 0, i32 4
    %t3278 = bitcast i8* %t3279 to %T_record_52*
    %t3281 = getelementptr inbounds %T_record_52, %T_record_52* %t3278, i32 0, i32 4
    %t3280 = bitcast i8* %t3281 to %T_record_53*
    %t3283 = getelementptr inbounds %T_record_53, %T_record_53* %t3280, i32 0, i32 4
    %t3282 = bitcast i8* %t3283 to %T_record_54*
    %t3285 = getelementptr inbounds %T_record_54, %T_record_54* %t3282, i32 0, i32 0
    %t3284 = bitcast i8* %t3285 to i32*
    %t3286 = load i32, i32* %t3284
    call void @_WriteInteger(i8* %t3238, i32 1, i32 0, i32 %t3286)
    call void @_WriteChar(i8* %t3238, i32 0, i32 0, i8 32)
    %t3288 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3287 = bitcast i8* %t3288 to %T_record_50*
    %t3290 = getelementptr inbounds %T_record_50, %T_record_50* %t3287, i32 0, i32 4
    %t3289 = bitcast i8* %t3290 to %T_record_51*
    %t3292 = getelementptr inbounds %T_record_51, %T_record_51* %t3289, i32 0, i32 4
    %t3291 = bitcast i8* %t3292 to %T_record_52*
    %t3294 = getelementptr inbounds %T_record_52, %T_record_52* %t3291, i32 0, i32 4
    %t3293 = bitcast i8* %t3294 to %T_record_53*
    %t3296 = getelementptr inbounds %T_record_53, %T_record_53* %t3293, i32 0, i32 4
    %t3295 = bitcast i8* %t3296 to %T_record_54*
    %t3298 = getelementptr inbounds %T_record_54, %T_record_54* %t3295, i32 0, i32 4
    %t3297 = bitcast i8* %t3298 to %T_record_55*
    %t3300 = getelementptr inbounds %T_record_55, %T_record_55* %t3297, i32 0, i32 0
    %t3299 = bitcast i8* %t3300 to i32*
    %t3301 = load i32, i32* %t3299
    call void @_WriteInteger(i8* %t3238, i32 1, i32 0, i32 %t3301)
    call void @_WriteChar(i8* %t3238, i32 0, i32 0, i8 32)
    %t3303 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3302 = bitcast i8* %t3303 to %T_record_50*
    %t3305 = getelementptr inbounds %T_record_50, %T_record_50* %t3302, i32 0, i32 4
    %t3304 = bitcast i8* %t3305 to %T_record_51*
    %t3307 = getelementptr inbounds %T_record_51, %T_record_51* %t3304, i32 0, i32 4
    %t3306 = bitcast i8* %t3307 to %T_record_52*
    %t3309 = getelementptr inbounds %T_record_52, %T_record_52* %t3306, i32 0, i32 4
    %t3308 = bitcast i8* %t3309 to %T_record_53*
    %t3311 = getelementptr inbounds %T_record_53, %T_record_53* %t3308, i32 0, i32 4
    %t3310 = bitcast i8* %t3311 to %T_record_54*
    %t3313 = getelementptr inbounds %T_record_54, %T_record_54* %t3310, i32 0, i32 4
    %t3312 = bitcast i8* %t3313 to %T_record_55*
    %t3315 = getelementptr inbounds %T_record_55, %T_record_55* %t3312, i32 0, i32 4
    %t3314 = bitcast i8* %t3315 to %T_record_56*
    %t3317 = getelementptr inbounds %T_record_56, %T_record_56* %t3314, i32 0, i32 0
    %t3316 = bitcast i8* %t3317 to i32*
    %t3318 = load i32, i32* %t3316
    call void @_WriteInteger(i8* %t3238, i32 1, i32 0, i32 %t3318)
    call void @_WriteChar(i8* %t3238, i32 0, i32 0, i8 32)
    %t3320 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3319 = bitcast i8* %t3320 to %T_record_50*
    %t3322 = getelementptr inbounds %T_record_50, %T_record_50* %t3319, i32 0, i32 4
    %t3321 = bitcast i8* %t3322 to %T_record_51*
    %t3324 = getelementptr inbounds %T_record_51, %T_record_51* %t3321, i32 0, i32 4
    %t3323 = bitcast i8* %t3324 to %T_record_52*
    %t3326 = getelementptr inbounds %T_record_52, %T_record_52* %t3323, i32 0, i32 4
    %t3325 = bitcast i8* %t3326 to %T_record_53*
    %t3328 = getelementptr inbounds %T_record_53, %T_record_53* %t3325, i32 0, i32 4
    %t3327 = bitcast i8* %t3328 to %T_record_54*
    %t3330 = getelementptr inbounds %T_record_54, %T_record_54* %t3327, i32 0, i32 4
    %t3329 = bitcast i8* %t3330 to %T_record_55*
    %t3332 = getelementptr inbounds %T_record_55, %T_record_55* %t3329, i32 0, i32 4
    %t3331 = bitcast i8* %t3332 to %T_record_56*
    %t3334 = getelementptr inbounds %T_record_56, %T_record_56* %t3331, i32 0, i32 4
    %t3333 = bitcast i8* %t3334 to %T_record_57*
    %t3336 = getelementptr inbounds %T_record_57, %T_record_57* %t3333, i32 0, i32 0
    %t3335 = bitcast i8* %t3336 to i32*
    %t3337 = load i32, i32* %t3335
    call void @_WriteInteger(i8* %t3238, i32 1, i32 0, i32 %t3337)
    call void @_WriteChar(i8* %t3238, i32 0, i32 0, i8 32)
    %t3339 = getelementptr inbounds %T_record_49, %T_record_49* @nvr, i32 0, i32 4
    %t3338 = bitcast i8* %t3339 to %T_record_50*
    %t3341 = getelementptr inbounds %T_record_50, %T_record_50* %t3338, i32 0, i32 4
    %t3340 = bitcast i8* %t3341 to %T_record_51*
    %t3343 = getelementptr inbounds %T_record_51, %T_record_51* %t3340, i32 0, i32 4
    %t3342 = bitcast i8* %t3343 to %T_record_52*
    %t3345 = getelementptr inbounds %T_record_52, %T_record_52* %t3342, i32 0, i32 4
    %t3344 = bitcast i8* %t3345 to %T_record_53*
    %t3347 = getelementptr inbounds %T_record_53, %T_record_53* %t3344, i32 0, i32 4
    %t3346 = bitcast i8* %t3347 to %T_record_54*
    %t3349 = getelementptr inbounds %T_record_54, %T_record_54* %t3346, i32 0, i32 4
    %t3348 = bitcast i8* %t3349 to %T_record_55*
    %t3351 = getelementptr inbounds %T_record_55, %T_record_55* %t3348, i32 0, i32 4
    %t3350 = bitcast i8* %t3351 to %T_record_56*
    %t3353 = getelementptr inbounds %T_record_56, %T_record_56* %t3350, i32 0, i32 4
    %t3352 = bitcast i8* %t3353 to %T_record_57*
    %t3355 = getelementptr inbounds %T_record_57, %T_record_57* %t3352, i32 0, i32 4
    %t3354 = bitcast i8* %t3355 to %T_record_58*
    %t3357 = getelementptr inbounds %T_record_58, %T_record_58* %t3354, i32 0, i32 0
    %t3356 = bitcast i8* %t3357 to i32*
    %t3358 = load i32, i32* %t3356
    call void @_WriteInteger(i8* %t3238, i32 1, i32 0, i32 %t3358)
    call void @_WriteChar(i8* %t3238, i32 0, i32 0, i8 32)
    call void @_WriteString(i8* %t3238, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1102, i32 0, i32 0), i32 25)
    call void @_WriteLn(i8* %t3238)
    %t3359 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3359, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1103, i32 0, i32 0), i32 11)
    %t3360 = load i8*, i8** @rpa
    %t3361 = bitcast i8* %t3360 to %T_rec*
    %t3363 = getelementptr inbounds %T_rec, %T_rec* %t3361, i32 0, i32 0
    %t3362 = bitcast i8* %t3363 to i32*
    store i32 1, i32* %t3362
    %t3364 = load i8*, i8** @rpa
    %t3365 = bitcast i8* %t3364 to %T_rec*
    %t3367 = getelementptr inbounds %T_rec, %T_rec* %t3365, i32 0, i32 84
    %t3366 = bitcast i8* %t3367 to %T_recs*
    %t3369 = getelementptr inbounds %T_recs, %T_recs* %t3366, i32 0, i32 4
    %t3368 = bitcast i8* %t3369 to i8*
    store i8 103, i8* %t3368
    %t3370 = load %T_text, %T_text* @output
    %t3371 = load i8*, i8** @rpa
    %t3372 = bitcast i8* %t3371 to %T_rec*
    %t3374 = getelementptr inbounds %T_rec, %T_rec* %t3372, i32 0, i32 0
    %t3373 = bitcast i8* %t3374 to i32*
    %t3375 = load i32, i32* %t3373
    call void @_WriteInteger(i8* %t3370, i32 1, i32 0, i32 %t3375)
    call void @_WriteChar(i8* %t3370, i32 0, i32 0, i8 32)
    %t3376 = load i8*, i8** @rpa
    %t3377 = bitcast i8* %t3376 to %T_rec*
    %t3379 = getelementptr inbounds %T_rec, %T_rec* %t3377, i32 0, i32 84
    %t3378 = bitcast i8* %t3379 to %T_recs*
    %t3381 = getelementptr inbounds %T_recs, %T_recs* %t3378, i32 0, i32 4
    %t3380 = bitcast i8* %t3381 to i8*
    %t3382 = load i8, i8* %t3380
    call void @_WriteChar(i8* %t3370, i32 0, i32 0, i8 %t3382)
    call void @_WriteString(i8* %t3370, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1104, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t3370)
    %t3383 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3383, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1105, i32 0, i32 0), i32 11)
    %t3384 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3384, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.937, i32 0, i32 0), i32 33)
    call void @_WriteLn(i8* %t3384)
    %t3385 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3385)
    %t3386 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3386, i32 0, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1106, i32 0, i32 0), i32 56)
    call void @_WriteLn(i8* %t3386)
    %t3387 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t3387)
    %t3388 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3388, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1107, i32 0, i32 0), i32 22)
    store i32 45, i32* @x
    store i32 89, i32* @y
    %t3389 = load i32, i32* @x
    %t3390 = load i32, i32* @y
    call void @P_junk1(i32 %t3389, i32 %t3390)
    %t3391 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3391, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1108, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3391)
    %t3392 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3392, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1109, i32 0, i32 0), i32 22)
    store i32 45, i32* @x
    call void @P_junk2(i32* @x)
    %t3393 = load %T_text, %T_text* @output
    %t3394 = load i32, i32* @x
    call void @_WriteInteger(i8* %t3393, i32 1, i32 0, i32 %t3394)
    call void @_WriteString(i8* %t3393, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1110, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t3393)
    %t3395 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3395, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1111, i32 0, i32 0), i32 22)
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1112, i32 0, i32 0), %T_string10* @s
    call void @P_junk3(%T_string10* @s)
    %t3396 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3396, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1113, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t3396)
    %t3397 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3397, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1114, i32 0, i32 0), i32 22)
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1112, i32 0, i32 0), %T_string10* @s
    %t3398 = load %T_string10, %T_string10* @s
    call void @P_junk4(%T_string10 %t3398)
    %t3399 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3399, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1115, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t3399)
    %t3400 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3400, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* @s, i32 0, i32 0), i32 10)
    call void @_WriteString(i8* %t3400, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1113, i32 0, i32 0), i32 15)
    call void @_WriteLn(i8* %t3400)
    %t3401 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3401, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1116, i32 0, i32 0), i32 22)
    %t3402 = load %T_text, %T_text* @output
    %t3403 = call i32 @F_junk5(i32 34)
    call void @_WriteInteger(i8* %t3402, i32 1, i32 0, i32 %t3403)
    call void @_WriteString(i8* %t3402, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t3402)
    %t3404 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3404, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1117, i32 0, i32 0), i32 22)
    %t3405 = call i32 @F_junk7(i32 10, i32 9, i32 8)
    store i32 %t3405, i32* @i
    %t3406 = load %T_text, %T_text* @output
    call void @_WriteChar(i8* %t3406, i32 0, i32 0, i8 32)
    %t3407 = load i32, i32* @i
    call void @_WriteInteger(i8* %t3406, i32 1, i32 0, i32 %t3407)
    call void @_WriteLn(i8* %t3406)
    %t3408 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3408, i32 0, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1118, i32 0, i32 0), i32 28)
    call void @_WriteLn(i8* %t3408)
    %t3409 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3409, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1119, i32 0, i32 0), i32 19)
    call void @_WriteLn(i8* %t3409)
    %t3411 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 0
    %t3410 = bitcast i8* %t3411 to i32*
    store i32 64, i32* %t3410
    %t3413 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 4
    %t3412 = bitcast i8* %t3413 to i1*
    store i1 0, i1* %t3412
    %t3415 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 5
    %t3414 = bitcast i8* %t3415 to i8*
    store i8 106, i8* %t3414
    %t3417 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 8
    %t3416 = bitcast i8* %t3417 to i32*
    store i32 1, i32* %t3416
    %t3419 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 12
    %t3418 = bitcast i8* %t3419 to i32*
    store i32 3, i32* %t3418
    %t3421 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 16
    %t3420 = bitcast i8* %t3421 to i32*
    store i32 12, i32* %t3420
    %t3423 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 24
    %t3422 = bitcast i8* %t3423 to double*
    store double 4.54512e-29, double* %t3422
    %t3425 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 32
    %t3424 = bitcast i8* %t3425 to %T_string10*
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1051, i32 0, i32 0), %T_string10* %t3424
    %t3427 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 84
    %t3426 = bitcast i8* %t3427 to %T_recs*
    %t3429 = getelementptr inbounds %T_recs, %T_recs* %t3426, i32 0, i32 0
    %t3428 = bitcast i8* %t3429 to i32*
    store i32 2324, i32* %t3428
    %t3431 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 84
    %t3430 = bitcast i8* %t3431 to %T_recs*
    %t3433 = getelementptr inbounds %T_recs, %T_recs* %t3430, i32 0, i32 4
    %t3432 = bitcast i8* %t3433 to i8*
    store i8 121, i8* %t3432
    %t3435 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 92
    %t3434 = bitcast i8* %t3435 to %T_cset*
    store %T_cset %.dummy_set, %T_cset* %t3434
    %t3437 = getelementptr inbounds %T_rec, %T_rec* @arec, i32 0, i32 128
    %t3436 = bitcast i8* %t3437 to i8**
    %t3438 = load i8*, i8** %t3436
    %t3439 = bitcast i8* %t3438 to i32*
    store i32 8454, i32* %t3439
    %t3441 = getelementptr inbounds %T_recv, %T_recv* @vrec, i32 0, i32 0
    %t3440 = bitcast i8* %t3441 to i32*
    store i32 23487, i32* %t3440
    %t3443 = getelementptr inbounds %T_recv, %T_recv* @vrec, i32 0, i32 4
    %t3442 = bitcast i8* %t3443 to i8*
    store i8 110, i8* %t3442
    %t3445 = getelementptr inbounds %T_recv, %T_recv* @vrec, i32 0, i32 5
    %t3444 = bitcast i8* %t3445 to i1*
    store i1 0, i1* %t3444
    %t3447 = getelementptr inbounds %T_recv, %T_recv* @vrec, i32 0, i32 6
    %t3446 = bitcast i8* %t3447 to %T_string10*
    store %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1120, i32 0, i32 0), %T_string10* %t3446
    %t3448 = load i8*, i8** @ip
    %t3449 = bitcast i8* %t3448 to i32*
    store i32 734, i32* %t3449
    %t3450 = load %T_arri, %T_arri* @ai
    %t3451 = load %T_rec, %T_rec* @arec
    %t3452 = load %T_recv, %T_recv* @vrec
    %t3453 = load i8*, i8** @ip
    call void @P_junk8(i32 93, i1 1, i8 107, i32 7, i32 4, i32 10, double 3.14140, %T_string10 getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1038, i32 0, i32 0), %T_arri %t3450, %T_rec %t3451, %T_recv %t3452, %T_cset %.dummy_set, i8* %t3453)
    %t3454 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3454, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1028, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t3454)
    %t3455 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3455, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1121, i32 0, i32 0), i32 44)
    call void @_WriteLn(i8* %t3455)
    %t3456 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3456, i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1122, i32 0, i32 0), i32 29)
    call void @_WriteLn(i8* %t3456)
    %t3457 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3457, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1123, i32 0, i32 0), i32 44)
    call void @_WriteLn(i8* %t3457)
    %t3458 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3458, i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1053, i32 0, i32 0), i32 29)
    call void @_WriteLn(i8* %t3458)
    %t3459 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3459, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1054, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t3459)
    %t3460 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3460, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1055, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3460)
    %t3461 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3461, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1056, i32 0, i32 0), i32 4)
    call void @_WriteLn(i8* %t3461)
    %t3462 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3462, i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1124, i32 0, i32 0), i32 13)
    call void @_WriteLn(i8* %t3462)
    %t3463 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3463, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1120, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3463)
    %t3464 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3464, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1125, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3464)
    %t3465 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3465, i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1126, i32 0, i32 0), i32 3)
    call void @_WriteLn(i8* %t3465)
    %t3466 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3466, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1127, i32 0, i32 0), i32 22)
    call void @P_junk9( %.dummy,  %.dummy)
    %t3467 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3467, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1128, i32 0, i32 0), i32 20)
    call void @_WriteLn(i8* %t3467)
    %t3468 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3468, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1129, i32 0, i32 0), i32 22)
    call void @P_junk12( %.dummy,  %.dummy)
    %t3469 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3469, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1130, i32 0, i32 0), i32 8)
    call void @_WriteLn(i8* %t3469)
    %t3470 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3470, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1131, i32 0, i32 0), i32 23)
    call void @P_junk14()
    %t3471 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3471, i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1132, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t3471)
    %t3472 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3472, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1133, i32 0, i32 0), i32 23)
    call void @P_junk17( %.dummy, i32 52)
    %t3473 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3473, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.271, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t3473)
    %t3474 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3474, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1134, i32 0, i32 0), i32 23)
    call void @P_junk19()
    %t3475 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3475, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.410, i32 0, i32 0), i32 6)
    call void @_WriteLn(i8* %t3475)
    %t3476 = load %T_text, %T_text* @output
    call void @_WriteString(i8* %t3476, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1135, i32 0, i32 0), i32 23)
    %t3477 = load %T_text, %T_text* @output
    %t3478 = call i32 @F_junk20()
    call void @_WriteInteger(i8* %t3477, i32 1, i32 0, i32 %t3478)
    call void @_WriteString(i8* %t3477, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1136, i32 0, i32 0), i32 7)
    call void @_WriteLn(i8* %t3477)
    ; nop

    ; cleanup
    %t3479 = load %T_file_89, %T_file_89* @pfstc
    call void @_CloseFile(i8* %t3479)
    %t3480 = load %T_file_88, %T_file_88* @pfst
    call void @_CloseFile(i8* %t3480)
    %t3481 = load %T_file_87, %T_file_87* @pfs
    call void @_CloseFile(i8* %t3481)
    %t3482 = load %T_file_86, %T_file_86* @pfrc
    call void @_CloseFile(i8* %t3482)
    %t3483 = load %T_file_85, %T_file_85* @pfr
    call void @_CloseFile(i8* %t3483)
    %t3484 = load %T_file_84, %T_file_84* @pfp
    call void @_CloseFile(i8* %t3484)
    %t3485 = load %T_file_83, %T_file_83* @pfi
    call void @_CloseFile(i8* %t3485)
    %t3486 = load %T_file_82, %T_file_82* @pfes
    call void @_CloseFile(i8* %t3486)
    %t3487 = load %T_file_81, %T_file_81* @pfe
    call void @_CloseFile(i8* %t3487)
    %t3488 = load %T_text_80, %T_text_80* @pfc
    call void @_CloseFile(i8* %t3488)
    %t3489 = load %T_file_79, %T_file_79* @pfb
    call void @_CloseFile(i8* %t3489)
    %t3490 = load %T_file_78, %T_file_78* @pfa
    call void @_CloseFile(i8* %t3490)
    %t3491 = load %T_text, %T_text* @output
    call void @_CloseFile(i8* %t3491)
    %t3492 = load %T_text, %T_text* @ft
    call void @_CloseFile(i8* %t3492)
    %t3493 = load %T_file_45, %T_file_45* @fstc
    call void @_CloseFile(i8* %t3493)
    %t3494 = load %T_file_44, %T_file_44* @fst
    call void @_CloseFile(i8* %t3494)
    %t3495 = load %T_file_43, %T_file_43* @fs
    call void @_CloseFile(i8* %t3495)
    %t3496 = load %T_file_41, %T_file_41* @frc
    call void @_CloseFile(i8* %t3496)
    %t3497 = load %T_file_40, %T_file_40* @fr
    call void @_CloseFile(i8* %t3497)
    %t3498 = load %T_file_39, %T_file_39* @fp
    call void @_CloseFile(i8* %t3498)
    %t3499 = load %T_file_38, %T_file_38* @fi
    call void @_CloseFile(i8* %t3499)
    %t3500 = load %T_file_37, %T_file_37* @fes
    call void @_CloseFile(i8* %t3500)
    %t3501 = load %T_file_36, %T_file_36* @fe
    call void @_CloseFile(i8* %t3501)
    %t3502 = load %T_text_35, %T_text_35* @fc
    call void @_CloseFile(i8* %t3502)
    %t3503 = load %T_file_34, %T_file_34* @fb
    call void @_CloseFile(i8* %t3503)
    %t3504 = load %T_file_33, %T_file_33* @fa
    call void @_CloseFile(i8* %t3504)
    %t3505 = load %T_text, %T_text* @_input
    call void @_CloseFile(i8* %t3505)

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
028D0C10    call void @_WriteInteger(i8* %t14, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t14, i32 0, i32 0, i8 32)
028D0660    call void @_WriteInteger(i8* %t14, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t14, i32 0, i32 0, i8 32)
    %t26 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 10
    %t25 = load i32, i32* %t26
    call void @_WriteInteger(i8* %t14, i32 1, i32 0, i32 %t25)
    call void @_WriteChar(i8* %t14, i32 0, i32 0, i8 32)
    %t28 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 7
    %t27 = load double, double* %t28
    call void @_WriteReal(i8* %t14, i32 15, i32 0, double %t27)
    call void @_WriteChar(i8* %t14, i32 0, i32 0, i8 32)
    %t29 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 11
    call void @_WriteString(i8* %t14, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* %t29, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t14)
    %t30 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t30)
    %t31 = load %T_text, %T_text* @output
    %t32 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 8
    %t34 = getelementptr inbounds %T_rec, %T_rec* %t32, i32 0, i32 0
    %t33 = bitcast i8* %t34 to i32*
    %t35 = load i32, i32* %t33
    call void @_WriteInteger(i8* %t31, i32 1, i32 0, i32 %t35)
    call void @_WriteChar(i8* %t31, i32 0, i32 0, i8 32)
    %t36 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 8
    %t38 = getelementptr inbounds %T_rec, %T_rec* %t36, i32 0, i32 4
    %t37 = bitcast i8* %t38 to i1*
    %t39 = load i1, i1* %t37
    call void @_WriteBool(i8* %t31, i32 5, i32 0, i1 %t39)
    call void @_WriteChar(i8* %t31, i32 0, i32 0, i8 32)
    %t40 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 8
    %t42 = getelementptr inbounds %T_rec, %T_rec* %t40, i32 0, i32 5
    %t41 = bitcast i8* %t42 to i8*
    %t43 = load i8, i8* %t41
    call void @_WriteChar(i8* %t31, i32 1, i32 0, i8 %t43)
    call void @_WriteChar(i8* %t31, i32 0, i32 0, i8 32)
028D09A0    call void @_WriteInteger(i8* %t31, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t31, i32 0, i32 0, i8 32)
028D0C10    call void @_WriteInteger(i8* %t31, i32 1, i32 0, i32 )
    call void @_WriteChar(i8* %t31, i32 0, i32 0, i8 32)
    %t52 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 8
    %t54 = getelementptr inbounds %T_rec, %T_rec* %t52, i32 0, i32 16
    %t53 = bitcast i8* %t54 to i32*
    %t55 = load i32, i32* %t53
    call void @_WriteInteger(i8* %t31, i32 1, i32 0, i32 %t55)
    call void @_WriteChar(i8* %t31, i32 0, i32 0, i8 32)
    %t56 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 8
    %t58 = getelementptr inbounds %T_rec, %T_rec* %t56, i32 0, i32 24
    %t57 = bitcast i8* %t58 to double*
    %t59 = load double, double* %t57
    call void @_WriteReal(i8* %t31, i32 15, i32 0, double %t59)
    call void @_WriteChar(i8* %t31, i32 0, i32 0, i8 32)
    %t60 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 8
    %t62 = getelementptr inbounds %T_rec, %T_rec* %t60, i32 0, i32 32
    %t61 = bitcast i8* %t62 to %T_string10*
    call void @_WriteString(i8* %t31, i32 0, i32 0, i8* getelementptr inbounds (%T_string10, %T_string10* %t61, i32 0, i32 0), i32 10)
    call void @_WriteLn(i8* %t31)
    %t63 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t63)
    %t64 = load %T_text, %T_text* @output
    %t65 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 8
    %t67 = getelementptr inbounds %T_rec, %T_rec* %t65, i32 0, i32 84
    %t66 = bitcast i8* %t67 to %T_recs*
    %t69 = getelementptr inbounds %T_recs, %T_recs* %t66, i32 0, i32 0
    %t68 = bitcast i8* %t69 to i32*
    %t70 = load i32, i32* %t68
    call void @_WriteInteger(i8* %t64, i32 1, i32 0, i32 %t70)
    call void @_WriteChar(i8* %t64, i32 0, i32 0, i8 32)
    %t71 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 8
    %t73 = getelementptr inbounds %T_rec, %T_rec* %t71, i32 0, i32 84
    %t72 = bitcast i8* %t73 to %T_recs*
    %t75 = getelementptr inbounds %T_recs, %T_recs* %t72, i32 0, i32 4
    %t74 = bitcast i8* %t75 to i8*
    %t76 = load i8, i8* %t74
    call void @_WriteChar(i8* %t64, i32 1, i32 0, i8 %t76)
    call void @_WriteLn(i8* %t64)
    %t77 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t77)
    %t78 = load %T_text, %T_text* @output
    %t79 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 8
    %t81 = getelementptr inbounds %T_rec, %T_rec* %t79, i32 0, i32 128
    %t80 = bitcast i8* %t81 to i8**
    %t82 = load i8*, i8** %t80
    %t83 = bitcast i8* %t82 to i32*
    %t84 = load i32, i32* %t83
    call void @_WriteInteger(i8* %t78, i32 1, i32 0, i32 %t84)
    call void @_WriteLn(i8* %t78)
    %t85 = load %T_text, %T_text* @output
    %t86 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 9
    %t88 = getelementptr inbounds %T_recv, %T_recv* %t86, i32 0, i32 0
    %t87 = bitcast i8* %t88 to i32*
    %t89 = load i32, i32* %t87
    call void @_WriteInteger(i8* %t85, i32 1, i32 0, i32 %t89)
    call void @_WriteChar(i8* %t85, i32 0, i32 0, i8 32)
    %t90 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 9
    %t92 = getelementptr inbounds %T_recv, %T_recv* %t90, i32 0, i32 4
    %t91 = bitcast i8* %t92 to i8*
    %t93 = load i8, i8* %t91
    call void @_WriteChar(i8* %t85, i32 1, i32 0, i8 %t93)
    call void @_WriteChar(i8* %t85, i32 0, i32 0, i8 32)
    %t94 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 9
    %t96 = getelementptr inbounds %T_recv, %T_recv* %t94, i32 0, i32 5
    %t95 = bitcast i8* %t96 to i1*
    %t97 = load i1, i1* %t95
    call void @_WriteBool(i8* %t85, i32 5, i32 0, i1 %t97)
    call void @_WriteLn(i8* %t85)
    %t98 = load %T_text, %T_text* @output
    call void @_WriteLn(i8* %t98)
    %t99 = load %T_text, %T_text* @output
    %t101 = getelementptr inbounds %Frame_junk8, %Frame_junk8* %.frame, i32 0, i32 6
    %t100 = load i8*, i8** %t101
    %t102 = bitcast i8* %t100 to i32*
    %t103 = load i32, i32* %t102
    call void @_WriteInteger(i8* %t99, i32 1, i32 0, i32 %t103)
    call void @_WriteLn(i8* %t99)

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

